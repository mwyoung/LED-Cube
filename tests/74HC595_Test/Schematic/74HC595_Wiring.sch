EESchema Schematic File Version 4
LIBS:74HC595_Wiring-cache
EELAYER 26 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title ""
Date "2019-10-04"
Rev "1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 5D91333E
P 2175 2875
F 0 "A1" H 1850 3825 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" V 2150 2775 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 2325 1925 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 2175 1875 50  0001 C CNN
	1    2175 2875
	-1   0    0    -1  
$EndComp
$Comp
L 74xx:74HC595 U1
U 1 1 5D91341C
P 4300 2825
F 0 "U1" H 4100 3375 50  0000 C CNN
F 1 "74HC595" H 4275 2475 50  0000 C CNN
F 2 "" H 4300 2825 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 4300 2825 50  0001 C CNN
	1    4300 2825
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5D9135B3
P 2075 3975
F 0 "#PWR06" H 2075 3725 50  0001 C CNN
F 1 "GND" H 2080 3802 50  0000 C CNN
F 2 "" H 2075 3975 50  0001 C CNN
F 3 "" H 2075 3975 50  0001 C CNN
	1    2075 3975
	1    0    0    -1  
$EndComp
Wire Wire Line
	2075 3975 2075 3925
Wire Wire Line
	2175 3875 2175 3925
Wire Wire Line
	2175 3925 2075 3925
Connection ~ 2075 3925
Wire Wire Line
	2075 3925 2075 3875
$Comp
L power:GND #PWR010
U 1 1 5D7DAD12
P 9100 6200
F 0 "#PWR010" H 9100 5950 50  0001 C CNN
F 1 "GND" H 9105 6027 50  0000 C CNN
F 2 "" H 9100 6200 50  0001 C CNN
F 3 "" H 9100 6200 50  0001 C CNN
	1    9100 6200
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR011
U 1 1 5D7DADA4
P 9350 6200
F 0 "#PWR011" H 9350 6000 50  0001 C CNN
F 1 "GNDPWR" H 9354 6046 50  0000 C CNN
F 2 "" H 9350 6150 50  0001 C CNN
F 3 "" H 9350 6150 50  0001 C CNN
	1    9350 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 6200 9350 6100
Wire Wire Line
	9350 6100 9100 6100
Wire Wire Line
	9100 6100 9100 6200
$Comp
L power:+3.3V #PWR013
U 1 1 5D7DD273
P 8800 6250
F 0 "#PWR013" H 8800 6100 50  0001 C CNN
F 1 "+3.3V" H 8815 6423 50  0000 C CNN
F 2 "" H 8800 6250 50  0001 C CNN
F 3 "" H 8800 6250 50  0001 C CNN
	1    8800 6250
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5D7DD2FE
P 8500 6250
F 0 "#FLG02" H 8500 6325 50  0001 C CNN
F 1 "PWR_FLAG" H 8500 6424 50  0000 C CNN
F 2 "" H 8500 6250 50  0001 C CNN
F 3 "~" H 8500 6250 50  0001 C CNN
	1    8500 6250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR012
U 1 1 5D7DD3BD
P 7750 6250
F 0 "#PWR012" H 7750 6100 50  0001 C CNN
F 1 "+5V" H 7765 6423 50  0000 C CNN
F 2 "" H 7750 6250 50  0001 C CNN
F 3 "" H 7750 6250 50  0001 C CNN
	1    7750 6250
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5D7DD3EB
P 8050 6250
F 0 "#FLG01" H 8050 6325 50  0001 C CNN
F 1 "PWR_FLAG" H 8050 6424 50  0000 C CNN
F 2 "" H 8050 6250 50  0001 C CNN
F 3 "~" H 8050 6250 50  0001 C CNN
	1    8050 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 6250 8800 6350
Wire Wire Line
	8800 6350 8500 6350
Wire Wire Line
	8500 6350 8500 6250
Wire Wire Line
	8050 6250 8050 6350
Wire Wire Line
	8050 6350 7750 6350
Wire Wire Line
	7750 6350 7750 6250
