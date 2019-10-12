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

//pushes layers down
void rotate_layers(void){
    int8_t i;
    for(i=0;i<3;i++){
        cube[i] = cube[i+1];
    }
    cube[3] = 0x0000;
}

//turns all layers on
void all_on(void){
    uint8_t i;
    for(i=0;i<4;i++){
        cube[i] = CUBE_ON;
    }
}

//turns all layers off
void all_off(void){
    uint8_t i;
    for(i=0;i<4;i++){
        cube[i] = CUBE_OFF;
    }
}

//slowly light each layer up, goes from 0 to 3
void bring_up(void){
    all_off();
    uint8_t i;
    for(i=0;i<4;i++){
        cube[i] = CUBE_ON;
        delay(7);
    }
}

//turns middle cube on first, then outer corners
void star(void){
    all_off();
    cube[1] = CUBE_CENTER;
    cube[2] = CUBE_CENTER;
    delay(7);
    cube[0] = CUBE_CORNER;
    cube[3] = CUBE_CORNER;
    delay(7);
}

//does a star, then turns the middle to outer off
void star_burst(void){
    star();
    cube[1] = CUBE_OFF;
    cube[2] = CUBE_OFF;
    delay(7);
    cube[0] = CUBE_OFF;
    cube[3] = CUBE_OFF;
    delay(7);
}

//only turns on green LEDs (no corner or middle)
void all_green(void){
    cube[0] = ~CUBE_CORNER;
    cube[1] = ~CUBE_CENTER;
    cube[2] = ~CUBE_CENTER;
    cube[3] = ~CUBE_CORNER;
    delay(10);
}

//slowly turns on each led from an array in a sequence
void green_wind_up(void){
    all_off();
    int8_t i;
    int8_t j;

    for(i=0;i<4;i++){
        for(j=0;j<CUBEARR_VAL;j++){
            if (i==1||i==2){ //inside layers
                cube[i] |= cubearr_center[j];
            }
            else { //top/bottom
                cube[i] |= cubearr_corner[j];
            }
            delay(5);
        }
    }
}

//turns on each blue LED from each corner, is an example of using while
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
        delay(7);
    }
}

//uses a length to slowly go up each level, turns off pixels behind
void green_snake(void){
    all_off();
    int8_t i;
    int8_t j;
#define SNAKE_LEN 5

    //setup initial snake
    for(i=0;i<SNAKE_LEN;i++){
        cube[0] |= cubearr_corner[i];
    }
    delay(7);

    for(j=0;j<=3;j++){
        if(j!= 0){ //don't do initial for moving on ground
            for(i=0;i<SNAKE_LEN;i++){ //inbetween layers
                if((j-1)>=1){
                    cube[j-1] &= ~cubearr_center[(CUBEARR_VAL-SNAKE_LEN)+i]; //remove
                }
                else {
                    cube[j-1] &= ~cubearr_corner[(CUBEARR_VAL-SNAKE_LEN)+i]; //remove
                }
                if(j!=3){
                    cube[j] |= cubearr_center[i]; //set
                }
                else {
                    cube[j] |= cubearr_corner[i]; //set
                }
                delay(7);
            }
        }

        for(i=SNAKE_LEN;i<CUBEARR_VAL;i++){ //single layer
            if(j==1||j==2){
                cube[j] &= ~cubearr_center[i-SNAKE_LEN]; //remove
                cube[j] |= cubearr_center[i]; //set
            }
            else {
                cube[j] &= ~cubearr_corner[i-SNAKE_LEN]; //remove
                cube[j] |= cubearr_corner[i]; //set
            }
            delay(7);
        }
    }

    delay(10);

    cube[3] = CUBE_CENTER;

    delay(10);

    all_green();

}

//uses center cube as body of spacecraft
//      g   g       //shieldling
//  g   b   b   g
//      b   b       //blue spaceship
//  g   g   g   g   //rocket fire
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

//1-4 random rain drops, falls down
void rain(const uint8_t drops){
    all_off();
    int8_t i;
    int8_t j;
    int8_t rand_cube; //random number for the cube
    int8_t rand_cube_drop; //random number of drop

    for(i=0;i<drops;i++){
        rotate_layers();

        rand_cube = rand() & ((1<<2)|(1<<1)|(1<<0)); //bit mask to 0b111, max number of drops
        if (rand_cube == 0){
            rand_cube++;
        }
        for (j=0;j<rand_cube;j++){
            rand_cube_drop = rand() & 15;
            cube[3] |= (1<<rand_cube_drop);
        }

        delay(7);
    }
}

//moves a line diagonal, constantly rotates
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

    for(i=0;i<times;i++){
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

//lights up the center, and then goes around; then reverses the process
void tower(void){
    all_off();
    int8_t i;
    int8_t j;

    //going up
    for(i=0;i<4;i++){
        cube[i] = CUBE_CENTER;
        delay(7);

        for(j=0;j<CUBEARR_VAL;j++){
            cube[i] |= cubearr_center[j]; //set
            delay(7);
        }
    }
    //going down
    for(i=3;i>=0;i--){
        for(j=(CUBEARR_VAL-1);j>=0;j--){
            cube[i] &= ~cubearr_center[j]; //set
            delay(7);
        }

        cube[i] &= ~CUBE_CENTER;
        delay(7);
    }
}

//slowly lights up a circle, counter-clockwise, copies each layer
void pie_chart(void){
    all_off();
    int8_t i;
    int8_t j;
    int8_t corner;

    //go on outside, get each corner
    for(i=0;i<CUBEARR_VAL;i++){
        //inside corner
        if((i%3)==0){ //at each end
            corner = i / 3;
            for(j=0;j<4;j++){
                cube[j] |= cubearr_inside_center[corner]; //set
            }
        }
        //outside
        for(j=0;j<4;j++){
            cube[j] |= cubearr_center[i]; //set
        }

        delay(5);
    }
}

//lights up in a clock orientation, copies each layer
void clock(void){
    all_off();
    int8_t i;
    int8_t j;
    int8_t corner;

    //go on outside, get each corner
    for(i=(CUBEARR_VAL-1);i>=0;i--){
        //inside corner
        if((i%3)==2){ //at each end
            corner = i / 3;
            for(j=0;j<4;j++){
                cube[j] = cubearr_inside_center[corner]; //set, delete other value
            }
        }
        //outside
        for(j=0;j<4;j++){
            if(i<(CUBEARR_VAL-1)){ //do not do on first cycle
                cube[j] &= ~cubearr_center[i+1]; //remove previous
            }
            cube[j] |= cubearr_center[i]; //set
        }

        delay(5);
    }
}
