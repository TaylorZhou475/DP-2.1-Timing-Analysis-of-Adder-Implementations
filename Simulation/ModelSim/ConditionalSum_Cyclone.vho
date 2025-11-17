-- Copyright (C) 2024  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 23.1std.1 Build 993 05/14/2024 SC Lite Edition"

-- DATE "11/16/2025 15:43:28"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ConditionalSum IS
    PORT (
	A : IN std_logic_vector(63 DOWNTO 0);
	B : IN std_logic_vector(63 DOWNTO 0);
	Cin : IN std_logic;
	S : OUT std_logic_vector(63 DOWNTO 0);
	Cout : OUT std_logic;
	Ovfl : OUT std_logic
	);
END ConditionalSum;

-- Design Ports Information
-- S[0]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[16]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[17]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[18]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[19]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[20]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[21]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[22]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[23]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[24]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[25]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[26]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[27]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[28]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[29]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[30]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[31]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[32]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[33]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[34]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[35]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[36]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[37]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[38]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[39]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[40]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[41]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[42]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[43]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[44]	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[45]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[46]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[47]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[48]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[49]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[50]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[51]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[52]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[53]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[54]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[55]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[56]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[57]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[58]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[59]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[60]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[61]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[62]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[63]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[32]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[32]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[33]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[33]	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[34]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[34]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[35]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[35]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[36]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[36]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[37]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[37]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[38]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[38]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[39]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[39]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[40]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[40]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[41]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[41]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[42]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[42]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[43]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[43]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[44]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[44]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[45]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[45]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[46]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[46]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[47]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[47]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[48]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[48]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[49]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[49]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[50]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[50]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[51]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[51]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[52]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[52]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[53]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[53]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[54]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[54]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[55]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[55]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[56]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[56]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[57]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[57]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[58]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[58]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[59]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[59]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[60]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[60]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[61]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[61]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[62]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[62]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[63]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[63]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ConditionalSum IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_Cin : std_logic;
SIGNAL ww_S : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_Cout : std_logic;
SIGNAL ww_Ovfl : std_logic;
SIGNAL \S[0]~output_o\ : std_logic;
SIGNAL \S[1]~output_o\ : std_logic;
SIGNAL \S[2]~output_o\ : std_logic;
SIGNAL \S[3]~output_o\ : std_logic;
SIGNAL \S[4]~output_o\ : std_logic;
SIGNAL \S[5]~output_o\ : std_logic;
SIGNAL \S[6]~output_o\ : std_logic;
SIGNAL \S[7]~output_o\ : std_logic;
SIGNAL \S[8]~output_o\ : std_logic;
SIGNAL \S[9]~output_o\ : std_logic;
SIGNAL \S[10]~output_o\ : std_logic;
SIGNAL \S[11]~output_o\ : std_logic;
SIGNAL \S[12]~output_o\ : std_logic;
SIGNAL \S[13]~output_o\ : std_logic;
SIGNAL \S[14]~output_o\ : std_logic;
SIGNAL \S[15]~output_o\ : std_logic;
SIGNAL \S[16]~output_o\ : std_logic;
SIGNAL \S[17]~output_o\ : std_logic;
SIGNAL \S[18]~output_o\ : std_logic;
SIGNAL \S[19]~output_o\ : std_logic;
SIGNAL \S[20]~output_o\ : std_logic;
SIGNAL \S[21]~output_o\ : std_logic;
SIGNAL \S[22]~output_o\ : std_logic;
SIGNAL \S[23]~output_o\ : std_logic;
SIGNAL \S[24]~output_o\ : std_logic;
SIGNAL \S[25]~output_o\ : std_logic;
SIGNAL \S[26]~output_o\ : std_logic;
SIGNAL \S[27]~output_o\ : std_logic;
SIGNAL \S[28]~output_o\ : std_logic;
SIGNAL \S[29]~output_o\ : std_logic;
SIGNAL \S[30]~output_o\ : std_logic;
SIGNAL \S[31]~output_o\ : std_logic;
SIGNAL \S[32]~output_o\ : std_logic;
SIGNAL \S[33]~output_o\ : std_logic;
SIGNAL \S[34]~output_o\ : std_logic;
SIGNAL \S[35]~output_o\ : std_logic;
SIGNAL \S[36]~output_o\ : std_logic;
SIGNAL \S[37]~output_o\ : std_logic;
SIGNAL \S[38]~output_o\ : std_logic;
SIGNAL \S[39]~output_o\ : std_logic;
SIGNAL \S[40]~output_o\ : std_logic;
SIGNAL \S[41]~output_o\ : std_logic;
SIGNAL \S[42]~output_o\ : std_logic;
SIGNAL \S[43]~output_o\ : std_logic;
SIGNAL \S[44]~output_o\ : std_logic;
SIGNAL \S[45]~output_o\ : std_logic;
SIGNAL \S[46]~output_o\ : std_logic;
SIGNAL \S[47]~output_o\ : std_logic;
SIGNAL \S[48]~output_o\ : std_logic;
SIGNAL \S[49]~output_o\ : std_logic;
SIGNAL \S[50]~output_o\ : std_logic;
SIGNAL \S[51]~output_o\ : std_logic;
SIGNAL \S[52]~output_o\ : std_logic;
SIGNAL \S[53]~output_o\ : std_logic;
SIGNAL \S[54]~output_o\ : std_logic;
SIGNAL \S[55]~output_o\ : std_logic;
SIGNAL \S[56]~output_o\ : std_logic;
SIGNAL \S[57]~output_o\ : std_logic;
SIGNAL \S[58]~output_o\ : std_logic;
SIGNAL \S[59]~output_o\ : std_logic;
SIGNAL \S[60]~output_o\ : std_logic;
SIGNAL \S[61]~output_o\ : std_logic;
SIGNAL \S[62]~output_o\ : std_logic;
SIGNAL \S[63]~output_o\ : std_logic;
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \Ovfl~output_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:0:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:0:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|sum~combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|sum~combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~1_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~2_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|sum~combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|sum~combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|sum~combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|sum~combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|sum~combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~1_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~2_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|sum~combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|sum~combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|sum~combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|sum~combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|sum~combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|sum~combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|sum~combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|sum~combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|S[16]~0_combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|S[17]~1_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|S[18]~2_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|S[19]~3_combout\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|S[20]~4_combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|S[21]~5_combout\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|S[22]~6_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|S[23]~7_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|S[24]~8_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|S[25]~9_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|S[26]~10_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|S[27]~11_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|S[28]~12_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|S[29]~13_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|S[30]~14_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|S[31]~15_combout\ : std_logic;
SIGNAL \B[32]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Cout~0_combout\ : std_logic;
SIGNAL \A[32]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Cout~1_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Cout~2_combout\ : std_logic;
SIGNAL \S~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Cout~3_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Lower_Half|Cout~4_combout\ : std_logic;
SIGNAL \B[33]~input_o\ : std_logic;
SIGNAL \A[33]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \S~1_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \A[34]~input_o\ : std_logic;
SIGNAL \B[34]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \S~2_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \A[35]~input_o\ : std_logic;
SIGNAL \B[35]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \S~3_combout\ : std_logic;
SIGNAL \A[36]~input_o\ : std_logic;
SIGNAL \B[36]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \S~4_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \A[37]~input_o\ : std_logic;
SIGNAL \B[37]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \S~5_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \A[38]~input_o\ : std_logic;
SIGNAL \B[38]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \S~6_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \B[39]~input_o\ : std_logic;
SIGNAL \A[39]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \S~7_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \B[40]~input_o\ : std_logic;
SIGNAL \A[40]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \S~8_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \B[41]~input_o\ : std_logic;
SIGNAL \A[41]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \S~9_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \B[42]~input_o\ : std_logic;
SIGNAL \A[42]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \S~10_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \B[43]~input_o\ : std_logic;
SIGNAL \A[43]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \S~11_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \B[44]~input_o\ : std_logic;
SIGNAL \A[44]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \S~12_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \B[45]~input_o\ : std_logic;
SIGNAL \A[45]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \S~13_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \A[46]~input_o\ : std_logic;
SIGNAL \B[46]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \S~14_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \A[47]~input_o\ : std_logic;
SIGNAL \B[47]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \S~15_combout\ : std_logic;
SIGNAL \B[48]~input_o\ : std_logic;
SIGNAL \A[48]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|S[16]~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \S~16_combout\ : std_logic;
SIGNAL \S~17_combout\ : std_logic;
SIGNAL \A[49]~input_o\ : std_logic;
SIGNAL \B[49]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \S~18_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \A[50]~input_o\ : std_logic;
SIGNAL \B[50]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \S~19_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \B[51]~input_o\ : std_logic;
SIGNAL \A[51]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \S~20_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \A[52]~input_o\ : std_logic;
SIGNAL \B[52]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \S~21_combout\ : std_logic;
SIGNAL \B[53]~input_o\ : std_logic;
SIGNAL \A[53]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \S~22_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \A[54]~input_o\ : std_logic;
SIGNAL \B[54]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \S~23_combout\ : std_logic;
SIGNAL \B[55]~input_o\ : std_logic;
SIGNAL \A[55]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \S~24_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \A[56]~input_o\ : std_logic;
SIGNAL \B[56]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \S~25_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \B[57]~input_o\ : std_logic;
SIGNAL \A[57]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \S~26_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \B[58]~input_o\ : std_logic;
SIGNAL \A[58]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \S~27_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \B[59]~input_o\ : std_logic;
SIGNAL \A[59]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \S~28_combout\ : std_logic;
SIGNAL \B[60]~input_o\ : std_logic;
SIGNAL \A[60]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \S~29_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \B[61]~input_o\ : std_logic;
SIGNAL \A[61]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \S~30_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \A[62]~input_o\ : std_logic;
SIGNAL \B[62]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \S~31_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \A[63]~input_o\ : std_logic;
SIGNAL \B[63]~input_o\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \S~32_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Cout~0_combout\ : std_logic;
SIGNAL \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|Ovfl~combout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
ww_Cin <= Cin;
S <= ww_S;
Cout <= ww_Cout;
Ovfl <= ww_Ovfl;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X49_Y73_N23
\S[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:0:FA_inst|sum~0_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\S[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\S[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\S[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\S[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\S[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\S[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\S[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\S[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[8]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\S[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X0_Y14_N2
\S[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[10]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\S[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[11]~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\S[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[12]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\S[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[13]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\S[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[14]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\S[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[15]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\S[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Recursive_Step_Generate:CSA_Lower_Half|S[16]~0_combout\,
	devoe => ww_devoe,
	o => \S[16]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\S[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Recursive_Step_Generate:CSA_Lower_Half|S[17]~1_combout\,
	devoe => ww_devoe,
	o => \S[17]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\S[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Recursive_Step_Generate:CSA_Lower_Half|S[18]~2_combout\,
	devoe => ww_devoe,
	o => \S[18]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\S[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Recursive_Step_Generate:CSA_Lower_Half|S[19]~3_combout\,
	devoe => ww_devoe,
	o => \S[19]~output_o\);

-- Location: IOOBUF_X42_Y0_N16
\S[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Recursive_Step_Generate:CSA_Lower_Half|S[20]~4_combout\,
	devoe => ww_devoe,
	o => \S[20]~output_o\);

-- Location: IOOBUF_X42_Y0_N23
\S[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Recursive_Step_Generate:CSA_Lower_Half|S[21]~5_combout\,
	devoe => ww_devoe,
	o => \S[21]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\S[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Recursive_Step_Generate:CSA_Lower_Half|S[22]~6_combout\,
	devoe => ww_devoe,
	o => \S[22]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\S[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Recursive_Step_Generate:CSA_Lower_Half|S[23]~7_combout\,
	devoe => ww_devoe,
	o => \S[23]~output_o\);

-- Location: IOOBUF_X27_Y0_N9
\S[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Recursive_Step_Generate:CSA_Lower_Half|S[24]~8_combout\,
	devoe => ww_devoe,
	o => \S[24]~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\S[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Recursive_Step_Generate:CSA_Lower_Half|S[25]~9_combout\,
	devoe => ww_devoe,
	o => \S[25]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\S[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Recursive_Step_Generate:CSA_Lower_Half|S[26]~10_combout\,
	devoe => ww_devoe,
	o => \S[26]~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\S[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Recursive_Step_Generate:CSA_Lower_Half|S[27]~11_combout\,
	devoe => ww_devoe,
	o => \S[27]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\S[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Recursive_Step_Generate:CSA_Lower_Half|S[28]~12_combout\,
	devoe => ww_devoe,
	o => \S[28]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\S[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Recursive_Step_Generate:CSA_Lower_Half|S[29]~13_combout\,
	devoe => ww_devoe,
	o => \S[29]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\S[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Recursive_Step_Generate:CSA_Lower_Half|S[30]~14_combout\,
	devoe => ww_devoe,
	o => \S[30]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\S[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Recursive_Step_Generate:CSA_Lower_Half|S[31]~15_combout\,
	devoe => ww_devoe,
	o => \S[31]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\S[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~0_combout\,
	devoe => ww_devoe,
	o => \S[32]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\S[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~1_combout\,
	devoe => ww_devoe,
	o => \S[33]~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\S[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~2_combout\,
	devoe => ww_devoe,
	o => \S[34]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\S[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~3_combout\,
	devoe => ww_devoe,
	o => \S[35]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\S[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~4_combout\,
	devoe => ww_devoe,
	o => \S[36]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\S[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~5_combout\,
	devoe => ww_devoe,
	o => \S[37]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\S[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~6_combout\,
	devoe => ww_devoe,
	o => \S[38]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\S[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~7_combout\,
	devoe => ww_devoe,
	o => \S[39]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\S[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~8_combout\,
	devoe => ww_devoe,
	o => \S[40]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\S[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~9_combout\,
	devoe => ww_devoe,
	o => \S[41]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\S[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~10_combout\,
	devoe => ww_devoe,
	o => \S[42]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\S[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~11_combout\,
	devoe => ww_devoe,
	o => \S[43]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\S[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~12_combout\,
	devoe => ww_devoe,
	o => \S[44]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\S[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~13_combout\,
	devoe => ww_devoe,
	o => \S[45]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\S[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~14_combout\,
	devoe => ww_devoe,
	o => \S[46]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\S[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~15_combout\,
	devoe => ww_devoe,
	o => \S[47]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\S[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~16_combout\,
	devoe => ww_devoe,
	o => \S[48]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\S[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~18_combout\,
	devoe => ww_devoe,
	o => \S[49]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\S[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~19_combout\,
	devoe => ww_devoe,
	o => \S[50]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\S[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~20_combout\,
	devoe => ww_devoe,
	o => \S[51]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\S[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~21_combout\,
	devoe => ww_devoe,
	o => \S[52]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\S[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~22_combout\,
	devoe => ww_devoe,
	o => \S[53]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\S[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~23_combout\,
	devoe => ww_devoe,
	o => \S[54]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\S[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~24_combout\,
	devoe => ww_devoe,
	o => \S[55]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\S[56]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~25_combout\,
	devoe => ww_devoe,
	o => \S[56]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\S[57]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~26_combout\,
	devoe => ww_devoe,
	o => \S[57]~output_o\);

-- Location: IOOBUF_X85_Y0_N16
\S[58]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~27_combout\,
	devoe => ww_devoe,
	o => \S[58]~output_o\);

-- Location: IOOBUF_X79_Y0_N2
\S[59]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~28_combout\,
	devoe => ww_devoe,
	o => \S[59]~output_o\);

-- Location: IOOBUF_X81_Y0_N16
\S[60]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~29_combout\,
	devoe => ww_devoe,
	o => \S[60]~output_o\);

-- Location: IOOBUF_X91_Y0_N16
\S[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~30_combout\,
	devoe => ww_devoe,
	o => \S[61]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\S[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~31_combout\,
	devoe => ww_devoe,
	o => \S[62]~output_o\);

-- Location: IOOBUF_X91_Y0_N23
\S[63]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~32_combout\,
	devoe => ww_devoe,
	o => \S[63]~output_o\);

-- Location: IOOBUF_X85_Y0_N23
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Cout~0_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X89_Y0_N2
\Ovfl~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ovfl~0_combout\,
	devoe => ww_devoe,
	o => \Ovfl~output_o\);

-- Location: IOIBUF_X38_Y73_N1
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X35_Y73_N15
\Cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X47_Y73_N1
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X38_Y72_N24
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:0:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:0:FA_inst|sum~0_combout\ = \A[0]~input_o\ $ (\Cin~input_o\ $ (\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[0]~input_o\,
	datac => \Cin~input_o\,
	datad => \B[0]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:0:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X38_Y72_N10
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:0:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:0:FA_inst|cout~0_combout\ = (\A[0]~input_o\ & ((\Cin~input_o\) # (\B[0]~input_o\))) # (!\A[0]~input_o\ & (\Cin~input_o\ & 
-- \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[0]~input_o\,
	datac => \Cin~input_o\,
	datad => \B[0]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:0:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X38_Y73_N15
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X40_Y73_N1
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X38_Y72_N28
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|sum~combout\ = 
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:0:FA_inst|cout~0_combout\ $ (\A[1]~input_o\ $ (\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:0:FA_inst|cout~0_combout\,
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|sum~combout\);

-- Location: IOIBUF_X45_Y73_N1
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X40_Y73_N8
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X38_Y72_N14
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|sum~0_combout\ = \B[2]~input_o\ $ (\A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \A[2]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X38_Y72_N0
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|sum~combout\ = 
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|sum~0_combout\ $ 
-- (((\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:0:FA_inst|cout~0_combout\ & ((\A[1]~input_o\) # (\B[1]~input_o\))) # 
-- (!\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:0:FA_inst|cout~0_combout\ & (\A[1]~input_o\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:0:FA_inst|cout~0_combout\,
	datab => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|sum~0_combout\,
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|sum~combout\);

-- Location: LCCOMB_X38_Y72_N26
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0_combout\ = (\B[2]~input_o\ & \A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \A[2]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X42_Y73_N1
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X38_Y72_N20
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~1_combout\ = (\B[2]~input_o\) # (\A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \A[2]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~1_combout\);

-- Location: LCCOMB_X38_Y72_N22
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~2_combout\ = 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~1_combout\ & 
-- ((\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:0:FA_inst|cout~0_combout\ & ((\A[1]~input_o\) # (\B[1]~input_o\))) # 
-- (!\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:0:FA_inst|cout~0_combout\ & (\A[1]~input_o\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:0:FA_inst|cout~0_combout\,
	datab => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~1_combout\,
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~2_combout\);

-- Location: IOIBUF_X42_Y73_N8
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X38_Y72_N16
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|sum~combout\ = \B[3]~input_o\ $ (\A[3]~input_o\ $ 
-- (((\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0_combout\) # 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0_combout\,
	datab => \B[3]~input_o\,
	datac => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~2_combout\,
	datad => \A[3]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|sum~combout\);

-- Location: IOIBUF_X35_Y73_N22
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X31_Y73_N8
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X38_Y72_N18
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0_combout\ = (\B[3]~input_o\ & 
-- ((\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0_combout\) # 
-- ((\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~2_combout\) # (\A[3]~input_o\)))) # (!\B[3]~input_o\ & (\A[3]~input_o\ & 
-- ((\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0_combout\) # 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0_combout\,
	datab => \B[3]~input_o\,
	datac => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~2_combout\,
	datad => \A[3]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X38_Y72_N12
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|sum~combout\ = \A[4]~input_o\ $ (\B[4]~input_o\ $ 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datac => \B[4]~input_o\,
	datad => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|sum~combout\);

-- Location: IOIBUF_X45_Y73_N8
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X38_Y73_N8
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X38_Y72_N30
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0_combout\ = (\A[4]~input_o\ & ((\B[4]~input_o\) # 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0_combout\))) # (!\A[4]~input_o\ & (\B[4]~input_o\ & 
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datac => \B[4]~input_o\,
	datad => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X38_Y72_N8
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|sum~combout\ = \A[5]~input_o\ $ (\B[5]~input_o\ $ 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datac => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|sum~combout\);

-- Location: IOIBUF_X0_Y15_N15
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X23_Y73_N15
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X38_Y72_N2
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0_combout\ = (\A[5]~input_o\ & ((\B[5]~input_o\) # 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0_combout\))) # (!\A[5]~input_o\ & (\B[5]~input_o\ & 
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datac => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X38_Y72_N4
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|sum~combout\ = \B[6]~input_o\ $ (\A[6]~input_o\ $ 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datad => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|sum~combout\);

-- Location: IOIBUF_X0_Y12_N15
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X1_Y7_N0
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|sum~0_combout\ = \A[7]~input_o\ $ (\B[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datac => \B[7]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X38_Y72_N6
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|sum~combout\ = 
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|sum~0_combout\ $ (((\B[6]~input_o\ & ((\A[6]~input_o\) # 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0_combout\))) # (!\B[6]~input_o\ & (\A[6]~input_o\ & 
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datac => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|sum~0_combout\,
	datad => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|sum~combout\);

-- Location: LCCOMB_X1_Y7_N26
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0_combout\ = (\A[7]~input_o\ & \B[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datac => \B[7]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X0_Y7_N8
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X0_Y4_N22
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X1_Y7_N28
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~1_combout\ = (\A[7]~input_o\) # (\B[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datac => \B[7]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~1_combout\);

-- Location: LCCOMB_X8_Y9_N8
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~2_combout\ = 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~1_combout\ & ((\A[6]~input_o\ & ((\B[6]~input_o\) # 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0_combout\))) # (!\A[6]~input_o\ & (\B[6]~input_o\ & 
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~1_combout\,
	datac => \B[6]~input_o\,
	datad => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~2_combout\);

-- Location: LCCOMB_X1_Y7_N30
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|sum~combout\ = \B[8]~input_o\ $ (\A[8]~input_o\ $ 
-- (((\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0_combout\) # 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0_combout\,
	datab => \B[8]~input_o\,
	datac => \A[8]~input_o\,
	datad => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~2_combout\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|sum~combout\);

-- Location: IOIBUF_X0_Y10_N15
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X0_Y8_N22
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X1_Y7_N16
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0_combout\ = (\B[8]~input_o\ & 
-- ((\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0_combout\) # ((\A[8]~input_o\) # 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~2_combout\)))) # (!\B[8]~input_o\ & (\A[8]~input_o\ & 
-- ((\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0_combout\) # 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0_combout\,
	datab => \B[8]~input_o\,
	datac => \A[8]~input_o\,
	datad => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~2_combout\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X1_Y7_N2
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|sum~combout\ = \B[9]~input_o\ $ (\A[9]~input_o\ $ 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \A[9]~input_o\,
	datad => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|sum~combout\);

-- Location: IOIBUF_X0_Y11_N15
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X0_Y6_N1
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LCCOMB_X1_Y7_N12
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0_combout\ = (\B[9]~input_o\ & ((\A[9]~input_o\) # 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0_combout\))) # (!\B[9]~input_o\ & (\A[9]~input_o\ & 
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \A[9]~input_o\,
	datad => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X1_Y7_N6
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|sum~combout\ = \A[10]~input_o\ $ (\B[10]~input_o\ $ 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[10]~input_o\,
	datac => \B[10]~input_o\,
	datad => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|sum~combout\);

-- Location: IOIBUF_X1_Y0_N8
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X3_Y0_N22
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LCCOMB_X1_Y7_N24
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0_combout\ = (\A[10]~input_o\ & ((\B[10]~input_o\) # 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0_combout\))) # (!\A[10]~input_o\ & (\B[10]~input_o\ & 
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[10]~input_o\,
	datac => \B[10]~input_o\,
	datad => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X1_Y7_N10
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|sum~combout\ = \B[11]~input_o\ $ (\A[11]~input_o\ $ 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[11]~input_o\,
	datac => \A[11]~input_o\,
	datad => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|sum~combout\);

-- Location: IOIBUF_X0_Y12_N22
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LCCOMB_X1_Y7_N20
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0_combout\ = (\B[11]~input_o\ & ((\A[11]~input_o\) # 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0_combout\))) # (!\B[11]~input_o\ & (\A[11]~input_o\ & 
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[11]~input_o\,
	datac => \A[11]~input_o\,
	datad => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X1_Y7_N14
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|sum~combout\ = \A[12]~input_o\ $ (\B[12]~input_o\ $ 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[12]~input_o\,
	datac => \B[12]~input_o\,
	datad => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|sum~combout\);

-- Location: IOIBUF_X0_Y4_N1
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LCCOMB_X1_Y7_N8
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0_combout\ = (\A[12]~input_o\ & ((\B[12]~input_o\) # 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0_combout\))) # (!\A[12]~input_o\ & (\B[12]~input_o\ & 
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[12]~input_o\,
	datac => \B[12]~input_o\,
	datad => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X1_Y7_N18
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|sum~combout\ = \A[13]~input_o\ $ (\B[13]~input_o\ $ 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \B[13]~input_o\,
	datac => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|sum~combout\);

-- Location: LCCOMB_X1_Y7_N4
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0_combout\ = (\A[13]~input_o\ & ((\B[13]~input_o\) # 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0_combout\))) # (!\A[13]~input_o\ & (\B[13]~input_o\ & 
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \B[13]~input_o\,
	datac => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X5_Y0_N8
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X4_Y1_N24
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|sum~combout\ = 
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0_combout\ $ (\A[14]~input_o\ $ (\B[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0_combout\,
	datac => \A[14]~input_o\,
	datad => \B[14]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|sum~combout\);

-- Location: IOIBUF_X3_Y0_N15
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X7_Y0_N22
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LCCOMB_X4_Y1_N10
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\ = 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0_combout\ & ((\A[14]~input_o\) # (\B[14]~input_o\))) # 
-- (!\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0_combout\ & (\A[14]~input_o\ & \B[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0_combout\,
	datac => \A[14]~input_o\,
	datad => \B[14]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X4_Y1_N28
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|sum~combout\ = \A[15]~input_o\ $ (\B[15]~input_o\ $ 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \B[15]~input_o\,
	datad => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|sum~combout\);

-- Location: LCCOMB_X4_Y1_N22
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\ = (\A[15]~input_o\ & ((\B[15]~input_o\) # 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\))) # (!\A[15]~input_o\ & (\B[15]~input_o\ & 
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \B[15]~input_o\,
	datad => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X58_Y73_N8
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: IOIBUF_X54_Y73_N8
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: LCCOMB_X53_Y69_N0
\Recursive_Step_Generate:CSA_Lower_Half|S[16]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|S[16]~0_combout\ = \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\ $ (\A[16]~input_o\ $ (\B[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\,
	datac => \A[16]~input_o\,
	datad => \B[16]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|S[16]~0_combout\);

-- Location: IOIBUF_X49_Y73_N15
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X52_Y73_N22
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: LCCOMB_X53_Y69_N26
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|sum~0_combout\ = \B[17]~input_o\ $ (\A[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[17]~input_o\,
	datad => \A[17]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X53_Y69_N12
\Recursive_Step_Generate:CSA_Lower_Half|S[17]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|S[17]~1_combout\ = \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|sum~0_combout\ $ 
-- (((\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\ & ((\A[16]~input_o\) # (\B[16]~input_o\))) # 
-- (!\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\ & (\A[16]~input_o\ & \B[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|sum~0_combout\,
	datab => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\,
	datac => \A[16]~input_o\,
	datad => \B[16]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|S[17]~1_combout\);

-- Location: LCCOMB_X53_Y69_N6
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|cout~0_combout\ = (\A[17]~input_o\ & ((\B[17]~input_o\) # ((\A[16]~input_o\ & \B[16]~input_o\)))) # (!\A[17]~input_o\ & 
-- (\B[17]~input_o\ & (\A[16]~input_o\ & \B[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \B[17]~input_o\,
	datac => \A[16]~input_o\,
	datad => \B[16]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X58_Y73_N1
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: IOIBUF_X52_Y73_N15
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: LCCOMB_X53_Y69_N18
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|sum~0_combout\ = \A[18]~input_o\ $ (\B[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datac => \B[18]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X53_Y69_N24
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|cout~0_combout\ = (\A[17]~input_o\ & ((\B[17]~input_o\) # ((\A[16]~input_o\) # (\B[16]~input_o\)))) # (!\A[17]~input_o\ 
-- & (\B[17]~input_o\ & ((\A[16]~input_o\) # (\B[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \B[17]~input_o\,
	datac => \A[16]~input_o\,
	datad => \B[16]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X53_Y69_N20
\Recursive_Step_Generate:CSA_Lower_Half|S[18]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|S[18]~2_combout\ = \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|sum~0_combout\ $ 
-- (((\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\ & 
-- ((\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|cout~0_combout\))) # 
-- (!\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\ & 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|cout~0_combout\,
	datab => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|sum~0_combout\,
	datac => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\,
	datad => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|S[18]~2_combout\);

-- Location: IOIBUF_X54_Y73_N1
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: IOIBUF_X60_Y73_N1
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: LCCOMB_X53_Y69_N10
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|sum~0_combout\ = \A[19]~input_o\ $ (\B[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[19]~input_o\,
	datad => \B[19]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X53_Y69_N16
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0_combout\ = (\A[18]~input_o\ & 
-- ((\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|cout~0_combout\) # (\B[18]~input_o\))) # (!\A[18]~input_o\ & 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|cout~0_combout\ & \B[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|cout~0_combout\,
	datac => \B[18]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X53_Y69_N22
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0_combout\ = (\B[18]~input_o\ & ((\A[18]~input_o\) # 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|cout~0_combout\))) # (!\B[18]~input_o\ & (\A[18]~input_o\ & 
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[18]~input_o\,
	datac => \A[18]~input_o\,
	datad => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X53_Y69_N4
\Recursive_Step_Generate:CSA_Lower_Half|S[19]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|S[19]~3_combout\ = \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|sum~0_combout\ $ 
-- (((\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\ & 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0_combout\)) # 
-- (!\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\ & 
-- ((\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|sum~0_combout\,
	datab => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0_combout\,
	datac => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0_combout\,
	datad => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|S[19]~3_combout\);

-- Location: IOIBUF_X49_Y0_N8
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: IOIBUF_X49_Y0_N15
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: LCCOMB_X46_Y4_N8
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|sum~0_combout\ = \B[20]~input_o\ $ (\A[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[20]~input_o\,
	datad => \A[20]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X53_Y69_N30
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0_combout\ = 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0_combout\ & ((\A[19]~input_o\) # (\B[19]~input_o\))) # 
-- (!\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0_combout\ & (\A[19]~input_o\ & \B[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0_combout\,
	datac => \A[19]~input_o\,
	datad => \B[19]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X53_Y69_N8
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0_combout\ = 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0_combout\ & ((\A[19]~input_o\) # (\B[19]~input_o\))) # 
-- (!\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0_combout\ & (\A[19]~input_o\ & \B[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0_combout\,
	datac => \A[19]~input_o\,
	datad => \B[19]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X46_Y4_N26
\Recursive_Step_Generate:CSA_Lower_Half|S[20]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|S[20]~4_combout\ = \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|sum~0_combout\ $ 
-- (((\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\ & 
-- ((\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0_combout\))) # 
-- (!\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\ & 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\,
	datab => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|sum~0_combout\,
	datac => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0_combout\,
	datad => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|S[20]~4_combout\);

-- Location: IOIBUF_X47_Y0_N1
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: IOIBUF_X49_Y0_N1
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: LCCOMB_X46_Y4_N0
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|sum~0_combout\ = \A[21]~input_o\ $ (\B[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[21]~input_o\,
	datad => \B[21]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X46_Y4_N22
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0_combout\ = (\A[20]~input_o\ & ((\B[20]~input_o\) # 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0_combout\))) # (!\A[20]~input_o\ & (\B[20]~input_o\ & 
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \B[20]~input_o\,
	datad => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X46_Y4_N20
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0_combout\ = (\B[20]~input_o\ & 
-- ((\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0_combout\) # (\A[20]~input_o\))) # (!\B[20]~input_o\ & 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0_combout\ & \A[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[20]~input_o\,
	datac => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0_combout\,
	datad => \A[20]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X46_Y4_N10
\Recursive_Step_Generate:CSA_Lower_Half|S[21]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|S[21]~5_combout\ = \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|sum~0_combout\ $ 
-- (((\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\ & 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0_combout\)) # 
-- (!\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\ & 
-- ((\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\,
	datab => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|sum~0_combout\,
	datac => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0_combout\,
	datad => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|S[21]~5_combout\);

-- Location: IOIBUF_X40_Y0_N15
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: IOIBUF_X40_Y0_N22
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: LCCOMB_X43_Y4_N16
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|sum~0_combout\ = \B[22]~input_o\ $ (\A[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datad => \A[22]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X46_Y4_N4
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0_combout\ = 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0_combout\ & ((\A[21]~input_o\) # (\B[21]~input_o\))) # 
-- (!\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0_combout\ & (\A[21]~input_o\ & \B[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0_combout\,
	datac => \A[21]~input_o\,
	datad => \B[21]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X46_Y4_N6
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0_combout\ = (\A[21]~input_o\ & 
-- ((\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0_combout\) # (\B[21]~input_o\))) # (!\A[21]~input_o\ & 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0_combout\ & \B[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datac => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0_combout\,
	datad => \B[21]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X46_Y4_N16
\Recursive_Step_Generate:CSA_Lower_Half|S[22]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|S[22]~6_combout\ = \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|sum~0_combout\ $ 
-- (((\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\ & 
-- ((\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0_combout\))) # 
-- (!\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\ & 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\,
	datab => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|sum~0_combout\,
	datac => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0_combout\,
	datad => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|S[22]~6_combout\);

-- Location: IOIBUF_X33_Y0_N8
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: IOIBUF_X33_Y0_N1
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: LCCOMB_X32_Y4_N0
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|sum~0_combout\ = \A[23]~input_o\ $ (\B[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[23]~input_o\,
	datac => \B[23]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X43_Y4_N4
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|cout~0_combout\ = (\B[22]~input_o\ & ((\A[22]~input_o\) # 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0_combout\))) # (!\B[22]~input_o\ & (\A[22]~input_o\ & 
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \A[22]~input_o\,
	datad => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X43_Y4_N2
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|cout~0_combout\ = (\B[22]~input_o\ & ((\A[22]~input_o\) # 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0_combout\))) # (!\B[22]~input_o\ & (\A[22]~input_o\ & 
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \A[22]~input_o\,
	datad => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X32_Y4_N26
\Recursive_Step_Generate:CSA_Lower_Half|S[23]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|S[23]~7_combout\ = \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|sum~0_combout\ $ 
-- (((\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\ & 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|cout~0_combout\)) # 
-- (!\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\ & 
-- ((\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\,
	datab => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|sum~0_combout\,
	datac => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|cout~0_combout\,
	datad => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|S[23]~7_combout\);

-- Location: LCCOMB_X32_Y4_N6
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0_combout\ = (\B[23]~input_o\ & ((\A[23]~input_o\) # 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|cout~0_combout\))) # (!\B[23]~input_o\ & (\A[23]~input_o\ & 
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datab => \A[23]~input_o\,
	datac => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X29_Y0_N15
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: IOIBUF_X29_Y0_N22
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: LCCOMB_X32_Y4_N24
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|sum~0_combout\ = \A[24]~input_o\ $ (\B[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[24]~input_o\,
	datad => \B[24]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X32_Y4_N12
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0_combout\ = (\A[23]~input_o\ & ((\B[23]~input_o\) # 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|cout~0_combout\))) # (!\A[23]~input_o\ & (\B[23]~input_o\ & 
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[23]~input_o\,
	datac => \B[23]~input_o\,
	datad => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X32_Y4_N10
\Recursive_Step_Generate:CSA_Lower_Half|S[24]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|S[24]~8_combout\ = \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|sum~0_combout\ $ 
-- (((\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\ & 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0_combout\)) # 
-- (!\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\ & 
-- ((\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0_combout\,
	datab => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|sum~0_combout\,
	datac => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\,
	datad => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|S[24]~8_combout\);

-- Location: LCCOMB_X32_Y4_N22
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0_combout\ = (\B[24]~input_o\ & ((\A[24]~input_o\) # 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0_combout\))) # (!\B[24]~input_o\ & (\A[24]~input_o\ & 
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[24]~input_o\,
	datab => \A[24]~input_o\,
	datad => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X27_Y0_N22
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: IOIBUF_X35_Y0_N22
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: LCCOMB_X32_Y4_N16
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|sum~0_combout\ = \A[25]~input_o\ $ (\B[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[25]~input_o\,
	datad => \B[25]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X32_Y4_N4
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0_combout\ = (\B[24]~input_o\ & ((\A[24]~input_o\) # 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0_combout\))) # (!\B[24]~input_o\ & (\A[24]~input_o\ & 
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[24]~input_o\,
	datab => \A[24]~input_o\,
	datad => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X32_Y4_N18
\Recursive_Step_Generate:CSA_Lower_Half|S[25]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|S[25]~9_combout\ = \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|sum~0_combout\ $ 
-- (((\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\ & 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0_combout\)) # 
-- (!\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\ & 
-- ((\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0_combout\,
	datab => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|sum~0_combout\,
	datac => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0_combout\,
	datad => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|S[25]~9_combout\);

-- Location: LCCOMB_X32_Y4_N30
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0_combout\ = 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0_combout\ & ((\A[25]~input_o\) # (\B[25]~input_o\))) # 
-- (!\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0_combout\ & (\A[25]~input_o\ & \B[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0_combout\,
	datac => \A[25]~input_o\,
	datad => \B[25]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X38_Y0_N1
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: IOIBUF_X38_Y0_N8
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: LCCOMB_X32_Y4_N8
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|sum~0_combout\ = \B[26]~input_o\ $ (\A[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[26]~input_o\,
	datac => \A[26]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X32_Y4_N28
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0_combout\ = 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0_combout\ & ((\A[25]~input_o\) # (\B[25]~input_o\))) # 
-- (!\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0_combout\ & (\A[25]~input_o\ & \B[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0_combout\,
	datac => \A[25]~input_o\,
	datad => \B[25]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X32_Y4_N2
\Recursive_Step_Generate:CSA_Lower_Half|S[26]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|S[26]~10_combout\ = \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|sum~0_combout\ $ 
-- (((\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\ & 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0_combout\)) # 
-- (!\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\ & 
-- ((\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0_combout\,
	datab => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|sum~0_combout\,
	datac => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\,
	datad => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|S[26]~10_combout\);

-- Location: LCCOMB_X32_Y4_N14
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0_combout\ = 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0_combout\ & ((\A[26]~input_o\) # (\B[26]~input_o\))) # 
-- (!\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0_combout\ & (\A[26]~input_o\ & \B[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0_combout\,
	datac => \A[26]~input_o\,
	datad => \B[26]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X0_Y24_N1
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: IOIBUF_X0_Y26_N15
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: LCCOMB_X1_Y24_N8
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|sum~0_combout\ = \B[27]~input_o\ $ (\A[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datad => \A[27]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X32_Y4_N20
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0_combout\ = (\B[26]~input_o\ & 
-- ((\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0_combout\) # (\A[26]~input_o\))) # (!\B[26]~input_o\ & 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0_combout\ & \A[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[26]~input_o\,
	datab => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0_combout\,
	datac => \A[26]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X1_Y24_N26
\Recursive_Step_Generate:CSA_Lower_Half|S[27]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|S[27]~11_combout\ = \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|sum~0_combout\ $ 
-- (((\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\ & 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0_combout\)) # 
-- (!\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\ & 
-- ((\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\,
	datab => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0_combout\,
	datac => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|sum~0_combout\,
	datad => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|S[27]~11_combout\);

-- Location: LCCOMB_X1_Y24_N6
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0_combout\ = (\B[27]~input_o\ & ((\A[27]~input_o\) # 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0_combout\))) # (!\B[27]~input_o\ & (\A[27]~input_o\ & 
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datab => \A[27]~input_o\,
	datac => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X0_Y24_N15
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: IOIBUF_X0_Y24_N22
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: LCCOMB_X1_Y24_N24
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|sum~0_combout\ = \B[28]~input_o\ $ (\A[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datad => \A[28]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X1_Y24_N12
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0_combout\ = (\B[27]~input_o\ & ((\A[27]~input_o\) # 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0_combout\))) # (!\B[27]~input_o\ & (\A[27]~input_o\ & 
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datab => \A[27]~input_o\,
	datad => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X1_Y24_N10
\Recursive_Step_Generate:CSA_Lower_Half|S[28]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|S[28]~12_combout\ = \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|sum~0_combout\ $ 
-- (((\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\ & 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0_combout\)) # 
-- (!\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\ & 
-- ((\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0_combout\,
	datab => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|sum~0_combout\,
	datac => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\,
	datad => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|S[28]~12_combout\);

-- Location: LCCOMB_X1_Y24_N4
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0_combout\ = (\B[28]~input_o\ & ((\A[28]~input_o\) # 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0_combout\))) # (!\B[28]~input_o\ & (\A[28]~input_o\ & 
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datab => \A[28]~input_o\,
	datad => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X1_Y24_N14
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0_combout\ = (\B[28]~input_o\ & ((\A[28]~input_o\) # 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0_combout\))) # (!\B[28]~input_o\ & (\A[28]~input_o\ & 
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datab => \A[28]~input_o\,
	datad => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X0_Y23_N15
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: IOIBUF_X0_Y21_N22
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: LCCOMB_X1_Y24_N16
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|sum~0_combout\ = \A[29]~input_o\ $ (\B[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datac => \B[29]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X1_Y24_N18
\Recursive_Step_Generate:CSA_Lower_Half|S[29]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|S[29]~13_combout\ = \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|sum~0_combout\ $ 
-- (((\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\ & 
-- ((\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0_combout\))) # 
-- (!\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\ & 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\,
	datab => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0_combout\,
	datac => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0_combout\,
	datad => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|sum~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|S[29]~13_combout\);

-- Location: IOIBUF_X0_Y24_N8
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: LCCOMB_X1_Y24_N0
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|sum~0_combout\ = \A[30]~input_o\ $ (\B[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datac => \B[30]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X1_Y24_N30
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0_combout\ = (\A[29]~input_o\ & 
-- ((\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0_combout\) # (\B[29]~input_o\))) # (!\A[29]~input_o\ & 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0_combout\ & \B[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0_combout\,
	datac => \B[29]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X1_Y24_N28
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0_combout\ = (\A[29]~input_o\ & 
-- ((\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0_combout\) # (\B[29]~input_o\))) # (!\A[29]~input_o\ & 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0_combout\ & \B[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0_combout\,
	datac => \B[29]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X1_Y24_N2
\Recursive_Step_Generate:CSA_Lower_Half|S[30]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|S[30]~14_combout\ = \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|sum~0_combout\ $ 
-- (((\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\ & 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0_combout\)) # 
-- (!\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\ & 
-- ((\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\,
	datab => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|sum~0_combout\,
	datac => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0_combout\,
	datad => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|S[30]~14_combout\);

-- Location: LCCOMB_X1_Y24_N22
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\ = (\A[30]~input_o\ & ((\B[30]~input_o\) # 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0_combout\))) # (!\A[30]~input_o\ & (\B[30]~input_o\ & 
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \B[30]~input_o\,
	datac => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X47_Y0_N8
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: IOIBUF_X49_Y0_N22
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: LCCOMB_X46_Y4_N18
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|sum~0_combout\ = \A[31]~input_o\ $ (\B[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[31]~input_o\,
	datad => \B[31]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X1_Y24_N20
\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\ = (\A[30]~input_o\ & ((\B[30]~input_o\) # 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0_combout\))) # (!\A[30]~input_o\ & (\B[30]~input_o\ & 
-- \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datac => \B[30]~input_o\,
	datad => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X46_Y4_N28
\Recursive_Step_Generate:CSA_Lower_Half|S[31]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|S[31]~15_combout\ = \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|sum~0_combout\ $ 
-- (((\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\ & 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\)) # 
-- (!\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\ & 
-- ((\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\,
	datab => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|sum~0_combout\,
	datac => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\,
	datad => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|S[31]~15_combout\);

-- Location: IOIBUF_X60_Y0_N1
\B[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(32),
	o => \B[32]~input_o\);

-- Location: LCCOMB_X46_Y4_N14
\Recursive_Step_Generate:CSA_Lower_Half|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Cout~0_combout\ = (\A[31]~input_o\ & \B[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[31]~input_o\,
	datad => \B[31]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Cout~0_combout\);

-- Location: IOIBUF_X62_Y0_N22
\A[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(32),
	o => \A[32]~input_o\);

-- Location: LCCOMB_X46_Y4_N24
\Recursive_Step_Generate:CSA_Lower_Half|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Cout~1_combout\ = (\A[31]~input_o\) # (\B[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[31]~input_o\,
	datad => \B[31]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Cout~1_combout\);

-- Location: LCCOMB_X46_Y4_N2
\Recursive_Step_Generate:CSA_Lower_Half|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Cout~2_combout\ = (\Recursive_Step_Generate:CSA_Lower_Half|Cout~1_combout\ & 
-- ((\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\ & 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\)) # 
-- (!\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\ & 
-- ((\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\,
	datab => \Recursive_Step_Generate:CSA_Lower_Half|Cout~1_combout\,
	datac => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\,
	datad => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Cout~2_combout\);

-- Location: LCCOMB_X61_Y4_N8
\S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~0_combout\ = \B[32]~input_o\ $ (\A[32]~input_o\ $ (((\Recursive_Step_Generate:CSA_Lower_Half|Cout~0_combout\) # (\Recursive_Step_Generate:CSA_Lower_Half|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[32]~input_o\,
	datab => \Recursive_Step_Generate:CSA_Lower_Half|Cout~0_combout\,
	datac => \A[32]~input_o\,
	datad => \Recursive_Step_Generate:CSA_Lower_Half|Cout~2_combout\,
	combout => \S~0_combout\);

-- Location: LCCOMB_X46_Y4_N12
\Recursive_Step_Generate:CSA_Lower_Half|Cout~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Cout~3_combout\ = (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\ & 
-- (\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\)) # 
-- (!\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\ & 
-- ((\Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\,
	datac => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\,
	datad => \Recursive_Step_Generate:CSA_Lower_Half|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Cout~3_combout\);

-- Location: LCCOMB_X46_Y4_N30
\Recursive_Step_Generate:CSA_Lower_Half|Cout~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Lower_Half|Cout~4_combout\ = (\Recursive_Step_Generate:CSA_Lower_Half|Cout~3_combout\ & ((\A[31]~input_o\) # (\B[31]~input_o\))) # (!\Recursive_Step_Generate:CSA_Lower_Half|Cout~3_combout\ & (\A[31]~input_o\ & 
-- \B[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Lower_Half|Cout~3_combout\,
	datac => \A[31]~input_o\,
	datad => \B[31]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Lower_Half|Cout~4_combout\);

-- Location: IOIBUF_X58_Y0_N22
\B[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(33),
	o => \B[33]~input_o\);

-- Location: IOIBUF_X67_Y0_N8
\A[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(33),
	o => \A[33]~input_o\);

-- Location: LCCOMB_X61_Y4_N2
\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|sum~0_combout\ = \B[33]~input_o\ $ (\A[33]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[33]~input_o\,
	datad => \A[33]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X61_Y4_N4
\S~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~1_combout\ = \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|sum~0_combout\ $ (((\B[32]~input_o\ & ((\Recursive_Step_Generate:CSA_Lower_Half|Cout~4_combout\) # 
-- (\A[32]~input_o\))) # (!\B[32]~input_o\ & (\Recursive_Step_Generate:CSA_Lower_Half|Cout~4_combout\ & \A[32]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[32]~input_o\,
	datab => \Recursive_Step_Generate:CSA_Lower_Half|Cout~4_combout\,
	datac => \A[32]~input_o\,
	datad => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|sum~0_combout\,
	combout => \S~1_combout\);

-- Location: LCCOMB_X61_Y4_N22
\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|cout~0_combout\ = (\B[33]~input_o\ & ((\A[33]~input_o\) # ((\A[32]~input_o\ & \B[32]~input_o\)))) # (!\B[33]~input_o\ & 
-- (\A[32]~input_o\ & (\B[32]~input_o\ & \A[33]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[33]~input_o\,
	datab => \A[32]~input_o\,
	datac => \B[32]~input_o\,
	datad => \A[33]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X58_Y0_N15
\A[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(34),
	o => \A[34]~input_o\);

-- Location: IOIBUF_X56_Y0_N8
\B[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(34),
	o => \B[34]~input_o\);

-- Location: LCCOMB_X53_Y4_N16
\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|sum~0_combout\ = \A[34]~input_o\ $ (\B[34]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[34]~input_o\,
	datad => \B[34]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X61_Y4_N24
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|cout~0_combout\ = (\B[33]~input_o\ & ((\A[32]~input_o\) # ((\B[32]~input_o\) # (\A[33]~input_o\)))) # (!\B[33]~input_o\ 
-- & (\A[33]~input_o\ & ((\A[32]~input_o\) # (\B[32]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[33]~input_o\,
	datab => \A[32]~input_o\,
	datac => \B[32]~input_o\,
	datad => \A[33]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X53_Y4_N26
\S~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~2_combout\ = \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|sum~0_combout\ $ (((\Recursive_Step_Generate:CSA_Lower_Half|Cout~4_combout\ & 
-- ((\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|cout~0_combout\))) # (!\Recursive_Step_Generate:CSA_Lower_Half|Cout~4_combout\ & 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|cout~0_combout\,
	datab => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|sum~0_combout\,
	datac => \Recursive_Step_Generate:CSA_Lower_Half|Cout~4_combout\,
	datad => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|cout~0_combout\,
	combout => \S~2_combout\);

-- Location: LCCOMB_X53_Y4_N12
\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0_combout\ = (\B[34]~input_o\ & ((\A[34]~input_o\) # 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|cout~0_combout\))) # (!\B[34]~input_o\ & (\A[34]~input_o\ & 
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[34]~input_o\,
	datac => \A[34]~input_o\,
	datad => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X54_Y0_N1
\A[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(35),
	o => \A[35]~input_o\);

-- Location: IOIBUF_X56_Y0_N22
\B[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(35),
	o => \B[35]~input_o\);

-- Location: LCCOMB_X53_Y4_N0
\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|sum~0_combout\ = \A[35]~input_o\ $ (\B[35]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[35]~input_o\,
	datad => \B[35]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X53_Y4_N6
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0_combout\ = (\B[34]~input_o\ & ((\A[34]~input_o\) # 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|cout~0_combout\))) # (!\B[34]~input_o\ & (\A[34]~input_o\ & 
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[34]~input_o\,
	datac => \A[34]~input_o\,
	datad => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X53_Y4_N10
\S~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~3_combout\ = \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|sum~0_combout\ $ (((\Recursive_Step_Generate:CSA_Lower_Half|Cout~4_combout\ & 
-- ((\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0_combout\))) # (!\Recursive_Step_Generate:CSA_Lower_Half|Cout~4_combout\ & 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0_combout\,
	datab => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|sum~0_combout\,
	datac => \Recursive_Step_Generate:CSA_Lower_Half|Cout~4_combout\,
	datad => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0_combout\,
	combout => \S~3_combout\);

-- Location: IOIBUF_X0_Y36_N15
\A[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(36),
	o => \A[36]~input_o\);

-- Location: IOIBUF_X0_Y36_N22
\B[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(36),
	o => \B[36]~input_o\);

-- Location: LCCOMB_X53_Y4_N24
\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|sum~0_combout\ = \A[36]~input_o\ $ (\B[36]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[36]~input_o\,
	datad => \B[36]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X53_Y4_N14
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0_combout\ = 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0_combout\ & ((\A[35]~input_o\) # (\B[35]~input_o\))) # 
-- (!\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0_combout\ & (\A[35]~input_o\ & \B[35]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0_combout\,
	datac => \A[35]~input_o\,
	datad => \B[35]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X53_Y4_N20
\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0_combout\ = 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0_combout\ & ((\A[35]~input_o\) # (\B[35]~input_o\))) # 
-- (!\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0_combout\ & (\A[35]~input_o\ & \B[35]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0_combout\,
	datac => \A[35]~input_o\,
	datad => \B[35]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X53_Y4_N2
\S~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~4_combout\ = \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|sum~0_combout\ $ (((\Recursive_Step_Generate:CSA_Lower_Half|Cout~4_combout\ & 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0_combout\)) # (!\Recursive_Step_Generate:CSA_Lower_Half|Cout~4_combout\ & 
-- ((\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Lower_Half|Cout~4_combout\,
	datab => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|sum~0_combout\,
	datac => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0_combout\,
	datad => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0_combout\,
	combout => \S~4_combout\);

-- Location: LCCOMB_X53_Y4_N30
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0_combout\ = (\A[36]~input_o\ & 
-- ((\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0_combout\) # (\B[36]~input_o\))) # (!\A[36]~input_o\ & 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0_combout\ & \B[36]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[36]~input_o\,
	datac => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0_combout\,
	datad => \B[36]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X54_Y0_N8
\A[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(37),
	o => \A[37]~input_o\);

-- Location: IOIBUF_X54_Y0_N15
\B[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(37),
	o => \B[37]~input_o\);

-- Location: LCCOMB_X53_Y4_N8
\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|sum~0_combout\ = \A[37]~input_o\ $ (\B[37]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[37]~input_o\,
	datad => \B[37]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X53_Y4_N28
\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0_combout\ = (\A[36]~input_o\ & 
-- ((\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0_combout\) # (\B[36]~input_o\))) # (!\A[36]~input_o\ & 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0_combout\ & \B[36]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[36]~input_o\,
	datab => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0_combout\,
	datad => \B[36]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X53_Y4_N18
\S~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~5_combout\ = \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|sum~0_combout\ $ (((\Recursive_Step_Generate:CSA_Lower_Half|Cout~4_combout\ & 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0_combout\)) # (!\Recursive_Step_Generate:CSA_Lower_Half|Cout~4_combout\ & 
-- ((\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0_combout\,
	datab => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|sum~0_combout\,
	datac => \Recursive_Step_Generate:CSA_Lower_Half|Cout~4_combout\,
	datad => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0_combout\,
	combout => \S~5_combout\);

-- Location: LCCOMB_X53_Y4_N4
\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0_combout\ = 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0_combout\ & ((\A[37]~input_o\) # (\B[37]~input_o\))) # 
-- (!\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0_combout\ & (\A[37]~input_o\ & \B[37]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0_combout\,
	datac => \A[37]~input_o\,
	datad => \B[37]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X52_Y0_N22
\A[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(38),
	o => \A[38]~input_o\);

-- Location: IOIBUF_X52_Y0_N15
\B[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(38),
	o => \B[38]~input_o\);

-- Location: LCCOMB_X52_Y4_N24
\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|sum~0_combout\ = \A[38]~input_o\ $ (\B[38]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[38]~input_o\,
	datac => \B[38]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X53_Y4_N22
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0_combout\ = (\A[37]~input_o\ & 
-- ((\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0_combout\) # (\B[37]~input_o\))) # (!\A[37]~input_o\ & 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0_combout\ & \B[37]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[37]~input_o\,
	datac => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0_combout\,
	datad => \B[37]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X52_Y4_N26
\S~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~6_combout\ = \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|sum~0_combout\ $ (((\Recursive_Step_Generate:CSA_Lower_Half|Cout~4_combout\ & 
-- ((\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0_combout\))) # (!\Recursive_Step_Generate:CSA_Lower_Half|Cout~4_combout\ & 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0_combout\,
	datab => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|sum~0_combout\,
	datac => \Recursive_Step_Generate:CSA_Lower_Half|Cout~4_combout\,
	datad => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0_combout\,
	combout => \S~6_combout\);

-- Location: LCCOMB_X52_Y4_N20
\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|cout~0_combout\ = (\A[38]~input_o\ & ((\B[38]~input_o\) # 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0_combout\))) # (!\A[38]~input_o\ & (\B[38]~input_o\ & 
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[38]~input_o\,
	datac => \B[38]~input_o\,
	datad => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X20_Y0_N1
\B[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(39),
	o => \B[39]~input_o\);

-- Location: IOIBUF_X23_Y0_N22
\A[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(39),
	o => \A[39]~input_o\);

-- Location: LCCOMB_X19_Y4_N24
\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|sum~0_combout\ = \B[39]~input_o\ $ (\A[39]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[39]~input_o\,
	datad => \A[39]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X52_Y4_N22
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|cout~0_combout\ = (\A[38]~input_o\ & ((\B[38]~input_o\) # 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0_combout\))) # (!\A[38]~input_o\ & (\B[38]~input_o\ & 
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[38]~input_o\,
	datac => \B[38]~input_o\,
	datad => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X19_Y4_N18
\S~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~7_combout\ = \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|sum~0_combout\ $ (((\Recursive_Step_Generate:CSA_Lower_Half|Cout~4_combout\ & 
-- ((\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|cout~0_combout\))) # (!\Recursive_Step_Generate:CSA_Lower_Half|Cout~4_combout\ & 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|cout~0_combout\,
	datab => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|sum~0_combout\,
	datac => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|cout~0_combout\,
	datad => \Recursive_Step_Generate:CSA_Lower_Half|Cout~4_combout\,
	combout => \S~7_combout\);

-- Location: LCCOMB_X19_Y4_N6
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0_combout\ = (\B[39]~input_o\ & ((\A[39]~input_o\) # 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|cout~0_combout\))) # (!\B[39]~input_o\ & (\A[39]~input_o\ & 
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[39]~input_o\,
	datab => \A[39]~input_o\,
	datac => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X19_Y4_N28
\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0_combout\ = 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|cout~0_combout\ & ((\A[39]~input_o\) # (\B[39]~input_o\))) # 
-- (!\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|cout~0_combout\ & (\A[39]~input_o\ & \B[39]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|cout~0_combout\,
	datab => \A[39]~input_o\,
	datac => \B[39]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X16_Y0_N8
\B[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(40),
	o => \B[40]~input_o\);

-- Location: IOIBUF_X20_Y0_N15
\A[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(40),
	o => \A[40]~input_o\);

-- Location: LCCOMB_X19_Y4_N8
\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|sum~0_combout\ = \B[40]~input_o\ $ (\A[40]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[40]~input_o\,
	datac => \A[40]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X19_Y4_N26
\S~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~8_combout\ = \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|sum~0_combout\ $ (((\Recursive_Step_Generate:CSA_Lower_Half|Cout~4_combout\ & 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0_combout\)) # (!\Recursive_Step_Generate:CSA_Lower_Half|Cout~4_combout\ & 
-- ((\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0_combout\,
	datab => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0_combout\,
	datac => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|sum~0_combout\,
	datad => \Recursive_Step_Generate:CSA_Lower_Half|Cout~4_combout\,
	combout => \S~8_combout\);

-- Location: LCCOMB_X19_Y4_N20
\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0_combout\ = (\B[40]~input_o\ & ((\A[40]~input_o\) # 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0_combout\))) # (!\B[40]~input_o\ & (\A[40]~input_o\ & 
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[40]~input_o\,
	datac => \A[40]~input_o\,
	datad => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X19_Y4_N22
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0_combout\ = 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0_combout\ & ((\B[40]~input_o\) # (\A[40]~input_o\))) # 
-- (!\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0_combout\ & (\B[40]~input_o\ & \A[40]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0_combout\,
	datab => \B[40]~input_o\,
	datac => \A[40]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X16_Y0_N22
\B[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(41),
	o => \B[41]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\A[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(41),
	o => \A[41]~input_o\);

-- Location: LCCOMB_X19_Y4_N16
\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|sum~0_combout\ = \B[41]~input_o\ $ (\A[41]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[41]~input_o\,
	datad => \A[41]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X19_Y4_N2
\S~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~9_combout\ = \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|sum~0_combout\ $ (((\Recursive_Step_Generate:CSA_Lower_Half|Cout~4_combout\ & 
-- ((\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0_combout\))) # (!\Recursive_Step_Generate:CSA_Lower_Half|Cout~4_combout\ & 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Lower_Half|Cout~4_combout\,
	datab => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0_combout\,
	datac => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0_combout\,
	datad => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|sum~0_combout\,
	combout => \S~9_combout\);

-- Location: LCCOMB_X19_Y4_N12
\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0_combout\ = 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0_combout\ & ((\B[41]~input_o\) # (\A[41]~input_o\))) # 
-- (!\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0_combout\ & (\B[41]~input_o\ & \A[41]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0_combout\,
	datac => \B[41]~input_o\,
	datad => \A[41]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X20_Y0_N8
\B[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(42),
	o => \B[42]~input_o\);

-- Location: IOIBUF_X20_Y0_N22
\A[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(42),
	o => \A[42]~input_o\);

-- Location: LCCOMB_X19_Y4_N0
\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|sum~0_combout\ = \B[42]~input_o\ $ (\A[42]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[42]~input_o\,
	datac => \A[42]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X19_Y4_N30
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0_combout\ = 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0_combout\ & ((\B[41]~input_o\) # (\A[41]~input_o\))) # 
-- (!\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0_combout\ & (\B[41]~input_o\ & \A[41]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0_combout\,
	datac => \B[41]~input_o\,
	datad => \A[41]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X19_Y4_N10
\S~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~10_combout\ = \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|sum~0_combout\ $ (((\Recursive_Step_Generate:CSA_Lower_Half|Cout~4_combout\ & 
-- ((\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0_combout\))) # (!\Recursive_Step_Generate:CSA_Lower_Half|Cout~4_combout\ & 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0_combout\,
	datab => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|sum~0_combout\,
	datac => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0_combout\,
	datad => \Recursive_Step_Generate:CSA_Lower_Half|Cout~4_combout\,
	combout => \S~10_combout\);

-- Location: LCCOMB_X19_Y4_N14
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0_combout\ = 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0_combout\ & ((\B[42]~input_o\) # (\A[42]~input_o\))) # 
-- (!\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0_combout\ & (\B[42]~input_o\ & \A[42]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0_combout\,
	datab => \B[42]~input_o\,
	datac => \A[42]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X11_Y0_N8
\B[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(43),
	o => \B[43]~input_o\);

-- Location: IOIBUF_X13_Y0_N22
\A[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(43),
	o => \A[43]~input_o\);

-- Location: LCCOMB_X11_Y4_N16
\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|sum~0_combout\ = \B[43]~input_o\ $ (\A[43]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[43]~input_o\,
	datad => \A[43]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X19_Y4_N4
\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0_combout\ = 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0_combout\ & ((\B[42]~input_o\) # (\A[42]~input_o\))) # 
-- (!\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0_combout\ & (\B[42]~input_o\ & \A[42]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0_combout\,
	datab => \B[42]~input_o\,
	datac => \A[42]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X11_Y4_N2
\S~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~11_combout\ = \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|sum~0_combout\ $ (((\Recursive_Step_Generate:CSA_Lower_Half|Cout~4_combout\ & 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0_combout\)) # (!\Recursive_Step_Generate:CSA_Lower_Half|Cout~4_combout\ & 
-- ((\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0_combout\,
	datab => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|sum~0_combout\,
	datac => \Recursive_Step_Generate:CSA_Lower_Half|Cout~4_combout\,
	datad => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0_combout\,
	combout => \S~11_combout\);

-- Location: LCCOMB_X11_Y4_N6
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0_combout\ = (\A[43]~input_o\ & ((\B[43]~input_o\) # 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0_combout\))) # (!\A[43]~input_o\ & (\B[43]~input_o\ & 
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[43]~input_o\,
	datac => \B[43]~input_o\,
	datad => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X11_Y4_N4
\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0_combout\ = (\A[43]~input_o\ & ((\B[43]~input_o\) # 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0_combout\))) # (!\A[43]~input_o\ & (\B[43]~input_o\ & 
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[43]~input_o\,
	datac => \B[43]~input_o\,
	datad => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X9_Y0_N22
\B[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(44),
	o => \B[44]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\A[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(44),
	o => \A[44]~input_o\);

-- Location: LCCOMB_X11_Y4_N0
\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|sum~0_combout\ = \B[44]~input_o\ $ (\A[44]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[44]~input_o\,
	datad => \A[44]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X11_Y4_N18
\S~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~12_combout\ = \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|sum~0_combout\ $ (((\Recursive_Step_Generate:CSA_Lower_Half|Cout~4_combout\ & 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0_combout\)) # (!\Recursive_Step_Generate:CSA_Lower_Half|Cout~4_combout\ & 
-- ((\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0_combout\,
	datab => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0_combout\,
	datac => \Recursive_Step_Generate:CSA_Lower_Half|Cout~4_combout\,
	datad => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|sum~0_combout\,
	combout => \S~12_combout\);

-- Location: LCCOMB_X11_Y4_N28
\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0_combout\ = 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0_combout\ & ((\B[44]~input_o\) # (\A[44]~input_o\))) # 
-- (!\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0_combout\ & (\B[44]~input_o\ & \A[44]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0_combout\,
	datac => \B[44]~input_o\,
	datad => \A[44]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X11_Y4_N30
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0_combout\ = 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0_combout\ & ((\B[44]~input_o\) # (\A[44]~input_o\))) # 
-- (!\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0_combout\ & (\B[44]~input_o\ & \A[44]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0_combout\,
	datac => \B[44]~input_o\,
	datad => \A[44]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X11_Y0_N1
\B[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(45),
	o => \B[45]~input_o\);

-- Location: IOIBUF_X11_Y0_N22
\A[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(45),
	o => \A[45]~input_o\);

-- Location: LCCOMB_X11_Y4_N24
\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|sum~0_combout\ = \B[45]~input_o\ $ (\A[45]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[45]~input_o\,
	datad => \A[45]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X11_Y4_N10
\S~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~13_combout\ = \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|sum~0_combout\ $ (((\Recursive_Step_Generate:CSA_Lower_Half|Cout~4_combout\ & 
-- ((\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0_combout\))) # (!\Recursive_Step_Generate:CSA_Lower_Half|Cout~4_combout\ & 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Lower_Half|Cout~4_combout\,
	datab => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0_combout\,
	datac => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0_combout\,
	datad => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|sum~0_combout\,
	combout => \S~13_combout\);

-- Location: LCCOMB_X11_Y4_N14
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0_combout\ = (\A[45]~input_o\ & ((\B[45]~input_o\) # 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0_combout\))) # (!\A[45]~input_o\ & (\B[45]~input_o\ & 
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[45]~input_o\,
	datab => \B[45]~input_o\,
	datac => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X7_Y0_N15
\A[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(46),
	o => \A[46]~input_o\);

-- Location: IOIBUF_X11_Y0_N15
\B[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(46),
	o => \B[46]~input_o\);

-- Location: LCCOMB_X11_Y4_N8
\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|sum~0_combout\ = \A[46]~input_o\ $ (\B[46]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[46]~input_o\,
	datad => \B[46]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X11_Y4_N20
\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0_combout\ = (\A[45]~input_o\ & ((\B[45]~input_o\) # 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0_combout\))) # (!\A[45]~input_o\ & (\B[45]~input_o\ & 
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[45]~input_o\,
	datab => \B[45]~input_o\,
	datad => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X11_Y4_N26
\S~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~14_combout\ = \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|sum~0_combout\ $ (((\Recursive_Step_Generate:CSA_Lower_Half|Cout~4_combout\ & 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0_combout\)) # (!\Recursive_Step_Generate:CSA_Lower_Half|Cout~4_combout\ & 
-- ((\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Lower_Half|Cout~4_combout\,
	datab => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0_combout\,
	datac => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|sum~0_combout\,
	datad => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0_combout\,
	combout => \S~14_combout\);

-- Location: LCCOMB_X11_Y4_N12
\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\ = (\A[46]~input_o\ & ((\B[46]~input_o\) # 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0_combout\))) # (!\A[46]~input_o\ & (\B[46]~input_o\ & 
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[46]~input_o\,
	datab => \B[46]~input_o\,
	datad => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X11_Y4_N22
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\ = (\A[46]~input_o\ & ((\B[46]~input_o\) # 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0_combout\))) # (!\A[46]~input_o\ & (\B[46]~input_o\ & 
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[46]~input_o\,
	datab => \B[46]~input_o\,
	datac => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X60_Y73_N22
\A[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(47),
	o => \A[47]~input_o\);

-- Location: IOIBUF_X65_Y0_N8
\B[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(47),
	o => \B[47]~input_o\);

-- Location: LCCOMB_X61_Y4_N10
\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|sum~0_combout\ = \A[47]~input_o\ $ (\B[47]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[47]~input_o\,
	datad => \B[47]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X61_Y4_N28
\S~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~15_combout\ = \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|sum~0_combout\ $ (((\Recursive_Step_Generate:CSA_Lower_Half|Cout~4_combout\ & 
-- ((\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\))) # (!\Recursive_Step_Generate:CSA_Lower_Half|Cout~4_combout\ & 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\,
	datab => \Recursive_Step_Generate:CSA_Lower_Half|Cout~4_combout\,
	datac => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\,
	datad => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|sum~0_combout\,
	combout => \S~15_combout\);

-- Location: IOIBUF_X60_Y0_N22
\B[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(48),
	o => \B[48]~input_o\);

-- Location: IOIBUF_X65_Y0_N22
\A[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(48),
	o => \A[48]~input_o\);

-- Location: LCCOMB_X61_Y4_N18
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|S[16]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|S[16]~0_combout\ = \B[48]~input_o\ $ (\A[48]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[48]~input_o\,
	datad => \A[48]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|S[16]~0_combout\);

-- Location: LCCOMB_X61_Y4_N30
\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\ = 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\ & ((\A[47]~input_o\) # (\B[47]~input_o\))) # 
-- (!\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\ & (\A[47]~input_o\ & \B[47]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\,
	datac => \A[47]~input_o\,
	datad => \B[47]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X61_Y4_N16
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\ = 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\ & ((\A[47]~input_o\) # (\B[47]~input_o\))) # 
-- (!\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\ & (\A[47]~input_o\ & \B[47]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\,
	datac => \A[47]~input_o\,
	datad => \B[47]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X61_Y4_N12
\S~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~16_combout\ = \Recursive_Step_Generate:CSA_Upper_Half_MidC1|S[16]~0_combout\ $ (((\Recursive_Step_Generate:CSA_Lower_Half|Cout~4_combout\ & 
-- ((\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\))) # (!\Recursive_Step_Generate:CSA_Lower_Half|Cout~4_combout\ & 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|S[16]~0_combout\,
	datab => \Recursive_Step_Generate:CSA_Lower_Half|Cout~4_combout\,
	datac => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\,
	datad => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\,
	combout => \S~16_combout\);

-- Location: LCCOMB_X61_Y4_N6
\S~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~17_combout\ = (\Recursive_Step_Generate:CSA_Lower_Half|Cout~2_combout\ & (((\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\)))) # 
-- (!\Recursive_Step_Generate:CSA_Lower_Half|Cout~2_combout\ & ((\Recursive_Step_Generate:CSA_Lower_Half|Cout~0_combout\ & 
-- ((\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\))) # (!\Recursive_Step_Generate:CSA_Lower_Half|Cout~0_combout\ & 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Lower_Half|Cout~2_combout\,
	datab => \Recursive_Step_Generate:CSA_Lower_Half|Cout~0_combout\,
	datac => \Recursive_Step_Generate:CSA_Upper_Half_MidC0|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\,
	datad => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Lower_Half|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\,
	combout => \S~17_combout\);

-- Location: IOIBUF_X60_Y0_N15
\A[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(49),
	o => \A[49]~input_o\);

-- Location: IOIBUF_X65_Y0_N1
\B[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(49),
	o => \B[49]~input_o\);

-- Location: LCCOMB_X61_Y4_N0
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|sum~0_combout\ = \A[49]~input_o\ $ (\B[49]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[49]~input_o\,
	datad => \B[49]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X61_Y4_N26
\S~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~18_combout\ = \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|sum~0_combout\ $ (((\S~17_combout\ & ((\B[48]~input_o\) # (\A[48]~input_o\))) # (!\S~17_combout\ 
-- & (\B[48]~input_o\ & \A[48]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~17_combout\,
	datab => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|sum~0_combout\,
	datac => \B[48]~input_o\,
	datad => \A[48]~input_o\,
	combout => \S~18_combout\);

-- Location: LCCOMB_X61_Y4_N14
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|cout~0_combout\ = (\B[49]~input_o\ & ((\B[48]~input_o\) # ((\A[49]~input_o\) # (\A[48]~input_o\)))) # 
-- (!\B[49]~input_o\ & (\A[49]~input_o\ & ((\B[48]~input_o\) # (\A[48]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[49]~input_o\,
	datab => \B[48]~input_o\,
	datac => \A[49]~input_o\,
	datad => \A[48]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X61_Y4_N20
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|cout~0_combout\ = (\B[49]~input_o\ & ((\A[49]~input_o\) # ((\B[48]~input_o\ & \A[48]~input_o\)))) # 
-- (!\B[49]~input_o\ & (\B[48]~input_o\ & (\A[49]~input_o\ & \A[48]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[49]~input_o\,
	datab => \B[48]~input_o\,
	datac => \A[49]~input_o\,
	datad => \A[48]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X72_Y0_N8
\A[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(50),
	o => \A[50]~input_o\);

-- Location: IOIBUF_X74_Y0_N15
\B[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(50),
	o => \B[50]~input_o\);

-- Location: LCCOMB_X69_Y4_N24
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|sum~0_combout\ = \A[50]~input_o\ $ (\B[50]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[50]~input_o\,
	datad => \B[50]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X69_Y4_N10
\S~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~19_combout\ = \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|sum~0_combout\ $ (((\S~17_combout\ & 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|cout~0_combout\)) # (!\S~17_combout\ & 
-- ((\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|cout~0_combout\,
	datab => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|cout~0_combout\,
	datac => \S~17_combout\,
	datad => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|sum~0_combout\,
	combout => \S~19_combout\);

-- Location: LCCOMB_X69_Y4_N12
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0_combout\ = 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|cout~0_combout\ & ((\A[50]~input_o\) # (\B[50]~input_o\))) # 
-- (!\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|cout~0_combout\ & (\A[50]~input_o\ & \B[50]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|cout~0_combout\,
	datac => \A[50]~input_o\,
	datad => \B[50]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X69_Y0_N1
\B[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(51),
	o => \B[51]~input_o\);

-- Location: IOIBUF_X79_Y0_N8
\A[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(51),
	o => \A[51]~input_o\);

-- Location: LCCOMB_X69_Y4_N8
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|sum~0_combout\ = \B[51]~input_o\ $ (\A[51]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[51]~input_o\,
	datad => \A[51]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X69_Y4_N6
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0_combout\ = 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|cout~0_combout\ & ((\A[50]~input_o\) # (\B[50]~input_o\))) # 
-- (!\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|cout~0_combout\ & (\A[50]~input_o\ & \B[50]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:1:FA_inst|cout~0_combout\,
	datac => \A[50]~input_o\,
	datad => \B[50]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X69_Y4_N18
\S~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~20_combout\ = \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|sum~0_combout\ $ (((\S~17_combout\ & 
-- ((\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0_combout\))) # (!\S~17_combout\ & 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0_combout\,
	datab => \S~17_combout\,
	datac => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|sum~0_combout\,
	datad => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0_combout\,
	combout => \S~20_combout\);

-- Location: LCCOMB_X69_Y4_N4
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0_combout\ = 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0_combout\ & ((\B[51]~input_o\) # (\A[51]~input_o\))) # 
-- (!\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0_combout\ & (\B[51]~input_o\ & \A[51]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0_combout\,
	datab => \B[51]~input_o\,
	datad => \A[51]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X69_Y4_N22
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0_combout\ = 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0_combout\ & ((\B[51]~input_o\) # (\A[51]~input_o\))) # 
-- (!\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0_combout\ & (\B[51]~input_o\ & \A[51]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:2:FA_inst|cout~0_combout\,
	datab => \B[51]~input_o\,
	datad => \A[51]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X72_Y0_N1
\A[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(52),
	o => \A[52]~input_o\);

-- Location: IOIBUF_X69_Y0_N8
\B[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(52),
	o => \B[52]~input_o\);

-- Location: LCCOMB_X69_Y4_N0
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|sum~0_combout\ = \A[52]~input_o\ $ (\B[52]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[52]~input_o\,
	datad => \B[52]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X69_Y4_N2
\S~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~21_combout\ = \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|sum~0_combout\ $ (((\S~17_combout\ & 
-- ((\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0_combout\))) # (!\S~17_combout\ & 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~17_combout\,
	datab => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0_combout\,
	datac => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0_combout\,
	datad => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|sum~0_combout\,
	combout => \S~21_combout\);

-- Location: IOIBUF_X74_Y0_N1
\B[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(53),
	o => \B[53]~input_o\);

-- Location: IOIBUF_X74_Y0_N8
\A[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(53),
	o => \A[53]~input_o\);

-- Location: LCCOMB_X69_Y4_N16
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|sum~0_combout\ = \B[53]~input_o\ $ (\A[53]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[53]~input_o\,
	datad => \A[53]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X69_Y4_N30
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0_combout\ = 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0_combout\ & ((\B[52]~input_o\) # (\A[52]~input_o\))) # 
-- (!\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0_combout\ & (\B[52]~input_o\ & \A[52]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0_combout\,
	datab => \B[52]~input_o\,
	datac => \A[52]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X69_Y4_N20
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0_combout\ = (\A[52]~input_o\ & ((\B[52]~input_o\) # 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0_combout\))) # (!\A[52]~input_o\ & (\B[52]~input_o\ & 
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[52]~input_o\,
	datab => \B[52]~input_o\,
	datac => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:3:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X69_Y4_N26
\S~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~22_combout\ = \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|sum~0_combout\ $ (((\S~17_combout\ & 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0_combout\)) # (!\S~17_combout\ & 
-- ((\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~17_combout\,
	datab => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|sum~0_combout\,
	datac => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0_combout\,
	datad => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0_combout\,
	combout => \S~22_combout\);

-- Location: LCCOMB_X69_Y4_N14
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0_combout\ = (\B[53]~input_o\ & 
-- ((\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0_combout\) # (\A[53]~input_o\))) # (!\B[53]~input_o\ & 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0_combout\ & \A[53]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[53]~input_o\,
	datac => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0_combout\,
	datad => \A[53]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X69_Y73_N22
\A[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(54),
	o => \A[54]~input_o\);

-- Location: IOIBUF_X72_Y73_N15
\B[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(54),
	o => \B[54]~input_o\);

-- Location: LCCOMB_X69_Y69_N8
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|sum~0_combout\ = \A[54]~input_o\ $ (\B[54]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[54]~input_o\,
	datad => \B[54]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X69_Y4_N28
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0_combout\ = 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0_combout\ & ((\B[53]~input_o\) # (\A[53]~input_o\))) # 
-- (!\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0_combout\ & (\B[53]~input_o\ & \A[53]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:4:FA_inst|cout~0_combout\,
	datac => \B[53]~input_o\,
	datad => \A[53]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X69_Y69_N10
\S~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~23_combout\ = \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|sum~0_combout\ $ (((\S~17_combout\ & 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0_combout\)) # (!\S~17_combout\ & 
-- ((\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~17_combout\,
	datab => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0_combout\,
	datac => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|sum~0_combout\,
	datad => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0_combout\,
	combout => \S~23_combout\);

-- Location: IOIBUF_X67_Y73_N22
\B[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(55),
	o => \B[55]~input_o\);

-- Location: IOIBUF_X72_Y73_N1
\A[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(55),
	o => \A[55]~input_o\);

-- Location: LCCOMB_X69_Y69_N0
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|sum~0_combout\ = \B[55]~input_o\ $ (\A[55]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[55]~input_o\,
	datac => \A[55]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X69_Y69_N14
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|cout~0_combout\ = (\A[54]~input_o\ & 
-- ((\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0_combout\) # (\B[54]~input_o\))) # (!\A[54]~input_o\ & 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0_combout\ & \B[54]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[54]~input_o\,
	datac => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0_combout\,
	datad => \B[54]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X69_Y69_N12
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|cout~0_combout\ = (\A[54]~input_o\ & 
-- ((\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0_combout\) # (\B[54]~input_o\))) # (!\A[54]~input_o\ & 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0_combout\ & \B[54]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[54]~input_o\,
	datac => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:5:FA_inst|cout~0_combout\,
	datad => \B[54]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X69_Y69_N2
\S~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~24_combout\ = \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|sum~0_combout\ $ (((\S~17_combout\ & 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|cout~0_combout\)) # (!\S~17_combout\ & 
-- ((\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~17_combout\,
	datab => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|sum~0_combout\,
	datac => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|cout~0_combout\,
	datad => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|cout~0_combout\,
	combout => \S~24_combout\);

-- Location: LCCOMB_X69_Y69_N22
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0_combout\ = (\A[55]~input_o\ & ((\B[55]~input_o\) # 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|cout~0_combout\))) # (!\A[55]~input_o\ & (\B[55]~input_o\ & 
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[55]~input_o\,
	datab => \B[55]~input_o\,
	datac => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X69_Y69_N4
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0_combout\ = (\B[55]~input_o\ & ((\A[55]~input_o\) # 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|cout~0_combout\))) # (!\B[55]~input_o\ & (\A[55]~input_o\ & 
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[55]~input_o\,
	datac => \A[55]~input_o\,
	datad => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:6:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X72_Y73_N8
\A[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(56),
	o => \A[56]~input_o\);

-- Location: IOIBUF_X72_Y73_N22
\B[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(56),
	o => \B[56]~input_o\);

-- Location: LCCOMB_X69_Y69_N16
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|sum~0_combout\ = \A[56]~input_o\ $ (\B[56]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[56]~input_o\,
	datad => \B[56]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X69_Y69_N18
\S~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~25_combout\ = \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|sum~0_combout\ $ (((\S~17_combout\ & 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0_combout\)) # (!\S~17_combout\ & 
-- ((\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0_combout\,
	datab => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0_combout\,
	datac => \S~17_combout\,
	datad => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|sum~0_combout\,
	combout => \S~25_combout\);

-- Location: LCCOMB_X69_Y69_N30
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0_combout\ = (\A[56]~input_o\ & 
-- ((\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0_combout\) # (\B[56]~input_o\))) # (!\A[56]~input_o\ & 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0_combout\ & \B[56]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[56]~input_o\,
	datac => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0_combout\,
	datad => \B[56]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X69_Y69_N28
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0_combout\ = (\A[56]~input_o\ & 
-- ((\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0_combout\) # (\B[56]~input_o\))) # (!\A[56]~input_o\ & 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0_combout\ & \B[56]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[56]~input_o\,
	datac => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:7:FA_inst|cout~0_combout\,
	datad => \B[56]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X69_Y73_N1
\B[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(57),
	o => \B[57]~input_o\);

-- Location: IOIBUF_X69_Y73_N15
\A[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(57),
	o => \A[57]~input_o\);

-- Location: LCCOMB_X69_Y69_N24
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|sum~0_combout\ = \B[57]~input_o\ $ (\A[57]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[57]~input_o\,
	datac => \A[57]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X69_Y69_N26
\S~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~26_combout\ = \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|sum~0_combout\ $ (((\S~17_combout\ & 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0_combout\)) # (!\S~17_combout\ & 
-- ((\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0_combout\,
	datab => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0_combout\,
	datac => \S~17_combout\,
	datad => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|sum~0_combout\,
	combout => \S~26_combout\);

-- Location: LCCOMB_X69_Y69_N6
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0_combout\ = (\B[57]~input_o\ & ((\A[57]~input_o\) # 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0_combout\))) # (!\B[57]~input_o\ & (\A[57]~input_o\ & 
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[57]~input_o\,
	datab => \A[57]~input_o\,
	datac => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X69_Y69_N20
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0_combout\ = (\B[57]~input_o\ & 
-- ((\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0_combout\) # (\A[57]~input_o\))) # (!\B[57]~input_o\ & 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0_combout\ & \A[57]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[57]~input_o\,
	datab => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:8:FA_inst|cout~0_combout\,
	datac => \A[57]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X89_Y0_N8
\B[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(58),
	o => \B[58]~input_o\);

-- Location: IOIBUF_X81_Y0_N22
\A[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(58),
	o => \A[58]~input_o\);

-- Location: LCCOMB_X83_Y1_N24
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|sum~0_combout\ = \B[58]~input_o\ $ (\A[58]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[58]~input_o\,
	datac => \A[58]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X83_Y1_N26
\S~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~27_combout\ = \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|sum~0_combout\ $ (((\S~17_combout\ & 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0_combout\)) # (!\S~17_combout\ & 
-- ((\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~17_combout\,
	datab => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0_combout\,
	datac => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0_combout\,
	datad => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|sum~0_combout\,
	combout => \S~27_combout\);

-- Location: LCCOMB_X83_Y1_N20
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0_combout\ = (\A[58]~input_o\ & 
-- ((\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0_combout\) # (\B[58]~input_o\))) # (!\A[58]~input_o\ & 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0_combout\ & \B[58]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[58]~input_o\,
	datab => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0_combout\,
	datac => \B[58]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X83_Y1_N14
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0_combout\ = (\A[58]~input_o\ & 
-- ((\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0_combout\) # (\B[58]~input_o\))) # (!\A[58]~input_o\ & 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0_combout\ & \B[58]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[58]~input_o\,
	datab => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:9:FA_inst|cout~0_combout\,
	datac => \B[58]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X83_Y0_N15
\B[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(59),
	o => \B[59]~input_o\);

-- Location: IOIBUF_X83_Y0_N22
\A[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(59),
	o => \A[59]~input_o\);

-- Location: LCCOMB_X83_Y1_N0
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|sum~0_combout\ = \B[59]~input_o\ $ (\A[59]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[59]~input_o\,
	datad => \A[59]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X83_Y1_N2
\S~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~28_combout\ = \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|sum~0_combout\ $ (((\S~17_combout\ & 
-- ((\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0_combout\))) # (!\S~17_combout\ & 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~17_combout\,
	datab => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0_combout\,
	datac => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0_combout\,
	datad => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|sum~0_combout\,
	combout => \S~28_combout\);

-- Location: IOIBUF_X83_Y0_N1
\B[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(60),
	o => \B[60]~input_o\);

-- Location: IOIBUF_X83_Y0_N8
\A[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(60),
	o => \A[60]~input_o\);

-- Location: LCCOMB_X83_Y1_N16
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|sum~0_combout\ = \B[60]~input_o\ $ (\A[60]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[60]~input_o\,
	datad => \A[60]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X83_Y1_N22
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0_combout\ = (\A[59]~input_o\ & 
-- ((\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0_combout\) # (\B[59]~input_o\))) # (!\A[59]~input_o\ & 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0_combout\ & \B[59]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[59]~input_o\,
	datab => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0_combout\,
	datac => \B[59]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X83_Y1_N12
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0_combout\ = (\A[59]~input_o\ & ((\B[59]~input_o\) # 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0_combout\))) # (!\A[59]~input_o\ & (\B[59]~input_o\ & 
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[59]~input_o\,
	datac => \B[59]~input_o\,
	datad => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:10:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X83_Y1_N18
\S~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~29_combout\ = \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|sum~0_combout\ $ (((\S~17_combout\ & 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0_combout\)) # (!\S~17_combout\ & 
-- ((\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~17_combout\,
	datab => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|sum~0_combout\,
	datac => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0_combout\,
	datad => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0_combout\,
	combout => \S~29_combout\);

-- Location: LCCOMB_X83_Y1_N28
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0_combout\ = (\A[60]~input_o\ & ((\B[60]~input_o\) # 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0_combout\))) # (!\A[60]~input_o\ & (\B[60]~input_o\ & 
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[60]~input_o\,
	datac => \B[60]~input_o\,
	datad => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X83_Y1_N6
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0_combout\ = 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0_combout\ & ((\A[60]~input_o\) # (\B[60]~input_o\))) # 
-- (!\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0_combout\ & (\A[60]~input_o\ & \B[60]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:11:FA_inst|cout~0_combout\,
	datab => \A[60]~input_o\,
	datac => \B[60]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X87_Y0_N22
\B[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(61),
	o => \B[61]~input_o\);

-- Location: IOIBUF_X89_Y0_N22
\A[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(61),
	o => \A[61]~input_o\);

-- Location: LCCOMB_X87_Y1_N24
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|sum~0_combout\ = \B[61]~input_o\ $ (\A[61]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[61]~input_o\,
	datad => \A[61]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X87_Y1_N10
\S~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~30_combout\ = \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|sum~0_combout\ $ (((\S~17_combout\ & 
-- ((\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0_combout\))) # (!\S~17_combout\ & 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0_combout\,
	datab => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0_combout\,
	datac => \S~17_combout\,
	datad => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|sum~0_combout\,
	combout => \S~30_combout\);

-- Location: LCCOMB_X87_Y1_N6
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0_combout\ = (\B[61]~input_o\ & 
-- ((\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0_combout\) # (\A[61]~input_o\))) # (!\B[61]~input_o\ & 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0_combout\ & \A[61]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[61]~input_o\,
	datac => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0_combout\,
	datad => \A[61]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X85_Y0_N1
\A[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(62),
	o => \A[62]~input_o\);

-- Location: IOIBUF_X89_Y0_N15
\B[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(62),
	o => \B[62]~input_o\);

-- Location: LCCOMB_X87_Y1_N8
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|sum~0_combout\ = \A[62]~input_o\ $ (\B[62]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[62]~input_o\,
	datac => \B[62]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X87_Y1_N28
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0_combout\ = 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0_combout\ & ((\B[61]~input_o\) # (\A[61]~input_o\))) # 
-- (!\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0_combout\ & (\B[61]~input_o\ & \A[61]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:12:FA_inst|cout~0_combout\,
	datac => \B[61]~input_o\,
	datad => \A[61]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X87_Y1_N26
\S~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~31_combout\ = \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|sum~0_combout\ $ (((\S~17_combout\ & 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0_combout\)) # (!\S~17_combout\ & 
-- ((\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0_combout\,
	datab => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|sum~0_combout\,
	datac => \S~17_combout\,
	datad => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0_combout\,
	combout => \S~31_combout\);

-- Location: LCCOMB_X87_Y1_N22
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\ = (\A[62]~input_o\ & ((\B[62]~input_o\) # 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0_combout\))) # (!\A[62]~input_o\ & (\B[62]~input_o\ & 
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[62]~input_o\,
	datac => \B[62]~input_o\,
	datad => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0_combout\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X87_Y0_N15
\A[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(63),
	o => \A[63]~input_o\);

-- Location: IOIBUF_X96_Y0_N22
\B[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(63),
	o => \B[63]~input_o\);

-- Location: LCCOMB_X87_Y1_N16
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|sum~0_combout\ = \A[63]~input_o\ $ (\B[63]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[63]~input_o\,
	datad => \B[63]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X87_Y1_N20
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\ = (\A[62]~input_o\ & 
-- ((\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0_combout\) # (\B[62]~input_o\))) # (!\A[62]~input_o\ & 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0_combout\ & \B[62]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[62]~input_o\,
	datab => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:13:FA_inst|cout~0_combout\,
	datac => \B[62]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X87_Y1_N18
\S~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~32_combout\ = \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|sum~0_combout\ $ (((\S~17_combout\ & 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\)) # (!\S~17_combout\ & 
-- ((\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\,
	datab => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|sum~0_combout\,
	datac => \S~17_combout\,
	datad => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\,
	combout => \S~32_combout\);

-- Location: LCCOMB_X87_Y1_N30
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\ = 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\ & ((\A[63]~input_o\) # (\B[63]~input_o\))) # 
-- (!\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\ & (\A[63]~input_o\ & \B[63]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\,
	datac => \A[63]~input_o\,
	datad => \B[63]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X87_Y1_N12
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\ = 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\ & ((\A[63]~input_o\) # (\B[63]~input_o\))) # 
-- (!\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\ & (\A[63]~input_o\ & \B[63]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\,
	datac => \A[63]~input_o\,
	datad => \B[63]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X87_Y1_N0
\Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cout~0_combout\ = (\S~17_combout\ & ((\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\))) # (!\S~17_combout\ & 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\,
	datac => \S~17_combout\,
	datad => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\,
	combout => \Cout~0_combout\);

-- Location: LCCOMB_X87_Y1_N2
\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|Ovfl\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|Ovfl~combout\ = 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\ & (!\A[63]~input_o\ & !\B[63]~input_o\)) # 
-- (!\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\ & (\A[63]~input_o\ & \B[63]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\,
	datac => \A[63]~input_o\,
	datad => \B[63]~input_o\,
	combout => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|Ovfl~combout\);

-- Location: LCCOMB_X87_Y1_N4
\Ovfl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = (\S~17_combout\ & (((\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|Ovfl~combout\)))) # (!\S~17_combout\ & 
-- (\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\ $ 
-- ((\Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:15:FA_inst|cout~0_combout\,
	datab => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC0|Base_Case_Generate:RCA_Actual|gen_adders:14:FA_inst|cout~0_combout\,
	datac => \S~17_combout\,
	datad => \Recursive_Step_Generate:CSA_Upper_Half_MidC1|Recursive_Step_Generate:CSA_Upper_Half_MidC1|Base_Case_Generate:RCA_Actual|Ovfl~combout\,
	combout => \Ovfl~0_combout\);

ww_S(0) <= \S[0]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_S(2) <= \S[2]~output_o\;

ww_S(3) <= \S[3]~output_o\;

ww_S(4) <= \S[4]~output_o\;

ww_S(5) <= \S[5]~output_o\;

ww_S(6) <= \S[6]~output_o\;

ww_S(7) <= \S[7]~output_o\;

ww_S(8) <= \S[8]~output_o\;

ww_S(9) <= \S[9]~output_o\;

ww_S(10) <= \S[10]~output_o\;

ww_S(11) <= \S[11]~output_o\;

ww_S(12) <= \S[12]~output_o\;

ww_S(13) <= \S[13]~output_o\;

ww_S(14) <= \S[14]~output_o\;

ww_S(15) <= \S[15]~output_o\;

ww_S(16) <= \S[16]~output_o\;

ww_S(17) <= \S[17]~output_o\;

ww_S(18) <= \S[18]~output_o\;

ww_S(19) <= \S[19]~output_o\;

ww_S(20) <= \S[20]~output_o\;

ww_S(21) <= \S[21]~output_o\;

ww_S(22) <= \S[22]~output_o\;

ww_S(23) <= \S[23]~output_o\;

ww_S(24) <= \S[24]~output_o\;

ww_S(25) <= \S[25]~output_o\;

ww_S(26) <= \S[26]~output_o\;

ww_S(27) <= \S[27]~output_o\;

ww_S(28) <= \S[28]~output_o\;

ww_S(29) <= \S[29]~output_o\;

ww_S(30) <= \S[30]~output_o\;

ww_S(31) <= \S[31]~output_o\;

ww_S(32) <= \S[32]~output_o\;

ww_S(33) <= \S[33]~output_o\;

ww_S(34) <= \S[34]~output_o\;

ww_S(35) <= \S[35]~output_o\;

ww_S(36) <= \S[36]~output_o\;

ww_S(37) <= \S[37]~output_o\;

ww_S(38) <= \S[38]~output_o\;

ww_S(39) <= \S[39]~output_o\;

ww_S(40) <= \S[40]~output_o\;

ww_S(41) <= \S[41]~output_o\;

ww_S(42) <= \S[42]~output_o\;

ww_S(43) <= \S[43]~output_o\;

ww_S(44) <= \S[44]~output_o\;

ww_S(45) <= \S[45]~output_o\;

ww_S(46) <= \S[46]~output_o\;

ww_S(47) <= \S[47]~output_o\;

ww_S(48) <= \S[48]~output_o\;

ww_S(49) <= \S[49]~output_o\;

ww_S(50) <= \S[50]~output_o\;

ww_S(51) <= \S[51]~output_o\;

ww_S(52) <= \S[52]~output_o\;

ww_S(53) <= \S[53]~output_o\;

ww_S(54) <= \S[54]~output_o\;

ww_S(55) <= \S[55]~output_o\;

ww_S(56) <= \S[56]~output_o\;

ww_S(57) <= \S[57]~output_o\;

ww_S(58) <= \S[58]~output_o\;

ww_S(59) <= \S[59]~output_o\;

ww_S(60) <= \S[60]~output_o\;

ww_S(61) <= \S[61]~output_o\;

ww_S(62) <= \S[62]~output_o\;

ww_S(63) <= \S[63]~output_o\;

ww_Cout <= \Cout~output_o\;

ww_Ovfl <= \Ovfl~output_o\;
END structure;