NoConn ~ 2075 1875
NoConn ~ 2275 1875
NoConn ~ 1675 2275
NoConn ~ 1675 2375
NoConn ~ 1675 2675
NoConn ~ 1675 2875
NoConn ~ 1675 2975
NoConn ~ 1675 3075
NoConn ~ 1675 3175
NoConn ~ 1675 3275
NoConn ~ 1675 3375
NoConn ~ 1675 3475
NoConn ~ 1675 3575
NoConn ~ 2675 2275
NoConn ~ 2675 2375
NoConn ~ 2675 2475
NoConn ~ 2675 2575
NoConn ~ 2675 3175
NoConn ~ 2675 3475
NoConn ~ 2675 3275
NoConn ~ 2675 3375
NoConn ~ 2675 3575
Text Notes 2800 3575 0    50   ~ 0
If using\nbuilt in SPI:\n~SS~ (RCLK)\nMOSI (SER)\nMISO (NC)\nSCK (SRCLK)
Wire Notes Line
	2675 3575 2775 3575
Wire Notes Line
	2775 3575 2775 3525
Wire Notes Line
	2725 3300 2725 3275
Wire Notes Line
	2725 3275 2675 3275
$Comp
L power:GND #PWR04
U 1 1 5D91525A
P 3800 3425
F 0 "#PWR04" H 3800 3175 50  0001 C CNN
F 1 "GND" H 3805 3252 50  0000 C CNN
F 2 "" H 3800 3425 50  0001 C CNN
F 3 "" H 3800 3425 50  0001 C CNN
	1    3800 3425
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 5D91545F
P 1975 1700
F 0 "#PWR01" H 1975 1550 50  0001 C CNN
F 1 "+5V" H 1990 1873 50  0000 C CNN
F 2 "" H 1975 1700 50  0001 C CNN
F 3 "" H 1975 1700 50  0001 C CNN
	1    1975 1700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 5D915492
P 4125 2025
F 0 "#PWR02" H 4125 1875 50  0001 C CNN
F 1 "+5V" H 4140 2198 50  0000 C CNN
F 2 "" H 4125 2025 50  0001 C CNN
F 3 "" H 4125 2025 50  0001 C CNN
	1    4125 2025
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5D91559C
P 4675 2075
F 0 "#PWR03" H 4675 1825 50  0001 C CNN
F 1 "GND" H 4675 1925 50  0000 C CNN
F 2 "" H 4675 2075 50  0001 C CNN
F 3 "" H 4675 2075 50  0001 C CNN
	1    4675 2075
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5D91585A
P 4500 2025
F 0 "C1" V 4375 1975 50  0000 L CNN
F 1 "0.1uF" V 4600 1925 50  0000 L CNN
F 2 "" H 4500 2025 50  0001 C CNN
F 3 "~" H 4500 2025 50  0001 C CNN
	1    4500 2025
	0    1    1    0   
$EndComp
Wire Wire Line
	3900 3575 4300 3575
Wire Wire Line
	3900 3025 3900 3350
Wire Wire Line
	4300 3575 4300 3525
Wire Wire Line
	3900 2425 3325 2425
Wire Wire Line
	3325 2425 3325 2675
Wire Wire Line
	1975 1875 1975 1700
Wire Wire Line
	3900 2925 3525 2925
Wire Wire Line
	3525 2925 3525 2775
Wire Wire Line
	3400 2625 3400 2875
$Comp
L Device:R_US R1
U 1 1 5D919A21
P 5375 1800
F 0 "R1" V 5275 1725 50  0000 C CNN
F 1 "1k" V 5275 1875 50  0000 C CNN
F 2 "" V 5415 1790 50  0001 C CNN
F 3 "~" H 5375 1800 50  0001 C CNN
	1    5375 1800
	0    1    1    0   
$EndComp
$Comp
L Device:LED D1
U 1 1 5D91BA5C
P 5925 1800
F 0 "D1" H 5975 1675 50  0000 C CNN
F 1 "LED" H 5825 1675 50  0000 C CNN
F 2 "" H 5925 1800 50  0001 C CNN
F 3 "~" H 5925 1800 50  0001 C CNN
	1    5925 1800
	-1   0    0    1   
$EndComp
Wire Wire Line
	5775 1800 5525 1800
$Comp
L Device:R_US R2
U 1 1 5D91CC9C
P 5375 2025
F 0 "R2" V 5275 1950 50  0000 C CNN
F 1 "1k" V 5275 2100 50  0000 C CNN
F 2 "" V 5415 2015 50  0001 C CNN
F 3 "~" H 5375 2025 50  0001 C CNN
	1    5375 2025
	0    1    1    0   
