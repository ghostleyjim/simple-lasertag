EESchema Schematic File Version 4
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
L Connector:Screw_Terminal_01x02 J1
U 1 1 5C49AE10
P 2850 2200
F 0 "J1" H 2770 1875 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 2770 1966 50  0000 C CNN
F 2 "TerminalBlocks_Phoenix:TerminalBlock_Phoenix_MKDS1.5-2pol" H 2850 2200 50  0001 C CNN
F 3 "~" H 2850 2200 50  0001 C CNN
	1    2850 2200
	-1   0    0    1   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 5C49AE7C
P 2850 2800
F 0 "J2" H 2770 2475 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 2770 2566 50  0000 C CNN
F 2 "TerminalBlocks_Phoenix:TerminalBlock_Phoenix_MKDS1.5-2pol" H 2850 2800 50  0001 C CNN
F 3 "~" H 2850 2800 50  0001 C CNN
	1    2850 2800
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D1
U 1 1 5C49AFBF
P 3600 1925
F 0 "D1" H 3592 1670 50  0000 C CNN
F 1 "LED" H 3592 1761 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H 3600 1925 50  0001 C CNN
F 3 "~" H 3600 1925 50  0001 C CNN
	1    3600 1925
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D2
U 1 1 5C49B011
P 3600 2275
F 0 "D2" H 3592 2020 50  0000 C CNN
F 1 "LED" H 3592 2111 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H 3600 2275 50  0001 C CNN
F 3 "~" H 3600 2275 50  0001 C CNN
	1    3600 2275
	-1   0    0    1   
$EndComp
Wire Wire Line
	3050 2100 3050 1925
Wire Wire Line
	3050 1925 3275 1925
Wire Wire Line
	3050 2200 3050 2275
Wire Wire Line
	3050 2275 3275 2275
Wire Wire Line
	3750 1925 4075 1925
Wire Wire Line
	4075 2275 3975 2275
$Comp
L Sensor_Optical:LDR07 R1
U 1 1 5C49B2B8
P 3650 2700
F 0 "R1" V 3857 2700 50  0000 C CNN
F 1 "LDR07" V 3766 2700 50  0000 C CNN
F 2 "OptoDevice:R_LDR_5.1x4.3mm_P3.4mm_Vertical" V 3825 2700 50  0001 C CNN
F 3 "http://www.tme.eu/de/Document/f2e3ad76a925811312d226c31da4cd7e/LDR07.pdf" H 3650 2650 50  0001 C CNN
	1    3650 2700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3050 2700 3275 2700
Wire Wire Line
	3800 2700 3975 2700
Wire Wire Line
	3975 2700 3975 2800
$Comp
L power:GND #PWR01
U 1 1 5C49B40D
P 3975 2800
F 0 "#PWR01" H 3975 2550 50  0001 C CNN
F 1 "GND" H 3980 2627 50  0000 C CNN
F 2 "" H 3975 2800 50  0001 C CNN
F 3 "" H 3975 2800 50  0001 C CNN
	1    3975 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4075 1925 4075 2275
Wire Wire Line
	3975 2700 3975 2275
Connection ~ 3975 2700
Connection ~ 3975 2275
Wire Wire Line
	3975 2275 3750 2275
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5C49B5F6
P 3275 1925
F 0 "#FLG01" H 3275 2000 50  0001 C CNN
F 1 "PWR_FLAG" H 3275 2099 50  0000 C CNN
F 2 "" H 3275 1925 50  0001 C CNN
F 3 "~" H 3275 1925 50  0001 C CNN
	1    3275 1925
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5C49B622
P 3275 2275
F 0 "#FLG02" H 3275 2350 50  0001 C CNN
F 1 "PWR_FLAG" H 3275 2449 50  0000 C CNN
F 2 "" H 3275 2275 50  0001 C CNN
F 3 "~" H 3275 2275 50  0001 C CNN
	1    3275 2275
	1    0    0    -1  
$EndComp
Connection ~ 3275 2275
Wire Wire Line
	3275 2275 3450 2275
Connection ~ 3275 1925
Wire Wire Line
	3275 1925 3450 1925
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5C49B721
P 3275 2700
F 0 "#FLG0101" H 3275 2775 50  0001 C CNN
F 1 "PWR_FLAG" H 3275 2874 50  0000 C CNN
F 2 "" H 3275 2700 50  0001 C CNN
F 3 "~" H 3275 2700 50  0001 C CNN
	1    3275 2700
	1    0    0    -1  
$EndComp
Connection ~ 3275 2700
Wire Wire Line
	3275 2700 3500 2700
Connection ~ 3975 2800
Wire Wire Line
	3050 2800 3975 2800
$EndSCHEMATC
