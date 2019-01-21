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
Text GLabel 10625 1250 2    50   Input ~ 0
5V
$Comp
L Device:R R2
U 1 1 5C43A091
P 10325 1250
F 0 "R2" V 10118 1250 50  0000 C CNN
F 1 "R" V 10209 1250 50  0000 C CNN
F 2 "" V 10255 1250 50  0001 C CNN
F 3 "~" H 10325 1250 50  0001 C CNN
	1    10325 1250
	0    1    1    0   
$EndComp
Wire Wire Line
	10475 1250 10625 1250
Wire Wire Line
	10175 1250 9975 1250
Wire Wire Line
	9975 1250 9975 800 
Wire Wire Line
	9975 800  10275 800 
Connection ~ 9975 1250
Wire Wire Line
	9975 1250 9525 1250
$Comp
L Device:C C3
U 1 1 5C43A83D
P 10425 800
F 0 "C3" V 10173 800 50  0000 C CNN
F 1 "C" V 10264 800 50  0000 C CNN
F 2 "" H 10463 650 50  0001 C CNN
F 3 "~" H 10425 800 50  0001 C CNN
	1    10425 800 
	0    1    1    0   
$EndComp
Wire Wire Line
	9975 1250 9975 1700
Wire Wire Line
	9975 1700 10275 1700
$Comp
L power:GND #PWR07
U 1 1 5C43A2F7
P 10975 1700
F 0 "#PWR07" H 10975 1450 50  0001 C CNN
F 1 "GND" H 10980 1527 50  0000 C CNN
F 2 "" H 10975 1700 50  0001 C CNN
F 3 "" H 10975 1700 50  0001 C CNN
	1    10975 1700
	1    0    0    -1  
$EndComp
Text GLabel 10925 800  2    50   Input ~ 0
DTR
Wire Wire Line
	10575 800  10925 800 
Text GLabel 9525 1250 0    50   Output ~ 0
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
P 1650 850
F 0 "SW2" H 1650 1072 50  0000 C CNN
F 1 "SW_Reed" H 1650 981 50  0000 C CNN
F 2 "" H 1650 850 50  0001 C CNN
F 3 "" H 1650 850 50  0001 C CNN
	1    1650 850 
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
Text GLabel 5800 4550 2    50   Input ~ 0
SelectButton
Text GLabel 5800 4450 2    50   Output ~ 0
LED
$Comp
L Switch:SW_SPST SW1
U 1 1 5C441986
P 10475 1700
F 0 "SW1" H 10475 1935 50  0000 C CNN
F 1 "SW_SPST" H 10475 1844 50  0000 C CNN
F 2 "" H 10475 1700 50  0001 C CNN
F 3 "" H 10475 1700 50  0001 C CNN
	1    10475 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10675 1700 10975 1700
Text GLabel 5800 4350 2    50   Output ~ 0
ResetButton
Wire Wire Line
	5650 4350 5800 4350
Text GLabel 5800 2150 2    50   Input ~ 0
Scroll
Wire Wire Line
	5800 2250 5650 2250
Text GLabel 5800 2250 2    50   Output ~ 0
Buzzer
Text GLabel 5800 2350 2    50   BiDi ~ 0
Trigger
Wire Wire Line
	5650 2350 5800 2350
Wire Wire Line
	5800 2450 5650 2450
Text GLabel 5800 2450 2    50   BiDi ~ 0
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
Text GLabel 5800 4150 2    50   BiDi ~ 0
DIO
NoConn ~ 5650 4250
NoConn ~ 5650 3250
NoConn ~ 5650 3150
NoConn ~ 5650 3050
NoConn ~ 5650 2650
$Comp
L power:GND #PWR013
U 1 1 5C457481
P 2050 850
F 0 "#PWR013" H 2050 600 50  0001 C CNN
F 1 "GND" H 2055 677 50  0000 C CNN
F 2 "" H 2050 850 50  0001 C CNN
F 3 "" H 2050 850 50  0001 C CNN
	1    2050 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 850  1850 850 
Text GLabel 1250 850  0    50   Input ~ 0
ResetButton
Wire Wire Line
	1250 850  1450 850 
Text GLabel 5800 3850 2    50   Input ~ 0
RX
Text GLabel 5800 3950 2    50   Input ~ 0
TX
Wire Wire Line
	5650 3850 5800 3850
