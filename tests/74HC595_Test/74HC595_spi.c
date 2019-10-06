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

//#define REVERSE
#define BJT
#define TWOCHIPS 2 //if doing 2
#ifdef TWOCHIPS
    #define CHIPOUTPUTS 2*8
    #define CHIPVAL uint16_t
#else
    #define CHIPOUTPUTS 1*8
    #define CHIPVAL uint8_t
#endif
//#define SPI
#ifdef SPI
    #define SPI_SS PB2      //rclk, pin 12
    #define SPI_MOSI PB3    //ser, pin 14
    #define SPI_MISO PB4    //nc
    #define SPI_SCK PB5     //srclk, pin 11
#else
    #define SER_DATA PD4    //ser, pin 14
    #define STORE_CLK PD5   //rclk, pin 12
    #define SHIFT_CLK PD6   //srclk, pin 11
#endif

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

void bjt_power(bool status){
    if (status){
        PORTB |= (1<<PB0);
        PORTD |= (1<<PD7);
    }
    else {
        PORTB &= ~(1<<PB0);
        PORTD &= ~(1<<PD7);
    }
}

void spi_init(void){
#ifdef SPI
    //output mode for /SS, MOST, SCK
    DDRB = (1<<PB2)|(1<<PB3)|(1<<PB5);
    // SPI enable, master select, sck idle high, sample on leading edge
    SPCR = (1<<SPE)|(1<<MSTR)|(1<<CPOL)|(0<<CPHA);
    // double speed, 2 clk periods, master mode only
    SPSR = (1<<SPI2X);
#else
    DDRB |= (1<<PB5); //led
    PORTB |= (1<<PB5);

    DDRD |= (1<<SER_DATA)|(1<<STORE_CLK)|(1<<SHIFT_CLK);
    PORTD &= ~( (1<<SER_DATA)|(1<<STORE_CLK)|(1<<SHIFT_CLK) );
#endif

#ifdef BJT
    DDRB |= (1<<PB0);
    DDRD |= (1<<PD7);
    bjt_power(true);
#endif
}

void outputToShiftReg(CHIPVAL value){
    uint8_t i;
    PORTD &= ~(1<<SHIFT_CLK); //get new values
    PORTD &= ~(1<<STORE_CLK);
    for(i=0;i<CHIPOUTPUTS;i++){
#ifdef REVERSE
        if (value & (1<<0)){ //if value is set, LSB first
#else
        if (value & (1<<(CHIPOUTPUTS-1))){ //if value is set, reverse order (MSB first)
#endif
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
    uint16_t count = 1;
    CHIPVAL count8 = 0x01;
    uint8_t i=0;
    uart_init();
    spi_init();

#ifdef SPI
    #ifdef TWOCHIPS
    SPDF = 0xFFFF;
    #else
    SPDF = 0xFF;
    #endif
    while(bit_is_clear(SPSR,SPIF)){} //wait until done
    PORTB |= (1<<SPI_SS);
    PORTB &= ~(1<<SPI_SS);
#else
    #ifdef TWOCHIPS
    outputToShiftReg(0xFFFF);
    #else
    outputToShiftReg(0xFF);
    #endif
#endif
    for(i=0;i<10;i++){_delay_ms(100);}

#ifdef BJT
    bjt_power(false);
    for(i=0;i<10;i++){_delay_ms(100);}
    bjt_power(true);
    for(i=0;i<10;i++){_delay_ms(100);}
#endif

    while(1){
        printf("%s:%d %u\n", "L", count, count8);
        count++;
#ifdef SPI
        //if (count%2==1){ SPDR = 0xFF; } //send to 74HC595
        //else { SPDR = 0x00; }
        SPDR = count8;
        while(bit_is_clear(SPSR,SPIF)){} //wait until done
        PORTB |= (1<<SPI_SS);
        PORTB &= ~(1<<SPI_SS);
#else
        PORTB ^= (1<<PB5);
        outputToShiftReg(count8);
#endif
        count8 = count8 << 1;
        if (count8==0x00){count8=0x01;}
        for(i=0;i<5;i++){_delay_ms(100);}
    }
}
