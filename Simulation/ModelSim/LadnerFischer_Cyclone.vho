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

-- DATE "11/16/2025 15:38:28"

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

ENTITY 	LadnerFischer IS
    PORT (
	A : IN std_logic_vector(63 DOWNTO 0);
	B : IN std_logic_vector(63 DOWNTO 0);
	Cin : IN std_logic;
	S : BUFFER std_logic_vector(63 DOWNTO 0);
	Cout : BUFFER std_logic;
	Ovfl : BUFFER std_logic
	);
END LadnerFischer;

-- Design Ports Information
-- S[0]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[16]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[17]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[18]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[19]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[20]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[21]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[22]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[23]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[24]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[25]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[26]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[27]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[28]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[29]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[30]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[31]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[32]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[33]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[34]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[35]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[36]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[37]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[38]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[39]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[40]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[41]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[42]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[43]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[44]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[45]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[46]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[47]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[48]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[49]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[50]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[51]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[52]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[53]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[54]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[55]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[56]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[57]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[58]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[59]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[60]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[61]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[62]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[63]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_AH26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[32]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[32]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[33]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[33]	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[34]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[34]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[35]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[35]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[36]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[36]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[37]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[37]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[38]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[38]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[39]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[39]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[40]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[40]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[41]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[41]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[42]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[42]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[43]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[43]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[44]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[44]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[45]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[45]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[46]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[46]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[47]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[47]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[48]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[48]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[49]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[49]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[50]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[50]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[51]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[51]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[52]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[52]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[53]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[53]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[54]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[54]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[55]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[55]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[56]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[56]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[57]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[57]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[58]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[58]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[59]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[59]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[60]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[60]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[61]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[61]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[62]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[62]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[63]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[63]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LadnerFischer IS
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
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \S~12_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \S~13_combout\ : std_logic;
SIGNAL \ppn_carry:pg[1][0]~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \c_var~18_combout\ : std_logic;
SIGNAL \S~14_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \ppn_carry:c_var[3]~0_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \c_var~19_combout\ : std_logic;
SIGNAL \S~15_combout\ : std_logic;
SIGNAL \pg~6_combout\ : std_logic;
SIGNAL \pg~7_combout\ : std_logic;
SIGNAL \pg~8_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \c_var~20_combout\ : std_logic;
SIGNAL \S~16_combout\ : std_logic;
SIGNAL \ppn_carry:pg[4][0]~0_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \S~17_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \pg~9_combout\ : std_logic;
SIGNAL \pg~10_combout\ : std_logic;
SIGNAL \c_var~50_combout\ : std_logic;
SIGNAL \S~18_combout\ : std_logic;
SIGNAL \ppn_carry:pg[6][0]~0_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \S~19_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \ppn_carry:pg[7][1]~0_combout\ : std_logic;
SIGNAL \pg~11_combout\ : std_logic;
SIGNAL \pg~12_combout\ : std_logic;
SIGNAL \ppn_carry:c_var[8]~0_combout\ : std_logic;
SIGNAL \c_var~21_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \S~20_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \pg~13_combout\ : std_logic;
SIGNAL \ppn_carry:pg[8][0]~0_combout\ : std_logic;
SIGNAL \c_var~22_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \S~21_combout\ : std_logic;
SIGNAL \pg~14_combout\ : std_logic;
SIGNAL \pg~15_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \c_var~23_combout\ : std_logic;
SIGNAL \pg~16_combout\ : std_logic;
SIGNAL \S~22_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \ppn_carry:pg[10][0]~0_combout\ : std_logic;
SIGNAL \S~23_combout\ : std_logic;
SIGNAL \c_var~24_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \pg~17_combout\ : std_logic;
SIGNAL \pg~18_combout\ : std_logic;
SIGNAL \pg~19_combout\ : std_logic;
SIGNAL \S~24_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \ppn_carry:pg[12][0]~0_combout\ : std_logic;
SIGNAL \S~25_combout\ : std_logic;
SIGNAL \pg~20_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \c_var~51_combout\ : std_logic;
SIGNAL \pg~21_combout\ : std_logic;
SIGNAL \S~26_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \ppn_carry:pg[14][0]~0_combout\ : std_logic;
SIGNAL \S~27_combout\ : std_logic;
SIGNAL \pg~22_combout\ : std_logic;
SIGNAL \pg~23_combout\ : std_logic;
SIGNAL \pg~24_combout\ : std_logic;
SIGNAL \pg~25_combout\ : std_logic;
SIGNAL \pg~26_combout\ : std_logic;
SIGNAL \pg~27_combout\ : std_logic;
SIGNAL \c_var~25_combout\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \S~28_combout\ : std_logic;
SIGNAL \ppn_carry:pg[16][0]~0_combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \S~29_combout\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \pg~29_combout\ : std_logic;
SIGNAL \ppn_carry:c_var[18]~0_combout\ : std_logic;
SIGNAL \pg~28_combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \S~70_combout\ : std_logic;
SIGNAL \ppn_carry:pg[18][0]~0_combout\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \c_var~26_combout\ : std_logic;
SIGNAL \S~30_combout\ : std_logic;
SIGNAL \ppn_carry:pg[19][1]~0_combout\ : std_logic;
SIGNAL \c_var~27_combout\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \pg~30_combout\ : std_logic;
SIGNAL \pg~31_combout\ : std_logic;
SIGNAL \pg~32_combout\ : std_logic;
SIGNAL \S~31_combout\ : std_logic;
SIGNAL \ppn_carry:pg[20][0]~0_combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \S~32_combout\ : std_logic;
SIGNAL \pg~35_combout\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \c_var~28_combout\ : std_logic;
SIGNAL \pg~33_combout\ : std_logic;
SIGNAL \pg~34_combout\ : std_logic;
SIGNAL \S~33_combout\ : std_logic;
SIGNAL \ppn_carry:pg[22][0]~0_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \S~34_combout\ : std_logic;
SIGNAL \pg~104_combout\ : std_logic;
SIGNAL \c_var~29_combout\ : std_logic;
SIGNAL \pg~36_combout\ : std_logic;
SIGNAL \pg~37_combout\ : std_logic;
SIGNAL \pg~38_combout\ : std_logic;
SIGNAL \pg~39_combout\ : std_logic;
SIGNAL \pg~40_combout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \S~35_combout\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \ppn_carry:pg[24][0]~0_combout\ : std_logic;
SIGNAL \S~36_combout\ : std_logic;
SIGNAL \pg~41_combout\ : std_logic;
SIGNAL \pg~42_combout\ : std_logic;
SIGNAL \ppn_carry:c_var[26]~0_combout\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \S~71_combout\ : std_logic;
SIGNAL \ppn_carry:pg[26][0]~0_combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \c_var~30_combout\ : std_logic;
SIGNAL \S~37_combout\ : std_logic;
SIGNAL \pg~45_combout\ : std_logic;
SIGNAL \pg~46_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \c_var~31_combout\ : std_logic;
SIGNAL \pg~43_combout\ : std_logic;
SIGNAL \pg~44_combout\ : std_logic;
SIGNAL \S~38_combout\ : std_logic;
SIGNAL \ppn_carry:pg[28][0]~0_combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \S~39_combout\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \pg~47_combout\ : std_logic;
SIGNAL \pg~49_combout\ : std_logic;
SIGNAL \ppn_carry:c_var[30]~0_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \pg~48_combout\ : std_logic;
SIGNAL \S~72_combout\ : std_logic;
SIGNAL \c_var~52_combout\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \ppn_carry:pg[30][0]~0_combout\ : std_logic;
SIGNAL \S~40_combout\ : std_logic;
SIGNAL \pg~52_combout\ : std_logic;
SIGNAL \pg~53_combout\ : std_logic;
SIGNAL \ppn_carry:pg[31][1]~4_combout\ : std_logic;
SIGNAL \pg~54_combout\ : std_logic;
SIGNAL \pg~55_combout\ : std_logic;
SIGNAL \A[32]~input_o\ : std_logic;
SIGNAL \B[32]~input_o\ : std_logic;
SIGNAL \c_var~32_combout\ : std_logic;
SIGNAL \pg~50_combout\ : std_logic;
SIGNAL \pg~51_combout\ : std_logic;
SIGNAL \S~41_combout\ : std_logic;
SIGNAL \ppn_carry:pg[32][0]~0_combout\ : std_logic;
SIGNAL \A[33]~input_o\ : std_logic;
SIGNAL \B[33]~input_o\ : std_logic;
SIGNAL \S~42_combout\ : std_logic;
SIGNAL \pg~57_combout\ : std_logic;
SIGNAL \pg~58_combout\ : std_logic;
SIGNAL \c_var~33_combout\ : std_logic;
SIGNAL \pg~56_combout\ : std_logic;
SIGNAL \A[34]~input_o\ : std_logic;
SIGNAL \B[34]~input_o\ : std_logic;
SIGNAL \S~43_combout\ : std_logic;
SIGNAL \ppn_carry:pg[34][0]~0_combout\ : std_logic;
SIGNAL \c_var~34_combout\ : std_logic;
SIGNAL \B[35]~input_o\ : std_logic;
SIGNAL \A[35]~input_o\ : std_logic;
SIGNAL \S~44_combout\ : std_logic;
SIGNAL \c_var~53_combout\ : std_logic;
SIGNAL \A[36]~input_o\ : std_logic;
SIGNAL \B[36]~input_o\ : std_logic;
SIGNAL \pg~59_combout\ : std_logic;
SIGNAL \pg~60_combout\ : std_logic;
SIGNAL \pg~61_combout\ : std_logic;
SIGNAL \S~45_combout\ : std_logic;
SIGNAL \ppn_carry:pg[36][0]~0_combout\ : std_logic;
SIGNAL \B[37]~input_o\ : std_logic;
SIGNAL \A[37]~input_o\ : std_logic;
SIGNAL \S~46_combout\ : std_logic;
SIGNAL \pg~63_combout\ : std_logic;
SIGNAL \pg~62_combout\ : std_logic;
SIGNAL \c_var~54_combout\ : std_logic;
SIGNAL \A[38]~input_o\ : std_logic;
SIGNAL \B[38]~input_o\ : std_logic;
SIGNAL \S~47_combout\ : std_logic;
SIGNAL \B[39]~input_o\ : std_logic;
SIGNAL \A[39]~input_o\ : std_logic;
SIGNAL \ppn_carry:pg[38][0]~0_combout\ : std_logic;
SIGNAL \S~48_combout\ : std_logic;
SIGNAL \pg~67_combout\ : std_logic;
SIGNAL \pg~68_combout\ : std_logic;
SIGNAL \pg~64_combout\ : std_logic;
SIGNAL \pg~69_combout\ : std_logic;
SIGNAL \pg~65_combout\ : std_logic;
SIGNAL \pg~66_combout\ : std_logic;
SIGNAL \c_var~35_combout\ : std_logic;
SIGNAL \A[40]~input_o\ : std_logic;
SIGNAL \B[40]~input_o\ : std_logic;
SIGNAL \S~49_combout\ : std_logic;
SIGNAL \ppn_carry:pg[40][0]~0_combout\ : std_logic;
SIGNAL \A[41]~input_o\ : std_logic;
SIGNAL \B[41]~input_o\ : std_logic;
SIGNAL \S~50_combout\ : std_logic;
SIGNAL \A[42]~input_o\ : std_logic;
SIGNAL \pg~70_combout\ : std_logic;
SIGNAL \pg~71_combout\ : std_logic;
SIGNAL \ppn_carry:c_var[42]~0_combout\ : std_logic;
SIGNAL \B[42]~input_o\ : std_logic;
SIGNAL \S~73_combout\ : std_logic;
SIGNAL \ppn_carry:pg[42][0]~0_combout\ : std_logic;
SIGNAL \c_var~36_combout\ : std_logic;
SIGNAL \B[43]~input_o\ : std_logic;
SIGNAL \A[43]~input_o\ : std_logic;
SIGNAL \S~51_combout\ : std_logic;
SIGNAL \c_var~55_combout\ : std_logic;
SIGNAL \A[44]~input_o\ : std_logic;
SIGNAL \B[44]~input_o\ : std_logic;
SIGNAL \pg~72_combout\ : std_logic;
SIGNAL \pg~73_combout\ : std_logic;
SIGNAL \pg~74_combout\ : std_logic;
SIGNAL \S~52_combout\ : std_logic;
SIGNAL \ppn_carry:pg[44][0]~0_combout\ : std_logic;
SIGNAL \A[45]~input_o\ : std_logic;
SIGNAL \B[45]~input_o\ : std_logic;
SIGNAL \S~53_combout\ : std_logic;
SIGNAL \B[46]~input_o\ : std_logic;
SIGNAL \pg~75_combout\ : std_logic;
SIGNAL \c_var~37_combout\ : std_logic;
SIGNAL \pg~76_combout\ : std_logic;
SIGNAL \ppn_carry:c_var[46]~0_combout\ : std_logic;
SIGNAL \A[46]~input_o\ : std_logic;
SIGNAL \S~54_combout\ : std_logic;
SIGNAL \A[47]~input_o\ : std_logic;
SIGNAL \B[47]~input_o\ : std_logic;
SIGNAL \c_var~38_combout\ : std_logic;
SIGNAL \ppn_carry:pg[46][0]~0_combout\ : std_logic;
SIGNAL \S~55_combout\ : std_logic;
SIGNAL \B[48]~input_o\ : std_logic;
SIGNAL \A[48]~input_o\ : std_logic;
SIGNAL \pg~77_combout\ : std_logic;
SIGNAL \pg~78_combout\ : std_logic;
SIGNAL \pg~79_combout\ : std_logic;
SIGNAL \c_var~39_combout\ : std_logic;
SIGNAL \pg~81_combout\ : std_logic;
SIGNAL \pg~80_combout\ : std_logic;
SIGNAL \pg~82_combout\ : std_logic;
SIGNAL \pg~83_combout\ : std_logic;
SIGNAL \S~56_combout\ : std_logic;
SIGNAL \B[49]~input_o\ : std_logic;
SIGNAL \A[49]~input_o\ : std_logic;
SIGNAL \ppn_carry:pg[48][0]~0_combout\ : std_logic;
SIGNAL \S~57_combout\ : std_logic;
SIGNAL \pg~84_combout\ : std_logic;
SIGNAL \pg~85_combout\ : std_logic;
SIGNAL \ppn_carry:c_var[50]~0_combout\ : std_logic;
SIGNAL \B[50]~input_o\ : std_logic;
SIGNAL \A[50]~input_o\ : std_logic;
SIGNAL \S~74_combout\ : std_logic;
SIGNAL \ppn_carry:pg[50][0]~0_combout\ : std_logic;
SIGNAL \B[51]~input_o\ : std_logic;
SIGNAL \A[51]~input_o\ : std_logic;
SIGNAL \c_var~40_combout\ : std_logic;
SIGNAL \S~58_combout\ : std_logic;
SIGNAL \pg~86_combout\ : std_logic;
SIGNAL \c_var~41_combout\ : std_logic;
SIGNAL \pg~87_combout\ : std_logic;
SIGNAL \pg~88_combout\ : std_logic;
SIGNAL \A[52]~input_o\ : std_logic;
SIGNAL \B[52]~input_o\ : std_logic;
SIGNAL \pg~89_combout\ : std_logic;
SIGNAL \S~59_combout\ : std_logic;
SIGNAL \A[53]~input_o\ : std_logic;
SIGNAL \B[53]~input_o\ : std_logic;
SIGNAL \ppn_carry:pg[52][0]~0_combout\ : std_logic;
SIGNAL \S~60_combout\ : std_logic;
SIGNAL \pg~90_combout\ : std_logic;
SIGNAL \A[54]~input_o\ : std_logic;
SIGNAL \pg~91_combout\ : std_logic;
SIGNAL \ppn_carry:c_var[54]~0_combout\ : std_logic;
SIGNAL \B[54]~input_o\ : std_logic;
SIGNAL \S~61_combout\ : std_logic;
SIGNAL \B[55]~input_o\ : std_logic;
SIGNAL \A[55]~input_o\ : std_logic;
SIGNAL \ppn_carry:pg[54][0]~0_combout\ : std_logic;
SIGNAL \c_var~42_combout\ : std_logic;
SIGNAL \S~62_combout\ : std_logic;
SIGNAL \pg~93_combout\ : std_logic;
SIGNAL \pg~94_combout\ : std_logic;
SIGNAL \pg~95_combout\ : std_logic;
SIGNAL \pg~105_combout\ : std_logic;
SIGNAL \c_var~43_combout\ : std_logic;
SIGNAL \pg~92_combout\ : std_logic;
SIGNAL \A[56]~input_o\ : std_logic;
SIGNAL \B[56]~input_o\ : std_logic;
SIGNAL \S~63_combout\ : std_logic;
SIGNAL \B[57]~input_o\ : std_logic;
SIGNAL \A[57]~input_o\ : std_logic;
SIGNAL \ppn_carry:pg[56][0]~0_combout\ : std_logic;
SIGNAL \S~64_combout\ : std_logic;
SIGNAL \pg~97_combout\ : std_logic;
SIGNAL \ppn_carry:c_var[58]~0_combout\ : std_logic;
SIGNAL \B[58]~input_o\ : std_logic;
SIGNAL \A[58]~input_o\ : std_logic;
SIGNAL \pg~96_combout\ : std_logic;
SIGNAL \S~75_combout\ : std_logic;
SIGNAL \c_var~44_combout\ : std_logic;
SIGNAL \A[59]~input_o\ : std_logic;
SIGNAL \B[59]~input_o\ : std_logic;
SIGNAL \ppn_carry:pg[58][0]~0_combout\ : std_logic;
SIGNAL \S~65_combout\ : std_logic;
SIGNAL \pg~98_combout\ : std_logic;
SIGNAL \c_var~45_combout\ : std_logic;
SIGNAL \pg~99_combout\ : std_logic;
SIGNAL \pg~100_combout\ : std_logic;
SIGNAL \pg~101_combout\ : std_logic;
SIGNAL \A[60]~input_o\ : std_logic;
SIGNAL \B[60]~input_o\ : std_logic;
SIGNAL \S~66_combout\ : std_logic;
SIGNAL \ppn_carry:pg[60][0]~0_combout\ : std_logic;
SIGNAL \A[61]~input_o\ : std_logic;
SIGNAL \B[61]~input_o\ : std_logic;
SIGNAL \S~67_combout\ : std_logic;
SIGNAL \pg~103_combout\ : std_logic;
SIGNAL \ppn_carry:c_var[62]~0_combout\ : std_logic;
SIGNAL \B[62]~input_o\ : std_logic;
SIGNAL \pg~102_combout\ : std_logic;
SIGNAL \A[62]~input_o\ : std_logic;
SIGNAL \S~68_combout\ : std_logic;
SIGNAL \A[63]~input_o\ : std_logic;
SIGNAL \ppn_carry:pg[62][0]~0_combout\ : std_logic;
SIGNAL \c_var~46_combout\ : std_logic;
SIGNAL \ppn_carry:c_var[63]~combout\ : std_logic;
SIGNAL \B[63]~input_o\ : std_logic;
SIGNAL \S~69_combout\ : std_logic;
SIGNAL \c_var~47_combout\ : std_logic;
SIGNAL \c_var~48_combout\ : std_logic;
SIGNAL \c_var~56_combout\ : std_logic;
SIGNAL \c_var~57_combout\ : std_logic;
SIGNAL \c_var~49_combout\ : std_logic;
SIGNAL \Ovfl~2_combout\ : std_logic;
SIGNAL p : std_logic_vector(63 DOWNTO 0);

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

