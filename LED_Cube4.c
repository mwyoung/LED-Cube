#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>
#include <stdio.h>
#include <stdbool.h> //wastes variables...

#define F_CPU 16000000UL
//serial comm tutorial: https://www.avrfreaks.net/forum/tut-soft-using-usart-serial-communications
//can't leave usbasp plugged in, interferes with spi
#define USART_BAUDRATE 9600
#define BAUD_PRESCALE (((F_CPU / (USART_BAUDRATE * 16UL))) - 1)
#define _NOP() asm("nop") //no operation

#define SER_DATA PD4    //ser, pin 14
#define STORE_CLK PD5   //rclk, pin 12
#define SHIFT_CLK PD6   //srclk, pin 11

#define BJT_DDR DDRC
#define BJT_PORT PORTC
#define BJT0 PC0
#define BJT1 PC1
#define BJT2 PC2
#define BJT3 PC3
#define ALL_BJT_OFF ~( (1<<BJT0)|(1<<BJT1)|(1<<BJT2)|(1<<BJT3) )

#define CUBE_OFF 0x0000
#define CUBE_ON 0xFFFF
#define CUBE_CORNER ( (1<<0)|(1<<3)|(1<<12)|(1<<15) )       //0b1001000000001001
#define CUBE_CENTER ( (1<<5)|(1<<6)|(1<<9)|(1<<10) )       //0b0000011001100000
#define CUBE_OPPOSITE_CORNER ( (1<<1)|(1<<2)|(1<<4)|(1<<7)|(1<<8)|(1<<11)|(1<<13)|(1<<14) )
/*      Cube layer
    0   4   8   12
    1   5   9   13
    2   6   10  14
    3   7   11  15

    Layer 0,3 - blue at corners, 0, 3, 12, 15
    Layer 1,2 - blue at center, 5, 6, 9, 10
*/

void uart_init(void);
int uart_putchar(char c, FILE *stream);
FILE uart_str = FDEV_SETUP_STREAM(uart_putchar, NULL, _FDEV_SETUP_WRITE);
void io_init(void);

volatile uint16_t cube[4] = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF};
volatile uint8_t layer = 0; //current cube layer
const uint8_t cubearr_corner[] = {5,1,2,6,7,11,10,14,13,9,8,4};
const uint8_t cubearr_center[] = {0,1,2,3,7,11,15,14,13,12,8,4};
#define CUBEARR_VAL 12 //has 12 values

void uart_init(void){
    UCSR0B |= (1<<RXEN0)|(1<<TXEN0); //turn on tx/rx
    UCSR0C |= (1<<UCSZ00)|(1<<UCSZ01); //8-bit chars
    UBRR0H = (BAUD_PRESCALE >> 8); //load upper bits for baud rate
    UBRR0L = BAUD_PRESCALE; //load lower bits
    stdout = &uart_str;
}
int uart_putchar(char c, FILE *stream){
    while ((UCSR0A & (1<<UDRE0))==0) {};
    UDR0 = c;
    return 0;
}

void io_init(void){
    //serial comm
    DDRD |= (1<<SER_DATA)|(1<<STORE_CLK)|(1<<SHIFT_CLK);
    PORTD &= ~( (1<<SER_DATA)|(1<<STORE_CLK)|(1<<SHIFT_CLK) );

    //BJTs
    BJT_DDR |= (1<<BJT0)|(1<<BJT1)|(1<<BJT2)|(1<<BJT3);
    BJT_PORT &= ALL_BJT_OFF;

    //Timer
    // frequency/cycle/count to/layers = FPS
    // 16000000UL/1024/16/4 = 244 FPS
    OCR2A = 16; //value to count to
    TCCR2A |= (1<<WGM21); //CTC mode
    TIMSK2 |= (1<<OCIE2A); //interrupt on compare match, for A reg
    TCCR2B |= (1<<CS22)|(1<<CS21)|(1<<CS20); //clk/1024 scale
    sei(); //enable interrupts
}

ISR(TIMER2_COMPA_vect){
    BJT_PORT &= ALL_BJT_OFF;

    PORTD &= ~(1<<SHIFT_CLK); //get new values
    PORTD &= ~(1<<STORE_CLK);
    int8_t i;
    for(i=15;i>=0;i--){
        if (cube[layer] & (1<<i)){ //if value is set, reverse order (MSB first)
            PORTD |= (1<<SER_DATA);
        }
        else {
            PORTD &= ~(1<<SER_DATA);
        }
        PORTD |= (1<<SHIFT_CLK);
        _NOP(); _NOP(); //small break
        PORTD &= ~(1<<SHIFT_CLK);
    }
    PORTD |= (1<<STORE_CLK); //no more inputs

    BJT_PORT |= (1<<layer); //turn on port
    layer++; //change layer
    if (layer >= 4){ //maximum 4 layers
        layer = 0;
    }
}

void delay(uint8_t hundred_ms){
    uint8_t i;
    for(i=0;i<hundred_ms;i++){_delay_ms(100);}
}

void all_on(void){
    uint8_t i;
    for(i=0;i<4;i++){
        cube[i] = CUBE_ON;
    }
}

void all_off(void){
    uint8_t i;
    for(i=0;i<4;i++){
        cube[i] = CUBE_OFF;
    }
}

void bring_up(void){
    all_off();
    uint8_t i;
    for(i=0;i<4;i++){
        cube[i] = CUBE_ON;
        delay(8);
    }
}