$EndComp
$Comp
L Device:LED D2
U 1 1 5D91CCA3
P 5925 2025
F 0 "D2" H 5975 1900 50  0000 C CNN
F 1 "LED" H 5825 1900 50  0000 C CNN
F 2 "" H 5925 2025 50  0001 C CNN
F 3 "~" H 5925 2025 50  0001 C CNN
	1    5925 2025
	-1   0    0    1   
$EndComp
Wire Wire Line
	5775 2025 5525 2025
$Comp
L Device:R_US R4
U 1 1 5D91D463
P 5375 2250
F 0 "R4" V 5275 2175 50  0000 C CNN
F 1 "1k" V 5275 2325 50  0000 C CNN
F 2 "" V 5415 2240 50  0001 C CNN
F 3 "~" H 5375 2250 50  0001 C CNN
	1    5375 2250
	0    1    1    0   
$EndComp
$Comp
L Device:LED D3
U 1 1 5D91D46A
P 5925 2250
F 0 "D3" H 5975 2125 50  0000 C CNN
F 1 "LED" H 5825 2125 50  0000 C CNN
F 2 "" H 5925 2250 50  0001 C CNN
F 3 "~" H 5925 2250 50  0001 C CNN
	1    5925 2250
	-1   0    0    1   
$EndComp
Wire Wire Line
	5775 2250 5525 2250
$Comp
L Device:R_US R5
U 1 1 5D91D472
P 5375 2475
F 0 "R5" V 5275 2400 50  0000 C CNN
F 1 "1k" V 5275 2550 50  0000 C CNN
F 2 "" V 5415 2465 50  0001 C CNN
F 3 "~" H 5375 2475 50  0001 C CNN
	1    5375 2475
	0    1    1    0   
$EndComp
$Comp
L Device:LED D4
U 1 1 5D91D479
P 5925 2475
F 0 "D4" H 5975 2350 50  0000 C CNN
F 1 "LED" H 5825 2350 50  0000 C CNN
F 2 "" H 5925 2475 50  0001 C CNN
F 3 "~" H 5925 2475 50  0001 C CNN
	1    5925 2475
	-1   0    0    1   
$EndComp
Wire Wire Line
	5775 2475 5525 2475
$Comp
L Device:R_US R6
U 1 1 5D91DD1E
P 5375 2700
F 0 "R6" V 5275 2625 50  0000 C CNN
F 1 "1k" V 5275 2775 50  0000 C CNN
F 2 "" V 5415 2690 50  0001 C CNN
F 3 "~" H 5375 2700 50  0001 C CNN
	1    5375 2700
	0    1    1    0   
$EndComp
$Comp
L Device:LED D5
U 1 1 5D91DD25
P 5925 2700
F 0 "D5" H 5975 2575 50  0000 C CNN
F 1 "LED" H 5825 2575 50  0000 C CNN
F 2 "" H 5925 2700 50  0001 C CNN
F 3 "~" H 5925 2700 50  0001 C CNN
	1    5925 2700
	-1   0    0    1   
$EndComp
Wire Wire Line
	5775 2700 5525 2700
$Comp
L Device:R_US R7
U 1 1 5D91DD2D
P 5375 2925
F 0 "R7" V 5275 2850 50  0000 C CNN
F 1 "1k" V 5275 3000 50  0000 C CNN
F 2 "" V 5415 2915 50  0001 C CNN
F 3 "~" H 5375 2925 50  0001 C CNN
	1    5375 2925
	0    1    1    0   
$EndComp
$Comp
L Device:LED D6
U 1 1 5D91DD34
P 5925 2925
F 0 "D6" H 5975 2800 50  0000 C CNN
F 1 "LED" H 5825 2800 50  0000 C CNN
F 2 "" H 5925 2925 50  0001 C CNN
F 3 "~" H 5925 2925 50  0001 C CNN
	1    5925 2925
	-1   0    0    1   
$EndComp
Wire Wire Line
	5775 2925 5525 2925
$Comp
L Device:R_US R8
U 1 1 5D91E6AB
P 5375 3150
F 0 "R8" V 5275 3075 50  0000 C CNN
F 1 "1k" V 5275 3225 50  0000 C CNN
F 2 "" V 5415 3140 50  0001 C CNN
F 3 "~" H 5375 3150 50  0001 C CNN
	1    5375 3150
	0    1    1    0   
