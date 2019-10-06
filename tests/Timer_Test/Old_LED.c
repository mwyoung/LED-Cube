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

void uart_init(void);
int uart_putchar(char c, FILE *stream);
FILE uart_str = FDEV_SETUP_STREAM(uart_putchar, NULL, _FDEV_SETUP_WRITE);
void io_init(void);


volatile uint16_t cube[4] = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF};
volatile uint8_t layer = 0; //current cube layer

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
    //built in led
    DDRB |= (1<<PB5);
    PORTB |= (1<<PB5);

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

void delay(void){
    uint8_t i;
    for(i=0;i<20;i++){_delay_ms(100);}
}

int main(){
    //setup
    uart_init();
    io_init();
    uint8_t i;

    //setup
    PORTB &= ~(1<<PB5); //led off

    while(1){
        delay();
        for(i=0;i<4;i++){
            if (i==0 || i==3){
                cube[i] = 0b1001000000001001;
            }
            else {
                cube[i] = 0x0000;
            }
        }

        delay();
        for(i=0;i<4;i++){
            if (i==1 || i==2){
                cube[i] = 0b0000011001100000;
            }
            else {
                cube[i] = 0x0000;
            }
        }

        delay();
        for(i=0;i<4;i++){
            if (i==1 || i==2){
                cube[i] = 0b1111100110011111;
            }
            else {
                cube[i] = 0b0110111111110110;
            }
        }

        delay();
        for(i=0;i<4;i++){
            cube[i] = 0xFFFF;
        }
    }
}
