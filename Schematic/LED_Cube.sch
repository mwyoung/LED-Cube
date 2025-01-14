EESchema Schematic File Version 4
LIBS:LED_Cube-cache
EELAYER 26 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title ""
Date "2019-10-06"
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
P 1625 1975
F 0 "A1" H 1300 2925 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" V 1600 1875 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 1775 1025 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 1625 975 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B0713XK923/" H 0   0   50  0001 C CNN "Where to Buy"
	1    1625 1975
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5D9135B3
P 1525 3075
F 0 "#PWR08" H 1525 2825 50  0001 C CNN
F 1 "GND" H 1530 2902 50  0000 C CNN
F 2 "" H 1525 3075 50  0001 C CNN
F 3 "" H 1525 3075 50  0001 C CNN
	1    1525 3075
	1    0    0    -1  
$EndComp
Wire Wire Line
	1525 3075 1525 3025
Wire Wire Line
	1625 2975 1625 3025
Wire Wire Line
	1625 3025 1525 3025
Connection ~ 1525 3025
Wire Wire Line
	1525 3025 1525 2975
NoConn ~ 1525 975 
NoConn ~ 1725 975 
NoConn ~ 1125 1375
NoConn ~ 1125 1475
NoConn ~ 1125 1775
NoConn ~ 1125 2375
NoConn ~ 1125 2475
NoConn ~ 1125 2575
NoConn ~ 1125 2675
NoConn ~ 2125 1375
NoConn ~ 2125 1475
NoConn ~ 2125 1575
NoConn ~ 2125 1675
NoConn ~ 2125 2275
NoConn ~ 2125 2575
NoConn ~ 2125 2375
NoConn ~ 2125 2475
NoConn ~ 2125 2675
$Comp
L power:+5V #PWR01
U 1 1 5D91545F
P 1425 800
F 0 "#PWR01" H 1425 650 50  0001 C CNN
F 1 "+5V" H 1440 973 50  0000 C CNN
F 2 "" H 1425 800 50  0001 C CNN
F 3 "" H 1425 800 50  0001 C CNN
	1    1425 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1425 975  1425 800 
$Comp
L Device:LED D2
U 1 1 5D91E6B2
P 3625 3625
F 0 "D2" H 3675 3500 50  0000 C CNN
F 1 "LED" H 3525 3500 50  0000 C CNN
F 2 "" H 3625 3625 50  0001 C CNN
F 3 "~" H 3625 3625 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    3625 3625
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D1
U 1 1 5D91E6C1
P 3225 3625
F 0 "D1" H 3275 3500 50  0000 C CNN
F 1 "LED" H 3125 3500 50  0000 C CNN
F 2 "" H 3225 3625 50  0001 C CNN
F 3 "~" H 3225 3625 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    3225 3625
	0    -1   -1   0   
$EndComp
$Comp
L 74xx:74HC595 U2
U 1 1 5D94A2FE
P 8525 2125
F 0 "U2" H 8325 2675 50  0000 C CNN
F 1 "74HC595" H 8500 1775 50  0000 C CNN
F 2 "" H 8525 2125 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 8525 2125 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B07HFWB9L9/" H 0   0   50  0001 C CNN "Where to Buy"
	1    8525 2125
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5D94A306
P 9400 2150
F 0 "#PWR05" H 9400 1900 50  0001 C CNN
F 1 "GND" H 9405 1977 50  0000 C CNN
F 2 "" H 9400 2150 50  0001 C CNN
F 3 "" H 9400 2150 50  0001 C CNN
	1    9400 2150
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR03
U 1 1 5D94A30D
P 7600 1825
F 0 "#PWR03" H 7600 1675 50  0001 C CNN
F 1 "+5V" H 7615 1998 50  0000 C CNN
F 2 "" H 7600 1825 50  0001 C CNN
F 3 "" H 7600 1825 50  0001 C CNN
	1    7600 1825
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5D94A313
P 7725 2375
F 0 "#PWR07" H 7725 2125 50  0001 C CNN
F 1 "GND" H 7725 2225 50  0000 C CNN
F 2 "" H 7725 2375 50  0001 C CNN
F 3 "" H 7725 2375 50  0001 C CNN
	1    7725 2375
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5D94A319
P 7725 2250
F 0 "C2" V 7600 2200 50  0000 L CNN
F 1 "0.1uF" V 7825 2150 50  0000 L CNN
F 2 "" H 7725 2250 50  0001 C CNN
F 3 "~" H 7725 2250 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B071CQDWNY/" H 0   0   50  0001 C CNN "Where to Buy"
	1    7725 2250
	1    0    0    1   
$EndComp
Wire Wire Line
	9275 1725 9275 2125
Wire Wire Line
	8725 1725 9275 1725
Connection ~ 9275 2125
Wire Wire Line
	9275 2125 9225 2125
$Comp
L Device:R_US R2
U 1 1 5D94A327
P 7925 1625
F 0 "R2" H 7857 1579 50  0000 R CNN
F 1 "1k" H 7857 1670 50  0000 R CNN
F 2 "" V 7965 1615 50  0001 C CNN
F 3 "~" H 7925 1625 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B07HDDWFDD/" H 0   0   50  0001 C CNN "Where to Buy"
	1    7925 1625
	0    1    -1   0   
$EndComp
Wire Wire Line
	7925 2125 7775 2125
Wire Wire Line
	8075 1625 8425 1625
Wire Wire Line
	8425 1625 8425 1725
Wire Wire Line
	7775 1625 7775 1950
Wire Wire Line
	7725 2125 7775 2125
Connection ~ 7775 2125
Connection ~ 7775 1950
Wire Wire Line
	7775 1950 7775 2125
$Comp
L Device:R_US R18
U 1 1 5D962D8B
P 5325 3000
F 0 "R18" V 5225 2925 50  0000 C CNN
F 1 "1k" V 5225 3075 50  0000 C CNN
F 2 "" V 5365 2990 50  0001 C CNN
F 3 "~" H 5325 3000 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B07HDDWFDD/" H 0   0   50  0001 C CNN "Where to Buy"
	1    5325 3000
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R17
U 1 1 5D962D9A
P 5100 3000
F 0 "R17" V 5000 2925 50  0000 C CNN
F 1 "1k" V 5000 3075 50  0000 C CNN
F 2 "" V 5140 2990 50  0001 C CNN
F 3 "~" H 5100 3000 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B07HDDWFDD/" H 0   0   50  0001 C CNN "Where to Buy"
	1    5100 3000
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R16
U 1 1 5D962DA9
P 4875 3000
F 0 "R16" V 4775 2925 50  0000 C CNN
F 1 "1k" V 4775 3075 50  0000 C CNN
F 2 "" V 4915 2990 50  0001 C CNN
F 3 "~" H 4875 3000 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B07HDDWFDD/" H 0   0   50  0001 C CNN "Where to Buy"
	1    4875 3000
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R15
U 1 1 5D962DB8
P 4650 3000
F 0 "R15" V 4550 2925 50  0000 C CNN
F 1 "1k" V 4550 3075 50  0000 C CNN
F 2 "" V 4690 2990 50  0001 C CNN
F 3 "~" H 4650 3000 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B07HDDWFDD/" H 0   0   50  0001 C CNN "Where to Buy"
	1    4650 3000
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R14
U 1 1 5D962DC7
P 4425 3000
F 0 "R14" V 4325 2925 50  0000 C CNN
F 1 "1k" V 4325 3075 50  0000 C CNN
F 2 "" V 4465 2990 50  0001 C CNN
F 3 "~" H 4425 3000 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B07HDDWFDD/" H 0   0   50  0001 C CNN "Where to Buy"
	1    4425 3000
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R13
U 1 1 5D962DD6
P 4200 3000
F 0 "R13" V 4100 2925 50  0000 C CNN
F 1 "1k" V 4100 3075 50  0000 C CNN
F 2 "" V 4240 2990 50  0001 C CNN
F 3 "~" H 4200 3000 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B07HDDWFDD/" H 0   0   50  0001 C CNN "Where to Buy"
	1    4200 3000
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R12
U 1 1 5D962DE5
P 3975 3000
F 0 "R12" V 3875 2925 50  0000 C CNN
F 1 "1k" V 3875 3075 50  0000 C CNN
F 2 "" V 4015 2990 50  0001 C CNN
F 3 "~" H 3975 3000 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B07HDDWFDD/" H 0   0   50  0001 C CNN "Where to Buy"
	1    3975 3000
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R11
U 1 1 5D962DF4
P 3750 3000
F 0 "R11" V 3650 2925 50  0000 C CNN
F 1 "1k" V 3650 3075 50  0000 C CNN
F 2 "" V 3790 2990 50  0001 C CNN
F 3 "~" H 3750 3000 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B07HDDWFDD/" H 0   0   50  0001 C CNN "Where to Buy"
	1    3750 3000
	-1   0    0    1   