$EndComp
$Comp
L Device:LED D7
U 1 1 5D91E6B2
P 5925 3150
F 0 "D7" H 5975 3025 50  0000 C CNN
F 1 "LED" H 5825 3025 50  0000 C CNN
F 2 "" H 5925 3150 50  0001 C CNN
F 3 "~" H 5925 3150 50  0001 C CNN
	1    5925 3150
	-1   0    0    1   
$EndComp
Wire Wire Line
	5775 3150 5525 3150
$Comp
L Device:R_US R9
U 1 1 5D91E6BA
P 5375 3375
F 0 "R9" V 5275 3300 50  0000 C CNN
F 1 "1k" V 5275 3450 50  0000 C CNN
F 2 "" V 5415 3365 50  0001 C CNN
F 3 "~" H 5375 3375 50  0001 C CNN
	1    5375 3375
	0    1    1    0   
$EndComp
$Comp
L Device:LED D8
U 1 1 5D91E6C1
P 5925 3375
F 0 "D8" H 5975 3250 50  0000 C CNN
F 1 "LED" H 5825 3250 50  0000 C CNN
F 2 "" H 5925 3375 50  0001 C CNN
F 3 "~" H 5925 3375 50  0001 C CNN
	1    5925 3375
	-1   0    0    1   
$EndComp
Wire Wire Line
	5775 3375 5525 3375
Wire Wire Line
	6075 3375 6300 3375
Wire Wire Line
	6300 3375 6300 3475
Wire Wire Line
	3400 2625 3625 2625
$Comp
L Device:R_US R3
U 1 1 5D948D24
P 3800 2225
F 0 "R3" H 3732 2179 50  0000 R CNN
F 1 "1k" H 3732 2270 50  0000 R CNN
F 2 "" V 3840 2215 50  0001 C CNN
F 3 "~" H 3800 2225 50  0001 C CNN
	1    3800 2225
	-1   0    0    1   
$EndComp
Wire Wire Line
	4300 2225 4300 2075
Text Notes 3725 2300 2    50   ~ 0
For safety\nCould be removed
Wire Wire Line
	6075 1800 6300 1800
Wire Wire Line
	6300 1800 6300 2025
Connection ~ 6300 3375
Wire Wire Line
	6075 2025 6300 2025
Connection ~ 6300 2025
Wire Wire Line
	6300 2025 6300 2250
Wire Wire Line
	6075 2250 6300 2250
Connection ~ 6300 2250
Wire Wire Line
	6075 2475 6300 2475
Wire Wire Line
	6300 2250 6300 2475
Connection ~ 6300 2475
Wire Wire Line
	6300 2475 6300 2700
Wire Wire Line
	6075 2700 6300 2700
Connection ~ 6300 2700
Wire Wire Line
	6300 2700 6300 2925
Wire Wire Line
	6075 2925 6300 2925
Connection ~ 6300 2925
Wire Wire Line
	6300 2925 6300 3150
Wire Wire Line
	6075 3150 6300 3150
Connection ~ 6300 3150
Wire Wire Line
	6300 3150 6300 3375
Wire Wire Line
	3800 2375 3800 2725
Wire Wire Line
	3800 2725 3900 2725
Wire Wire Line
	3800 2075 4125 2075
Wire Wire Line
	4600 2025 4675 2025
Wire Wire Line
	4675 2025 4675 2075
Wire Wire Line
	4400 2025 4300 2025
Wire Wire Line
	4300 2025 4300 2075
Connection ~ 4300 2075
Wire Wire Line
	4125 2025 4125 2075
Connection ~ 4125 2075
Wire Wire Line
	4125 2075 4300 2075