Wire Wire Line
	5650 3950 5800 3950
$Comp
L Connector:Conn_01x06_Female J7
U 1 1 5C45D288
P 9550 2275
F 0 "J7" V 9490 1887 50  0000 R CNN
F 1 "Conn_01x06_Female" V 9399 1887 50  0000 R CNN
F 2 "" H 9550 2275 50  0001 C CNN
F 3 "~" H 9550 2275 50  0001 C CNN
	1    9550 2275
	0    -1   -1   0   
$EndComp
NoConn ~ 9450 2475
Text GLabel 9550 2600 3    50   Output ~ 0
5V
Text GLabel 9750 2600 3    50   Output ~ 0
TX
Text GLabel 9650 2600 3    50   Output ~ 0
RX
Wire Wire Line
	9650 2475 9650 2600
Wire Wire Line
	9750 2475 9750 2600
Wire Wire Line
	9550 2475 9550 2600
Text GLabel 9850 2600 3    50   Output ~ 0
DTR
Wire Wire Line
	9850 2475 9850 2600
Wire Notes Line
	8850 1975 11225 1975
Wire Notes Line
	8850 3150 11225 3150
Wire Notes Line
	8850 475  8850 3150
Wire Notes Line
	2525 1275 475  1275
$Comp
L Connector:Conn_01x04_Female J3
U 1 1 5C46D255
P 1225 1575
F 0 "J3" V 1165 1287 50  0000 R CNN
F 1 "Conn_01x04_Female" V 1074 1287 50  0000 R CNN
F 2 "" H 1225 1575 50  0001 C CNN
F 3 "~" H 1225 1575 50  0001 C CNN
	1    1225 1575
	0    -1   -1   0   
$EndComp
Wire Notes Line
	2525 2200 475  2200
$Comp
L power:GND #PWR012
U 1 1 5C46E4D8
P 1425 1900
F 0 "#PWR012" H 1425 1650 50  0001 C CNN
F 1 "GND" H 1430 1727 50  0000 C CNN
F 2 "" H 1425 1900 50  0001 C CNN
F 3 "" H 1425 1900 50  0001 C CNN
	1    1425 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1425 1775 1425 1900
Text GLabel 1325 1900 3    50   Input ~ 0
5V
Wire Wire Line
	1325 1775 1325 1900
Text GLabel 1225 1900 3    50   BiDi ~ 0
DIO
Wire Wire Line
	1225 1900 1225 1775
Text GLabel 1125 1900 3    50   Input ~ 0
Clock
Wire Wire Line
	1125 1775 1125 1900
Text Notes 2200 2150 0    50   ~ 0
display
Text Notes 2125 1225 0    50   ~ 0
spelreset
Text Notes 8900 1925 0    50   ~ 0
uc reset
Text Notes 8900 3100 0    50   ~ 0
programming port
$Comp
L Transistor_FET:IRLB8721PBF Q1
U 1 1 5C47406A
P 850 2600
F 0 "Q1" V 1100 2600 50  0000 C CNN
F 1 "IRLB8721PBF" V 1191 2600 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 1100 2525 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/irlb8721pbf.pdf?fileId=5546d462533600a40153566056732591" H 850 2600 50  0001 L CNN
	1    850  2600
	0    1    1    0   
$EndComp
Wire Wire Line
	1125 2400 850  2400
$Comp
L power:GND #PWR08
U 1 1 5C475637
P 550 2700
F 0 "#PWR08" H 550 2450 50  0001 C CNN
F 1 "GND" H 555 2527 50  0000 C CNN
F 2 "" H 550 2700 50  0001 C CNN
F 3 "" H 550 2700 50  0001 C CNN
	1    550  2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	550  2700 650  2700
Wire Wire Line
	1050 2700 1375 2700
Text GLabel 1275 2600 0    50   Input ~ 0
5V
$Comp
L Connector:Screw_Terminal_01x02 J6
U 1 1 5C47BE47
P 1575 2600
F 0 "J6" H 1655 2592 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 1655 2501 50  0000 L CNN
F 2 "" H 1575 2600 50  0001 C CNN
F 3 "~" H 1575 2600 50  0001 C CNN
	1    1575 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1275 2600 1375 2600
Wire Notes Line
	2525 3050 475  3050