$EndComp
NoConn ~ 9025 2525
$Comp
L digikey-kicad-library:2N4401-ND Q1
U 1 1 5D93D13A
P 2275 4150
F 0 "Q1" H 2125 4325 60  0000 L CNN
F 1 "2N4401-ND" H 1750 3975 60  0000 L CNN
F 2 "digikey-footprints:TO-92-3" H 2541 4528 60  0001 L CNN
F 3 "" H 2475 4450 60  0001 L CNN
F 4 "https://www.amazon.com/gp/product/B008UFYHNI/" H 0   0   50  0001 C CNN "Where to Buy"
	1    2275 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R19
U 1 1 5D94AF2E
P 1850 4150
F 0 "R19" V 1750 4100 50  0000 C CNN
F 1 "1k" V 1750 4250 50  0000 C CNN
F 2 "" V 1890 4140 50  0001 C CNN
F 3 "~" H 1850 4150 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B07HDDWFDD/" H 0   0   50  0001 C CNN "Where to Buy"
	1    1850 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	2000 4150 2075 4150
NoConn ~ 2125 2075
NoConn ~ 2125 2175
$Comp
L Device:LED D4
U 1 1 5D9F490E
P 4425 3625
F 0 "D4" H 4475 3500 50  0000 C CNN
F 1 "LED" H 4325 3500 50  0000 C CNN
F 2 "" H 4425 3625 50  0001 C CNN
F 3 "~" H 4425 3625 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    4425 3625
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D3
U 1 1 5D9F4915
P 4025 3625
F 0 "D3" H 4075 3500 50  0000 C CNN
F 1 "LED" H 3925 3500 50  0000 C CNN
F 2 "" H 4025 3625 50  0001 C CNN
F 3 "~" H 4025 3625 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    4025 3625
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D6
U 1 1 5D9F65EE
P 5225 3625
F 0 "D6" H 5275 3500 50  0000 C CNN
F 1 "LED" H 5125 3500 50  0000 C CNN
F 2 "" H 5225 3625 50  0001 C CNN
F 3 "~" H 5225 3625 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    5225 3625
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D5
U 1 1 5D9F65F5
P 4825 3625
F 0 "D5" H 4875 3500 50  0000 C CNN
F 1 "LED" H 4725 3500 50  0000 C CNN
F 2 "" H 4825 3625 50  0001 C CNN
F 3 "~" H 4825 3625 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    4825 3625
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D8
U 1 1 5D9F65FC
P 6025 3625
F 0 "D8" H 6075 3500 50  0000 C CNN
F 1 "LED" H 5925 3500 50  0000 C CNN
F 2 "" H 6025 3625 50  0001 C CNN
F 3 "~" H 6025 3625 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    6025 3625
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D7
U 1 1 5D9F6603
P 5625 3625
F 0 "D7" H 5675 3500 50  0000 C CNN
F 1 "LED" H 5525 3500 50  0000 C CNN
F 2 "" H 5625 3625 50  0001 C CNN
F 3 "~" H 5625 3625 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    5625 3625
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D10
U 1 1 5DA02BF2
P 7100 3625
F 0 "D10" H 7150 3500 50  0000 C CNN
F 1 "LED" H 7000 3500 50  0000 C CNN
F 2 "" H 7100 3625 50  0001 C CNN
F 3 "~" H 7100 3625 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    7100 3625
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D9
U 1 1 5DA02BF9
P 6700 3625
F 0 "D9" H 6750 3500 50  0000 C CNN
F 1 "LED" H 6600 3500 50  0000 C CNN
F 2 "" H 6700 3625 50  0001 C CNN
F 3 "~" H 6700 3625 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    6700 3625
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D12
U 1 1 5DA02C00
P 7900 3625
F 0 "D12" H 7950 3500 50  0000 C CNN
F 1 "LED" H 7800 3500 50  0000 C CNN
F 2 "" H 7900 3625 50  0001 C CNN
F 3 "~" H 7900 3625 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    7900 3625
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D11
U 1 1 5DA02C07
P 7500 3625
F 0 "D11" H 7550 3500 50  0000 C CNN
F 1 "LED" H 7400 3500 50  0000 C CNN
F 2 "" H 7500 3625 50  0001 C CNN
F 3 "~" H 7500 3625 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    7500 3625
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D14
U 1 1 5DA02C0E
P 8700 3625
F 0 "D14" H 8750 3500 50  0000 C CNN
F 1 "LED" H 8600 3500 50  0000 C CNN
F 2 "" H 8700 3625 50  0001 C CNN
F 3 "~" H 8700 3625 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    8700 3625
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D13
U 1 1 5DA02C15
P 8300 3625
F 0 "D13" H 8350 3500 50  0000 C CNN
F 1 "LED" H 8200 3500 50  0000 C CNN
F 2 "" H 8300 3625 50  0001 C CNN
F 3 "~" H 8300 3625 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    8300 3625
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D16
U 1 1 5DA02C1C
P 9500 3625
F 0 "D16" H 9550 3500 50  0000 C CNN
F 1 "LED" H 9400 3500 50  0000 C CNN
F 2 "" H 9500 3625 50  0001 C CNN
F 3 "~" H 9500 3625 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    9500 3625
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D15
U 1 1 5DA02C23
P 9100 3625
F 0 "D15" H 9150 3500 50  0000 C CNN
F 1 "LED" H 9000 3500 50  0000 C CNN
F 2 "" H 9100 3625 50  0001 C CNN
F 3 "~" H 9100 3625 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    9100 3625
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R10
U 1 1 5DA0D920
P 9175 2975
F 0 "R10" V 9075 2900 50  0000 C CNN
F 1 "1k" V 9075 3050 50  0000 C CNN
F 2 "" V 9215 2965 50  0001 C CNN
F 3 "~" H 9175 2975 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B07HDDWFDD/" H 0   0   50  0001 C CNN "Where to Buy"
	1    9175 2975
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R9
U 1 1 5DA0D927
P 8950 2975
F 0 "R9" V 8850 2900 50  0000 C CNN
F 1 "1k" V 8850 3050 50  0000 C CNN
F 2 "" V 8990 2965 50  0001 C CNN
F 3 "~" H 8950 2975 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B07HDDWFDD/" H 0   0   50  0001 C CNN "Where to Buy"
	1    8950 2975
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R8
U 1 1 5DA0D92E
P 8725 2975
F 0 "R8" V 8625 2900 50  0000 C CNN
F 1 "1k" V 8625 3050 50  0000 C CNN
F 2 "" V 8765 2965 50  0001 C CNN
F 3 "~" H 8725 2975 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B07HDDWFDD/" H 0   0   50  0001 C CNN "Where to Buy"
	1    8725 2975
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R7
U 1 1 5DA0D935
P 8500 2975
F 0 "R7" V 8400 2900 50  0000 C CNN
F 1 "1k" V 8400 3050 50  0000 C CNN
F 2 "" V 8540 2965 50  0001 C CNN
F 3 "~" H 8500 2975 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B07HDDWFDD/" H 0   0   50  0001 C CNN "Where to Buy"
	1    8500 2975
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R6
U 1 1 5DA0D93C
P 8275 2975
F 0 "R6" V 8175 2900 50  0000 C CNN
F 1 "1k" V 8175 3050 50  0000 C CNN
F 2 "" V 8315 2965 50  0001 C CNN
F 3 "~" H 8275 2975 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B07HDDWFDD/" H 0   0   50  0001 C CNN "Where to Buy"
	1    8275 2975
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R5
U 1 1 5DA0D943
P 8050 2975
F 0 "R5" V 7950 2900 50  0000 C CNN
F 1 "1k" V 7950 3050 50  0000 C CNN
F 2 "" V 8090 2965 50  0001 C CNN
F 3 "~" H 8050 2975 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B07HDDWFDD/" H 0   0   50  0001 C CNN "Where to Buy"
	1    8050 2975
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R4
U 1 1 5DA0D94A
P 7825 2975
F 0 "R4" V 7725 2900 50  0000 C CNN
F 1 "1k" V 7725 3050 50  0000 C CNN
F 2 "" V 7865 2965 50  0001 C CNN
F 3 "~" H 7825 2975 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B07HDDWFDD/" H 0   0   50  0001 C CNN "Where to Buy"
	1    7825 2975
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R3
U 1 1 5DA0D951
P 7600 2975
F 0 "R3" V 7500 2900 50  0000 C CNN
F 1 "1k" V 7500 3050 50  0000 C CNN
F 2 "" V 7640 2965 50  0001 C CNN
F 3 "~" H 7600 2975 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B07HDDWFDD/" H 0   0   50  0001 C CNN "Where to Buy"
	1    7600 2975
	-1   0    0    1   
