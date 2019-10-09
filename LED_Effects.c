#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>
#include <stdio.h>
#include <stdbool.h> //wastes variables...

#ifndef LED_DEFAULTS_H
    #include "LED_Defaults.h"
#endif

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