Text Notes 1975 3000 0    50   ~ 0
Shooting LED
Wire Notes Line
	2200 6225 2200 7800
Text Notes 1500 7750 0    50   ~ 0
USB power input
NoConn ~ 5650 3550
$Comp
L Device:Buzzer BZ1
U 1 1 5C48472F
P 1425 3275
F 0 "BZ1" H 1578 3304 50  0000 L CNN
F 1 "Buzzer" H 1578 3213 50  0000 L CNN
F 2 "" V 1400 3375 50  0001 C CNN
F 3 "~" V 1400 3375 50  0001 C CNN
	1    1425 3275
	1    0    0    -1  
$EndComp
Wire Notes Line
	2525 3625 475  3625
$Comp
L power:GND #PWR09
U 1 1 5C485E5B
P 1125 3375
F 0 "#PWR09" H 1125 3125 50  0001 C CNN
F 1 "GND" H 1130 3202 50  0000 C CNN
F 2 "" H 1125 3375 50  0001 C CNN
F 3 "" H 1125 3375 50  0001 C CNN
	1    1125 3375
	1    0    0    -1  
$EndComp
Wire Wire Line
	1125 3375 1325 3375
Text GLabel 1150 3175 0    50   Input ~ 0
Buzzer
Wire Wire Line
	1150 3175 1325 3175
Text Notes 2475 3575 2    50   ~ 0
buzzer
$Comp
L Connector:Screw_Terminal_01x02 J4
U 1 1 5C4890AC
P 1500 3775
F 0 "J4" H 1580 3767 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 1580 3676 50  0000 L CNN
F 2 "" H 1500 3775 50  0001 C CNN
F 3 "~" H 1500 3775 50  0001 C CNN
	1    1500 3775
	1    0    0    -1  
$EndComp
Wire Notes Line
	2525 4325 475  4325
Text Notes 2475 4275 2    50   ~ 0
Reload and trigger
$Comp
L Connector:Screw_Terminal_01x02 J5
U 1 1 5C489177
P 1500 4025
F 0 "J5" H 1580 4017 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 1580 3926 50  0000 L CNN
F 2 "" H 1500 4025 50  0001 C CNN
F 3 "~" H 1500 4025 50  0001 C CNN
	1    1500 4025
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5C48A9F3
P 1125 4125
F 0 "#PWR011" H 1125 3875 50  0001 C CNN
F 1 "GND" H 1130 3952 50  0000 C CNN
F 2 "" H 1125 4125 50  0001 C CNN
F 3 "" H 1125 4125 50  0001 C CNN
	1    1125 4125
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5C48AA46
P 1125 3875
F 0 "#PWR010" H 1125 3625 50  0001 C CNN
F 1 "GND" H 1130 3702 50  0000 C CNN
F 2 "" H 1125 3875 50  0001 C CNN
F 3 "" H 1125 3875 50  0001 C CNN
	1    1125 3875
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 3875 1125 3875
Wire Wire Line
	1300 4125 1125 4125
Text GLabel 925  4025 0    50   BiDi ~ 0
Reload
Wire Wire Line
	1300 4025 925  4025
Text GLabel 925  3775 0    50   BiDi ~ 0
Trigger
Wire Wire Line
	1300 3775 925  3775
$Comp
L Device:R R3
U 1 1 5C4915DD
P 1275 2400
F 0 "R3" V 1068 2400 50  0000 C CNN
F 1 "R" V 1159 2400 50  0000 C CNN
F 2 "" V 1205 2400 50  0001 C CNN
F 3 "~" H 1275 2400 50  0001 C CNN
	1    1275 2400
	0    1    1    0   
$EndComp
Text GLabel 1550 2400 2    50   Input ~ 0
Light
Wire Wire Line
	1550 2400 1425 2400
Wire Wire Line
	5650 4450 5800 4450
Wire Wire Line
	5650 4550 5800 4550
Wire Wire Line
	9350 2475 9350 2600
Wire Wire Line
	5800 2150 5650 2150
