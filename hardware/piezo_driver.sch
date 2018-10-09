EESchema Schematic File Version 4
LIBS:piezo_driver-cache
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
L Amplifier_Operational:LM741 U1
U 1 1 5BBCC72F
P 4750 1550
F 0 "U1" H 5091 1596 50  0000 L CNN
F 1 "LM741" H 4900 1700 50  0000 L CNN
F 2 "Housings_DIP:DIP-8_W7.62mm_Socket" H 4800 1600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm741.pdf" H 4900 1700 50  0001 C CNN
	1    4750 1550
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:LM741 U2
U 1 1 5BBCCA31
P 4750 2800
F 0 "U2" H 5091 2846 50  0000 L CNN
F 1 "LM741" H 5091 2755 50  0000 L CNN
F 2 "Housings_DIP:DIP-8_W7.62mm_Socket" H 4800 2850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm741.pdf" H 4900 2950 50  0001 C CNN
	1    4750 2800
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:LM741 U5
U 1 1 5BBCCA38
P 6000 2900
F 0 "U5" H 6341 2946 50  0000 L CNN
F 1 "LM741" H 6341 2855 50  0000 L CNN
F 2 "Housings_DIP:DIP-8_W7.62mm_Socket" H 6050 2950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm741.pdf" H 6150 3050 50  0001 C CNN
	1    6000 2900
	1    0    0    1   
$EndComp
$Comp
L Device:R 100k1
U 1 1 5BBCD028
P 4200 1450
F 0 "100k1" V 4100 1450 50  0000 C CNN
F 1 "R" V 4300 1450 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4130 1450 50  0001 C CIN
F 3 "~" H 4200 1450 50  0001 C CNN
	1    4200 1450
	0    1    1    0   
$EndComp
$Comp
L power:Earth #PWR0101
U 1 1 5BBCD3A2
P 4400 1800
F 0 "#PWR0101" H 4400 1550 50  0001 C CNN
F 1 "Earth" H 4400 1650 50  0001 C CNN
F 2 "" H 4400 1800 50  0001 C CNN
F 3 "~" H 4400 1800 50  0001 C CNN
	1    4400 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 1650 4400 1650
Wire Wire Line
	4400 1650 4400 1800
Wire Wire Line
	4450 1450 4400 1450
$Comp
L power:-15V #PWR0103
U 1 1 5BBCD53F
P 4650 1250
F 0 "#PWR0103" H 4650 1350 50  0001 C CNN
F 1 "-15V" H 4665 1423 50  0000 C CNN
F 2 "" H 4650 1250 50  0001 C CNN
F 3 "" H 4650 1250 50  0001 C CNN
	1    4650 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:R 470k1
U 1 1 5BBCD8AF
P 4650 850
F 0 "470k1" V 4550 850 50  0000 C CNN
F 1 "R" V 4750 850 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4580 850 50  0001 C CIN
F 3 "~" H 4650 850 50  0001 C CNN
	1    4650 850 
	0    1    1    0   
$EndComp
Wire Wire Line
	4500 850  4400 850 
Wire Wire Line
	4400 850  4400 1450
Connection ~ 4400 1450
Wire Wire Line
	4400 1450 4350 1450
Wire Wire Line
	5050 1550 5100 1550
Wire Wire Line
	5100 1550 5100 850 
Wire Wire Line
	5100 850  4800 850 
Wire Wire Line
	4450 2900 4400 2900
$Comp
L Device:R 100k2
U 1 1 5BBCE3AF
P 4200 2700
F 0 "100k2" V 4100 2700 50  0000 C CNN
F 1 "R" V 4300 2700 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4130 2700 50  0001 C CIN
F 3 "~" H 4200 2700 50  0001 C CNN
	1    4200 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	4050 1450 4050 2700
Wire Wire Line
	4450 2700 4400 2700
$Comp
L Device:R 100k5
U 1 1 5BBCEA1E
P 4700 2250
F 0 "100k5" V 4600 2250 50  0000 C CNN
F 1 "R" V 4800 2250 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4630 2250 50  0001 C CIN
F 3 "~" H 4700 2250 50  0001 C CNN
	1    4700 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	4550 2250 4400 2250
Wire Wire Line
	4400 2250 4400 2700
Connection ~ 4400 2700
Wire Wire Line
	4400 2700 4350 2700
