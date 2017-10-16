EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:ESP32-footprints-Shem-Lib
LIBS:nixie
LIBS:userlib
LIBS:nixie_clock-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 4
Title "ESP32"
Date "2017-10-16"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ESP32-DevKitC U?
U 1 1 59E597A2
P 2750 1650
F 0 "U?" H 3150 -350 60  0000 C CNN
F 1 "ESP32-DevKitC" H 3150 1750 60  0000 C CNN
F 2 "" H 3200 1350 60  0000 C CNN
F 3 "" H 3200 1350 60  0000 C CNN
	1    2750 1650
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 59E598C7
P 1750 3400
F 0 "#PWR?" H 1750 3250 50  0001 C CNN
F 1 "+5V" H 1750 3540 50  0000 C CNN
F 2 "" H 1750 3400 50  0000 C CNN
F 3 "" H 1750 3400 50  0000 C CNN
	1    1750 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 3500 1750 3500
Wire Wire Line
	1750 3500 1750 3400
$Comp
L GND #PWR?
U 1 1 59E598FC
P 4800 2500
F 0 "#PWR?" H 4800 2250 50  0001 C CNN
F 1 "GND" H 4800 2350 50  0000 C CNN
F 2 "" H 4800 2500 50  0000 C CNN
F 3 "" H 4800 2500 50  0000 C CNN
	1    4800 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 2300 4800 2300
Wire Wire Line
	4800 1700 4800 2500
Wire Wire Line
	3750 1700 4800 1700
Connection ~ 4800 2300
$Comp
L +3.3V #PWR?
U 1 1 59E5991F
P 1750 1550
F 0 "#PWR?" H 1750 1400 50  0001 C CNN
F 1 "+3.3V" H 1750 1690 50  0000 C CNN
F 2 "" H 1750 1550 50  0000 C CNN
F 3 "" H 1750 1550 50  0000 C CNN
	1    1750 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 1550 1750 1700
Wire Wire Line
	1750 1700 2550 1700
$Comp
L GND #PWR?
U 1 1 59E5993D
P 2050 3050
F 0 "#PWR?" H 2050 2800 50  0001 C CNN
F 1 "GND" H 2050 2900 50  0000 C CNN
F 2 "" H 2050 3050 50  0000 C CNN
F 3 "" H 2050 3050 50  0000 C CNN
	1    2050 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 3050 2050 3000
Wire Wire Line
	2050 3000 2550 3000
$EndSCHEMATC