$EndComp
Wire Wire Line
	9400 2150 9400 2125
Wire Wire Line
	9400 2125 9275 2125
Wire Wire Line
	7600 1950 7600 1825
Wire Wire Line
	7600 1950 7775 1950
$Comp
L 74xx:74HC595 U1
U 1 1 5DA1BFBE
P 4650 2075
F 0 "U1" H 4450 2625 50  0000 C CNN
F 1 "74HC595" H 4625 1725 50  0000 C CNN
F 2 "" H 4650 2075 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 4650 2075 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B07HFWB9L9/" H 0   0   50  0001 C CNN "Where to Buy"
	1    4650 2075
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5DA1BFC5
P 5525 2100
F 0 "#PWR04" H 5525 1850 50  0001 C CNN
F 1 "GND" H 5530 1927 50  0000 C CNN
F 2 "" H 5525 2100 50  0001 C CNN
F 3 "" H 5525 2100 50  0001 C CNN
	1    5525 2100
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 5DA1BFCB
P 3725 1775
F 0 "#PWR02" H 3725 1625 50  0001 C CNN
F 1 "+5V" H 3740 1948 50  0000 C CNN
F 2 "" H 3725 1775 50  0001 C CNN
F 3 "" H 3725 1775 50  0001 C CNN
	1    3725 1775
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5DA1BFD1
P 3850 2325
F 0 "#PWR06" H 3850 2075 50  0001 C CNN
F 1 "GND" H 3850 2175 50  0000 C CNN
F 2 "" H 3850 2325 50  0001 C CNN
F 3 "" H 3850 2325 50  0001 C CNN
	1    3850 2325
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5DA1BFD7
P 3850 2200
F 0 "C1" V 3725 2150 50  0000 L CNN
F 1 "0.1uF" V 3950 2100 50  0000 L CNN
F 2 "" H 3850 2200 50  0001 C CNN
F 3 "~" H 3850 2200 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B071CQDWNY/" H 0   0   50  0001 C CNN "Where to Buy"
	1    3850 2200
	1    0    0    1   
$EndComp
Wire Wire Line
	5400 1675 5400 2075
Wire Wire Line
	4850 1675 5400 1675
Connection ~ 5400 2075
Wire Wire Line
	5400 2075 5350 2075
Wire Wire Line
	4250 1675 4250 1475
$Comp
L Device:R_US R1
U 1 1 5DA1BFE4
P 4050 1575
F 0 "R1" H 3982 1529 50  0000 R CNN
F 1 "1k" H 3982 1620 50  0000 R CNN
F 2 "" V 4090 1565 50  0001 C CNN
F 3 "~" H 4050 1575 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B07HDDWFDD/" H 0   0   50  0001 C CNN "Where to Buy"
	1    4050 1575
	0    1    -1   0   
$EndComp
Wire Wire Line
	4050 2075 3900 2075
Wire Wire Line
	4200 1575 4550 1575
Wire Wire Line
	4550 1575 4550 1675
Wire Wire Line
	3900 1575 3900 1900
Wire Wire Line
	3850 2300 3850 2325
Wire Wire Line
	3850 2075 3900 2075
Connection ~ 3900 2075
Connection ~ 3900 1900
Wire Wire Line
	3900 1900 3900 2075
Wire Wire Line
	5525 2100 5525 2075
Wire Wire Line
	5525 2075 5400 2075
Wire Wire Line
	3725 1900 3725 1775
Wire Wire Line
	3725 1900 3900 1900