$Comp
L 74xx:74HC595 U2
U 1 1 5D94A2FE
P 4300 4875
F 0 "U2" H 4100 5425 50  0000 C CNN
F 1 "74HC595" H 4275 4525 50  0000 C CNN
F 2 "" H 4300 4875 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 4300 4875 50  0001 C CNN
	1    4300 4875
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5D94A306
P 4300 5675
F 0 "#PWR09" H 4300 5425 50  0001 C CNN
F 1 "GND" H 4305 5502 50  0000 C CNN
F 2 "" H 4300 5675 50  0001 C CNN
F 3 "" H 4300 5675 50  0001 C CNN
	1    4300 5675
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 5675 4300 5625
$Comp
L power:+5V #PWR07
U 1 1 5D94A30D
P 4125 4075
F 0 "#PWR07" H 4125 3925 50  0001 C CNN
F 1 "+5V" H 4140 4248 50  0000 C CNN
F 2 "" H 4125 4075 50  0001 C CNN
F 3 "" H 4125 4075 50  0001 C CNN
	1    4125 4075
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5D94A313
P 4675 4125
F 0 "#PWR08" H 4675 3875 50  0001 C CNN
F 1 "GND" H 4675 3975 50  0000 C CNN
F 2 "" H 4675 4125 50  0001 C CNN
F 3 "" H 4675 4125 50  0001 C CNN
	1    4675 4125
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5D94A319
P 4500 4075
F 0 "C2" V 4375 4025 50  0000 L CNN
F 1 "0.1uF" V 4600 3975 50  0000 L CNN
F 2 "" H 4500 4075 50  0001 C CNN
F 3 "~" H 4500 4075 50  0001 C CNN
	1    4500 4075
	0    1    1    0   
$EndComp
Wire Wire Line
	3900 5625 4300 5625
Wire Wire Line
	3900 5075 3900 5625
Connection ~ 4300 5625
Wire Wire Line
	4300 5625 4300 5575
Wire Wire Line
	3900 4475 3700 4475
Wire Wire Line
	3900 4975 3525 4975
$Comp
L Device:R_US R12
U 1 1 5D94A327
P 3800 4275
F 0 "R12" H 3732 4229 50  0000 R CNN
F 1 "1k" H 3732 4320 50  0000 R CNN
F 2 "" V 3840 4265 50  0001 C CNN
F 3 "~" H 3800 4275 50  0001 C CNN
	1    3800 4275
	-1   0    0    1   
$EndComp
Wire Wire Line
	4300 4275 4300 4125
Wire Wire Line
	3800 4425 3800 4775
Wire Wire Line
	3800 4775 3900 4775
Wire Wire Line
	3800 4125 4125 4125
Wire Wire Line
	4600 4075 4675 4075
Wire Wire Line
	4675 4075 4675 4125
Wire Wire Line
	4400 4075 4300 4075
Wire Wire Line
	4300 4075 4300 4125
Connection ~ 4300 4125
Wire Wire Line
	4125 4075 4125 4125
Connection ~ 4125 4125
Wire Wire Line
	4125 4125 4300 4125
Wire Wire Line
	4700 3325 4700 3850
Wire Wire Line
	4700 3850 3700 3850
Wire Wire Line
	3700 3850 3700 4475
Wire Wire Line
	3625 2625 3625 4675
Connection ~ 3625 2625
Wire Wire Line
	3625 2625 3900 2625
Wire Wire Line
	3625 4675 3900 4675
Wire Wire Line
	3525 4975 3525 2925
Connection ~ 3525 2925
$Comp
L power:GND #PWR05
U 1 1 5D9356BA
P 6300 3925
F 0 "#PWR05" H 6300 3675 50  0001 C CNN
F 1 "GND" H 6305 3752 50  0000 C CNN
F 2 "" H 6300 3925 50  0001 C CNN
F 3 "" H 6300 3925 50  0001 C CNN
	1    6300 3925
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R11
U 1 1 5D962D8B
P 5325 4175
F 0 "R11" V 5225 4100 50  0000 C CNN
F 1 "1k" V 5225 4250 50  0000 C CNN
F 2 "" V 5365 4165 50  0001 C CNN
F 3 "~" H 5325 4175 50  0001 C CNN
	1    5325 4175
	0    1    1    0   
$EndComp
$Comp
L Device:LED D9
U 1 1 5D962D92
P 5875 4175
F 0 "D9" H 5925 4050 50  0000 C CNN
F 1 "LED" H 5775 4050 50  0000 C CNN
F 2 "" H 5875 4175 50  0001 C CNN
F 3 "~" H 5875 4175 50  0001 C CNN
	1    5875 4175
	-1   0    0    1   
$EndComp
Wire Wire Line
	5725 4175 5475 4175
