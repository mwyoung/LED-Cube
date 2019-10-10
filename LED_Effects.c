#include <avr/io.h>
#include <util/delay.h>
#include <stdio.h>
#include <stdlib.h> //for rand

#ifndef LED_DEFAULTS_H
    #include "LED_Defaults.h"
#endif

void delay(const uint8_t hundred_ms){
    uint8_t i;
    for(i=0;i<hundred_ms;i++){_delay_ms(100);}
}

void rotate_layers(void){
    int8_t i;
    for(i=0;i<3;i++){
        cube[i] = cube[i+1];
    }
    cube[3] = 0x0000;
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
    for(i=1;i<=2;i++){
        for(j=0;j<CUBEARR_VAL;j++){
            cube[i] |= (1<<cubearr_center[j]);
            delay(5);
        }
    }

    //top layer
    for(i=0;i<CUBEARR_VAL;i++){
        cube[3] |= (1<<cubearr_corner[i]);
        delay(5);
    }
}

void blue_wind_up(void){
    all_off();
    int8_t i;
    int8_t j;

    for(i=0;i<4;i++){
        for(j=0;j<CUBE_LEDS;j++){
            if(i==0||i==3){
                while((~CUBE_CORNER & (1<<j)) && (j<CUBE_LEDS)){
                    j++;
                }
                cube[i] |= (1<<j); //skip
            }
            else {
                while((~CUBE_CENTER & (1<<j)) && (j<CUBE_LEDS)){
                    j++; //skip
                }
                cube[i] |= (1<<j);
            }
        }
        delay(10);
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
    delay(7);

    for(j=0;j<=3;j++){
        if(j!= 0){ //don't do initial for moving on ground
            for(i=0;i<SNAKE_LEN;i++){ //inbetween layers
                if((j-1)>=1){
                    cube[j-1] &= ~(1<<cubearr_center[(CUBEARR_VAL-SNAKE_LEN)+i]); //remove
                }
                else {
                    cube[j-1] &= ~(1<<cubearr_corner[(CUBEARR_VAL-SNAKE_LEN)+i]); //remove
                }
                if(j!=3){
                    cube[j] |= (1<<cubearr_center[i]); //set
                }
                else {
                    cube[j] |= (1<<cubearr_corner[i]); //set
                }
                delay(7);
            }
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
            delay(7);
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
    delay(15);
    cube[0] |= CUBE_OPPOSITE_CORNER;
    delay(10);

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

void rain(const uint8_t drops){
    all_off();
    int8_t i;
    int8_t j;
    int8_t rand_cube; //random number for the cube
    int8_t rand_cube_drop; //random number of drop

    for(i=0;i<drops;i++){
        rotate_layers();

        rand_cube = rand() & 3; //bit mask to 3, max number of drops
        if (rand_cube == 0){
            rand_cube++;
        }
        for (j=0;j<rand_cube;j++){
            rand_cube_drop = rand() & 15;
            cube[3] |= (1<<rand_cube_drop);
        }

        delay(5);
    }
}

void moving_diagonal(const uint8_t times){
    all_off();
    int8_t i;
    int8_t j;

    //setup
    cube[0] = 0x000F;
    cube[1] = 0x00F0;
    cube[2] = 0x0F00;
    cube[3] = 0XF000;
    delay(10);

    for(i=0;i<times*2;i++){
        for(j=0;j<4;j++){
            if (i < times){
                cube[j] = cube[j] << 4;
                if (cube[j] == 0){
                    cube[j] = 0x000F;
                }
            }
            else {
                cube[j] = cube[j] >> 4;
                if (cube[j] == 0){
                    cube[j] = 0xF000;
                }
            }
        }
        delay(10);
    }
}
