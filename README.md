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

## Hardware build

For the physical hardware, blue and green LEDs were used due to a shortage of green LEDs.
This also created the pattern shown in the gif below where each corner and the middle LEDs
are blue, with the rest being green.

It is highly suggested to test each LED before soldering, and to also use a [jig](https://user-images.githubusercontent.com/10273995/66607028-30d67d00-eb68-11e9-9e58-f144b741c010.jpg).
This helps with placement of the image and also allows the structure to be layered on top
of another.

A schematic is also available [here](https://github.com/mwyoung/LED-Cube/blob/master/Schematic/LED_Cube.svg).

## Example
<p align="center">
<img src="https://user-images.githubusercontent.com/10273995/66527012-6703f600-eaaf-11e9-91d3-ce5843f21daa.gif"/>
</p>

## Other Resources
The 4x4x4 cube by [chr](https://www.instructables.com/id/LED-Cube-4x4x4/).

74HC595 Shift Register tutorial by [Protostack](https://protostack.com.au/2010/05/introduction-to-74hc595-shift-register-controlling-16-leds/).

74HC595 capacitor and resistor setup by [Nerd Ralph](nerdralph.blogspot.com/2015/10/using-74hc595-as-74hc164-shift-register.html).