$Comp
L Device:R_US R13
U 1 1 5D962D9A
P 5325 4400
F 0 "R13" V 5225 4325 50  0000 C CNN
F 1 "1k" V 5225 4475 50  0000 C CNN
F 2 "" V 5365 4390 50  0001 C CNN
F 3 "~" H 5325 4400 50  0001 C CNN
	1    5325 4400
	0    1    1    0   
$EndComp
$Comp
L Device:LED D10
U 1 1 5D962DA1
P 5875 4400
F 0 "D10" H 5925 4275 50  0000 C CNN
F 1 "LED" H 5775 4275 50  0000 C CNN
F 2 "" H 5875 4400 50  0001 C CNN
F 3 "~" H 5875 4400 50  0001 C CNN
	1    5875 4400
	-1   0    0    1   
$EndComp
Wire Wire Line
	5725 4400 5475 4400
$Comp
L Device:R_US R14
U 1 1 5D962DA9
P 5325 4625
F 0 "R14" V 5225 4550 50  0000 C CNN
F 1 "1k" V 5225 4700 50  0000 C CNN
F 2 "" V 5365 4615 50  0001 C CNN
F 3 "~" H 5325 4625 50  0001 C CNN
	1    5325 4625
	0    1    1    0   
$EndComp
$Comp
L Device:LED D11
U 1 1 5D962DB0
P 5875 4625
F 0 "D11" H 5925 4500 50  0000 C CNN
F 1 "LED" H 5775 4500 50  0000 C CNN
F 2 "" H 5875 4625 50  0001 C CNN
F 3 "~" H 5875 4625 50  0001 C CNN
	1    5875 4625
	-1   0    0    1   
$EndComp
Wire Wire Line
	5725 4625 5475 4625
$Comp
L Device:R_US R15
U 1 1 5D962DB8
P 5325 4850
F 0 "R15" V 5225 4775 50  0000 C CNN
F 1 "1k" V 5225 4925 50  0000 C CNN
F 2 "" V 5365 4840 50  0001 C CNN
F 3 "~" H 5325 4850 50  0001 C CNN
	1    5325 4850
	0    1    1    0   
$EndComp
$Comp
L Device:LED D12
U 1 1 5D962DBF
P 5875 4850
F 0 "D12" H 5925 4725 50  0000 C CNN
F 1 "LED" H 5775 4725 50  0000 C CNN
F 2 "" H 5875 4850 50  0001 C CNN
F 3 "~" H 5875 4850 50  0001 C CNN
	1    5875 4850
	-1   0    0    1   
$EndComp
Wire Wire Line
	5725 4850 5475 4850
$Comp
L Device:R_US R16
U 1 1 5D962DC7
P 5325 5075
F 0 "R16" V 5225 5000 50  0000 C CNN
F 1 "1k" V 5225 5150 50  0000 C CNN
F 2 "" V 5365 5065 50  0001 C CNN
F 3 "~" H 5325 5075 50  0001 C CNN
	1    5325 5075
	0    1    1    0   
$EndComp
$Comp
L Device:LED D13
U 1 1 5D962DCE
P 5875 5075
F 0 "D13" H 5925 4950 50  0000 C CNN
F 1 "LED" H 5775 4950 50  0000 C CNN
F 2 "" H 5875 5075 50  0001 C CNN
F 3 "~" H 5875 5075 50  0001 C CNN
	1    5875 5075
	-1   0    0    1   
$EndComp
Wire Wire Line
	5725 5075 5475 5075
$Comp
L Device:R_US R17
U 1 1 5D962DD6
P 5325 5300
F 0 "R17" V 5225 5225 50  0000 C CNN
F 1 "1k" V 5225 5375 50  0000 C CNN
F 2 "" V 5365 5290 50  0001 C CNN
F 3 "~" H 5325 5300 50  0001 C CNN
	1    5325 5300
	0    1    1    0   
$EndComp
$Comp
L Device:LED D14
U 1 1 5D962DDD
P 5875 5300
F 0 "D14" H 5925 5175 50  0000 C CNN
F 1 "LED" H 5775 5175 50  0000 C CNN
F 2 "" H 5875 5300 50  0001 C CNN
F 3 "~" H 5875 5300 50  0001 C CNN
	1    5875 5300
	-1   0    0    1   
$EndComp
Wire Wire Line
	5725 5300 5475 5300
