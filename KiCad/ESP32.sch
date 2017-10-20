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
L ESP32-DevKitC U1
U 1 1 59E597A2
P 2750 1650
F 0 "U1" H 3150 -350 60  0000 C CNN
F 1 "ESP32-DevKitC" H 3150 1750 60  0000 C CNN
F 2 "nixie_clock:ESP32-DEV-Kit" H 3200 1350 60  0001 C CNN
F 3 "" H 3200 1350 60  0000 C CNN
	1    2750 1650
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR01
U 1 1 59E598C7
P 1750 3400
F 0 "#PWR01" H 1750 3250 50  0001 C CNN
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
L GND #PWR02
U 1 1 59E598FC
P 4800 2500
F 0 "#PWR02" H 4800 2250 50  0001 C CNN
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
L +3.3V #PWR03
U 1 1 59E5991F
P 1750 1550
F 0 "#PWR03" H 1750 1400 50  0001 C CNN
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
L GND #PWR04
U 1 1 59E5993D
P 2050 3050
F 0 "#PWR04" H 2050 2800 50  0001 C CNN
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
Text GLabel 2250 2100 0    60   Output ~ 0
nxecom0
Text GLabel 2250 2200 0    60   Output ~ 0
nxecom1
Text GLabel 2250 2300 0    60   Output ~ 0
nxecom2
Text GLabel 2250 2400 0    60   Output ~ 0
nxecom3
Text GLabel 2250 2500 0    60   Output ~ 0
nxecom4
Text GLabel 2250 2600 0    60   Output ~ 0
nxecom5
Text GLabel 4000 3200 2    60   Output ~ 0
nxea
Text GLabel 4000 3100 2    60   Output ~ 0
nxeb
Text GLabel 4000 3000 2    60   Output ~ 0
nxec
Text GLabel 4000 2900 2    60   Output ~ 0
nxed
Wire Wire Line
	2250 2100 2550 2100
Wire Wire Line
	2250 2200 2550 2200
Wire Wire Line
	2250 2300 2550 2300
Wire Wire Line
	2250 2400 2550 2400
Wire Wire Line
	2250 2500 2550 2500
Wire Wire Line
	2250 2600 2550 2600
Wire Wire Line
	3750 3200 4000 3200
Wire Wire Line
	3750 3100 4000 3100
Wire Wire Line
	3750 3000 4000 3000
Wire Wire Line
	3750 2900 4000 2900
NoConn ~ 2550 1800
NoConn ~ 2550 1900
NoConn ~ 2550 2000
NoConn ~ 2550 2700
NoConn ~ 2550 2800
NoConn ~ 2550 2900
NoConn ~ 2550 3100
NoConn ~ 2550 3200
NoConn ~ 2550 3300
NoConn ~ 2550 3400
NoConn ~ 3750 3500
NoConn ~ 3750 3400
NoConn ~ 3750 3300
NoConn ~ 3750 2800
NoConn ~ 3750 2700
NoConn ~ 3750 2100
NoConn ~ 3750 2000
Text GLabel 4000 1800 2    60   Output ~ 0
led0
Text GLabel 4000 1900 2    60   Output ~ 0
led1
Text GLabel 4000 2200 2    60   Output ~ 0
led2
Text GLabel 4000 2400 2    60   Output ~ 0
led3
Text GLabel 4000 2500 2    60   Output ~ 0
led4
Text GLabel 4000 2600 2    60   Output ~ 0
led5
Wire Wire Line
	3750 1800 4000 1800
Wire Wire Line
	3750 1900 4000 1900
Wire Wire Line
	3750 2200 4000 2200
Wire Wire Line
	3750 2600 4000 2600
Wire Wire Line
	3750 2500 4000 2500
Wire Wire Line
	3750 2400 4000 2400
$EndSCHEMATC