$Comp
L Device:LED D18
U 1 1 5DA226F0
P 3825 4150
F 0 "D18" H 3875 4025 50  0000 C CNN
F 1 "LED" H 3725 4025 50  0000 C CNN
F 2 "" H 3825 4150 50  0001 C CNN
F 3 "~" H 3825 4150 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    3825 4150
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D17
U 1 1 5DA226F7
P 3425 4150
F 0 "D17" H 3475 4025 50  0000 C CNN
F 1 "LED" H 3325 4025 50  0000 C CNN
F 2 "" H 3425 4150 50  0001 C CNN
F 3 "~" H 3425 4150 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    3425 4150
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D20
U 1 1 5DA226FE
P 4625 4150
F 0 "D20" H 4675 4025 50  0000 C CNN
F 1 "LED" H 4525 4025 50  0000 C CNN
F 2 "" H 4625 4150 50  0001 C CNN
F 3 "~" H 4625 4150 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    4625 4150
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D19
U 1 1 5DA22705
P 4225 4150
F 0 "D19" H 4275 4025 50  0000 C CNN
F 1 "LED" H 4125 4025 50  0000 C CNN
F 2 "" H 4225 4150 50  0001 C CNN
F 3 "~" H 4225 4150 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    4225 4150
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D22
U 1 1 5DA2270C
P 5425 4150
F 0 "D22" H 5475 4025 50  0000 C CNN
F 1 "LED" H 5325 4025 50  0000 C CNN
F 2 "" H 5425 4150 50  0001 C CNN
F 3 "~" H 5425 4150 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    5425 4150
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D21
U 1 1 5DA22713
P 5025 4150
F 0 "D21" H 5075 4025 50  0000 C CNN
F 1 "LED" H 4925 4025 50  0000 C CNN
F 2 "" H 5025 4150 50  0001 C CNN
F 3 "~" H 5025 4150 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    5025 4150
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D24
U 1 1 5DA2271A
P 6225 4150
F 0 "D24" H 6275 4025 50  0000 C CNN
F 1 "LED" H 6125 4025 50  0000 C CNN
F 2 "" H 6225 4150 50  0001 C CNN
F 3 "~" H 6225 4150 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    6225 4150
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D23
U 1 1 5DA22721
P 5825 4150
F 0 "D23" H 5875 4025 50  0000 C CNN
F 1 "LED" H 5725 4025 50  0000 C CNN
F 2 "" H 5825 4150 50  0001 C CNN
F 3 "~" H 5825 4150 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    5825 4150
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D26
U 1 1 5DA22728
P 7300 4175
F 0 "D26" H 7350 4050 50  0000 C CNN
F 1 "LED" H 7200 4050 50  0000 C CNN
F 2 "" H 7300 4175 50  0001 C CNN
F 3 "~" H 7300 4175 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    7300 4175
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D25
U 1 1 5DA2272F
P 6900 4175
F 0 "D25" H 6950 4050 50  0000 C CNN
F 1 "LED" H 6800 4050 50  0000 C CNN
F 2 "" H 6900 4175 50  0001 C CNN
F 3 "~" H 6900 4175 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    6900 4175
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D28
U 1 1 5DA22736
P 8100 4175
F 0 "D28" H 8150 4050 50  0000 C CNN
F 1 "LED" H 8000 4050 50  0000 C CNN
F 2 "" H 8100 4175 50  0001 C CNN
F 3 "~" H 8100 4175 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    8100 4175
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D27
U 1 1 5DA2273D
P 7700 4175
F 0 "D27" H 7750 4050 50  0000 C CNN
F 1 "LED" H 7600 4050 50  0000 C CNN
F 2 "" H 7700 4175 50  0001 C CNN
F 3 "~" H 7700 4175 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    7700 4175
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D30
U 1 1 5DA22744
P 8900 4175
F 0 "D30" H 8950 4050 50  0000 C CNN
F 1 "LED" H 8800 4050 50  0000 C CNN
F 2 "" H 8900 4175 50  0001 C CNN
F 3 "~" H 8900 4175 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    8900 4175
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D29
U 1 1 5DA2274B
P 8500 4175
F 0 "D29" H 8550 4050 50  0000 C CNN
F 1 "LED" H 8400 4050 50  0000 C CNN
F 2 "" H 8500 4175 50  0001 C CNN
F 3 "~" H 8500 4175 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    8500 4175
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D32
U 1 1 5DA22752
P 9700 4175
F 0 "D32" H 9750 4050 50  0000 C CNN
F 1 "LED" H 9600 4050 50  0000 C CNN
F 2 "" H 9700 4175 50  0001 C CNN
F 3 "~" H 9700 4175 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    9700 4175
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D31
U 1 1 5DA22759
P 9300 4175
F 0 "D31" H 9350 4050 50  0000 C CNN
F 1 "LED" H 9200 4050 50  0000 C CNN
F 2 "" H 9300 4175 50  0001 C CNN
F 3 "~" H 9300 4175 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    9300 4175
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D34
U 1 1 5DA277C6
P 4000 4700
F 0 "D34" H 4050 4575 50  0000 C CNN
F 1 "LED" H 3900 4575 50  0000 C CNN
F 2 "" H 4000 4700 50  0001 C CNN
F 3 "~" H 4000 4700 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    4000 4700
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D33
U 1 1 5DA277CD
P 3600 4700
F 0 "D33" H 3650 4575 50  0000 C CNN
F 1 "LED" H 3500 4575 50  0000 C CNN
F 2 "" H 3600 4700 50  0001 C CNN
F 3 "~" H 3600 4700 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    3600 4700
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D36
U 1 1 5DA277D4
P 4800 4700
F 0 "D36" H 4850 4575 50  0000 C CNN
F 1 "LED" H 4700 4575 50  0000 C CNN
F 2 "" H 4800 4700 50  0001 C CNN
F 3 "~" H 4800 4700 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    4800 4700
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D35
U 1 1 5DA277DB
P 4400 4700
F 0 "D35" H 4450 4575 50  0000 C CNN
F 1 "LED" H 4300 4575 50  0000 C CNN
F 2 "" H 4400 4700 50  0001 C CNN
F 3 "~" H 4400 4700 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    4400 4700
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D38
U 1 1 5DA277E2
P 5600 4700
F 0 "D38" H 5650 4575 50  0000 C CNN
F 1 "LED" H 5500 4575 50  0000 C CNN
F 2 "" H 5600 4700 50  0001 C CNN
F 3 "~" H 5600 4700 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    5600 4700
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D37
U 1 1 5DA277E9
P 5200 4700
F 0 "D37" H 5250 4575 50  0000 C CNN
F 1 "LED" H 5100 4575 50  0000 C CNN
F 2 "" H 5200 4700 50  0001 C CNN
F 3 "~" H 5200 4700 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    5200 4700
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D40
U 1 1 5DA277F0
P 6400 4700
F 0 "D40" H 6450 4575 50  0000 C CNN
F 1 "LED" H 6300 4575 50  0000 C CNN
F 2 "" H 6400 4700 50  0001 C CNN
F 3 "~" H 6400 4700 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    6400 4700
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D39
U 1 1 5DA277F7
P 6000 4700
F 0 "D39" H 6050 4575 50  0000 C CNN
F 1 "LED" H 5900 4575 50  0000 C CNN
F 2 "" H 6000 4700 50  0001 C CNN
F 3 "~" H 6000 4700 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    6000 4700
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D42
U 1 1 5DA277FE
P 7475 4700
F 0 "D42" H 7525 4575 50  0000 C CNN
F 1 "LED" H 7375 4575 50  0000 C CNN
F 2 "" H 7475 4700 50  0001 C CNN
F 3 "~" H 7475 4700 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    7475 4700
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D41
U 1 1 5DA27805
P 7075 4700
F 0 "D41" H 7125 4575 50  0000 C CNN
F 1 "LED" H 6975 4575 50  0000 C CNN
F 2 "" H 7075 4700 50  0001 C CNN
F 3 "~" H 7075 4700 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    7075 4700
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D44
U 1 1 5DA2780C
P 8275 4700
F 0 "D44" H 8325 4575 50  0000 C CNN
F 1 "LED" H 8175 4575 50  0000 C CNN
F 2 "" H 8275 4700 50  0001 C CNN
F 3 "~" H 8275 4700 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    8275 4700
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D43
U 1 1 5DA27813
P 7875 4700
F 0 "D43" H 7925 4575 50  0000 C CNN
F 1 "LED" H 7775 4575 50  0000 C CNN
F 2 "" H 7875 4700 50  0001 C CNN
F 3 "~" H 7875 4700 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    7875 4700
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D46
U 1 1 5DA2781A
P 9075 4700
F 0 "D46" H 9125 4575 50  0000 C CNN
F 1 "LED" H 8975 4575 50  0000 C CNN
F 2 "" H 9075 4700 50  0001 C CNN
F 3 "~" H 9075 4700 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    9075 4700
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D45
U 1 1 5DA27821
P 8675 4700
F 0 "D45" H 8725 4575 50  0000 C CNN
F 1 "LED" H 8575 4575 50  0000 C CNN
F 2 "" H 8675 4700 50  0001 C CNN
F 3 "~" H 8675 4700 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    8675 4700
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D48
U 1 1 5DA27828
P 9875 4700
F 0 "D48" H 9925 4575 50  0000 C CNN
F 1 "LED" H 9775 4575 50  0000 C CNN
F 2 "" H 9875 4700 50  0001 C CNN
F 3 "~" H 9875 4700 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    9875 4700
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D47
U 1 1 5DA2782F
P 9475 4700
F 0 "D47" H 9525 4575 50  0000 C CNN
F 1 "LED" H 9375 4575 50  0000 C CNN
F 2 "" H 9475 4700 50  0001 C CNN
F 3 "~" H 9475 4700 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    9475 4700
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D50
U 1 1 5DA27836
P 4200 5250
F 0 "D50" H 4250 5125 50  0000 C CNN
F 1 "LED" H 4100 5125 50  0000 C CNN
F 2 "" H 4200 5250 50  0001 C CNN
F 3 "~" H 4200 5250 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    4200 5250
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D49
U 1 1 5DA2783D
P 3800 5250
F 0 "D49" H 3850 5125 50  0000 C CNN
F 1 "LED" H 3700 5125 50  0000 C CNN
F 2 "" H 3800 5250 50  0001 C CNN
F 3 "~" H 3800 5250 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    3800 5250
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D52
U 1 1 5DA27844
P 5000 5250
F 0 "D52" H 5050 5125 50  0000 C CNN
F 1 "LED" H 4900 5125 50  0000 C CNN
F 2 "" H 5000 5250 50  0001 C CNN
F 3 "~" H 5000 5250 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    5000 5250
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D51
U 1 1 5DA2784B
P 4600 5250
F 0 "D51" H 4650 5125 50  0000 C CNN
F 1 "LED" H 4500 5125 50  0000 C CNN
F 2 "" H 4600 5250 50  0001 C CNN
F 3 "~" H 4600 5250 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    4600 5250
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D54
U 1 1 5DA27852
P 5800 5250
F 0 "D54" H 5850 5125 50  0000 C CNN
F 1 "LED" H 5700 5125 50  0000 C CNN
F 2 "" H 5800 5250 50  0001 C CNN
F 3 "~" H 5800 5250 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    5800 5250
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D53
U 1 1 5DA27859
P 5400 5250
F 0 "D53" H 5450 5125 50  0000 C CNN
F 1 "LED" H 5300 5125 50  0000 C CNN
F 2 "" H 5400 5250 50  0001 C CNN
F 3 "~" H 5400 5250 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    5400 5250
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D56
U 1 1 5DA27860
P 6600 5250
F 0 "D56" H 6650 5125 50  0000 C CNN
F 1 "LED" H 6500 5125 50  0000 C CNN
F 2 "" H 6600 5250 50  0001 C CNN
F 3 "~" H 6600 5250 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    6600 5250
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D55
U 1 1 5DA27867
P 6200 5250
F 0 "D55" H 6250 5125 50  0000 C CNN
F 1 "LED" H 6100 5125 50  0000 C CNN
F 2 "" H 6200 5250 50  0001 C CNN
F 3 "~" H 6200 5250 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    6200 5250
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D58
U 1 1 5DA2786E
P 7675 5250
F 0 "D58" H 7725 5125 50  0000 C CNN
F 1 "LED" H 7575 5125 50  0000 C CNN
F 2 "" H 7675 5250 50  0001 C CNN
F 3 "~" H 7675 5250 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    7675 5250
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D57
U 1 1 5DA27875
P 7275 5250
F 0 "D57" H 7325 5125 50  0000 C CNN
F 1 "LED" H 7175 5125 50  0000 C CNN
F 2 "" H 7275 5250 50  0001 C CNN
F 3 "~" H 7275 5250 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    7275 5250
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D60
U 1 1 5DA2787C
P 8475 5250
F 0 "D60" H 8525 5125 50  0000 C CNN
F 1 "LED" H 8375 5125 50  0000 C CNN
F 2 "" H 8475 5250 50  0001 C CNN
F 3 "~" H 8475 5250 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    8475 5250
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D59
U 1 1 5DA27883
P 8075 5250
F 0 "D59" H 8125 5125 50  0000 C CNN
F 1 "LED" H 7975 5125 50  0000 C CNN
F 2 "" H 8075 5250 50  0001 C CNN
F 3 "~" H 8075 5250 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    8075 5250
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D62
U 1 1 5DA2788A
P 9275 5250
F 0 "D62" H 9325 5125 50  0000 C CNN
F 1 "LED" H 9175 5125 50  0000 C CNN
F 2 "" H 9275 5250 50  0001 C CNN
F 3 "~" H 9275 5250 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    9275 5250
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D61
U 1 1 5DA27891
P 8875 5250
F 0 "D61" H 8925 5125 50  0000 C CNN
F 1 "LED" H 8775 5125 50  0000 C CNN
F 2 "" H 8875 5250 50  0001 C CNN
F 3 "~" H 8875 5250 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    8875 5250
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D64
U 1 1 5DA27898
P 10075 5250
F 0 "D64" H 10125 5125 50  0000 C CNN
F 1 "LED" H 9975 5125 50  0000 C CNN
F 2 "" H 10075 5250 50  0001 C CNN
F 3 "~" H 10075 5250 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    10075 5250
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D63
U 1 1 5DA2789F
P 9675 5250
F 0 "D63" H 9725 5125 50  0000 C CNN
F 1 "LED" H 9575 5125 50  0000 C CNN
F 2 "" H 9675 5250 50  0001 C CNN
F 3 "~" H 9675 5250 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B00XT0P1VQ/" H 0   0   50  0001 C CNN "Where to Buy"
	1    9675 5250
	0    -1   -1   0   