$Comp
L Device:R_US R18
U 1 1 5D962DE5
P 5325 5525
F 0 "R18" V 5225 5450 50  0000 C CNN
F 1 "1k" V 5225 5600 50  0000 C CNN
F 2 "" V 5365 5515 50  0001 C CNN
F 3 "~" H 5325 5525 50  0001 C CNN
	1    5325 5525
	0    1    1    0   
$EndComp
$Comp
L Device:LED D15
U 1 1 5D962DEC
P 5875 5525
F 0 "D15" H 5925 5400 50  0000 C CNN
F 1 "LED" H 5775 5400 50  0000 C CNN
F 2 "" H 5875 5525 50  0001 C CNN
F 3 "~" H 5875 5525 50  0001 C CNN
	1    5875 5525
	-1   0    0    1   
$EndComp
Wire Wire Line
	5725 5525 5475 5525
$Comp
L Device:R_US R19
U 1 1 5D962DF4
P 5325 5750
F 0 "R19" V 5225 5675 50  0000 C CNN
F 1 "1k" V 5225 5825 50  0000 C CNN
F 2 "" V 5365 5740 50  0001 C CNN
F 3 "~" H 5325 5750 50  0001 C CNN
	1    5325 5750
	0    1    1    0   
$EndComp
$Comp
L Device:LED D16
U 1 1 5D962DFB
P 5875 5750
F 0 "D16" H 5925 5625 50  0000 C CNN
F 1 "LED" H 5775 5625 50  0000 C CNN
F 2 "" H 5875 5750 50  0001 C CNN
F 3 "~" H 5875 5750 50  0001 C CNN
	1    5875 5750
	-1   0    0    1   
$EndComp
Wire Wire Line
	5725 5750 5475 5750
$Comp
L power:GND #PWR014
U 1 1 5D962E03
P 6250 6300
F 0 "#PWR014" H 6250 6050 50  0001 C CNN
F 1 "GND" H 6255 6127 50  0000 C CNN
F 2 "" H 6250 6300 50  0001 C CNN
F 3 "" H 6250 6300 50  0001 C CNN
	1    6250 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6025 5750 6250 5750
Wire Wire Line
	6250 5750 6250 5850
Wire Wire Line
	6025 4175 6250 4175
Wire Wire Line
	6250 4175 6250 4400
Connection ~ 6250 5750
Wire Wire Line
	6025 4400 6250 4400
Connection ~ 6250 4400
Wire Wire Line
	6250 4400 6250 4625
Wire Wire Line
	6025 4625 6250 4625
Connection ~ 6250 4625
Wire Wire Line
	6025 4850 6250 4850
Wire Wire Line
	6250 4625 6250 4850
Connection ~ 6250 4850
Wire Wire Line
	6250 4850 6250 5075
Wire Wire Line
	6025 5075 6250 5075
Connection ~ 6250 5075
Wire Wire Line
	6250 5075 6250 5300
Wire Wire Line
	6025 5300 6250 5300
Connection ~ 6250 5300
Wire Wire Line
	6250 5300 6250 5525
Wire Wire Line
	6025 5525 6250 5525
Connection ~ 6250 5525
Wire Wire Line
	6250 5525 6250 5750
Wire Wire Line
	4700 2425 4800 2425
Wire Wire Line
	4800 3125 4800 3375
Wire Wire Line
	4800 3125 4700 3125
Wire Wire Line
	4800 3375 5225 3375
Wire Wire Line
	4800 2425 4800 1800
Wire Wire Line
	4800 1800 5225 1800
Wire Wire Line
	4700 3025 4900 3025
Wire Wire Line
	4900 3025 4900 3150
Wire Wire Line
	4900 3150 5225 3150
Wire Wire Line
	5225 2925 4700 2925
Wire Wire Line
	5225 2025 4900 2025
Wire Wire Line
	4900 2025 4900 2525
Wire Wire Line
	4900 2525 4700 2525
Wire Wire Line
	4700 2625 5000 2625
Wire Wire Line
	5000 2625 5000 2250
Wire Wire Line
	5000 2250 5225 2250
Wire Wire Line
	5225 2475 5075 2475
Wire Wire Line
	5075 2475 5075 2725
Wire Wire Line
	5075 2725 4700 2725
Wire Wire Line
	4700 2825 5175 2825
Wire Wire Line
	5175 2825 5175 2700