$Comp
L Switch:SW_SPST SW3
U 1 1 5C4A1354
P 1300 4700
F 0 "SW3" H 1300 4935 50  0000 C CNN
F 1 "SW_SPST" H 1300 4844 50  0000 C CNN
F 2 "" H 1300 4700 50  0001 C CNN
F 3 "" H 1300 4700 50  0001 C CNN
	1    1300 4700
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW4
U 1 1 5C4A13B8
P 1300 5100
F 0 "SW4" H 1300 5335 50  0000 C CNN
F 1 "SW_SPST" H 1300 5244 50  0000 C CNN
F 2 "" H 1300 5100 50  0001 C CNN
F 3 "" H 1300 5100 50  0001 C CNN
	1    1300 5100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5C4A14C0
P 1825 4700
F 0 "#PWR016" H 1825 4450 50  0001 C CNN
F 1 "GND" H 1830 4527 50  0000 C CNN
F 2 "" H 1825 4700 50  0001 C CNN
F 3 "" H 1825 4700 50  0001 C CNN
	1    1825 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5C4A14F5
P 1825 5100
F 0 "#PWR017" H 1825 4850 50  0001 C CNN
F 1 "GND" H 1830 4927 50  0000 C CNN
F 2 "" H 1825 5100 50  0001 C CNN
F 3 "" H 1825 5100 50  0001 C CNN
	1    1825 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 5100 1825 5100
Wire Wire Line
	1500 4700 1825 4700
Text GLabel 1025 4700 0    50   Output ~ 0
SelectButton
Wire Wire Line
	1025 4700 1100 4700
Text GLabel 775  5100 0    50   Output ~ 0
Scroll
Wire Wire Line
	775  5100 1100 5100
Wire Notes Line
	475  5500 2525 5500
Text Notes 2500 5475 2    50   ~ 0
scroll and selectbutton
$Comp
L power:GND #PWR018
U 1 1 5C4ADD3C
P 9350 2600
F 0 "#PWR018" H 9350 2350 50  0001 C CNN
F 1 "GND" H 9355 2427 50  0000 C CNN
F 2 "" H 9350 2600 50  0001 C CNN
F 3 "" H 9350 2600 50  0001 C CNN
	1    9350 2600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J8
U 1 1 5C4AE07A
P 1550 5675
F 0 "J8" H 1630 5667 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 1630 5576 50  0000 L CNN
F 2 "" H 1550 5675 50  0001 C CNN
F 3 "~" H 1550 5675 50  0001 C CNN
	1    1550 5675
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5C4AE291
P 1425 6075
F 0 "D1" H 1417 5820 50  0000 C CNN
F 1 "LED" H 1417 5911 50  0000 C CNN
F 2 "" H 1425 6075 50  0001 C CNN
F 3 "~" H 1425 6075 50  0001 C CNN
	1    1425 6075
	-1   0    0    1   
$EndComp
Text GLabel 900  5675 0    50   Output ~ 0
LED
$Comp
L power:GND #PWR014
U 1 1 5C4B2888
P 1200 5775
F 0 "#PWR014" H 1200 5525 50  0001 C CNN
F 1 "GND" H 1205 5602 50  0000 C CNN
F 2 "" H 1200 5775 50  0001 C CNN
F 3 "" H 1200 5775 50  0001 C CNN
	1    1200 5775
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 5775 1350 5775
$Comp
L power:GND #PWR015
U 1 1 5C4B4E72
P 1725 6075
F 0 "#PWR015" H 1725 5825 50  0001 C CNN
F 1 "GND" H 1730 5902 50  0000 C CNN
F 2 "" H 1725 6075 50  0001 C CNN
F 3 "" H 1725 6075 50  0001 C CNN
	1    1725 6075
	1    0    0    -1  
$EndComp
Wire Wire Line
	1575 6075 1725 6075
$Comp
L Device:R R4
U 1 1 5C4B75FF
P 1125 6075
F 0 "R4" V 918 6075 50  0000 C CNN
F 1 "R" V 1009 6075 50  0000 C CNN
F 2 "" V 1055 6075 50  0001 C CNN
F 3 "~" H 1125 6075 50  0001 C CNN
	1    1125 6075
	0    1    1    0   
$EndComp
Wire Wire Line
	900  5675 925  5675
Wire Wire Line
	925  5675 925  6075
Wire Wire Line
	925  6075 975  6075
Connection ~ 925  5675
Wire Wire Line
	925  5675 1350 5675
Wire Notes Line
	475  6225 2525 6225
Wire Notes Line
	2525 475  2525 6225
$EndSCHEMATC