Wire Wire Line
	4850 2250 5050 2250
Wire Wire Line
	5050 2250 5050 2800
$Comp
L Device:R 100k7
U 1 1 5BBCF72D
P 5500 2800
F 0 "100k7" V 5400 2800 50  0000 C CNN
F 1 "R" V 5600 2800 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5430 2800 50  0001 C CIN
F 3 "~" H 5500 2800 50  0001 C CNN
	1    5500 2800
	0    1    1    0   
$EndComp
$Comp
L Device:R 470k3
U 1 1 5BBCFC71
P 5850 2200
F 0 "470k3" V 5750 2200 50  0000 C CNN
F 1 "R" V 5950 2200 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5780 2200 50  0001 C CIN
F 3 "~" H 5850 2200 50  0001 C CNN
	1    5850 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	5350 2800 5050 2800
Connection ~ 5050 2800
Wire Wire Line
	5700 2800 5650 2800
Wire Wire Line
	5650 2800 5650 2200
Wire Wire Line
	5650 2200 5700 2200
Connection ~ 5650 2800
Wire Wire Line
	6300 2900 6300 2200
Wire Wire Line
	6300 2200 6000 2200
$Comp
L power:Earth #PWR0107
U 1 1 5BBD0E0A
P 5500 3300
F 0 "#PWR0107" H 5500 3050 50  0001 C CNN
F 1 "Earth" H 5500 3150 50  0001 C CNN
F 2 "" H 5500 3300 50  0001 C CNN
F 3 "~" H 5500 3300 50  0001 C CNN
	1    5500 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	5700 3000 5650 3000
Wire Wire Line
	4050 1450 3550 1450
Wire Wire Line
	3550 1450 3550 1000
Connection ~ 4050 1450
Wire Wire Line
	5100 1550 6850 1550
Connection ~ 5100 1550
Connection ~ 6300 2900
Wire Wire Line
	6300 2900 6850 2900
Text Label 3650 1000 0    50   ~ 0
Input1
Text Label 6600 1450 0    50   ~ 0
Output_Inv_1
Text Label 6750 2750 0    50   ~ 0
Output_1
$Comp
L power:Earth #PWR0111
U 1 1 5BBD7BAB
P 4250 3300
F 0 "#PWR0111" H 4250 3050 50  0001 C CNN
F 1 "Earth" H 4250 3150 50  0001 C CNN
F 2 "" H 4250 3300 50  0001 C CNN
F 3 "~" H 4250 3300 50  0001 C CNN
	1    4250 3300
	0    1    -1   0   
$EndComp
$Comp
L power:+15V #PWR0102
U 1 1 5BBCFF3F
P 4650 1850
F 0 "#PWR0102" H 4650 1700 50  0001 C CNN
F 1 "+15V" H 4500 1900 50  0000 C CNN
F 2 "" H 4650 1850 50  0001 C CNN
F 3 "" H 4650 1850 50  0001 C CNN
	1    4650 1850
	-1   0    0    1   
$EndComp
$Comp
L power:-15V #PWR0104
U 1 1 5BBE472B
P 5900 2600
F 0 "#PWR0104" H 5900 2700 50  0001 C CNN
F 1 "-15V" V 6000 2750 50  0000 C CNN
F 2 "" H 5900 2600 50  0001 C CNN
F 3 "" H 5900 2600 50  0001 C CNN
	1    5900 2600
	0    -1   -1   0   
$EndComp
$Comp
L power:+15V #PWR0105
U 1 1 5BBEA0BB
P 4700 3300
F 0 "#PWR0105" H 4700 3150 50  0001 C CNN
F 1 "+15V" V 4600 3350 50  0000 C CNN
F 2 "" H 4700 3300 50  0001 C CNN
F 3 "" H 4700 3300 50  0001 C CNN
	1    4700 3300
	0    1    1    0   
$EndComp
$Comp
L power:+15V #PWR0106
U 1 1 5BBEF862
P 6350 3300
F 0 "#PWR0106" H 6350 3150 50  0001 C CNN
F 1 "+15V" V 6250 3350 50  0000 C CNN
F 2 "" H 6350 3300 50  0001 C CNN
F 3 "" H 6350 3300 50  0001 C CNN
	1    6350 3300
	0    1    1    0   