void star(void){
    all_off();
    cube[1] = CUBE_CENTER;
    cube[2] = CUBE_CENTER;
    delay(7);
    cube[0] = CUBE_CORNER;
    cube[3] = CUBE_CORNER;
    delay(7);
}

void star_burst(void){
    star();
    cube[1] = CUBE_OFF;
    cube[2] = CUBE_OFF;
    delay(7);
    cube[0] = CUBE_OFF;
    cube[3] = CUBE_OFF;
    delay(7);
}

void all_green(void){
    cube[0] = ~CUBE_CORNER;
    cube[1] = ~CUBE_CENTER;
    cube[2] = ~CUBE_CENTER;
    cube[3] = ~CUBE_CORNER;
    delay(10);
}

void green_wind_up(void){
    all_off();
    int8_t i;
    int8_t j;

    //inefficient, need to do manually due to wiring
    //bottom layer
    for(i=0;i<CUBEARR_VAL;i++){
        cube[0] |= (1<<cubearr_corner[i]);
        delay(5);
    }

    //inside layers
    for(j=1;j<=2;j++){
        for(i=0;i<CUBEARR_VAL;i++){
            cube[j] |= (1<<cubearr_center[i]);
            delay(5);
        }
    }

    //top layer
    for(i=0;i<CUBEARR_VAL;i++){
        cube[3] |= (1<<cubearr_corner[i]);
        delay(5);
    }
}

void green_snake(void){
    all_off();
    int8_t i;
    int8_t j;
#define SNAKE_LEN 5

    //setup initial snake
    for(i=0;i<SNAKE_LEN;i++){
        cube[0] |= (1<<cubearr_corner[i]);
    }
    delay(5);

    for(i=SNAKE_LEN;i<CUBEARR_VAL;i++){
        cube[0] &= ~(1<<cubearr_corner[i-SNAKE_LEN]); //remove
        cube[0] |= (1<<cubearr_corner[i]);
        delay(10);
    }

    //next layer
    for(i=0;i<SNAKE_LEN;i++){
        cube[0] &= ~(1<<cubearr_corner[(CUBEARR_VAL-SNAKE_LEN)+i]); //remove
        cube[1] |= (1<<cubearr_center[i]);
        delay(10);
    }


    for(i=SNAKE_LEN;i<CUBEARR_VAL;i++){
        cube[1] &= ~(1<<cubearr_center[i-SNAKE_LEN]); //remove
        cube[1] |= (1<<cubearr_center[i]);
        delay(10);
    }

    //next layer
    for(i=0;i<SNAKE_LEN;i++){
        cube[1] &= ~(1<<cubearr_center[(CUBEARR_VAL-SNAKE_LEN)+i]); //remove
        cube[2] |= (1<<cubearr_center[i]);
        delay(10);
    }


    for(i=SNAKE_LEN;i<CUBEARR_VAL;i++){
        cube[2] &= ~(1<<cubearr_center[i-SNAKE_LEN]); //remove
        cube[2] |= (1<<cubearr_center[i]);
        delay(10);
    }

    //next layer
    for(i=0;i<SNAKE_LEN;i++){
        cube[2] &= ~(1<<cubearr_center[(CUBEARR_VAL-SNAKE_LEN)+i]); //remove
        cube[3] |= (1<<cubearr_corner[i]);
        delay(10);
    }


    for(i=SNAKE_LEN;i<CUBEARR_VAL;i++){
        cube[3] &= ~(1<<cubearr_corner[i-SNAKE_LEN]); //remove
        cube[3] |= (1<<cubearr_corner[i]);
        delay(10);
    }

    delay(10);

    cube[3] = CUBE_CENTER;

    delay(10);

    all_green();

}

void rocket_ship(void){
    all_off();
    int8_t i;

    //setup rocket ship
    cube[1] = CUBE_CENTER;
    cube[2] = CUBE_CENTER;

    delay(10);
    //flames
    cube[0] = CUBE_CENTER;
    delay(3);
    cube[0] |= CUBE_OPPOSITE_CORNER;
    delay(5);

    //liftoff
    cube[0] = CUBE_CENTER;
    delay(5);
    cube[3] = CUBE_CENTER;
    delay(5);
    cube[2] = CUBE_OPPOSITE_CORNER | CUBE_CENTER;
    delay(15);

    //reached outer space
    cube[2] = CUBE_CENTER;
    cube[3] = CUBE_OFF;
    delay(10);

    //slowly blink
    for(i=10;i>0;i--){
        if (i%2==0){
            cube[0] = CUBE_CENTER;
        }
        else {
            cube[0] = CUBE_OFF;
        }
        delay(i);
    }

    delay(10);
}

int main(){
    //setup
    DDRB |= (1<<PB5); //built in led
    PORTB |= (1<<PB5); //led on - starting setup
    uart_init();
    io_init();
    PORTB &= ~(1<<PB5); //led off - setup done

    while(1){
  /*      //light each layer
        bring_up();

        //go from center
        star_burst();

        //show all
        all_on();
        delay(10);

        //green only
        all_green();

        //slowly go through each green led
        green_wind_up();
*/
        //a 6 pixel snake
        green_snake();

        //blue is a ship, green is firing/shields
//        rocket_ship();
    }
}
/*
    if(i==0 || i==3){ //top/bottom
        while(CUBE_CORNER & (1<<j)){ //skip
            j++;
        }
        cube[i] |= (1<<j);
    }
    */
