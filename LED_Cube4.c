// LED_Cube4 code
// By Miles Young, 2019
#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>
#include <stdio.h>
#include <stdbool.h> //wastes variables...

#ifndef LED_DEFAULTS_H
    #include "LED_Defaults.h"
#endif
#include "LED_Effects.c"

void uart_init(void);
int uart_putchar(char c, FILE *stream);
FILE uart_str = FDEV_SETUP_STREAM(uart_putchar, NULL, _FDEV_SETUP_WRITE);
void io_init(void);

void uart_init(void){
//serial comm tutorial: https://www.avrfreaks.net/forum/tut-soft-using-usart-serial-communications
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
/*
void delay(const uint8_t hundred_ms){
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
    delay(10);

    for(i=SNAKE_LEN;i<CUBEARR_VAL;i++){
        cube[0] &= ~(1<<cubearr_corner[i-SNAKE_LEN]); //remove
        cube[0] |= (1<<cubearr_corner[i]);
        delay(10);
    }

    for(j=1;j<=3;j++){
        for(i=0;i<SNAKE_LEN;i++){ //inbetween layers
            if(j==(1-1)||j==(2-1)){
                cube[j-1] &= ~(1<<cubearr_center[(CUBEARR_VAL-SNAKE_LEN)+i]); //remove
                if(i==2){
                    cube[j-1] &= ~(1<<9); //hack, will not turn off???
                }
            }
            else {
                cube[j-1] &= ~(1<<cubearr_corner[(CUBEARR_VAL-SNAKE_LEN)+i]); //remove
                if(i==2){
                    cube[j-1] &= ~(1<<12);
                }
            }
            if(j==1||j==2){
                cube[j] |= (1<<cubearr_center[i]); //set
            }
            else {
                cube[j] |= (1<<cubearr_corner[i]); //set
            }
            delay(10);
        }

        for(i=SNAKE_LEN;i<CUBEARR_VAL;i++){ //single layer
            if(j==1||j==2){
                cube[j] &= ~(1<<cubearr_center[i-SNAKE_LEN]); //remove
                cube[j] |= (1<<cubearr_center[i]); //set
            }
            else {
                cube[j] &= ~(1<<cubearr_corner[i-SNAKE_LEN]); //remove
                cube[j] |= (1<<cubearr_corner[i]); //set
            }
            delay(10);
        }
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
        if ((i & 0b1)==0){ //bit mask for 0 or 1, not using mod (%)
            cube[0] = CUBE_CENTER;
        }
        else {
            cube[0] = CUBE_OFF;
        }
        delay(i);
    }

    delay(10);
}

//random rain drops?
*/
int main(){
    //setup
    DDRB |= (1<<PB5); //built in led
    PORTB |= (1<<PB5); //led on - starting setup
    uart_init();
    io_init();
    PORTB &= ~(1<<PB5); //led off - setup done

    while(1){
        //light each layer
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

        //a 6 pixel snake
        green_snake();

        //blue is a ship, green is firing/shields
        rocket_ship();
    }
}
