EESchema Schematic File Version 4
LIBS:_saved_lasergame vs-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Microchip_ATmega:ATmega328-PU U1
U 1 1 5C43931C
P 5050 3350
F 0 "U1" H 4409 3396 50  0000 R CNN
F 1 "ATmega328-PU" H 4409 3305 50  0000 R CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 5050 3350 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 5050 3350 50  0001 C CNN
	1    5050 3350
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_B J1
U 1 1 5C43939A
P 1500 7100
F 0 "J1" V 1602 7430 50  0000 L CNN
F 1 "USB_B" V 1511 7430 50  0000 L CNN
F 2 "" H 1650 7050 50  0001 C CNN
F 3 " ~" H 1650 7050 50  0001 C CNN
	1    1500 7100
	0    -1   -1   0   
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 5C439428
P 6350 2800
F 0 "Y1" H 6350 3068 50  0000 C CNN
F 1 "Crystal" H 6350 2977 50  0000 C CNN
F 2 "" H 6350 2800 50  0001 C CNN
F 3 "~" H 6350 2800 50  0001 C CNN
	1    6350 2800
	0    1    1    0   
$EndComp
$Comp
L Device:C C1
U 1 1 5C439484
P 6800 2650
F 0 "C1" V 6548 2650 50  0000 C CNN
F 1 "C" V 6639 2650 50  0000 C CNN
F 2 "" H 6838 2500 50  0001 C CNN
F 3 "~" H 6800 2650 50  0001 C CNN
	1    6800 2650
	0    1    1    0   
$EndComp
$Comp
L Device:C C2
U 1 1 5C43977F
P 6800 2950
F 0 "C2" V 6548 2950 50  0000 C CNN
F 1 "C" V 6639 2950 50  0000 C CNN
F 2 "" H 6838 2800 50  0001 C CNN
F 3 "~" H 6800 2950 50  0001 C CNN
	1    6800 2950
	0    1    1    0   
$EndComp
Wire Wire Line
	5650 2750 6100 2750
Wire Wire Line
	6100 2750 6100 2650
Wire Wire Line
	6100 2650 6350 2650
Wire Wire Line
	6350 2650 6650 2650
Connection ~ 6350 2650
Wire Wire Line
	5650 2850 6100 2850
Wire Wire Line
	6100 2850 6100 2950
Wire Wire Line
	6100 2950 6350 2950
Wire Wire Line
	6350 2950 6650 2950
Connection ~ 6350 2950
Wire Wire Line
	6950 2650 6950 2800
$Comp
L power:GND #PWR06
U 1 1 5C4398C1
P 7150 2800
F 0 "#PWR06" H 7150 2550 50  0001 C CNN
F 1 "GND" V 7155 2672 50  0000 R CNN
F 2 "" H 7150 2800 50  0001 C CNN
F 3 "" H 7150 2800 50  0001 C CNN
	1    7150 2800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6950 2800 7150 2800
Connection ~ 6950 2800
Wire Wire Line
	6950 2800 6950 2950
Wire Wire Line
	5050 1850 5100 1850
Connection ~ 5100 1850
Wire Wire Line
	5100 1850 5150 1850
Wire Wire Line
	5050 4850 5050 5050
$Comp
L power:GND #PWR03
U 1 1 5C439BC7
P 5050 5050
F 0 "#PWR03" H 5050 4800 50  0001 C CNN
F 1 "GND" H 5055 4877 50  0000 C CNN
F 2 "" H 5050 5050 50  0001 C CNN
F 3 "" H 5050 5050 50  0001 C CNN
	1    5050 5050
	1    0    0    -1  
$EndComp
NoConn ~ 1500 6800
NoConn ~ 1600 6800
Wire Wire Line
	1900 7100 1900 7150
Wire Wire Line
	1900 7150 2000 7150
Connection ~ 1900 7150
Wire Wire Line
	1900 7150 1900 7200
$Comp
L power:GND #PWR02
U 1 1 5C43A37D
P 2000 7150
F 0 "#PWR02" H 2000 6900 50  0001 C CNN
F 1 "GND" H 2005 6977 50  0000 C CNN
F 2 "" H 2000 7150 50  0001 C CNN
F 3 "" H 2000 7150 50  0001 C CNN
	1    2000 7150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 5C43A3B7
P 1300 6550
F 0 "#PWR01" H 1300 6400 50  0001 C CNN
F 1 "+5V" H 1315 6723 50  0000 C CNN
F 2 "" H 1300 6550 50  0001 C CNN
F 3 "" H 1300 6550 50  0001 C CNN
	1    1300 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 6800 1300 6700
Text GLabel 1100 6700 0    50   Output ~ 0
5V
Wire Wire Line
	1100 6700 1300 6700
Connection ~ 1300 6700
Wire Wire Line
	1300 6700 1300 6550
Text GLabel 5100 1450 1    50   Input ~ 0
5V
Wire Wire Line
	5100 1450 5100 1850
Text GLabel 10050 1300 2    50   Input ~ 0
5V
$Comp
L Device:R R2
U 1 1 5C43A091
P 9750 1300
F 0 "R2" V 9543 1300 50  0000 C CNN
F 1 "R" V 9634 1300 50  0000 C CNN
F 2 "" V 9680 1300 50  0001 C CNN
F 3 "~" H 9750 1300 50  0001 C CNN
	1    9750 1300
	0    1    1    0   
$EndComp
Wire Wire Line
	9900 1300 10050 1300
Wire Wire Line
	9600 1300 9400 1300
Wire Wire Line
	9400 1300 9400 850 
