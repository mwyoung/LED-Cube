#include <avr/io.h>
#include <util/delay.h>
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
    DDRB |= (1<<PB5); //led
    PORTB |= (1<<PB5);

    DDRD |= (1<<SER_DATA)|(1<<STORE_CLK)|(1<<SHIFT_CLK);
    PORTD &= ~( (1<<SER_DATA)|(1<<STORE_CLK)|(1<<SHIFT_CLK) );

    //BJTs
    BJT_DDR |= (1<<BJT0)|(1<<BJT1)|(1<<BJT2)|(1<<BJT3);
    BJT_PORT &= ALL_BJT_OFF;
}

void outputToShiftReg(uint16_t value){
    uint8_t i;
    PORTD &= ~(1<<SHIFT_CLK); //get new values
    PORTD &= ~(1<<STORE_CLK);
    for(i=0;i<16;i++){
        if (value & (1<<15)){ //if value is set, reverse order (MSB first)
            PORTD |= (1<<SER_DATA);
        }
        else {
            PORTD &= ~(1<<SER_DATA);
        }
        value = value << 1;     //shift over
        PORTD |= (1<<SHIFT_CLK);
        _NOP(); _NOP(); //small break
        PORTD &= ~(1<<SHIFT_CLK);
    }
    PORTD |= (1<<STORE_CLK); //no more inputs
}

int main(){
    //setup
    uint8_t i=0;
    uint8_t j=0;
    uart_init();
    io_init();

    outputToShiftReg(0xFFFF);
    //outputToShiftReg(0x0000);

    while(1){
        for (i=0; i<4;i++){
            printf("%d\n",i);
            PORTC &= ALL_BJT_OFF;
            switch(i){
                case 0:
                    PORTC |= (1<<BJT0);
                    break;
                case 1:
                    PORTC |= (1<<BJT1);
                    break;
                case 2:
                    PORTC |= (1<<BJT2);
                    break;
                case 3:
                    PORTC |= (1<<BJT3);
                    break;
                default:
                    PORTC &= ALL_BJT_OFF;
            }
            for (j=0;j<20;j++){_delay_ms(100);}
            PORTB ^= (1<<PB5);
        }
    }
}
