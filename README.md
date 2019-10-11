# LED Cube - 4x4x4

The purpose of this project is to make a LED cube using a minimum amount of pins from the
microcontroller. An Arduino Nano (clone) used for the Atmega328p chip as the microcontroller,
 and a USBASP is used for programming. An example serial test program is
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

<img align="right" height="200" src="https://user-images.githubusercontent.com/10273995/66607028-30d67d00-eb68-11e9-9e58-f144b741c010.jpg" />

For the physical hardware, blue and green LEDs were used due to a shortage of green LEDs.
This also created the pattern shown in the gif below where each corner and the middle LEDs
are blue, with the rest being green.

It is highly suggested to test each LED before soldering, and to also use a jig (see right).
This helps with placement of the image and also allows the structure to be layered on top
of another. The jig was made by measuring the cathode (-) part of each LED, and finding
that distance. Each cathode leg was then bent, and formed into a grid like pattern with 4
rows and two crossbeams on either end. The anodes are then connected together, with there
being 16 inputs.

Top layer example: (middle layers use blue (b) in center instead of green (g)).
<pre>
 Top layer:     Layer grid:     Side view:
 b--g--g--b     0  4  8  12     3 b--g--g--b
 |  |  |  |                       |  |  |  |
 g  g  g  g     1  5  9  13     2 g--g--g--g
 |  |  |  |                       |  |  |  |
 g  g  g  g     2  6  10 14     1 g--g--g--g
 |  |  |  |                       |  |  |  |
 b--g--g--b     3  7  11 15     0 b--g--g--b
</pre>

A schematic is also available [here](https://github.com/mwyoung/LED-Cube/blob/master/Schematic/LED_Cube.svg).

## Example
<p align="center">
<img src="https://user-images.githubusercontent.com/10273995/66527012-6703f600-eaaf-11e9-91d3-ce5843f21daa.gif"/>
</p>

## Other Resources

The 4x4x4 cube by [chr](https://www.instructables.com/id/LED-Cube-4x4x4/).\
74HC595 shift register tutorial by [Protostack](https://protostack.com.au/2010/05/introduction-to-74hc595-shift-register-controlling-16-leds/).\
74HC595 capacitor and resistor setup by [Nerd Ralph](nerdralph.blogspot.com/2015/10/using-74hc595-as-74hc164-shift-register.html).