Wire Wire Line
	9400 850  9700 850 
Connection ~ 9400 1300
Wire Wire Line
	9400 1300 8950 1300
$Comp
L Device:C C3
U 1 1 5C43A83D
P 9850 850
F 0 "C3" V 9598 850 50  0000 C CNN
F 1 "C" V 9689 850 50  0000 C CNN
F 2 "" H 9888 700 50  0001 C CNN
F 3 "~" H 9850 850 50  0001 C CNN
	1    9850 850 
	0    1    1    0   
$EndComp
Wire Wire Line
	9400 1300 9400 1750
Wire Wire Line
	9400 1750 9700 1750
$Comp
L power:GND #PWR07
U 1 1 5C43A2F7
P 10400 1750
F 0 "#PWR07" H 10400 1500 50  0001 C CNN
F 1 "GND" H 10405 1577 50  0000 C CNN
F 2 "" H 10400 1750 50  0001 C CNN
F 3 "" H 10400 1750 50  0001 C CNN
	1    10400 1750
	1    0    0    -1  
$EndComp
Text GLabel 10350 850  2    50   Input ~ 0
DTR
Wire Wire Line
	10000 850  10350 850 
Text GLabel 8950 1300 0    50   Output ~ 0
resetpin
Text GLabel 6000 3650 2    50   Input ~ 0
resetpin
Wire Wire Line
	6000 3650 5650 3650
Text GLabel 4250 2150 0    50   Input ~ 0
5V
Wire Wire Line
	4250 2150 4450 2150
$Comp
L Switch:SW_Reed SW2
U 1 1 5C43CA9A
P 10300 4550
F 0 "SW2" H 10300 4772 50  0000 C CNN
F 1 "SW_Reed" H 10300 4681 50  0000 C CNN
F 2 "" H 10300 4550 50  0001 C CNN
F 3 "" H 10300 4550 50  0001 C CNN
	1    10300 4550
	1    0    0    -1  
$EndComp
$Comp
L Sensor_Optical:LDR07 R1
U 1 1 5C43CFA4
P 6200 3350
F 0 "R1" V 5875 3350 50  0000 C CNN
F 1 "LDR07" V 5966 3350 50  0000 C CNN
F 2 "OptoDevice:R_LDR_5.1x4.3mm_P3.4mm_Vertical" V 6375 3350 50  0001 C CNN
F 3 "http://www.tme.eu/de/Document/f2e3ad76a925811312d226c31da4cd7e/LDR07.pdf" H 6200 3300 50  0001 C CNN
	1    6200 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	5650 3350 6050 3350
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 5C43EAC2
P 7300 3450
F 0 "J2" H 7380 3442 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 7380 3351 50  0000 L CNN
F 2 "" H 7300 3450 50  0001 C CNN
F 3 "~" H 7300 3450 50  0001 C CNN
	1    7300 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 3450 7100 3450
$Comp
L power:GND #PWR05
U 1 1 5C43F213
P 6950 3550
F 0 "#PWR05" H 6950 3300 50  0001 C CNN
F 1 "GND" H 6955 3377 50  0000 C CNN
F 2 "" H 6950 3550 50  0001 C CNN
F 3 "" H 6950 3550 50  0001 C CNN
	1    6950 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 3550 7100 3550
$Comp
L power:GND #PWR04
U 1 1 5C43F7FF
P 6550 3350
F 0 "#PWR04" H 6550 3100 50  0001 C CNN
F 1 "GND" H 6555 3177 50  0000 C CNN
F 2 "" H 6550 3350 50  0001 C CNN
F 3 "" H 6550 3350 50  0001 C CNN
	1    6550 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 3350 6550 3350
Text GLabel 5800 4550 2    50   Output ~ 0
SelectButton
Wire Wire Line
	5650 4550 5800 4550
Text GLabel 5800 4450 2    50   Output ~ 0
LED
Wire Wire Line
	5650 4450 5800 4450
$Comp
L Switch:SW_SPST SW1
U 1 1 5C441986
P 9900 1750
F 0 "SW1" H 9900 1985 50  0000 C CNN
F 1 "SW_SPST" H 9900 1894 50  0000 C CNN
F 2 "" H 9900 1750 50  0001 C CNN
F 3 "" H 9900 1750 50  0001 C CNN
	1    9900 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 1750 10400 1750
Text GLabel 5800 4350 2    50   Output ~ 0
ResetButton
Wire Wire Line
	5650 4350 5800 4350
Text GLabel 5800 2150 2    50   Output ~ 0
Scroll
Wire Wire Line
	5650 2150 5800 2150
Wire Wire Line
	5800 2250 5650 2250
Text GLabel 5800 2250 2    50   Output ~ 0
Buzzer
Text GLabel 5800 2350 2    50   Output ~ 0
Trigger
Wire Wire Line
	5650 2350 5800 2350
Wire Wire Line
	5800 2450 5650 2450
Text GLabel 5800 2450 2    50   Output ~ 0
Reload
Text GLabel 5800 2550 2    50   Output ~ 0
Light
Wire Wire Line
	5650 2550 5800 2550
Text GLabel 5800 4050 2    50   Output ~ 0
Clock
Wire Wire Line
	5650 4050 5800 4050
Wire Wire Line
	5800 4150 5650 4150
Text GLabel 5800 4150 2    50   Output ~ 0
DIO
NoConn ~ 5650 4250
NoConn ~ 5650 3950
NoConn ~ 5650 3850
NoConn ~ 5650 3250
NoConn ~ 5650 3150
NoConn ~ 5650 3050
NoConn ~ 5650 2650
$EndSCHEMATC
