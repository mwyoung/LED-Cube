#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>
#include <stdio.h>
#include <stdbool.h> //wastes variables...

#ifndef LED_Defaults.h
    #include "LED_Defaults.h"
#endif

void delay(const uint8_t hundred_ms);

void all_on(void);
void all_off(void);
void bring_up(void);
void star(void);
void star_burst(void);
void all_green(void);
void green_wind_up(void);
void green_snake(void);
void rocket_ship(void);
//random rain drops?
