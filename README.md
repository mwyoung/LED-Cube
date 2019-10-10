# LED Cube - 4x4x4

The purpose of this project is to make a LED cube using a minimum amount of pins from the
microcontroller. An Arduino Nano (clone, to use the Atmega328p chip) is used for the
microcontroller, and a USBASP is used for programming. An example serial test program is
available [here](https://github.com/mwyoung/avr-serial-test).

The main code starts in LED\_Cube4.c. The LED\_Defaults.h file contains macros and
variables used in both files. The LED\_Effects.c contains the code for the animations.

## Test programs

There are three testing programs in the [tests
folder](https://github.com/mwyoung/LED-Cube/tree/master/tests).

The 74HC595\_Test program is for testing out the 74HC595 chips, and uses LEDs directly
from each output of the chip. There is an included schematic for wiring.

The LED\_Test tests each layer of the cube individually to be able to check the wiring of
the LEDs. The Timer\_Test is a simple test for the timing aspect of the code, along with
having different presets for the FPS of the cube.

## Example
<p align="center">
<img src="https://user-images.githubusercontent.com/10273995/66527012-6703f600-eaaf-11e9-91d3-ce5843f21daa.gif"/>
</p>

## Other Resources
The 4x4x4 cube by [chr](https://www.instructables.com/id/LED-Cube-4x4x4/).

74HC595 Shift Register tutorial by [Protostack](https://protostack.com.au/2010/05/introduction-to-74hc595-shift-register-controlling-16-leds/).

74HC595 capacitor and resistor setup by [Nerd Ralph](nerdralph.blogspot.com/2015/10/using-74hc595-as-74hc164-shift-register.html).