$EndComp
Text Notes 2850 3825 0    50   ~ 0
Row 0
Text Notes 2900 4375 0    50   ~ 0
Row 1
Text Notes 2900 4950 0    50   ~ 0
Row 2
Text Notes 2900 5475 0    50   ~ 0
Row 3
Wire Wire Line
	4950 2475 4950 2600
Wire Wire Line
	4950 2600 5325 2600
Wire Wire Line
	5325 2600 5325 2850
Wire Wire Line
	5100 2850 5100 2650
Wire Wire Line
	5100 2650 4850 2650
Wire Wire Line
	4850 2650 4850 2475
Wire Wire Line
	4875 2850 4875 2700
Wire Wire Line
	4875 2700 4750 2700
Wire Wire Line
	4750 2700 4750 2475
Wire Wire Line
	4650 2475 4650 2850
Wire Wire Line
	4425 2850 4425 2700
Wire Wire Line
	4425 2700 4550 2700
Wire Wire Line
	4550 2700 4550 2475
Wire Wire Line
	4450 2475 4450 2650
Wire Wire Line
	4450 2650 4200 2650
Wire Wire Line
	4200 2650 4200 2850
Wire Wire Line
	4350 2475 4350 2600
Wire Wire Line
	4350 2600 3975 2600
Wire Wire Line
	3975 2600 3975 2850
Wire Wire Line
	4250 2475 4250 2550
Wire Wire Line
	4250 2550 3750 2550
Wire Wire Line
	3750 2550 3750 2850
Wire Wire Line
	3850 2100 3850 2075
Wire Wire Line
	3225 3475 3225 3450
Wire Wire Line
	3225 3225 3750 3225
Wire Wire Line
	3750 3225 3750 3150
Wire Wire Line
	3625 3475 3625 3450
Wire Wire Line
	3625 3275 3975 3275
Wire Wire Line
	3975 3275 3975 3150
Wire Wire Line
	4200 3150 4200 3325
Wire Wire Line
	4200 3325 4025 3325
Wire Wire Line
	4025 3325 4025 3450
Wire Wire Line
	4425 3150 4425 3450
Wire Wire Line
	5325 3150 5325 3225
Wire Wire Line
	5325 3225 6025 3225
Wire Wire Line
	6025 3225 6025 3450
Wire Wire Line
	5625 3275 5100 3275
Wire Wire Line
	5100 3275 5100 3150
Wire Wire Line
	5225 3475 5225 3450
Wire Wire Line
	5225 3350 4875 3350
Wire Wire Line
	4875 3350 4875 3150
Wire Wire Line
	4825 3475 4825 3450
Wire Wire Line
	4825 3400 4650 3400
Wire Wire Line
	4650 3400 4650 3150
Wire Wire Line
	5625 3275 5625 3450
Wire Wire Line
	3225 3775 3225 3875
Wire Wire Line
	4025 3875 4025 3775
Wire Wire Line
	3625 3775 3625 3875
Wire Wire Line
	3225 3875 3625 3875
Connection ~ 3625 3875
Wire Wire Line
	3625 3875 4025 3875
Wire Wire Line
	4025 3875 4425 3875
Wire Wire Line
	4425 3875 4425 3775
Connection ~ 4025 3875
Wire Wire Line
	9500 3875 9500 3775
Connection ~ 4425 3875
Wire Wire Line
	9100 3775 9100 3875
Connection ~ 9100 3875
Wire Wire Line
	9100 3875 9500 3875
Wire Wire Line
	8700 3775 8700 3875
Connection ~ 8700 3875
Wire Wire Line
	8700 3875 9100 3875
Wire Wire Line
	8300 3775 8300 3875
Connection ~ 8300 3875
Wire Wire Line
	8300 3875 8700 3875
Wire Wire Line
	7900 3775 7900 3875
Wire Wire Line
	4425 3875 4825 3875
Connection ~ 7900 3875
Wire Wire Line
	7900 3875 8300 3875
Connection ~ 7500 3875
Wire Wire Line
	7500 3875 7900 3875
Wire Wire Line
	7500 3775 7500 3875
Wire Wire Line
	7100 3775 7100 3875
Connection ~ 7100 3875
Wire Wire Line
	7100 3875 7500 3875
Wire Wire Line
	6700 3775 6700 3875
Connection ~ 6700 3875
Wire Wire Line
	6700 3875 7100 3875
Wire Wire Line
	6025 3775 6025 3875
Connection ~ 6025 3875
Wire Wire Line
	6025 3875 6700 3875
Wire Wire Line
	5625 3775 5625 3875
Connection ~ 5625 3875
Wire Wire Line
	5625 3875 6025 3875
Wire Wire Line
	5225 3775 5225 3875
Connection ~ 5225 3875
Wire Wire Line
	5225 3875 5625 3875
Wire Wire Line
	4825 3775 4825 3875
Connection ~ 4825 3875
Wire Wire Line
	4825 3875 5225 3875
$Comp
L digikey-kicad-library:2N4401-ND Q2
U 1 1 5DAD3564
P 2350 4725
F 0 "Q2" H 2200 4900 60  0000 L CNN
F 1 "2N4401-ND" H 1825 4550 60  0000 L CNN
F 2 "digikey-footprints:TO-92-3" H 2616 5103 60  0001 L CNN
F 3 "" H 2550 5025 60  0001 L CNN
F 4 "https://www.amazon.com/gp/product/B008UFYHNI/" H 0   0   50  0001 C CNN "Where to Buy"
	1    2350 4725
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R20
U 1 1 5DAD356B
P 1925 4725
F 0 "R20" V 1825 4675 50  0000 C CNN
F 1 "1k" V 1825 4825 50  0000 C CNN
F 2 "" V 1965 4715 50  0001 C CNN
F 3 "~" H 1925 4725 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B07HDDWFDD/" H 0   0   50  0001 C CNN "Where to Buy"
	1    1925 4725
	0    1    1    0   
$EndComp
Wire Wire Line
	2075 4725 2150 4725
$Comp
L digikey-kicad-library:2N4401-ND Q3
U 1 1 5DADDB2F
P 2450 5250
F 0 "Q3" H 2300 5425 60  0000 L CNN
F 1 "2N4401-ND" H 1925 5075 60  0000 L CNN
F 2 "digikey-footprints:TO-92-3" H 2716 5628 60  0001 L CNN
F 3 "" H 2650 5550 60  0001 L CNN
F 4 "https://www.amazon.com/gp/product/B008UFYHNI/" H 0   0   50  0001 C CNN "Where to Buy"
	1    2450 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R21
U 1 1 5DADDB36
P 2025 5250
F 0 "R21" V 1925 5200 50  0000 C CNN
F 1 "1k" V 1925 5350 50  0000 C CNN
F 2 "" V 2065 5240 50  0001 C CNN
F 3 "~" H 2025 5250 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B07HDDWFDD/" H 0   0   50  0001 C CNN "Where to Buy"
	1    2025 5250
	0    1    1    0   
