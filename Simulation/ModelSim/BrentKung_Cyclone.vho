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

-- DATE "11/16/2025 15:36:42"

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

ENTITY 	BrentKung IS
    PORT (
	A : IN std_logic_vector(63 DOWNTO 0);
	B : IN std_logic_vector(63 DOWNTO 0);
	S : BUFFER std_logic_vector(63 DOWNTO 0);
	Cin : IN std_logic;
	Cout : BUFFER std_logic;
	Ovfl : BUFFER std_logic
	);
END BrentKung;

-- Design Ports Information
-- S[0]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[16]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[17]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[18]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[19]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[20]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[21]	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[22]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[23]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[24]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[25]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[26]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[27]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[28]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[29]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[30]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[31]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[32]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[33]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[34]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[35]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[36]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[37]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[38]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[39]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[40]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[41]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[42]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[43]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[44]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[45]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[46]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[47]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[48]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[49]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[50]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[51]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[52]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[53]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[54]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[55]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[56]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[57]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[58]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[59]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[60]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[61]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[62]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[63]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[32]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[32]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[33]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[33]	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[34]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[34]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[35]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[35]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[36]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[36]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[37]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[37]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[38]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[38]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[39]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[39]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[40]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[40]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[41]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[41]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[42]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[42]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[43]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[43]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[44]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[44]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[45]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[45]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[46]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[46]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[47]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[47]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[48]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[48]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[49]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[49]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[50]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[50]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[51]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[51]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[52]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[52]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[53]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[53]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[54]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[54]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[55]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[55]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[56]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[56]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[57]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[57]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[58]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[58]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[59]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[59]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[60]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[60]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[61]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[61]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[62]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[62]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[63]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[63]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF BrentKung IS
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
SIGNAL ww_S : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_Cin : std_logic;
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
SIGNAL \S~16_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[0]~0_combout\ : std_logic;
SIGNAL \S~17_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \S~18_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \S~19_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~0_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~1_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \S~20_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[4]~0_combout\ : std_logic;
SIGNAL \S~21_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~2_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~3_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\ : std_logic;
SIGNAL \S~80_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[6]~1_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~4_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \S~81_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~5_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|Gout[1]~0_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \S~22_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[8]~0_combout\ : std_logic;
SIGNAL \S~23_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~4_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~5_combout\ : std_logic;
SIGNAL \S~24_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[10]~1_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \S~25_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~6_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\ : std_logic;
SIGNAL \S~26_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[4]~0_combout\ : std_logic;
SIGNAL \S~27_combout\ : std_logic;
SIGNAL \S~28_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\ : std_logic;
SIGNAL \S~29_combout\ : std_logic;
SIGNAL \S~30_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \S~31_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~8_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~7_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|Gout[1]~0_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[7]~1_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[7]~2_combout\ : std_logic;
SIGNAL \S~32_combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|Gout[16]~0_combout\ : std_logic;
SIGNAL \S~33_combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|G_combined~2_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|G_combined~3_combout\ : std_logic;
SIGNAL \S~34_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|G_combined~4_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|Gout[18]~1_combout\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \S~82_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~0_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|G_combined~9_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \S~35_combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[4]~0_combout\ : std_logic;
SIGNAL \S~36_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|G_combined~5_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|Gout[21]~2_combout\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \S~37_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|Gout[22]~3_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|Gout[22]~4_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|Gout[22]~5_combout\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \S~83_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|G_combined~6_combout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~5_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|Gout[1]~0_combout\ : std_logic;
SIGNAL \S~38_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~4_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[8]~0_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \S~39_combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|G_combined~0_combout\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \S~40_combout\ : std_logic;
SIGNAL \S~41_combout\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \S~42_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Pout[3]~0_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|G_combined~1_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|G_combined~7_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \S~84_combout\ : std_logic;
SIGNAL \S~90_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|Gout[4]~0_combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \S~91_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|Gout[29]~6_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|Gout[29]~7_combout\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|Gout[29]~8_combout\ : std_logic;
SIGNAL \S~43_combout\ : std_logic;
SIGNAL \S~44_combout\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \S~45_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~0_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|G_combined~8_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|Gout[1]~0_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~0_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[15]~1_combout\ : std_logic;
SIGNAL \A[32]~input_o\ : std_logic;
SIGNAL \B[32]~input_o\ : std_logic;
SIGNAL \S~46_combout\ : std_logic;
SIGNAL \BKGenerator|Gout[32]~2_combout\ : std_logic;
SIGNAL \B[33]~input_o\ : std_logic;
SIGNAL \A[33]~input_o\ : std_logic;
SIGNAL \S~47_combout\ : std_logic;
SIGNAL \A[34]~input_o\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\ : std_logic;
SIGNAL \BKGenerator|G_combined~0_combout\ : std_logic;
SIGNAL \BKGenerator|G_combined~1_combout\ : std_logic;
SIGNAL \B[34]~input_o\ : std_logic;
SIGNAL \S~48_combout\ : std_logic;
SIGNAL \BKGenerator|Gout[34]~3_combout\ : std_logic;
SIGNAL \A[35]~input_o\ : std_logic;
SIGNAL \B[35]~input_o\ : std_logic;
SIGNAL \S~49_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~0_combout\ : std_logic;
SIGNAL \BKGenerator|G_combined~2_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~1_combout\ : std_logic;
SIGNAL \A[36]~input_o\ : std_logic;
SIGNAL \B[36]~input_o\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\ : std_logic;
SIGNAL \S~50_combout\ : std_logic;
SIGNAL \B[37]~input_o\ : std_logic;
SIGNAL \A[37]~input_o\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[4]~0_combout\ : std_logic;
SIGNAL \S~51_combout\ : std_logic;
SIGNAL \A[38]~input_o\ : std_logic;
SIGNAL \B[38]~input_o\ : std_logic;
SIGNAL \BKGenerator|G_combined~3_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\ : std_logic;
SIGNAL \BKGenerator|Gout[37]~4_combout\ : std_logic;
SIGNAL \S~52_combout\ : std_logic;
SIGNAL \BKGenerator|G_combined~4_combout\ : std_logic;
SIGNAL \BKGenerator|Gout[38]~5_combout\ : std_logic;
SIGNAL \BKGenerator|Gout[38]~6_combout\ : std_logic;
SIGNAL \B[39]~input_o\ : std_logic;
SIGNAL \A[39]~input_o\ : std_logic;
SIGNAL \S~53_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|Gout[1]~0_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Pout[7]~4_combout\ : std_logic;
SIGNAL \B[40]~input_o\ : std_logic;
SIGNAL \BKGenerator|G_combined~5_combout\ : std_logic;
SIGNAL \A[40]~input_o\ : std_logic;
SIGNAL \S~54_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~0_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[8]~0_combout\ : std_logic;
SIGNAL \A[41]~input_o\ : std_logic;
SIGNAL \B[41]~input_o\ : std_logic;
SIGNAL \S~55_combout\ : std_logic;
SIGNAL \B[42]~input_o\ : std_logic;
SIGNAL \A[42]~input_o\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\ : std_logic;
SIGNAL \S~56_combout\ : std_logic;
SIGNAL \B[43]~input_o\ : std_logic;
SIGNAL \A[43]~input_o\ : std_logic;
SIGNAL \S~57_combout\ : std_logic;
SIGNAL \A[44]~input_o\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Pout[3]~0_combout\ : std_logic;
SIGNAL \BKGenerator|G_combined~6_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~1_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\ : std_logic;
SIGNAL \B[44]~input_o\ : std_logic;
SIGNAL \S~85_combout\ : std_logic;
SIGNAL \A[45]~input_o\ : std_logic;
SIGNAL \B[45]~input_o\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[4]~0_combout\ : std_logic;
SIGNAL \S~88_combout\ : std_logic;
SIGNAL \S~89_combout\ : std_logic;
SIGNAL \BKGenerator|Gout[45]~7_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\ : std_logic;
SIGNAL \BKGenerator|Gout[45]~9_combout\ : std_logic;
SIGNAL \BKGenerator|Gout[45]~8_combout\ : std_logic;
SIGNAL \A[46]~input_o\ : std_logic;
SIGNAL \B[46]~input_o\ : std_logic;
SIGNAL \S~58_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|G_combined~0_combout\ : std_logic;
SIGNAL \BKGenerator|Gout[46]~10_combout\ : std_logic;
SIGNAL \BKGenerator|Gout[46]~11_combout\ : std_logic;
SIGNAL \BKGenerator|Gout[46]~12_combout\ : std_logic;
SIGNAL \B[47]~input_o\ : std_logic;
SIGNAL \A[47]~input_o\ : std_logic;
SIGNAL \S~59_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~2_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|Gout[1]~0_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[7]~1_combout\ : std_logic;
SIGNAL \A[48]~input_o\ : std_logic;
SIGNAL \BKGenerator|G_combined~7_combout\ : std_logic;
SIGNAL \B[48]~input_o\ : std_logic;
SIGNAL \S~60_combout\ : std_logic;
SIGNAL \B[49]~input_o\ : std_logic;
SIGNAL \A[49]~input_o\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[7]~2_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:LEFT|Gout[16]~0_combout\ : std_logic;
SIGNAL \S~61_combout\ : std_logic;
SIGNAL \A[50]~input_o\ : std_logic;
SIGNAL \B[50]~input_o\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:LEFT|G_combined~0_combout\ : std_logic;
SIGNAL \BKGenerator|Gout[49]~13_combout\ : std_logic;
SIGNAL \S~62_combout\ : std_logic;
SIGNAL \S~64_combout\ : std_logic;
SIGNAL \B[51]~input_o\ : std_logic;
SIGNAL \S~63_combout\ : std_logic;
SIGNAL \A[51]~input_o\ : std_logic;
SIGNAL \S~65_combout\ : std_logic;
SIGNAL \B[52]~input_o\ : std_logic;
SIGNAL \A[52]~input_o\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Pout[3]~0_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~0_combout\ : std_logic;
SIGNAL \BKGenerator|Gout[51]~14_combout\ : std_logic;
SIGNAL \S~66_combout\ : std_logic;
SIGNAL \B[53]~input_o\ : std_logic;
SIGNAL \A[53]~input_o\ : std_logic;
SIGNAL \S~67_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[4]~0_combout\ : std_logic;
SIGNAL \S~68_combout\ : std_logic;
SIGNAL \B[54]~input_o\ : std_logic;
SIGNAL \BKGenerator|Gout[53]~15_combout\ : std_logic;
SIGNAL \BKGenerator|Gout[53]~16_combout\ : std_logic;
SIGNAL \A[54]~input_o\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\ : std_logic;
SIGNAL \BKGenerator|Gout[53]~17_combout\ : std_logic;
SIGNAL \S~86_combout\ : std_logic;
SIGNAL \A[55]~input_o\ : std_logic;
SIGNAL \B[55]~input_o\ : std_logic;
SIGNAL \S~69_combout\ : std_logic;
SIGNAL \S~70_combout\ : std_logic;
SIGNAL \S~71_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\ : std_logic;
SIGNAL \S~72_combout\ : std_logic;
SIGNAL \A[56]~input_o\ : std_logic;
SIGNAL \B[56]~input_o\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~1_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|Gout[1]~0_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Pout[7]~2_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:LEFT|G_combined~1_combout\ : std_logic;
SIGNAL \BKGenerator|G_combined~8_combout\ : std_logic;
SIGNAL \S~73_combout\ : std_logic;
SIGNAL \A[57]~input_o\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|Gout[8]~0_combout\ : std_logic;
SIGNAL \B[57]~input_o\ : std_logic;
SIGNAL \S~74_combout\ : std_logic;
SIGNAL \A[58]~input_o\ : std_logic;
SIGNAL \B[58]~input_o\ : std_logic;
SIGNAL \BKGenerator|Gout[57]~19_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\ : std_logic;
SIGNAL \BKGenerator|Gout[57]~20_combout\ : std_logic;
SIGNAL \BKGenerator|Gout[59]~18_combout\ : std_logic;
SIGNAL \S~75_combout\ : std_logic;
SIGNAL \A[59]~input_o\ : std_logic;
SIGNAL \B[59]~input_o\ : std_logic;
SIGNAL \BKGenerator|Gout[58]~21_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~0_combout\ : std_logic;
SIGNAL \BKGenerator|Gout[58]~22_combout\ : std_logic;
SIGNAL \S~76_combout\ : std_logic;
SIGNAL \BKGenerator|Gout[59]~23_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~1_combout\ : std_logic;
SIGNAL \BKGenerator|Gout[59]~24_combout\ : std_logic;
SIGNAL \A[60]~input_o\ : std_logic;
SIGNAL \B[60]~input_o\ : std_logic;
SIGNAL \S~77_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\ : std_logic;
SIGNAL \BKGenerator|Gout[60]~25_combout\ : std_logic;
SIGNAL \BKGenerator|Gout[60]~26_combout\ : std_logic;
SIGNAL \BKGenerator|Gout[60]~27_combout\ : std_logic;
SIGNAL \A[61]~input_o\ : std_logic;
SIGNAL \B[61]~input_o\ : std_logic;
SIGNAL \S~78_combout\ : std_logic;
SIGNAL \BKGenerator|Gout[61]~28_combout\ : std_logic;
SIGNAL \B[62]~input_o\ : std_logic;
SIGNAL \A[62]~input_o\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\ : std_logic;
SIGNAL \S~79_combout\ : std_logic;
SIGNAL \B[63]~input_o\ : std_logic;
SIGNAL \A[63]~input_o\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~2_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:LEFT|G_combined~2_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~3_combout\ : std_logic;
SIGNAL \BKGenerator|Gout[62]~29_combout\ : std_logic;
SIGNAL \BKGenerator|Gout[62]~30_combout\ : std_logic;
SIGNAL \BKGenerator|Gout[62]~31_combout\ : std_logic;
SIGNAL \S~87_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|Gout[1]~0_combout\ : std_logic;
SIGNAL \BKGenerator|Gout[63]~32_combout\ : std_logic;
SIGNAL \BKGenerator|Gout[63]~33_combout\ : std_logic;
SIGNAL \BKGenerator|Gout[63]~34_combout\ : std_logic;
SIGNAL \BKGenerator|Gout[63]~35_combout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;
SIGNAL \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL P : std_logic_vector(63 DOWNTO 0);
SIGNAL \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \BKGenerator|recursive_generate:RIGHT|Gout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|Gout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \BKGenerator|Gout\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|Gout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout\ : std_logic_vector(7 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
S <= ww_S;
ww_Cin <= Cin;
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

-- Location: IOOBUF_X107_Y0_N9
\S[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~16_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\S[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~17_combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X102_Y0_N16
\S[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~18_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X96_Y0_N2
\S[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~19_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X115_Y4_N23
\S[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~20_combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N16
\S[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~21_combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\S[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~80_combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X89_Y0_N9
\S[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~81_combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X96_Y0_N16
\S[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~22_combout\,
	devoe => ww_devoe,
	o => \S[8]~output_o\);

-- Location: IOOBUF_X91_Y0_N23
\S[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~23_combout\,
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X47_Y0_N9
\S[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~24_combout\,
	devoe => ww_devoe,
	o => \S[10]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\S[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~25_combout\,
	devoe => ww_devoe,
	o => \S[11]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\S[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~26_combout\,
	devoe => ww_devoe,
	o => \S[12]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\S[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~27_combout\,
	devoe => ww_devoe,
	o => \S[13]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\S[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~29_combout\,
	devoe => ww_devoe,
	o => \S[14]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\S[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~31_combout\,
	devoe => ww_devoe,
	o => \S[15]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\S[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~32_combout\,
	devoe => ww_devoe,
	o => \S[16]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\S[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~33_combout\,
	devoe => ww_devoe,
	o => \S[17]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\S[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~34_combout\,
	devoe => ww_devoe,
	o => \S[18]~output_o\);

-- Location: IOOBUF_X33_Y0_N2
\S[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~82_combout\,
	devoe => ww_devoe,
	o => \S[19]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\S[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~35_combout\,
	devoe => ww_devoe,
	o => \S[20]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\S[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~36_combout\,
	devoe => ww_devoe,
	o => \S[21]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\S[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~37_combout\,
	devoe => ww_devoe,
	o => \S[22]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\S[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~83_combout\,
	devoe => ww_devoe,
	o => \S[23]~output_o\);

-- Location: IOOBUF_X33_Y0_N9
\S[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~38_combout\,
	devoe => ww_devoe,
	o => \S[24]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\S[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~39_combout\,
	devoe => ww_devoe,
	o => \S[25]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\S[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~40_combout\,
	devoe => ww_devoe,
	o => \S[26]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\S[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~42_combout\,
	devoe => ww_devoe,
	o => \S[27]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\S[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~84_combout\,
	devoe => ww_devoe,
	o => \S[28]~output_o\);

-- Location: IOOBUF_X85_Y0_N23
\S[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~91_combout\,
	devoe => ww_devoe,
	o => \S[29]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\S[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~43_combout\,
	devoe => ww_devoe,
	o => \S[30]~output_o\);

-- Location: IOOBUF_X85_Y0_N2
\S[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~45_combout\,
	devoe => ww_devoe,
	o => \S[31]~output_o\);

-- Location: IOOBUF_X87_Y0_N23
\S[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~46_combout\,
	devoe => ww_devoe,
	o => \S[32]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\S[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~47_combout\,
	devoe => ww_devoe,
	o => \S[33]~output_o\);

-- Location: IOOBUF_X115_Y34_N16
\S[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~48_combout\,
	devoe => ww_devoe,
	o => \S[34]~output_o\);

-- Location: IOOBUF_X115_Y36_N2
\S[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~49_combout\,
	devoe => ww_devoe,
	o => \S[35]~output_o\);

-- Location: IOOBUF_X115_Y32_N2
\S[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~50_combout\,
	devoe => ww_devoe,
	o => \S[36]~output_o\);

-- Location: IOOBUF_X115_Y36_N16
\S[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~51_combout\,
	devoe => ww_devoe,
	o => \S[37]~output_o\);

-- Location: IOOBUF_X115_Y35_N23
\S[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~52_combout\,
	devoe => ww_devoe,
	o => \S[38]~output_o\);

-- Location: IOOBUF_X115_Y40_N9
\S[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~53_combout\,
	devoe => ww_devoe,
	o => \S[39]~output_o\);

-- Location: IOOBUF_X115_Y44_N9
\S[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~54_combout\,
	devoe => ww_devoe,
	o => \S[40]~output_o\);

-- Location: IOOBUF_X115_Y52_N2
\S[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~55_combout\,
	devoe => ww_devoe,
	o => \S[41]~output_o\);

-- Location: IOOBUF_X115_Y55_N16
\S[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~56_combout\,
	devoe => ww_devoe,
	o => \S[42]~output_o\);

-- Location: IOOBUF_X115_Y52_N9
\S[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~57_combout\,
	devoe => ww_devoe,
	o => \S[43]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\S[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~85_combout\,
	devoe => ww_devoe,
	o => \S[44]~output_o\);

-- Location: IOOBUF_X115_Y49_N2
\S[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~89_combout\,
	devoe => ww_devoe,
	o => \S[45]~output_o\);

-- Location: IOOBUF_X115_Y51_N2
\S[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~58_combout\,
	devoe => ww_devoe,
	o => \S[46]~output_o\);

-- Location: IOOBUF_X115_Y56_N23
\S[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~59_combout\,
	devoe => ww_devoe,
	o => \S[47]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\S[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~60_combout\,
	devoe => ww_devoe,
	o => \S[48]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\S[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~61_combout\,
	devoe => ww_devoe,
	o => \S[49]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\S[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~62_combout\,
	devoe => ww_devoe,
	o => \S[50]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\S[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~65_combout\,
	devoe => ww_devoe,
	o => \S[51]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\S[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~66_combout\,
	devoe => ww_devoe,
	o => \S[52]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\S[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~68_combout\,
	devoe => ww_devoe,
	o => \S[53]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\S[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~86_combout\,
	devoe => ww_devoe,
	o => \S[54]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\S[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~72_combout\,
	devoe => ww_devoe,
	o => \S[55]~output_o\);

-- Location: IOOBUF_X89_Y73_N16
\S[56]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~73_combout\,
	devoe => ww_devoe,
	o => \S[56]~output_o\);

-- Location: IOOBUF_X91_Y73_N16
\S[57]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~74_combout\,
	devoe => ww_devoe,
	o => \S[57]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
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

-- Location: IOOBUF_X85_Y73_N23
\S[59]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~76_combout\,
	devoe => ww_devoe,
	o => \S[59]~output_o\);

-- Location: IOOBUF_X87_Y73_N23
\S[60]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~77_combout\,
	devoe => ww_devoe,
	o => \S[60]~output_o\);

-- Location: IOOBUF_X96_Y73_N16
\S[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~78_combout\,
	devoe => ww_devoe,
	o => \S[61]~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\S[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~79_combout\,
	devoe => ww_devoe,
	o => \S[62]~output_o\);

-- Location: IOOBUF_X81_Y73_N9
\S[63]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~87_combout\,
	devoe => ww_devoe,
	o => \S[63]~output_o\);

-- Location: IOOBUF_X81_Y73_N23
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BKGenerator|Gout[63]~35_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X81_Y73_N2
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

-- Location: IOIBUF_X115_Y4_N15
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X111_Y0_N8
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X109_Y0_N1
\Cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: LCCOMB_X108_Y1_N24
\S~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~16_combout\ = \B[0]~input_o\ $ (\A[0]~input_o\ $ (\Cin~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => \Cin~input_o\,
	combout => \S~16_combout\);

-- Location: IOIBUF_X100_Y0_N15
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X105_Y0_N1
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X108_Y1_N2
\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[0]~0_combout\ = (\B[0]~input_o\ & ((\A[0]~input_o\) # (\Cin~input_o\))) # 
-- (!\B[0]~input_o\ & (\A[0]~input_o\ & \Cin~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => \Cin~input_o\,
	combout => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[0]~0_combout\);

-- Location: LCCOMB_X100_Y3_N8
\S~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~17_combout\ = \A[1]~input_o\ $ (\B[1]~input_o\ $ (\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[0]~0_combout\,
	combout => \S~17_combout\);

-- Location: LCCOMB_X100_Y3_N10
\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\) # 
-- (\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[0]~0_combout\))) # (!\A[1]~input_o\ & (\B[1]~input_o\ & 
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[0]~0_combout\,
	combout => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\);

-- Location: IOIBUF_X102_Y0_N22
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X105_Y0_N8
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X100_Y3_N28
\S~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~18_combout\ = \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\ $ (\A[2]~input_o\ $ (\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\,
	datab => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \S~18_combout\);

-- Location: IOIBUF_X111_Y0_N1
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X107_Y0_N1
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X100_Y3_N22
\P[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(3) = \A[3]~input_o\ $ (\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => P(3));

-- Location: LCCOMB_X100_Y3_N16
\S~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~19_combout\ = P(3) $ (((\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\ & ((\A[2]~input_o\) # (\B[2]~input_o\))) # 
-- (!\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\ & (\A[2]~input_o\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\,
	datab => \A[2]~input_o\,
	datac => P(3),
	datad => \B[2]~input_o\,
	combout => \S~19_combout\);

-- Location: LCCOMB_X100_Y3_N12
\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~0_combout\ = (\B[2]~input_o\ & (!\A[2]~input_o\ & (\A[3]~input_o\ $ (\B[3]~input_o\)))) # (!\B[2]~input_o\ & (\A[2]~input_o\ & 
-- (\A[3]~input_o\ $ (\B[3]~input_o\))))

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
	combout => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~0_combout\);

-- Location: LCCOMB_X100_Y3_N6
\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~1_combout\ = 
-- (\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~0_combout\ & ((\A[1]~input_o\ & ((\B[1]~input_o\) # 
-- (\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[0]~0_combout\))) # (!\A[1]~input_o\ & (\B[1]~input_o\ & 
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~0_combout\,
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[0]~0_combout\,
	combout => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~1_combout\);

-- Location: IOIBUF_X100_Y0_N22
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X100_Y3_N26
\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\ = (\A[3]~input_o\ & ((\B[3]~input_o\) # ((\B[2]~input_o\ & \A[2]~input_o\)))) # (!\A[3]~input_o\ & 
-- (\B[2]~input_o\ & (\A[2]~input_o\ & \B[3]~input_o\)))

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
	combout => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\);

-- Location: IOIBUF_X105_Y0_N22
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X100_Y3_N0
\S~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~20_combout\ = \A[4]~input_o\ $ (\B[4]~input_o\ $ (((\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~1_combout\) # 
-- (\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~1_combout\,
	datab => \A[4]~input_o\,
	datac => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\,
	datad => \B[4]~input_o\,
	combout => \S~20_combout\);

-- Location: IOIBUF_X100_Y0_N1
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X98_Y0_N15
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X100_Y3_N2
\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[4]~0_combout\ = (\A[4]~input_o\ & 
-- ((\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~1_combout\) # 
-- ((\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\) # (\B[4]~input_o\)))) # (!\A[4]~input_o\ & (\B[4]~input_o\ & 
-- ((\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~1_combout\) # 
-- (\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~1_combout\,
	datab => \A[4]~input_o\,
	datac => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\,
	datad => \B[4]~input_o\,
	combout => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[4]~0_combout\);

-- Location: LCCOMB_X100_Y3_N4
\S~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~21_combout\ = \B[5]~input_o\ $ (\A[5]~input_o\ $ (\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[4]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datac => \A[5]~input_o\,
	datad => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[4]~0_combout\,
	combout => \S~21_combout\);

-- Location: IOIBUF_X96_Y0_N22
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X100_Y3_N24
\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~2_combout\ = (\B[5]~input_o\ & (!\A[5]~input_o\ & (\A[4]~input_o\ $ (\B[4]~input_o\)))) # (!\B[5]~input_o\ & (\A[5]~input_o\ & (\A[4]~input_o\ $ 
-- (\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \A[4]~input_o\,
	datac => \A[5]~input_o\,
	datad => \B[4]~input_o\,
	combout => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~2_combout\);

-- Location: LCCOMB_X100_Y3_N18
\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~3_combout\ = (\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~2_combout\ & 
-- ((\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\) # 
-- (\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~2_combout\,
	datac => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\,
	datad => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~1_combout\,
	combout => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~3_combout\);

-- Location: IOIBUF_X89_Y0_N22
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X100_Y3_N30
\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\ = (\B[5]~input_o\ & ((\A[5]~input_o\) # ((\A[4]~input_o\ & \B[4]~input_o\)))) # (!\B[5]~input_o\ & 
-- (\A[4]~input_o\ & (\A[5]~input_o\ & \B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \A[4]~input_o\,
	datac => \A[5]~input_o\,
	datad => \B[4]~input_o\,
	combout => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\);

-- Location: LCCOMB_X92_Y3_N22
\S~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~80_combout\ = \B[6]~input_o\ $ (\A[6]~input_o\ $ (((\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~3_combout\) # 
-- (\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~3_combout\,
	datac => \A[6]~input_o\,
	datad => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\,
	combout => \S~80_combout\);

-- Location: LCCOMB_X92_Y3_N2
\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[6]~1_combout\ = (\B[6]~input_o\ & ((\A[6]~input_o\) # 
-- (\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\))) # (!\B[6]~input_o\ & (\A[6]~input_o\ & 
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datac => \A[6]~input_o\,
	datad => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\,
	combout => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[6]~1_combout\);

-- Location: IOIBUF_X89_Y0_N15
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X92_Y3_N0
\P[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(6) = \A[6]~input_o\ $ (\B[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[6]~input_o\,
	datad => \B[6]~input_o\,
	combout => P(6));

-- Location: LCCOMB_X100_Y3_N20
\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~4_combout\ = (P(6) & (\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~2_combout\ & 
-- ((\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\) # 
-- (\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P(6),
	datab => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~2_combout\,
	datac => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\,
	datad => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~1_combout\,
	combout => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~4_combout\);

-- Location: IOIBUF_X94_Y0_N8
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X92_Y3_N24
\S~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~81_combout\ = \A[7]~input_o\ $ (\B[7]~input_o\ $ (((\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[6]~1_combout\) # 
-- (\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[6]~1_combout\,
	datab => \A[7]~input_o\,
	datac => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~4_combout\,
	datad => \B[7]~input_o\,
	combout => \S~81_combout\);

-- Location: LCCOMB_X92_Y3_N26
\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~5_combout\ = (\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~4_combout\ & (\B[7]~input_o\ $ 
-- (\A[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[7]~input_o\,
	datac => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~4_combout\,
	datad => \A[7]~input_o\,
	combout => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~5_combout\);

-- Location: LCCOMB_X92_Y3_N6
\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|Gout[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|Gout[1]~0_combout\ = (\A[7]~input_o\ & ((\B[7]~input_o\) # ((\A[6]~input_o\ & \B[6]~input_o\)))) # (!\A[7]~input_o\ & 
-- (\A[6]~input_o\ & (\B[7]~input_o\ & \B[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \A[7]~input_o\,
	datac => \B[7]~input_o\,
	datad => \B[6]~input_o\,
	combout => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|Gout[1]~0_combout\);

-- Location: LCCOMB_X92_Y3_N20
\P[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(7) = \B[7]~input_o\ $ (\A[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[7]~input_o\,
	datad => \A[7]~input_o\,
	combout => P(7));

-- Location: LCCOMB_X92_Y3_N16
\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout\(3) = 
-- (\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|Gout[1]~0_combout\) # ((P(6) & (P(7) & 
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|Gout[1]~0_combout\,
	datab => P(6),
	datac => P(7),
	datad => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\,
	combout => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout\(3));

-- Location: IOIBUF_X94_Y0_N1
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X96_Y0_N8
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X92_Y3_N18
\S~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~22_combout\ = \A[8]~input_o\ $ (\B[8]~input_o\ $ (((\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~5_combout\) # 
-- (\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~5_combout\,
	datab => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout\(3),
	datac => \A[8]~input_o\,
	datad => \B[8]~input_o\,
	combout => \S~22_combout\);

-- Location: IOIBUF_X91_Y0_N15
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X109_Y0_N8
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X92_Y3_N12
\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[8]~0_combout\ = (\A[8]~input_o\ & ((\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~5_combout\) # 
-- ((\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout\(3)) # (\B[8]~input_o\)))) # (!\A[8]~input_o\ & (\B[8]~input_o\ & 
-- ((\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~5_combout\) # (\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~5_combout\,
	datab => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout\(3),
	datac => \A[8]~input_o\,
	datad => \B[8]~input_o\,
	combout => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[8]~0_combout\);

-- Location: LCCOMB_X92_Y3_N30
\S~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~23_combout\ = \B[9]~input_o\ $ (\A[9]~input_o\ $ (\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[8]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[9]~input_o\,
	datac => \A[9]~input_o\,
	datad => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[8]~0_combout\,
	combout => \S~23_combout\);

-- Location: IOIBUF_X49_Y0_N1
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X52_Y0_N22
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X92_Y3_N8
\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\ = (\B[9]~input_o\ & ((\A[9]~input_o\) # ((\A[8]~input_o\ & \B[8]~input_o\)))) # (!\B[9]~input_o\ & 
-- (\A[8]~input_o\ & (\A[9]~input_o\ & \B[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \B[9]~input_o\,
	datac => \A[9]~input_o\,
	datad => \B[8]~input_o\,
	combout => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\);

-- Location: LCCOMB_X92_Y3_N10
\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~4_combout\ = (\A[8]~input_o\ & (!\B[8]~input_o\ & (\B[9]~input_o\ $ (\A[9]~input_o\)))) # (!\A[8]~input_o\ & (\B[8]~input_o\ & (\B[9]~input_o\ $ (\A[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \B[9]~input_o\,
	datac => \A[9]~input_o\,
	datad => \B[8]~input_o\,
	combout => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~4_combout\);

-- Location: LCCOMB_X92_Y3_N28
\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~5_combout\ = (\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~4_combout\ & 
-- ((\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout\(3)) # ((P(7) & \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~4_combout\,
	datab => P(7),
	datac => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~4_combout\,
	datad => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout\(3),
	combout => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~5_combout\);

-- Location: LCCOMB_X52_Y3_N24
\S~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~24_combout\ = \B[10]~input_o\ $ (\A[10]~input_o\ $ (((\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\) # 
-- (\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \A[10]~input_o\,
	datac => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\,
	datad => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~5_combout\,
	combout => \S~24_combout\);

-- Location: LCCOMB_X52_Y3_N26
\P[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(10) = \B[10]~input_o\ $ (\A[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[10]~input_o\,
	datad => \A[10]~input_o\,
	combout => P(10));

-- Location: LCCOMB_X52_Y3_N28
\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[10]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[10]~1_combout\ = (\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\ & 
-- ((\B[10]~input_o\) # (\A[10]~input_o\))) # (!\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\ & (\B[10]~input_o\ & \A[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\,
	datac => \B[10]~input_o\,
	datad => \A[10]~input_o\,
	combout => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[10]~1_combout\);

-- Location: IOIBUF_X52_Y0_N8
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X52_Y0_N15
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LCCOMB_X52_Y3_N30
\P[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(11) = \A[11]~input_o\ $ (\B[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[11]~input_o\,
	datad => \B[11]~input_o\,
	combout => P(11));

-- Location: LCCOMB_X52_Y3_N16
\S~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~25_combout\ = P(11) $ (((\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[10]~1_combout\) # ((P(10) & \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P(10),
	datab => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[10]~1_combout\,
	datac => P(11),
	datad => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~5_combout\,
	combout => \S~25_combout\);

-- Location: LCCOMB_X52_Y3_N6
\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\ = (P(11) & 
-- (\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\ & (\A[10]~input_o\ $ (\B[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P(11),
	datab => \A[10]~input_o\,
	datac => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\,
	datad => \B[10]~input_o\,
	combout => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\);

-- Location: LCCOMB_X52_Y3_N2
\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~6_combout\ = (P(11) & (\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~5_combout\ & (\A[10]~input_o\ $ (\B[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P(11),
	datab => \A[10]~input_o\,
	datac => \B[10]~input_o\,
	datad => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~5_combout\,
	combout => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~6_combout\);

-- Location: IOIBUF_X45_Y0_N22
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X47_Y0_N1
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LCCOMB_X52_Y3_N8
\P[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(12) = \A[12]~input_o\ $ (\B[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[12]~input_o\,
	datad => \B[12]~input_o\,
	combout => P(12));

-- Location: LCCOMB_X52_Y3_N20
\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\ = (\A[11]~input_o\ & ((\B[11]~input_o\) # ((\B[10]~input_o\ & \A[10]~input_o\)))) # 
-- (!\A[11]~input_o\ & (\B[11]~input_o\ & (\B[10]~input_o\ & \A[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \B[11]~input_o\,
	datac => \B[10]~input_o\,
	datad => \A[10]~input_o\,
	combout => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\);

-- Location: LCCOMB_X52_Y3_N10
\S~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~26_combout\ = P(12) $ (((\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\) # ((\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~6_combout\) # 
-- (\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\,
	datab => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~6_combout\,
	datac => P(12),
	datad => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\,
	combout => \S~26_combout\);

-- Location: IOIBUF_X35_Y0_N22
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X42_Y0_N22
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LCCOMB_X46_Y3_N0
\P[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(13) = \A[13]~input_o\ $ (\B[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datad => \B[13]~input_o\,
	combout => P(13));

-- Location: LCCOMB_X52_Y3_N12
\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[4]~0_combout\ = (\B[12]~input_o\ & 
-- ((\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\) # 
-- ((\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\) # (\A[12]~input_o\)))) # (!\B[12]~input_o\ & (\A[12]~input_o\ & 
-- ((\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\) # 
-- (\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\,
	datab => \B[12]~input_o\,
	datac => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\,
	datad => \A[12]~input_o\,
	combout => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[4]~0_combout\);

-- Location: LCCOMB_X52_Y3_N22
\S~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~27_combout\ = P(13) $ (((\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[4]~0_combout\) # ((\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~6_combout\ & P(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P(13),
	datab => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~6_combout\,
	datac => P(12),
	datad => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[4]~0_combout\,
	combout => \S~27_combout\);

-- Location: LCCOMB_X46_Y3_N10
\S~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~28_combout\ = (\A[13]~input_o\ & (!\B[13]~input_o\ & (\B[12]~input_o\ $ (\A[12]~input_o\)))) # (!\A[13]~input_o\ & (\B[13]~input_o\ & (\B[12]~input_o\ $ (\A[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \B[13]~input_o\,
	datac => \B[12]~input_o\,
	datad => \A[12]~input_o\,
	combout => \S~28_combout\);

-- Location: LCCOMB_X52_Y3_N0
\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout\(11) = (\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\) # 
-- ((\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\) # (\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\,
	datab => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\,
	datad => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~6_combout\,
	combout => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout\(11));

-- Location: IOIBUF_X40_Y0_N22
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X42_Y0_N15
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LCCOMB_X46_Y3_N22
\P[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(14) = \B[14]~input_o\ $ (\A[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datac => \A[14]~input_o\,
	combout => P(14));

-- Location: LCCOMB_X46_Y3_N12
\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\ = (\A[13]~input_o\ & ((\B[13]~input_o\) # ((\B[12]~input_o\ & \A[12]~input_o\)))) # 
-- (!\A[13]~input_o\ & (\B[13]~input_o\ & (\B[12]~input_o\ & \A[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \B[13]~input_o\,
	datac => \B[12]~input_o\,
	datad => \A[12]~input_o\,
	combout => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\);

-- Location: LCCOMB_X46_Y3_N24
\S~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~29_combout\ = P(14) $ (((\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\) # ((\S~28_combout\ & 
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~28_combout\,
	datab => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout\(11),
	datac => P(14),
	datad => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\,
	combout => \S~29_combout\);

-- Location: LCCOMB_X46_Y3_N28
\S~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~30_combout\ = (\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\) # ((\S~28_combout\ & 
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~28_combout\,
	datac => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout\(11),
	datad => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\,
	combout => \S~30_combout\);

-- Location: IOIBUF_X40_Y0_N15
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X45_Y0_N15
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LCCOMB_X46_Y3_N2
\P[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(15) = \B[15]~input_o\ $ (\A[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datad => \A[15]~input_o\,
	combout => P(15));

-- Location: LCCOMB_X46_Y3_N30
\S~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~31_combout\ = P(15) $ (((\B[14]~input_o\ & ((\S~30_combout\) # (\A[14]~input_o\))) # (!\B[14]~input_o\ & (\S~30_combout\ & \A[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datab => \S~30_combout\,
	datac => \A[14]~input_o\,
	datad => P(15),
	combout => \S~31_combout\);

-- Location: LCCOMB_X46_Y3_N20
\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~8_combout\ = (P(15) & (\S~28_combout\ & (\B[14]~input_o\ $ (\A[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datab => P(15),
	datac => \A[14]~input_o\,
	datad => \S~28_combout\,
	combout => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~8_combout\);

-- Location: LCCOMB_X52_Y3_N18
\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~7_combout\ = (P(11) & (\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~8_combout\ & (P(10) & 
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P(11),
	datab => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~8_combout\,
	datac => P(10),
	datad => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~5_combout\,
	combout => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~7_combout\);

-- Location: IOIBUF_X60_Y0_N8
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: IOIBUF_X54_Y0_N15
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: LCCOMB_X46_Y3_N8
\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|Gout[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|Gout[1]~0_combout\ = (\B[15]~input_o\ & ((\A[15]~input_o\) # ((\B[14]~input_o\ & \A[14]~input_o\)))) # (!\B[15]~input_o\ 
-- & (\B[14]~input_o\ & (\A[14]~input_o\ & \A[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datab => \B[15]~input_o\,
	datac => \A[14]~input_o\,
	datad => \A[15]~input_o\,
	combout => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|Gout[1]~0_combout\);

-- Location: LCCOMB_X46_Y3_N26
\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[7]~1_combout\ = 
-- (\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|Gout[1]~0_combout\) # ((P(14) & (P(15) & 
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P(14),
	datab => P(15),
	datac => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|Gout[1]~0_combout\,
	datad => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\,
	combout => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[7]~1_combout\);

-- Location: LCCOMB_X52_Y3_N4
\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[7]~2_combout\ = (\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[7]~1_combout\) # 
-- ((\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~8_combout\ & ((\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\) # 
-- (\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\,
	datab => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[7]~1_combout\,
	datac => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~8_combout\,
	datad => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\,
	combout => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[7]~2_combout\);

-- Location: LCCOMB_X57_Y3_N0
\S~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~32_combout\ = \A[16]~input_o\ $ (\B[16]~input_o\ $ (((\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~7_combout\) # (\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[7]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~7_combout\,
	datab => \A[16]~input_o\,
	datac => \B[16]~input_o\,
	datad => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[7]~2_combout\,
	combout => \S~32_combout\);

-- Location: IOIBUF_X54_Y0_N8
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X56_Y0_N15
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: LCCOMB_X57_Y3_N18
\BKGenerator|recursive_generate:RIGHT|Gout[16]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|Gout[16]~0_combout\ = (\A[16]~input_o\ & ((\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~7_combout\) # ((\B[16]~input_o\) # 
-- (\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[7]~2_combout\)))) # (!\A[16]~input_o\ & (\B[16]~input_o\ & ((\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~7_combout\) # 
-- (\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[7]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~7_combout\,
	datab => \A[16]~input_o\,
	datac => \B[16]~input_o\,
	datad => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[7]~2_combout\,
	combout => \BKGenerator|recursive_generate:RIGHT|Gout[16]~0_combout\);

-- Location: LCCOMB_X57_Y3_N12
\S~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~33_combout\ = \B[17]~input_o\ $ (\A[17]~input_o\ $ (\BKGenerator|recursive_generate:RIGHT|Gout[16]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[17]~input_o\,
	datac => \A[17]~input_o\,
	datad => \BKGenerator|recursive_generate:RIGHT|Gout[16]~0_combout\,
	combout => \S~33_combout\);

-- Location: IOIBUF_X54_Y0_N22
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: LCCOMB_X57_Y3_N14
\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\ = (\A[17]~input_o\ & ((\B[17]~input_o\) # ((\B[16]~input_o\ & \A[16]~input_o\)))) # 
-- (!\A[17]~input_o\ & (\B[17]~input_o\ & (\B[16]~input_o\ & \A[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \B[17]~input_o\,
	datac => \B[16]~input_o\,
	datad => \A[16]~input_o\,
	combout => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\);

-- Location: LCCOMB_X57_Y3_N8
\BKGenerator|recursive_generate:RIGHT|G_combined~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|G_combined~2_combout\ = (\A[17]~input_o\ & (!\B[17]~input_o\ & (\B[16]~input_o\ $ (\A[16]~input_o\)))) # (!\A[17]~input_o\ & (\B[17]~input_o\ & (\B[16]~input_o\ $ (\A[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \B[17]~input_o\,
	datac => \B[16]~input_o\,
	datad => \A[16]~input_o\,
	combout => \BKGenerator|recursive_generate:RIGHT|G_combined~2_combout\);

-- Location: LCCOMB_X57_Y3_N10
\BKGenerator|recursive_generate:RIGHT|G_combined~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|G_combined~3_combout\ = (\BKGenerator|recursive_generate:RIGHT|G_combined~2_combout\ & ((\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[7]~2_combout\) # 
-- (\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[7]~2_combout\,
	datac => \BKGenerator|recursive_generate:RIGHT|G_combined~2_combout\,
	datad => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~7_combout\,
	combout => \BKGenerator|recursive_generate:RIGHT|G_combined~3_combout\);

-- Location: LCCOMB_X57_Y3_N20
\S~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~34_combout\ = \A[18]~input_o\ $ (\B[18]~input_o\ $ (((\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\) # 
-- (\BKGenerator|recursive_generate:RIGHT|G_combined~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \B[18]~input_o\,
	datac => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\,
	datad => \BKGenerator|recursive_generate:RIGHT|G_combined~3_combout\,
	combout => \S~34_combout\);

-- Location: LCCOMB_X57_Y3_N30
\P[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(18) = \B[18]~input_o\ $ (\A[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[18]~input_o\,
	datad => \A[18]~input_o\,
	combout => P(18));

-- Location: LCCOMB_X57_Y3_N16
\BKGenerator|recursive_generate:RIGHT|G_combined~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|G_combined~4_combout\ = (\BKGenerator|recursive_generate:RIGHT|G_combined~2_combout\ & (P(18) & ((\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~7_combout\) # 
-- (\BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[7]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~7_combout\,
	datab => \BKGenerator|recursive_generate:RIGHT|G_combined~2_combout\,
	datac => P(18),
	datad => \BKGenerator|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[7]~2_combout\,
	combout => \BKGenerator|recursive_generate:RIGHT|G_combined~4_combout\);

-- Location: LCCOMB_X57_Y3_N2
\BKGenerator|recursive_generate:RIGHT|Gout[18]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|Gout[18]~1_combout\ = (\A[18]~input_o\ & ((\B[18]~input_o\) # 
-- (\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\))) # (!\A[18]~input_o\ & (\B[18]~input_o\ & 
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \B[18]~input_o\,
	datac => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\,
	combout => \BKGenerator|recursive_generate:RIGHT|Gout[18]~1_combout\);

-- Location: IOIBUF_X56_Y0_N1
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X60_Y0_N1
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: LCCOMB_X57_Y3_N26
\S~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~82_combout\ = \B[19]~input_o\ $ (\A[19]~input_o\ $ (((\BKGenerator|recursive_generate:RIGHT|G_combined~4_combout\) # (\BKGenerator|recursive_generate:RIGHT|Gout[18]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:RIGHT|G_combined~4_combout\,
	datab => \BKGenerator|recursive_generate:RIGHT|Gout[18]~1_combout\,
	datac => \B[19]~input_o\,
	datad => \A[19]~input_o\,
	combout => \S~82_combout\);

-- Location: LCCOMB_X57_Y3_N24
\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~0_combout\ = (P(18) & 
-- (\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\ & (\B[19]~input_o\ $ (\A[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P(18),
	datab => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\,
	datac => \B[19]~input_o\,
	datad => \A[19]~input_o\,
	combout => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~0_combout\);

-- Location: LCCOMB_X57_Y3_N22
\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\ = (\B[19]~input_o\ & ((\A[19]~input_o\) # ((\A[18]~input_o\ & \B[18]~input_o\)))) # 
-- (!\B[19]~input_o\ & (\A[18]~input_o\ & (\B[18]~input_o\ & \A[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \B[18]~input_o\,
	datac => \B[19]~input_o\,
	datad => \A[19]~input_o\,
	combout => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\);

-- Location: LCCOMB_X57_Y3_N28
\BKGenerator|recursive_generate:RIGHT|G_combined~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|G_combined~9_combout\ = (\BKGenerator|recursive_generate:RIGHT|G_combined~4_combout\ & (\B[19]~input_o\ $ (\A[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BKGenerator|recursive_generate:RIGHT|G_combined~4_combout\,
	datac => \B[19]~input_o\,
	datad => \A[19]~input_o\,
	combout => \BKGenerator|recursive_generate:RIGHT|G_combined~9_combout\);

-- Location: IOIBUF_X62_Y73_N22
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: IOIBUF_X62_Y0_N22
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: LCCOMB_X62_Y3_N16
\P[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(20) = \A[20]~input_o\ $ (\B[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[20]~input_o\,
	datad => \B[20]~input_o\,
	combout => P(20));

-- Location: LCCOMB_X62_Y3_N26
\S~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~35_combout\ = P(20) $ (((\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~0_combout\) # 
-- ((\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\) # (\BKGenerator|recursive_generate:RIGHT|G_combined~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~0_combout\,
	datab => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\,
	datac => \BKGenerator|recursive_generate:RIGHT|G_combined~9_combout\,
	datad => P(20),
	combout => \S~35_combout\);

-- Location: IOIBUF_X60_Y0_N22
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: IOIBUF_X62_Y0_N15
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: LCCOMB_X62_Y3_N6
\P[21]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(21) = \A[21]~input_o\ $ (\B[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[21]~input_o\,
	datad => \B[21]~input_o\,
	combout => P(21));

-- Location: LCCOMB_X62_Y3_N28
\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[4]~0_combout\ = (\A[20]~input_o\ & 
-- ((\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~0_combout\) # 
-- ((\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\) # (\B[20]~input_o\)))) # (!\A[20]~input_o\ & (\B[20]~input_o\ & 
-- ((\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~0_combout\) # 
-- (\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~0_combout\,
	datab => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\,
	datac => \A[20]~input_o\,
	datad => \B[20]~input_o\,
	combout => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[4]~0_combout\);

-- Location: LCCOMB_X62_Y3_N24
\S~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~36_combout\ = P(21) $ (((\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[4]~0_combout\) # ((P(20) & \BKGenerator|recursive_generate:RIGHT|G_combined~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P(21),
	datab => P(20),
	datac => \BKGenerator|recursive_generate:RIGHT|G_combined~9_combout\,
	datad => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[4]~0_combout\,
	combout => \S~36_combout\);

-- Location: LCCOMB_X62_Y3_N2
\BKGenerator|recursive_generate:RIGHT|G_combined~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|G_combined~5_combout\ = (\A[21]~input_o\ & (!\B[21]~input_o\ & (\A[20]~input_o\ $ (\B[20]~input_o\)))) # (!\A[21]~input_o\ & (\B[21]~input_o\ & (\A[20]~input_o\ $ (\B[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \B[21]~input_o\,
	datac => \A[20]~input_o\,
	datad => \B[20]~input_o\,
	combout => \BKGenerator|recursive_generate:RIGHT|G_combined~5_combout\);

-- Location: LCCOMB_X62_Y3_N12
\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\ = (\A[21]~input_o\ & ((\B[21]~input_o\) # ((\A[20]~input_o\ & \B[20]~input_o\)))) # 
-- (!\A[21]~input_o\ & (\B[21]~input_o\ & (\A[20]~input_o\ & \B[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \B[21]~input_o\,
	datac => \A[20]~input_o\,
	datad => \B[20]~input_o\,
	combout => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\);

-- Location: LCCOMB_X69_Y3_N24
\BKGenerator|recursive_generate:RIGHT|Gout[21]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|Gout[21]~2_combout\ = (\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\) # 
-- ((\BKGenerator|recursive_generate:RIGHT|G_combined~5_combout\ & ((\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\) # 
-- (\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\,
	datab => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~0_combout\,
	datac => \BKGenerator|recursive_generate:RIGHT|G_combined~5_combout\,
	datad => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\,
	combout => \BKGenerator|recursive_generate:RIGHT|Gout[21]~2_combout\);

-- Location: IOIBUF_X69_Y0_N1
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: IOIBUF_X69_Y73_N22
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: LCCOMB_X69_Y3_N10
\P[22]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(22) = \B[22]~input_o\ $ (\A[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datac => \A[22]~input_o\,
	combout => P(22));

-- Location: LCCOMB_X69_Y3_N4
\S~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~37_combout\ = P(22) $ (((\BKGenerator|recursive_generate:RIGHT|Gout[21]~2_combout\) # ((\BKGenerator|recursive_generate:RIGHT|G_combined~9_combout\ & \BKGenerator|recursive_generate:RIGHT|G_combined~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:RIGHT|G_combined~9_combout\,
	datab => \BKGenerator|recursive_generate:RIGHT|Gout[21]~2_combout\,
	datac => \BKGenerator|recursive_generate:RIGHT|G_combined~5_combout\,
	datad => P(22),
	combout => \S~37_combout\);

-- Location: LCCOMB_X69_Y3_N30
\BKGenerator|recursive_generate:RIGHT|Gout[22]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|Gout[22]~3_combout\ = (\BKGenerator|recursive_generate:RIGHT|G_combined~5_combout\ & (\B[22]~input_o\ $ (\A[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \BKGenerator|recursive_generate:RIGHT|G_combined~5_combout\,
	datac => \A[22]~input_o\,
	combout => \BKGenerator|recursive_generate:RIGHT|Gout[22]~3_combout\);

-- Location: LCCOMB_X69_Y3_N16
\BKGenerator|recursive_generate:RIGHT|Gout[22]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|Gout[22]~4_combout\ = (\BKGenerator|recursive_generate:RIGHT|Gout[22]~3_combout\ & 
-- ((\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\) # 
-- ((\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~0_combout\) # (\BKGenerator|recursive_generate:RIGHT|G_combined~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\,
	datab => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~0_combout\,
	datac => \BKGenerator|recursive_generate:RIGHT|Gout[22]~3_combout\,
	datad => \BKGenerator|recursive_generate:RIGHT|G_combined~9_combout\,
	combout => \BKGenerator|recursive_generate:RIGHT|Gout[22]~4_combout\);

-- Location: LCCOMB_X69_Y3_N18
\BKGenerator|recursive_generate:RIGHT|Gout[22]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|Gout[22]~5_combout\ = (\B[22]~input_o\ & ((\A[22]~input_o\) # 
-- (\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\))) # (!\B[22]~input_o\ & (\A[22]~input_o\ & 
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datac => \A[22]~input_o\,
	datad => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\,
	combout => \BKGenerator|recursive_generate:RIGHT|Gout[22]~5_combout\);

-- Location: IOIBUF_X67_Y0_N1
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: IOIBUF_X65_Y0_N8
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: LCCOMB_X69_Y3_N20
\S~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~83_combout\ = \B[23]~input_o\ $ (\A[23]~input_o\ $ (((\BKGenerator|recursive_generate:RIGHT|Gout[22]~4_combout\) # (\BKGenerator|recursive_generate:RIGHT|Gout[22]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:RIGHT|Gout[22]~4_combout\,
	datab => \BKGenerator|recursive_generate:RIGHT|Gout[22]~5_combout\,
	datac => \B[23]~input_o\,
	datad => \A[23]~input_o\,
	combout => \S~83_combout\);

-- Location: LCCOMB_X57_Y3_N4
\P[19]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(19) = \B[19]~input_o\ $ (\A[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[19]~input_o\,
	datad => \A[19]~input_o\,
	combout => P(19));

-- Location: LCCOMB_X69_Y3_N28
\P[23]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(23) = \A[23]~input_o\ $ (\B[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[23]~input_o\,
	datac => \B[23]~input_o\,
	combout => P(23));

-- Location: LCCOMB_X69_Y3_N12
\BKGenerator|recursive_generate:RIGHT|G_combined~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|G_combined~6_combout\ = (\BKGenerator|recursive_generate:RIGHT|G_combined~4_combout\ & (P(19) & (\BKGenerator|recursive_generate:RIGHT|Gout[22]~3_combout\ & P(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:RIGHT|G_combined~4_combout\,
	datab => P(19),
	datac => \BKGenerator|recursive_generate:RIGHT|Gout[22]~3_combout\,
	datad => P(23),
	combout => \BKGenerator|recursive_generate:RIGHT|G_combined~6_combout\);

-- Location: IOIBUF_X67_Y0_N15
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: IOIBUF_X72_Y0_N8
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: LCCOMB_X69_Y3_N22
\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~5_combout\ = (\BKGenerator|recursive_generate:RIGHT|G_combined~5_combout\ & (P(23) & (\B[22]~input_o\ $ (\A[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \BKGenerator|recursive_generate:RIGHT|G_combined~5_combout\,
	datac => \A[22]~input_o\,
	datad => P(23),
	combout => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~5_combout\);

-- Location: LCCOMB_X69_Y3_N6
\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|Gout[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|Gout[1]~0_combout\ = (\B[23]~input_o\ & ((\A[23]~input_o\) # ((\B[22]~input_o\ & \A[22]~input_o\)))) # (!\B[23]~input_o\ 
-- & (\B[22]~input_o\ & (\A[22]~input_o\ & \A[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \A[22]~input_o\,
	datac => \B[23]~input_o\,
	datad => \A[23]~input_o\,
	combout => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|Gout[1]~0_combout\);

-- Location: LCCOMB_X69_Y3_N0
\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout\(3) = 
-- (\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|Gout[1]~0_combout\) # ((P(22) & (P(23) & 
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P(22),
	datab => P(23),
	datac => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\,
	datad => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|Gout[1]~0_combout\,
	combout => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout\(3));

-- Location: LCCOMB_X69_Y3_N2
\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout\(7) = (\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout\(3)) # 
-- ((\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~5_combout\ & 
-- ((\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\) # 
-- (\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\,
	datab => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~0_combout\,
	datac => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~5_combout\,
	datad => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout\(3),
	combout => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout\(7));

-- Location: LCCOMB_X70_Y3_N16
\S~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~38_combout\ = \B[24]~input_o\ $ (\A[24]~input_o\ $ (((\BKGenerator|recursive_generate:RIGHT|G_combined~6_combout\) # (\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:RIGHT|G_combined~6_combout\,
	datab => \B[24]~input_o\,
	datac => \A[24]~input_o\,
	datad => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout\(7),
	combout => \S~38_combout\);

-- Location: LCCOMB_X69_Y3_N14
\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~4_combout\ = (\BKGenerator|recursive_generate:RIGHT|Gout[22]~3_combout\ & (P(23) & 
-- ((\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\) # 
-- (\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\,
	datab => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~0_combout\,
	datac => \BKGenerator|recursive_generate:RIGHT|Gout[22]~3_combout\,
	datad => P(23),
	combout => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~4_combout\);

-- Location: LCCOMB_X70_Y3_N26
\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[8]~0_combout\ = (\B[24]~input_o\ & ((\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout\(3)) # ((\A[24]~input_o\) # 
-- (\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~4_combout\)))) # (!\B[24]~input_o\ & (\A[24]~input_o\ & 
-- ((\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout\(3)) # (\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout\(3),
	datab => \B[24]~input_o\,
	datac => \A[24]~input_o\,
	datad => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~4_combout\,
	combout => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[8]~0_combout\);

-- Location: LCCOMB_X70_Y3_N12
\BKGenerator|recursive_generate:RIGHT|Gout[24]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|Gout\(24) = (\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[8]~0_combout\) # ((\BKGenerator|recursive_generate:RIGHT|G_combined~6_combout\ & (\B[24]~input_o\ $ (\A[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[8]~0_combout\,
	datab => \B[24]~input_o\,
	datac => \A[24]~input_o\,
	datad => \BKGenerator|recursive_generate:RIGHT|G_combined~6_combout\,
	combout => \BKGenerator|recursive_generate:RIGHT|Gout\(24));

-- Location: IOIBUF_X72_Y0_N1
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: IOIBUF_X74_Y0_N1
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: LCCOMB_X70_Y3_N6
\S~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~39_combout\ = \BKGenerator|recursive_generate:RIGHT|Gout\(24) $ (\A[25]~input_o\ $ (\B[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:RIGHT|Gout\(24),
	datac => \A[25]~input_o\,
	datad => \B[25]~input_o\,
	combout => \S~39_combout\);

-- Location: IOIBUF_X67_Y0_N22
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: LCCOMB_X70_Y3_N0
\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\ = (\A[25]~input_o\ & ((\B[25]~input_o\) # ((\A[24]~input_o\ & \B[24]~input_o\)))) # 
-- (!\A[25]~input_o\ & (\A[24]~input_o\ & (\B[24]~input_o\ & \B[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \B[24]~input_o\,
	datac => \A[25]~input_o\,
	datad => \B[25]~input_o\,
	combout => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\);

-- Location: LCCOMB_X70_Y3_N10
\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|G_combined~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|G_combined~0_combout\ = (\A[24]~input_o\ & (!\B[24]~input_o\ & (\A[25]~input_o\ $ (\B[25]~input_o\)))) # (!\A[24]~input_o\ & (\B[24]~input_o\ & (\A[25]~input_o\ $ (\B[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \B[24]~input_o\,
	datac => \A[25]~input_o\,
	datad => \B[25]~input_o\,
	combout => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|G_combined~0_combout\);

-- Location: LCCOMB_X70_Y3_N20
\BKGenerator|recursive_generate:RIGHT|Gout[25]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|Gout\(25) = (\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\) # 
-- ((\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|G_combined~0_combout\ & ((\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout\(7)) # (\BKGenerator|recursive_generate:RIGHT|G_combined~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout\(7),
	datab => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\,
	datac => \BKGenerator|recursive_generate:RIGHT|G_combined~6_combout\,
	datad => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|G_combined~0_combout\,
	combout => \BKGenerator|recursive_generate:RIGHT|Gout\(25));

-- Location: IOIBUF_X89_Y0_N1
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: LCCOMB_X70_Y3_N30
\S~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~40_combout\ = \A[26]~input_o\ $ (\BKGenerator|recursive_generate:RIGHT|Gout\(25) $ (\B[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \BKGenerator|recursive_generate:RIGHT|Gout\(25),
	datad => \B[26]~input_o\,
	combout => \S~40_combout\);

-- Location: LCCOMB_X69_Y3_N8
\BKGenerator|recursive_generate:RIGHT|Gout[23]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|Gout\(23) = (\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout\(7)) # ((\BKGenerator|recursive_generate:RIGHT|G_combined~4_combout\ & (P(19) & 
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:RIGHT|G_combined~4_combout\,
	datab => P(19),
	datac => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~5_combout\,
	datad => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout\(7),
	combout => \BKGenerator|recursive_generate:RIGHT|Gout\(23));

-- Location: LCCOMB_X70_Y3_N2
\S~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~41_combout\ = (\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\) # ((\BKGenerator|recursive_generate:RIGHT|Gout\(23) & 
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|G_combined~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:RIGHT|Gout\(23),
	datab => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\,
	datad => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|G_combined~0_combout\,
	combout => \S~41_combout\);

-- Location: IOIBUF_X69_Y0_N8
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: IOIBUF_X74_Y0_N8
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: LCCOMB_X70_Y3_N8
\P[27]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(27) = \B[27]~input_o\ $ (\A[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[27]~input_o\,
	datac => \A[27]~input_o\,
	combout => P(27));

-- Location: LCCOMB_X70_Y3_N4
\S~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~42_combout\ = P(27) $ (((\A[26]~input_o\ & ((\S~41_combout\) # (\B[26]~input_o\))) # (!\A[26]~input_o\ & (\S~41_combout\ & \B[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \S~41_combout\,
	datac => P(27),
	datad => \B[26]~input_o\,
	combout => \S~42_combout\);

-- Location: LCCOMB_X70_Y3_N18
\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\ = (\B[27]~input_o\ & ((\A[27]~input_o\) # ((\A[26]~input_o\ & \B[26]~input_o\)))) # (!\B[27]~input_o\ 
-- & (\A[26]~input_o\ & (\A[27]~input_o\ & \B[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \B[27]~input_o\,
	datac => \A[27]~input_o\,
	datad => \B[26]~input_o\,
	combout => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\);

-- Location: LCCOMB_X70_Y3_N28
\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\ = 
-- (\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\ & (P(27) & (\A[26]~input_o\ $ (\B[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\,
	datac => P(27),
	datad => \B[26]~input_o\,
	combout => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\);

-- Location: LCCOMB_X70_Y3_N22
\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Pout[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Pout[3]~0_combout\ = (\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|G_combined~0_combout\ & (P(27) & (\A[26]~input_o\ $ 
-- (\B[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|G_combined~0_combout\,
	datab => \A[26]~input_o\,
	datac => P(27),
	datad => \B[26]~input_o\,
	combout => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Pout[3]~0_combout\);

-- Location: LCCOMB_X70_Y3_N24
\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|G_combined~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|G_combined~1_combout\ = (\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Pout[3]~0_combout\ & 
-- ((\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout\(3)) # (\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout\(3),
	datac => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Pout[3]~0_combout\,
	datad => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~4_combout\,
	combout => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|G_combined~1_combout\);

-- Location: LCCOMB_X69_Y3_N26
\BKGenerator|recursive_generate:RIGHT|G_combined~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|G_combined~7_combout\ = (\BKGenerator|recursive_generate:RIGHT|G_combined~4_combout\ & (P(19) & (\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~5_combout\ & 
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Pout[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:RIGHT|G_combined~4_combout\,
	datab => P(19),
	datac => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~5_combout\,
	datad => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Pout[3]~0_combout\,
	combout => \BKGenerator|recursive_generate:RIGHT|G_combined~7_combout\);

-- Location: LCCOMB_X79_Y3_N24
\BKGenerator|recursive_generate:RIGHT|Gout[27]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|Gout\(27) = (\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\) # 
-- ((\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\) # ((\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|G_combined~1_combout\) # 
-- (\BKGenerator|recursive_generate:RIGHT|G_combined~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\,
	datab => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\,
	datac => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|G_combined~1_combout\,
	datad => \BKGenerator|recursive_generate:RIGHT|G_combined~7_combout\,
	combout => \BKGenerator|recursive_generate:RIGHT|Gout\(27));

-- Location: IOIBUF_X79_Y0_N15
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: IOIBUF_X85_Y0_N15
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: LCCOMB_X79_Y3_N18
\S~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~84_combout\ = \BKGenerator|recursive_generate:RIGHT|Gout\(27) $ (\A[28]~input_o\ $ (\B[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BKGenerator|recursive_generate:RIGHT|Gout\(27),
	datac => \A[28]~input_o\,
	datad => \B[28]~input_o\,
	combout => \S~84_combout\);

-- Location: LCCOMB_X79_Y3_N12
\S~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~90_combout\ = (\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|G_combined~1_combout\ & ((\A[28]~input_o\ $ (\B[28]~input_o\)))) # (!\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|G_combined~1_combout\ & 
-- (\BKGenerator|recursive_generate:RIGHT|G_combined~7_combout\ & (\A[28]~input_o\ $ (\B[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|G_combined~1_combout\,
	datab => \BKGenerator|recursive_generate:RIGHT|G_combined~7_combout\,
	datac => \A[28]~input_o\,
	datad => \B[28]~input_o\,
	combout => \S~90_combout\);

-- Location: LCCOMB_X79_Y3_N2
\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|Gout[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|Gout[4]~0_combout\ = (\A[28]~input_o\ & 
-- ((\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\) # 
-- ((\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\) # (\B[28]~input_o\)))) # (!\A[28]~input_o\ & (\B[28]~input_o\ & 
-- ((\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\) # 
-- (\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\,
	datab => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\,
	datac => \A[28]~input_o\,
	datad => \B[28]~input_o\,
	combout => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|Gout[4]~0_combout\);

-- Location: IOIBUF_X83_Y0_N8
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: IOIBUF_X83_Y0_N1
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: LCCOMB_X79_Y3_N30
\S~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~91_combout\ = \A[29]~input_o\ $ (\B[29]~input_o\ $ (((\S~90_combout\) # (\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|Gout[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~90_combout\,
	datab => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|Gout[4]~0_combout\,
	datac => \A[29]~input_o\,
	datad => \B[29]~input_o\,
	combout => \S~91_combout\);

-- Location: LCCOMB_X79_Y3_N28
\BKGenerator|recursive_generate:RIGHT|Gout[29]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|Gout[29]~6_combout\ = (\A[29]~input_o\ & (!\B[29]~input_o\ & (\A[28]~input_o\ $ (\B[28]~input_o\)))) # (!\A[29]~input_o\ & (\B[29]~input_o\ & (\A[28]~input_o\ $ (\B[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \B[29]~input_o\,
	datac => \A[28]~input_o\,
	datad => \B[28]~input_o\,
	combout => \BKGenerator|recursive_generate:RIGHT|Gout[29]~6_combout\);

-- Location: LCCOMB_X70_Y3_N14
\BKGenerator|recursive_generate:RIGHT|Gout[29]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|Gout[29]~7_combout\ = (\BKGenerator|recursive_generate:RIGHT|Gout[29]~6_combout\ & (\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Pout[3]~0_combout\ & 
-- ((\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout\(7)) # (\BKGenerator|recursive_generate:RIGHT|G_combined~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout\(7),
	datab => \BKGenerator|recursive_generate:RIGHT|Gout[29]~6_combout\,
	datac => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Pout[3]~0_combout\,
	datad => \BKGenerator|recursive_generate:RIGHT|G_combined~6_combout\,
	combout => \BKGenerator|recursive_generate:RIGHT|Gout[29]~7_combout\);

-- Location: IOIBUF_X79_Y0_N8
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: IOIBUF_X85_Y0_N8
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: LCCOMB_X79_Y3_N14
\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\ = (\A[29]~input_o\ & ((\B[29]~input_o\) # ((\A[28]~input_o\ & \B[28]~input_o\)))) # (!\A[29]~input_o\ 
-- & (\B[29]~input_o\ & (\A[28]~input_o\ & \B[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \B[29]~input_o\,
	datac => \A[28]~input_o\,
	datad => \B[28]~input_o\,
	combout => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\);

-- Location: LCCOMB_X79_Y3_N16
\BKGenerator|recursive_generate:RIGHT|Gout[29]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|Gout[29]~8_combout\ = (\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\) # 
-- ((\BKGenerator|recursive_generate:RIGHT|Gout[29]~6_combout\ & ((\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\) # 
-- (\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\,
	datab => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\,
	datac => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\,
	datad => \BKGenerator|recursive_generate:RIGHT|Gout[29]~6_combout\,
	combout => \BKGenerator|recursive_generate:RIGHT|Gout[29]~8_combout\);

-- Location: LCCOMB_X76_Y3_N24
\S~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~43_combout\ = \B[30]~input_o\ $ (\A[30]~input_o\ $ (((\BKGenerator|recursive_generate:RIGHT|Gout[29]~7_combout\) # (\BKGenerator|recursive_generate:RIGHT|Gout[29]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:RIGHT|Gout[29]~7_combout\,
	datab => \B[30]~input_o\,
	datac => \A[30]~input_o\,
	datad => \BKGenerator|recursive_generate:RIGHT|Gout[29]~8_combout\,
	combout => \S~43_combout\);

-- Location: LCCOMB_X79_Y3_N26
\S~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~44_combout\ = (\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\) # ((\BKGenerator|recursive_generate:RIGHT|Gout\(27) & 
-- \BKGenerator|recursive_generate:RIGHT|Gout[29]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BKGenerator|recursive_generate:RIGHT|Gout\(27),
	datac => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\,
	datad => \BKGenerator|recursive_generate:RIGHT|Gout[29]~6_combout\,
	combout => \S~44_combout\);

-- Location: IOIBUF_X74_Y0_N15
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: IOIBUF_X79_Y0_N1
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: LCCOMB_X76_Y3_N26
\P[31]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(31) = \B[31]~input_o\ $ (\A[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[31]~input_o\,
	datad => \A[31]~input_o\,
	combout => P(31));

-- Location: LCCOMB_X79_Y3_N4
\S~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~45_combout\ = P(31) $ (((\S~44_combout\ & ((\A[30]~input_o\) # (\B[30]~input_o\))) # (!\S~44_combout\ & (\A[30]~input_o\ & \B[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~44_combout\,
	datab => P(31),
	datac => \A[30]~input_o\,
	datad => \B[30]~input_o\,
	combout => \S~45_combout\);

-- Location: LCCOMB_X79_Y3_N22
\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~0_combout\ = (P(31) & (\BKGenerator|recursive_generate:RIGHT|Gout[29]~6_combout\ & (\B[30]~input_o\ $ (\A[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P(31),
	datab => \B[30]~input_o\,
	datac => \A[30]~input_o\,
	datad => \BKGenerator|recursive_generate:RIGHT|Gout[29]~6_combout\,
	combout => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~0_combout\);

-- Location: LCCOMB_X79_Y3_N8
\BKGenerator|recursive_generate:RIGHT|G_combined~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|G_combined~8_combout\ = (\BKGenerator|recursive_generate:RIGHT|G_combined~7_combout\ & \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BKGenerator|recursive_generate:RIGHT|G_combined~7_combout\,
	datac => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~0_combout\,
	combout => \BKGenerator|recursive_generate:RIGHT|G_combined~8_combout\);

-- Location: LCCOMB_X76_Y3_N28
\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|Gout[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|Gout[1]~0_combout\ = (\B[31]~input_o\ & ((\A[31]~input_o\) # ((\A[30]~input_o\ & \B[30]~input_o\)))) # (!\B[31]~input_o\ 
-- & (\A[31]~input_o\ & (\A[30]~input_o\ & \B[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[31]~input_o\,
	datab => \A[31]~input_o\,
	datac => \A[30]~input_o\,
	datad => \B[30]~input_o\,
	combout => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|Gout[1]~0_combout\);

-- Location: LCCOMB_X79_Y3_N10
\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~0_combout\ = (P(31) & 
-- (\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\ & (\A[30]~input_o\ $ (\B[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P(31),
	datab => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\,
	datac => \A[30]~input_o\,
	datad => \B[30]~input_o\,
	combout => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~0_combout\);

-- Location: LCCOMB_X79_Y3_N20
\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[15]~1_combout\ = (\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|Gout[1]~0_combout\) # 
-- ((\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~0_combout\) # 
-- ((\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\ & 
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\,
	datab => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|Gout[1]~0_combout\,
	datac => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~0_combout\,
	datad => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~0_combout\,
	combout => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[15]~1_combout\);

-- Location: LCCOMB_X79_Y3_N6
\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|Gout\(15) = (\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[15]~1_combout\) # 
-- ((\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~0_combout\ & ((\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\) # 
-- (\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|G_combined~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~0_combout\,
	datab => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\,
	datac => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|G_combined~1_combout\,
	datad => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[15]~1_combout\,
	combout => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|Gout\(15));

-- Location: IOIBUF_X81_Y0_N22
\A[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(32),
	o => \A[32]~input_o\);

-- Location: IOIBUF_X83_Y0_N15
\B[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(32),
	o => \B[32]~input_o\);

-- Location: LCCOMB_X80_Y3_N24
\S~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~46_combout\ = \A[32]~input_o\ $ (\B[32]~input_o\ $ (((\BKGenerator|recursive_generate:RIGHT|G_combined~8_combout\) # (\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|Gout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:RIGHT|G_combined~8_combout\,
	datab => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|Gout\(15),
	datac => \A[32]~input_o\,
	datad => \B[32]~input_o\,
	combout => \S~46_combout\);

-- Location: LCCOMB_X80_Y3_N10
\BKGenerator|Gout[32]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|Gout[32]~2_combout\ = (\A[32]~input_o\ & ((\BKGenerator|recursive_generate:RIGHT|G_combined~8_combout\) # ((\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|Gout\(15)) # (\B[32]~input_o\)))) # (!\A[32]~input_o\ & (\B[32]~input_o\ 
-- & ((\BKGenerator|recursive_generate:RIGHT|G_combined~8_combout\) # (\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|Gout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:RIGHT|G_combined~8_combout\,
	datab => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|Gout\(15),
	datac => \A[32]~input_o\,
	datad => \B[32]~input_o\,
	combout => \BKGenerator|Gout[32]~2_combout\);

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

-- Location: IOIBUF_X81_Y0_N15
\A[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(33),
	o => \A[33]~input_o\);

-- Location: LCCOMB_X80_Y3_N4
\S~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~47_combout\ = \BKGenerator|Gout[32]~2_combout\ $ (\B[33]~input_o\ $ (\A[33]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|Gout[32]~2_combout\,
	datab => \B[33]~input_o\,
	datac => \A[33]~input_o\,
	combout => \S~47_combout\);

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

-- Location: LCCOMB_X80_Y3_N14
\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\ = (\B[33]~input_o\ & ((\A[33]~input_o\) # ((\A[32]~input_o\ & \B[32]~input_o\)))) # 
-- (!\B[33]~input_o\ & (\A[32]~input_o\ & (\A[33]~input_o\ & \B[32]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[32]~input_o\,
	datab => \B[33]~input_o\,
	datac => \A[33]~input_o\,
	datad => \B[32]~input_o\,
	combout => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\);

-- Location: LCCOMB_X80_Y3_N16
\BKGenerator|G_combined~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|G_combined~0_combout\ = (\A[32]~input_o\ & (!\B[32]~input_o\ & (\B[33]~input_o\ $ (\A[33]~input_o\)))) # (!\A[32]~input_o\ & (\B[32]~input_o\ & (\B[33]~input_o\ $ (\A[33]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[32]~input_o\,
	datab => \B[33]~input_o\,
	datac => \A[33]~input_o\,
	datad => \B[32]~input_o\,
	combout => \BKGenerator|G_combined~0_combout\);

-- Location: LCCOMB_X79_Y3_N0
\BKGenerator|G_combined~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|G_combined~1_combout\ = (\BKGenerator|G_combined~0_combout\ & ((\BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|Gout\(15)) # ((\BKGenerator|recursive_generate:RIGHT|G_combined~7_combout\ & 
-- \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|Gout\(15),
	datab => \BKGenerator|recursive_generate:RIGHT|G_combined~7_combout\,
	datac => \BKGenerator|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~0_combout\,
	datad => \BKGenerator|G_combined~0_combout\,
	combout => \BKGenerator|G_combined~1_combout\);

-- Location: IOIBUF_X115_Y34_N22
\B[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(34),
	o => \B[34]~input_o\);

-- Location: LCCOMB_X114_Y36_N24
\S~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~48_combout\ = \A[34]~input_o\ $ (\B[34]~input_o\ $ (((\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\) # (\BKGenerator|G_combined~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[34]~input_o\,
	datab => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\,
	datac => \BKGenerator|G_combined~1_combout\,
	datad => \B[34]~input_o\,
	combout => \S~48_combout\);

-- Location: LCCOMB_X114_Y36_N10
\BKGenerator|Gout[34]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|Gout[34]~3_combout\ = (\A[34]~input_o\ & ((\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\) # ((\BKGenerator|G_combined~1_combout\) # 
-- (\B[34]~input_o\)))) # (!\A[34]~input_o\ & (\B[34]~input_o\ & ((\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\) # 
-- (\BKGenerator|G_combined~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[34]~input_o\,
	datab => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\,
	datac => \BKGenerator|G_combined~1_combout\,
	datad => \B[34]~input_o\,
	combout => \BKGenerator|Gout[34]~3_combout\);

-- Location: IOIBUF_X115_Y33_N8
\A[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(35),
	o => \A[35]~input_o\);

-- Location: IOIBUF_X115_Y33_N1
\B[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(35),
	o => \B[35]~input_o\);

-- Location: LCCOMB_X114_Y36_N20
\S~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~49_combout\ = \BKGenerator|Gout[34]~3_combout\ $ (\A[35]~input_o\ $ (\B[35]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|Gout[34]~3_combout\,
	datac => \A[35]~input_o\,
	datad => \B[35]~input_o\,
	combout => \S~49_combout\);

-- Location: LCCOMB_X114_Y36_N0
\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~0_combout\ = (\B[35]~input_o\ & (!\A[35]~input_o\ & (\A[34]~input_o\ $ (\B[34]~input_o\)))) # (!\B[35]~input_o\ & (\A[35]~input_o\ & 
-- (\A[34]~input_o\ $ (\B[34]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[35]~input_o\,
	datab => \A[35]~input_o\,
	datac => \A[34]~input_o\,
	datad => \B[34]~input_o\,
	combout => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~0_combout\);

-- Location: LCCOMB_X114_Y36_N12
\BKGenerator|G_combined~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|G_combined~2_combout\ = (\BKGenerator|G_combined~1_combout\ & \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BKGenerator|G_combined~1_combout\,
	datad => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~0_combout\,
	combout => \BKGenerator|G_combined~2_combout\);

-- Location: LCCOMB_X114_Y36_N2
\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~1_combout\ = 
-- (\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\ & 
-- \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\,
	datad => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~0_combout\,
	combout => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~1_combout\);

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

-- Location: LCCOMB_X114_Y36_N30
\P[36]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(36) = \A[36]~input_o\ $ (\B[36]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[36]~input_o\,
	datad => \B[36]~input_o\,
	combout => P(36));

-- Location: LCCOMB_X114_Y36_N6
\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\ = (\B[35]~input_o\ & ((\A[35]~input_o\) # ((\A[34]~input_o\ & \B[34]~input_o\)))) # 
-- (!\B[35]~input_o\ & (\A[35]~input_o\ & (\A[34]~input_o\ & \B[34]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[35]~input_o\,
	datab => \A[35]~input_o\,
	datac => \A[34]~input_o\,
	datad => \B[34]~input_o\,
	combout => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\);

-- Location: LCCOMB_X114_Y36_N8
\S~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~50_combout\ = P(36) $ (((\BKGenerator|G_combined~2_combout\) # ((\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~1_combout\) # 
-- (\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|G_combined~2_combout\,
	datab => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~1_combout\,
	datac => P(36),
	datad => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\,
	combout => \S~50_combout\);

-- Location: IOIBUF_X115_Y32_N8
\B[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(37),
	o => \B[37]~input_o\);

-- Location: IOIBUF_X115_Y36_N8
\A[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(37),
	o => \A[37]~input_o\);

-- Location: LCCOMB_X114_Y36_N4
\P[37]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(37) = \B[37]~input_o\ $ (\A[37]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[37]~input_o\,
	datad => \A[37]~input_o\,
	combout => P(37));

-- Location: LCCOMB_X114_Y36_N26
\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[4]~0_combout\ = (\B[36]~input_o\ & 
-- ((\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\) # 
-- ((\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~1_combout\) # (\A[36]~input_o\)))) # (!\B[36]~input_o\ & (\A[36]~input_o\ & 
-- ((\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\) # 
-- (\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\,
	datab => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~1_combout\,
	datac => \B[36]~input_o\,
	datad => \A[36]~input_o\,
	combout => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[4]~0_combout\);

-- Location: LCCOMB_X114_Y36_N14
\S~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~51_combout\ = P(37) $ (((\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[4]~0_combout\) # ((P(36) & \BKGenerator|G_combined~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P(36),
	datab => P(37),
	datac => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[4]~0_combout\,
	datad => \BKGenerator|G_combined~2_combout\,
	combout => \S~51_combout\);

-- Location: IOIBUF_X115_Y35_N15
\A[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(38),
	o => \A[38]~input_o\);

-- Location: IOIBUF_X115_Y41_N8
\B[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(38),
	o => \B[38]~input_o\);

-- Location: LCCOMB_X114_Y40_N10
\P[38]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(38) = \A[38]~input_o\ $ (\B[38]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[38]~input_o\,
	datac => \B[38]~input_o\,
	combout => P(38));

-- Location: LCCOMB_X114_Y36_N16
\BKGenerator|G_combined~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|G_combined~3_combout\ = (\B[36]~input_o\ & (!\A[36]~input_o\ & (\B[37]~input_o\ $ (\A[37]~input_o\)))) # (!\B[36]~input_o\ & (\A[36]~input_o\ & (\B[37]~input_o\ $ (\A[37]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[36]~input_o\,
	datab => \A[36]~input_o\,
	datac => \B[37]~input_o\,
	datad => \A[37]~input_o\,
	combout => \BKGenerator|G_combined~3_combout\);

-- Location: LCCOMB_X114_Y36_N18
\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\ = (\B[37]~input_o\ & ((\A[37]~input_o\) # ((\B[36]~input_o\ & \A[36]~input_o\)))) # 
-- (!\B[37]~input_o\ & (\B[36]~input_o\ & (\A[36]~input_o\ & \A[37]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[36]~input_o\,
	datab => \A[36]~input_o\,
	datac => \B[37]~input_o\,
	datad => \A[37]~input_o\,
	combout => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\);

-- Location: LCCOMB_X114_Y40_N0
\BKGenerator|Gout[37]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|Gout[37]~4_combout\ = (\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\) # ((\BKGenerator|G_combined~3_combout\ & 
-- ((\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~1_combout\) # 
-- (\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~1_combout\,
	datab => \BKGenerator|G_combined~3_combout\,
	datac => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\,
	datad => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\,
	combout => \BKGenerator|Gout[37]~4_combout\);

-- Location: LCCOMB_X114_Y40_N28
\S~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~52_combout\ = P(38) $ (((\BKGenerator|Gout[37]~4_combout\) # ((\BKGenerator|G_combined~3_combout\ & \BKGenerator|G_combined~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P(38),
	datab => \BKGenerator|G_combined~3_combout\,
	datac => \BKGenerator|G_combined~2_combout\,
	datad => \BKGenerator|Gout[37]~4_combout\,
	combout => \S~52_combout\);

-- Location: LCCOMB_X114_Y40_N30
\BKGenerator|G_combined~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|G_combined~4_combout\ = (\BKGenerator|G_combined~3_combout\ & (\A[38]~input_o\ $ (\B[38]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[38]~input_o\,
	datab => \BKGenerator|G_combined~3_combout\,
	datac => \B[38]~input_o\,
	combout => \BKGenerator|G_combined~4_combout\);

-- Location: LCCOMB_X114_Y40_N16
\BKGenerator|Gout[38]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|Gout[38]~5_combout\ = (\A[38]~input_o\ & ((\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\) # (\B[38]~input_o\))) # (!\A[38]~input_o\ & 
-- (\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\ & \B[38]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[38]~input_o\,
	datab => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\,
	datac => \B[38]~input_o\,
	combout => \BKGenerator|Gout[38]~5_combout\);

-- Location: LCCOMB_X114_Y40_N26
\BKGenerator|Gout[38]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|Gout[38]~6_combout\ = (\BKGenerator|Gout[38]~5_combout\) # ((\BKGenerator|G_combined~4_combout\ & ((\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~1_combout\) # 
-- (\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~1_combout\,
	datab => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\,
	datac => \BKGenerator|G_combined~4_combout\,
	datad => \BKGenerator|Gout[38]~5_combout\,
	combout => \BKGenerator|Gout[38]~6_combout\);

-- Location: IOIBUF_X115_Y40_N1
\B[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(39),
	o => \B[39]~input_o\);

-- Location: IOIBUF_X115_Y41_N1
\A[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(39),
	o => \A[39]~input_o\);

-- Location: LCCOMB_X114_Y40_N20
\P[39]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(39) = \B[39]~input_o\ $ (\A[39]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[39]~input_o\,
	datad => \A[39]~input_o\,
	combout => P(39));

-- Location: LCCOMB_X114_Y40_N14
\S~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~53_combout\ = P(39) $ (((\BKGenerator|Gout[38]~6_combout\) # ((\BKGenerator|G_combined~2_combout\ & \BKGenerator|G_combined~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|Gout[38]~6_combout\,
	datab => \BKGenerator|G_combined~2_combout\,
	datac => \BKGenerator|G_combined~4_combout\,
	datad => P(39),
	combout => \S~53_combout\);

-- Location: LCCOMB_X114_Y40_N8
\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|Gout[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|Gout[1]~0_combout\ = (\B[39]~input_o\ & ((\A[39]~input_o\) # ((\A[38]~input_o\ & \B[38]~input_o\)))) # (!\B[39]~input_o\ 
-- & (\A[38]~input_o\ & (\B[38]~input_o\ & \A[39]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[38]~input_o\,
	datab => \B[39]~input_o\,
	datac => \B[38]~input_o\,
	datad => \A[39]~input_o\,
	combout => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|Gout[1]~0_combout\);

-- Location: LCCOMB_X114_Y40_N2
\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout\(3) = 
-- (\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|Gout[1]~0_combout\) # ((P(38) & 
-- (\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\ & P(39))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P(38),
	datab => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\,
	datac => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|Gout[1]~0_combout\,
	datad => P(39),
	combout => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout\(3));

-- Location: LCCOMB_X114_Y40_N18
\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Pout[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Pout[7]~4_combout\ = (\BKGenerator|G_combined~3_combout\ & (P(39) & (\A[38]~input_o\ $ (\B[38]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[38]~input_o\,
	datab => \BKGenerator|G_combined~3_combout\,
	datac => \B[38]~input_o\,
	datad => P(39),
	combout => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Pout[7]~4_combout\);

-- Location: LCCOMB_X114_Y40_N12
\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout\(7) = (\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout\(3)) # 
-- ((\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Pout[7]~4_combout\ & ((\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~1_combout\) # 
-- (\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~1_combout\,
	datab => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout\(3),
	datac => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\,
	datad => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Pout[7]~4_combout\,
	combout => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout\(7));

-- Location: IOIBUF_X115_Y47_N22
\B[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(40),
	o => \B[40]~input_o\);

-- Location: LCCOMB_X114_Y36_N28
\BKGenerator|G_combined~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|G_combined~5_combout\ = (\BKGenerator|G_combined~4_combout\ & (\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~0_combout\ & (\BKGenerator|G_combined~1_combout\ & 
-- P(39))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|G_combined~4_combout\,
	datab => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~0_combout\,
	datac => \BKGenerator|G_combined~1_combout\,
	datad => P(39),
	combout => \BKGenerator|G_combined~5_combout\);

-- Location: IOIBUF_X115_Y48_N1
\A[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(40),
	o => \A[40]~input_o\);

-- Location: LCCOMB_X114_Y48_N8
\S~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~54_combout\ = \B[40]~input_o\ $ (\A[40]~input_o\ $ (((\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout\(7)) # (\BKGenerator|G_combined~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout\(7),
	datab => \B[40]~input_o\,
	datac => \BKGenerator|G_combined~5_combout\,
	datad => \A[40]~input_o\,
	combout => \S~54_combout\);

-- Location: LCCOMB_X114_Y40_N22
\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~0_combout\ = (\BKGenerator|G_combined~4_combout\ & (P(39) & 
-- ((\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~1_combout\) # 
-- (\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~1_combout\,
	datab => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\,
	datac => \BKGenerator|G_combined~4_combout\,
	datad => P(39),
	combout => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~0_combout\);

-- Location: LCCOMB_X114_Y48_N18
\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[8]~0_combout\ = (\A[40]~input_o\ & ((\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout\(3)) # ((\B[40]~input_o\) # 
-- (\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~0_combout\)))) # (!\A[40]~input_o\ & (\B[40]~input_o\ & 
-- ((\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout\(3)) # (\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[40]~input_o\,
	datab => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout\(3),
	datac => \B[40]~input_o\,
	datad => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~0_combout\,
	combout => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[8]~0_combout\);

-- Location: LCCOMB_X114_Y48_N12
\BKGenerator|Gout[40]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|Gout\(40) = (\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[8]~0_combout\) # ((\BKGenerator|G_combined~5_combout\ & (\B[40]~input_o\ $ (\A[40]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|G_combined~5_combout\,
	datab => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[8]~0_combout\,
	datac => \B[40]~input_o\,
	datad => \A[40]~input_o\,
	combout => \BKGenerator|Gout\(40));

-- Location: IOIBUF_X115_Y51_N8
\A[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(41),
	o => \A[41]~input_o\);

-- Location: IOIBUF_X115_Y54_N15
\B[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(41),
	o => \B[41]~input_o\);

-- Location: LCCOMB_X114_Y48_N14
\S~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~55_combout\ = \BKGenerator|Gout\(40) $ (\A[41]~input_o\ $ (\B[41]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|Gout\(40),
	datac => \A[41]~input_o\,
	datad => \B[41]~input_o\,
	combout => \S~55_combout\);

-- Location: IOIBUF_X115_Y55_N22
\B[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(42),
	o => \B[42]~input_o\);

-- Location: IOIBUF_X115_Y45_N22
\A[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(42),
	o => \A[42]~input_o\);

-- Location: LCCOMB_X114_Y48_N16
\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\ = (\A[41]~input_o\ & ((\B[41]~input_o\) # ((\A[40]~input_o\ & \B[40]~input_o\)))) # 
-- (!\A[41]~input_o\ & (\A[40]~input_o\ & (\B[40]~input_o\ & \B[41]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[40]~input_o\,
	datab => \A[41]~input_o\,
	datac => \B[40]~input_o\,
	datad => \B[41]~input_o\,
	combout => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\);

-- Location: LCCOMB_X114_Y48_N2
\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\ = (\A[40]~input_o\ & (!\B[40]~input_o\ & (\A[41]~input_o\ $ (\B[41]~input_o\)))) # (!\A[40]~input_o\ & (\B[40]~input_o\ & (\A[41]~input_o\ $ (\B[41]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[40]~input_o\,
	datab => \A[41]~input_o\,
	datac => \B[40]~input_o\,
	datad => \B[41]~input_o\,
	combout => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\);

-- Location: LCCOMB_X114_Y48_N4
\BKGenerator|Gout[41]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|Gout\(41) = (\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\) # 
-- ((\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\ & ((\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout\(7)) # (\BKGenerator|G_combined~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout\(7),
	datab => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\,
	datac => \BKGenerator|G_combined~5_combout\,
	datad => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\,
	combout => \BKGenerator|Gout\(41));

-- Location: LCCOMB_X114_Y48_N22
\S~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~56_combout\ = \B[42]~input_o\ $ (\A[42]~input_o\ $ (\BKGenerator|Gout\(41)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[42]~input_o\,
	datab => \A[42]~input_o\,
	datac => \BKGenerator|Gout\(41),
	combout => \S~56_combout\);

-- Location: IOIBUF_X115_Y48_N8
\B[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(43),
	o => \B[43]~input_o\);

-- Location: IOIBUF_X115_Y50_N8
\A[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(43),
	o => \A[43]~input_o\);

-- Location: LCCOMB_X114_Y48_N24
\P[43]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(43) = \B[43]~input_o\ $ (\A[43]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[43]~input_o\,
	datad => \A[43]~input_o\,
	combout => P(43));

-- Location: LCCOMB_X114_Y48_N26
\S~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~57_combout\ = P(43) $ (((\B[42]~input_o\ & ((\BKGenerator|Gout\(41)) # (\A[42]~input_o\))) # (!\B[42]~input_o\ & (\BKGenerator|Gout\(41) & \A[42]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[42]~input_o\,
	datab => P(43),
	datac => \BKGenerator|Gout\(41),
	datad => \A[42]~input_o\,
	combout => \S~57_combout\);

-- Location: IOIBUF_X115_Y46_N1
\A[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(44),
	o => \A[44]~input_o\);

-- Location: LCCOMB_X114_Y48_N20
\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Pout[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Pout[3]~0_combout\ = (P(43) & (\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\ & (\B[42]~input_o\ $ 
-- (\A[42]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P(43),
	datab => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\,
	datac => \B[42]~input_o\,
	datad => \A[42]~input_o\,
	combout => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Pout[3]~0_combout\);

-- Location: LCCOMB_X114_Y36_N22
\BKGenerator|G_combined~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|G_combined~6_combout\ = (\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Pout[3]~0_combout\ & 
-- (\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~0_combout\ & (\BKGenerator|G_combined~1_combout\ & 
-- \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Pout[7]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Pout[3]~0_combout\,
	datab => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~0_combout\,
	datac => \BKGenerator|G_combined~1_combout\,
	datad => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Pout[7]~4_combout\,
	combout => \BKGenerator|G_combined~6_combout\);

-- Location: LCCOMB_X114_Y48_N0
\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\ = (\B[43]~input_o\ & ((\A[43]~input_o\) # ((\A[42]~input_o\ & \B[42]~input_o\)))) # (!\B[43]~input_o\ 
-- & (\A[42]~input_o\ & (\B[42]~input_o\ & \A[43]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[43]~input_o\,
	datab => \A[42]~input_o\,
	datac => \B[42]~input_o\,
	datad => \A[43]~input_o\,
	combout => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\);

-- Location: LCCOMB_X114_Y48_N6
\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~1_combout\ = (\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Pout[3]~0_combout\ & 
-- ((\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~0_combout\) # (\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~0_combout\,
	datac => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout\(3),
	datad => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Pout[3]~0_combout\,
	combout => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~1_combout\);

-- Location: LCCOMB_X114_Y48_N10
\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\ = 
-- (\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\ & (P(43) & (\B[42]~input_o\ $ (\A[42]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\,
	datab => P(43),
	datac => \B[42]~input_o\,
	datad => \A[42]~input_o\,
	combout => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\);

-- Location: LCCOMB_X114_Y49_N16
\BKGenerator|Gout[43]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|Gout\(43) = (\BKGenerator|G_combined~6_combout\) # ((\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\) # 
-- ((\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~1_combout\) # (\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|G_combined~6_combout\,
	datab => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\,
	datac => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~1_combout\,
	datad => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\,
	combout => \BKGenerator|Gout\(43));

-- Location: IOIBUF_X115_Y53_N15
\B[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(44),
	o => \B[44]~input_o\);

-- Location: LCCOMB_X114_Y49_N18
\S~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~85_combout\ = \A[44]~input_o\ $ (\BKGenerator|Gout\(43) $ (\B[44]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[44]~input_o\,
	datab => \BKGenerator|Gout\(43),
	datac => \B[44]~input_o\,
	combout => \S~85_combout\);

-- Location: IOIBUF_X115_Y49_N8
\A[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(45),
	o => \A[45]~input_o\);

-- Location: IOIBUF_X115_Y45_N15
\B[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(45),
	o => \B[45]~input_o\);

-- Location: LCCOMB_X114_Y49_N26
\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[4]~0_combout\ = (\B[44]~input_o\ & 
-- ((\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\) # 
-- ((\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\) # (\A[44]~input_o\)))) # (!\B[44]~input_o\ & (\A[44]~input_o\ & 
-- ((\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\) # 
-- (\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\,
	datab => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\,
	datac => \B[44]~input_o\,
	datad => \A[44]~input_o\,
	combout => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[4]~0_combout\);

-- Location: LCCOMB_X114_Y49_N12
\S~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~88_combout\ = (\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~1_combout\ & ((\B[44]~input_o\ $ (\A[44]~input_o\)))) # (!\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~1_combout\ & 
-- (\BKGenerator|G_combined~6_combout\ & (\B[44]~input_o\ $ (\A[44]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~1_combout\,
	datab => \BKGenerator|G_combined~6_combout\,
	datac => \B[44]~input_o\,
	datad => \A[44]~input_o\,
	combout => \S~88_combout\);

-- Location: LCCOMB_X114_Y49_N14
\S~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~89_combout\ = \A[45]~input_o\ $ (\B[45]~input_o\ $ (((\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[4]~0_combout\) # (\S~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[45]~input_o\,
	datab => \B[45]~input_o\,
	datac => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[4]~0_combout\,
	datad => \S~88_combout\,
	combout => \S~89_combout\);

-- Location: LCCOMB_X114_Y49_N4
\BKGenerator|Gout[45]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|Gout[45]~7_combout\ = (\A[44]~input_o\ & (!\B[44]~input_o\ & (\B[45]~input_o\ $ (\A[45]~input_o\)))) # (!\A[44]~input_o\ & (\B[44]~input_o\ & (\B[45]~input_o\ $ (\A[45]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[44]~input_o\,
	datab => \B[45]~input_o\,
	datac => \B[44]~input_o\,
	datad => \A[45]~input_o\,
	combout => \BKGenerator|Gout[45]~7_combout\);

-- Location: LCCOMB_X114_Y49_N6
\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\ = (\B[45]~input_o\ & ((\A[45]~input_o\) # ((\A[44]~input_o\ & \B[44]~input_o\)))) # (!\B[45]~input_o\ 
-- & (\A[44]~input_o\ & (\B[44]~input_o\ & \A[45]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[44]~input_o\,
	datab => \B[45]~input_o\,
	datac => \B[44]~input_o\,
	datad => \A[45]~input_o\,
	combout => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\);

-- Location: LCCOMB_X114_Y49_N8
\BKGenerator|Gout[45]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|Gout[45]~9_combout\ = (\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\) # ((\BKGenerator|Gout[45]~7_combout\ & 
-- ((\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\) # 
-- (\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\,
	datab => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\,
	datac => \BKGenerator|Gout[45]~7_combout\,
	datad => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\,
	combout => \BKGenerator|Gout[45]~9_combout\);

-- Location: LCCOMB_X114_Y48_N28
\BKGenerator|Gout[45]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|Gout[45]~8_combout\ = (\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Pout[3]~0_combout\ & (\BKGenerator|Gout[45]~7_combout\ & 
-- ((\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout\(7)) # (\BKGenerator|G_combined~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout\(7),
	datab => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Pout[3]~0_combout\,
	datac => \BKGenerator|G_combined~5_combout\,
	datad => \BKGenerator|Gout[45]~7_combout\,
	combout => \BKGenerator|Gout[45]~8_combout\);

-- Location: IOIBUF_X115_Y46_N8
\A[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(46),
	o => \A[46]~input_o\);

-- Location: IOIBUF_X115_Y47_N15
\B[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(46),
	o => \B[46]~input_o\);

-- Location: LCCOMB_X114_Y48_N30
\S~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~58_combout\ = \A[46]~input_o\ $ (\B[46]~input_o\ $ (((\BKGenerator|Gout[45]~9_combout\) # (\BKGenerator|Gout[45]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|Gout[45]~9_combout\,
	datab => \BKGenerator|Gout[45]~8_combout\,
	datac => \A[46]~input_o\,
	datad => \B[46]~input_o\,
	combout => \S~58_combout\);

-- Location: LCCOMB_X114_Y49_N20
\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|G_combined~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|G_combined~0_combout\ = (\BKGenerator|Gout[45]~7_combout\ & (\A[46]~input_o\ $ (\B[46]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[46]~input_o\,
	datac => \BKGenerator|Gout[45]~7_combout\,
	datad => \B[46]~input_o\,
	combout => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|G_combined~0_combout\);

-- Location: LCCOMB_X114_Y49_N10
\BKGenerator|Gout[46]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|Gout[46]~10_combout\ = (\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\ & ((\A[46]~input_o\) # (\B[46]~input_o\))) # 
-- (!\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\ & (\A[46]~input_o\ & \B[46]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\,
	datac => \A[46]~input_o\,
	datad => \B[46]~input_o\,
	combout => \BKGenerator|Gout[46]~10_combout\);

-- Location: LCCOMB_X114_Y49_N22
\BKGenerator|Gout[46]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|Gout[46]~11_combout\ = (\BKGenerator|Gout[46]~10_combout\) # ((\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|G_combined~0_combout\ & 
-- ((\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\) # 
-- (\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|Gout[46]~10_combout\,
	datab => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\,
	datac => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\,
	datad => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|G_combined~0_combout\,
	combout => \BKGenerator|Gout[46]~11_combout\);

-- Location: LCCOMB_X114_Y49_N0
\BKGenerator|Gout[46]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|Gout[46]~12_combout\ = (\BKGenerator|Gout[46]~11_combout\) # ((\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|G_combined~0_combout\ & 
-- ((\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~1_combout\) # (\BKGenerator|G_combined~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~1_combout\,
	datab => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|G_combined~0_combout\,
	datac => \BKGenerator|Gout[46]~11_combout\,
	datad => \BKGenerator|G_combined~6_combout\,
	combout => \BKGenerator|Gout[46]~12_combout\);

-- Location: IOIBUF_X115_Y44_N1
\B[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(47),
	o => \B[47]~input_o\);

-- Location: IOIBUF_X115_Y42_N15
\A[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(47),
	o => \A[47]~input_o\);

-- Location: LCCOMB_X114_Y49_N2
\S~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~59_combout\ = \BKGenerator|Gout[46]~12_combout\ $ (\B[47]~input_o\ $ (\A[47]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BKGenerator|Gout[46]~12_combout\,
	datac => \B[47]~input_o\,
	datad => \A[47]~input_o\,
	combout => \S~59_combout\);

-- Location: LCCOMB_X114_Y43_N8
\P[47]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(47) = \A[47]~input_o\ $ (\B[47]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[47]~input_o\,
	datac => \B[47]~input_o\,
	combout => P(47));

-- Location: LCCOMB_X114_Y40_N24
\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~2_combout\ = (\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout\(7) & 
-- (\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Pout[3]~0_combout\ & (P(47) & \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|G_combined~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout\(7),
	datab => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Pout[3]~0_combout\,
	datac => P(47),
	datad => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|G_combined~0_combout\,
	combout => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~2_combout\);

-- Location: LCCOMB_X114_Y49_N28
\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|Gout[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|Gout[1]~0_combout\ = (\B[47]~input_o\ & ((\A[47]~input_o\) # ((\B[46]~input_o\ & \A[46]~input_o\)))) # (!\B[47]~input_o\ 
-- & (\B[46]~input_o\ & (\A[46]~input_o\ & \A[47]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[46]~input_o\,
	datab => \B[47]~input_o\,
	datac => \A[46]~input_o\,
	datad => \A[47]~input_o\,
	combout => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|Gout[1]~0_combout\);

-- Location: LCCOMB_X114_Y49_N30
\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[7]~1_combout\ = (\B[46]~input_o\ & (!\A[46]~input_o\ & (\B[47]~input_o\ $ (\A[47]~input_o\)))) # (!\B[46]~input_o\ & (\A[46]~input_o\ & (\B[47]~input_o\ $ 
-- (\A[47]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[46]~input_o\,
	datab => \B[47]~input_o\,
	datac => \A[46]~input_o\,
	datad => \A[47]~input_o\,
	combout => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[7]~1_combout\);

-- Location: LCCOMB_X65_Y72_N0
\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|Gout\(15) = (\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~2_combout\) # 
-- ((\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|Gout[1]~0_combout\) # ((\BKGenerator|Gout[45]~9_combout\ & 
-- \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[7]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~2_combout\,
	datab => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|Gout[1]~0_combout\,
	datac => \BKGenerator|Gout[45]~9_combout\,
	datad => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[7]~1_combout\,
	combout => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|Gout\(15));

-- Location: IOIBUF_X58_Y73_N8
\A[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(48),
	o => \A[48]~input_o\);

-- Location: LCCOMB_X114_Y49_N24
\BKGenerator|G_combined~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|G_combined~7_combout\ = (\BKGenerator|G_combined~6_combout\ & (\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|G_combined~0_combout\ & (\B[47]~input_o\ $ (\A[47]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|G_combined~6_combout\,
	datab => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|G_combined~0_combout\,
	datac => \B[47]~input_o\,
	datad => \A[47]~input_o\,
	combout => \BKGenerator|G_combined~7_combout\);

-- Location: IOIBUF_X58_Y73_N22
\B[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(48),
	o => \B[48]~input_o\);

-- Location: LCCOMB_X54_Y72_N16
\S~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~60_combout\ = \A[48]~input_o\ $ (\B[48]~input_o\ $ (((\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|Gout\(15)) # (\BKGenerator|G_combined~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|Gout\(15),
	datab => \A[48]~input_o\,
	datac => \BKGenerator|G_combined~7_combout\,
	datad => \B[48]~input_o\,
	combout => \S~60_combout\);

-- Location: IOIBUF_X52_Y73_N22
\B[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(49),
	o => \B[49]~input_o\);

-- Location: IOIBUF_X52_Y73_N15
\A[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(49),
	o => \A[49]~input_o\);

-- Location: LCCOMB_X65_Y72_N26
\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[7]~2_combout\ = 
-- (\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|Gout[1]~0_combout\) # ((\BKGenerator|Gout[45]~9_combout\ & 
-- \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[7]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|Gout[1]~0_combout\,
	datac => \BKGenerator|Gout[45]~9_combout\,
	datad => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[7]~1_combout\,
	combout => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[7]~2_combout\);

-- Location: LCCOMB_X54_Y72_N18
\BKGenerator|recursive_generate:LEFT|Gout[16]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:LEFT|Gout[16]~0_combout\ = (\A[48]~input_o\ & ((\B[48]~input_o\) # ((\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~2_combout\) # 
-- (\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[7]~2_combout\)))) # (!\A[48]~input_o\ & (\B[48]~input_o\ & ((\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~2_combout\) # 
-- (\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[7]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[48]~input_o\,
	datab => \B[48]~input_o\,
	datac => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~2_combout\,
	datad => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[7]~2_combout\,
	combout => \BKGenerator|recursive_generate:LEFT|Gout[16]~0_combout\);

-- Location: LCCOMB_X54_Y72_N20
\BKGenerator|Gout[48]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|Gout\(48) = (\BKGenerator|recursive_generate:LEFT|Gout[16]~0_combout\) # ((\BKGenerator|G_combined~7_combout\ & (\A[48]~input_o\ $ (\B[48]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:LEFT|Gout[16]~0_combout\,
	datab => \A[48]~input_o\,
	datac => \BKGenerator|G_combined~7_combout\,
	datad => \B[48]~input_o\,
	combout => \BKGenerator|Gout\(48));

-- Location: LCCOMB_X54_Y72_N6
\S~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~61_combout\ = \B[49]~input_o\ $ (\A[49]~input_o\ $ (\BKGenerator|Gout\(48)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[49]~input_o\,
	datac => \A[49]~input_o\,
	datad => \BKGenerator|Gout\(48),
	combout => \S~61_combout\);

-- Location: IOIBUF_X54_Y73_N1
\A[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(50),
	o => \A[50]~input_o\);

-- Location: IOIBUF_X54_Y73_N8
\B[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(50),
	o => \B[50]~input_o\);

-- Location: LCCOMB_X54_Y72_N30
\P[50]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(50) = \A[50]~input_o\ $ (\B[50]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[50]~input_o\,
	datad => \B[50]~input_o\,
	combout => P(50));

-- Location: LCCOMB_X54_Y72_N10
\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\ = (\B[49]~input_o\ & ((\A[49]~input_o\) # ((\A[48]~input_o\ & \B[48]~input_o\)))) # 
-- (!\B[49]~input_o\ & (\A[48]~input_o\ & (\A[49]~input_o\ & \B[48]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[49]~input_o\,
	datab => \A[48]~input_o\,
	datac => \A[49]~input_o\,
	datad => \B[48]~input_o\,
	combout => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\);

-- Location: LCCOMB_X54_Y72_N24
\BKGenerator|recursive_generate:LEFT|G_combined~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:LEFT|G_combined~0_combout\ = (\B[49]~input_o\ & (!\A[49]~input_o\ & (\A[48]~input_o\ $ (\B[48]~input_o\)))) # (!\B[49]~input_o\ & (\A[49]~input_o\ & (\A[48]~input_o\ $ (\B[48]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[49]~input_o\,
	datab => \A[48]~input_o\,
	datac => \A[49]~input_o\,
	datad => \B[48]~input_o\,
	combout => \BKGenerator|recursive_generate:LEFT|G_combined~0_combout\);

-- Location: LCCOMB_X54_Y72_N4
\BKGenerator|Gout[49]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|Gout[49]~13_combout\ = (\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\) # ((\BKGenerator|recursive_generate:LEFT|G_combined~0_combout\ 
-- & ((\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~2_combout\) # (\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[7]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\,
	datab => \BKGenerator|recursive_generate:LEFT|G_combined~0_combout\,
	datac => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~2_combout\,
	datad => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[7]~2_combout\,
	combout => \BKGenerator|Gout[49]~13_combout\);

-- Location: LCCOMB_X54_Y72_N0
\S~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~62_combout\ = P(50) $ (((\BKGenerator|Gout[49]~13_combout\) # ((\BKGenerator|G_combined~7_combout\ & \BKGenerator|recursive_generate:LEFT|G_combined~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P(50),
	datab => \BKGenerator|Gout[49]~13_combout\,
	datac => \BKGenerator|G_combined~7_combout\,
	datad => \BKGenerator|recursive_generate:LEFT|G_combined~0_combout\,
	combout => \S~62_combout\);

-- Location: LCCOMB_X54_Y72_N12
\S~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~64_combout\ = (P(50) & (\BKGenerator|recursive_generate:LEFT|G_combined~0_combout\ & ((\BKGenerator|G_combined~7_combout\) # (\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|Gout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P(50),
	datab => \BKGenerator|G_combined~7_combout\,
	datac => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|Gout\(15),
	datad => \BKGenerator|recursive_generate:LEFT|G_combined~0_combout\,
	combout => \S~64_combout\);

-- Location: IOIBUF_X58_Y73_N15
\B[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(51),
	o => \B[51]~input_o\);

-- Location: LCCOMB_X54_Y72_N26
\S~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~63_combout\ = (\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\ & ((\A[50]~input_o\) # (\B[50]~input_o\))) # 
-- (!\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\ & (\A[50]~input_o\ & \B[50]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\,
	datab => \A[50]~input_o\,
	datad => \B[50]~input_o\,
	combout => \S~63_combout\);

-- Location: IOIBUF_X58_Y73_N1
\A[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(51),
	o => \A[51]~input_o\);

-- Location: LCCOMB_X54_Y72_N22
\S~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~65_combout\ = \B[51]~input_o\ $ (\A[51]~input_o\ $ (((\S~64_combout\) # (\S~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~64_combout\,
	datab => \B[51]~input_o\,
	datac => \S~63_combout\,
	datad => \A[51]~input_o\,
	combout => \S~65_combout\);

-- Location: IOIBUF_X65_Y73_N8
\B[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(52),
	o => \B[52]~input_o\);

-- Location: IOIBUF_X67_Y73_N1
\A[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(52),
	o => \A[52]~input_o\);

-- Location: LCCOMB_X65_Y72_N6
\P[52]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(52) = \B[52]~input_o\ $ (\A[52]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[52]~input_o\,
	datad => \A[52]~input_o\,
	combout => P(52));

-- Location: LCCOMB_X54_Y72_N8
\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Pout[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Pout[3]~0_combout\ = (\BKGenerator|recursive_generate:LEFT|G_combined~0_combout\ & (P(50) & (\A[51]~input_o\ $ (\B[51]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[51]~input_o\,
	datab => \BKGenerator|recursive_generate:LEFT|G_combined~0_combout\,
	datac => P(50),
	datad => \B[51]~input_o\,
	combout => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Pout[3]~0_combout\);

-- Location: LCCOMB_X54_Y72_N2
\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\ = (\A[51]~input_o\ & ((\B[51]~input_o\) # ((\B[50]~input_o\ & \A[50]~input_o\)))) # (!\A[51]~input_o\ 
-- & (\B[50]~input_o\ & (\A[50]~input_o\ & \B[51]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[51]~input_o\,
	datab => \B[50]~input_o\,
	datac => \A[50]~input_o\,
	datad => \B[51]~input_o\,
	combout => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\);

-- Location: LCCOMB_X54_Y72_N28
\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~0_combout\ = 
-- (\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\ & (P(50) & (\B[51]~input_o\ $ (\A[51]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\,
	datab => \B[51]~input_o\,
	datac => P(50),
	datad => \A[51]~input_o\,
	combout => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~0_combout\);

-- Location: LCCOMB_X65_Y72_N28
\BKGenerator|Gout[51]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|Gout[51]~14_combout\ = (\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\) # 
-- ((\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~0_combout\) # ((\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|Gout\(15) & 
-- \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Pout[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|Gout\(15),
	datab => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Pout[3]~0_combout\,
	datac => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\,
	datad => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~0_combout\,
	combout => \BKGenerator|Gout[51]~14_combout\);

-- Location: LCCOMB_X65_Y72_N8
\S~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~66_combout\ = P(52) $ (((\BKGenerator|Gout[51]~14_combout\) # ((\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Pout[3]~0_combout\ & \BKGenerator|G_combined~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P(52),
	datab => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Pout[3]~0_combout\,
	datac => \BKGenerator|G_combined~7_combout\,
	datad => \BKGenerator|Gout[51]~14_combout\,
	combout => \S~66_combout\);

-- Location: IOIBUF_X65_Y73_N15
\B[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(53),
	o => \B[53]~input_o\);

-- Location: IOIBUF_X65_Y73_N22
\A[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(53),
	o => \A[53]~input_o\);

-- Location: LCCOMB_X66_Y72_N0
\S~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~67_combout\ = (\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Pout[3]~0_combout\ & (P(52) & ((\BKGenerator|G_combined~7_combout\) # 
-- (\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|Gout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Pout[3]~0_combout\,
	datab => P(52),
	datac => \BKGenerator|G_combined~7_combout\,
	datad => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|Gout\(15),
	combout => \S~67_combout\);

-- Location: LCCOMB_X65_Y72_N10
\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[4]~0_combout\ = (\B[52]~input_o\ & 
-- ((\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~0_combout\) # 
-- ((\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\) # (\A[52]~input_o\)))) # (!\B[52]~input_o\ & (\A[52]~input_o\ & 
-- ((\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~0_combout\) # 
-- (\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~0_combout\,
	datab => \B[52]~input_o\,
	datac => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\,
	datad => \A[52]~input_o\,
	combout => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[4]~0_combout\);

-- Location: LCCOMB_X65_Y72_N20
\S~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~68_combout\ = \B[53]~input_o\ $ (\A[53]~input_o\ $ (((\S~67_combout\) # (\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[53]~input_o\,
	datab => \A[53]~input_o\,
	datac => \S~67_combout\,
	datad => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[4]~0_combout\,
	combout => \S~68_combout\);

-- Location: IOIBUF_X69_Y73_N1
\B[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(54),
	o => \B[54]~input_o\);

-- Location: LCCOMB_X65_Y72_N22
\BKGenerator|Gout[53]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|Gout[53]~15_combout\ = (\B[53]~input_o\ & (!\A[53]~input_o\ & (\B[52]~input_o\ $ (\A[52]~input_o\)))) # (!\B[53]~input_o\ & (\A[53]~input_o\ & (\B[52]~input_o\ $ (\A[52]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[53]~input_o\,
	datab => \A[53]~input_o\,
	datac => \B[52]~input_o\,
	datad => \A[52]~input_o\,
	combout => \BKGenerator|Gout[53]~15_combout\);

-- Location: LCCOMB_X66_Y72_N18
\BKGenerator|Gout[53]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|Gout[53]~16_combout\ = (\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Pout[3]~0_combout\ & (\BKGenerator|Gout[53]~15_combout\ & ((\BKGenerator|G_combined~7_combout\) # 
-- (\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|Gout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Pout[3]~0_combout\,
	datab => \BKGenerator|Gout[53]~15_combout\,
	datac => \BKGenerator|G_combined~7_combout\,
	datad => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|Gout\(15),
	combout => \BKGenerator|Gout[53]~16_combout\);

-- Location: IOIBUF_X67_Y73_N15
\A[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(54),
	o => \A[54]~input_o\);

-- Location: LCCOMB_X65_Y72_N24
\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\ = (\B[53]~input_o\ & ((\A[53]~input_o\) # ((\B[52]~input_o\ & \A[52]~input_o\)))) # (!\B[53]~input_o\ 
-- & (\A[53]~input_o\ & (\B[52]~input_o\ & \A[52]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[53]~input_o\,
	datab => \A[53]~input_o\,
	datac => \B[52]~input_o\,
	datad => \A[52]~input_o\,
	combout => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\);

-- Location: LCCOMB_X66_Y72_N20
\BKGenerator|Gout[53]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|Gout[53]~17_combout\ = (\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\) # ((\BKGenerator|Gout[53]~15_combout\ & 
-- ((\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~0_combout\) # 
-- (\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~0_combout\,
	datab => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\,
	datac => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\,
	datad => \BKGenerator|Gout[53]~15_combout\,
	combout => \BKGenerator|Gout[53]~17_combout\);

-- Location: LCCOMB_X66_Y72_N6
\S~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~86_combout\ = \B[54]~input_o\ $ (\A[54]~input_o\ $ (((\BKGenerator|Gout[53]~16_combout\) # (\BKGenerator|Gout[53]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[54]~input_o\,
	datab => \BKGenerator|Gout[53]~16_combout\,
	datac => \A[54]~input_o\,
	datad => \BKGenerator|Gout[53]~17_combout\,
	combout => \S~86_combout\);

-- Location: IOIBUF_X67_Y73_N8
\A[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(55),
	o => \A[55]~input_o\);

-- Location: IOIBUF_X69_Y73_N15
\B[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(55),
	o => \B[55]~input_o\);

-- Location: LCCOMB_X66_Y72_N10
\P[55]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(55) = \A[55]~input_o\ $ (\B[55]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[55]~input_o\,
	datac => \B[55]~input_o\,
	combout => P(55));

-- Location: LCCOMB_X66_Y72_N28
\S~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~69_combout\ = (\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\ & ((\A[54]~input_o\) # (\B[54]~input_o\))) # 
-- (!\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\ & (\A[54]~input_o\ & \B[54]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\,
	datac => \A[54]~input_o\,
	datad => \B[54]~input_o\,
	combout => \S~69_combout\);

-- Location: LCCOMB_X65_Y72_N2
\S~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~70_combout\ = (\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Pout[3]~0_combout\ & ((\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|Gout\(15)) # 
-- (\BKGenerator|G_combined~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|Gout\(15),
	datab => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Pout[3]~0_combout\,
	datac => \BKGenerator|G_combined~7_combout\,
	combout => \S~70_combout\);

-- Location: LCCOMB_X65_Y72_N4
\S~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~71_combout\ = (\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~0_combout\) # 
-- ((\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\) # (\S~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~0_combout\,
	datac => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\,
	datad => \S~70_combout\,
	combout => \S~71_combout\);

-- Location: LCCOMB_X66_Y72_N16
\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\ = (\BKGenerator|Gout[53]~15_combout\ & (\A[54]~input_o\ $ (\B[54]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BKGenerator|Gout[53]~15_combout\,
	datac => \A[54]~input_o\,
	datad => \B[54]~input_o\,
	combout => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\);

-- Location: LCCOMB_X66_Y72_N30
\S~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~72_combout\ = P(55) $ (((\S~69_combout\) # ((\S~71_combout\ & \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P(55),
	datab => \S~69_combout\,
	datac => \S~71_combout\,
	datad => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\,
	combout => \S~72_combout\);

-- Location: IOIBUF_X85_Y73_N8
\A[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(56),
	o => \A[56]~input_o\);

-- Location: IOIBUF_X89_Y73_N8
\B[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(56),
	o => \B[56]~input_o\);

-- Location: LCCOMB_X84_Y72_N10
\P[56]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(56) = \A[56]~input_o\ $ (\B[56]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[56]~input_o\,
	datad => \B[56]~input_o\,
	combout => P(56));

-- Location: LCCOMB_X66_Y72_N4
\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~1_combout\ = (P(55) & (\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\ & 
-- ((\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~0_combout\) # 
-- (\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P(55),
	datab => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|G_combined~0_combout\,
	datac => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\,
	datad => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\,
	combout => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~1_combout\);

-- Location: LCCOMB_X66_Y72_N22
\P[54]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(54) = \A[54]~input_o\ $ (\B[54]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[54]~input_o\,
	datad => \B[54]~input_o\,
	combout => P(54));

-- Location: LCCOMB_X66_Y72_N8
\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|Gout[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|Gout[1]~0_combout\ = (\A[55]~input_o\ & ((\B[55]~input_o\) # ((\A[54]~input_o\ & \B[54]~input_o\)))) # (!\A[55]~input_o\ 
-- & (\A[54]~input_o\ & (\B[55]~input_o\ & \B[54]~input_o\)))

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
	combout => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|Gout[1]~0_combout\);

-- Location: LCCOMB_X66_Y72_N2
\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout\(3) = 
-- (\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|Gout[1]~0_combout\) # ((P(55) & 
-- (\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\ & P(54))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P(55),
	datab => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\,
	datac => P(54),
	datad => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|recursive_generate:LEFT|Gout[1]~0_combout\,
	combout => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout\(3));

-- Location: LCCOMB_X84_Y72_N8
\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout\(7) = (\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~1_combout\) # 
-- (\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~1_combout\,
	datad => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout\(3),
	combout => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout\(7));

-- Location: LCCOMB_X66_Y72_N24
\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Pout[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Pout[7]~2_combout\ = (\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\ & 
-- (\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Pout[3]~0_combout\ & (\A[55]~input_o\ $ (\B[55]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[55]~input_o\,
	datab => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\,
	datac => \B[55]~input_o\,
	datad => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Pout[3]~0_combout\,
	combout => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Pout[7]~2_combout\);

-- Location: LCCOMB_X82_Y72_N24
\BKGenerator|recursive_generate:LEFT|G_combined~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:LEFT|G_combined~1_combout\ = (\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Pout[7]~2_combout\ & ((\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~2_combout\) 
-- # (\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[7]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~2_combout\,
	datab => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[7]~2_combout\,
	datac => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Pout[7]~2_combout\,
	combout => \BKGenerator|recursive_generate:LEFT|G_combined~1_combout\);

-- Location: LCCOMB_X114_Y43_N18
\BKGenerator|G_combined~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|G_combined~8_combout\ = (\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Pout[7]~2_combout\ & (\BKGenerator|G_combined~6_combout\ & 
-- (\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|G_combined~0_combout\ & P(47))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Pout[7]~2_combout\,
	datab => \BKGenerator|G_combined~6_combout\,
	datac => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|G_combined~0_combout\,
	datad => P(47),
	combout => \BKGenerator|G_combined~8_combout\);

-- Location: LCCOMB_X84_Y72_N20
\S~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~73_combout\ = P(56) $ (((\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout\(7)) # ((\BKGenerator|recursive_generate:LEFT|G_combined~1_combout\) # (\BKGenerator|G_combined~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P(56),
	datab => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout\(7),
	datac => \BKGenerator|recursive_generate:LEFT|G_combined~1_combout\,
	datad => \BKGenerator|G_combined~8_combout\,
	combout => \S~73_combout\);

-- Location: IOIBUF_X87_Y73_N1
\A[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(57),
	o => \A[57]~input_o\);

-- Location: LCCOMB_X84_Y72_N14
\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|Gout[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|Gout[8]~0_combout\ = (\B[56]~input_o\ & ((\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~1_combout\) # ((\A[56]~input_o\) # 
-- (\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout\(3))))) # (!\B[56]~input_o\ & (\A[56]~input_o\ & 
-- ((\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~1_combout\) # (\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~1_combout\,
	datab => \B[56]~input_o\,
	datac => \A[56]~input_o\,
	datad => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout\(3),
	combout => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|Gout[8]~0_combout\);

-- Location: LCCOMB_X84_Y72_N16
\BKGenerator|Gout[56]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|Gout\(56) = (\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|Gout[8]~0_combout\) # ((P(56) & ((\BKGenerator|recursive_generate:LEFT|G_combined~1_combout\) # (\BKGenerator|G_combined~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P(56),
	datab => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|Gout[8]~0_combout\,
	datac => \BKGenerator|recursive_generate:LEFT|G_combined~1_combout\,
	datad => \BKGenerator|G_combined~8_combout\,
	combout => \BKGenerator|Gout\(56));

-- Location: IOIBUF_X85_Y73_N15
\B[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(57),
	o => \B[57]~input_o\);

-- Location: LCCOMB_X84_Y72_N26
\S~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~74_combout\ = \A[57]~input_o\ $ (\BKGenerator|Gout\(56) $ (\B[57]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[57]~input_o\,
	datab => \BKGenerator|Gout\(56),
	datad => \B[57]~input_o\,
	combout => \S~74_combout\);

-- Location: IOIBUF_X83_Y73_N1
\A[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(58),
	o => \A[58]~input_o\);

-- Location: IOIBUF_X83_Y73_N22
\B[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(58),
	o => \B[58]~input_o\);

-- Location: LCCOMB_X84_Y72_N2
\P[58]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(58) = \A[58]~input_o\ $ (\B[58]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[58]~input_o\,
	datad => \B[58]~input_o\,
	combout => P(58));

-- Location: LCCOMB_X84_Y72_N12
\BKGenerator|Gout[57]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|Gout[57]~19_combout\ = (\A[57]~input_o\ & (!\B[57]~input_o\ & (\A[56]~input_o\ $ (\B[56]~input_o\)))) # (!\A[57]~input_o\ & (\B[57]~input_o\ & (\A[56]~input_o\ $ (\B[56]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[57]~input_o\,
	datab => \B[57]~input_o\,
	datac => \A[56]~input_o\,
	datad => \B[56]~input_o\,
	combout => \BKGenerator|Gout[57]~19_combout\);

-- Location: LCCOMB_X84_Y72_N6
\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\ = (\A[57]~input_o\ & ((\B[57]~input_o\) # ((\A[56]~input_o\ & \B[56]~input_o\)))) # (!\A[57]~input_o\ 
-- & (\B[57]~input_o\ & (\A[56]~input_o\ & \B[56]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[57]~input_o\,
	datab => \B[57]~input_o\,
	datac => \A[56]~input_o\,
	datad => \B[56]~input_o\,
	combout => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\);

-- Location: LCCOMB_X84_Y72_N24
\BKGenerator|Gout[57]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|Gout[57]~20_combout\ = (\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\) # ((\BKGenerator|Gout[57]~19_combout\ & 
-- ((\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout\(3)) # (\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|Gout[57]~19_combout\,
	datab => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout\(3),
	datac => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~1_combout\,
	datad => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\,
	combout => \BKGenerator|Gout[57]~20_combout\);

-- Location: LCCOMB_X82_Y72_N18
\BKGenerator|Gout[59]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|Gout[59]~18_combout\ = (\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Pout[7]~2_combout\ & ((\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~2_combout\) # 
-- ((\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[7]~2_combout\) # (\BKGenerator|G_combined~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~2_combout\,
	datab => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[7]~2_combout\,
	datac => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Pout[7]~2_combout\,
	datad => \BKGenerator|G_combined~7_combout\,
	combout => \BKGenerator|Gout[59]~18_combout\);

-- Location: LCCOMB_X83_Y72_N8
\S~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~75_combout\ = P(58) $ (((\BKGenerator|Gout[57]~20_combout\) # ((\BKGenerator|Gout[57]~19_combout\ & \BKGenerator|Gout[59]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P(58),
	datab => \BKGenerator|Gout[57]~20_combout\,
	datac => \BKGenerator|Gout[57]~19_combout\,
	datad => \BKGenerator|Gout[59]~18_combout\,
	combout => \S~75_combout\);

-- Location: IOIBUF_X83_Y73_N15
\A[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(59),
	o => \A[59]~input_o\);

-- Location: IOIBUF_X83_Y73_N8
\B[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(59),
	o => \B[59]~input_o\);

-- Location: LCCOMB_X83_Y72_N2
\P[59]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(59) = \A[59]~input_o\ $ (\B[59]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[59]~input_o\,
	datac => \B[59]~input_o\,
	combout => P(59));

-- Location: LCCOMB_X84_Y72_N22
\BKGenerator|Gout[58]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|Gout[58]~21_combout\ = (\B[58]~input_o\ & ((\A[58]~input_o\) # (\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\))) # (!\B[58]~input_o\ & 
-- (\A[58]~input_o\ & \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[58]~input_o\,
	datac => \A[58]~input_o\,
	datad => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\,
	combout => \BKGenerator|Gout[58]~21_combout\);

-- Location: LCCOMB_X84_Y72_N28
\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~0_combout\ = (\BKGenerator|Gout[57]~19_combout\ & (\B[58]~input_o\ $ (\A[58]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[58]~input_o\,
	datac => \A[58]~input_o\,
	datad => \BKGenerator|Gout[57]~19_combout\,
	combout => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~0_combout\);

-- Location: LCCOMB_X84_Y72_N0
\BKGenerator|Gout[58]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|Gout[58]~22_combout\ = (\BKGenerator|Gout[58]~21_combout\) # ((\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~0_combout\ & 
-- ((\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout\(7)) # (\BKGenerator|recursive_generate:LEFT|G_combined~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|Gout[58]~21_combout\,
	datab => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout\(7),
	datac => \BKGenerator|recursive_generate:LEFT|G_combined~1_combout\,
	datad => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~0_combout\,
	combout => \BKGenerator|Gout[58]~22_combout\);

-- Location: LCCOMB_X84_Y72_N18
\S~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~76_combout\ = P(59) $ (((\BKGenerator|Gout[58]~22_combout\) # ((\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~0_combout\ & \BKGenerator|G_combined~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P(59),
	datab => \BKGenerator|Gout[58]~22_combout\,
	datac => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~0_combout\,
	datad => \BKGenerator|G_combined~8_combout\,
	combout => \S~76_combout\);

-- Location: LCCOMB_X84_Y72_N4
\BKGenerator|Gout[59]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|Gout[59]~23_combout\ = (P(58) & ((\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\) # ((\BKGenerator|Gout[57]~19_combout\ & 
-- \BKGenerator|Gout[59]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|Gout[57]~19_combout\,
	datab => \BKGenerator|Gout[59]~18_combout\,
	datac => P(58),
	datad => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\,
	combout => \BKGenerator|Gout[59]~23_combout\);

-- Location: LCCOMB_X83_Y72_N20
\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\ = (\A[59]~input_o\ & ((\B[59]~input_o\) # ((\A[58]~input_o\ & \B[58]~input_o\)))) # (!\A[59]~input_o\ 
-- & (\A[58]~input_o\ & (\B[58]~input_o\ & \B[59]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[59]~input_o\,
	datab => \A[58]~input_o\,
	datac => \B[58]~input_o\,
	datad => \B[59]~input_o\,
	combout => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\);

-- Location: LCCOMB_X83_Y72_N30
\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~1_combout\ = (P(59) & (\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~0_combout\ & 
-- ((\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~1_combout\) # (\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~1_combout\,
	datab => P(59),
	datac => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout\(3),
	datad => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~0_combout\,
	combout => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~1_combout\);

-- Location: LCCOMB_X83_Y72_N0
\BKGenerator|Gout[59]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|Gout[59]~24_combout\ = (\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\) # 
-- ((\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~1_combout\) # ((\BKGenerator|Gout[59]~23_combout\ & P(59))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|Gout[59]~23_combout\,
	datab => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\,
	datac => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~1_combout\,
	datad => P(59),
	combout => \BKGenerator|Gout[59]~24_combout\);

-- Location: IOIBUF_X89_Y73_N22
\A[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(60),
	o => \A[60]~input_o\);

-- Location: IOIBUF_X94_Y73_N8
\B[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(60),
	o => \B[60]~input_o\);

-- Location: LCCOMB_X87_Y72_N0
\S~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~77_combout\ = \BKGenerator|Gout[59]~24_combout\ $ (\A[60]~input_o\ $ (\B[60]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|Gout[59]~24_combout\,
	datac => \A[60]~input_o\,
	datad => \B[60]~input_o\,
	combout => \S~77_combout\);

-- Location: LCCOMB_X83_Y72_N26
\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\ = 
-- (\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\ & (P(59) & (\A[58]~input_o\ $ (\B[58]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:RIGHT|Gout[1]~0_combout\,
	datab => \A[58]~input_o\,
	datac => \B[58]~input_o\,
	datad => P(59),
	combout => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\);

-- Location: LCCOMB_X83_Y72_N28
\BKGenerator|Gout[60]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|Gout[60]~25_combout\ = (\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\) # 
-- ((\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~1_combout\) # (\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\,
	datac => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~1_combout\,
	datad => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\,
	combout => \BKGenerator|Gout[60]~25_combout\);

-- Location: LCCOMB_X84_Y72_N30
\BKGenerator|Gout[60]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|Gout[60]~26_combout\ = (P(59) & (\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~0_combout\ & ((\BKGenerator|recursive_generate:LEFT|G_combined~1_combout\) # (\BKGenerator|G_combined~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P(59),
	datab => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~0_combout\,
	datac => \BKGenerator|recursive_generate:LEFT|G_combined~1_combout\,
	datad => \BKGenerator|G_combined~8_combout\,
	combout => \BKGenerator|Gout[60]~26_combout\);

-- Location: LCCOMB_X87_Y72_N10
\BKGenerator|Gout[60]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|Gout[60]~27_combout\ = (\A[60]~input_o\ & ((\BKGenerator|Gout[60]~25_combout\) # ((\BKGenerator|Gout[60]~26_combout\) # (\B[60]~input_o\)))) # (!\A[60]~input_o\ & (\B[60]~input_o\ & ((\BKGenerator|Gout[60]~25_combout\) # 
-- (\BKGenerator|Gout[60]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[60]~input_o\,
	datab => \BKGenerator|Gout[60]~25_combout\,
	datac => \BKGenerator|Gout[60]~26_combout\,
	datad => \B[60]~input_o\,
	combout => \BKGenerator|Gout[60]~27_combout\);

-- Location: IOIBUF_X87_Y73_N8
\A[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(61),
	o => \A[61]~input_o\);

-- Location: IOIBUF_X87_Y73_N15
\B[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(61),
	o => \B[61]~input_o\);

-- Location: LCCOMB_X87_Y72_N4
\S~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~78_combout\ = \BKGenerator|Gout[60]~27_combout\ $ (\A[61]~input_o\ $ (\B[61]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|Gout[60]~27_combout\,
	datab => \A[61]~input_o\,
	datac => \B[61]~input_o\,
	combout => \S~78_combout\);

-- Location: LCCOMB_X87_Y72_N14
\BKGenerator|Gout[61]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|Gout[61]~28_combout\ = (\A[60]~input_o\ & (!\B[60]~input_o\ & (\A[61]~input_o\ $ (\B[61]~input_o\)))) # (!\A[60]~input_o\ & (\B[60]~input_o\ & (\A[61]~input_o\ $ (\B[61]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[60]~input_o\,
	datab => \A[61]~input_o\,
	datac => \B[61]~input_o\,
	datad => \B[60]~input_o\,
	combout => \BKGenerator|Gout[61]~28_combout\);

-- Location: IOIBUF_X74_Y73_N22
\B[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(62),
	o => \B[62]~input_o\);

-- Location: IOIBUF_X85_Y73_N1
\A[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(62),
	o => \A[62]~input_o\);

-- Location: LCCOMB_X83_Y72_N14
\P[62]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(62) = \B[62]~input_o\ $ (\A[62]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[62]~input_o\,
	datad => \A[62]~input_o\,
	combout => P(62));

-- Location: LCCOMB_X87_Y72_N24
\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\ = (\A[61]~input_o\ & ((\B[61]~input_o\) # ((\A[60]~input_o\ & \B[60]~input_o\)))) # (!\A[61]~input_o\ 
-- & (\A[60]~input_o\ & (\B[61]~input_o\ & \B[60]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[60]~input_o\,
	datab => \A[61]~input_o\,
	datac => \B[61]~input_o\,
	datad => \B[60]~input_o\,
	combout => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\);

-- Location: LCCOMB_X83_Y72_N16
\S~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~79_combout\ = P(62) $ (((\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\) # ((\BKGenerator|Gout[61]~28_combout\ & 
-- \BKGenerator|Gout[59]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|Gout[61]~28_combout\,
	datab => \BKGenerator|Gout[59]~24_combout\,
	datac => P(62),
	datad => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\,
	combout => \S~79_combout\);

-- Location: IOIBUF_X74_Y73_N15
\B[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(63),
	o => \B[63]~input_o\);

-- Location: IOIBUF_X81_Y73_N15
\A[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(63),
	o => \A[63]~input_o\);

-- Location: LCCOMB_X83_Y72_N12
\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~2_combout\ = (\BKGenerator|Gout[61]~28_combout\ & (\A[62]~input_o\ $ (\B[62]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[62]~input_o\,
	datac => \B[62]~input_o\,
	datad => \BKGenerator|Gout[61]~28_combout\,
	combout => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~2_combout\);

-- Location: LCCOMB_X83_Y72_N24
\BKGenerator|recursive_generate:LEFT|G_combined~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:LEFT|G_combined~2_combout\ = (\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~2_combout\ & (P(59) & 
-- (\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Pout[7]~2_combout\ & \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~2_combout\,
	datab => P(59),
	datac => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Pout[7]~2_combout\,
	datad => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~0_combout\,
	combout => \BKGenerator|recursive_generate:LEFT|G_combined~2_combout\);

-- Location: LCCOMB_X83_Y72_N6
\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~3_combout\ = 
-- (\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\ & (\BKGenerator|Gout[61]~28_combout\ & (\A[62]~input_o\ $ (\B[62]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[62]~input_o\,
	datab => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\,
	datac => \B[62]~input_o\,
	datad => \BKGenerator|Gout[61]~28_combout\,
	combout => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~3_combout\);

-- Location: LCCOMB_X83_Y72_N18
\BKGenerator|Gout[62]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|Gout[62]~29_combout\ = (\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~3_combout\) # 
-- ((\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\ & ((\B[62]~input_o\) # (\A[62]~input_o\))) # 
-- (!\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\ & (\B[62]~input_o\ & \A[62]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~3_combout\,
	datab => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\,
	datac => \B[62]~input_o\,
	datad => \A[62]~input_o\,
	combout => \BKGenerator|Gout[62]~29_combout\);

-- Location: LCCOMB_X83_Y72_N22
\BKGenerator|Gout[62]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|Gout[62]~30_combout\ = (\BKGenerator|Gout[62]~29_combout\) # ((\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~2_combout\ & 
-- ((\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\) # (\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\,
	datab => \BKGenerator|Gout[62]~29_combout\,
	datac => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~1_combout\,
	datad => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~2_combout\,
	combout => \BKGenerator|Gout[62]~30_combout\);

-- Location: LCCOMB_X82_Y72_N12
\BKGenerator|Gout[62]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|Gout[62]~31_combout\ = (\BKGenerator|Gout[62]~30_combout\) # ((\BKGenerator|recursive_generate:LEFT|G_combined~2_combout\ & ((\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|Gout\(15)) # (\BKGenerator|G_combined~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|Gout\(15),
	datab => \BKGenerator|recursive_generate:LEFT|G_combined~2_combout\,
	datac => \BKGenerator|Gout[62]~30_combout\,
	datad => \BKGenerator|G_combined~7_combout\,
	combout => \BKGenerator|Gout[62]~31_combout\);

-- Location: LCCOMB_X82_Y72_N2
\S~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~87_combout\ = \B[63]~input_o\ $ (\A[63]~input_o\ $ (\BKGenerator|Gout[62]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[63]~input_o\,
	datac => \A[63]~input_o\,
	datad => \BKGenerator|Gout[62]~31_combout\,
	combout => \S~87_combout\);

-- Location: LCCOMB_X82_Y72_N22
\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|Gout[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|Gout[1]~0_combout\ = (\A[63]~input_o\ & ((\B[63]~input_o\) # ((\B[62]~input_o\ & \A[62]~input_o\)))) # (!\A[63]~input_o\ & 
-- (\B[63]~input_o\ & (\B[62]~input_o\ & \A[62]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \B[63]~input_o\,
	datac => \B[62]~input_o\,
	datad => \A[62]~input_o\,
	combout => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|Gout[1]~0_combout\);

-- Location: LCCOMB_X83_Y72_N10
\BKGenerator|Gout[63]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|Gout[63]~32_combout\ = (\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\) # ((\BKGenerator|Gout[61]~28_combout\ & 
-- ((\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\) # (\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|G_combined~0_combout\,
	datab => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|Gout[1]~0_combout\,
	datac => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~1_combout\,
	datad => \BKGenerator|Gout[61]~28_combout\,
	combout => \BKGenerator|Gout[63]~32_combout\);

-- Location: LCCOMB_X83_Y72_N4
\BKGenerator|Gout[63]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|Gout[63]~33_combout\ = (\BKGenerator|Gout[63]~32_combout\ & ((P(62)) # ((\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\ & 
-- \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~2_combout\)))) # (!\BKGenerator|Gout[63]~32_combout\ & 
-- (\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\ & 
-- ((\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|Gout[63]~32_combout\,
	datab => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:RIGHT|recursive_generate:LEFT|Gout[1]~0_combout\,
	datac => P(62),
	datad => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|G_combined~2_combout\,
	combout => \BKGenerator|Gout[63]~33_combout\);

-- Location: LCCOMB_X82_Y72_N28
\BKGenerator|Gout[63]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|Gout[63]~34_combout\ = (\BKGenerator|Gout[63]~33_combout\) # ((\BKGenerator|recursive_generate:LEFT|G_combined~2_combout\ & ((\BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|Gout\(15)) # (\BKGenerator|G_combined~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|Gout[63]~33_combout\,
	datab => \BKGenerator|recursive_generate:LEFT|G_combined~2_combout\,
	datac => \BKGenerator|recursive_generate:LEFT|recursive_generate:RIGHT|Gout\(15),
	datad => \BKGenerator|G_combined~7_combout\,
	combout => \BKGenerator|Gout[63]~34_combout\);

-- Location: LCCOMB_X82_Y72_N6
\BKGenerator|Gout[63]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \BKGenerator|Gout[63]~35_combout\ = (\BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|Gout[1]~0_combout\) # ((\BKGenerator|Gout[63]~34_combout\ & (\B[63]~input_o\ $ 
-- (\A[63]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|recursive_generate:LEFT|Gout[1]~0_combout\,
	datab => \B[63]~input_o\,
	datac => \A[63]~input_o\,
	datad => \BKGenerator|Gout[63]~34_combout\,
	combout => \BKGenerator|Gout[63]~35_combout\);

-- Location: LCCOMB_X82_Y72_N0
\Ovfl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = \BKGenerator|Gout[62]~31_combout\ $ (\BKGenerator|Gout[63]~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BKGenerator|Gout[62]~31_combout\,
	datad => \BKGenerator|Gout[63]~35_combout\,
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