-- Location: IOOBUF_X49_Y0_N9
\S[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~12_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\S[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~13_combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X47_Y0_N2
\S[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~14_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\S[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~15_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\S[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~16_combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\S[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~17_combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\S[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~18_combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\S[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~19_combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\S[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~20_combout\,
	devoe => ww_devoe,
	o => \S[8]~output_o\);

-- Location: IOOBUF_X83_Y0_N9
\S[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~21_combout\,
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\S[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~22_combout\,
	devoe => ww_devoe,
	o => \S[10]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\S[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~23_combout\,
	devoe => ww_devoe,
	o => \S[11]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\S[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~24_combout\,
	devoe => ww_devoe,
	o => \S[12]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\S[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~25_combout\,
	devoe => ww_devoe,
	o => \S[13]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\S[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~26_combout\,
	devoe => ww_devoe,
	o => \S[14]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\S[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~27_combout\,
	devoe => ww_devoe,
	o => \S[15]~output_o\);

-- Location: IOOBUF_X91_Y0_N16
\S[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~28_combout\,
	devoe => ww_devoe,
	o => \S[16]~output_o\);

-- Location: IOOBUF_X94_Y0_N9
\S[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~29_combout\,
	devoe => ww_devoe,
	o => \S[17]~output_o\);

-- Location: IOOBUF_X115_Y9_N23
\S[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~70_combout\,
	devoe => ww_devoe,
	o => \S[18]~output_o\);

-- Location: IOOBUF_X96_Y0_N23
\S[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~30_combout\,
	devoe => ww_devoe,
	o => \S[19]~output_o\);

-- Location: IOOBUF_X85_Y0_N2
\S[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~31_combout\,
	devoe => ww_devoe,
	o => \S[20]~output_o\);

-- Location: IOOBUF_X85_Y0_N16
\S[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~32_combout\,
	devoe => ww_devoe,
	o => \S[21]~output_o\);

-- Location: IOOBUF_X87_Y0_N23
\S[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~33_combout\,
	devoe => ww_devoe,
	o => \S[22]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\S[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~34_combout\,
	devoe => ww_devoe,
	o => \S[23]~output_o\);

-- Location: IOOBUF_X107_Y0_N2
\S[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~35_combout\,
	devoe => ww_devoe,
	o => \S[24]~output_o\);

-- Location: IOOBUF_X115_Y10_N2
\S[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~36_combout\,
	devoe => ww_devoe,
	o => \S[25]~output_o\);

-- Location: IOOBUF_X115_Y8_N23
\S[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~71_combout\,
	devoe => ww_devoe,
	o => \S[26]~output_o\);

-- Location: IOOBUF_X115_Y10_N9
\S[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~37_combout\,
	devoe => ww_devoe,
	o => \S[27]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\S[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~38_combout\,
	devoe => ww_devoe,
	o => \S[28]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\S[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~39_combout\,
	devoe => ww_devoe,
	o => \S[29]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\S[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~72_combout\,
	devoe => ww_devoe,
	o => \S[30]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\S[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~40_combout\,
	devoe => ww_devoe,
	o => \S[31]~output_o\);

-- Location: IOOBUF_X115_Y14_N9
\S[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~41_combout\,
	devoe => ww_devoe,
	o => \S[32]~output_o\);

-- Location: IOOBUF_X115_Y15_N9
\S[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~42_combout\,
	devoe => ww_devoe,
	o => \S[33]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\S[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~43_combout\,
	devoe => ww_devoe,
	o => \S[34]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\S[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~44_combout\,
	devoe => ww_devoe,
	o => \S[35]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\S[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~45_combout\,
	devoe => ww_devoe,
	o => \S[36]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\S[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~46_combout\,
	devoe => ww_devoe,
	o => \S[37]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\S[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~47_combout\,
	devoe => ww_devoe,
	o => \S[38]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\S[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~48_combout\,
	devoe => ww_devoe,
	o => \S[39]~output_o\);

-- Location: IOOBUF_X115_Y26_N16
\S[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~49_combout\,
	devoe => ww_devoe,
	o => \S[40]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\S[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~50_combout\,
	devoe => ww_devoe,
	o => \S[41]~output_o\);

-- Location: IOOBUF_X115_Y27_N9
\S[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~73_combout\,
	devoe => ww_devoe,
	o => \S[42]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\S[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~51_combout\,
	devoe => ww_devoe,
	o => \S[43]~output_o\);

-- Location: IOOBUF_X115_Y18_N9
\S[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~52_combout\,
	devoe => ww_devoe,
	o => \S[44]~output_o\);

-- Location: IOOBUF_X115_Y24_N9
\S[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~53_combout\,
	devoe => ww_devoe,
	o => \S[45]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\S[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~54_combout\,
	devoe => ww_devoe,
	o => \S[46]~output_o\);

-- Location: IOOBUF_X115_Y15_N2
\S[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~55_combout\,
	devoe => ww_devoe,
	o => \S[47]~output_o\);

-- Location: IOOBUF_X109_Y73_N2
\S[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~56_combout\,
	devoe => ww_devoe,
	o => \S[48]~output_o\);

-- Location: IOOBUF_X107_Y73_N2
\S[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~57_combout\,
	devoe => ww_devoe,
	o => \S[49]~output_o\);

-- Location: IOOBUF_X105_Y73_N2
\S[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~74_combout\,
	devoe => ww_devoe,
	o => \S[50]~output_o\);

-- Location: IOOBUF_X109_Y73_N9
\S[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~58_combout\,
	devoe => ww_devoe,
	o => \S[51]~output_o\);

-- Location: IOOBUF_X115_Y57_N23
\S[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~59_combout\,
	devoe => ww_devoe,
	o => \S[52]~output_o\);

-- Location: IOOBUF_X115_Y59_N23
\S[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~60_combout\,
	devoe => ww_devoe,
	o => \S[53]~output_o\);

-- Location: IOOBUF_X115_Y58_N16
\S[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~61_combout\,
	devoe => ww_devoe,
	o => \S[54]~output_o\);

-- Location: IOOBUF_X115_Y59_N16
\S[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~62_combout\,
	devoe => ww_devoe,
	o => \S[55]~output_o\);

-- Location: IOOBUF_X115_Y41_N9
\S[56]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~63_combout\,
	devoe => ww_devoe,
	o => \S[56]~output_o\);

-- Location: IOOBUF_X115_Y40_N9
\S[57]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~64_combout\,
	devoe => ww_devoe,
	o => \S[57]~output_o\);

-- Location: IOOBUF_X115_Y36_N9
\S[58]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~75_combout\,
	devoe => ww_devoe,
	o => \S[58]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\S[59]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~65_combout\,
	devoe => ww_devoe,
	o => \S[59]~output_o\);

-- Location: IOOBUF_X115_Y47_N23
\S[60]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~66_combout\,
	devoe => ww_devoe,
	o => \S[60]~output_o\);

-- Location: IOOBUF_X115_Y47_N16
\S[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~67_combout\,
	devoe => ww_devoe,
	o => \S[61]~output_o\);

-- Location: IOOBUF_X115_Y44_N9
\S[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~68_combout\,
	devoe => ww_devoe,
	o => \S[62]~output_o\);

-- Location: IOOBUF_X115_Y51_N9
\S[63]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~69_combout\,
	devoe => ww_devoe,
	o => \S[63]~output_o\);

-- Location: IOOBUF_X115_Y50_N9
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c_var~49_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X115_Y52_N9
\Ovfl~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ovfl~2_combout\,
	devoe => ww_devoe,
	o => \Ovfl~output_o\);

-- Location: IOIBUF_X47_Y0_N8
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X52_Y0_N15
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X49_Y0_N22
\Cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: LCCOMB_X55_Y1_N16
\S~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~12_combout\ = \B[0]~input_o\ $ (\A[0]~input_o\ $ (\Cin~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \Cin~input_o\,
	combout => \S~12_combout\);

-- Location: IOIBUF_X52_Y0_N8
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X54_Y0_N22
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X55_Y1_N2
\p[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(1) = \A[1]~input_o\ $ (\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => p(1));

-- Location: LCCOMB_X55_Y1_N28
\S~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~13_combout\ = p(1) $ (((\Cin~input_o\ & ((\B[0]~input_o\) # (\A[0]~input_o\))) # (!\Cin~input_o\ & (\B[0]~input_o\ & \A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => p(1),
	combout => \S~13_combout\);

-- Location: LCCOMB_X55_Y1_N0
\ppn_carry:pg[1][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[1][0]~0_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\) # ((\B[0]~input_o\ & \A[0]~input_o\)))) # (!\A[1]~input_o\ & (\B[0]~input_o\ & (\A[0]~input_o\ & \B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ppn_carry:pg[1][0]~0_combout\);

-- Location: IOIBUF_X54_Y0_N1
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X49_Y0_N15
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X55_Y1_N26
\p[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(2) = \A[2]~input_o\ $ (\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => p(2));

-- Location: LCCOMB_X55_Y1_N6
\c_var~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_var~18_combout\ = (\A[1]~input_o\ & (!\B[1]~input_o\ & (\B[0]~input_o\ $ (\A[0]~input_o\)))) # (!\A[1]~input_o\ & (\B[1]~input_o\ & (\B[0]~input_o\ $ (\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \c_var~18_combout\);

-- Location: LCCOMB_X55_Y1_N12
\S~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~14_combout\ = p(2) $ (((\ppn_carry:pg[1][0]~0_combout\) # ((\Cin~input_o\ & \c_var~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \ppn_carry:pg[1][0]~0_combout\,
	datac => p(2),
	datad => \c_var~18_combout\,
	combout => \S~14_combout\);

-- Location: IOIBUF_X54_Y0_N15
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X55_Y1_N8
\ppn_carry:c_var[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ppn_carry:c_var[3]~0_combout\ = (\B[2]~input_o\ & ((\A[2]~input_o\) # (\ppn_carry:pg[1][0]~0_combout\))) # (!\B[2]~input_o\ & (\A[2]~input_o\ & \ppn_carry:pg[1][0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \A[2]~input_o\,
	datad => \ppn_carry:pg[1][0]~0_combout\,
	combout => \ppn_carry:c_var[3]~0_combout\);

-- Location: IOIBUF_X52_Y0_N22
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X55_Y1_N22
\c_var~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_var~19_combout\ = (\Cin~input_o\ & (\c_var~18_combout\ & (\B[2]~input_o\ $ (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \B[2]~input_o\,
	datac => \A[2]~input_o\,
	datad => \c_var~18_combout\,
	combout => \c_var~19_combout\);

-- Location: LCCOMB_X55_Y1_N18
\S~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~15_combout\ = \B[3]~input_o\ $ (\A[3]~input_o\ $ (((\ppn_carry:c_var[3]~0_combout\) # (\c_var~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \ppn_carry:c_var[3]~0_combout\,
	datac => \A[3]~input_o\,
	datad => \c_var~19_combout\,
	combout => \S~15_combout\);

-- Location: LCCOMB_X55_Y1_N4
\pg~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~6_combout\ = (\A[3]~input_o\ & ((\B[3]~input_o\) # ((\B[2]~input_o\ & \A[2]~input_o\)))) # (!\A[3]~input_o\ & (\B[2]~input_o\ & (\A[2]~input_o\ & \B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \pg~6_combout\);

-- Location: LCCOMB_X55_Y1_N30
\pg~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~7_combout\ = (\B[2]~input_o\ & (!\A[2]~input_o\ & (\A[3]~input_o\ $ (\B[3]~input_o\)))) # (!\B[2]~input_o\ & (\A[2]~input_o\ & (\A[3]~input_o\ $ (\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \pg~7_combout\);

-- Location: LCCOMB_X55_Y1_N24
\pg~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~8_combout\ = (\ppn_carry:pg[1][0]~0_combout\ & \pg~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ppn_carry:pg[1][0]~0_combout\,
	datac => \pg~7_combout\,
	combout => \pg~8_combout\);

-- Location: IOIBUF_X60_Y0_N15
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X65_Y0_N8
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X60_Y1_N8
\p[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(4) = \B[4]~input_o\ $ (\A[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[4]~input_o\,
	datad => \A[4]~input_o\,
	combout => p(4));

-- Location: LCCOMB_X55_Y1_N10
\c_var~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_var~20_combout\ = (\Cin~input_o\ & (\pg~7_combout\ & \c_var~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datac => \pg~7_combout\,
	datad => \c_var~18_combout\,
	combout => \c_var~20_combout\);

-- Location: LCCOMB_X60_Y1_N2
\S~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~16_combout\ = p(4) $ (((\pg~6_combout\) # ((\pg~8_combout\) # (\c_var~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~6_combout\,
	datab => \pg~8_combout\,
	datac => p(4),
	datad => \c_var~20_combout\,
	combout => \S~16_combout\);

-- Location: LCCOMB_X60_Y1_N28
\ppn_carry:pg[4][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[4][0]~0_combout\ = (\B[4]~input_o\ & ((\pg~6_combout\) # ((\pg~8_combout\) # (\A[4]~input_o\)))) # (!\B[4]~input_o\ & (\A[4]~input_o\ & ((\pg~6_combout\) # (\pg~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~6_combout\,
	datab => \pg~8_combout\,
	datac => \B[4]~input_o\,
	datad => \A[4]~input_o\,
	combout => \ppn_carry:pg[4][0]~0_combout\);

-- Location: IOIBUF_X56_Y0_N15
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X62_Y0_N15
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X60_Y1_N14
\p[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(5) = \A[5]~input_o\ $ (\B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[5]~input_o\,
	datad => \B[5]~input_o\,
	combout => p(5));

-- Location: LCCOMB_X60_Y1_N24
\S~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~17_combout\ = p(5) $ (((\ppn_carry:pg[4][0]~0_combout\) # ((\c_var~20_combout\ & p(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_var~20_combout\,
	datab => \ppn_carry:pg[4][0]~0_combout\,
	datac => p(4),
	datad => p(5),
	combout => \S~17_combout\);

-- Location: IOIBUF_X60_Y0_N8
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X60_Y0_N22
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X60_Y1_N22
\p[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(6) = \B[6]~input_o\ $ (\A[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[6]~input_o\,
	datad => \A[6]~input_o\,
	combout => p(6));

-- Location: LCCOMB_X60_Y1_N18
\pg~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~9_combout\ = (\B[5]~input_o\ & ((\A[5]~input_o\) # ((\B[4]~input_o\ & \A[4]~input_o\)))) # (!\B[5]~input_o\ & (\B[4]~input_o\ & (\A[5]~input_o\ & \A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[4]~input_o\,
	datac => \A[5]~input_o\,
	datad => \A[4]~input_o\,
	combout => \pg~9_combout\);

-- Location: LCCOMB_X60_Y1_N4
\pg~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~10_combout\ = (p(4) & (p(5) & ((\pg~6_combout\) # (\pg~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~6_combout\,
	datab => p(4),
	datac => p(5),
	datad => \pg~8_combout\,
	combout => \pg~10_combout\);

-- Location: LCCOMB_X60_Y1_N6
\c_var~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_var~50_combout\ = (\c_var~20_combout\ & (p(5) & (\B[4]~input_o\ $ (\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_var~20_combout\,
	datab => \B[4]~input_o\,
	datac => p(5),
	datad => \A[4]~input_o\,
	combout => \c_var~50_combout\);

-- Location: LCCOMB_X60_Y1_N0
\S~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~18_combout\ = p(6) $ (((\pg~9_combout\) # ((\pg~10_combout\) # (\c_var~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(6),
	datab => \pg~9_combout\,
	datac => \pg~10_combout\,
	datad => \c_var~50_combout\,
	combout => \S~18_combout\);

-- Location: LCCOMB_X60_Y1_N26
\ppn_carry:pg[6][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[6][0]~0_combout\ = (\A[6]~input_o\ & ((\B[6]~input_o\) # ((\pg~10_combout\) # (\pg~9_combout\)))) # (!\A[6]~input_o\ & (\B[6]~input_o\ & ((\pg~10_combout\) # (\pg~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[6]~input_o\,
	datac => \pg~10_combout\,
	datad => \pg~9_combout\,
	combout => \ppn_carry:pg[6][0]~0_combout\);

-- Location: IOIBUF_X60_Y0_N1
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X62_Y0_N22
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X60_Y1_N20
\p[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(7) = \B[7]~input_o\ $ (\A[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[7]~input_o\,
	datad => \A[7]~input_o\,
	combout => p(7));

-- Location: LCCOMB_X60_Y1_N30
\S~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~19_combout\ = p(7) $ (((\ppn_carry:pg[6][0]~0_combout\) # ((p(6) & \c_var~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ppn_carry:pg[6][0]~0_combout\,
	datab => p(7),
	datac => p(6),
	datad => \c_var~50_combout\,
	combout => \S~19_combout\);

-- Location: IOIBUF_X83_Y0_N22
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X60_Y1_N16
\ppn_carry:pg[7][1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[7][1]~0_combout\ = (p(6) & (p(5) & (p(4) & p(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(6),
	datab => p(5),
	datac => p(4),
	datad => p(7),
	combout => \ppn_carry:pg[7][1]~0_combout\);

-- Location: LCCOMB_X60_Y1_N10
\pg~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~11_combout\ = (\B[7]~input_o\ & ((\A[7]~input_o\) # ((\A[6]~input_o\ & \B[6]~input_o\)))) # (!\B[7]~input_o\ & (\A[6]~input_o\ & (\B[6]~input_o\ & \A[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[6]~input_o\,
	datac => \B[7]~input_o\,
	datad => \A[7]~input_o\,
	combout => \pg~11_combout\);

-- Location: LCCOMB_X60_Y1_N12
\pg~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~12_combout\ = (\pg~11_combout\) # ((\pg~9_combout\ & (p(6) & p(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~11_combout\,
	datab => \pg~9_combout\,
	datac => p(6),
	datad => p(7),
	combout => \pg~12_combout\);

-- Location: LCCOMB_X84_Y4_N8
\ppn_carry:c_var[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ppn_carry:c_var[8]~0_combout\ = (!\pg~12_combout\ & (((!\pg~8_combout\ & !\pg~6_combout\)) # (!\ppn_carry:pg[7][1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ppn_carry:pg[7][1]~0_combout\,
	datab => \pg~8_combout\,
	datac => \pg~6_combout\,
	datad => \pg~12_combout\,
	combout => \ppn_carry:c_var[8]~0_combout\);

-- Location: LCCOMB_X55_Y1_N20
\c_var~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_var~21_combout\ = (\Cin~input_o\ & (\ppn_carry:pg[7][1]~0_combout\ & (\pg~7_combout\ & \c_var~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \ppn_carry:pg[7][1]~0_combout\,
	datac => \pg~7_combout\,
	datad => \c_var~18_combout\,
	combout => \c_var~21_combout\);

-- Location: IOIBUF_X85_Y0_N22
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X84_Y4_N2
\S~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~20_combout\ = \A[8]~input_o\ $ (\B[8]~input_o\ $ (((\c_var~21_combout\) # (!\ppn_carry:c_var[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011001011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \ppn_carry:c_var[8]~0_combout\,
	datac => \c_var~21_combout\,
	datad => \B[8]~input_o\,
	combout => \S~20_combout\);

-- Location: IOIBUF_X81_Y0_N22
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LCCOMB_X55_Y1_N14
\pg~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~13_combout\ = (\ppn_carry:pg[7][1]~0_combout\ & ((\pg~6_combout\) # ((\ppn_carry:pg[1][0]~0_combout\ & \pg~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~6_combout\,
	datab => \ppn_carry:pg[1][0]~0_combout\,
	datac => \pg~7_combout\,
	datad => \ppn_carry:pg[7][1]~0_combout\,
	combout => \pg~13_combout\);

-- Location: LCCOMB_X84_Y4_N20
\ppn_carry:pg[8][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[8][0]~0_combout\ = (\A[8]~input_o\ & ((\pg~12_combout\) # ((\B[8]~input_o\) # (\pg~13_combout\)))) # (!\A[8]~input_o\ & (\B[8]~input_o\ & ((\pg~12_combout\) # (\pg~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \pg~12_combout\,
	datac => \B[8]~input_o\,
	datad => \pg~13_combout\,
	combout => \ppn_carry:pg[8][0]~0_combout\);

-- Location: LCCOMB_X84_Y4_N30
\c_var~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_var~22_combout\ = (\c_var~20_combout\ & (\ppn_carry:pg[7][1]~0_combout\ & (\A[8]~input_o\ $ (\B[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \c_var~20_combout\,
	datac => \B[8]~input_o\,
	datad => \ppn_carry:pg[7][1]~0_combout\,
	combout => \c_var~22_combout\);

-- Location: IOIBUF_X89_Y0_N8
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X84_Y4_N24
\S~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~21_combout\ = \B[9]~input_o\ $ (\A[9]~input_o\ $ (((\ppn_carry:pg[8][0]~0_combout\) # (\c_var~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \ppn_carry:pg[8][0]~0_combout\,
	datac => \c_var~22_combout\,
	datad => \A[9]~input_o\,
	combout => \S~21_combout\);

-- Location: LCCOMB_X84_Y4_N18
\pg~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~14_combout\ = (\B[8]~input_o\ & (!\A[8]~input_o\ & (\B[9]~input_o\ $ (\A[9]~input_o\)))) # (!\B[8]~input_o\ & (\A[8]~input_o\ & (\B[9]~input_o\ $ (\A[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \B[9]~input_o\,
	datac => \A[8]~input_o\,
	datad => \A[9]~input_o\,
	combout => \pg~14_combout\);

-- Location: LCCOMB_X84_Y4_N4
\pg~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~15_combout\ = (\pg~14_combout\ & ((\pg~13_combout\) # (\pg~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~13_combout\,
	datab => \pg~12_combout\,
	datad => \pg~14_combout\,
	combout => \pg~15_combout\);

-- Location: IOIBUF_X79_Y0_N8
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X79_Y0_N15
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LCCOMB_X83_Y4_N24
\p[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(10) = \A[10]~input_o\ $ (\B[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[10]~input_o\,
	datad => \B[10]~input_o\,
	combout => p(10));

-- Location: LCCOMB_X84_Y4_N0
\c_var~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_var~23_combout\ = (\c_var~22_combout\ & (\B[9]~input_o\ $ (\A[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[9]~input_o\,
	datac => \c_var~22_combout\,
	datad => \A[9]~input_o\,
	combout => \c_var~23_combout\);

-- Location: LCCOMB_X84_Y4_N6
\pg~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~16_combout\ = (\B[9]~input_o\ & ((\A[9]~input_o\) # ((\B[8]~input_o\ & \A[8]~input_o\)))) # (!\B[9]~input_o\ & (\B[8]~input_o\ & (\A[8]~input_o\ & \A[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \B[9]~input_o\,
	datac => \A[8]~input_o\,
	datad => \A[9]~input_o\,
	combout => \pg~16_combout\);

-- Location: LCCOMB_X83_Y4_N18
\S~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~22_combout\ = p(10) $ (((\pg~15_combout\) # ((\c_var~23_combout\) # (\pg~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~15_combout\,
	datab => p(10),
	datac => \c_var~23_combout\,
	datad => \pg~16_combout\,
	combout => \S~22_combout\);

-- Location: IOIBUF_X74_Y0_N15
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X83_Y0_N15
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LCCOMB_X83_Y4_N30
\p[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(11) = \A[11]~input_o\ $ (\B[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[11]~input_o\,
	datad => \B[11]~input_o\,
	combout => p(11));

-- Location: LCCOMB_X83_Y4_N12
\ppn_carry:pg[10][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[10][0]~0_combout\ = (\B[10]~input_o\ & ((\pg~15_combout\) # ((\A[10]~input_o\) # (\pg~16_combout\)))) # (!\B[10]~input_o\ & (\A[10]~input_o\ & ((\pg~15_combout\) # (\pg~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~15_combout\,
	datab => \B[10]~input_o\,
	datac => \A[10]~input_o\,
	datad => \pg~16_combout\,
	combout => \ppn_carry:pg[10][0]~0_combout\);

-- Location: LCCOMB_X83_Y4_N8
\S~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~23_combout\ = p(11) $ (((\ppn_carry:pg[10][0]~0_combout\) # ((p(10) & \c_var~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(11),
	datab => p(10),
	datac => \c_var~23_combout\,
	datad => \ppn_carry:pg[10][0]~0_combout\,
	combout => \S~23_combout\);

-- Location: LCCOMB_X83_Y4_N16
\c_var~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_var~24_combout\ = (\c_var~21_combout\ & (p(10) & (p(11) & \pg~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_var~21_combout\,
	datab => p(10),
	datac => p(11),
	datad => \pg~14_combout\,
	combout => \c_var~24_combout\);

-- Location: IOIBUF_X74_Y0_N8
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X65_Y0_N15
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LCCOMB_X73_Y4_N8
\p[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(12) = \A[12]~input_o\ $ (\B[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datac => \B[12]~input_o\,
	combout => p(12));

-- Location: LCCOMB_X83_Y4_N10
\pg~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~17_combout\ = (\A[11]~input_o\ & ((\B[11]~input_o\) # ((\B[10]~input_o\ & \A[10]~input_o\)))) # (!\A[11]~input_o\ & (\B[10]~input_o\ & (\A[10]~input_o\ & \B[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \A[11]~input_o\,
	datac => \A[10]~input_o\,
	datad => \B[11]~input_o\,
	combout => \pg~17_combout\);

-- Location: LCCOMB_X83_Y4_N28
\pg~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~18_combout\ = (\pg~17_combout\) # ((p(10) & (p(11) & \pg~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~17_combout\,
	datab => p(10),
	datac => p(11),
	datad => \pg~16_combout\,
	combout => \pg~18_combout\);

-- Location: LCCOMB_X83_Y4_N14
\pg~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~19_combout\ = (p(11) & (p(10) & (!\ppn_carry:c_var[8]~0_combout\ & \pg~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(11),
	datab => p(10),
	datac => \ppn_carry:c_var[8]~0_combout\,
	datad => \pg~14_combout\,
	combout => \pg~19_combout\);

-- Location: LCCOMB_X73_Y4_N26
\S~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~24_combout\ = p(12) $ (((\c_var~24_combout\) # ((\pg~18_combout\) # (\pg~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_var~24_combout\,
	datab => p(12),
	datac => \pg~18_combout\,
	datad => \pg~19_combout\,
	combout => \S~24_combout\);

-- Location: IOIBUF_X69_Y0_N1
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X72_Y0_N1
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LCCOMB_X73_Y4_N6
\p[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(13) = \B[13]~input_o\ $ (\A[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[13]~input_o\,
	datac => \A[13]~input_o\,
	combout => p(13));

-- Location: LCCOMB_X73_Y4_N12
\ppn_carry:pg[12][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[12][0]~0_combout\ = (\A[12]~input_o\ & ((\B[12]~input_o\) # ((\pg~18_combout\) # (\pg~19_combout\)))) # (!\A[12]~input_o\ & (\B[12]~input_o\ & ((\pg~18_combout\) # (\pg~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \B[12]~input_o\,
	datac => \pg~18_combout\,
	datad => \pg~19_combout\,
	combout => \ppn_carry:pg[12][0]~0_combout\);

-- Location: LCCOMB_X73_Y4_N0
\S~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~25_combout\ = p(13) $ (((\ppn_carry:pg[12][0]~0_combout\) # ((p(12) & \c_var~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(13),
	datab => \ppn_carry:pg[12][0]~0_combout\,
	datac => p(12),
	datad => \c_var~24_combout\,
	combout => \S~25_combout\);

-- Location: LCCOMB_X73_Y4_N10
\pg~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~20_combout\ = (\A[13]~input_o\ & ((\B[13]~input_o\) # ((\B[12]~input_o\ & \A[12]~input_o\)))) # (!\A[13]~input_o\ & (\B[12]~input_o\ & (\A[12]~input_o\ & \B[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \B[12]~input_o\,
	datac => \A[12]~input_o\,
	datad => \B[13]~input_o\,
	combout => \pg~20_combout\);

-- Location: IOIBUF_X67_Y0_N15
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X65_Y0_N22
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X73_Y4_N14
\p[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(14) = \A[14]~input_o\ $ (\B[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[14]~input_o\,
	datad => \B[14]~input_o\,
	combout => p(14));

-- Location: LCCOMB_X73_Y4_N30
\c_var~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_var~51_combout\ = (p(13) & (\c_var~24_combout\ & (\B[12]~input_o\ $ (\A[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(13),
	datab => \B[12]~input_o\,
	datac => \A[12]~input_o\,
	datad => \c_var~24_combout\,
	combout => \c_var~51_combout\);

-- Location: LCCOMB_X73_Y4_N28
\pg~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~21_combout\ = (p(13) & (p(12) & ((\pg~18_combout\) # (\pg~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(13),
	datab => p(12),
	datac => \pg~18_combout\,
	datad => \pg~19_combout\,
	combout => \pg~21_combout\);

-- Location: LCCOMB_X73_Y4_N24
\S~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~26_combout\ = p(14) $ (((\pg~20_combout\) # ((\c_var~51_combout\) # (\pg~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~20_combout\,
	datab => p(14),
	datac => \c_var~51_combout\,
	datad => \pg~21_combout\,
	combout => \S~26_combout\);

-- Location: IOIBUF_X65_Y0_N1
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X67_Y0_N22
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LCCOMB_X73_Y4_N20
\p[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(15) = \A[15]~input_o\ $ (\B[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[15]~input_o\,
	datad => \B[15]~input_o\,
	combout => p(15));

-- Location: LCCOMB_X73_Y4_N2
\ppn_carry:pg[14][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[14][0]~0_combout\ = (\B[14]~input_o\ & ((\pg~20_combout\) # ((\A[14]~input_o\) # (\pg~21_combout\)))) # (!\B[14]~input_o\ & (\A[14]~input_o\ & ((\pg~20_combout\) # (\pg~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~20_combout\,
	datab => \B[14]~input_o\,
	datac => \A[14]~input_o\,
	datad => \pg~21_combout\,
	combout => \ppn_carry:pg[14][0]~0_combout\);

-- Location: LCCOMB_X73_Y4_N22
\S~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~27_combout\ = p(15) $ (((\ppn_carry:pg[14][0]~0_combout\) # ((\c_var~51_combout\ & p(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_var~51_combout\,
	datab => p(15),
	datac => p(14),
	datad => \ppn_carry:pg[14][0]~0_combout\,
	combout => \S~27_combout\);

-- Location: LCCOMB_X73_Y4_N16
\pg~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~22_combout\ = (p(13) & (p(12) & (p(14) & p(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(13),
	datab => p(12),
	datac => p(14),
	datad => p(15),
	combout => \pg~22_combout\);

-- Location: LCCOMB_X83_Y4_N2
\pg~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~23_combout\ = (p(11) & (p(10) & (\pg~22_combout\ & \pg~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(11),
	datab => p(10),
	datac => \pg~22_combout\,
	datad => \pg~14_combout\,
	combout => \pg~23_combout\);

-- Location: LCCOMB_X84_Y4_N26
\pg~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~24_combout\ = (\pg~23_combout\ & ((\pg~13_combout\) # (\pg~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~13_combout\,
	datab => \pg~12_combout\,
	datad => \pg~23_combout\,
	combout => \pg~24_combout\);

-- Location: LCCOMB_X73_Y4_N18
\pg~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~25_combout\ = (\B[15]~input_o\ & ((\A[15]~input_o\) # ((\A[14]~input_o\ & \B[14]~input_o\)))) # (!\B[15]~input_o\ & (\A[15]~input_o\ & (\A[14]~input_o\ & \B[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datab => \A[15]~input_o\,
	datac => \A[14]~input_o\,
	datad => \B[14]~input_o\,
	combout => \pg~25_combout\);

-- Location: LCCOMB_X73_Y4_N4
\pg~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~26_combout\ = (\pg~25_combout\) # ((\pg~20_combout\ & (p(15) & p(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~20_combout\,
	datab => p(15),
	datac => p(14),
	datad => \pg~25_combout\,
	combout => \pg~26_combout\);

-- Location: LCCOMB_X83_Y4_N20
\pg~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~27_combout\ = (\pg~26_combout\) # ((\pg~22_combout\ & \pg~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~22_combout\,
	datac => \pg~26_combout\,
	datad => \pg~18_combout\,
	combout => \pg~27_combout\);

-- Location: LCCOMB_X83_Y4_N6
\c_var~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_var~25_combout\ = (\c_var~21_combout\ & \pg~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_var~21_combout\,
	datad => \pg~23_combout\,
	combout => \c_var~25_combout\);

-- Location: IOIBUF_X98_Y0_N15
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: IOIBUF_X98_Y0_N22
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: LCCOMB_X92_Y4_N0
\p[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(16) = \B[16]~input_o\ $ (\A[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[16]~input_o\,
	datad => \A[16]~input_o\,
	combout => p(16));

-- Location: LCCOMB_X92_Y4_N26
\S~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~28_combout\ = p(16) $ (((\pg~24_combout\) # ((\pg~27_combout\) # (\c_var~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~24_combout\,
	datab => \pg~27_combout\,
	datac => \c_var~25_combout\,
	datad => p(16),
	combout => \S~28_combout\);

-- Location: LCCOMB_X92_Y4_N12
\ppn_carry:pg[16][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[16][0]~0_combout\ = (\B[16]~input_o\ & ((\pg~27_combout\) # ((\pg~24_combout\) # (\A[16]~input_o\)))) # (!\B[16]~input_o\ & (\A[16]~input_o\ & ((\pg~27_combout\) # (\pg~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[16]~input_o\,
	datab => \pg~27_combout\,
	datac => \pg~24_combout\,
	datad => \A[16]~input_o\,
	combout => \ppn_carry:pg[16][0]~0_combout\);

-- Location: IOIBUF_X100_Y0_N15
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: IOIBUF_X100_Y0_N22
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: LCCOMB_X95_Y1_N24
\p[17]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(17) = \A[17]~input_o\ $ (\B[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[17]~input_o\,
	datad => \B[17]~input_o\,
	combout => p(17));

-- Location: LCCOMB_X92_Y4_N6
\S~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~29_combout\ = p(17) $ (((\ppn_carry:pg[16][0]~0_combout\) # ((p(16) & \c_var~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ppn_carry:pg[16][0]~0_combout\,
	datab => p(16),
	datac => \c_var~25_combout\,
	datad => p(17),
	combout => \S~29_combout\);

-- Location: IOIBUF_X96_Y0_N1
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: LCCOMB_X92_Y4_N2
\pg~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~29_combout\ = (p(16) & (p(17) & ((\pg~27_combout\) # (\pg~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~27_combout\,
	datab => p(16),
	datac => \pg~24_combout\,
	datad => p(17),
	combout => \pg~29_combout\);

-- Location: LCCOMB_X92_Y4_N20
\ppn_carry:c_var[18]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ppn_carry:c_var[18]~0_combout\ = (\pg~29_combout\) # ((p(17) & (p(16) & \c_var~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(17),
	datab => p(16),
	datac => \c_var~25_combout\,
	datad => \pg~29_combout\,
	combout => \ppn_carry:c_var[18]~0_combout\);

-- Location: LCCOMB_X92_Y4_N16
\pg~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~28_combout\ = (\A[17]~input_o\ & ((\B[17]~input_o\) # ((\A[16]~input_o\ & \B[16]~input_o\)))) # (!\A[17]~input_o\ & (\A[16]~input_o\ & (\B[16]~input_o\ & \B[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \A[17]~input_o\,
	datac => \B[16]~input_o\,
	datad => \B[17]~input_o\,
	combout => \pg~28_combout\);

-- Location: IOIBUF_X96_Y0_N8
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: LCCOMB_X92_Y4_N22
\S~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~70_combout\ = \B[18]~input_o\ $ (\A[18]~input_o\ $ (((\ppn_carry:c_var[18]~0_combout\) # (\pg~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \ppn_carry:c_var[18]~0_combout\,
	datac => \pg~28_combout\,
	datad => \A[18]~input_o\,
	combout => \S~70_combout\);

-- Location: LCCOMB_X92_Y4_N10
\ppn_carry:pg[18][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[18][0]~0_combout\ = (\B[18]~input_o\ & ((\pg~29_combout\) # ((\pg~28_combout\) # (\A[18]~input_o\)))) # (!\B[18]~input_o\ & (\A[18]~input_o\ & ((\pg~29_combout\) # (\pg~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \pg~29_combout\,
	datac => \pg~28_combout\,
	datad => \A[18]~input_o\,
	combout => \ppn_carry:pg[18][0]~0_combout\);

-- Location: IOIBUF_X94_Y0_N1
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X96_Y0_N15
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: LCCOMB_X92_Y4_N28
\p[19]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(19) = \B[19]~input_o\ $ (\A[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[19]~input_o\,
	datac => \A[19]~input_o\,
	combout => p(19));

-- Location: LCCOMB_X92_Y4_N30
\p[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(18) = \B[18]~input_o\ $ (\A[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datad => \A[18]~input_o\,
	combout => p(18));

-- Location: LCCOMB_X92_Y4_N24
\c_var~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_var~26_combout\ = (p(18) & (p(16) & (\B[17]~input_o\ $ (\A[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[17]~input_o\,
	datab => \A[17]~input_o\,
	datac => p(18),
	datad => p(16),
	combout => \c_var~26_combout\);

-- Location: LCCOMB_X92_Y4_N14
\S~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~30_combout\ = p(19) $ (((\ppn_carry:pg[18][0]~0_combout\) # ((\c_var~25_combout\ & \c_var~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ppn_carry:pg[18][0]~0_combout\,
	datab => p(19),
	datac => \c_var~25_combout\,
	datad => \c_var~26_combout\,
	combout => \S~30_combout\);

-- Location: LCCOMB_X92_Y4_N8
\ppn_carry:pg[19][1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[19][1]~0_combout\ = (p(17) & (p(19) & (p(18) & p(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(17),
	datab => p(19),
	datac => p(18),
	datad => p(16),
	combout => \ppn_carry:pg[19][1]~0_combout\);

-- Location: LCCOMB_X84_Y4_N12
\c_var~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_var~27_combout\ = (\ppn_carry:pg[7][1]~0_combout\ & (\c_var~20_combout\ & (\ppn_carry:pg[19][1]~0_combout\ & \pg~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ppn_carry:pg[7][1]~0_combout\,
	datab => \c_var~20_combout\,
	datac => \ppn_carry:pg[19][1]~0_combout\,
	datad => \pg~23_combout\,
	combout => \c_var~27_combout\);

-- Location: IOIBUF_X85_Y0_N8
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: IOIBUF_X89_Y0_N1
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: LCCOMB_X85_Y4_N0
\p[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(20) = \B[20]~input_o\ $ (\A[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[20]~input_o\,
	datad => \A[20]~input_o\,
	combout => p(20));

-- Location: LCCOMB_X92_Y4_N18
\pg~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~30_combout\ = (\B[19]~input_o\ & ((\A[19]~input_o\) # ((\B[18]~input_o\ & \A[18]~input_o\)))) # (!\B[19]~input_o\ & (\B[18]~input_o\ & (\A[19]~input_o\ & \A[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \B[19]~input_o\,
	datac => \A[19]~input_o\,
	datad => \A[18]~input_o\,
	combout => \pg~30_combout\);

-- Location: LCCOMB_X92_Y4_N4
\pg~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~31_combout\ = (\pg~30_combout\) # ((\pg~28_combout\ & (p(18) & p(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~30_combout\,
	datab => \pg~28_combout\,
	datac => p(18),
	datad => p(19),
	combout => \pg~31_combout\);

-- Location: LCCOMB_X84_Y4_N14
\pg~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~32_combout\ = (\ppn_carry:pg[19][1]~0_combout\ & ((\pg~27_combout\) # ((!\ppn_carry:c_var[8]~0_combout\ & \pg~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~27_combout\,
	datab => \ppn_carry:c_var[8]~0_combout\,
	datac => \ppn_carry:pg[19][1]~0_combout\,
	datad => \pg~23_combout\,
	combout => \pg~32_combout\);

-- Location: LCCOMB_X85_Y4_N26
\S~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~31_combout\ = p(20) $ (((\c_var~27_combout\) # ((\pg~31_combout\) # (\pg~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_var~27_combout\,
	datab => p(20),
	datac => \pg~31_combout\,
	datad => \pg~32_combout\,
	combout => \S~31_combout\);

-- Location: LCCOMB_X85_Y4_N28
\ppn_carry:pg[20][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[20][0]~0_combout\ = (\B[20]~input_o\ & ((\pg~32_combout\) # ((\pg~31_combout\) # (\A[20]~input_o\)))) # (!\B[20]~input_o\ & (\A[20]~input_o\ & ((\pg~32_combout\) # (\pg~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~32_combout\,
	datab => \B[20]~input_o\,
	datac => \pg~31_combout\,
	datad => \A[20]~input_o\,
	combout => \ppn_carry:pg[20][0]~0_combout\);

-- Location: IOIBUF_X89_Y0_N15
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: IOIBUF_X91_Y0_N22
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: LCCOMB_X85_Y4_N14
\p[21]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(21) = \A[21]~input_o\ $ (\B[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[21]~input_o\,
	datad => \B[21]~input_o\,
	combout => p(21));

-- Location: LCCOMB_X85_Y4_N16
\S~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~32_combout\ = p(21) $ (((\ppn_carry:pg[20][0]~0_combout\) # ((\c_var~27_combout\ & p(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_var~27_combout\,
	datab => \ppn_carry:pg[20][0]~0_combout\,
	datac => p(21),
	datad => p(20),
	combout => \S~32_combout\);

-- Location: LCCOMB_X85_Y4_N22
\pg~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~35_combout\ = (\A[21]~input_o\ & ((\B[21]~input_o\) # ((\A[20]~input_o\ & \B[20]~input_o\)))) # (!\A[21]~input_o\ & (\A[20]~input_o\ & (\B[20]~input_o\ & \B[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \A[20]~input_o\,
	datac => \B[20]~input_o\,
	datad => \B[21]~input_o\,
	combout => \pg~35_combout\);

-- Location: IOIBUF_X81_Y0_N15
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: IOIBUF_X87_Y0_N15
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: LCCOMB_X85_Y4_N2
\p[22]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(22) = \B[22]~input_o\ $ (\A[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datad => \A[22]~input_o\,
	combout => p(22));

-- Location: LCCOMB_X85_Y4_N8
\c_var~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_var~28_combout\ = (\c_var~25_combout\ & (p(20) & (p(21) & \ppn_carry:pg[19][1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_var~25_combout\,
	datab => p(20),
	datac => p(21),
	datad => \ppn_carry:pg[19][1]~0_combout\,
	combout => \c_var~28_combout\);

-- Location: LCCOMB_X85_Y4_N10
\pg~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~33_combout\ = (\A[21]~input_o\ & (!\B[21]~input_o\ & (\A[20]~input_o\ $ (\B[20]~input_o\)))) # (!\A[21]~input_o\ & (\B[21]~input_o\ & (\A[20]~input_o\ $ (\B[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \A[20]~input_o\,
	datac => \B[20]~input_o\,
	datad => \B[21]~input_o\,
	combout => \pg~33_combout\);

-- Location: LCCOMB_X85_Y4_N20
\pg~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~34_combout\ = (\pg~33_combout\ & ((\pg~32_combout\) # (\pg~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~32_combout\,
	datac => \pg~31_combout\,
	datad => \pg~33_combout\,
	combout => \pg~34_combout\);

-- Location: LCCOMB_X85_Y4_N4
\S~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~33_combout\ = p(22) $ (((\pg~35_combout\) # ((\c_var~28_combout\) # (\pg~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~35_combout\,
	datab => p(22),
	datac => \c_var~28_combout\,
	datad => \pg~34_combout\,
	combout => \S~33_combout\);

-- Location: LCCOMB_X85_Y4_N30
\ppn_carry:pg[22][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[22][0]~0_combout\ = (\B[22]~input_o\ & ((\pg~34_combout\) # ((\pg~35_combout\) # (\A[22]~input_o\)))) # (!\B[22]~input_o\ & (\A[22]~input_o\ & ((\pg~34_combout\) # (\pg~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \pg~34_combout\,
	datac => \pg~35_combout\,
	datad => \A[22]~input_o\,
	combout => \ppn_carry:pg[22][0]~0_combout\);

-- Location: IOIBUF_X83_Y0_N1
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: IOIBUF_X79_Y0_N1
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: LCCOMB_X83_Y4_N0
\p[23]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(23) = \A[23]~input_o\ $ (\B[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datac => \B[23]~input_o\,
	combout => p(23));

-- Location: LCCOMB_X85_Y4_N24
\S~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~34_combout\ = p(23) $ (((\ppn_carry:pg[22][0]~0_combout\) # ((\c_var~28_combout\ & p(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ppn_carry:pg[22][0]~0_combout\,
	datab => \c_var~28_combout\,
	datac => p(23),
	datad => p(22),
	combout => \S~34_combout\);

-- Location: LCCOMB_X85_Y4_N6
\pg~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~104_combout\ = (p(23) & (\pg~33_combout\ & (\B[22]~input_o\ $ (\A[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \A[22]~input_o\,
	datac => p(23),
	datad => \pg~33_combout\,
	combout => \pg~104_combout\);

-- Location: LCCOMB_X84_Y4_N28
\c_var~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_var~29_combout\ = (\pg~23_combout\ & (\ppn_carry:pg[19][1]~0_combout\ & (\c_var~21_combout\ & \pg~104_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~23_combout\,
	datab => \ppn_carry:pg[19][1]~0_combout\,
	datac => \c_var~21_combout\,
	datad => \pg~104_combout\,
	combout => \c_var~29_combout\);

-- Location: LCCOMB_X84_Y4_N16
\pg~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~36_combout\ = (\pg~104_combout\ & \ppn_carry:pg[19][1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~104_combout\,
	datac => \ppn_carry:pg[19][1]~0_combout\,
	combout => \pg~36_combout\);

-- Location: LCCOMB_X84_Y4_N10
\pg~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~37_combout\ = (\pg~36_combout\ & ((\pg~27_combout\) # ((!\ppn_carry:c_var[8]~0_combout\ & \pg~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~27_combout\,
	datab => \pg~36_combout\,
	datac => \ppn_carry:c_var[8]~0_combout\,
	datad => \pg~23_combout\,
	combout => \pg~37_combout\);

-- Location: LCCOMB_X83_Y4_N26
\pg~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~38_combout\ = (\A[23]~input_o\ & ((\B[23]~input_o\) # ((\B[22]~input_o\ & \A[22]~input_o\)))) # (!\A[23]~input_o\ & (\B[22]~input_o\ & (\B[23]~input_o\ & \A[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \B[22]~input_o\,
	datac => \B[23]~input_o\,
	datad => \A[22]~input_o\,
	combout => \pg~38_combout\);

-- Location: LCCOMB_X85_Y4_N18
\pg~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~39_combout\ = (\pg~38_combout\) # ((\pg~35_combout\ & (p(23) & p(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~35_combout\,
	datab => \pg~38_combout\,
	datac => p(23),
	datad => p(22),
	combout => \pg~39_combout\);

-- Location: LCCOMB_X85_Y4_N12
\pg~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~40_combout\ = (\pg~39_combout\) # ((\pg~104_combout\ & \pg~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~104_combout\,
	datab => \pg~39_combout\,
	datac => \pg~31_combout\,
	combout => \pg~40_combout\);

-- Location: IOIBUF_X111_Y0_N8
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: IOIBUF_X105_Y0_N8
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: LCCOMB_X108_Y4_N24
\p[24]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(24) = \B[24]~input_o\ $ (\A[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[24]~input_o\,
	datad => \A[24]~input_o\,
	combout => p(24));

-- Location: LCCOMB_X108_Y4_N26
\S~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~35_combout\ = p(24) $ (((\c_var~29_combout\) # ((\pg~37_combout\) # (\pg~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_var~29_combout\,
	datab => \pg~37_combout\,
	datac => \pg~40_combout\,
	datad => p(24),
	combout => \S~35_combout\);

-- Location: IOIBUF_X115_Y5_N15
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: IOIBUF_X115_Y6_N15
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: LCCOMB_X108_Y4_N14
\p[25]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(25) = \B[25]~input_o\ $ (\A[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datad => \A[25]~input_o\,
	combout => p(25));

-- Location: LCCOMB_X108_Y4_N4
\ppn_carry:pg[24][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[24][0]~0_combout\ = (\B[24]~input_o\ & ((\pg~40_combout\) # ((\pg~37_combout\) # (\A[24]~input_o\)))) # (!\B[24]~input_o\ & (\A[24]~input_o\ & ((\pg~40_combout\) # (\pg~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~40_combout\,
	datab => \pg~37_combout\,
	datac => \B[24]~input_o\,
	datad => \A[24]~input_o\,
	combout => \ppn_carry:pg[24][0]~0_combout\);

-- Location: LCCOMB_X108_Y4_N8
\S~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~36_combout\ = p(25) $ (((\ppn_carry:pg[24][0]~0_combout\) # ((\c_var~29_combout\ & p(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_var~29_combout\,
	datab => p(25),
	datac => \ppn_carry:pg[24][0]~0_combout\,
	datad => p(24),
	combout => \S~36_combout\);

-- Location: LCCOMB_X108_Y4_N10
\pg~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~41_combout\ = (p(25) & (p(24) & ((\pg~40_combout\) # (\pg~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~40_combout\,
	datab => p(25),
	datac => \pg~37_combout\,
	datad => p(24),
	combout => \pg~41_combout\);

-- Location: LCCOMB_X108_Y4_N12
\pg~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~42_combout\ = (\B[25]~input_o\ & ((\A[25]~input_o\) # ((\A[24]~input_o\ & \B[24]~input_o\)))) # (!\B[25]~input_o\ & (\A[24]~input_o\ & (\B[24]~input_o\ & \A[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datab => \A[24]~input_o\,
	datac => \B[24]~input_o\,
	datad => \A[25]~input_o\,
	combout => \pg~42_combout\);

-- Location: LCCOMB_X108_Y4_N22
\ppn_carry:c_var[26]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ppn_carry:c_var[26]~0_combout\ = (\pg~42_combout\) # ((\c_var~29_combout\ & (p(24) & p(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_var~29_combout\,
	datab => p(24),
	datac => p(25),
	datad => \pg~42_combout\,
	combout => \ppn_carry:c_var[26]~0_combout\);

-- Location: IOIBUF_X109_Y0_N1
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: IOIBUF_X115_Y8_N15
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: LCCOMB_X108_Y4_N6
\S~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~71_combout\ = \B[26]~input_o\ $ (\A[26]~input_o\ $ (((\pg~41_combout\) # (\ppn_carry:c_var[26]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~41_combout\,
	datab => \ppn_carry:c_var[26]~0_combout\,
	datac => \B[26]~input_o\,
	datad => \A[26]~input_o\,
	combout => \S~71_combout\);

-- Location: LCCOMB_X108_Y4_N20
\ppn_carry:pg[26][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[26][0]~0_combout\ = (\A[26]~input_o\ & ((\pg~42_combout\) # ((\B[26]~input_o\) # (\pg~41_combout\)))) # (!\A[26]~input_o\ & (\B[26]~input_o\ & ((\pg~42_combout\) # (\pg~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~42_combout\,
	datab => \A[26]~input_o\,
	datac => \B[26]~input_o\,
	datad => \pg~41_combout\,
	combout => \ppn_carry:pg[26][0]~0_combout\);

-- Location: IOIBUF_X115_Y4_N15
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: LCCOMB_X109_Y4_N24
\p[27]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(27) = \A[27]~input_o\ $ (\B[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[27]~input_o\,
	datad => \B[27]~input_o\,
	combout => p(27));

-- Location: LCCOMB_X108_Y4_N16
\p[26]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(26) = \B[26]~input_o\ $ (\A[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[26]~input_o\,
	datad => \A[26]~input_o\,
	combout => p(26));

-- Location: LCCOMB_X108_Y4_N18
\c_var~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_var~30_combout\ = (p(24) & (p(26) & (\B[25]~input_o\ $ (\A[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datab => p(24),
	datac => p(26),
	datad => \A[25]~input_o\,
	combout => \c_var~30_combout\);

-- Location: LCCOMB_X108_Y4_N30
\S~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~37_combout\ = p(27) $ (((\ppn_carry:pg[26][0]~0_combout\) # ((\c_var~29_combout\ & \c_var~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_var~29_combout\,
	datab => \ppn_carry:pg[26][0]~0_combout\,
	datac => p(27),
	datad => \c_var~30_combout\,
	combout => \S~37_combout\);

-- Location: LCCOMB_X108_Y4_N28
\pg~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~45_combout\ = (p(27) & (p(26) & (p(25) & p(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(27),
	datab => p(26),
	datac => p(25),
	datad => p(24),
	combout => \pg~45_combout\);

-- Location: LCCOMB_X105_Y4_N24
\pg~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~46_combout\ = (\pg~45_combout\ & ((\pg~37_combout\) # (\pg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~37_combout\,
	datac => \pg~40_combout\,
	datad => \pg~45_combout\,
	combout => \pg~46_combout\);

-- Location: IOIBUF_X113_Y0_N1
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: LCCOMB_X109_Y4_N18
\p[28]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(28) = \A[28]~input_o\ $ (\B[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datad => \B[28]~input_o\,
	combout => p(28));

-- Location: LCCOMB_X84_Y4_N22
\c_var~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_var~31_combout\ = (\pg~23_combout\ & (\pg~36_combout\ & (\c_var~21_combout\ & \pg~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~23_combout\,
	datab => \pg~36_combout\,
	datac => \c_var~21_combout\,
	datad => \pg~45_combout\,
	combout => \c_var~31_combout\);

-- Location: LCCOMB_X108_Y4_N0
\pg~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~43_combout\ = (\B[27]~input_o\ & ((\A[27]~input_o\) # ((\B[26]~input_o\ & \A[26]~input_o\)))) # (!\B[27]~input_o\ & (\B[26]~input_o\ & (\A[27]~input_o\ & \A[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[26]~input_o\,
	datab => \B[27]~input_o\,
	datac => \A[27]~input_o\,
	datad => \A[26]~input_o\,
	combout => \pg~43_combout\);

-- Location: LCCOMB_X108_Y4_N2
\pg~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~44_combout\ = (\pg~43_combout\) # ((\pg~42_combout\ & (p(27) & p(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~42_combout\,
	datab => \pg~43_combout\,
	datac => p(27),
	datad => p(26),
	combout => \pg~44_combout\);

-- Location: LCCOMB_X109_Y4_N28
\S~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~38_combout\ = p(28) $ (((\pg~46_combout\) # ((\c_var~31_combout\) # (\pg~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~46_combout\,
	datab => p(28),
	datac => \c_var~31_combout\,
	datad => \pg~44_combout\,
	combout => \S~38_combout\);

-- Location: LCCOMB_X109_Y4_N30
\ppn_carry:pg[28][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[28][0]~0_combout\ = (\B[28]~input_o\ & ((\pg~44_combout\) # ((\pg~46_combout\) # (\A[28]~input_o\)))) # (!\B[28]~input_o\ & (\A[28]~input_o\ & ((\pg~44_combout\) # (\pg~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~44_combout\,
	datab => \B[28]~input_o\,
	datac => \pg~46_combout\,
	datad => \A[28]~input_o\,
	combout => \ppn_carry:pg[28][0]~0_combout\);

-- Location: IOIBUF_X109_Y0_N8
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: IOIBUF_X113_Y0_N8
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: LCCOMB_X109_Y4_N16
\p[29]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(29) = \A[29]~input_o\ $ (\B[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[29]~input_o\,
	datad => \B[29]~input_o\,
	combout => p(29));

-- Location: LCCOMB_X109_Y4_N26
\S~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~39_combout\ = p(29) $ (((\ppn_carry:pg[28][0]~0_combout\) # ((\c_var~31_combout\ & p(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ppn_carry:pg[28][0]~0_combout\,
	datab => p(29),
	datac => \c_var~31_combout\,
	datad => p(28),
	combout => \S~39_combout\);

-- Location: IOIBUF_X102_Y0_N22
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: LCCOMB_X109_Y4_N12
\pg~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~47_combout\ = (\A[28]~input_o\ & (!\B[28]~input_o\ & (\B[29]~input_o\ $ (\A[29]~input_o\)))) # (!\A[28]~input_o\ & (\B[28]~input_o\ & (\B[29]~input_o\ $ (\A[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \B[29]~input_o\,
	datac => \A[29]~input_o\,
	datad => \B[28]~input_o\,
	combout => \pg~47_combout\);

-- Location: LCCOMB_X109_Y4_N6
\pg~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~49_combout\ = (\B[29]~input_o\ & ((\A[29]~input_o\) # ((\A[28]~input_o\ & \B[28]~input_o\)))) # (!\B[29]~input_o\ & (\A[28]~input_o\ & (\A[29]~input_o\ & \B[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \B[29]~input_o\,
	datac => \A[29]~input_o\,
	datad => \B[28]~input_o\,
	combout => \pg~49_combout\);

-- Location: LCCOMB_X105_Y4_N28
\ppn_carry:c_var[30]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ppn_carry:c_var[30]~0_combout\ = (\pg~49_combout\) # ((\pg~47_combout\ & (\pg~45_combout\ & \c_var~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~47_combout\,
	datab => \pg~45_combout\,
	datac => \c_var~29_combout\,
	datad => \pg~49_combout\,
	combout => \ppn_carry:c_var[30]~0_combout\);

-- Location: IOIBUF_X105_Y0_N1
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: LCCOMB_X105_Y4_N2
\pg~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~48_combout\ = (\pg~47_combout\ & ((\pg~46_combout\) # (\pg~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~47_combout\,
	datab => \pg~46_combout\,
	datac => \pg~44_combout\,
	combout => \pg~48_combout\);

-- Location: LCCOMB_X105_Y4_N16
\S~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~72_combout\ = \B[30]~input_o\ $ (\A[30]~input_o\ $ (((\ppn_carry:c_var[30]~0_combout\) # (\pg~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[30]~input_o\,
	datab => \ppn_carry:c_var[30]~0_combout\,
	datac => \A[30]~input_o\,
	datad => \pg~48_combout\,
	combout => \S~72_combout\);

-- Location: LCCOMB_X105_Y4_N26
\c_var~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_var~52_combout\ = (\pg~47_combout\ & (\pg~45_combout\ & (\B[30]~input_o\ $ (\A[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~47_combout\,
	datab => \B[30]~input_o\,
	datac => \A[30]~input_o\,
	datad => \pg~45_combout\,
	combout => \c_var~52_combout\);

-- Location: IOIBUF_X102_Y0_N15
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: IOIBUF_X105_Y0_N15
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: LCCOMB_X105_Y4_N18
\p[31]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(31) = \B[31]~input_o\ $ (\A[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[31]~input_o\,
	datad => \A[31]~input_o\,
	combout => p(31));

-- Location: LCCOMB_X105_Y4_N0
\ppn_carry:pg[30][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[30][0]~0_combout\ = (\B[30]~input_o\ & ((\pg~49_combout\) # ((\A[30]~input_o\) # (\pg~48_combout\)))) # (!\B[30]~input_o\ & (\A[30]~input_o\ & ((\pg~49_combout\) # (\pg~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~49_combout\,
	datab => \B[30]~input_o\,
	datac => \A[30]~input_o\,
	datad => \pg~48_combout\,
	combout => \ppn_carry:pg[30][0]~0_combout\);

-- Location: LCCOMB_X105_Y4_N4
\S~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~40_combout\ = p(31) $ (((\ppn_carry:pg[30][0]~0_combout\) # ((\c_var~52_combout\ & \c_var~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_var~52_combout\,
	datab => p(31),
	datac => \c_var~29_combout\,
	datad => \ppn_carry:pg[30][0]~0_combout\,
	combout => \S~40_combout\);

-- Location: LCCOMB_X105_Y4_N6
\p[30]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(30) = \B[30]~input_o\ $ (\A[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[30]~input_o\,
	datac => \A[30]~input_o\,
	combout => p(30));

-- Location: LCCOMB_X105_Y4_N8
\pg~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~52_combout\ = (\B[31]~input_o\ & ((\A[31]~input_o\) # ((\B[30]~input_o\ & \A[30]~input_o\)))) # (!\B[31]~input_o\ & (\B[30]~input_o\ & (\A[30]~input_o\ & \A[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[31]~input_o\,
	datab => \B[30]~input_o\,
	datac => \A[30]~input_o\,
	datad => \A[31]~input_o\,
	combout => \pg~52_combout\);

-- Location: LCCOMB_X105_Y4_N10
\pg~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~53_combout\ = (\pg~52_combout\) # ((p(30) & (p(31) & \pg~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(30),
	datab => p(31),
	datac => \pg~52_combout\,
	datad => \pg~49_combout\,
	combout => \pg~53_combout\);

-- Location: LCCOMB_X105_Y4_N20
\ppn_carry:pg[31][1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[31][1]~4_combout\ = (\pg~47_combout\ & (p(31) & (\B[30]~input_o\ $ (\A[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~47_combout\,
	datab => \B[30]~input_o\,
	datac => \A[30]~input_o\,
	datad => p(31),
	combout => \ppn_carry:pg[31][1]~4_combout\);

-- Location: LCCOMB_X105_Y4_N12
\pg~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~54_combout\ = (\pg~53_combout\) # ((\ppn_carry:pg[31][1]~4_combout\ & \pg~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~53_combout\,
	datab => \ppn_carry:pg[31][1]~4_combout\,
	datac => \pg~44_combout\,
	combout => \pg~54_combout\);

-- Location: LCCOMB_X105_Y4_N22
\pg~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~55_combout\ = (\pg~54_combout\) # ((\c_var~52_combout\ & (p(31) & \pg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_var~52_combout\,
	datab => p(31),
	datac => \pg~40_combout\,
	datad => \pg~54_combout\,
	combout => \pg~55_combout\);

-- Location: IOIBUF_X115_Y16_N1
\A[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(32),
	o => \A[32]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\B[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(32),
	o => \B[32]~input_o\);

-- Location: LCCOMB_X109_Y16_N18
\p[32]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(32) = \A[32]~input_o\ $ (\B[32]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[32]~input_o\,
	datac => \B[32]~input_o\,
	combout => p(32));

-- Location: LCCOMB_X109_Y4_N0
\c_var~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_var~32_combout\ = (\ppn_carry:pg[31][1]~4_combout\ & (\c_var~29_combout\ & \pg~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ppn_carry:pg[31][1]~4_combout\,
	datac => \c_var~29_combout\,
	datad => \pg~45_combout\,
	combout => \c_var~32_combout\);

-- Location: LCCOMB_X105_Y4_N30
\pg~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~50_combout\ = (p(30) & (p(31) & (\pg~47_combout\ & \pg~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(30),
	datab => p(31),
	datac => \pg~47_combout\,
	datad => \pg~45_combout\,
	combout => \pg~50_combout\);

-- Location: LCCOMB_X109_Y16_N24
\pg~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~51_combout\ = (\pg~50_combout\ & \pg~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pg~50_combout\,
	datad => \pg~37_combout\,
	combout => \pg~51_combout\);

-- Location: LCCOMB_X109_Y16_N20
\S~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~41_combout\ = p(32) $ (((\pg~55_combout\) # ((\c_var~32_combout\) # (\pg~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~55_combout\,
	datab => p(32),
	datac => \c_var~32_combout\,
	datad => \pg~51_combout\,
	combout => \S~41_combout\);

-- Location: LCCOMB_X109_Y16_N30
\ppn_carry:pg[32][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[32][0]~0_combout\ = (\B[32]~input_o\ & ((\pg~55_combout\) # ((\pg~51_combout\) # (\A[32]~input_o\)))) # (!\B[32]~input_o\ & (\A[32]~input_o\ & ((\pg~55_combout\) # (\pg~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~55_combout\,
	datab => \pg~51_combout\,
	datac => \B[32]~input_o\,
	datad => \A[32]~input_o\,
	combout => \ppn_carry:pg[32][0]~0_combout\);

-- Location: IOIBUF_X115_Y17_N1
\A[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(33),
	o => \A[33]~input_o\);

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

-- Location: LCCOMB_X109_Y16_N0
\p[33]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(33) = \A[33]~input_o\ $ (\B[33]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[33]~input_o\,
	datad => \B[33]~input_o\,
	combout => p(33));

-- Location: LCCOMB_X109_Y16_N26
\S~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~42_combout\ = p(33) $ (((\ppn_carry:pg[32][0]~0_combout\) # ((\c_var~32_combout\ & p(32)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ppn_carry:pg[32][0]~0_combout\,
	datab => p(33),
	datac => \c_var~32_combout\,
	datad => p(32),
	combout => \S~42_combout\);

-- Location: LCCOMB_X109_Y16_N6
\pg~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~57_combout\ = (\B[33]~input_o\ & (!\A[33]~input_o\ & (\A[32]~input_o\ $ (\B[32]~input_o\)))) # (!\B[33]~input_o\ & (\A[33]~input_o\ & (\A[32]~input_o\ $ (\B[32]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[33]~input_o\,
	datab => \A[32]~input_o\,
	datac => \B[32]~input_o\,
	datad => \A[33]~input_o\,
	combout => \pg~57_combout\);

-- Location: LCCOMB_X109_Y16_N16
\pg~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~58_combout\ = (\pg~57_combout\ & ((\pg~55_combout\) # ((\pg~37_combout\ & \pg~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~37_combout\,
	datab => \pg~55_combout\,
	datac => \pg~50_combout\,
	datad => \pg~57_combout\,
	combout => \pg~58_combout\);

-- Location: LCCOMB_X109_Y4_N10
\c_var~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_var~33_combout\ = (\pg~57_combout\ & (\ppn_carry:pg[31][1]~4_combout\ & (\c_var~29_combout\ & \pg~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~57_combout\,
	datab => \ppn_carry:pg[31][1]~4_combout\,
	datac => \c_var~29_combout\,
	datad => \pg~45_combout\,
	combout => \c_var~33_combout\);

-- Location: LCCOMB_X109_Y16_N12
\pg~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~56_combout\ = (\B[33]~input_o\ & ((\A[33]~input_o\) # ((\A[32]~input_o\ & \B[32]~input_o\)))) # (!\B[33]~input_o\ & (\A[32]~input_o\ & (\B[32]~input_o\ & \A[33]~input_o\)))

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
	combout => \pg~56_combout\);

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

-- Location: IOIBUF_X115_Y20_N1
\B[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(34),
	o => \B[34]~input_o\);

-- Location: LCCOMB_X110_Y19_N0
\p[34]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(34) = \A[34]~input_o\ $ (\B[34]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[34]~input_o\,
	datac => \B[34]~input_o\,
	combout => p(34));

-- Location: LCCOMB_X110_Y19_N10
\S~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~43_combout\ = p(34) $ (((\pg~58_combout\) # ((\c_var~33_combout\) # (\pg~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~58_combout\,
	datab => \c_var~33_combout\,
	datac => \pg~56_combout\,
	datad => p(34),
	combout => \S~43_combout\);

-- Location: LCCOMB_X110_Y19_N30
\ppn_carry:pg[34][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[34][0]~0_combout\ = (\B[34]~input_o\ & ((\A[34]~input_o\) # ((\pg~56_combout\) # (\pg~58_combout\)))) # (!\B[34]~input_o\ & (\A[34]~input_o\ & ((\pg~56_combout\) # (\pg~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[34]~input_o\,
	datab => \A[34]~input_o\,
	datac => \pg~56_combout\,
	datad => \pg~58_combout\,
	combout => \ppn_carry:pg[34][0]~0_combout\);

-- Location: LCCOMB_X110_Y19_N28
\c_var~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_var~34_combout\ = (\pg~57_combout\ & (\B[34]~input_o\ $ (\A[34]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[34]~input_o\,
	datab => \A[34]~input_o\,
	datac => \pg~57_combout\,
	combout => \c_var~34_combout\);

-- Location: IOIBUF_X115_Y17_N8
\B[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(35),
	o => \B[35]~input_o\);

-- Location: IOIBUF_X115_Y19_N8
\A[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(35),
	o => \A[35]~input_o\);

-- Location: LCCOMB_X110_Y19_N16
\p[35]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(35) = \B[35]~input_o\ $ (\A[35]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[35]~input_o\,
	datad => \A[35]~input_o\,
	combout => p(35));

-- Location: LCCOMB_X110_Y19_N26
\S~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~44_combout\ = p(35) $ (((\ppn_carry:pg[34][0]~0_combout\) # ((\c_var~34_combout\ & \c_var~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ppn_carry:pg[34][0]~0_combout\,
	datab => \c_var~34_combout\,
	datac => \c_var~32_combout\,
	datad => p(35),
	combout => \S~44_combout\);

-- Location: LCCOMB_X110_Y19_N2
\c_var~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_var~53_combout\ = (\c_var~32_combout\ & (\c_var~34_combout\ & (\A[35]~input_o\ $ (\B[35]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[35]~input_o\,
	datab => \c_var~32_combout\,
	datac => \B[35]~input_o\,
	datad => \c_var~34_combout\,
	combout => \c_var~53_combout\);

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

-- Location: LCCOMB_X1_Y19_N16
\p[36]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(36) = \A[36]~input_o\ $ (\B[36]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[36]~input_o\,
	datad => \B[36]~input_o\,
	combout => p(36));

-- Location: LCCOMB_X110_Y19_N20
\pg~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~59_combout\ = (\A[35]~input_o\ & ((\B[35]~input_o\) # ((\B[34]~input_o\ & \A[34]~input_o\)))) # (!\A[35]~input_o\ & (\B[35]~input_o\ & (\B[34]~input_o\ & \A[34]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[35]~input_o\,
	datab => \B[35]~input_o\,
	datac => \B[34]~input_o\,
	datad => \A[34]~input_o\,
	combout => \pg~59_combout\);

-- Location: LCCOMB_X110_Y19_N22
\pg~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~60_combout\ = (\pg~59_combout\) # ((p(34) & (\pg~56_combout\ & p(35))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~59_combout\,
	datab => p(34),
	datac => \pg~56_combout\,
	datad => p(35),
	combout => \pg~60_combout\);

-- Location: LCCOMB_X110_Y19_N24
\pg~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~61_combout\ = (\c_var~34_combout\ & (p(35) & ((\pg~55_combout\) # (\pg~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~55_combout\,
	datab => \c_var~34_combout\,
	datac => \pg~51_combout\,
	datad => p(35),
	combout => \pg~61_combout\);

-- Location: LCCOMB_X1_Y19_N2
\S~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~45_combout\ = p(36) $ (((\c_var~53_combout\) # ((\pg~60_combout\) # (\pg~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_var~53_combout\,
	datab => p(36),
	datac => \pg~60_combout\,
	datad => \pg~61_combout\,
	combout => \S~45_combout\);

-- Location: LCCOMB_X1_Y19_N20
\ppn_carry:pg[36][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[36][0]~0_combout\ = (\B[36]~input_o\ & ((\A[36]~input_o\) # ((\pg~60_combout\) # (\pg~61_combout\)))) # (!\B[36]~input_o\ & (\A[36]~input_o\ & ((\pg~60_combout\) # (\pg~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[36]~input_o\,
	datab => \A[36]~input_o\,
	datac => \pg~60_combout\,
	datad => \pg~61_combout\,
	combout => \ppn_carry:pg[36][0]~0_combout\);

-- Location: IOIBUF_X0_Y21_N22
\B[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(37),
	o => \B[37]~input_o\);

-- Location: IOIBUF_X0_Y16_N22
\A[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(37),
	o => \A[37]~input_o\);

-- Location: LCCOMB_X1_Y19_N22
\p[37]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(37) = \B[37]~input_o\ $ (\A[37]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[37]~input_o\,
	datac => \A[37]~input_o\,
	combout => p(37));

-- Location: LCCOMB_X1_Y19_N8
\S~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~46_combout\ = p(37) $ (((\ppn_carry:pg[36][0]~0_combout\) # ((\c_var~53_combout\ & p(36)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_var~53_combout\,
	datab => \ppn_carry:pg[36][0]~0_combout\,
	datac => p(37),
	datad => p(36),
	combout => \S~46_combout\);

-- Location: LCCOMB_X1_Y19_N12
\pg~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~63_combout\ = (\A[37]~input_o\ & ((\B[37]~input_o\) # ((\A[36]~input_o\ & \B[36]~input_o\)))) # (!\A[37]~input_o\ & (\B[37]~input_o\ & (\A[36]~input_o\ & \B[36]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[37]~input_o\,
	datab => \B[37]~input_o\,
	datac => \A[36]~input_o\,
	datad => \B[36]~input_o\,
	combout => \pg~63_combout\);

-- Location: LCCOMB_X1_Y19_N18
\pg~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~62_combout\ = (p(37) & (p(36) & ((\pg~61_combout\) # (\pg~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(37),
	datab => \pg~61_combout\,
	datac => \pg~60_combout\,
	datad => p(36),
	combout => \pg~62_combout\);

-- Location: LCCOMB_X1_Y19_N30
\c_var~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_var~54_combout\ = (p(37) & (\c_var~53_combout\ & (\B[36]~input_o\ $ (\A[36]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[36]~input_o\,
	datab => \A[36]~input_o\,
	datac => p(37),
	datad => \c_var~53_combout\,
	combout => \c_var~54_combout\);

-- Location: IOIBUF_X0_Y19_N1
\A[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(38),
	o => \A[38]~input_o\);

-- Location: IOIBUF_X0_Y20_N15
\B[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(38),
	o => \B[38]~input_o\);

-- Location: LCCOMB_X1_Y19_N6
\p[38]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(38) = \A[38]~input_o\ $ (\B[38]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[38]~input_o\,
	datac => \B[38]~input_o\,
	combout => p(38));

-- Location: LCCOMB_X1_Y19_N0
\S~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~47_combout\ = p(38) $ (((\pg~63_combout\) # ((\pg~62_combout\) # (\c_var~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~63_combout\,
	datab => \pg~62_combout\,
	datac => \c_var~54_combout\,
	datad => p(38),
	combout => \S~47_combout\);

-- Location: IOIBUF_X0_Y18_N15
\B[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(39),
	o => \B[39]~input_o\);

-- Location: IOIBUF_X0_Y19_N8
\A[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(39),
	o => \A[39]~input_o\);

-- Location: LCCOMB_X1_Y19_N28
\p[39]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(39) = \B[39]~input_o\ $ (\A[39]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[39]~input_o\,
	datad => \A[39]~input_o\,
	combout => p(39));

-- Location: LCCOMB_X1_Y19_N10
\ppn_carry:pg[38][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[38][0]~0_combout\ = (\A[38]~input_o\ & ((\pg~62_combout\) # ((\B[38]~input_o\) # (\pg~63_combout\)))) # (!\A[38]~input_o\ & (\B[38]~input_o\ & ((\pg~62_combout\) # (\pg~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[38]~input_o\,
	datab => \pg~62_combout\,
	datac => \B[38]~input_o\,
	datad => \pg~63_combout\,
	combout => \ppn_carry:pg[38][0]~0_combout\);

-- Location: LCCOMB_X1_Y19_N14
\S~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~48_combout\ = p(39) $ (((\ppn_carry:pg[38][0]~0_combout\) # ((p(38) & \c_var~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(38),
	datab => p(39),
	datac => \c_var~54_combout\,
	datad => \ppn_carry:pg[38][0]~0_combout\,
	combout => \S~48_combout\);

-- Location: LCCOMB_X1_Y19_N26
\pg~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~67_combout\ = (\B[39]~input_o\ & ((\A[39]~input_o\) # ((\B[38]~input_o\ & \A[38]~input_o\)))) # (!\B[39]~input_o\ & (\A[39]~input_o\ & (\B[38]~input_o\ & \A[38]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[39]~input_o\,
	datab => \A[39]~input_o\,
	datac => \B[38]~input_o\,
	datad => \A[38]~input_o\,
	combout => \pg~67_combout\);

-- Location: LCCOMB_X1_Y19_N4
\pg~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~68_combout\ = (\pg~67_combout\) # ((\pg~63_combout\ & (p(39) & p(38))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~63_combout\,
	datab => p(39),
	datac => \pg~67_combout\,
	datad => p(38),
	combout => \pg~68_combout\);

-- Location: LCCOMB_X1_Y19_N24
\pg~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~64_combout\ = (p(38) & (p(39) & (p(37) & p(36))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(38),
	datab => p(39),
	datac => p(37),
	datad => p(36),
	combout => \pg~64_combout\);

-- Location: LCCOMB_X110_Y19_N12
\pg~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~69_combout\ = (\pg~68_combout\) # ((\pg~64_combout\ & \pg~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~68_combout\,
	datac => \pg~64_combout\,
	datad => \pg~60_combout\,
	combout => \pg~69_combout\);

-- Location: LCCOMB_X110_Y19_N18
\pg~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~65_combout\ = (\pg~64_combout\ & (p(35) & (\pg~57_combout\ & p(34))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~64_combout\,
	datab => p(35),
	datac => \pg~57_combout\,
	datad => p(34),
	combout => \pg~65_combout\);

-- Location: LCCOMB_X109_Y16_N10
\pg~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~66_combout\ = (\pg~65_combout\ & ((\pg~55_combout\) # ((\pg~50_combout\ & \pg~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~50_combout\,
	datab => \pg~55_combout\,
	datac => \pg~65_combout\,
	datad => \pg~37_combout\,
	combout => \pg~66_combout\);

-- Location: LCCOMB_X109_Y4_N20
\c_var~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_var~35_combout\ = (\pg~65_combout\ & (\ppn_carry:pg[31][1]~4_combout\ & (\c_var~29_combout\ & \pg~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~65_combout\,
	datab => \ppn_carry:pg[31][1]~4_combout\,
	datac => \c_var~29_combout\,
	datad => \pg~45_combout\,
	combout => \c_var~35_combout\);

-- Location: IOIBUF_X115_Y26_N22
\A[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(40),
	o => \A[40]~input_o\);

-- Location: IOIBUF_X115_Y29_N8
\B[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(40),
	o => \B[40]~input_o\);

-- Location: LCCOMB_X114_Y26_N0
\p[40]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(40) = \A[40]~input_o\ $ (\B[40]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[40]~input_o\,
	datad => \B[40]~input_o\,
	combout => p(40));

-- Location: LCCOMB_X114_Y26_N2
\S~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~49_combout\ = p(40) $ (((\pg~69_combout\) # ((\pg~66_combout\) # (\c_var~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~69_combout\,
	datab => \pg~66_combout\,
	datac => \c_var~35_combout\,
	datad => p(40),
	combout => \S~49_combout\);

-- Location: LCCOMB_X114_Y26_N12
\ppn_carry:pg[40][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[40][0]~0_combout\ = (\A[40]~input_o\ & ((\pg~69_combout\) # ((\pg~66_combout\) # (\B[40]~input_o\)))) # (!\A[40]~input_o\ & (\B[40]~input_o\ & ((\pg~69_combout\) # (\pg~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~69_combout\,
	datab => \A[40]~input_o\,
	datac => \pg~66_combout\,
	datad => \B[40]~input_o\,
	combout => \ppn_carry:pg[40][0]~0_combout\);

-- Location: IOIBUF_X115_Y27_N1
\A[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(41),
	o => \A[41]~input_o\);

-- Location: IOIBUF_X115_Y28_N1
\B[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(41),
	o => \B[41]~input_o\);

-- Location: LCCOMB_X114_Y27_N8
\p[41]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(41) = \A[41]~input_o\ $ (\B[41]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[41]~input_o\,
	datac => \B[41]~input_o\,
	combout => p(41));

-- Location: LCCOMB_X114_Y26_N22
\S~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~50_combout\ = p(41) $ (((\ppn_carry:pg[40][0]~0_combout\) # ((\c_var~35_combout\ & p(40)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ppn_carry:pg[40][0]~0_combout\,
	datab => \c_var~35_combout\,
	datac => p(41),
	datad => p(40),
	combout => \S~50_combout\);

-- Location: IOIBUF_X115_Y30_N1
\A[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(42),
	o => \A[42]~input_o\);

-- Location: LCCOMB_X114_Y26_N16
\pg~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~70_combout\ = (p(41) & (p(40) & ((\pg~69_combout\) # (\pg~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~69_combout\,
	datab => \pg~66_combout\,
	datac => p(41),
	datad => p(40),
	combout => \pg~70_combout\);

-- Location: LCCOMB_X114_Y26_N10
\pg~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~71_combout\ = (\B[41]~input_o\ & ((\A[41]~input_o\) # ((\B[40]~input_o\ & \A[40]~input_o\)))) # (!\B[41]~input_o\ & (\B[40]~input_o\ & (\A[41]~input_o\ & \A[40]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[40]~input_o\,
	datab => \B[41]~input_o\,
	datac => \A[41]~input_o\,
	datad => \A[40]~input_o\,
	combout => \pg~71_combout\);

-- Location: LCCOMB_X114_Y26_N4
\ppn_carry:c_var[42]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ppn_carry:c_var[42]~0_combout\ = (\pg~71_combout\) # ((p(40) & (p(41) & \c_var~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~71_combout\,
	datab => p(40),
	datac => p(41),
	datad => \c_var~35_combout\,
	combout => \ppn_carry:c_var[42]~0_combout\);

-- Location: IOIBUF_X115_Y31_N8
\B[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(42),
	o => \B[42]~input_o\);

-- Location: LCCOMB_X114_Y26_N28
\S~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~73_combout\ = \A[42]~input_o\ $ (\B[42]~input_o\ $ (((\pg~70_combout\) # (\ppn_carry:c_var[42]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[42]~input_o\,
	datab => \pg~70_combout\,
	datac => \ppn_carry:c_var[42]~0_combout\,
	datad => \B[42]~input_o\,
	combout => \S~73_combout\);

-- Location: LCCOMB_X114_Y26_N26
\ppn_carry:pg[42][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[42][0]~0_combout\ = (\A[42]~input_o\ & ((\B[42]~input_o\) # ((\pg~70_combout\) # (\pg~71_combout\)))) # (!\A[42]~input_o\ & (\B[42]~input_o\ & ((\pg~70_combout\) # (\pg~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[42]~input_o\,
	datab => \B[42]~input_o\,
	datac => \pg~70_combout\,
	datad => \pg~71_combout\,
	combout => \ppn_carry:pg[42][0]~0_combout\);

-- Location: LCCOMB_X114_Y26_N30
\p[42]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(42) = \A[42]~input_o\ $ (\B[42]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[42]~input_o\,
	datad => \B[42]~input_o\,
	combout => p(42));

-- Location: LCCOMB_X114_Y26_N8
\c_var~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_var~36_combout\ = (p(41) & (p(42) & (\A[40]~input_o\ $ (\B[40]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(41),
	datab => \A[40]~input_o\,
	datac => p(42),
	datad => \B[40]~input_o\,
	combout => \c_var~36_combout\);

-- Location: IOIBUF_X115_Y25_N15
\B[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(43),
	o => \B[43]~input_o\);

-- Location: IOIBUF_X115_Y28_N8
\A[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(43),
	o => \A[43]~input_o\);

-- Location: LCCOMB_X114_Y25_N8
\p[43]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(43) = \B[43]~input_o\ $ (\A[43]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[43]~input_o\,
	datac => \A[43]~input_o\,
	combout => p(43));

-- Location: LCCOMB_X114_Y26_N20
\S~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~51_combout\ = p(43) $ (((\ppn_carry:pg[42][0]~0_combout\) # ((\c_var~35_combout\ & \c_var~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ppn_carry:pg[42][0]~0_combout\,
	datab => \c_var~35_combout\,
	datac => \c_var~36_combout\,
	datad => p(43),
	combout => \S~51_combout\);

-- Location: LCCOMB_X114_Y26_N6
\c_var~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_var~55_combout\ = (\c_var~36_combout\ & (\c_var~35_combout\ & (\A[43]~input_o\ $ (\B[43]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[43]~input_o\,
	datab => \c_var~36_combout\,
	datac => \B[43]~input_o\,
	datad => \c_var~35_combout\,
	combout => \c_var~55_combout\);

-- Location: IOIBUF_X115_Y20_N8
\A[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(44),
	o => \A[44]~input_o\);

-- Location: IOIBUF_X115_Y23_N8
\B[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(44),
	o => \B[44]~input_o\);

-- Location: LCCOMB_X114_Y22_N16
\p[44]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(44) = \A[44]~input_o\ $ (\B[44]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[44]~input_o\,
	datad => \B[44]~input_o\,
	combout => p(44));

-- Location: LCCOMB_X114_Y26_N14
\pg~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~72_combout\ = (\A[43]~input_o\ & ((\B[43]~input_o\) # ((\B[42]~input_o\ & \A[42]~input_o\)))) # (!\A[43]~input_o\ & (\B[42]~input_o\ & (\B[43]~input_o\ & \A[42]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[43]~input_o\,
	datab => \B[42]~input_o\,
	datac => \B[43]~input_o\,
	datad => \A[42]~input_o\,
	combout => \pg~72_combout\);

-- Location: LCCOMB_X114_Y26_N24
\pg~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~73_combout\ = (\pg~72_combout\) # ((p(43) & (p(42) & \pg~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(43),
	datab => \pg~72_combout\,
	datac => p(42),
	datad => \pg~71_combout\,
	combout => \pg~73_combout\);

-- Location: LCCOMB_X114_Y26_N18
\pg~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~74_combout\ = (\c_var~36_combout\ & (p(43) & ((\pg~69_combout\) # (\pg~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~69_combout\,
	datab => \pg~66_combout\,
	datac => \c_var~36_combout\,
	datad => p(43),
	combout => \pg~74_combout\);

-- Location: LCCOMB_X114_Y22_N18
\S~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~52_combout\ = p(44) $ (((\c_var~55_combout\) # ((\pg~73_combout\) # (\pg~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_var~55_combout\,
	datab => p(44),
	datac => \pg~73_combout\,
	datad => \pg~74_combout\,
	combout => \S~52_combout\);

-- Location: LCCOMB_X114_Y22_N28
\ppn_carry:pg[44][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[44][0]~0_combout\ = (\A[44]~input_o\ & ((\pg~73_combout\) # ((\pg~74_combout\) # (\B[44]~input_o\)))) # (!\A[44]~input_o\ & (\B[44]~input_o\ & ((\pg~73_combout\) # (\pg~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~73_combout\,
	datab => \pg~74_combout\,
	datac => \A[44]~input_o\,
	datad => \B[44]~input_o\,
	combout => \ppn_carry:pg[44][0]~0_combout\);

-- Location: IOIBUF_X115_Y22_N22
\A[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(45),
	o => \A[45]~input_o\);

-- Location: IOIBUF_X115_Y23_N1
\B[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(45),
	o => \B[45]~input_o\);

-- Location: LCCOMB_X114_Y22_N22
\p[45]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(45) = \A[45]~input_o\ $ (\B[45]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[45]~input_o\,
	datad => \B[45]~input_o\,
	combout => p(45));

-- Location: LCCOMB_X114_Y22_N0
\S~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~53_combout\ = p(45) $ (((\ppn_carry:pg[44][0]~0_combout\) # ((\c_var~55_combout\ & p(44)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_var~55_combout\,
	datab => \ppn_carry:pg[44][0]~0_combout\,
	datac => p(45),
	datad => p(44),
	combout => \S~53_combout\);

-- Location: IOIBUF_X115_Y22_N15
\B[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(46),
	o => \B[46]~input_o\);

-- Location: LCCOMB_X114_Y22_N2
\pg~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~75_combout\ = (p(44) & (p(45) & ((\pg~73_combout\) # (\pg~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~73_combout\,
	datab => p(44),
	datac => p(45),
	datad => \pg~74_combout\,
	combout => \pg~75_combout\);

-- Location: LCCOMB_X114_Y22_N30
\c_var~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_var~37_combout\ = (p(43) & (p(44) & (p(45) & \c_var~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(43),
	datab => p(44),
	datac => p(45),
	datad => \c_var~36_combout\,
	combout => \c_var~37_combout\);

-- Location: LCCOMB_X114_Y22_N20
\pg~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~76_combout\ = (\B[45]~input_o\ & ((\A[45]~input_o\) # ((\A[44]~input_o\ & \B[44]~input_o\)))) # (!\B[45]~input_o\ & (\A[45]~input_o\ & (\A[44]~input_o\ & \B[44]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[45]~input_o\,
	datab => \A[45]~input_o\,
	datac => \A[44]~input_o\,
	datad => \B[44]~input_o\,
	combout => \pg~76_combout\);

-- Location: LCCOMB_X113_Y17_N24
\ppn_carry:c_var[46]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ppn_carry:c_var[46]~0_combout\ = (\pg~76_combout\) # ((\c_var~37_combout\ & (\c_var~32_combout\ & \pg~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_var~37_combout\,
	datab => \c_var~32_combout\,
	datac => \pg~65_combout\,
	datad => \pg~76_combout\,
	combout => \ppn_carry:c_var[46]~0_combout\);

-- Location: IOIBUF_X115_Y24_N1
\A[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(46),
	o => \A[46]~input_o\);

-- Location: LCCOMB_X114_Y22_N8
\S~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~54_combout\ = \B[46]~input_o\ $ (\A[46]~input_o\ $ (((\pg~75_combout\) # (\ppn_carry:c_var[46]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[46]~input_o\,
	datab => \pg~75_combout\,
	datac => \ppn_carry:c_var[46]~0_combout\,
	datad => \A[46]~input_o\,
	combout => \S~54_combout\);

-- Location: IOIBUF_X115_Y22_N1
\A[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(47),
	o => \A[47]~input_o\);

-- Location: IOIBUF_X115_Y25_N22
\B[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(47),
	o => \B[47]~input_o\);

-- Location: LCCOMB_X114_Y22_N6
\p[47]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(47) = \A[47]~input_o\ $ (\B[47]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[47]~input_o\,
	datad => \B[47]~input_o\,
	combout => p(47));

-- Location: LCCOMB_X114_Y22_N10
\c_var~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_var~38_combout\ = (\c_var~37_combout\ & (\B[46]~input_o\ $ (\A[46]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[46]~input_o\,
	datac => \c_var~37_combout\,
	datad => \A[46]~input_o\,
	combout => \c_var~38_combout\);

-- Location: LCCOMB_X114_Y22_N4
\ppn_carry:pg[46][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[46][0]~0_combout\ = (\B[46]~input_o\ & ((\pg~75_combout\) # ((\pg~76_combout\) # (\A[46]~input_o\)))) # (!\B[46]~input_o\ & (\A[46]~input_o\ & ((\pg~75_combout\) # (\pg~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~75_combout\,
	datab => \pg~76_combout\,
	datac => \B[46]~input_o\,
	datad => \A[46]~input_o\,
	combout => \ppn_carry:pg[46][0]~0_combout\);

-- Location: LCCOMB_X110_Y19_N6
\S~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~55_combout\ = p(47) $ (((\ppn_carry:pg[46][0]~0_combout\) # ((\c_var~35_combout\ & \c_var~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(47),
	datab => \c_var~35_combout\,
	datac => \c_var~38_combout\,
	datad => \ppn_carry:pg[46][0]~0_combout\,
	combout => \S~55_combout\);

-- Location: IOIBUF_X100_Y73_N22
\B[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(48),
	o => \B[48]~input_o\);

-- Location: IOIBUF_X105_Y73_N8
\A[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(48),
	o => \A[48]~input_o\);

-- Location: LCCOMB_X103_Y69_N24
\p[48]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(48) = \B[48]~input_o\ $ (\A[48]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[48]~input_o\,
	datad => \A[48]~input_o\,
	combout => p(48));

-- Location: LCCOMB_X114_Y22_N24
\pg~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~77_combout\ = (\A[47]~input_o\ & (!\B[47]~input_o\ & (\A[46]~input_o\ $ (\B[46]~input_o\)))) # (!\A[47]~input_o\ & (\B[47]~input_o\ & (\A[46]~input_o\ $ (\B[46]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[47]~input_o\,
	datab => \A[46]~input_o\,
	datac => \B[46]~input_o\,
	datad => \B[47]~input_o\,
	combout => \pg~77_combout\);

-- Location: LCCOMB_X109_Y4_N14
\pg~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~78_combout\ = (\pg~77_combout\ & (\c_var~37_combout\ & \pg~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~77_combout\,
	datab => \c_var~37_combout\,
	datac => \pg~65_combout\,
	combout => \pg~78_combout\);

-- Location: LCCOMB_X109_Y16_N28
\pg~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~79_combout\ = (\pg~78_combout\ & ((\pg~55_combout\) # ((\pg~50_combout\ & \pg~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~50_combout\,
	datab => \pg~55_combout\,
	datac => \pg~78_combout\,
	datad => \pg~37_combout\,
	combout => \pg~79_combout\);

-- Location: LCCOMB_X109_Y4_N8
\c_var~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_var~39_combout\ = (\ppn_carry:pg[31][1]~4_combout\ & (\c_var~29_combout\ & (\pg~78_combout\ & \pg~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ppn_carry:pg[31][1]~4_combout\,
	datab => \c_var~29_combout\,
	datac => \pg~78_combout\,
	datad => \pg~45_combout\,
	combout => \c_var~39_combout\);

-- Location: LCCOMB_X114_Y22_N12
\pg~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~81_combout\ = (\A[47]~input_o\ & ((\B[47]~input_o\) # ((\A[46]~input_o\ & \B[46]~input_o\)))) # (!\A[47]~input_o\ & (\A[46]~input_o\ & (\B[46]~input_o\ & \B[47]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[47]~input_o\,
	datab => \A[46]~input_o\,
	datac => \B[46]~input_o\,
	datad => \B[47]~input_o\,
	combout => \pg~81_combout\);

-- Location: LCCOMB_X114_Y22_N26
\pg~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~80_combout\ = (\pg~73_combout\ & (p(44) & (p(45) & \pg~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~73_combout\,
	datab => p(44),
	datac => p(45),
	datad => \pg~77_combout\,
	combout => \pg~80_combout\);

-- Location: LCCOMB_X114_Y22_N14
\pg~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~82_combout\ = (\pg~81_combout\) # ((\pg~80_combout\) # ((\pg~77_combout\ & \pg~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~81_combout\,
	datab => \pg~77_combout\,
	datac => \pg~80_combout\,
	datad => \pg~76_combout\,
	combout => \pg~82_combout\);

-- Location: LCCOMB_X110_Y19_N8
\pg~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~83_combout\ = (\pg~82_combout\) # ((\pg~69_combout\ & (\c_var~38_combout\ & p(47))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~69_combout\,
	datab => \pg~82_combout\,
	datac => \c_var~38_combout\,
	datad => p(47),
	combout => \pg~83_combout\);

-- Location: LCCOMB_X107_Y69_N24
\S~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~56_combout\ = p(48) $ (((\pg~79_combout\) # ((\c_var~39_combout\) # (\pg~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(48),
	datab => \pg~79_combout\,
	datac => \c_var~39_combout\,
	datad => \pg~83_combout\,
	combout => \S~56_combout\);

-- Location: IOIBUF_X102_Y73_N1
\B[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(49),
	o => \B[49]~input_o\);

-- Location: IOIBUF_X102_Y73_N8
\A[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(49),
	o => \A[49]~input_o\);

-- Location: LCCOMB_X103_Y69_N26
\p[49]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(49) = \B[49]~input_o\ $ (\A[49]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[49]~input_o\,
	datad => \A[49]~input_o\,
	combout => p(49));

-- Location: LCCOMB_X107_Y69_N10
\ppn_carry:pg[48][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[48][0]~0_combout\ = (\A[48]~input_o\ & ((\pg~79_combout\) # ((\B[48]~input_o\) # (\pg~83_combout\)))) # (!\A[48]~input_o\ & (\B[48]~input_o\ & ((\pg~79_combout\) # (\pg~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[48]~input_o\,
	datab => \pg~79_combout\,
	datac => \B[48]~input_o\,
	datad => \pg~83_combout\,
	combout => \ppn_carry:pg[48][0]~0_combout\);

-- Location: LCCOMB_X107_Y69_N4
\S~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~57_combout\ = p(49) $ (((\ppn_carry:pg[48][0]~0_combout\) # ((p(48) & \c_var~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(49),
	datab => p(48),
	datac => \c_var~39_combout\,
	datad => \ppn_carry:pg[48][0]~0_combout\,
	combout => \S~57_combout\);

-- Location: LCCOMB_X107_Y69_N22
\pg~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~84_combout\ = (p(49) & (p(48) & ((\pg~79_combout\) # (\pg~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(49),
	datab => \pg~79_combout\,
	datac => p(48),
	datad => \pg~83_combout\,
	combout => \pg~84_combout\);

-- Location: LCCOMB_X103_Y69_N28
\pg~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~85_combout\ = (\A[49]~input_o\ & ((\B[49]~input_o\) # ((\B[48]~input_o\ & \A[48]~input_o\)))) # (!\A[49]~input_o\ & (\B[49]~input_o\ & (\B[48]~input_o\ & \A[48]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[49]~input_o\,
	datab => \B[49]~input_o\,
	datac => \B[48]~input_o\,
	datad => \A[48]~input_o\,
	combout => \pg~85_combout\);

-- Location: LCCOMB_X107_Y69_N16
\ppn_carry:c_var[50]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ppn_carry:c_var[50]~0_combout\ = (\pg~85_combout\) # ((p(49) & (p(48) & \c_var~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(49),
	datab => p(48),
	datac => \c_var~39_combout\,
	datad => \pg~85_combout\,
	combout => \ppn_carry:c_var[50]~0_combout\);

-- Location: IOIBUF_X107_Y73_N8
\B[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(50),
	o => \B[50]~input_o\);

-- Location: IOIBUF_X107_Y73_N22
\A[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(50),
	o => \A[50]~input_o\);

-- Location: LCCOMB_X107_Y69_N6
\S~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~74_combout\ = \B[50]~input_o\ $ (\A[50]~input_o\ $ (((\pg~84_combout\) # (\ppn_carry:c_var[50]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~84_combout\,
	datab => \ppn_carry:c_var[50]~0_combout\,
	datac => \B[50]~input_o\,
	datad => \A[50]~input_o\,
	combout => \S~74_combout\);

-- Location: LCCOMB_X107_Y69_N30
\ppn_carry:pg[50][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[50][0]~0_combout\ = (\B[50]~input_o\ & ((\pg~84_combout\) # ((\pg~85_combout\) # (\A[50]~input_o\)))) # (!\B[50]~input_o\ & (\A[50]~input_o\ & ((\pg~84_combout\) # (\pg~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~84_combout\,
	datab => \pg~85_combout\,
	datac => \B[50]~input_o\,
	datad => \A[50]~input_o\,
	combout => \ppn_carry:pg[50][0]~0_combout\);

-- Location: IOIBUF_X107_Y73_N15
\B[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(51),
	o => \B[51]~input_o\);

-- Location: IOIBUF_X111_Y73_N1
\A[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(51),
	o => \A[51]~input_o\);

-- Location: LCCOMB_X107_Y69_N8
\p[51]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(51) = \B[51]~input_o\ $ (\A[51]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[51]~input_o\,
	datad => \A[51]~input_o\,
	combout => p(51));

-- Location: LCCOMB_X107_Y69_N20
\c_var~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_var~40_combout\ = (p(49) & (p(48) & (\B[50]~input_o\ $ (\A[50]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(49),
	datab => p(48),
	datac => \B[50]~input_o\,
	datad => \A[50]~input_o\,
	combout => \c_var~40_combout\);

-- Location: LCCOMB_X107_Y69_N26
\S~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~58_combout\ = p(51) $ (((\ppn_carry:pg[50][0]~0_combout\) # ((\c_var~39_combout\ & \c_var~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ppn_carry:pg[50][0]~0_combout\,
	datab => p(51),
	datac => \c_var~39_combout\,
	datad => \c_var~40_combout\,
	combout => \S~58_combout\);

-- Location: LCCOMB_X107_Y69_N18
\p[50]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(50) = \B[50]~input_o\ $ (\A[50]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[50]~input_o\,
	datad => \A[50]~input_o\,
	combout => p(50));

-- Location: LCCOMB_X107_Y69_N28
\pg~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~86_combout\ = (p(49) & (p(48) & (p(51) & p(50))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(49),
	datab => p(48),
	datac => p(51),
	datad => p(50),
	combout => \pg~86_combout\);

-- Location: LCCOMB_X114_Y50_N0
\c_var~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_var~41_combout\ = (\pg~86_combout\ & \c_var~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pg~86_combout\,
	datad => \c_var~39_combout\,
	combout => \c_var~41_combout\);

-- Location: LCCOMB_X107_Y69_N14
\pg~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~87_combout\ = (\B[51]~input_o\ & ((\A[51]~input_o\) # ((\B[50]~input_o\ & \A[50]~input_o\)))) # (!\B[51]~input_o\ & (\A[51]~input_o\ & (\B[50]~input_o\ & \A[50]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[51]~input_o\,
	datab => \A[51]~input_o\,
	datac => \B[50]~input_o\,
	datad => \A[50]~input_o\,
	combout => \pg~87_combout\);

-- Location: LCCOMB_X107_Y69_N0
\pg~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~88_combout\ = (\pg~87_combout\) # ((\pg~85_combout\ & (p(51) & p(50))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~85_combout\,
	datab => p(51),
	datac => \pg~87_combout\,
	datad => p(50),
	combout => \pg~88_combout\);

-- Location: IOIBUF_X115_Y55_N22
\A[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(52),
	o => \A[52]~input_o\);

-- Location: IOIBUF_X115_Y56_N22
\B[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(52),
	o => \B[52]~input_o\);

-- Location: LCCOMB_X114_Y54_N8
\p[52]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(52) = \A[52]~input_o\ $ (\B[52]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[52]~input_o\,
	datad => \B[52]~input_o\,
	combout => p(52));

-- Location: LCCOMB_X107_Y69_N2
\pg~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~89_combout\ = (\pg~86_combout\ & ((\pg~79_combout\) # (\pg~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pg~79_combout\,
	datac => \pg~86_combout\,
	datad => \pg~83_combout\,
	combout => \pg~89_combout\);

-- Location: LCCOMB_X114_Y54_N2
\S~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~59_combout\ = p(52) $ (((\c_var~41_combout\) # ((\pg~88_combout\) # (\pg~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_var~41_combout\,
	datab => \pg~88_combout\,
	datac => p(52),
	datad => \pg~89_combout\,
	combout => \S~59_combout\);

-- Location: IOIBUF_X115_Y57_N15
\A[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(53),
	o => \A[53]~input_o\);

-- Location: IOIBUF_X115_Y58_N22
\B[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(53),
	o => \B[53]~input_o\);

-- Location: LCCOMB_X114_Y54_N22
\p[53]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(53) = \A[53]~input_o\ $ (\B[53]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[53]~input_o\,
	datad => \B[53]~input_o\,
	combout => p(53));

-- Location: LCCOMB_X114_Y54_N28
\ppn_carry:pg[52][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[52][0]~0_combout\ = (\A[52]~input_o\ & ((\pg~89_combout\) # ((\pg~88_combout\) # (\B[52]~input_o\)))) # (!\A[52]~input_o\ & (\B[52]~input_o\ & ((\pg~89_combout\) # (\pg~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~89_combout\,
	datab => \A[52]~input_o\,
	datac => \pg~88_combout\,
	datad => \B[52]~input_o\,
	combout => \ppn_carry:pg[52][0]~0_combout\);

-- Location: LCCOMB_X114_Y54_N24
\S~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~60_combout\ = p(53) $ (((\ppn_carry:pg[52][0]~0_combout\) # ((p(52) & \c_var~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(53),
	datab => p(52),
	datac => \c_var~41_combout\,
	datad => \ppn_carry:pg[52][0]~0_combout\,
	combout => \S~60_combout\);

-- Location: LCCOMB_X114_Y54_N26
\pg~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~90_combout\ = (p(53) & (p(52) & ((\pg~88_combout\) # (\pg~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(53),
	datab => p(52),
	datac => \pg~88_combout\,
	datad => \pg~89_combout\,
	combout => \pg~90_combout\);

-- Location: IOIBUF_X115_Y54_N15
\A[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(54),
	o => \A[54]~input_o\);

-- Location: LCCOMB_X114_Y54_N12
\pg~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~91_combout\ = (\A[53]~input_o\ & ((\B[53]~input_o\) # ((\B[52]~input_o\ & \A[52]~input_o\)))) # (!\A[53]~input_o\ & (\B[52]~input_o\ & (\A[52]~input_o\ & \B[53]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[53]~input_o\,
	datab => \B[52]~input_o\,
	datac => \A[52]~input_o\,
	datad => \B[53]~input_o\,
	combout => \pg~91_combout\);

-- Location: LCCOMB_X114_Y54_N30
\ppn_carry:c_var[54]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ppn_carry:c_var[54]~0_combout\ = (\pg~91_combout\) # ((p(53) & (p(52) & \c_var~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(53),
	datab => p(52),
	datac => \c_var~41_combout\,
	datad => \pg~91_combout\,
	combout => \ppn_carry:c_var[54]~0_combout\);

-- Location: IOIBUF_X115_Y56_N15
\B[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(54),
	o => \B[54]~input_o\);

-- Location: LCCOMB_X114_Y54_N0
\S~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~61_combout\ = \A[54]~input_o\ $ (\B[54]~input_o\ $ (((\pg~90_combout\) # (\ppn_carry:c_var[54]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~90_combout\,
	datab => \A[54]~input_o\,
	datac => \ppn_carry:c_var[54]~0_combout\,
	datad => \B[54]~input_o\,
	combout => \S~61_combout\);

-- Location: IOIBUF_X115_Y53_N15
\B[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(55),
	o => \B[55]~input_o\);

-- Location: IOIBUF_X115_Y55_N15
\A[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(55),
	o => \A[55]~input_o\);

-- Location: LCCOMB_X114_Y50_N2
\p[55]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(55) = \B[55]~input_o\ $ (\A[55]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[55]~input_o\,
	datad => \A[55]~input_o\,
	combout => p(55));

-- Location: LCCOMB_X114_Y54_N14
\ppn_carry:pg[54][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[54][0]~0_combout\ = (\A[54]~input_o\ & ((\pg~91_combout\) # ((\pg~90_combout\) # (\B[54]~input_o\)))) # (!\A[54]~input_o\ & (\B[54]~input_o\ & ((\pg~91_combout\) # (\pg~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~91_combout\,
	datab => \A[54]~input_o\,
	datac => \pg~90_combout\,
	datad => \B[54]~input_o\,
	combout => \ppn_carry:pg[54][0]~0_combout\);

-- Location: LCCOMB_X114_Y54_N18
\p[54]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(54) = \A[54]~input_o\ $ (\B[54]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[54]~input_o\,
	datad => \B[54]~input_o\,
	combout => p(54));

-- Location: LCCOMB_X114_Y54_N20
\c_var~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_var~42_combout\ = (p(54) & (p(52) & (\A[53]~input_o\ $ (\B[53]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[53]~input_o\,
	datab => p(54),
	datac => p(52),
	datad => \B[53]~input_o\,
	combout => \c_var~42_combout\);

-- Location: LCCOMB_X114_Y54_N16
\S~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~62_combout\ = p(55) $ (((\ppn_carry:pg[54][0]~0_combout\) # ((\c_var~41_combout\ & \c_var~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(55),
	datab => \ppn_carry:pg[54][0]~0_combout\,
	datac => \c_var~41_combout\,
	datad => \c_var~42_combout\,
	combout => \S~62_combout\);

-- Location: LCCOMB_X114_Y54_N10
\pg~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~93_combout\ = (\A[55]~input_o\ & ((\B[55]~input_o\) # ((\A[54]~input_o\ & \B[54]~input_o\)))) # (!\A[55]~input_o\ & (\A[54]~input_o\ & (\B[55]~input_o\ & \B[54]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[55]~input_o\,
	datab => \A[54]~input_o\,
	datac => \B[55]~input_o\,
	datad => \B[54]~input_o\,
	combout => \pg~93_combout\);

-- Location: LCCOMB_X114_Y54_N4
\pg~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~94_combout\ = (\pg~93_combout\) # ((p(54) & (\pg~91_combout\ & p(55))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~93_combout\,
	datab => p(54),
	datac => \pg~91_combout\,
	datad => p(55),
	combout => \pg~94_combout\);

-- Location: LCCOMB_X114_Y54_N6
\pg~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~95_combout\ = (\pg~94_combout\) # ((p(55) & (\pg~88_combout\ & \c_var~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(55),
	datab => \pg~94_combout\,
	datac => \pg~88_combout\,
	datad => \c_var~42_combout\,
	combout => \pg~95_combout\);

-- Location: LCCOMB_X114_Y50_N22
\pg~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~105_combout\ = (\c_var~42_combout\ & (\pg~86_combout\ & (\B[55]~input_o\ $ (\A[55]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[55]~input_o\,
	datab => \c_var~42_combout\,
	datac => \pg~86_combout\,
	datad => \A[55]~input_o\,
	combout => \pg~105_combout\);

-- Location: LCCOMB_X109_Y16_N22
\c_var~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_var~43_combout\ = (\c_var~32_combout\ & (\pg~78_combout\ & \pg~105_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_var~32_combout\,
	datab => \pg~78_combout\,
	datac => \pg~105_combout\,
	combout => \c_var~43_combout\);

-- Location: LCCOMB_X107_Y69_N12
\pg~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~92_combout\ = (\pg~105_combout\ & ((\pg~79_combout\) # (\pg~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pg~79_combout\,
	datac => \pg~105_combout\,
	datad => \pg~83_combout\,
	combout => \pg~92_combout\);

-- Location: IOIBUF_X115_Y36_N15
\A[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(56),
	o => \A[56]~input_o\);

-- Location: IOIBUF_X115_Y46_N1
\B[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(56),
	o => \B[56]~input_o\);

-- Location: LCCOMB_X114_Y46_N16
\p[56]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(56) = \A[56]~input_o\ $ (\B[56]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[56]~input_o\,
	datad => \B[56]~input_o\,
	combout => p(56));

-- Location: LCCOMB_X114_Y46_N18
\S~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~63_combout\ = p(56) $ (((\pg~95_combout\) # ((\c_var~43_combout\) # (\pg~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~95_combout\,
	datab => \c_var~43_combout\,
	datac => \pg~92_combout\,
	datad => p(56),
	combout => \S~63_combout\);

-- Location: IOIBUF_X115_Y45_N22
\B[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(57),
	o => \B[57]~input_o\);

-- Location: IOIBUF_X115_Y46_N8
\A[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(57),
	o => \A[57]~input_o\);

-- Location: LCCOMB_X114_Y46_N6
\p[57]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(57) = \B[57]~input_o\ $ (\A[57]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[57]~input_o\,
	datac => \A[57]~input_o\,
	combout => p(57));

-- Location: LCCOMB_X114_Y46_N20
\ppn_carry:pg[56][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[56][0]~0_combout\ = (\A[56]~input_o\ & ((\pg~95_combout\) # ((\pg~92_combout\) # (\B[56]~input_o\)))) # (!\A[56]~input_o\ & (\B[56]~input_o\ & ((\pg~95_combout\) # (\pg~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~95_combout\,
	datab => \A[56]~input_o\,
	datac => \pg~92_combout\,
	datad => \B[56]~input_o\,
	combout => \ppn_carry:pg[56][0]~0_combout\);

-- Location: LCCOMB_X114_Y46_N8
\S~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~64_combout\ = p(57) $ (((\ppn_carry:pg[56][0]~0_combout\) # ((\c_var~43_combout\ & p(56)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(57),
	datab => \ppn_carry:pg[56][0]~0_combout\,
	datac => \c_var~43_combout\,
	datad => p(56),
	combout => \S~64_combout\);

-- Location: LCCOMB_X114_Y46_N28
\pg~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~97_combout\ = (\B[57]~input_o\ & ((\A[57]~input_o\) # ((\A[56]~input_o\ & \B[56]~input_o\)))) # (!\B[57]~input_o\ & (\A[56]~input_o\ & (\A[57]~input_o\ & \B[56]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[57]~input_o\,
	datab => \A[56]~input_o\,
	datac => \A[57]~input_o\,
	datad => \B[56]~input_o\,
	combout => \pg~97_combout\);

-- Location: LCCOMB_X114_Y46_N22
\ppn_carry:c_var[58]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ppn_carry:c_var[58]~0_combout\ = (\pg~97_combout\) # ((p(57) & (\c_var~43_combout\ & p(56))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(57),
	datab => \pg~97_combout\,
	datac => \c_var~43_combout\,
	datad => p(56),
	combout => \ppn_carry:c_var[58]~0_combout\);

-- Location: IOIBUF_X115_Y44_N1
\B[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(58),
	o => \B[58]~input_o\);

-- Location: IOIBUF_X115_Y40_N1
\A[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(58),
	o => \A[58]~input_o\);

-- Location: LCCOMB_X114_Y46_N10
\pg~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~96_combout\ = (p(57) & (p(56) & ((\pg~92_combout\) # (\pg~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(57),
	datab => p(56),
	datac => \pg~92_combout\,
	datad => \pg~95_combout\,
	combout => \pg~96_combout\);

-- Location: LCCOMB_X114_Y46_N14
\S~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~75_combout\ = \B[58]~input_o\ $ (\A[58]~input_o\ $ (((\ppn_carry:c_var[58]~0_combout\) # (\pg~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ppn_carry:c_var[58]~0_combout\,
	datab => \B[58]~input_o\,
	datac => \A[58]~input_o\,
	datad => \pg~96_combout\,
	combout => \S~75_combout\);

-- Location: LCCOMB_X114_Y46_N0
\p[58]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(58) = \A[58]~input_o\ $ (\B[58]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[58]~input_o\,
	datad => \B[58]~input_o\,
	combout => p(58));

-- Location: LCCOMB_X114_Y46_N26
\c_var~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_var~44_combout\ = (p(57) & (p(58) & (\A[56]~input_o\ $ (\B[56]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(57),
	datab => \A[56]~input_o\,
	datac => p(58),
	datad => \B[56]~input_o\,
	combout => \c_var~44_combout\);

-- Location: IOIBUF_X115_Y42_N15
\A[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(59),
	o => \A[59]~input_o\);

-- Location: IOIBUF_X115_Y36_N1
\B[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(59),
	o => \B[59]~input_o\);

-- Location: LCCOMB_X114_Y42_N24
\p[59]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(59) = \A[59]~input_o\ $ (\B[59]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[59]~input_o\,
	datac => \B[59]~input_o\,
	combout => p(59));

-- Location: LCCOMB_X114_Y46_N4
\ppn_carry:pg[58][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[58][0]~0_combout\ = (\A[58]~input_o\ & ((\pg~96_combout\) # ((\pg~97_combout\) # (\B[58]~input_o\)))) # (!\A[58]~input_o\ & (\B[58]~input_o\ & ((\pg~96_combout\) # (\pg~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~96_combout\,
	datab => \pg~97_combout\,
	datac => \A[58]~input_o\,
	datad => \B[58]~input_o\,
	combout => \ppn_carry:pg[58][0]~0_combout\);

-- Location: LCCOMB_X114_Y46_N30
\S~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~65_combout\ = p(59) $ (((\ppn_carry:pg[58][0]~0_combout\) # ((\c_var~44_combout\ & \c_var~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_var~44_combout\,
	datab => p(59),
	datac => \ppn_carry:pg[58][0]~0_combout\,
	datad => \c_var~43_combout\,
	combout => \S~65_combout\);

-- Location: LCCOMB_X114_Y46_N24
\pg~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~98_combout\ = (p(57) & (p(58) & (p(59) & p(56))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(57),
	datab => p(58),
	datac => p(59),
	datad => p(56),
	combout => \pg~98_combout\);

-- Location: LCCOMB_X114_Y50_N20
\c_var~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_var~45_combout\ = (\pg~98_combout\ & (\c_var~39_combout\ & \pg~105_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pg~98_combout\,
	datac => \c_var~39_combout\,
	datad => \pg~105_combout\,
	combout => \c_var~45_combout\);

-- Location: LCCOMB_X114_Y42_N2
\pg~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~99_combout\ = (\A[59]~input_o\ & ((\B[59]~input_o\) # ((\A[58]~input_o\ & \B[58]~input_o\)))) # (!\A[59]~input_o\ & (\A[58]~input_o\ & (\B[59]~input_o\ & \B[58]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[59]~input_o\,
	datab => \A[58]~input_o\,
	datac => \B[59]~input_o\,
	datad => \B[58]~input_o\,
	combout => \pg~99_combout\);

-- Location: LCCOMB_X114_Y46_N2
\pg~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~100_combout\ = (\pg~99_combout\) # ((p(59) & (p(58) & \pg~97_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(59),
	datab => p(58),
	datac => \pg~99_combout\,
	datad => \pg~97_combout\,
	combout => \pg~100_combout\);

-- Location: LCCOMB_X114_Y46_N12
\pg~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~101_combout\ = (\pg~98_combout\ & ((\pg~92_combout\) # (\pg~95_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pg~98_combout\,
	datac => \pg~92_combout\,
	datad => \pg~95_combout\,
	combout => \pg~101_combout\);

-- Location: IOIBUF_X115_Y45_N15
\A[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(60),
	o => \A[60]~input_o\);

-- Location: IOIBUF_X115_Y48_N1
\B[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(60),
	o => \B[60]~input_o\);

-- Location: LCCOMB_X114_Y48_N0
\p[60]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(60) = \A[60]~input_o\ $ (\B[60]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[60]~input_o\,
	datac => \B[60]~input_o\,
	combout => p(60));

-- Location: LCCOMB_X114_Y48_N18
\S~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~66_combout\ = p(60) $ (((\c_var~45_combout\) # ((\pg~100_combout\) # (\pg~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_var~45_combout\,
	datab => \pg~100_combout\,
	datac => \pg~101_combout\,
	datad => p(60),
	combout => \S~66_combout\);

-- Location: LCCOMB_X114_Y48_N28
\ppn_carry:pg[60][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[60][0]~0_combout\ = (\B[60]~input_o\ & ((\pg~100_combout\) # ((\pg~101_combout\) # (\A[60]~input_o\)))) # (!\B[60]~input_o\ & (\A[60]~input_o\ & ((\pg~100_combout\) # (\pg~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[60]~input_o\,
	datab => \pg~100_combout\,
	datac => \pg~101_combout\,
	datad => \A[60]~input_o\,
	combout => \ppn_carry:pg[60][0]~0_combout\);

-- Location: IOIBUF_X115_Y49_N8
\A[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(61),
	o => \A[61]~input_o\);

-- Location: IOIBUF_X115_Y50_N1
\B[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(61),
	o => \B[61]~input_o\);

-- Location: LCCOMB_X114_Y48_N22
\p[61]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(61) = \A[61]~input_o\ $ (\B[61]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[61]~input_o\,
	datad => \B[61]~input_o\,
	combout => p(61));

-- Location: LCCOMB_X114_Y48_N8
\S~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~67_combout\ = p(61) $ (((\ppn_carry:pg[60][0]~0_combout\) # ((\c_var~45_combout\ & p(60)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_var~45_combout\,
	datab => \ppn_carry:pg[60][0]~0_combout\,
	datac => p(61),
	datad => p(60),
	combout => \S~67_combout\);

-- Location: LCCOMB_X114_Y48_N20
\pg~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~103_combout\ = (\A[61]~input_o\ & ((\B[61]~input_o\) # ((\A[60]~input_o\ & \B[60]~input_o\)))) # (!\A[61]~input_o\ & (\A[60]~input_o\ & (\B[60]~input_o\ & \B[61]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[61]~input_o\,
	datab => \A[60]~input_o\,
	datac => \B[60]~input_o\,
	datad => \B[61]~input_o\,
	combout => \pg~103_combout\);

-- Location: LCCOMB_X114_Y48_N6
\ppn_carry:c_var[62]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ppn_carry:c_var[62]~0_combout\ = (\pg~103_combout\) # ((\c_var~45_combout\ & (p(61) & p(60))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_var~45_combout\,
	datab => \pg~103_combout\,
	datac => p(61),
	datad => p(60),
	combout => \ppn_carry:c_var[62]~0_combout\);

-- Location: IOIBUF_X115_Y49_N1
\B[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(62),
	o => \B[62]~input_o\);

-- Location: LCCOMB_X114_Y48_N26
\pg~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \pg~102_combout\ = (p(61) & (p(60) & ((\pg~100_combout\) # (\pg~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(61),
	datab => \pg~100_combout\,
	datac => \pg~101_combout\,
	datad => p(60),
	combout => \pg~102_combout\);

-- Location: IOIBUF_X115_Y52_N1
\A[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(62),
	o => \A[62]~input_o\);

-- Location: LCCOMB_X114_Y48_N24
\S~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~68_combout\ = \B[62]~input_o\ $ (\A[62]~input_o\ $ (((\ppn_carry:c_var[62]~0_combout\) # (\pg~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ppn_carry:c_var[62]~0_combout\,
	datab => \B[62]~input_o\,
	datac => \pg~102_combout\,
	datad => \A[62]~input_o\,
	combout => \S~68_combout\);

-- Location: IOIBUF_X115_Y48_N8
\A[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(63),
	o => \A[63]~input_o\);

-- Location: LCCOMB_X114_Y48_N10
\ppn_carry:pg[62][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[62][0]~0_combout\ = (\A[62]~input_o\ & ((\pg~103_combout\) # ((\pg~102_combout\) # (\B[62]~input_o\)))) # (!\A[62]~input_o\ & (\B[62]~input_o\ & ((\pg~103_combout\) # (\pg~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[62]~input_o\,
	datab => \pg~103_combout\,
	datac => \pg~102_combout\,
	datad => \B[62]~input_o\,
	combout => \ppn_carry:pg[62][0]~0_combout\);

-- Location: LCCOMB_X114_Y48_N12
\c_var~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_var~46_combout\ = (p(60) & (p(61) & (\A[62]~input_o\ $ (\B[62]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[62]~input_o\,
	datab => p(60),
	datac => p(61),
	datad => \B[62]~input_o\,
	combout => \c_var~46_combout\);

-- Location: LCCOMB_X114_Y48_N30
\ppn_carry:c_var[63]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ppn_carry:c_var[63]~combout\ = (\ppn_carry:pg[62][0]~0_combout\) # ((\c_var~46_combout\ & \c_var~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ppn_carry:pg[62][0]~0_combout\,
	datac => \c_var~46_combout\,
	datad => \c_var~45_combout\,
	combout => \ppn_carry:c_var[63]~combout\);

-- Location: IOIBUF_X115_Y51_N1
\B[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(63),
	o => \B[63]~input_o\);

-- Location: LCCOMB_X114_Y48_N16
\S~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~69_combout\ = \A[63]~input_o\ $ (\ppn_carry:c_var[63]~combout\ $ (\B[63]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datac => \ppn_carry:c_var[63]~combout\,
	datad => \B[63]~input_o\,
	combout => \S~69_combout\);

-- Location: LCCOMB_X114_Y48_N2
\c_var~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_var~47_combout\ = (\A[62]~input_o\ & ((\pg~103_combout\) # (\B[62]~input_o\))) # (!\A[62]~input_o\ & (\pg~103_combout\ & \B[62]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[62]~input_o\,
	datab => \pg~103_combout\,
	datad => \B[62]~input_o\,
	combout => \c_var~47_combout\);

-- Location: LCCOMB_X109_Y16_N8
\c_var~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_var~48_combout\ = (\pg~78_combout\ & ((\c_var~32_combout\) # ((\pg~55_combout\) # (\pg~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_var~32_combout\,
	datab => \pg~55_combout\,
	datac => \pg~78_combout\,
	datad => \pg~51_combout\,
	combout => \c_var~48_combout\);

-- Location: LCCOMB_X114_Y50_N24
\c_var~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_var~56_combout\ = (\pg~95_combout\) # ((\pg~105_combout\ & ((\c_var~48_combout\) # (\pg~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_var~48_combout\,
	datab => \pg~105_combout\,
	datac => \pg~83_combout\,
	datad => \pg~95_combout\,
	combout => \c_var~56_combout\);

-- Location: LCCOMB_X114_Y50_N18
\c_var~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_var~57_combout\ = (\c_var~46_combout\ & ((\pg~100_combout\) # ((\pg~98_combout\ & \c_var~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pg~100_combout\,
	datab => \pg~98_combout\,
	datac => \c_var~46_combout\,
	datad => \c_var~56_combout\,
	combout => \c_var~57_combout\);

-- Location: LCCOMB_X114_Y48_N4
\c_var~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_var~49_combout\ = (\A[63]~input_o\ & ((\c_var~47_combout\) # ((\c_var~57_combout\) # (\B[63]~input_o\)))) # (!\A[63]~input_o\ & (\B[63]~input_o\ & ((\c_var~47_combout\) # (\c_var~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \c_var~47_combout\,
	datac => \c_var~57_combout\,
	datad => \B[63]~input_o\,
	combout => \c_var~49_combout\);

-- Location: LCCOMB_X114_Y48_N14
\Ovfl~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ovfl~2_combout\ = \c_var~49_combout\ $ (((\ppn_carry:pg[62][0]~0_combout\) # ((\c_var~46_combout\ & \c_var~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ppn_carry:pg[62][0]~0_combout\,
	datab => \c_var~46_combout\,
	datac => \c_var~49_combout\,
	datad => \c_var~45_combout\,
	combout => \Ovfl~2_combout\);

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