$EndComp
$Comp
L power:-15V #PWR0109
U 1 1 5BBF2A48
P 4650 2500
F 0 "#PWR0109" H 4650 2600 50  0001 C CNN
F 1 "-15V" V 4750 2650 50  0000 C CNN
F 2 "" H 4650 2500 50  0001 C CNN
F 3 "" H 4650 2500 50  0001 C CNN
	1    4650 2500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6350 3300 5900 3300
Wire Wire Line
	5900 3300 5900 3200
Wire Wire Line
	5650 3000 5650 3300
Wire Wire Line
	5650 3300 5500 3300
Wire Wire Line
	4400 2900 4400 3300
Wire Wire Line
	4400 3300 4250 3300
Wire Wire Line
	4650 3100 4650 3300
Wire Wire Line
	4700 3300 4650 3300
$Comp
L Amplifier_Operational:LM741 U4
U 1 1 5BBD0B61
P 4750 5050
F 0 "U4" H 5091 5096 50  0000 L CNN
F 1 "LM741" H 4900 5200 50  0000 L CNN
F 2 "Housings_DIP:DIP-8_W7.62mm_Socket" H 4800 5100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm741.pdf" H 4900 5200 50  0001 C CNN
	1    4750 5050
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM741 U3
U 1 1 5BBD0B68
P 4750 3800
F 0 "U3" H 5091 3846 50  0000 L CNN
F 1 "LM741" H 5091 3755 50  0000 L CNN
F 2 "Housings_DIP:DIP-8_W7.62mm_Socket" H 4800 3850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm741.pdf" H 4900 3950 50  0001 C CNN
	1    4750 3800
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM741 U6
U 1 1 5BBD0B6F
P 6000 3700
F 0 "U6" H 6341 3746 50  0000 L CNN
F 1 "LM741" H 6341 3655 50  0000 L CNN
F 2 "Housings_DIP:DIP-8_W7.62mm_Socket" H 6050 3750 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm741.pdf" H 6150 3850 50  0001 C CNN
	1    6000 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:R 100k4
U 1 1 5BBD0B76
P 4200 5150
F 0 "100k4" V 4100 5150 50  0000 C CNN
F 1 "R" V 4300 5150 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4130 5150 50  0001 C CIN
F 3 "~" H 4200 5150 50  0001 C CNN
	1    4200 5150
	0    1    -1   0   
$EndComp
$Comp
L power:Earth #PWR0108
U 1 1 5BBD0B7D
P 4400 4800
F 0 "#PWR0108" H 4400 4550 50  0001 C CNN
F 1 "Earth" H 4400 4650 50  0001 C CNN
F 2 "" H 4400 4800 50  0001 C CNN
F 3 "~" H 4400 4800 50  0001 C CNN
	1    4400 4800
	1    0    0    1   
$EndComp
Wire Wire Line
	4450 4950 4400 4950
Wire Wire Line
	4400 4950 4400 4800
Wire Wire Line
	4450 5150 4400 5150
$Comp
L power:-15V #PWR0110
U 1 1 5BBD0B86
P 4650 5350
F 0 "#PWR0110" H 4650 5450 50  0001 C CNN
F 1 "-15V" H 4665 5523 50  0000 C CNN
F 2 "" H 4650 5350 50  0001 C CNN
F 3 "" H 4650 5350 50  0001 C CNN
	1    4650 5350
	1    0    0    1   
$EndComp
$Comp
L Device:R 470k2
U 1 1 5BBD0B8C
P 4650 5750
F 0 "470k2" V 4550 5750 50  0000 C CNN
F 1 "R" V 4750 5750 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4580 5750 50  0001 C CIN
F 3 "~" H 4650 5750 50  0001 C CNN
	1    4650 5750
	0    1    -1   0   
$EndComp
Wire Wire Line
	4500 5750 4400 5750
Wire Wire Line
	4400 5750 4400 5150
Connection ~ 4400 5150
Wire Wire Line
	4400 5150 4350 5150
Wire Wire Line
	5050 5050 5100 5050
Wire Wire Line
	5100 5050 5100 5750
Wire Wire Line
	5100 5750 4800 5750
Wire Wire Line
	4450 3700 4400 3700
$Comp
L Device:R 100k3
U 1 1 5BBD0B9B
P 4200 3900
F 0 "100k3" V 4100 3900 50  0000 C CNN
F 1 "R" V 4300 3900 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4130 3900 50  0001 C CIN
F 3 "~" H 4200 3900 50  0001 C CNN
	1    4200 3900
	0    1    -1   0   