$EndComp
Wire Wire Line
	2175 5250 2250 5250
$Comp
L digikey-kicad-library:2N4401-ND Q4
U 1 1 5DAE2A1A
P 2550 5750
F 0 "Q4" H 2400 5925 60  0000 L CNN
F 1 "2N4401-ND" H 2025 5575 60  0000 L CNN
F 2 "digikey-footprints:TO-92-3" H 2816 6128 60  0001 L CNN
F 3 "" H 2750 6050 60  0001 L CNN
F 4 "https://www.amazon.com/gp/product/B008UFYHNI/" H 0   0   50  0001 C CNN "Where to Buy"
	1    2550 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R22
U 1 1 5DAE2A21
P 2125 5750
F 0 "R22" V 2025 5700 50  0000 C CNN
F 1 "1k" V 2025 5850 50  0000 C CNN
F 2 "" V 2165 5740 50  0001 C CNN
F 3 "~" H 2125 5750 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B07HDDWFDD/" H 0   0   50  0001 C CNN "Where to Buy"
	1    2125 5750
	0    1    1    0   
$EndComp
Wire Wire Line
	2275 5750 2350 5750
$Comp
L power:GND #PWR09
U 1 1 5DAE7D9B
P 2800 6100
F 0 "#PWR09" H 2800 5850 50  0001 C CNN
F 1 "GND" H 2805 5927 50  0000 C CNN
F 2 "" H 2800 6100 50  0001 C CNN
F 3 "" H 2800 6100 50  0001 C CNN
	1    2800 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 6100 2800 5950
Wire Wire Line
	2800 5950 2650 5950
Wire Wire Line
	2800 5950 2800 5450
Wire Wire Line
	2800 5450 2550 5450
Connection ~ 2800 5950
Wire Wire Line
	2375 4350 2800 4350
Connection ~ 2800 5450
Wire Wire Line
	2450 4925 2800 4925
Connection ~ 2800 4925
Wire Wire Line
	3225 3875 2375 3875
Wire Wire Line
	2375 3875 2375 3950
Connection ~ 3225 3875
Wire Wire Line
	5150 2475 5150 2550
Wire Wire Line
	5150 2550 6925 2550
Wire Wire Line
	8825 2525 8825 2600
Wire Wire Line
	8825 2600 9175 2600
Wire Wire Line
	9175 2600 9175 2825
Wire Wire Line
	8950 2825 8950 2650
Wire Wire Line
	8950 2650 8725 2650
Wire Wire Line
	8725 2650 8725 2525
Wire Wire Line
	8725 2825 8725 2700
Wire Wire Line
	8725 2700 8625 2700
Wire Wire Line
	8625 2700 8625 2525
Wire Wire Line
	8525 2525 8525 2700
Wire Wire Line
	8525 2700 8500 2700
Wire Wire Line
	8500 2700 8500 2825
Wire Wire Line
	8275 2825 8275 2750
Wire Wire Line
	8275 2750 8425 2750
Wire Wire Line
	8425 2750 8425 2525
Wire Wire Line
	8325 2525 8325 2700
Wire Wire Line
	8325 2700 8050 2700
Wire Wire Line
	8050 2700 8050 2825
Wire Wire Line
	7825 2825 7825 2650
Wire Wire Line
	7825 2650 8225 2650
Wire Wire Line
	8225 2650 8225 2525
Wire Wire Line
	8125 2525 8125 2600
Wire Wire Line
	8125 2600 7600 2600
Wire Wire Line
	7600 2600 7600 2825
Wire Wire Line
	7725 2150 7725 2125
Wire Wire Line
	9500 3475 9500 3450
Wire Wire Line
	9500 3175 9175 3175
Wire Wire Line
	9175 3175 9175 3125
Wire Wire Line
	9100 3225 8950 3225
Wire Wire Line
	8950 3225 8950 3125
Wire Wire Line
	8725 3125 8725 3400
Wire Wire Line
	8725 3400 8700 3400
Wire Wire Line
	8700 3400 8700 3450
Wire Wire Line
	8300 3475 8300 3450
Wire Wire Line
	8300 3400 8500 3400
Wire Wire Line
	8500 3400 8500 3125
Wire Wire Line
	9100 3225 9100 3450
Wire Wire Line
	8275 3125 8275 3350
Wire Wire Line
	8275 3350 7900 3350
Wire Wire Line
	7900 3350 7900 3450
Wire Wire Line
	8050 3300 8050 3125
Wire Wire Line
	7500 3475 7500 3450
Wire Wire Line
	7500 3300 8050 3300
Wire Wire Line
	7100 3475 7100 3450
Wire Wire Line
	7100 3250 7825 3250
Wire Wire Line
	7825 3250 7825 3125
Wire Wire Line
	7600 3125 7600 3200
Wire Wire Line
	7600 3200 6700 3200
Wire Wire Line
	6700 3200 6700 3450
Wire Wire Line
	9700 4400 9700 4325
Wire Wire Line
	9300 4325 9300 4400
Connection ~ 9300 4400
Wire Wire Line
	9300 4400 9700 4400
Wire Wire Line
	8900 4325 8900 4400
Connection ~ 8900 4400
Wire Wire Line
	8900 4400 9300 4400
Wire Wire Line
	8500 4325 8500 4400
Connection ~ 8500 4400
Wire Wire Line
	8500 4400 8900 4400
Wire Wire Line
	8100 4325 8100 4400
Connection ~ 8100 4400
Wire Wire Line
	8100 4400 8500 4400
Wire Wire Line
	7700 4325 7700 4400
Connection ~ 7700 4400
Wire Wire Line
	7700 4400 8100 4400
Wire Wire Line
	7300 4325 7300 4400
Connection ~ 7300 4400
Wire Wire Line
	7300 4400 7700 4400
Wire Wire Line
	6900 4325 6900 4400
Connection ~ 6900 4400
Wire Wire Line
	6900 4400 7300 4400
Wire Wire Line
	6225 4300 6225 4400
Connection ~ 6225 4400
Wire Wire Line
	6225 4400 6900 4400
Wire Wire Line
	5825 4300 5825 4400
Connection ~ 5825 4400
Wire Wire Line
	5825 4400 6225 4400
Wire Wire Line
	5425 4300 5425 4400
Connection ~ 5425 4400
Wire Wire Line
	5425 4400 5825 4400
Wire Wire Line
	5025 4300 5025 4400
Connection ~ 5025 4400
Wire Wire Line
	5025 4400 5425 4400
Wire Wire Line
	4625 4300 4625 4400
Connection ~ 4625 4400
Wire Wire Line
	4625 4400 5025 4400
Wire Wire Line
	4225 4300 4225 4400
Connection ~ 4225 4400
Wire Wire Line
	4225 4400 4625 4400
Wire Wire Line
	3425 4300 3425 4400
Connection ~ 3425 4400
Wire Wire Line
	3425 4400 3825 4400
Wire Wire Line
	3825 4300 3825 4400
Connection ~ 3825 4400
Wire Wire Line
	3825 4400 4225 4400
Wire Wire Line
	9875 4950 9875 4850
Wire Wire Line
	10075 5400 10075 5500
Wire Wire Line
	2650 5500 2650 5550
Wire Wire Line
	2450 4525 2450 4450
Wire Wire Line
	2800 4350 2800 4925
Wire Wire Line
	2550 5000 3050 5000
Wire Wire Line
	3050 5000 3050 4950
Wire Wire Line
	2550 5000 2550 5050
Wire Wire Line
	3050 4950 3600 4950
Wire Wire Line
	2450 4450 3050 4450
Wire Wire Line
	3050 4450 3050 4400
Wire Wire Line
	2800 4925 2800 5450
Wire Wire Line
	3050 4400 3425 4400
Wire Wire Line
	3600 4850 3600 4950
Connection ~ 3600 4950
Wire Wire Line
	3600 4950 4000 4950
Wire Wire Line
	4000 4850 4000 4950
Connection ~ 4000 4950
Wire Wire Line
	4000 4950 4400 4950
Connection ~ 4400 4950
Wire Wire Line
	4400 4950 4800 4950
Wire Wire Line
	4400 4850 4400 4950
Wire Wire Line
	4800 4850 4800 4950
Connection ~ 4800 4950
Wire Wire Line
	4800 4950 5200 4950
Wire Wire Line
	5200 4850 5200 4950
Connection ~ 5200 4950
Wire Wire Line
	5200 4950 5600 4950
Wire Wire Line
	5600 4850 5600 4950
