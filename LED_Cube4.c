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

//can't leave usbasp plugged in, interferes with spi if using those pins
#define F_CPU 16000000UL
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

//functions
void uart_init(void);
int uart_putchar(char c, FILE *stream);
FILE uart_str = FDEV_SETUP_STREAM(uart_putchar, NULL, _FDEV_SETUP_WRITE);
void io_init(void);
void delay(const uint8_t hundred_ms);

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
    for(i=(CUBE_LEDS-1);i>=0;i--){
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

        //slowly go through each blue led
        blue_wind_up();

        //a 6 pixel snake
        green_snake();

        //blue is a ship, green is firing/shields
        rocket_ship();

        //rain - pseudo random
        rain(32);

        //moving diagonal
        moving_diagonal(8);

        //lightup tower
        tower();

        //end
    }
}
