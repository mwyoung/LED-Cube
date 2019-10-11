//#include <avr/pgmspace.h>

#ifndef LED_DEFAULTS_H
    #define LED_DEFAULTS_H
    #define BJT_DDR DDRC
    #define BJT_PORT PORTC
    #define BJT0 PC0
    #define BJT1 PC1
    #define BJT2 PC2
    #define BJT3 PC3
    #define ALL_BJT_OFF ~( (1<<BJT0)|(1<<BJT1)|(1<<BJT2)|(1<<BJT3) )

    #define CUBE_OFF 0x0000
    #define CUBE_ON 0xFFFF
    #define CUBE_LEDS 16
    #define CUBE_LAYERS 4
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

    volatile uint16_t cube[CUBE_LAYERS] = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF};
    volatile uint8_t layer = 0; //current cube layer
    const uint16_t cubearr_corner[] =
        {1<<4,1<<5,1<<1,1<<2,1<<6,1<<7,1<<11,1<<10,1<<14,1<<13,1<<9,1<<8};
    const uint16_t cubearr_center[] =
        {1<<4,1<<0,1<<1,1<<2,1<<3,1<<7,1<<11,1<<15,1<<14,1<<13,1<<12,1<<8};
    const uint16_t cubearr_inside_center[]=
        {1<<5,1<<6,1<<10,1<<9};
    #define CUBEARR_VAL 12 //has 12 values
#endif