Connection ~ 5600 4950
Wire Wire Line
	5600 4950 6000 4950
Wire Wire Line
	6000 4850 6000 4950
Connection ~ 6000 4950
Wire Wire Line
	6000 4950 6400 4950
Wire Wire Line
	6400 4850 6400 4950
Connection ~ 6400 4950
Wire Wire Line
	6400 4950 7075 4950
Wire Wire Line
	6200 5400 6200 5500
Connection ~ 6200 5500
Wire Wire Line
	6200 5500 5800 5500
Connection ~ 5800 5500
Wire Wire Line
	5800 5500 5400 5500
Wire Wire Line
	5800 5400 5800 5500
Wire Wire Line
	5400 5400 5400 5500
Connection ~ 5400 5500
Wire Wire Line
	5400 5500 5000 5500
Wire Wire Line
	5000 5400 5000 5500
Connection ~ 5000 5500
Wire Wire Line
	5000 5500 4600 5500
Wire Wire Line
	4600 5400 4600 5500
Connection ~ 4600 5500
Wire Wire Line
	4600 5500 4200 5500
Wire Wire Line
	4200 5400 4200 5500
Connection ~ 4200 5500
Wire Wire Line
	4200 5500 3800 5500
Wire Wire Line
	3800 5400 3800 5500
Connection ~ 3800 5500
Wire Wire Line
	3800 5500 2650 5500
Wire Wire Line
	6600 5400 6600 5500
Connection ~ 6600 5500
Wire Wire Line
	6600 5500 6200 5500
Wire Wire Line
	9475 4850 9475 4950
Connection ~ 9475 4950
Wire Wire Line
	9475 4950 9875 4950
Wire Wire Line
	9075 4850 9075 4950
Connection ~ 9075 4950
Wire Wire Line
	9075 4950 9475 4950
Wire Wire Line
	8675 4850 8675 4950
Connection ~ 8675 4950
Wire Wire Line
	8675 4950 9075 4950
Wire Wire Line
	8275 4850 8275 4950
Connection ~ 8275 4950
Wire Wire Line
	8275 4950 8675 4950
Wire Wire Line
	7875 4850 7875 4950
Connection ~ 7875 4950
Wire Wire Line
	7875 4950 8275 4950
Wire Wire Line
	7475 4850 7475 4950
Connection ~ 7475 4950
Wire Wire Line
	7475 4950 7875 4950
Wire Wire Line
	7075 4850 7075 4950
Connection ~ 7075 4950
Wire Wire Line
	7075 4950 7475 4950
Wire Wire Line
	7275 5400 7275 5500
Connection ~ 7275 5500
Wire Wire Line
	7275 5500 6600 5500
Wire Wire Line
	7675 5400 7675 5500
Connection ~ 7675 5500
Wire Wire Line
	7675 5500 7275 5500
Wire Wire Line
	8075 5400 8075 5500
Connection ~ 8075 5500
Wire Wire Line
	8075 5500 7675 5500
Wire Wire Line
	8475 5400 8475 5500
Connection ~ 8475 5500
Wire Wire Line
	8475 5500 8075 5500
Wire Wire Line
	8875 5400 8875 5500
Connection ~ 8875 5500
Wire Wire Line
	8875 5500 8475 5500
Wire Wire Line
	9275 5400 9275 5500
Wire Wire Line
	8875 5500 9275 5500
Connection ~ 9275 5500
Wire Wire Line
	9275 5500 9675 5500
Wire Wire Line
	3425 4000 3425 3975
Wire Wire Line
	3425 3450 3225 3450
Connection ~ 3225 3450
Wire Wire Line
	3225 3450 3225 3225
Wire Wire Line
	3425 3975 3600 3975
Wire Wire Line
	3600 3975 3600 4500
Connection ~ 3425 3975
Wire Wire Line
	3425 3975 3425 3450
Wire Wire Line
	3600 4500 3800 4500
Wire Wire Line
	3800 4500 3800 5100
Connection ~ 3600 4500
Wire Wire Line
	3600 4500 3600 4550
Wire Wire Line
	3825 3450 3625 3450
Connection ~ 3625 3450
Wire Wire Line
	3625 3450 3625 3275
Wire Wire Line
	3825 3450 3825 3975
Wire Wire Line
	3825 3975 4000 3975
Wire Wire Line
	4000 3975 4000 4500
Connection ~ 3825 3975
Wire Wire Line
	3825 3975 3825 4000
Wire Wire Line
	4025 3450 4225 3450
Wire Wire Line
	4225 3450 4225 3975
Connection ~ 4025 3450
Wire Wire Line
	4025 3450 4025 3475
Wire Wire Line
	4425 3450 4625 3450
Wire Wire Line
	4625 3450 4625 3975
Connection ~ 4425 3450
Wire Wire Line
	4425 3450 4425 3475
Wire Wire Line
	4825 3450 5025 3450
Wire Wire Line
	5025 3450 5025 3975
Connection ~ 4825 3450
Wire Wire Line
	4825 3450 4825 3400
Wire Wire Line
	4800 4550 4800 4500
Wire Wire Line
	4800 3975 4625 3975
Connection ~ 4625 3975
Wire Wire Line
	4625 3975 4625 4000
Wire Wire Line
	4400 4550 4400 4500
Wire Wire Line
	4400 3975 4225 3975
Connection ~ 4225 3975
Wire Wire Line
	4225 3975 4225 4000
Wire Wire Line
	5425 4000 5425 3975
Wire Wire Line
	5425 3450 5225 3450
Connection ~ 5225 3450
Wire Wire Line
	5225 3450 5225 3350
Wire Wire Line
	5625 3450 5825 3450
Wire Wire Line
	5825 3450 5825 3975
Connection ~ 5625 3450
Wire Wire Line
	5625 3450 5625 3475
Wire Wire Line
	6025 3450 6225 3450
Wire Wire Line
	6225 3450 6225 3975
Connection ~ 6025 3450
Wire Wire Line
	6025 3450 6025 3475
Wire Wire Line
	6400 4550 6400 4500
Wire Wire Line
	6400 3975 6225 3975
Connection ~ 6225 3975
Wire Wire Line
	6225 3975 6225 4000
Wire Wire Line
	5825 3975 6000 3975
Wire Wire Line
	6000 3975 6000 4500
Connection ~ 5825 3975
Wire Wire Line
	5825 3975 5825 4000
Wire Wire Line
	5600 4550 5600 4500
Wire Wire Line
	5600 3975 5425 3975
Connection ~ 5425 3975
Wire Wire Line
	5425 3975 5425 3450
Wire Wire Line
	5200 4550 5200 4500
Wire Wire Line
	5200 3975 5025 3975
Connection ~ 5025 3975
Wire Wire Line
	5025 3975 5025 4000
Wire Wire Line
	5800 5100 5800 4500
Wire Wire Line
	5800 4500 5600 4500
Connection ~ 5600 4500
Wire Wire Line
	5600 4500 5600 3975
Wire Wire Line
	6200 5100 6200 4500
Wire Wire Line
	6200 4500 6000 4500
Connection ~ 6000 4500
Wire Wire Line
	6000 4500 6000 4550
Wire Wire Line
	6400 4500 6600 4500
Wire Wire Line
	6600 4500 6600 5100
Connection ~ 6400 4500
Wire Wire Line
	6400 4500 6400 3975
Wire Wire Line
	5400 5100 5400 4500
Wire Wire Line
	5400 4500 5200 4500
Connection ~ 5200 4500
Wire Wire Line
	5200 4500 5200 3975
Wire Wire Line
	4800 4500 5000 4500
Connection ~ 4800 4500
Wire Wire Line
	4800 4500 4800 3975
Wire Wire Line
	5000 5100 5000 4500
Wire Wire Line
	4600 5100 4600 4500
Wire Wire Line
	4600 4500 4400 4500
Connection ~ 4400 4500
Wire Wire Line
	4400 4500 4400 3975
Wire Wire Line
	4200 5100 4200 4500
Wire Wire Line
	4200 4500 4000 4500
Connection ~ 4000 4500
Wire Wire Line
	4000 4500 4000 4550
Wire Wire Line
	6900 4025 6900 3975
Wire Wire Line
	6900 3450 6700 3450
Connection ~ 6700 3450
Wire Wire Line
	6700 3450 6700 3475
Wire Wire Line
	7075 4550 7075 4500
Wire Wire Line
	7075 3975 6900 3975
Connection ~ 6900 3975
Wire Wire Line
	6900 3975 6900 3450
Wire Wire Line
	7100 3450 7300 3450
Wire Wire Line
	7300 3450 7300 3975