Wire Wire Line
	5175 2700 5225 2700
NoConn ~ 4700 5375
Wire Wire Line
	4700 4475 4825 4475
Wire Wire Line
	4825 4475 4825 4175
Wire Wire Line
	4825 4175 5175 4175
Wire Wire Line
	4700 4575 4875 4575
Wire Wire Line
	4875 4575 4875 4400
Wire Wire Line
	4875 4400 5175 4400
Wire Wire Line
	5175 4625 4950 4625
Wire Wire Line
	4950 4625 4950 4675
Wire Wire Line
	4950 4675 4700 4675
Wire Wire Line
	5175 4850 5050 4850
Wire Wire Line
	5175 5750 4800 5750
Wire Wire Line
	4800 5750 4800 5175
Wire Wire Line
	4800 5175 4700 5175
Wire Wire Line
	4700 5075 4875 5075
Wire Wire Line
	4875 5075 4875 5525
Wire Wire Line
	4875 5525 5175 5525
Wire Wire Line
	5175 5300 4975 5300
Wire Wire Line
	4975 5300 4975 4975
Wire Wire Line
	4975 4975 4700 4975
Wire Wire Line
	5050 4875 5050 5075
Wire Wire Line
	5050 5075 5175 5075
Wire Wire Line
	4700 4875 5050 4875
Wire Wire Line
	5050 4850 5050 4775
Wire Wire Line
	4700 4775 5050 4775
$Comp
L digikey-kicad-library:2N4401-ND Q1
U 1 1 5D93D13A
P 6200 3675
F 0 "Q1" H 6387 3728 60  0000 L CNN
F 1 "2N4401-ND" H 6387 3622 60  0000 L CNN
F 2 "digikey-footprints:TO-92-3" H 6466 4053 60  0001 L CNN
F 3 "" H 6400 3975 60  0001 L CNN
	1    6200 3675
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 3925 6300 3875
$Comp
L digikey-kicad-library:2N4401-ND Q2
U 1 1 5D943DFE
P 6150 6050
F 0 "Q2" H 6337 6103 60  0000 L CNN
F 1 "2N4401-ND" H 6337 5997 60  0000 L CNN
F 2 "digikey-footprints:TO-92-3" H 6416 6428 60  0001 L CNN
F 3 "" H 6350 6350 60  0001 L CNN
	1    6150 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 6300 6250 6250
$Comp
L Device:R_US R10
U 1 1 5D94AF2E
P 5675 3675
F 0 "R10" V 5470 3675 50  0000 C CNN
F 1 "1k" V 5561 3675 50  0000 C CNN
F 2 "" V 5715 3665 50  0001 C CNN
F 3 "~" H 5675 3675 50  0001 C CNN
	1    5675 3675
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R20
U 1 1 5D94B08B
P 5675 6050
F 0 "R20" V 5470 6050 50  0000 C CNN
F 1 "1k" V 5561 6050 50  0000 C CNN
F 2 "" V 5715 6040 50  0001 C CNN
F 3 "~" H 5675 6050 50  0001 C CNN
	1    5675 6050
	0    1    1    0   
$EndComp
Wire Wire Line
	5950 6050 5825 6050
Wire Wire Line
	5825 3675 6000 3675
Text Notes 5150 3900 0    50   ~ 0
Optional, can be directly \nconnect to ground
Wire Wire Line
	2675 2675 3325 2675
Wire Wire Line
	3400 2875 2675 2875
Wire Wire Line
	3525 2775 2675 2775
Wire Wire Line
	3800 3425 3800 3350
Wire Wire Line
	3800 3350 3900 3350
Connection ~ 3900 3350
Wire Wire Line
	3900 3350 3900 3575
Wire Wire Line
	5525 3675 3400 3675
Wire Wire Line
	3400 3675 3400 2975
Wire Wire Line
	3400 2975 2675 2975
Wire Wire Line
	2675 3075 3325 3075
Wire Wire Line
	3325 3075 3325 6050
Wire Wire Line
	3325 6050 5525 6050
Wire Notes Line
	2725 3300 2800 3300
Wire Notes Line
	2800 3375 2675 3375
Wire Notes Line
	2775 3525 2800 3525
Text Notes 5225 6350 0    50   ~ 0
Optional, can be directly \nconnect to ground
$EndSCHEMATC
