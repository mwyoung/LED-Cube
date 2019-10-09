# Schematic information

Built using KiCad.

Power - can be supplyed from USB, as each the nano uses ~15mA, the 74HC595 <.1mA, and each
LED uses (green) (5V-2V)/1kΩ = 3mA or (blue) (5V-3V)/1kΩ = 2mA. With 12 green and 4 blue,
this is 3mA\*12 + 2mA\*4 = 44mA, for a total of ~60mA. This can be less with each LED not
on.

## Current SVG Schematic

![Schematic](https://github.com/mwyoung/LED-Cube/blob/master/Schematic/LED_Cube.svg)