Connection ~ 7100 3450
Wire Wire Line
	7100 3450 7100 3250
Wire Wire Line
	7475 3975 7300 3975
Wire Wire Line
	7475 3975 7475 4500
Connection ~ 7300 3975
Wire Wire Line
	7300 3975 7300 4025
Wire Wire Line
	7700 4025 7700 3975
Wire Wire Line
	7700 3450 7500 3450
Connection ~ 7500 3450
Wire Wire Line
	7500 3450 7500 3300
Wire Wire Line
	7875 4550 7875 4500
Wire Wire Line
	7875 3975 7700 3975
Connection ~ 7700 3975
Wire Wire Line
	7700 3975 7700 3450
Wire Wire Line
	8100 3450 7900 3450
Connection ~ 7900 3450
Wire Wire Line
	7900 3450 7900 3475
Wire Wire Line
	8500 4025 8500 3975
Wire Wire Line
	8500 3450 8300 3450
Connection ~ 8300 3450
Wire Wire Line
	8300 3450 8300 3400
Wire Wire Line
	8100 3450 8100 3975
Wire Wire Line
	8275 4550 8275 4500
Wire Wire Line
	8275 3975 8100 3975
Connection ~ 8100 3975
Wire Wire Line
	8100 3975 8100 4025
Wire Wire Line
	8675 4550 8675 4500
Wire Wire Line
	8675 3975 8500 3975
Connection ~ 8500 3975
Wire Wire Line
	8500 3975 8500 3450
Wire Wire Line
	9075 4550 9075 4500
Wire Wire Line
	9075 3975 8900 3975
Wire Wire Line
	8900 3975 8900 4025
Wire Wire Line
	8900 3975 8900 3450
Wire Wire Line
	8900 3450 8700 3450
Connection ~ 8900 3975
Connection ~ 8700 3450
Wire Wire Line
	8700 3450 8700 3475
Wire Wire Line
	9100 3450 9300 3450
Wire Wire Line
	9300 3450 9300 3975
Connection ~ 9100 3450
Wire Wire Line
	9100 3450 9100 3475
Wire Wire Line
	9500 3450 9700 3450
Wire Wire Line
	9700 3450 9700 3975
Connection ~ 9500 3450
Wire Wire Line
	9500 3450 9500 3175
Wire Wire Line
	9475 4550 9475 4500
Wire Wire Line
	9475 3975 9300 3975
Connection ~ 9300 3975
Wire Wire Line
	9300 3975 9300 4025
Wire Wire Line
	9700 3975 9875 3975
Wire Wire Line
	9875 3975 9875 4500
Connection ~ 9700 3975
Wire Wire Line
	9700 3975 9700 4025
Wire Wire Line
	7275 5100 7275 4500
Wire Wire Line
	7275 4500 7075 4500
Connection ~ 7075 4500
Wire Wire Line
	7075 4500 7075 3975
Wire Wire Line
	7475 4500 7675 4500
Wire Wire Line
	7675 4500 7675 5100
Connection ~ 7475 4500
Wire Wire Line
	7475 4500 7475 4550
Wire Wire Line
	8075 5100 8075 4500
Wire Wire Line
	8075 4500 7875 4500
Connection ~ 7875 4500
Wire Wire Line
	7875 4500 7875 3975
Wire Wire Line
	8275 4500 8475 4500
Wire Wire Line
	8475 4500 8475 5100
Connection ~ 8275 4500
Wire Wire Line
	8275 4500 8275 3975
Wire Wire Line
	8675 4500 8875 4500
Wire Wire Line
	8875 4500 8875 5100
Connection ~ 8675 4500
Wire Wire Line
	8675 4500 8675 3975
Wire Wire Line
	9275 5100 9275 4500
Wire Wire Line
	9275 4500 9075 4500
Connection ~ 9075 4500
Wire Wire Line
	9075 4500 9075 3975
Wire Wire Line
	9475 4500 9675 4500
Wire Wire Line
	9675 4500 9675 5100
Connection ~ 9475 4500
Wire Wire Line
	9475 4500 9475 3975
Wire Wire Line
	9675 5500 9675 5400
Connection ~ 9675 5500
Wire Wire Line
	9675 5500 10075 5500
Wire Wire Line
	9875 4500 10075 4500
Wire Wire Line
	10075 4500 10075 5100
Connection ~ 9875 4500
Wire Wire Line
	9875 4500 9875 4550
Wire Wire Line
	4250 1475 2800 1475
Wire Wire Line
	2800 1475 2800 1775
Wire Wire Line
	2800 1775 2125 1775
Wire Wire Line
	3025 1875 3025 1075
Wire Wire Line
	3025 1075 4750 1075
Wire Wire Line
	8625 1075 8625 1725
Wire Wire Line
	6925 1450 8125 1450
Wire Wire Line
	8125 1450 8125 1725
Wire Wire Line
	6925 1450 6925 2550
Wire Wire Line
	8325 1225 4450 1225
Wire Wire Line
	3125 1225 3125 1975
Wire Wire Line
	3125 1975 2125 1975
Wire Wire Line
	8325 1225 8325 1725
Wire Wire Line
	4450 1225 4450 1675
Connection ~ 4450 1225
Wire Wire Line
	4450 1225 3125 1225
Wire Wire Line
	4750 1075 4750 1675
Connection ~ 4750 1075
Wire Wire Line
	4750 1075 8625 1075
Wire Wire Line
	2125 1875 3025 1875
Wire Wire Line
	1700 4150 625  4150
Wire Wire Line
	625  4150 625  1975
Wire Wire Line
	625  1975 1125 1975
Wire Wire Line
	1125 2075 700  2075
Wire Wire Line
	700  2075 700  4725
Wire Wire Line
	700  4725 1775 4725
Wire Wire Line
	1875 5250 775  5250
Wire Wire Line
	775  5250 775  2175
Wire Wire Line
	775  2175 1125 2175
Wire Wire Line
	1125 2275 850  2275
Wire Wire Line
	850  2275 850  5750
Wire Wire Line
	850  5750 1975 5750
Text Notes 925  3925 0    50   ~ 0
Order doesn't matter for BJTs\nDecide in code...
Wire Wire Line
	9950 6425 9950 6525
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5D7DD2FE
P 9950 6525
F 0 "#FLG02" H 9950 6600 50  0001 C CNN
F 1 "PWR_FLAG" H 9950 6699 50  0000 C CNN
F 2 "" H 9950 6525 50  0001 C CNN
F 3 "~" H 9950 6525 50  0001 C CNN
	1    9950 6525
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR013
U 1 1 5D7DD273
P 9950 6425
F 0 "#PWR013" H 9950 6275 50  0001 C CNN
F 1 "+3.3V" H 9965 6598 50  0000 C CNN
F 2 "" H 9950 6425 50  0001 C CNN
F 3 "" H 9950 6425 50  0001 C CNN
	1    9950 6425
	1    0    0    -1  
$EndComp
Wire Wire Line
	10325 6425 10325 6525
$Comp
L power:GND #PWR010
U 1 1 5D7DAD12
P 10325 6525
F 0 "#PWR010" H 10325 6275 50  0001 C CNN
F 1 "GND" H 10330 6352 50  0000 C CNN
F 2 "" H 10325 6525 50  0001 C CNN
F 3 "" H 10325 6525 50  0001 C CNN
	1    10325 6525
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 6525 9550 6425
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5D7DD3EB
P 9550 6525
F 0 "#FLG01" H 9550 6600 50  0001 C CNN
F 1 "PWR_FLAG" H 9550 6699 50  0000 C CNN
F 2 "" H 9550 6525 50  0001 C CNN
F 3 "~" H 9550 6525 50  0001 C CNN
	1    9550 6525
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR012
U 1 1 5D7DD3BD
P 9550 6425
F 0 "#PWR012" H 9550 6275 50  0001 C CNN
F 1 "+5V" H 9565 6598 50  0000 C CNN
F 2 "" H 9550 6425 50  0001 C CNN
F 3 "" H 9550 6425 50  0001 C CNN
	1    9550 6425
	1    0    0    -1  
$EndComp
Wire Wire Line
	7725 2375 7725 2350
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5EC932C3
P 10325 6425
F 0 "#FLG0101" H 10325 6500 50  0001 C CNN
F 1 "PWR_FLAG" H 10325 6599 50  0000 C CNN
F 2 "" H 10325 6425 50  0001 C CNN
F 3 "~" H 10325 6425 50  0001 C CNN
	1    10325 6425
	1    0    0    -1  
$EndComp
$EndSCHEMATC