$EndComp
Wire Wire Line
	4050 5150 4050 3900
Wire Wire Line
	4450 3900 4400 3900
$Comp
L Device:R 100k6
U 1 1 5BBD0BA4
P 4700 4350
F 0 "100k6" V 4600 4350 50  0000 C CNN
F 1 "R" V 4800 4350 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4630 4350 50  0001 C CIN
F 3 "~" H 4700 4350 50  0001 C CNN
	1    4700 4350
	0    1    -1   0   
$EndComp
Wire Wire Line
	4550 4350 4400 4350
Wire Wire Line
	4400 4350 4400 3900
Connection ~ 4400 3900
Wire Wire Line
	4400 3900 4350 3900
Wire Wire Line
	4850 4350 5050 4350
Wire Wire Line
	5050 4350 5050 3800
$Comp
L Device:R 100k8
U 1 1 5BBD0BB1
P 5500 3800
F 0 "100k8" V 5400 3800 50  0000 C CNN
F 1 "R" V 5600 3800 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5430 3800 50  0001 C CIN
F 3 "~" H 5500 3800 50  0001 C CNN
	1    5500 3800
	0    1    -1   0   
$EndComp
$Comp
L Device:R 470k4
U 1 1 5BBD0BB8
P 5850 4400
F 0 "470k4" V 5750 4400 50  0000 C CNN
F 1 "R" V 5950 4400 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5780 4400 50  0001 C CIN
F 3 "~" H 5850 4400 50  0001 C CNN
	1    5850 4400
	0    1    -1   0   
$EndComp
Wire Wire Line
	5350 3800 5050 3800
Connection ~ 5050 3800
Wire Wire Line
	5700 3800 5650 3800
Wire Wire Line
	5650 3800 5650 4400
Wire Wire Line
	5650 4400 5700 4400
Connection ~ 5650 3800
Wire Wire Line
	6300 3700 6300 4400
Wire Wire Line
	6300 4400 6000 4400
Wire Wire Line
	5700 3600 5650 3600
Wire Wire Line
	4050 5150 3550 5150
Wire Wire Line
	3550 5150 3550 5600
Connection ~ 4050 5150
Wire Wire Line
	5100 5050 6850 5050
Connection ~ 5100 5050
Connection ~ 6300 3700
Wire Wire Line
	6300 3700 6850 3700
Text Label 3650 5600 0    50   ~ 0
Input1
Text Label 6600 5150 0    50   ~ 0
Output_Inv_1
Text Label 6750 3850 0    50   ~ 0
Output_1
$Comp
L power:+15V #PWR0112
U 1 1 5BBD0BDE
P 4650 4750
F 0 "#PWR0112" H 4650 4600 50  0001 C CNN
F 1 "+15V" H 4500 4800 50  0000 C CNN
F 2 "" H 4650 4750 50  0001 C CNN
F 3 "" H 4650 4750 50  0001 C CNN
	1    4650 4750
	-1   0    0    -1  
$EndComp
$Comp
L power:-15V #PWR0113
U 1 1 5BBD0BE4
P 5900 4000
F 0 "#PWR0113" H 5900 4100 50  0001 C CNN
F 1 "-15V" V 6000 4150 50  0000 C CNN
F 2 "" H 5900 4000 50  0001 C CNN
F 3 "" H 5900 4000 50  0001 C CNN
	1    5900 4000
	0    -1   1    0   
$EndComp
$Comp
L power:-15V #PWR0114
U 1 1 5BBD0BF6
P 4650 4100
F 0 "#PWR0114" H 4650 4200 50  0001 C CNN
F 1 "-15V" V 4750 4250 50  0000 C CNN
F 2 "" H 4650 4100 50  0001 C CNN
F 3 "" H 4650 4100 50  0001 C CNN
	1    4650 4100
	0    -1   1    0   
$EndComp
Wire Wire Line
	5900 3300 5900 3400
Wire Wire Line
	5650 3600 5650 3300
Wire Wire Line
	4400 3700 4400 3300
Connection ~ 4400 3300
Connection ~ 5650 3300
Connection ~ 5900 3300
Wire Wire Line
	4650 3500 4650 3300
Connection ~ 4650 3300
$EndSCHEMATC
