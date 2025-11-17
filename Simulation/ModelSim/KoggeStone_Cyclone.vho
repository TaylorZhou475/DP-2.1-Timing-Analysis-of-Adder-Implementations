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

-- DATE "11/16/2025 15:39:45"

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

ENTITY 	KoggeStone IS
    PORT (
	A : IN std_logic_vector(63 DOWNTO 0);
	B : IN std_logic_vector(63 DOWNTO 0);
	Cin : IN std_logic;
	S : BUFFER std_logic_vector(63 DOWNTO 0);
	Cout : BUFFER std_logic;
	Ovfl : BUFFER std_logic
	);
END KoggeStone;

-- Design Ports Information
-- S[0]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[16]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[17]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[18]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[19]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[20]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[21]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[22]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[23]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[24]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[25]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[26]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[27]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[28]	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[29]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[30]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[31]	=>  Location: PIN_D27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[32]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[33]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[34]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[35]	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[36]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[37]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[38]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[39]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[40]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[41]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[42]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[43]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[44]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[45]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[46]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[47]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[48]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[49]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[50]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[51]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[52]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[53]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[54]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[55]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[56]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[57]	=>  Location: PIN_D28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[58]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[59]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[60]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[61]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[62]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[63]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_J23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_C27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[32]	=>  Location: PIN_J24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[32]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[33]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[33]	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[34]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[34]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[35]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[35]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[36]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[36]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[37]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[37]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[38]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[38]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[39]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[39]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[40]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[40]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[41]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[41]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[42]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[42]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[43]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[43]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[44]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[44]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[45]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[45]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[46]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[46]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[47]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[47]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[48]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[48]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[49]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[49]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[50]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[50]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[51]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[51]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[52]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[52]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[53]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[53]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[54]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[54]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[55]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[55]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[56]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[56]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[57]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[57]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[58]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[58]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[59]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[59]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[60]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[60]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[61]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[61]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[62]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[62]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[63]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[63]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF KoggeStone IS
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
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \S~12_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \S~13_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \carry[9]~4_combout\ : std_logic;
SIGNAL \G_array[6][1]~8_combout\ : std_logic;
SIGNAL \S~14_combout\ : std_logic;
SIGNAL \carry~5_combout\ : std_logic;
SIGNAL \G_array~10_combout\ : std_logic;
SIGNAL \G_array[1][2]~9_combout\ : std_logic;
SIGNAL \G_array[6][4]~11_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \S~15_combout\ : std_logic;
SIGNAL \P_array[6][3]~30_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \G_array[1][3]~12_combout\ : std_logic;
SIGNAL \G_array[6][3]~combout\ : std_logic;
SIGNAL \S~16_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \G_array[3][8]~13_combout\ : std_logic;
SIGNAL \carry~6_combout\ : std_logic;
SIGNAL \G_array[1][4]~14_combout\ : std_logic;
SIGNAL \carry[5]~7_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \S~90_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \G_array[1][5]~16_combout\ : std_logic;
SIGNAL \G_array[3][9]~17_combout\ : std_logic;
SIGNAL \G_array~15_combout\ : std_logic;
SIGNAL \carry[6]~8_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \S~91_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \carry~9_combout\ : std_logic;
SIGNAL \G_array[1][6]~18_combout\ : std_logic;
SIGNAL \G_array[6][6]~19_combout\ : std_logic;
SIGNAL \G_array~238_combout\ : std_logic;
SIGNAL \G_array[6][6]~combout\ : std_logic;
SIGNAL \S~17_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \G_array[1][7]~21_combout\ : std_logic;
SIGNAL \G_array[6][7]~22_combout\ : std_logic;
SIGNAL \G_array~20_combout\ : std_logic;
SIGNAL \G_array[6][7]~combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \carry~10_combout\ : std_logic;
SIGNAL \S~92_combout\ : std_logic;
SIGNAL \G_array~23_combout\ : std_logic;
SIGNAL \P_array[2][8]~31_combout\ : std_logic;
SIGNAL \carry[25]~11_combout\ : std_logic;
SIGNAL \carry[25]~12_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \G_array[1][8]~25_combout\ : std_logic;
SIGNAL \G_array[3][8]~26_combout\ : std_logic;
SIGNAL \G_array[3][8]~24_combout\ : std_logic;
SIGNAL \G_array[3][8]~27_combout\ : std_logic;
SIGNAL \S~93_combout\ : std_logic;
SIGNAL \G_array[1][9]~28_combout\ : std_logic;
SIGNAL \G_array[3][9]~29_combout\ : std_logic;
SIGNAL \P_array[2][9]~32_combout\ : std_logic;
SIGNAL \G_array[3][9]~30_combout\ : std_logic;
SIGNAL \carry[10]~13_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \S~94_combout\ : std_logic;
SIGNAL \P_array[2][10]~33_combout\ : std_logic;
SIGNAL \carry~152_combout\ : std_logic;
SIGNAL \carry[11]~14_combout\ : std_logic;
SIGNAL \G_array[1][10]~31_combout\ : std_logic;
SIGNAL \G_array[3][10]~32_combout\ : std_logic;
SIGNAL \carry[27]~15_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \S~18_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \G_array[1][11]~34_combout\ : std_logic;
SIGNAL \G_array~33_combout\ : std_logic;
SIGNAL \G_array[3][11]~35_combout\ : std_logic;
SIGNAL \P_array[2][11]~34_combout\ : std_logic;
SIGNAL \G_array[3][11]~36_combout\ : std_logic;
SIGNAL \carry[28]~16_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \S~19_combout\ : std_logic;
SIGNAL \G_array[1][12]~38_combout\ : std_logic;
SIGNAL \G_array~37_combout\ : std_logic;
SIGNAL \G_array[3][12]~39_combout\ : std_logic;
SIGNAL \P_array[2][12]~85_combout\ : std_logic;
SIGNAL \G_array[3][12]~40_combout\ : std_logic;
SIGNAL \carry[37]~17_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \S~20_combout\ : std_logic;
SIGNAL \carry[22]~18_combout\ : std_logic;
SIGNAL \G_array~41_combout\ : std_logic;
SIGNAL \G_array[1][13]~42_combout\ : std_logic;
SIGNAL \G_array[3][13]~43_combout\ : std_logic;
SIGNAL \G_array[3][13]~44_combout\ : std_logic;
SIGNAL \carry[38]~19_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \S~21_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \G_array~45_combout\ : std_logic;
SIGNAL \G_array[1][14]~46_combout\ : std_logic;
SIGNAL \G_array[3][14]~47_combout\ : std_logic;
SIGNAL \G_array[3][14]~48_combout\ : std_logic;
SIGNAL \G_array[6][30]~49_combout\ : std_logic;
SIGNAL \carry[39]~20_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \S~22_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \G_array~50_combout\ : std_logic;
SIGNAL \G_array[1][15]~51_combout\ : std_logic;
SIGNAL \G_array[3][15]~52_combout\ : std_logic;
SIGNAL \G_array[3][15]~53_combout\ : std_logic;
SIGNAL \carry~21_combout\ : std_logic;
SIGNAL \carry[16]~22_combout\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \S~23_combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \G_array~54_combout\ : std_logic;
SIGNAL \G_array~58_combout\ : std_logic;
SIGNAL \G_array[1][16]~55_combout\ : std_logic;
SIGNAL \G_array[3][16]~56_combout\ : std_logic;
SIGNAL \G_array[3][16]~57_combout\ : std_logic;
SIGNAL \carry[17]~23_combout\ : std_logic;
SIGNAL \S~24_combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \G_array~59_combout\ : std_logic;
SIGNAL \G_array~63_combout\ : std_logic;
SIGNAL \G_array[1][17]~60_combout\ : std_logic;
SIGNAL \G_array[3][17]~61_combout\ : std_logic;
SIGNAL \G_array[3][17]~62_combout\ : std_logic;
SIGNAL \carry[18]~24_combout\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \S~25_combout\ : std_logic;
SIGNAL \G_array~64_combout\ : std_logic;
SIGNAL \G_array~68_combout\ : std_logic;
SIGNAL \G_array~69_combout\ : std_logic;
SIGNAL \G_array[1][18]~65_combout\ : std_logic;
SIGNAL \G_array[3][18]~66_combout\ : std_logic;
SIGNAL \G_array[3][18]~67_combout\ : std_logic;
SIGNAL \carry[19]~25_combout\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \S~26_combout\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \G_array~70_combout\ : std_logic;
SIGNAL \G_array~71_combout\ : std_logic;
SIGNAL \carry[36]~26_combout\ : std_logic;
SIGNAL \G_array[1][19]~72_combout\ : std_logic;
SIGNAL \G_array[3][19]~73_combout\ : std_logic;
SIGNAL \G_array[3][19]~74_combout\ : std_logic;
SIGNAL \carry[20]~27_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \S~27_combout\ : std_logic;
SIGNAL \G_array~75_combout\ : std_logic;
SIGNAL \carry[21]~28_combout\ : std_logic;
SIGNAL \carry[21]~29_combout\ : std_logic;
SIGNAL \G_array~79_combout\ : std_logic;
SIGNAL \G_array[1][20]~76_combout\ : std_logic;
SIGNAL \G_array[3][20]~77_combout\ : std_logic;
SIGNAL \G_array[3][20]~78_combout\ : std_logic;
SIGNAL \carry[21]~30_combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \S~28_combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \G_array~80_combout\ : std_logic;
SIGNAL \G_array~84_combout\ : std_logic;
SIGNAL \carry[22]~31_combout\ : std_logic;
SIGNAL \G_array[1][21]~81_combout\ : std_logic;
SIGNAL \G_array[3][21]~82_combout\ : std_logic;
SIGNAL \G_array[3][21]~83_combout\ : std_logic;
SIGNAL \carry[22]~32_combout\ : std_logic;
SIGNAL \S~29_combout\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \G_array~85_combout\ : std_logic;
SIGNAL \G_array~89_combout\ : std_logic;
SIGNAL \G_array[1][22]~86_combout\ : std_logic;
SIGNAL \G_array[3][22]~87_combout\ : std_logic;
SIGNAL \G_array[3][22]~88_combout\ : std_logic;
SIGNAL \P_array[2][22]~35_combout\ : std_logic;
SIGNAL \carry[23]~33_combout\ : std_logic;
SIGNAL \carry[23]~34_combout\ : std_logic;
SIGNAL \S~30_combout\ : std_logic;
SIGNAL \G_array~90_combout\ : std_logic;
SIGNAL \G_array~94_combout\ : std_logic;
SIGNAL \carry[40]~35_combout\ : std_logic;
SIGNAL \carry[40]~36_combout\ : std_logic;
SIGNAL \G_array[1][23]~91_combout\ : std_logic;
SIGNAL \G_array[3][23]~92_combout\ : std_logic;
SIGNAL \G_array[3][23]~93_combout\ : std_logic;
SIGNAL \carry[24]~37_combout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \S~31_combout\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \G_array~95_combout\ : std_logic;
SIGNAL \G_array~99_combout\ : std_logic;
SIGNAL \G_array[1][24]~96_combout\ : std_logic;
SIGNAL \G_array[3][24]~97_combout\ : std_logic;
SIGNAL \G_array[3][24]~98_combout\ : std_logic;
SIGNAL \carry[41]~38_combout\ : std_logic;
SIGNAL \carry[25]~39_combout\ : std_logic;
SIGNAL \S~32_combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \G_array~100_combout\ : std_logic;
SIGNAL \G_array~104_combout\ : std_logic;
SIGNAL \carry[42]~40_combout\ : std_logic;
SIGNAL \G_array[1][25]~101_combout\ : std_logic;
SIGNAL \G_array[3][25]~102_combout\ : std_logic;
SIGNAL \G_array[3][25]~103_combout\ : std_logic;
SIGNAL \carry[26]~41_combout\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \S~33_combout\ : std_logic;
SIGNAL \G_array~105_combout\ : std_logic;
SIGNAL \G_array~109_combout\ : std_logic;
SIGNAL \carry[43]~42_combout\ : std_logic;
SIGNAL \G_array[1][26]~106_combout\ : std_logic;
SIGNAL \G_array[3][26]~107_combout\ : std_logic;
SIGNAL \G_array[3][26]~108_combout\ : std_logic;
SIGNAL \carry[27]~43_combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \S~34_combout\ : std_logic;
SIGNAL \G_array~110_combout\ : std_logic;
SIGNAL \G_array~114_combout\ : std_logic;
SIGNAL \carry[44]~44_combout\ : std_logic;
SIGNAL \G_array[1][27]~111_combout\ : std_logic;
SIGNAL \G_array[3][27]~112_combout\ : std_logic;
SIGNAL \G_array[3][27]~113_combout\ : std_logic;
SIGNAL \carry[28]~45_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \S~35_combout\ : std_logic;
SIGNAL \G_array~115_combout\ : std_logic;
SIGNAL \G_array~119_combout\ : std_logic;
SIGNAL \P_array[4][28]~36_combout\ : std_logic;
SIGNAL \carry[13]~47_combout\ : std_logic;
SIGNAL \G_array[1][28]~116_combout\ : std_logic;
SIGNAL \G_array[3][28]~117_combout\ : std_logic;
SIGNAL \G_array[3][28]~118_combout\ : std_logic;
SIGNAL \carry[29]~46_combout\ : std_logic;
SIGNAL \carry[29]~48_combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \S~36_combout\ : std_logic;
SIGNAL \G_array~120_combout\ : std_logic;
SIGNAL \P_array[2][29]~37_combout\ : std_logic;
SIGNAL \P_array[4][29]~38_combout\ : std_logic;
SIGNAL \G_array~123_combout\ : std_logic;
SIGNAL \carry[30]~49_combout\ : std_logic;
SIGNAL \G_array[1][29]~121_combout\ : std_logic;
SIGNAL \G_array[3][29]~122_combout\ : std_logic;
SIGNAL \G_array[3][29]~239_combout\ : std_logic;
SIGNAL \carry[30]~50_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \S~37_combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \G_array~124_combout\ : std_logic;
SIGNAL \G_array~128_combout\ : std_logic;
SIGNAL \P_array[4][30]~39_combout\ : std_logic;
SIGNAL \carry~51_combout\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \G_array[1][30]~125_combout\ : std_logic;
SIGNAL \G_array[3][30]~126_combout\ : std_logic;
SIGNAL \G_array[3][30]~127_combout\ : std_logic;
SIGNAL \G_array[6][30]~129_combout\ : std_logic;
SIGNAL \G_array[6][30]~130_combout\ : std_logic;
SIGNAL \S~95_combout\ : std_logic;
SIGNAL \P_array[2][31]~40_combout\ : std_logic;
SIGNAL \P_array[4][31]~41_combout\ : std_logic;
SIGNAL \B[32]~input_o\ : std_logic;
SIGNAL \A[32]~input_o\ : std_logic;
SIGNAL \G_array~131_combout\ : std_logic;
SIGNAL \G_array[1][31]~132_combout\ : std_logic;
SIGNAL \G_array[3][31]~133_combout\ : std_logic;
SIGNAL \G_array[3][31]~134_combout\ : std_logic;
SIGNAL \G_array~135_combout\ : std_logic;
SIGNAL \G_array[6][31]~136_combout\ : std_logic;
SIGNAL \G_array[6][31]~combout\ : std_logic;
SIGNAL \carry~52_combout\ : std_logic;
SIGNAL \S~38_combout\ : std_logic;
SIGNAL \P_array[2][32]~86_combout\ : std_logic;
SIGNAL \G_array~137_combout\ : std_logic;
SIGNAL \G_array[1][32]~138_combout\ : std_logic;
SIGNAL \G_array[3][32]~139_combout\ : std_logic;
SIGNAL \carry[33]~53_combout\ : std_logic;
SIGNAL \S~39_combout\ : std_logic;
SIGNAL \S~40_combout\ : std_logic;
SIGNAL \B[33]~input_o\ : std_logic;
SIGNAL \A[33]~input_o\ : std_logic;
SIGNAL \P_array[4][32]~42_combout\ : std_logic;
SIGNAL \S~41_combout\ : std_logic;
SIGNAL \carry[34]~54_combout\ : std_logic;
SIGNAL \P_array[2][33]~87_combout\ : std_logic;
SIGNAL \P_array[4][33]~88_combout\ : std_logic;
SIGNAL \carry[34]~55_combout\ : std_logic;
SIGNAL \G_array~240_combout\ : std_logic;
SIGNAL \G_array[1][33]~140_combout\ : std_logic;
SIGNAL \G_array[3][33]~141_combout\ : std_logic;
SIGNAL \G_array[3][33]~142_combout\ : std_logic;
SIGNAL \A[34]~input_o\ : std_logic;
SIGNAL \B[34]~input_o\ : std_logic;
SIGNAL \S~42_combout\ : std_logic;
SIGNAL \B[35]~input_o\ : std_logic;
SIGNAL \A[35]~input_o\ : std_logic;
SIGNAL \P_array[2][34]~43_combout\ : std_logic;
SIGNAL \G_array[1][34]~143_combout\ : std_logic;
SIGNAL \G_array[3][34]~144_combout\ : std_logic;
SIGNAL \G_array[3][34]~145_combout\ : std_logic;
SIGNAL \G_array~146_combout\ : std_logic;
SIGNAL \carry[35]~56_combout\ : std_logic;
SIGNAL \P_array[4][34]~44_combout\ : std_logic;
SIGNAL \carry[35]~57_combout\ : std_logic;
SIGNAL \S~43_combout\ : std_logic;
SIGNAL \P_array[2][35]~45_combout\ : std_logic;
SIGNAL \G_array[1][35]~148_combout\ : std_logic;
SIGNAL \G_array[3][35]~149_combout\ : std_logic;
SIGNAL \G_array[3][35]~150_combout\ : std_logic;
SIGNAL \B[36]~input_o\ : std_logic;
SIGNAL \A[36]~input_o\ : std_logic;
SIGNAL \G_array~147_combout\ : std_logic;
SIGNAL \P_array[4][35]~46_combout\ : std_logic;
SIGNAL \carry[36]~58_combout\ : std_logic;
SIGNAL \G_array~151_combout\ : std_logic;
SIGNAL \S~44_combout\ : std_logic;
SIGNAL \P_array[2][36]~47_combout\ : std_logic;
SIGNAL \P_array[4][36]~48_combout\ : std_logic;
SIGNAL \G_array~155_combout\ : std_logic;
SIGNAL \G_array[1][36]~152_combout\ : std_logic;
SIGNAL \G_array[3][36]~153_combout\ : std_logic;
SIGNAL \G_array[3][36]~154_combout\ : std_logic;
SIGNAL \P_array[4][36]~49_combout\ : std_logic;
SIGNAL \carry[37]~60_combout\ : std_logic;
SIGNAL \A[37]~input_o\ : std_logic;
SIGNAL \B[37]~input_o\ : std_logic;
SIGNAL \carry[37]~59_combout\ : std_logic;
SIGNAL \S~45_combout\ : std_logic;
SIGNAL \G_array~159_combout\ : std_logic;
SIGNAL \P_array[4][37]~51_combout\ : std_logic;
SIGNAL \P_array[4][37]~52_combout\ : std_logic;
SIGNAL \G_array[1][37]~156_combout\ : std_logic;
SIGNAL \G_array[3][37]~157_combout\ : std_logic;
SIGNAL \P_array[2][37]~50_combout\ : std_logic;
SIGNAL \G_array[3][37]~158_combout\ : std_logic;
SIGNAL \G_array~160_combout\ : std_logic;
SIGNAL \carry[38]~61_combout\ : std_logic;
SIGNAL \carry[38]~62_combout\ : std_logic;
SIGNAL \A[38]~input_o\ : std_logic;
SIGNAL \B[38]~input_o\ : std_logic;
SIGNAL \S~46_combout\ : std_logic;
SIGNAL \B[39]~input_o\ : std_logic;
SIGNAL \G_array~161_combout\ : std_logic;
SIGNAL \P_array[2][38]~89_combout\ : std_logic;
SIGNAL \P_array[4][38]~54_combout\ : std_logic;
SIGNAL \G_array~165_combout\ : std_logic;
SIGNAL \G_array[1][38]~162_combout\ : std_logic;
SIGNAL \G_array[3][38]~163_combout\ : std_logic;
SIGNAL \G_array[3][38]~164_combout\ : std_logic;
SIGNAL \carry[39]~64_combout\ : std_logic;
SIGNAL \A[39]~input_o\ : std_logic;
SIGNAL \P_array[4][38]~53_combout\ : std_logic;
SIGNAL \carry[39]~63_combout\ : std_logic;
SIGNAL \S~47_combout\ : std_logic;
SIGNAL \B[40]~input_o\ : std_logic;
SIGNAL \G_array~166_combout\ : std_logic;
SIGNAL \P_array[4][39]~55_combout\ : std_logic;
SIGNAL \P_array[4][39]~56_combout\ : std_logic;
SIGNAL \S~48_combout\ : std_logic;
SIGNAL \G_array[1][39]~167_combout\ : std_logic;
SIGNAL \G_array[3][39]~168_combout\ : std_logic;
SIGNAL \G_array[3][39]~169_combout\ : std_logic;
SIGNAL \A[40]~input_o\ : std_logic;
SIGNAL \S~49_combout\ : std_logic;
SIGNAL \A[41]~input_o\ : std_logic;
SIGNAL \B[41]~input_o\ : std_logic;
SIGNAL \S~51_combout\ : std_logic;
SIGNAL \G_array~170_combout\ : std_logic;
SIGNAL \P_array[2][40]~57_combout\ : std_logic;
SIGNAL \P_array[4][40]~58_combout\ : std_logic;
SIGNAL \G_array[1][40]~171_combout\ : std_logic;
SIGNAL \G_array[3][40]~172_combout\ : std_logic;
SIGNAL \G_array~173_combout\ : std_logic;
SIGNAL \S~50_combout\ : std_logic;
SIGNAL \S~52_combout\ : std_logic;
SIGNAL \B[42]~input_o\ : std_logic;
SIGNAL \A[42]~input_o\ : std_logic;
SIGNAL \S~54_combout\ : std_logic;
SIGNAL \G_array~174_combout\ : std_logic;
SIGNAL \P_array[2][41]~59_combout\ : std_logic;
SIGNAL \G_array~177_combout\ : std_logic;
SIGNAL \G_array[1][41]~175_combout\ : std_logic;
SIGNAL \G_array[3][41]~176_combout\ : std_logic;
SIGNAL \S~53_combout\ : std_logic;
SIGNAL \P_array[4][41]~60_combout\ : std_logic;
SIGNAL \S~55_combout\ : std_logic;
SIGNAL \S~57_combout\ : std_logic;
SIGNAL \P_array[2][42]~61_combout\ : std_logic;
SIGNAL \P_array[4][42]~62_combout\ : std_logic;
SIGNAL \G_array[1][42]~178_combout\ : std_logic;
SIGNAL \G_array[3][42]~179_combout\ : std_logic;
SIGNAL \G_array[3][42]~180_combout\ : std_logic;
SIGNAL \S~56_combout\ : std_logic;
SIGNAL \A[43]~input_o\ : std_logic;
SIGNAL \B[43]~input_o\ : std_logic;
SIGNAL \S~58_combout\ : std_logic;
SIGNAL \P_array[2][43]~90_combout\ : std_logic;
SIGNAL \P_array[4][43]~63_combout\ : std_logic;
SIGNAL \G_array[1][43]~182_combout\ : std_logic;
SIGNAL \G_array[3][43]~183_combout\ : std_logic;
SIGNAL \G_array[3][43]~184_combout\ : std_logic;
SIGNAL \G_array~181_combout\ : std_logic;
SIGNAL \S~59_combout\ : std_logic;
SIGNAL \B[44]~input_o\ : std_logic;
SIGNAL \A[44]~input_o\ : std_logic;
SIGNAL \S~60_combout\ : std_logic;
SIGNAL \S~61_combout\ : std_logic;
SIGNAL \P_array[2][44]~64_combout\ : std_logic;
SIGNAL \P_array[4][44]~65_combout\ : std_logic;
SIGNAL \carry[45]~65_combout\ : std_logic;
SIGNAL \B[45]~input_o\ : std_logic;
SIGNAL \A[45]~input_o\ : std_logic;
SIGNAL \carry[45]~66_combout\ : std_logic;
SIGNAL \carry[45]~67_combout\ : std_logic;
SIGNAL \G_array[1][44]~185_combout\ : std_logic;
SIGNAL \G_array[3][44]~186_combout\ : std_logic;
SIGNAL \G_array[3][44]~187_combout\ : std_logic;
SIGNAL \S~62_combout\ : std_logic;
SIGNAL \S~64_combout\ : std_logic;
SIGNAL \P_array[2][45]~66_combout\ : std_logic;
SIGNAL \G_array[1][45]~188_combout\ : std_logic;
SIGNAL \G_array[3][45]~189_combout\ : std_logic;
SIGNAL \G_array[3][45]~190_combout\ : std_logic;
SIGNAL \S~63_combout\ : std_logic;
SIGNAL \A[46]~input_o\ : std_logic;
SIGNAL \B[46]~input_o\ : std_logic;
SIGNAL \P_array[4][45]~67_combout\ : std_logic;
SIGNAL \S~65_combout\ : std_logic;
SIGNAL \G_array~195_combout\ : std_logic;
SIGNAL \P_array[2][46]~68_combout\ : std_logic;
SIGNAL \P_array[4][46]~69_combout\ : std_logic;
SIGNAL \G_array~194_combout\ : std_logic;
SIGNAL \carry[47]~69_combout\ : std_logic;
SIGNAL \G_array[1][46]~191_combout\ : std_logic;
SIGNAL \G_array[3][46]~192_combout\ : std_logic;
SIGNAL \G_array[3][46]~193_combout\ : std_logic;
SIGNAL \A[47]~input_o\ : std_logic;
SIGNAL \B[47]~input_o\ : std_logic;
SIGNAL \carry[47]~68_combout\ : std_logic;
SIGNAL \S~66_combout\ : std_logic;
SIGNAL \A[48]~input_o\ : std_logic;
SIGNAL \B[48]~input_o\ : std_logic;
SIGNAL \P_array[2][47]~70_combout\ : std_logic;
SIGNAL \G_array~196_combout\ : std_logic;
SIGNAL \G_array[1][47]~197_combout\ : std_logic;
SIGNAL \G_array[3][47]~198_combout\ : std_logic;
SIGNAL \G_array[3][47]~199_combout\ : std_logic;
SIGNAL \carry[48]~70_combout\ : std_logic;
SIGNAL \S~68_combout\ : std_logic;
SIGNAL \S~67_combout\ : std_logic;
SIGNAL \S~69_combout\ : std_logic;
SIGNAL \P_array[2][48]~71_combout\ : std_logic;
SIGNAL \carry[49]~71_combout\ : std_logic;
SIGNAL \carry[49]~72_combout\ : std_logic;
SIGNAL \carry[49]~73_combout\ : std_logic;
SIGNAL \G_array~200_combout\ : std_logic;
SIGNAL \carry[49]~74_combout\ : std_logic;
SIGNAL \G_array[1][48]~201_combout\ : std_logic;
SIGNAL \G_array[3][48]~202_combout\ : std_logic;
SIGNAL \G_array[3][48]~203_combout\ : std_logic;
SIGNAL \carry[49]~75_combout\ : std_logic;
SIGNAL \A[49]~input_o\ : std_logic;
SIGNAL \B[49]~input_o\ : std_logic;
SIGNAL \S~70_combout\ : std_logic;
SIGNAL \P_array[2][49]~72_combout\ : std_logic;
SIGNAL \S~71_combout\ : std_logic;
SIGNAL \carry[50]~77_combout\ : std_logic;
SIGNAL \G_array[1][49]~204_combout\ : std_logic;
SIGNAL \G_array[3][49]~205_combout\ : std_logic;
SIGNAL \G_array[3][49]~206_combout\ : std_logic;
SIGNAL \S~72_combout\ : std_logic;
SIGNAL \carry[50]~76_combout\ : std_logic;
SIGNAL \A[50]~input_o\ : std_logic;
SIGNAL \B[50]~input_o\ : std_logic;
SIGNAL \S~73_combout\ : std_logic;
SIGNAL \P_array[2][50]~73_combout\ : std_logic;
SIGNAL \G_array[1][50]~207_combout\ : std_logic;
SIGNAL \G_array[3][50]~208_combout\ : std_logic;
SIGNAL \G_array[3][50]~209_combout\ : std_logic;
SIGNAL \carry[51]~80_combout\ : std_logic;
SIGNAL \carry[51]~81_combout\ : std_logic;
SIGNAL \carry[51]~78_combout\ : std_logic;
SIGNAL \carry[51]~82_combout\ : std_logic;
SIGNAL \A[51]~input_o\ : std_logic;
SIGNAL \B[51]~input_o\ : std_logic;
SIGNAL \carry[51]~79_combout\ : std_logic;
SIGNAL \S~74_combout\ : std_logic;
SIGNAL \B[52]~input_o\ : std_logic;
SIGNAL \A[52]~input_o\ : std_logic;
SIGNAL \P_array[2][51]~74_combout\ : std_logic;
SIGNAL \carry[52]~85_combout\ : std_logic;
SIGNAL \G_array[1][51]~210_combout\ : std_logic;
SIGNAL \G_array[3][51]~211_combout\ : std_logic;
SIGNAL \G_array[3][51]~212_combout\ : std_logic;
SIGNAL \carry[52]~83_combout\ : std_logic;
SIGNAL \carry[52]~84_combout\ : std_logic;
SIGNAL \carry[52]~86_combout\ : std_logic;
SIGNAL \carry[52]~87_combout\ : std_logic;
SIGNAL \S~75_combout\ : std_logic;
SIGNAL \G_array~213_combout\ : std_logic;
SIGNAL \P_array[2][52]~91_combout\ : std_logic;
SIGNAL \carry[57]~88_combout\ : std_logic;
SIGNAL \S~77_combout\ : std_logic;
SIGNAL \A[53]~input_o\ : std_logic;
SIGNAL \B[53]~input_o\ : std_logic;
SIGNAL \G_array[1][52]~214_combout\ : std_logic;
SIGNAL \G_array[3][52]~215_combout\ : std_logic;
SIGNAL \G_array[3][52]~216_combout\ : std_logic;
SIGNAL \S~76_combout\ : std_logic;
SIGNAL \S~78_combout\ : std_logic;
SIGNAL \P_array[2][53]~92_combout\ : std_logic;
SIGNAL \G_array~218_combout\ : std_logic;
SIGNAL \G_array[1][53]~217_combout\ : std_logic;
SIGNAL \G_array[3][53]~219_combout\ : std_logic;
SIGNAL \carry[54]~89_combout\ : std_logic;
SIGNAL \carry[58]~90_combout\ : std_logic;
SIGNAL \carry[54]~91_combout\ : std_logic;
SIGNAL \carry[54]~92_combout\ : std_logic;
SIGNAL \A[54]~input_o\ : std_logic;
SIGNAL \B[54]~input_o\ : std_logic;
SIGNAL \S~79_combout\ : std_logic;
SIGNAL \P_array[2][54]~75_combout\ : std_logic;
SIGNAL \G_array~221_combout\ : std_logic;
SIGNAL \G_array~222_combout\ : std_logic;
SIGNAL \G_array[1][54]~220_combout\ : std_logic;
SIGNAL \G_array[3][54]~223_combout\ : std_logic;
SIGNAL \carry[55]~93_combout\ : std_logic;
SIGNAL \A[55]~input_o\ : std_logic;
SIGNAL \B[55]~input_o\ : std_logic;
SIGNAL \carry[55]~95_combout\ : std_logic;
SIGNAL \carry[55]~94_combout\ : std_logic;
SIGNAL \carry[55]~96_combout\ : std_logic;
SIGNAL \carry[55]~97_combout\ : std_logic;
SIGNAL \S~80_combout\ : std_logic;
SIGNAL \A[56]~input_o\ : std_logic;
SIGNAL \B[56]~input_o\ : std_logic;
SIGNAL \G_array~224_combout\ : std_logic;
SIGNAL \P_array[2][55]~76_combout\ : std_logic;
SIGNAL \carry[56]~98_combout\ : std_logic;
SIGNAL \carry[56]~100_combout\ : std_logic;
SIGNAL \S~81_combout\ : std_logic;
SIGNAL \G_array[1][55]~225_combout\ : std_logic;
SIGNAL \G_array~226_combout\ : std_logic;
SIGNAL \G_array[3][55]~227_combout\ : std_logic;
SIGNAL \carry[56]~99_combout\ : std_logic;
SIGNAL \S~82_combout\ : std_logic;
SIGNAL \B[57]~input_o\ : std_logic;
SIGNAL \P_array[2][56]~77_combout\ : std_logic;
SIGNAL \G_array~229_combout\ : std_logic;
SIGNAL \G_array[1][56]~228_combout\ : std_logic;
SIGNAL \carry[57]~101_combout\ : std_logic;
SIGNAL \carry[57]~102_combout\ : std_logic;
SIGNAL \carry[57]~103_combout\ : std_logic;
SIGNAL \A[57]~input_o\ : std_logic;
SIGNAL \carry[57]~104_combout\ : std_logic;
SIGNAL \carry[57]~105_combout\ : std_logic;
SIGNAL \carry[57]~106_combout\ : std_logic;
SIGNAL \carry[57]~107_combout\ : std_logic;
SIGNAL \S~83_combout\ : std_logic;
SIGNAL \B[58]~input_o\ : std_logic;
SIGNAL \P_array[2][59]~78_combout\ : std_logic;
SIGNAL \carry[58]~109_combout\ : std_logic;
SIGNAL \carry[58]~110_combout\ : std_logic;
SIGNAL \carry[58]~111_combout\ : std_logic;
SIGNAL \carry[58]~112_combout\ : std_logic;
SIGNAL \A[58]~input_o\ : std_logic;
SIGNAL \carry[58]~108_combout\ : std_logic;
SIGNAL \G_array[1][57]~230_combout\ : std_logic;
SIGNAL \carry[58]~153_combout\ : std_logic;
SIGNAL \carry[58]~154_combout\ : std_logic;
SIGNAL \S~84_combout\ : std_logic;
SIGNAL \A[59]~input_o\ : std_logic;
SIGNAL \B[59]~input_o\ : std_logic;
SIGNAL \P_array[1][58]~combout\ : std_logic;
SIGNAL \P_array[2][58]~79_combout\ : std_logic;
SIGNAL \carry[59]~113_combout\ : std_logic;
SIGNAL \carry[59]~114_combout\ : std_logic;
SIGNAL \G_array[1][58]~231_combout\ : std_logic;
SIGNAL \carry[59]~115_combout\ : std_logic;
SIGNAL \carry[59]~118_combout\ : std_logic;
SIGNAL \carry[59]~116_combout\ : std_logic;
SIGNAL \carry[59]~117_combout\ : std_logic;
SIGNAL \carry[59]~119_combout\ : std_logic;
SIGNAL \S~85_combout\ : std_logic;
SIGNAL \G_array[1][59]~232_combout\ : std_logic;
SIGNAL \P_array[1][59]~combout\ : std_logic;
SIGNAL \carry[60]~121_combout\ : std_logic;
SIGNAL \P_array[2][59]~80_combout\ : std_logic;
SIGNAL \carry[60]~122_combout\ : std_logic;
SIGNAL \B[60]~input_o\ : std_logic;
SIGNAL \A[60]~input_o\ : std_logic;
SIGNAL \carry[60]~123_combout\ : std_logic;
SIGNAL \carry[60]~124_combout\ : std_logic;
SIGNAL \carry[60]~125_combout\ : std_logic;
SIGNAL \carry[60]~126_combout\ : std_logic;
SIGNAL \carry[60]~120_combout\ : std_logic;
SIGNAL \S~86_combout\ : std_logic;
SIGNAL \P_array[1][60]~combout\ : std_logic;
SIGNAL \carry[61]~132_combout\ : std_logic;
SIGNAL \carry[61]~131_combout\ : std_logic;
SIGNAL \carry[61]~133_combout\ : std_logic;
SIGNAL \A[61]~input_o\ : std_logic;
SIGNAL \B[61]~input_o\ : std_logic;
SIGNAL \carry[61]~129_combout\ : std_logic;
SIGNAL \G_array[1][60]~233_combout\ : std_logic;
SIGNAL \carry[61]~127_combout\ : std_logic;
SIGNAL \carry[61]~128_combout\ : std_logic;
SIGNAL \carry[61]~130_combout\ : std_logic;
SIGNAL \S~87_combout\ : std_logic;
SIGNAL \A[62]~input_o\ : std_logic;
SIGNAL \P_array[1][61]~combout\ : std_logic;
SIGNAL \carry[62]~140_combout\ : std_logic;
SIGNAL \carry[62]~138_combout\ : std_logic;
SIGNAL \carry[62]~139_combout\ : std_logic;
SIGNAL \carry[62]~141_combout\ : std_logic;
SIGNAL \B[62]~input_o\ : std_logic;
SIGNAL \carry[62]~136_combout\ : std_logic;
SIGNAL \carry[62]~134_combout\ : std_logic;
SIGNAL \G_array[1][61]~234_combout\ : std_logic;
SIGNAL \carry[62]~135_combout\ : std_logic;
SIGNAL \carry[62]~137_combout\ : std_logic;
SIGNAL \S~88_combout\ : std_logic;
SIGNAL \A[63]~input_o\ : std_logic;
SIGNAL \B[63]~input_o\ : std_logic;
SIGNAL \P_array[4][62]~81_combout\ : std_logic;
SIGNAL \carry[63]~144_combout\ : std_logic;
SIGNAL \P_array[4][62]~82_combout\ : std_logic;
SIGNAL \G_array~236_combout\ : std_logic;
SIGNAL \G_array[1][62]~235_combout\ : std_logic;
SIGNAL \carry[63]~142_combout\ : std_logic;
SIGNAL \carry[63]~143_combout\ : std_logic;
SIGNAL \carry[63]~145_combout\ : std_logic;
SIGNAL \S~89_combout\ : std_logic;
SIGNAL \P_array[4][63]~83_combout\ : std_logic;
SIGNAL \P_array[4][63]~84_combout\ : std_logic;
SIGNAL \carry~146_combout\ : std_logic;
SIGNAL \carry~147_combout\ : std_logic;
SIGNAL \carry~148_combout\ : std_logic;
SIGNAL \carry~149_combout\ : std_logic;
SIGNAL \carry~150_combout\ : std_logic;
SIGNAL \G_array~237_combout\ : std_logic;
SIGNAL \carry~151_combout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;
SIGNAL p : std_logic_vector(63 DOWNTO 0);
SIGNAL carry : std_logic_vector(64 DOWNTO 0);

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

-- Location: IOOBUF_X115_Y53_N16
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

-- Location: IOOBUF_X85_Y0_N2
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

-- Location: IOOBUF_X115_Y36_N9
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

-- Location: IOOBUF_X115_Y51_N9
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

-- Location: IOOBUF_X115_Y58_N16
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

-- Location: IOOBUF_X115_Y32_N9
\S[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~90_combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X115_Y33_N9
\S[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~91_combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\S[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~17_combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X115_Y34_N16
\S[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~92_combout\,
	devoe => ww_devoe,
	o => \S[8]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\S[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~93_combout\,
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X115_Y56_N23
\S[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~94_combout\,
	devoe => ww_devoe,
	o => \S[10]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\S[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~18_combout\,
	devoe => ww_devoe,
	o => \S[11]~output_o\);

-- Location: IOOBUF_X115_Y35_N16
\S[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~19_combout\,
	devoe => ww_devoe,
	o => \S[12]~output_o\);

-- Location: IOOBUF_X96_Y73_N16
\S[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~20_combout\,
	devoe => ww_devoe,
	o => \S[13]~output_o\);

-- Location: IOOBUF_X115_Y41_N9
\S[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~21_combout\,
	devoe => ww_devoe,
	o => \S[14]~output_o\);

-- Location: IOOBUF_X115_Y48_N9
\S[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~22_combout\,
	devoe => ww_devoe,
	o => \S[15]~output_o\);

-- Location: IOOBUF_X113_Y73_N2
\S[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~23_combout\,
	devoe => ww_devoe,
	o => \S[16]~output_o\);

-- Location: IOOBUF_X115_Y62_N9
\S[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~24_combout\,
	devoe => ww_devoe,
	o => \S[17]~output_o\);

-- Location: IOOBUF_X115_Y55_N16
\S[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~25_combout\,
	devoe => ww_devoe,
	o => \S[18]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\S[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~26_combout\,
	devoe => ww_devoe,
	o => \S[19]~output_o\);

-- Location: IOOBUF_X115_Y35_N23
\S[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~27_combout\,
	devoe => ww_devoe,
	o => \S[20]~output_o\);

-- Location: IOOBUF_X89_Y73_N23
\S[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~28_combout\,
	devoe => ww_devoe,
	o => \S[21]~output_o\);

-- Location: IOOBUF_X115_Y64_N2
\S[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~29_combout\,
	devoe => ww_devoe,
	o => \S[22]~output_o\);

-- Location: IOOBUF_X115_Y58_N23
\S[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~30_combout\,
	devoe => ww_devoe,
	o => \S[23]~output_o\);

-- Location: IOOBUF_X115_Y62_N16
\S[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~31_combout\,
	devoe => ww_devoe,
	o => \S[24]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\S[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~32_combout\,
	devoe => ww_devoe,
	o => \S[25]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\S[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~33_combout\,
	devoe => ww_devoe,
	o => \S[26]~output_o\);

-- Location: IOOBUF_X89_Y73_N9
\S[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~34_combout\,
	devoe => ww_devoe,
	o => \S[27]~output_o\);

-- Location: IOOBUF_X115_Y65_N16
\S[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~35_combout\,
	devoe => ww_devoe,
	o => \S[28]~output_o\);

-- Location: IOOBUF_X115_Y69_N16
\S[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~36_combout\,
	devoe => ww_devoe,
	o => \S[29]~output_o\);

-- Location: IOOBUF_X102_Y73_N9
\S[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~37_combout\,
	devoe => ww_devoe,
	o => \S[30]~output_o\);

-- Location: IOOBUF_X115_Y61_N23
\S[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~95_combout\,
	devoe => ww_devoe,
	o => \S[31]~output_o\);

-- Location: IOOBUF_X98_Y73_N23
\S[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~38_combout\,
	devoe => ww_devoe,
	o => \S[32]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\S[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~41_combout\,
	devoe => ww_devoe,
	o => \S[33]~output_o\);

-- Location: IOOBUF_X87_Y73_N23
\S[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~42_combout\,
	devoe => ww_devoe,
	o => \S[34]~output_o\);

-- Location: IOOBUF_X115_Y68_N16
\S[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~43_combout\,
	devoe => ww_devoe,
	o => \S[35]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\S[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~44_combout\,
	devoe => ww_devoe,
	o => \S[36]~output_o\);

-- Location: IOOBUF_X107_Y73_N2
\S[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~45_combout\,
	devoe => ww_devoe,
	o => \S[37]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\S[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~46_combout\,
	devoe => ww_devoe,
	o => \S[38]~output_o\);

-- Location: IOOBUF_X27_Y73_N9
\S[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~47_combout\,
	devoe => ww_devoe,
	o => \S[39]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
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

-- Location: IOOBUF_X115_Y64_N9
\S[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~52_combout\,
	devoe => ww_devoe,
	o => \S[41]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\S[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~55_combout\,
	devoe => ww_devoe,
	o => \S[42]~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\S[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~58_combout\,
	devoe => ww_devoe,
	o => \S[43]~output_o\);

-- Location: IOOBUF_X100_Y73_N23
\S[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~61_combout\,
	devoe => ww_devoe,
	o => \S[44]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\S[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~62_combout\,
	devoe => ww_devoe,
	o => \S[45]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\S[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~65_combout\,
	devoe => ww_devoe,
	o => \S[46]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\S[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~66_combout\,
	devoe => ww_devoe,
	o => \S[47]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\S[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~69_combout\,
	devoe => ww_devoe,
	o => \S[48]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\S[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~70_combout\,
	devoe => ww_devoe,
	o => \S[49]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\S[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~73_combout\,
	devoe => ww_devoe,
	o => \S[50]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\S[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~74_combout\,
	devoe => ww_devoe,
	o => \S[51]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\S[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~75_combout\,
	devoe => ww_devoe,
	o => \S[52]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\S[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~78_combout\,
	devoe => ww_devoe,
	o => \S[53]~output_o\);

-- Location: IOOBUF_X13_Y73_N9
\S[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~79_combout\,
	devoe => ww_devoe,
	o => \S[54]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\S[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~80_combout\,
	devoe => ww_devoe,
	o => \S[55]~output_o\);

-- Location: IOOBUF_X81_Y73_N23
\S[56]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~82_combout\,
	devoe => ww_devoe,
	o => \S[56]~output_o\);

-- Location: IOOBUF_X115_Y60_N16
\S[57]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~83_combout\,
	devoe => ww_devoe,
	o => \S[57]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\S[58]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~84_combout\,
	devoe => ww_devoe,
	o => \S[58]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\S[59]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~85_combout\,
	devoe => ww_devoe,
	o => \S[59]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\S[60]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~86_combout\,
	devoe => ww_devoe,
	o => \S[60]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\S[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~87_combout\,
	devoe => ww_devoe,
	o => \S[61]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\S[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~88_combout\,
	devoe => ww_devoe,
	o => \S[62]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\S[63]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~89_combout\,
	devoe => ww_devoe,
	o => \S[63]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \carry~151_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X69_Y73_N23
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

-- Location: IOIBUF_X115_Y31_N1
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X115_Y29_N1
\Cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X115_Y46_N8
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X87_Y53_N24
\S~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~12_combout\ = \B[0]~input_o\ $ (\Cin~input_o\ $ (\A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \Cin~input_o\,
	datad => \A[0]~input_o\,
	combout => \S~12_combout\);

-- Location: IOIBUF_X115_Y49_N8
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X115_Y45_N22
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X87_Y53_N18
\p[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(1) = \B[1]~input_o\ $ (\A[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => p(1));

-- Location: LCCOMB_X87_Y53_N4
\S~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~13_combout\ = p(1) $ (((\B[0]~input_o\ & ((\Cin~input_o\) # (\A[0]~input_o\))) # (!\B[0]~input_o\ & (\Cin~input_o\ & \A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => p(1),
	datac => \Cin~input_o\,
	datad => \A[0]~input_o\,
	combout => \S~13_combout\);

-- Location: IOIBUF_X115_Y44_N8
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X115_Y51_N1
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X86_Y53_N8
\p[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(2) = \A[2]~input_o\ $ (\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => p(2));

-- Location: LCCOMB_X87_Y53_N14
\carry[9]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[9]~4_combout\ = (\Cin~input_o\ & (\B[0]~input_o\ $ (\A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \Cin~input_o\,
	datad => \A[0]~input_o\,
	combout => \carry[9]~4_combout\);

-- Location: LCCOMB_X87_Y53_N8
\G_array[6][1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[6][1]~8_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\) # ((\B[0]~input_o\ & \A[0]~input_o\)))) # (!\B[1]~input_o\ & (\B[0]~input_o\ & (\A[0]~input_o\ & \A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => \G_array[6][1]~8_combout\);

-- Location: LCCOMB_X87_Y53_N2
\S~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~14_combout\ = p(2) $ (((\G_array[6][1]~8_combout\) # ((\carry[9]~4_combout\ & p(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(2),
	datab => \carry[9]~4_combout\,
	datac => \G_array[6][1]~8_combout\,
	datad => p(1),
	combout => \S~14_combout\);

-- Location: LCCOMB_X87_Y53_N20
\carry~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry~5_combout\ = (p(1) & (\Cin~input_o\ & (\B[0]~input_o\ $ (\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => p(1),
	datac => \Cin~input_o\,
	datad => \A[0]~input_o\,
	combout => \carry~5_combout\);

-- Location: LCCOMB_X87_Y53_N16
\G_array~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~10_combout\ = (\A[1]~input_o\ & (!\B[1]~input_o\ & (\A[2]~input_o\ $ (\B[2]~input_o\)))) # (!\A[1]~input_o\ & (\B[1]~input_o\ & (\A[2]~input_o\ $ (\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[2]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \G_array~10_combout\);

-- Location: LCCOMB_X87_Y53_N30
\G_array[1][2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][2]~9_combout\ = (\A[2]~input_o\ & ((\B[2]~input_o\) # ((\A[1]~input_o\ & \B[1]~input_o\)))) # (!\A[2]~input_o\ & (\A[1]~input_o\ & (\B[1]~input_o\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[2]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \G_array[1][2]~9_combout\);

-- Location: LCCOMB_X87_Y53_N26
\G_array[6][4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[6][4]~11_combout\ = (\G_array[1][2]~9_combout\) # ((\B[0]~input_o\ & (\G_array~10_combout\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \G_array~10_combout\,
	datac => \G_array[1][2]~9_combout\,
	datad => \A[0]~input_o\,
	combout => \G_array[6][4]~11_combout\);

-- Location: IOIBUF_X115_Y46_N1
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X115_Y49_N1
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X86_Y53_N2
\p[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(3) = \A[3]~input_o\ $ (\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => p(3));

-- Location: LCCOMB_X87_Y53_N12
\S~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~15_combout\ = p(3) $ (((\G_array[6][4]~11_combout\) # ((p(2) & \carry~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(2),
	datab => \carry~5_combout\,
	datac => \G_array[6][4]~11_combout\,
	datad => p(3),
	combout => \S~15_combout\);

-- Location: LCCOMB_X86_Y53_N4
\P_array[6][3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[6][3]~30_combout\ = (\A[2]~input_o\ & (!\B[2]~input_o\ & (\B[3]~input_o\ $ (\A[3]~input_o\)))) # (!\A[2]~input_o\ & (\B[2]~input_o\ & (\B[3]~input_o\ $ (\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \A[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \P_array[6][3]~30_combout\);

-- Location: IOIBUF_X115_Y33_N1
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X115_Y45_N15
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X86_Y53_N16
\p[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(4) = \A[4]~input_o\ $ (\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datad => \B[4]~input_o\,
	combout => p(4));

-- Location: LCCOMB_X86_Y53_N30
\G_array[1][3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][3]~12_combout\ = (\B[3]~input_o\ & ((\A[3]~input_o\) # ((\A[2]~input_o\ & \B[2]~input_o\)))) # (!\B[3]~input_o\ & (\A[2]~input_o\ & (\A[3]~input_o\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \A[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \G_array[1][3]~12_combout\);

-- Location: LCCOMB_X85_Y57_N16
\G_array[6][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[6][3]~combout\ = (\G_array[1][3]~12_combout\) # ((\G_array[6][1]~8_combout\ & \P_array[6][3]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[1][3]~12_combout\,
	datac => \G_array[6][1]~8_combout\,
	datad => \P_array[6][3]~30_combout\,
	combout => \G_array[6][3]~combout\);

-- Location: LCCOMB_X85_Y57_N10
\S~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~16_combout\ = p(4) $ (((\G_array[6][3]~combout\) # ((\P_array[6][3]~30_combout\ & \carry~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[6][3]~30_combout\,
	datab => p(4),
	datac => \G_array[6][3]~combout\,
	datad => \carry~5_combout\,
	combout => \S~16_combout\);

-- Location: IOIBUF_X115_Y48_N1
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X86_Y53_N20
\G_array[3][8]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][8]~13_combout\ = (\A[4]~input_o\ & (!\B[4]~input_o\ & (\A[3]~input_o\ $ (\B[3]~input_o\)))) # (!\A[4]~input_o\ & (\B[4]~input_o\ & (\A[3]~input_o\ $ (\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \G_array[3][8]~13_combout\);

-- Location: LCCOMB_X87_Y53_N22
\carry~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry~6_combout\ = (p(2) & (\G_array[3][8]~13_combout\ & (\carry[9]~4_combout\ & p(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(2),
	datab => \G_array[3][8]~13_combout\,
	datac => \carry[9]~4_combout\,
	datad => p(1),
	combout => \carry~6_combout\);

-- Location: LCCOMB_X86_Y53_N14
\G_array[1][4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][4]~14_combout\ = (\A[4]~input_o\ & ((\B[4]~input_o\) # ((\A[3]~input_o\ & \B[3]~input_o\)))) # (!\A[4]~input_o\ & (\B[4]~input_o\ & (\A[3]~input_o\ & \B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \G_array[1][4]~14_combout\);

-- Location: LCCOMB_X87_Y53_N0
\carry[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[5]~7_combout\ = (\carry~6_combout\) # ((\G_array[1][4]~14_combout\) # ((\G_array[3][8]~13_combout\ & \G_array[6][4]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry~6_combout\,
	datab => \G_array[3][8]~13_combout\,
	datac => \G_array[6][4]~11_combout\,
	datad => \G_array[1][4]~14_combout\,
	combout => \carry[5]~7_combout\);

-- Location: IOIBUF_X98_Y73_N15
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X86_Y53_N26
\S~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~90_combout\ = \B[5]~input_o\ $ (\carry[5]~7_combout\ $ (\A[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \carry[5]~7_combout\,
	datac => \A[5]~input_o\,
	combout => \S~90_combout\);

-- Location: IOIBUF_X115_Y42_N15
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X86_Y53_N28
\G_array[1][5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][5]~16_combout\ = (\A[5]~input_o\ & ((\B[5]~input_o\) # ((\A[4]~input_o\ & \B[4]~input_o\)))) # (!\A[5]~input_o\ & (\A[4]~input_o\ & (\B[5]~input_o\ & \B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \A[5]~input_o\,
	datac => \B[5]~input_o\,
	datad => \B[4]~input_o\,
	combout => \G_array[1][5]~16_combout\);

-- Location: LCCOMB_X86_Y53_N10
\p[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(5) = \B[5]~input_o\ $ (\A[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datac => \A[5]~input_o\,
	combout => p(5));

-- Location: LCCOMB_X85_Y57_N12
\G_array[3][9]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][9]~17_combout\ = (!\G_array[1][5]~16_combout\ & (((!p(4)) # (!p(5))) # (!\G_array[1][3]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[1][3]~12_combout\,
	datab => \G_array[1][5]~16_combout\,
	datac => p(5),
	datad => p(4),
	combout => \G_array[3][9]~17_combout\);

-- Location: LCCOMB_X86_Y53_N18
\G_array~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~15_combout\ = (\G_array[3][8]~13_combout\ & (p(5) & (\A[2]~input_o\ $ (\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \G_array[3][8]~13_combout\,
	datac => p(5),
	datad => \B[2]~input_o\,
	combout => \G_array~15_combout\);

-- Location: LCCOMB_X85_Y57_N22
\carry[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[6]~8_combout\ = ((\G_array~15_combout\ & ((\G_array[6][1]~8_combout\) # (\carry~5_combout\)))) # (!\G_array[3][9]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[3][9]~17_combout\,
	datab => \G_array~15_combout\,
	datac => \G_array[6][1]~8_combout\,
	datad => \carry~5_combout\,
	combout => \carry[6]~8_combout\);

-- Location: IOIBUF_X115_Y47_N22
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X86_Y53_N12
\S~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~91_combout\ = \A[6]~input_o\ $ (\carry[6]~8_combout\ $ (\B[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datac => \carry[6]~8_combout\,
	datad => \B[6]~input_o\,
	combout => \S~91_combout\);

-- Location: IOIBUF_X85_Y0_N15
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X115_Y52_N8
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X84_Y57_N0
\p[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(7) = \A[7]~input_o\ $ (\B[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	combout => p(7));

-- Location: LCCOMB_X85_Y57_N8
\carry~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry~9_combout\ = (\G_array~15_combout\ & \carry~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G_array~15_combout\,
	datad => \carry~5_combout\,
	combout => \carry~9_combout\);

-- Location: LCCOMB_X86_Y53_N22
\G_array[1][6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][6]~18_combout\ = (\A[6]~input_o\ & ((\B[6]~input_o\) # ((\A[5]~input_o\ & \B[5]~input_o\)))) # (!\A[6]~input_o\ & (\A[5]~input_o\ & (\B[5]~input_o\ & \B[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \A[5]~input_o\,
	datac => \B[5]~input_o\,
	datad => \B[6]~input_o\,
	combout => \G_array[1][6]~18_combout\);

-- Location: LCCOMB_X86_Y53_N0
\p[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(6) = \A[6]~input_o\ $ (\B[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datad => \B[6]~input_o\,
	combout => p(6));

-- Location: LCCOMB_X86_Y53_N24
\G_array[6][6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[6][6]~19_combout\ = (!\G_array[1][6]~18_combout\ & (((!p(6)) # (!\G_array[1][4]~14_combout\)) # (!p(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(5),
	datab => \G_array[1][4]~14_combout\,
	datac => \G_array[1][6]~18_combout\,
	datad => p(6),
	combout => \G_array[6][6]~19_combout\);

-- Location: LCCOMB_X86_Y53_N6
\G_array~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~238_combout\ = (p(6) & (\G_array[3][8]~13_combout\ & (\B[5]~input_o\ $ (\A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => p(6),
	datac => \A[5]~input_o\,
	datad => \G_array[3][8]~13_combout\,
	combout => \G_array~238_combout\);

-- Location: LCCOMB_X82_Y56_N0
\G_array[6][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[6][6]~combout\ = ((\G_array[6][4]~11_combout\ & \G_array~238_combout\)) # (!\G_array[6][6]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[6][4]~11_combout\,
	datab => \G_array[6][6]~19_combout\,
	datad => \G_array~238_combout\,
	combout => \G_array[6][6]~combout\);

-- Location: LCCOMB_X85_Y57_N2
\S~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~17_combout\ = p(7) $ (((\G_array[6][6]~combout\) # ((\carry~9_combout\ & p(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(7),
	datab => \carry~9_combout\,
	datac => \G_array[6][6]~combout\,
	datad => p(6),
	combout => \S~17_combout\);

-- Location: IOIBUF_X91_Y73_N15
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X84_Y57_N10
\G_array[1][7]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][7]~21_combout\ = (\A[7]~input_o\ & ((\B[7]~input_o\) # ((\B[6]~input_o\ & \A[6]~input_o\)))) # (!\A[7]~input_o\ & (\B[6]~input_o\ & (\A[6]~input_o\ & \B[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datac => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	combout => \G_array[1][7]~21_combout\);

-- Location: LCCOMB_X85_Y57_N14
\G_array[6][7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[6][7]~22_combout\ = (!\G_array[1][7]~21_combout\ & (((!p(7)) # (!\G_array[1][5]~16_combout\)) # (!p(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(6),
	datab => \G_array[1][5]~16_combout\,
	datac => p(7),
	datad => \G_array[1][7]~21_combout\,
	combout => \G_array[6][7]~22_combout\);

-- Location: LCCOMB_X85_Y57_N28
\G_array~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~20_combout\ = (p(7) & (p(4) & (p(5) & p(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(7),
	datab => p(4),
	datac => p(5),
	datad => p(6),
	combout => \G_array~20_combout\);

-- Location: LCCOMB_X85_Y57_N24
\G_array[6][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[6][7]~combout\ = ((\G_array[6][3]~combout\ & \G_array~20_combout\)) # (!\G_array[6][7]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G_array[6][3]~combout\,
	datac => \G_array[6][7]~22_combout\,
	datad => \G_array~20_combout\,
	combout => \G_array[6][7]~combout\);

-- Location: IOIBUF_X115_Y34_N22
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X85_Y57_N26
\carry~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry~10_combout\ = (\P_array[6][3]~30_combout\ & (\G_array~20_combout\ & \carry~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[6][3]~30_combout\,
	datab => \G_array~20_combout\,
	datad => \carry~5_combout\,
	combout => \carry~10_combout\);

-- Location: LCCOMB_X84_Y57_N22
\S~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~92_combout\ = \B[8]~input_o\ $ (\A[8]~input_o\ $ (((\G_array[6][7]~combout\) # (\carry~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \G_array[6][7]~combout\,
	datac => \A[8]~input_o\,
	datad => \carry~10_combout\,
	combout => \S~92_combout\);

-- Location: LCCOMB_X84_Y57_N30
\G_array~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~23_combout\ = (\A[8]~input_o\ & (!\B[8]~input_o\ & (\A[7]~input_o\ $ (\B[7]~input_o\)))) # (!\A[8]~input_o\ & (\B[8]~input_o\ & (\A[7]~input_o\ $ (\B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \A[7]~input_o\,
	datac => \B[8]~input_o\,
	datad => \B[7]~input_o\,
	combout => \G_array~23_combout\);

-- Location: LCCOMB_X83_Y56_N8
\P_array[2][8]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[2][8]~31_combout\ = (\G_array~23_combout\ & (p(5) & (\A[6]~input_o\ $ (\B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~23_combout\,
	datab => p(5),
	datac => \A[6]~input_o\,
	datad => \B[6]~input_o\,
	combout => \P_array[2][8]~31_combout\);

-- Location: LCCOMB_X87_Y53_N28
\carry[25]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[25]~11_combout\ = (p(1) & ((\B[0]~input_o\ & ((\Cin~input_o\) # (\A[0]~input_o\))) # (!\B[0]~input_o\ & (\Cin~input_o\ & \A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => p(1),
	datac => \Cin~input_o\,
	datad => \A[0]~input_o\,
	combout => \carry[25]~11_combout\);

-- Location: LCCOMB_X83_Y53_N0
\carry[25]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[25]~12_combout\ = (p(2) & (\G_array[3][8]~13_combout\ & (\P_array[2][8]~31_combout\ & \carry[25]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(2),
	datab => \G_array[3][8]~13_combout\,
	datac => \P_array[2][8]~31_combout\,
	datad => \carry[25]~11_combout\,
	combout => \carry[25]~12_combout\);

-- Location: IOIBUF_X83_Y0_N1
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X115_Y56_N15
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X84_Y57_N16
\G_array[1][8]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][8]~25_combout\ = (\A[8]~input_o\ & ((\B[8]~input_o\) # ((\A[7]~input_o\ & \B[7]~input_o\)))) # (!\A[8]~input_o\ & (\A[7]~input_o\ & (\B[8]~input_o\ & \B[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \A[7]~input_o\,
	datac => \B[8]~input_o\,
	datad => \B[7]~input_o\,
	combout => \G_array[1][8]~25_combout\);

-- Location: LCCOMB_X84_Y57_N20
\p[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(8) = \B[8]~input_o\ $ (\A[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datac => \A[8]~input_o\,
	combout => p(8));

-- Location: LCCOMB_X84_Y57_N2
\G_array[3][8]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][8]~26_combout\ = (!\G_array[1][8]~25_combout\ & (((!p(8)) # (!\G_array[1][6]~18_combout\)) # (!p(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[1][8]~25_combout\,
	datab => p(7),
	datac => \G_array[1][6]~18_combout\,
	datad => p(8),
	combout => \G_array[3][8]~26_combout\);

-- Location: LCCOMB_X87_Y53_N10
\G_array[3][8]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][8]~24_combout\ = (\G_array[1][4]~14_combout\) # ((\G_array[3][8]~13_combout\ & \G_array[1][2]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[1][4]~14_combout\,
	datab => \G_array[3][8]~13_combout\,
	datac => \G_array[1][2]~9_combout\,
	combout => \G_array[3][8]~24_combout\);

-- Location: LCCOMB_X80_Y56_N24
\G_array[3][8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][8]~27_combout\ = ((\P_array[2][8]~31_combout\ & \G_array[3][8]~24_combout\)) # (!\G_array[3][8]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[2][8]~31_combout\,
	datab => \G_array[3][8]~26_combout\,
	datad => \G_array[3][8]~24_combout\,
	combout => \G_array[3][8]~27_combout\);

-- Location: LCCOMB_X83_Y56_N26
\S~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~93_combout\ = \B[9]~input_o\ $ (\A[9]~input_o\ $ (((\carry[25]~12_combout\) # (\G_array[3][8]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry[25]~12_combout\,
	datab => \B[9]~input_o\,
	datac => \A[9]~input_o\,
	datad => \G_array[3][8]~27_combout\,
	combout => \S~93_combout\);

-- Location: LCCOMB_X83_Y56_N2
\p[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(9) = \B[9]~input_o\ $ (\A[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[9]~input_o\,
	datac => \A[9]~input_o\,
	combout => p(9));

-- Location: LCCOMB_X84_Y57_N4
\G_array[1][9]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][9]~28_combout\ = (\B[9]~input_o\ & ((\A[9]~input_o\) # ((\B[8]~input_o\ & \A[8]~input_o\)))) # (!\B[9]~input_o\ & (\B[8]~input_o\ & (\A[8]~input_o\ & \A[9]~input_o\)))

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
	combout => \G_array[1][9]~28_combout\);

-- Location: LCCOMB_X84_Y57_N14
\G_array[3][9]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][9]~29_combout\ = (!\G_array[1][9]~28_combout\ & (((!p(8)) # (!p(9))) # (!\G_array[1][7]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[1][7]~21_combout\,
	datab => p(9),
	datac => \G_array[1][9]~28_combout\,
	datad => p(8),
	combout => \G_array[3][9]~29_combout\);

-- Location: LCCOMB_X83_Y56_N12
\P_array[2][9]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[2][9]~32_combout\ = (\G_array~23_combout\ & (p(6) & (\A[9]~input_o\ $ (\B[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~23_combout\,
	datab => p(6),
	datac => \A[9]~input_o\,
	datad => \B[9]~input_o\,
	combout => \P_array[2][9]~32_combout\);

-- Location: LCCOMB_X85_Y57_N4
\G_array[3][9]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][9]~30_combout\ = ((\P_array[2][9]~32_combout\ & !\G_array[3][9]~17_combout\)) # (!\G_array[3][9]~29_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[3][9]~29_combout\,
	datac => \P_array[2][9]~32_combout\,
	datad => \G_array[3][9]~17_combout\,
	combout => \G_array[3][9]~30_combout\);

-- Location: LCCOMB_X85_Y57_N30
\carry[10]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[10]~13_combout\ = (\G_array~15_combout\ & (\P_array[2][9]~32_combout\ & ((\G_array[6][1]~8_combout\) # (\carry~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[6][1]~8_combout\,
	datab => \G_array~15_combout\,
	datac => \P_array[2][9]~32_combout\,
	datad => \carry~5_combout\,
	combout => \carry[10]~13_combout\);

-- Location: IOIBUF_X115_Y40_N8
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X115_Y36_N15
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LCCOMB_X83_Y56_N4
\S~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~94_combout\ = \A[10]~input_o\ $ (\B[10]~input_o\ $ (((\G_array[3][9]~30_combout\) # (\carry[10]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[3][9]~30_combout\,
	datab => \carry[10]~13_combout\,
	datac => \A[10]~input_o\,
	datad => \B[10]~input_o\,
	combout => \S~94_combout\);

-- Location: LCCOMB_X83_Y56_N16
\P_array[2][10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[2][10]~33_combout\ = (\G_array~23_combout\ & (p(9) & (\A[10]~input_o\ $ (\B[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~23_combout\,
	datab => p(9),
	datac => \A[10]~input_o\,
	datad => \B[10]~input_o\,
	combout => \P_array[2][10]~33_combout\);

-- Location: LCCOMB_X87_Y53_N6
\carry~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry~152_combout\ = (p(2) & (\carry[9]~4_combout\ & (\B[1]~input_o\ $ (\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(2),
	datab => \carry[9]~4_combout\,
	datac => \B[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => \carry~152_combout\);

-- Location: LCCOMB_X82_Y56_N10
\carry[11]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[11]~14_combout\ = (\P_array[2][10]~33_combout\ & (\G_array~238_combout\ & ((\G_array[6][4]~11_combout\) # (\carry~152_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[6][4]~11_combout\,
	datab => \P_array[2][10]~33_combout\,
	datac => \G_array~238_combout\,
	datad => \carry~152_combout\,
	combout => \carry[11]~14_combout\);

-- Location: LCCOMB_X83_Y56_N18
\G_array[1][10]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][10]~31_combout\ = (\A[10]~input_o\ & ((\B[10]~input_o\) # ((\A[9]~input_o\ & \B[9]~input_o\)))) # (!\A[10]~input_o\ & (\A[9]~input_o\ & (\B[9]~input_o\ & \B[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \B[9]~input_o\,
	datac => \A[10]~input_o\,
	datad => \B[10]~input_o\,
	combout => \G_array[1][10]~31_combout\);

-- Location: LCCOMB_X83_Y56_N22
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

-- Location: LCCOMB_X83_Y56_N20
\G_array[3][10]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][10]~32_combout\ = (!\G_array[1][10]~31_combout\ & (((!p(9)) # (!p(10))) # (!\G_array[1][8]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[1][8]~25_combout\,
	datab => \G_array[1][10]~31_combout\,
	datac => p(10),
	datad => p(9),
	combout => \G_array[3][10]~32_combout\);

-- Location: LCCOMB_X82_Y56_N12
\carry[27]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[27]~15_combout\ = (\carry[11]~14_combout\) # (((\P_array[2][10]~33_combout\ & !\G_array[6][6]~19_combout\)) # (!\G_array[3][10]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry[11]~14_combout\,
	datab => \P_array[2][10]~33_combout\,
	datac => \G_array[3][10]~32_combout\,
	datad => \G_array[6][6]~19_combout\,
	combout => \carry[27]~15_combout\);

-- Location: IOIBUF_X115_Y52_N1
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X83_Y0_N22
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LCCOMB_X83_Y56_N30
\S~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~18_combout\ = \carry[27]~15_combout\ $ (\A[11]~input_o\ $ (\B[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry[27]~15_combout\,
	datac => \A[11]~input_o\,
	datad => \B[11]~input_o\,
	combout => \S~18_combout\);

-- Location: IOIBUF_X115_Y50_N8
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LCCOMB_X83_Y56_N10
\G_array[1][11]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][11]~34_combout\ = (\B[11]~input_o\ & ((\A[11]~input_o\) # ((\A[10]~input_o\ & \B[10]~input_o\)))) # (!\B[11]~input_o\ & (\A[10]~input_o\ & (\A[11]~input_o\ & \B[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \B[11]~input_o\,
	datac => \A[11]~input_o\,
	datad => \B[10]~input_o\,
	combout => \G_array[1][11]~34_combout\);

-- Location: LCCOMB_X83_Y56_N0
\G_array~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~33_combout\ = (\A[10]~input_o\ & (!\B[10]~input_o\ & (\B[11]~input_o\ $ (\A[11]~input_o\)))) # (!\A[10]~input_o\ & (\B[10]~input_o\ & (\B[11]~input_o\ $ (\A[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \B[11]~input_o\,
	datac => \A[11]~input_o\,
	datad => \B[10]~input_o\,
	combout => \G_array~33_combout\);

-- Location: LCCOMB_X84_Y57_N26
\G_array[3][11]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][11]~35_combout\ = (!\G_array[1][11]~34_combout\ & ((!\G_array~33_combout\) # (!\G_array[1][9]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[1][11]~34_combout\,
	datab => \G_array[1][9]~28_combout\,
	datac => \G_array~33_combout\,
	combout => \G_array[3][11]~35_combout\);

-- Location: LCCOMB_X84_Y57_N8
\P_array[2][11]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[2][11]~34_combout\ = (\G_array~33_combout\ & (p(9) & (\B[8]~input_o\ $ (\A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \G_array~33_combout\,
	datac => \A[8]~input_o\,
	datad => p(9),
	combout => \P_array[2][11]~34_combout\);

-- Location: LCCOMB_X80_Y57_N24
\G_array[3][11]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][11]~36_combout\ = ((!\G_array[6][7]~22_combout\ & \P_array[2][11]~34_combout\)) # (!\G_array[3][11]~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G_array[3][11]~35_combout\,
	datac => \G_array[6][7]~22_combout\,
	datad => \P_array[2][11]~34_combout\,
	combout => \G_array[3][11]~36_combout\);

-- Location: LCCOMB_X85_Y57_N0
\carry[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- carry(4) = (\G_array[1][3]~12_combout\) # ((\P_array[6][3]~30_combout\ & ((\carry~5_combout\) # (\G_array[6][1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[1][3]~12_combout\,
	datab => \carry~5_combout\,
	datac => \G_array[6][1]~8_combout\,
	datad => \P_array[6][3]~30_combout\,
	combout => carry(4));

-- Location: LCCOMB_X80_Y57_N26
\carry[28]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[28]~16_combout\ = (\G_array[3][11]~36_combout\) # ((\P_array[2][11]~34_combout\ & (carry(4) & \G_array~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[3][11]~36_combout\,
	datab => \P_array[2][11]~34_combout\,
	datac => carry(4),
	datad => \G_array~20_combout\,
	combout => \carry[28]~16_combout\);

-- Location: IOIBUF_X115_Y55_N22
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LCCOMB_X82_Y57_N16
\S~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~19_combout\ = \B[12]~input_o\ $ (\carry[28]~16_combout\ $ (\A[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[12]~input_o\,
	datac => \carry[28]~16_combout\,
	datad => \A[12]~input_o\,
	combout => \S~19_combout\);

-- Location: LCCOMB_X83_Y56_N6
\G_array[1][12]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][12]~38_combout\ = (\B[12]~input_o\ & ((\A[12]~input_o\) # ((\A[11]~input_o\ & \B[11]~input_o\)))) # (!\B[12]~input_o\ & (\A[11]~input_o\ & (\A[12]~input_o\ & \B[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \B[12]~input_o\,
	datac => \A[12]~input_o\,
	datad => \B[11]~input_o\,
	combout => \G_array[1][12]~38_combout\);

-- Location: LCCOMB_X83_Y56_N28
\G_array~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~37_combout\ = (\A[11]~input_o\ & (!\B[11]~input_o\ & (\B[12]~input_o\ $ (\A[12]~input_o\)))) # (!\A[11]~input_o\ & (\B[11]~input_o\ & (\B[12]~input_o\ $ (\A[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \B[12]~input_o\,
	datac => \A[12]~input_o\,
	datad => \B[11]~input_o\,
	combout => \G_array~37_combout\);

-- Location: LCCOMB_X83_Y56_N24
\G_array[3][12]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][12]~39_combout\ = (!\G_array[1][12]~38_combout\ & ((!\G_array~37_combout\) # (!\G_array[1][10]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[1][12]~38_combout\,
	datab => \G_array[1][10]~31_combout\,
	datad => \G_array~37_combout\,
	combout => \G_array[3][12]~39_combout\);

-- Location: LCCOMB_X83_Y56_N14
\P_array[2][12]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[2][12]~85_combout\ = (p(10) & (\G_array~37_combout\ & (\A[9]~input_o\ $ (\B[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \B[9]~input_o\,
	datac => p(10),
	datad => \G_array~37_combout\,
	combout => \P_array[2][12]~85_combout\);

-- Location: LCCOMB_X80_Y56_N26
\G_array[3][12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][12]~40_combout\ = ((\P_array[2][12]~85_combout\ & !\G_array[3][8]~26_combout\)) # (!\G_array[3][12]~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G_array[3][12]~39_combout\,
	datac => \P_array[2][12]~85_combout\,
	datad => \G_array[3][8]~26_combout\,
	combout => \G_array[3][12]~40_combout\);

-- Location: LCCOMB_X80_Y56_N20
\carry[37]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[37]~17_combout\ = (\G_array[3][12]~40_combout\) # ((\P_array[2][12]~85_combout\ & (\carry[5]~7_combout\ & \P_array[2][8]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[3][12]~40_combout\,
	datab => \P_array[2][12]~85_combout\,
	datac => \carry[5]~7_combout\,
	datad => \P_array[2][8]~31_combout\,
	combout => \carry[37]~17_combout\);

-- Location: IOIBUF_X115_Y47_N15
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X113_Y73_N8
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LCCOMB_X82_Y57_N26
\S~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~20_combout\ = \carry[37]~17_combout\ $ (\A[13]~input_o\ $ (\B[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry[37]~17_combout\,
	datab => \A[13]~input_o\,
	datad => \B[13]~input_o\,
	combout => \S~20_combout\);

-- Location: LCCOMB_X79_Y57_N10
\carry[22]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[22]~18_combout\ = (\P_array[2][9]~32_combout\ & \carry[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[2][9]~32_combout\,
	datad => \carry[6]~8_combout\,
	combout => \carry[22]~18_combout\);

-- Location: LCCOMB_X82_Y57_N4
\G_array~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~41_combout\ = (\B[13]~input_o\ & (!\A[13]~input_o\ & (\B[12]~input_o\ $ (\A[12]~input_o\)))) # (!\B[13]~input_o\ & (\A[13]~input_o\ & (\B[12]~input_o\ $ (\A[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \A[13]~input_o\,
	datac => \B[12]~input_o\,
	datad => \A[12]~input_o\,
	combout => \G_array~41_combout\);

-- Location: LCCOMB_X82_Y57_N6
\G_array[1][13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][13]~42_combout\ = (\B[13]~input_o\ & ((\A[13]~input_o\) # ((\B[12]~input_o\ & \A[12]~input_o\)))) # (!\B[13]~input_o\ & (\A[13]~input_o\ & (\B[12]~input_o\ & \A[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \A[13]~input_o\,
	datac => \B[12]~input_o\,
	datad => \A[12]~input_o\,
	combout => \G_array[1][13]~42_combout\);

-- Location: LCCOMB_X82_Y57_N24
\G_array[3][13]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][13]~43_combout\ = (!\G_array[1][13]~42_combout\ & ((!\G_array[1][11]~34_combout\) # (!\G_array~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[1][13]~42_combout\,
	datac => \G_array~41_combout\,
	datad => \G_array[1][11]~34_combout\,
	combout => \G_array[3][13]~43_combout\);

-- Location: LCCOMB_X79_Y57_N24
\G_array[3][13]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][13]~44_combout\ = ((\G_array~33_combout\ & (\G_array~41_combout\ & !\G_array[3][9]~29_combout\))) # (!\G_array[3][13]~43_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~33_combout\,
	datab => \G_array~41_combout\,
	datac => \G_array[3][9]~29_combout\,
	datad => \G_array[3][13]~43_combout\,
	combout => \G_array[3][13]~44_combout\);

-- Location: LCCOMB_X79_Y57_N28
\carry[38]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[38]~19_combout\ = (\G_array[3][13]~44_combout\) # ((\carry[22]~18_combout\ & (\G_array~41_combout\ & \G_array~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry[22]~18_combout\,
	datab => \G_array[3][13]~44_combout\,
	datac => \G_array~41_combout\,
	datad => \G_array~33_combout\,
	combout => \carry[38]~19_combout\);

-- Location: IOIBUF_X105_Y73_N8
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X83_Y0_N8
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X82_Y57_N2
\S~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~21_combout\ = \carry[38]~19_combout\ $ (\A[14]~input_o\ $ (\B[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry[38]~19_combout\,
	datac => \A[14]~input_o\,
	datad => \B[14]~input_o\,
	combout => \S~21_combout\);

-- Location: IOIBUF_X85_Y73_N8
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LCCOMB_X85_Y57_N18
\carry[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- carry(7) = (\G_array[6][6]~combout\) # ((p(6) & (\G_array~15_combout\ & \carry~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(6),
	datab => \G_array~15_combout\,
	datac => \G_array[6][6]~combout\,
	datad => \carry~5_combout\,
	combout => carry(7));

-- Location: LCCOMB_X82_Y57_N28
\G_array~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~45_combout\ = (\B[13]~input_o\ & (!\A[13]~input_o\ & (\A[14]~input_o\ $ (\B[14]~input_o\)))) # (!\B[13]~input_o\ & (\A[13]~input_o\ & (\A[14]~input_o\ $ (\B[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \A[13]~input_o\,
	datac => \A[14]~input_o\,
	datad => \B[14]~input_o\,
	combout => \G_array~45_combout\);

-- Location: LCCOMB_X82_Y57_N14
\G_array[1][14]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][14]~46_combout\ = (\A[14]~input_o\ & ((\B[14]~input_o\) # ((\B[13]~input_o\ & \A[13]~input_o\)))) # (!\A[14]~input_o\ & (\B[13]~input_o\ & (\A[13]~input_o\ & \B[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \A[13]~input_o\,
	datac => \A[14]~input_o\,
	datad => \B[14]~input_o\,
	combout => \G_array[1][14]~46_combout\);

-- Location: LCCOMB_X82_Y57_N0
\G_array[3][14]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][14]~47_combout\ = (!\G_array[1][14]~46_combout\ & ((!\G_array[1][12]~38_combout\) # (!\G_array~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G_array~45_combout\,
	datac => \G_array[1][14]~46_combout\,
	datad => \G_array[1][12]~38_combout\,
	combout => \G_array[3][14]~47_combout\);

-- Location: LCCOMB_X82_Y56_N22
\G_array[3][14]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][14]~48_combout\ = ((!\G_array[3][10]~32_combout\ & (\G_array~45_combout\ & \G_array~37_combout\))) # (!\G_array[3][14]~47_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[3][10]~32_combout\,
	datab => \G_array~45_combout\,
	datac => \G_array[3][14]~47_combout\,
	datad => \G_array~37_combout\,
	combout => \G_array[3][14]~48_combout\);

-- Location: LCCOMB_X82_Y56_N16
\G_array[6][30]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[6][30]~49_combout\ = (\P_array[2][10]~33_combout\ & (\G_array~45_combout\ & \G_array~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P_array[2][10]~33_combout\,
	datac => \G_array~45_combout\,
	datad => \G_array~37_combout\,
	combout => \G_array[6][30]~49_combout\);

-- Location: LCCOMB_X81_Y56_N24
\carry[39]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[39]~20_combout\ = (\G_array[3][14]~48_combout\) # ((carry(7) & \G_array[6][30]~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => carry(7),
	datab => \G_array[3][14]~48_combout\,
	datad => \G_array[6][30]~49_combout\,
	combout => \carry[39]~20_combout\);

-- Location: IOIBUF_X107_Y73_N8
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LCCOMB_X81_Y56_N10
\S~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~22_combout\ = \B[15]~input_o\ $ (\carry[39]~20_combout\ $ (\A[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datab => \carry[39]~20_combout\,
	datac => \A[15]~input_o\,
	combout => \S~22_combout\);

-- Location: IOIBUF_X115_Y57_N15
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: LCCOMB_X82_Y57_N10
\G_array~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~50_combout\ = (\A[14]~input_o\ & (!\B[14]~input_o\ & (\A[15]~input_o\ $ (\B[15]~input_o\)))) # (!\A[14]~input_o\ & (\B[14]~input_o\ & (\A[15]~input_o\ $ (\B[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \B[14]~input_o\,
	datac => \A[15]~input_o\,
	datad => \B[15]~input_o\,
	combout => \G_array~50_combout\);

-- Location: LCCOMB_X82_Y57_N20
\G_array[1][15]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][15]~51_combout\ = (\A[15]~input_o\ & ((\B[15]~input_o\) # ((\A[14]~input_o\ & \B[14]~input_o\)))) # (!\A[15]~input_o\ & (\A[14]~input_o\ & (\B[14]~input_o\ & \B[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \B[14]~input_o\,
	datac => \A[15]~input_o\,
	datad => \B[15]~input_o\,
	combout => \G_array[1][15]~51_combout\);

-- Location: LCCOMB_X82_Y57_N22
\G_array[3][15]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][15]~52_combout\ = (!\G_array[1][15]~51_combout\ & ((!\G_array~50_combout\) # (!\G_array[1][13]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[1][13]~42_combout\,
	datac => \G_array~50_combout\,
	datad => \G_array[1][15]~51_combout\,
	combout => \G_array[3][15]~52_combout\);

-- Location: LCCOMB_X84_Y57_N12
\G_array[3][15]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][15]~53_combout\ = ((\G_array~50_combout\ & (!\G_array[3][11]~35_combout\ & \G_array~41_combout\))) # (!\G_array[3][15]~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~50_combout\,
	datab => \G_array[3][15]~52_combout\,
	datac => \G_array[3][11]~35_combout\,
	datad => \G_array~41_combout\,
	combout => \G_array[3][15]~53_combout\);

-- Location: LCCOMB_X84_Y57_N6
\carry~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry~21_combout\ = (\G_array~41_combout\ & (\P_array[2][11]~34_combout\ & \G_array~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~41_combout\,
	datab => \P_array[2][11]~34_combout\,
	datad => \G_array~50_combout\,
	combout => \carry~21_combout\);

-- Location: LCCOMB_X84_Y57_N24
\carry[16]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[16]~22_combout\ = (\G_array[3][15]~53_combout\) # ((\carry~21_combout\ & ((\G_array[6][7]~combout\) # (\carry~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[3][15]~53_combout\,
	datab => \G_array[6][7]~combout\,
	datac => \carry~21_combout\,
	datad => \carry~10_combout\,
	combout => \carry[16]~22_combout\);

-- Location: IOIBUF_X115_Y57_N22
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: LCCOMB_X84_Y57_N18
\S~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~23_combout\ = \A[16]~input_o\ $ (\carry[16]~22_combout\ $ (\B[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \carry[16]~22_combout\,
	datad => \B[16]~input_o\,
	combout => \S~23_combout\);

-- Location: IOIBUF_X115_Y59_N22
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X115_Y32_N1
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: LCCOMB_X82_Y57_N8
\G_array~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~54_combout\ = (\A[16]~input_o\ & (!\B[16]~input_o\ & (\B[15]~input_o\ $ (\A[15]~input_o\)))) # (!\A[16]~input_o\ & (\B[16]~input_o\ & (\B[15]~input_o\ $ (\A[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \B[15]~input_o\,
	datac => \A[15]~input_o\,
	datad => \B[16]~input_o\,
	combout => \G_array~54_combout\);

-- Location: LCCOMB_X80_Y56_N0
\G_array~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~58_combout\ = (\G_array~45_combout\ & (\P_array[2][12]~85_combout\ & \G_array~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G_array~45_combout\,
	datac => \P_array[2][12]~85_combout\,
	datad => \G_array~54_combout\,
	combout => \G_array~58_combout\);

-- Location: LCCOMB_X82_Y57_N18
\G_array[1][16]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][16]~55_combout\ = (\A[16]~input_o\ & ((\B[16]~input_o\) # ((\B[15]~input_o\ & \A[15]~input_o\)))) # (!\A[16]~input_o\ & (\B[15]~input_o\ & (\A[15]~input_o\ & \B[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \B[15]~input_o\,
	datac => \A[15]~input_o\,
	datad => \B[16]~input_o\,
	combout => \G_array[1][16]~55_combout\);

-- Location: LCCOMB_X82_Y57_N12
\G_array[3][16]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][16]~56_combout\ = (!\G_array[1][16]~55_combout\ & ((!\G_array[1][14]~46_combout\) # (!\G_array~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G_array~54_combout\,
	datac => \G_array[1][14]~46_combout\,
	datad => \G_array[1][16]~55_combout\,
	combout => \G_array[3][16]~56_combout\);

-- Location: LCCOMB_X80_Y56_N6
\G_array[3][16]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][16]~57_combout\ = ((\G_array~54_combout\ & (\G_array~45_combout\ & !\G_array[3][12]~39_combout\))) # (!\G_array[3][16]~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[3][16]~56_combout\,
	datab => \G_array~54_combout\,
	datac => \G_array~45_combout\,
	datad => \G_array[3][12]~39_combout\,
	combout => \G_array[3][16]~57_combout\);

-- Location: LCCOMB_X80_Y56_N2
\carry[17]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[17]~23_combout\ = (\G_array[3][16]~57_combout\) # ((\G_array~58_combout\ & ((\carry[25]~12_combout\) # (\G_array[3][8]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry[25]~12_combout\,
	datab => \G_array~58_combout\,
	datac => \G_array[3][16]~57_combout\,
	datad => \G_array[3][8]~27_combout\,
	combout => \carry[17]~23_combout\);

-- Location: LCCOMB_X87_Y59_N8
\S~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~24_combout\ = \B[17]~input_o\ $ (\A[17]~input_o\ $ (\carry[17]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[17]~input_o\,
	datab => \A[17]~input_o\,
	datac => \carry[17]~23_combout\,
	combout => \S~24_combout\);

-- Location: IOIBUF_X79_Y0_N1
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: LCCOMB_X83_Y57_N24
\G_array~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~59_combout\ = (\A[16]~input_o\ & (!\B[16]~input_o\ & (\A[17]~input_o\ $ (\B[17]~input_o\)))) # (!\A[16]~input_o\ & (\B[16]~input_o\ & (\A[17]~input_o\ $ (\B[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \A[17]~input_o\,
	datac => \B[16]~input_o\,
	datad => \B[17]~input_o\,
	combout => \G_array~59_combout\);

-- Location: LCCOMB_X79_Y57_N16
\G_array~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~63_combout\ = (\G_array~33_combout\ & (\G_array~41_combout\ & (\G_array~50_combout\ & \G_array~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~33_combout\,
	datab => \G_array~41_combout\,
	datac => \G_array~50_combout\,
	datad => \G_array~59_combout\,
	combout => \G_array~63_combout\);

-- Location: LCCOMB_X83_Y57_N10
\G_array[1][17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][17]~60_combout\ = (\A[17]~input_o\ & ((\B[17]~input_o\) # ((\A[16]~input_o\ & \B[16]~input_o\)))) # (!\A[17]~input_o\ & (\A[16]~input_o\ & (\B[16]~input_o\ & \B[17]~input_o\)))

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
	combout => \G_array[1][17]~60_combout\);

-- Location: LCCOMB_X83_Y57_N20
\G_array[3][17]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][17]~61_combout\ = (!\G_array[1][17]~60_combout\ & ((!\G_array~59_combout\) # (!\G_array[1][15]~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[1][17]~60_combout\,
	datab => \G_array[1][15]~51_combout\,
	datad => \G_array~59_combout\,
	combout => \G_array[3][17]~61_combout\);

-- Location: LCCOMB_X79_Y57_N6
\G_array[3][17]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][17]~62_combout\ = ((!\G_array[3][13]~43_combout\ & (\G_array~50_combout\ & \G_array~59_combout\))) # (!\G_array[3][17]~61_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[3][13]~43_combout\,
	datab => \G_array[3][17]~61_combout\,
	datac => \G_array~50_combout\,
	datad => \G_array~59_combout\,
	combout => \G_array[3][17]~62_combout\);

-- Location: LCCOMB_X79_Y55_N24
\carry[18]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[18]~24_combout\ = (\G_array[3][17]~62_combout\) # ((\G_array~63_combout\ & ((\carry[10]~13_combout\) # (\G_array[3][9]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~63_combout\,
	datab => \carry[10]~13_combout\,
	datac => \G_array[3][17]~62_combout\,
	datad => \G_array[3][9]~30_combout\,
	combout => \carry[18]~24_combout\);

-- Location: IOIBUF_X115_Y36_N1
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: LCCOMB_X81_Y55_N0
\S~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~25_combout\ = \A[18]~input_o\ $ (\carry[18]~24_combout\ $ (\B[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[18]~input_o\,
	datac => \carry[18]~24_combout\,
	datad => \B[18]~input_o\,
	combout => \S~25_combout\);

-- Location: LCCOMB_X83_Y57_N14
\G_array~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~64_combout\ = (\A[18]~input_o\ & (!\B[18]~input_o\ & (\A[17]~input_o\ $ (\B[17]~input_o\)))) # (!\A[18]~input_o\ & (\B[18]~input_o\ & (\A[17]~input_o\ $ (\B[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \A[17]~input_o\,
	datac => \B[18]~input_o\,
	datad => \B[17]~input_o\,
	combout => \G_array~64_combout\);

-- Location: LCCOMB_X82_Y56_N20
\G_array~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~68_combout\ = (\G_array~54_combout\ & (\G_array~45_combout\ & (\G_array~64_combout\ & \G_array~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~54_combout\,
	datab => \G_array~45_combout\,
	datac => \G_array~64_combout\,
	datad => \G_array~37_combout\,
	combout => \G_array~68_combout\);

-- Location: LCCOMB_X82_Y56_N6
\G_array~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~69_combout\ = (\G_array~68_combout\ & (((!\G_array[6][6]~19_combout\ & \P_array[2][10]~33_combout\)) # (!\G_array[3][10]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[6][6]~19_combout\,
	datab => \P_array[2][10]~33_combout\,
	datac => \G_array[3][10]~32_combout\,
	datad => \G_array~68_combout\,
	combout => \G_array~69_combout\);

-- Location: LCCOMB_X83_Y57_N8
\G_array[1][18]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][18]~65_combout\ = (\A[18]~input_o\ & ((\B[18]~input_o\) # ((\A[17]~input_o\ & \B[17]~input_o\)))) # (!\A[18]~input_o\ & (\A[17]~input_o\ & (\B[18]~input_o\ & \B[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \A[17]~input_o\,
	datac => \B[18]~input_o\,
	datad => \B[17]~input_o\,
	combout => \G_array[1][18]~65_combout\);

-- Location: LCCOMB_X82_Y57_N30
\G_array[3][18]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][18]~66_combout\ = (!\G_array[1][18]~65_combout\ & ((!\G_array~64_combout\) # (!\G_array[1][16]~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G_array[1][16]~55_combout\,
	datac => \G_array[1][18]~65_combout\,
	datad => \G_array~64_combout\,
	combout => \G_array[3][18]~66_combout\);

-- Location: LCCOMB_X82_Y56_N26
\G_array[3][18]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][18]~67_combout\ = ((\G_array~54_combout\ & (\G_array~64_combout\ & !\G_array[3][14]~47_combout\))) # (!\G_array[3][18]~66_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~54_combout\,
	datab => \G_array~64_combout\,
	datac => \G_array[3][14]~47_combout\,
	datad => \G_array[3][18]~66_combout\,
	combout => \G_array[3][18]~67_combout\);

-- Location: LCCOMB_X82_Y56_N24
\carry[19]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[19]~25_combout\ = (\G_array~69_combout\) # ((\G_array[3][18]~67_combout\) # ((\G_array~68_combout\ & \carry[11]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~69_combout\,
	datab => \G_array~68_combout\,
	datac => \G_array[3][18]~67_combout\,
	datad => \carry[11]~14_combout\,
	combout => \carry[19]~25_combout\);

-- Location: IOIBUF_X115_Y40_N1
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X115_Y27_N8
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: LCCOMB_X83_Y57_N26
\S~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~26_combout\ = \carry[19]~25_combout\ $ (\B[19]~input_o\ $ (\A[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry[19]~25_combout\,
	datac => \B[19]~input_o\,
	datad => \A[19]~input_o\,
	combout => \S~26_combout\);

-- Location: IOIBUF_X107_Y73_N15
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: LCCOMB_X83_Y57_N4
\G_array~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~70_combout\ = (\A[18]~input_o\ & (!\B[18]~input_o\ & (\B[19]~input_o\ $ (\A[19]~input_o\)))) # (!\A[18]~input_o\ & (\B[18]~input_o\ & (\B[19]~input_o\ $ (\A[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \B[18]~input_o\,
	datac => \B[19]~input_o\,
	datad => \A[19]~input_o\,
	combout => \G_array~70_combout\);

-- Location: LCCOMB_X79_Y57_N2
\G_array~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~71_combout\ = (\G_array~50_combout\ & (\G_array~41_combout\ & (\G_array~70_combout\ & \G_array~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~50_combout\,
	datab => \G_array~41_combout\,
	datac => \G_array~70_combout\,
	datad => \G_array~59_combout\,
	combout => \G_array~71_combout\);

-- Location: LCCOMB_X80_Y57_N28
\carry[36]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[36]~26_combout\ = (\G_array~71_combout\ & (\P_array[2][11]~34_combout\ & (carry(4) & \G_array~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~71_combout\,
	datab => \P_array[2][11]~34_combout\,
	datac => carry(4),
	datad => \G_array~20_combout\,
	combout => \carry[36]~26_combout\);

-- Location: LCCOMB_X83_Y57_N30
\G_array[1][19]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][19]~72_combout\ = (\B[19]~input_o\ & ((\A[19]~input_o\) # ((\A[18]~input_o\ & \B[18]~input_o\)))) # (!\B[19]~input_o\ & (\A[18]~input_o\ & (\B[18]~input_o\ & \A[19]~input_o\)))

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
	combout => \G_array[1][19]~72_combout\);

-- Location: LCCOMB_X83_Y57_N16
\G_array[3][19]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][19]~73_combout\ = (!\G_array[1][19]~72_combout\ & ((!\G_array~70_combout\) # (!\G_array[1][17]~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[1][17]~60_combout\,
	datab => \G_array~70_combout\,
	datac => \G_array[1][19]~72_combout\,
	combout => \G_array[3][19]~73_combout\);

-- Location: LCCOMB_X80_Y57_N30
\G_array[3][19]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][19]~74_combout\ = ((!\G_array[3][15]~52_combout\ & (\G_array~70_combout\ & \G_array~59_combout\))) # (!\G_array[3][19]~73_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[3][15]~52_combout\,
	datab => \G_array~70_combout\,
	datac => \G_array~59_combout\,
	datad => \G_array[3][19]~73_combout\,
	combout => \G_array[3][19]~74_combout\);

-- Location: LCCOMB_X80_Y57_N0
\carry[20]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[20]~27_combout\ = (\carry[36]~26_combout\) # ((\G_array[3][19]~74_combout\) # ((\G_array~71_combout\ & \G_array[3][11]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~71_combout\,
	datab => \carry[36]~26_combout\,
	datac => \G_array[3][19]~74_combout\,
	datad => \G_array[3][11]~36_combout\,
	combout => \carry[20]~27_combout\);

-- Location: IOIBUF_X107_Y73_N22
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: LCCOMB_X83_Y57_N18
\S~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~27_combout\ = \B[20]~input_o\ $ (\carry[20]~27_combout\ $ (\A[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[20]~input_o\,
	datac => \carry[20]~27_combout\,
	datad => \A[20]~input_o\,
	combout => \S~27_combout\);

-- Location: LCCOMB_X83_Y57_N12
\G_array~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~75_combout\ = (\A[20]~input_o\ & (!\B[20]~input_o\ & (\B[19]~input_o\ $ (\A[19]~input_o\)))) # (!\A[20]~input_o\ & (\B[20]~input_o\ & (\B[19]~input_o\ $ (\A[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \B[20]~input_o\,
	datac => \B[19]~input_o\,
	datad => \A[19]~input_o\,
	combout => \G_array~75_combout\);

-- Location: LCCOMB_X80_Y56_N12
\carry[21]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[21]~28_combout\ = (\P_array[2][8]~31_combout\ & \carry[5]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[2][8]~31_combout\,
	datac => \carry[5]~7_combout\,
	combout => \carry[21]~28_combout\);

-- Location: LCCOMB_X80_Y56_N30
\carry[21]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[21]~29_combout\ = (\G_array~64_combout\ & (\G_array~58_combout\ & (\G_array~75_combout\ & \carry[21]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~64_combout\,
	datab => \G_array~58_combout\,
	datac => \G_array~75_combout\,
	datad => \carry[21]~28_combout\,
	combout => \carry[21]~29_combout\);

-- Location: LCCOMB_X80_Y56_N18
\G_array~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~79_combout\ = (\G_array~64_combout\ & (\G_array~45_combout\ & (\G_array~75_combout\ & \G_array~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~64_combout\,
	datab => \G_array~45_combout\,
	datac => \G_array~75_combout\,
	datad => \G_array~54_combout\,
	combout => \G_array~79_combout\);

-- Location: LCCOMB_X83_Y57_N6
\G_array[1][20]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][20]~76_combout\ = (\A[20]~input_o\ & ((\B[20]~input_o\) # ((\B[19]~input_o\ & \A[19]~input_o\)))) # (!\A[20]~input_o\ & (\B[20]~input_o\ & (\B[19]~input_o\ & \A[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \B[20]~input_o\,
	datac => \B[19]~input_o\,
	datad => \A[19]~input_o\,
	combout => \G_array[1][20]~76_combout\);

-- Location: LCCOMB_X83_Y57_N0
\G_array[3][20]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][20]~77_combout\ = (!\G_array[1][20]~76_combout\ & ((!\G_array~75_combout\) # (!\G_array[1][18]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[1][20]~76_combout\,
	datac => \G_array[1][18]~65_combout\,
	datad => \G_array~75_combout\,
	combout => \G_array[3][20]~77_combout\);

-- Location: LCCOMB_X80_Y56_N8
\G_array[3][20]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][20]~78_combout\ = ((\G_array~64_combout\ & (\G_array~75_combout\ & !\G_array[3][16]~56_combout\))) # (!\G_array[3][20]~77_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~64_combout\,
	datab => \G_array[3][20]~77_combout\,
	datac => \G_array~75_combout\,
	datad => \G_array[3][16]~56_combout\,
	combout => \G_array[3][20]~78_combout\);

-- Location: LCCOMB_X80_Y60_N24
\carry[21]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[21]~30_combout\ = (\carry[21]~29_combout\) # ((\G_array[3][20]~78_combout\) # ((\G_array~79_combout\ & \G_array[3][12]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry[21]~29_combout\,
	datab => \G_array~79_combout\,
	datac => \G_array[3][20]~78_combout\,
	datad => \G_array[3][12]~40_combout\,
	combout => \carry[21]~30_combout\);

-- Location: IOIBUF_X111_Y73_N1
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: IOIBUF_X115_Y69_N22
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: LCCOMB_X85_Y60_N8
\S~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~28_combout\ = \carry[21]~30_combout\ $ (\A[21]~input_o\ $ (\B[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \carry[21]~30_combout\,
	datac => \A[21]~input_o\,
	datad => \B[21]~input_o\,
	combout => \S~28_combout\);

-- Location: IOIBUF_X100_Y73_N15
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: IOIBUF_X89_Y73_N15
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: LCCOMB_X83_Y57_N2
\G_array~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~80_combout\ = (\A[20]~input_o\ & (!\B[20]~input_o\ & (\A[21]~input_o\ $ (\B[21]~input_o\)))) # (!\A[20]~input_o\ & (\B[20]~input_o\ & (\A[21]~input_o\ $ (\B[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \A[21]~input_o\,
	datac => \B[20]~input_o\,
	datad => \B[21]~input_o\,
	combout => \G_array~80_combout\);

-- Location: LCCOMB_X79_Y57_N0
\G_array~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~84_combout\ = (\G_array~50_combout\ & (\G_array~70_combout\ & (\G_array~80_combout\ & \G_array~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~50_combout\,
	datab => \G_array~70_combout\,
	datac => \G_array~80_combout\,
	datad => \G_array~59_combout\,
	combout => \G_array~84_combout\);

-- Location: LCCOMB_X79_Y57_N14
\carry[22]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[22]~31_combout\ = (\carry[22]~18_combout\ & (\G_array~80_combout\ & (\G_array~70_combout\ & \G_array~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry[22]~18_combout\,
	datab => \G_array~80_combout\,
	datac => \G_array~70_combout\,
	datad => \G_array~63_combout\,
	combout => \carry[22]~31_combout\);

-- Location: LCCOMB_X83_Y57_N28
\G_array[1][21]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][21]~81_combout\ = (\A[21]~input_o\ & ((\B[21]~input_o\) # ((\A[20]~input_o\ & \B[20]~input_o\)))) # (!\A[21]~input_o\ & (\A[20]~input_o\ & (\B[20]~input_o\ & \B[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \A[21]~input_o\,
	datac => \B[20]~input_o\,
	datad => \B[21]~input_o\,
	combout => \G_array[1][21]~81_combout\);

-- Location: LCCOMB_X83_Y57_N22
\G_array[3][21]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][21]~82_combout\ = (!\G_array[1][21]~81_combout\ & ((!\G_array~80_combout\) # (!\G_array[1][19]~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G_array[1][21]~81_combout\,
	datac => \G_array[1][19]~72_combout\,
	datad => \G_array~80_combout\,
	combout => \G_array[3][21]~82_combout\);

-- Location: LCCOMB_X79_Y57_N12
\G_array[3][21]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][21]~83_combout\ = ((\G_array~80_combout\ & (\G_array~70_combout\ & !\G_array[3][17]~61_combout\))) # (!\G_array[3][21]~82_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[3][21]~82_combout\,
	datab => \G_array~80_combout\,
	datac => \G_array~70_combout\,
	datad => \G_array[3][17]~61_combout\,
	combout => \G_array[3][21]~83_combout\);

-- Location: LCCOMB_X79_Y57_N26
\carry[22]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[22]~32_combout\ = (\carry[22]~31_combout\) # ((\G_array[3][21]~83_combout\) # ((\G_array~84_combout\ & \G_array[3][13]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~84_combout\,
	datab => \G_array[3][13]~44_combout\,
	datac => \carry[22]~31_combout\,
	datad => \G_array[3][21]~83_combout\,
	combout => \carry[22]~32_combout\);

-- Location: LCCOMB_X85_Y60_N2
\S~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~29_combout\ = \A[22]~input_o\ $ (\B[22]~input_o\ $ (\carry[22]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datac => \B[22]~input_o\,
	datad => \carry[22]~32_combout\,
	combout => \S~29_combout\);

-- Location: IOIBUF_X115_Y44_N1
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: IOIBUF_X94_Y73_N1
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: LCCOMB_X85_Y60_N4
\G_array~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~85_combout\ = (\A[22]~input_o\ & (!\B[22]~input_o\ & (\A[21]~input_o\ $ (\B[21]~input_o\)))) # (!\A[22]~input_o\ & (\B[22]~input_o\ & (\A[21]~input_o\ $ (\B[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \A[21]~input_o\,
	datac => \B[22]~input_o\,
	datad => \B[21]~input_o\,
	combout => \G_array~85_combout\);

-- Location: LCCOMB_X81_Y60_N14
\G_array~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~89_combout\ = (\G_array~64_combout\ & (\G_array~75_combout\ & (\G_array~85_combout\ & \G_array~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~64_combout\,
	datab => \G_array~75_combout\,
	datac => \G_array~85_combout\,
	datad => \G_array~54_combout\,
	combout => \G_array~89_combout\);

-- Location: LCCOMB_X85_Y60_N6
\G_array[1][22]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][22]~86_combout\ = (\A[22]~input_o\ & ((\B[22]~input_o\) # ((\A[21]~input_o\ & \B[21]~input_o\)))) # (!\A[22]~input_o\ & (\A[21]~input_o\ & (\B[22]~input_o\ & \B[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \A[21]~input_o\,
	datac => \B[22]~input_o\,
	datad => \B[21]~input_o\,
	combout => \G_array[1][22]~86_combout\);

-- Location: LCCOMB_X81_Y60_N24
\G_array[3][22]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][22]~87_combout\ = (!\G_array[1][22]~86_combout\ & ((!\G_array[1][20]~76_combout\) # (!\G_array~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[1][22]~86_combout\,
	datab => \G_array~85_combout\,
	datac => \G_array[1][20]~76_combout\,
	combout => \G_array[3][22]~87_combout\);

-- Location: LCCOMB_X81_Y60_N26
\G_array[3][22]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][22]~88_combout\ = ((!\G_array[3][18]~66_combout\ & (\G_array~75_combout\ & \G_array~85_combout\))) # (!\G_array[3][22]~87_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[3][18]~66_combout\,
	datab => \G_array~75_combout\,
	datac => \G_array~85_combout\,
	datad => \G_array[3][22]~87_combout\,
	combout => \G_array[3][22]~88_combout\);

-- Location: LCCOMB_X81_Y60_N12
\P_array[2][22]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[2][22]~35_combout\ = (\G_array~85_combout\ & \G_array~75_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G_array~85_combout\,
	datac => \G_array~75_combout\,
	combout => \P_array[2][22]~35_combout\);

-- Location: LCCOMB_X82_Y56_N2
\carry[23]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[23]~33_combout\ = (carry(7) & (\G_array~68_combout\ & (\P_array[2][22]~35_combout\ & \P_array[2][10]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => carry(7),
	datab => \G_array~68_combout\,
	datac => \P_array[2][22]~35_combout\,
	datad => \P_array[2][10]~33_combout\,
	combout => \carry[23]~33_combout\);

-- Location: LCCOMB_X77_Y60_N16
\carry[23]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[23]~34_combout\ = (\G_array[3][22]~88_combout\) # ((\carry[23]~33_combout\) # ((\G_array~89_combout\ & \G_array[3][14]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~89_combout\,
	datab => \G_array[3][22]~88_combout\,
	datac => \carry[23]~33_combout\,
	datad => \G_array[3][14]~48_combout\,
	combout => \carry[23]~34_combout\);

-- Location: LCCOMB_X85_Y60_N0
\S~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~30_combout\ = \B[23]~input_o\ $ (\A[23]~input_o\ $ (\carry[23]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datab => \A[23]~input_o\,
	datac => \carry[23]~34_combout\,
	combout => \S~30_combout\);

-- Location: LCCOMB_X85_Y60_N18
\G_array~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~90_combout\ = (\A[22]~input_o\ & (!\B[22]~input_o\ & (\A[23]~input_o\ $ (\B[23]~input_o\)))) # (!\A[22]~input_o\ & (\B[22]~input_o\ & (\A[23]~input_o\ $ (\B[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \A[23]~input_o\,
	datac => \B[22]~input_o\,
	datad => \B[23]~input_o\,
	combout => \G_array~90_combout\);

-- Location: LCCOMB_X79_Y57_N4
\G_array~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~94_combout\ = (\G_array~80_combout\ & (\G_array~59_combout\ & (\G_array~70_combout\ & \G_array~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~80_combout\,
	datab => \G_array~59_combout\,
	datac => \G_array~70_combout\,
	datad => \G_array~90_combout\,
	combout => \G_array~94_combout\);

-- Location: LCCOMB_X80_Y57_N2
\carry[40]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[40]~35_combout\ = (\G_array~71_combout\ & (\G_array~90_combout\ & (\G_array~80_combout\ & \P_array[2][11]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~71_combout\,
	datab => \G_array~90_combout\,
	datac => \G_array~80_combout\,
	datad => \P_array[2][11]~34_combout\,
	combout => \carry[40]~35_combout\);

-- Location: LCCOMB_X84_Y57_N28
\carry[40]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[40]~36_combout\ = (\carry[40]~35_combout\ & ((\G_array[6][7]~combout\) # (\carry~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G_array[6][7]~combout\,
	datac => \carry[40]~35_combout\,
	datad => \carry~10_combout\,
	combout => \carry[40]~36_combout\);

-- Location: LCCOMB_X85_Y60_N28
\G_array[1][23]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][23]~91_combout\ = (\A[23]~input_o\ & ((\B[23]~input_o\) # ((\A[22]~input_o\ & \B[22]~input_o\)))) # (!\A[23]~input_o\ & (\A[22]~input_o\ & (\B[22]~input_o\ & \B[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \A[23]~input_o\,
	datac => \B[22]~input_o\,
	datad => \B[23]~input_o\,
	combout => \G_array[1][23]~91_combout\);

-- Location: LCCOMB_X85_Y60_N30
\G_array[3][23]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][23]~92_combout\ = (!\G_array[1][23]~91_combout\ & ((!\G_array[1][21]~81_combout\) # (!\G_array~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G_array~90_combout\,
	datac => \G_array[1][21]~81_combout\,
	datad => \G_array[1][23]~91_combout\,
	combout => \G_array[3][23]~92_combout\);

-- Location: LCCOMB_X80_Y57_N4
\G_array[3][23]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][23]~93_combout\ = ((!\G_array[3][19]~73_combout\ & (\G_array~90_combout\ & \G_array~80_combout\))) # (!\G_array[3][23]~92_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[3][19]~73_combout\,
	datab => \G_array~90_combout\,
	datac => \G_array~80_combout\,
	datad => \G_array[3][23]~92_combout\,
	combout => \G_array[3][23]~93_combout\);

-- Location: LCCOMB_X79_Y61_N24
\carry[24]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[24]~37_combout\ = (\carry[40]~36_combout\) # ((\G_array[3][23]~93_combout\) # ((\G_array~94_combout\ & \G_array[3][15]~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~94_combout\,
	datab => \carry[40]~36_combout\,
	datac => \G_array[3][23]~93_combout\,
	datad => \G_array[3][15]~53_combout\,
	combout => \carry[24]~37_combout\);

-- Location: IOIBUF_X85_Y73_N1
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: IOIBUF_X115_Y63_N1
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: LCCOMB_X85_Y60_N16
\S~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~31_combout\ = \carry[24]~37_combout\ $ (\B[24]~input_o\ $ (\A[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry[24]~37_combout\,
	datac => \B[24]~input_o\,
	datad => \A[24]~input_o\,
	combout => \S~31_combout\);

-- Location: IOIBUF_X115_Y66_N15
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: IOIBUF_X115_Y61_N15
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: LCCOMB_X85_Y60_N26
\G_array~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~95_combout\ = (\B[23]~input_o\ & (!\A[23]~input_o\ & (\B[24]~input_o\ $ (\A[24]~input_o\)))) # (!\B[23]~input_o\ & (\A[23]~input_o\ & (\B[24]~input_o\ $ (\A[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datab => \A[23]~input_o\,
	datac => \B[24]~input_o\,
	datad => \A[24]~input_o\,
	combout => \G_array~95_combout\);

-- Location: LCCOMB_X80_Y56_N4
\G_array~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~99_combout\ = (\G_array~64_combout\ & (\G_array~95_combout\ & (\G_array~75_combout\ & \G_array~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~64_combout\,
	datab => \G_array~95_combout\,
	datac => \G_array~75_combout\,
	datad => \G_array~85_combout\,
	combout => \G_array~99_combout\);

-- Location: LCCOMB_X85_Y60_N20
\G_array[1][24]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][24]~96_combout\ = (\B[24]~input_o\ & ((\A[24]~input_o\) # ((\B[23]~input_o\ & \A[23]~input_o\)))) # (!\B[24]~input_o\ & (\B[23]~input_o\ & (\A[23]~input_o\ & \A[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datab => \A[23]~input_o\,
	datac => \B[24]~input_o\,
	datad => \A[24]~input_o\,
	combout => \G_array[1][24]~96_combout\);

-- Location: LCCOMB_X81_Y60_N8
\G_array[3][24]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][24]~97_combout\ = (!\G_array[1][24]~96_combout\ & ((!\G_array[1][22]~86_combout\) # (!\G_array~95_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~95_combout\,
	datac => \G_array[1][24]~96_combout\,
	datad => \G_array[1][22]~86_combout\,
	combout => \G_array[3][24]~97_combout\);

-- Location: LCCOMB_X81_Y60_N2
\G_array[3][24]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][24]~98_combout\ = ((\G_array~95_combout\ & (\G_array~85_combout\ & !\G_array[3][20]~77_combout\))) # (!\G_array[3][24]~97_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~95_combout\,
	datab => \G_array[3][24]~97_combout\,
	datac => \G_array~85_combout\,
	datad => \G_array[3][20]~77_combout\,
	combout => \G_array[3][24]~98_combout\);

-- Location: LCCOMB_X80_Y56_N22
\carry[41]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[41]~38_combout\ = (\G_array~58_combout\ & (\G_array~99_combout\ & ((\carry[25]~12_combout\) # (\G_array[3][8]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry[25]~12_combout\,
	datab => \G_array~58_combout\,
	datac => \G_array~99_combout\,
	datad => \G_array[3][8]~27_combout\,
	combout => \carry[41]~38_combout\);

-- Location: LCCOMB_X79_Y60_N16
\carry[25]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[25]~39_combout\ = (\G_array[3][24]~98_combout\) # ((\carry[41]~38_combout\) # ((\G_array~99_combout\ & \G_array[3][16]~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~99_combout\,
	datab => \G_array[3][24]~98_combout\,
	datac => \G_array[3][16]~57_combout\,
	datad => \carry[41]~38_combout\,
	combout => \carry[25]~39_combout\);

-- Location: LCCOMB_X85_Y60_N22
\S~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~32_combout\ = \B[25]~input_o\ $ (\A[25]~input_o\ $ (\carry[25]~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[25]~input_o\,
	datac => \A[25]~input_o\,
	datad => \carry[25]~39_combout\,
	combout => \S~32_combout\);

-- Location: IOIBUF_X115_Y65_N22
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: LCCOMB_X85_Y60_N24
\G_array~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~100_combout\ = (\A[25]~input_o\ & (!\B[25]~input_o\ & (\B[24]~input_o\ $ (\A[24]~input_o\)))) # (!\A[25]~input_o\ & (\B[25]~input_o\ & (\B[24]~input_o\ $ (\A[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \B[25]~input_o\,
	datac => \B[24]~input_o\,
	datad => \A[24]~input_o\,
	combout => \G_array~100_combout\);

-- Location: LCCOMB_X79_Y59_N10
\G_array~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~104_combout\ = (\G_array~70_combout\ & (\G_array~90_combout\ & (\G_array~80_combout\ & \G_array~100_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~70_combout\,
	datab => \G_array~90_combout\,
	datac => \G_array~80_combout\,
	datad => \G_array~100_combout\,
	combout => \G_array~104_combout\);

-- Location: LCCOMB_X79_Y55_N10
\carry[42]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[42]~40_combout\ = (\G_array~63_combout\ & (\G_array~104_combout\ & ((\carry[10]~13_combout\) # (\G_array[3][9]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~63_combout\,
	datab => \G_array~104_combout\,
	datac => \carry[10]~13_combout\,
	datad => \G_array[3][9]~30_combout\,
	combout => \carry[42]~40_combout\);

-- Location: LCCOMB_X85_Y60_N10
\G_array[1][25]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][25]~101_combout\ = (\A[25]~input_o\ & ((\B[25]~input_o\) # ((\B[24]~input_o\ & \A[24]~input_o\)))) # (!\A[25]~input_o\ & (\B[25]~input_o\ & (\B[24]~input_o\ & \A[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \B[25]~input_o\,
	datac => \B[24]~input_o\,
	datad => \A[24]~input_o\,
	combout => \G_array[1][25]~101_combout\);

-- Location: LCCOMB_X85_Y60_N12
\G_array[3][25]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][25]~102_combout\ = (!\G_array[1][25]~101_combout\ & ((!\G_array~100_combout\) # (!\G_array[1][23]~91_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[1][25]~101_combout\,
	datab => \G_array[1][23]~91_combout\,
	datad => \G_array~100_combout\,
	combout => \G_array[3][25]~102_combout\);

-- Location: LCCOMB_X79_Y59_N16
\G_array[3][25]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][25]~103_combout\ = ((\G_array~100_combout\ & (!\G_array[3][21]~82_combout\ & \G_array~90_combout\))) # (!\G_array[3][25]~102_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~100_combout\,
	datab => \G_array[3][21]~82_combout\,
	datac => \G_array[3][25]~102_combout\,
	datad => \G_array~90_combout\,
	combout => \G_array[3][25]~103_combout\);

-- Location: LCCOMB_X79_Y55_N12
\carry[26]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[26]~41_combout\ = (\carry[42]~40_combout\) # ((\G_array[3][25]~103_combout\) # ((\G_array~104_combout\ & \G_array[3][17]~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry[42]~40_combout\,
	datab => \G_array~104_combout\,
	datac => \G_array[3][17]~62_combout\,
	datad => \G_array[3][25]~103_combout\,
	combout => \carry[26]~41_combout\);

-- Location: IOIBUF_X94_Y73_N8
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: LCCOMB_X83_Y61_N8
\S~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~33_combout\ = \A[26]~input_o\ $ (\carry[26]~41_combout\ $ (\B[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \carry[26]~41_combout\,
	datac => \B[26]~input_o\,
	combout => \S~33_combout\);

-- Location: LCCOMB_X83_Y61_N26
\G_array~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~105_combout\ = (\A[25]~input_o\ & (!\B[25]~input_o\ & (\B[26]~input_o\ $ (\A[26]~input_o\)))) # (!\A[25]~input_o\ & (\B[25]~input_o\ & (\B[26]~input_o\ $ (\A[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \B[26]~input_o\,
	datac => \A[26]~input_o\,
	datad => \B[25]~input_o\,
	combout => \G_array~105_combout\);

-- Location: LCCOMB_X81_Y60_N0
\G_array~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~109_combout\ = (\G_array~105_combout\ & (\G_array~85_combout\ & (\G_array~95_combout\ & \G_array~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~105_combout\,
	datab => \G_array~85_combout\,
	datac => \G_array~95_combout\,
	datad => \G_array~75_combout\,
	combout => \G_array~109_combout\);

-- Location: LCCOMB_X82_Y56_N4
\carry[43]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[43]~42_combout\ = (\G_array~109_combout\ & (\G_array~68_combout\ & \carry[27]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~109_combout\,
	datab => \G_array~68_combout\,
	datad => \carry[27]~15_combout\,
	combout => \carry[43]~42_combout\);

-- Location: LCCOMB_X83_Y61_N4
\G_array[1][26]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][26]~106_combout\ = (\B[26]~input_o\ & ((\A[26]~input_o\) # ((\A[25]~input_o\ & \B[25]~input_o\)))) # (!\B[26]~input_o\ & (\A[25]~input_o\ & (\A[26]~input_o\ & \B[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \B[26]~input_o\,
	datac => \A[26]~input_o\,
	datad => \B[25]~input_o\,
	combout => \G_array[1][26]~106_combout\);

-- Location: LCCOMB_X81_Y60_N28
\G_array[3][26]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][26]~107_combout\ = (!\G_array[1][26]~106_combout\ & ((!\G_array[1][24]~96_combout\) # (!\G_array~105_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~105_combout\,
	datab => \G_array[1][26]~106_combout\,
	datac => \G_array[1][24]~96_combout\,
	combout => \G_array[3][26]~107_combout\);

-- Location: LCCOMB_X81_Y60_N30
\G_array[3][26]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][26]~108_combout\ = ((\G_array~105_combout\ & (\G_array~95_combout\ & !\G_array[3][22]~87_combout\))) # (!\G_array[3][26]~107_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~105_combout\,
	datab => \G_array[3][26]~107_combout\,
	datac => \G_array~95_combout\,
	datad => \G_array[3][22]~87_combout\,
	combout => \G_array[3][26]~108_combout\);

-- Location: LCCOMB_X82_Y56_N14
\carry[27]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[27]~43_combout\ = (\carry[43]~42_combout\) # ((\G_array[3][26]~108_combout\) # ((\G_array~109_combout\ & \G_array[3][18]~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~109_combout\,
	datab => \carry[43]~42_combout\,
	datac => \G_array[3][18]~67_combout\,
	datad => \G_array[3][26]~108_combout\,
	combout => \carry[27]~43_combout\);

-- Location: IOIBUF_X87_Y73_N1
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: IOIBUF_X115_Y62_N22
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: LCCOMB_X83_Y61_N22
\S~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~34_combout\ = \carry[27]~43_combout\ $ (\A[27]~input_o\ $ (\B[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \carry[27]~43_combout\,
	datac => \A[27]~input_o\,
	datad => \B[27]~input_o\,
	combout => \S~34_combout\);

-- Location: LCCOMB_X83_Y61_N24
\G_array~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~110_combout\ = (\A[27]~input_o\ & (!\B[27]~input_o\ & (\B[26]~input_o\ $ (\A[26]~input_o\)))) # (!\A[27]~input_o\ & (\B[27]~input_o\ & (\B[26]~input_o\ $ (\A[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \B[26]~input_o\,
	datac => \A[26]~input_o\,
	datad => \B[27]~input_o\,
	combout => \G_array~110_combout\);

-- Location: LCCOMB_X80_Y57_N8
\G_array~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~114_combout\ = (\G_array~110_combout\ & (\G_array~80_combout\ & (\G_array~100_combout\ & \G_array~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~110_combout\,
	datab => \G_array~80_combout\,
	datac => \G_array~100_combout\,
	datad => \G_array~90_combout\,
	combout => \G_array~114_combout\);

-- Location: LCCOMB_X80_Y57_N10
\carry[44]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[44]~44_combout\ = (\G_array~71_combout\ & (\G_array~114_combout\ & \carry[28]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~71_combout\,
	datab => \G_array~114_combout\,
	datac => \carry[28]~16_combout\,
	combout => \carry[44]~44_combout\);

-- Location: LCCOMB_X83_Y61_N18
\G_array[1][27]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][27]~111_combout\ = (\A[27]~input_o\ & ((\B[27]~input_o\) # ((\B[26]~input_o\ & \A[26]~input_o\)))) # (!\A[27]~input_o\ & (\B[26]~input_o\ & (\A[26]~input_o\ & \B[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \B[26]~input_o\,
	datac => \A[26]~input_o\,
	datad => \B[27]~input_o\,
	combout => \G_array[1][27]~111_combout\);

-- Location: LCCOMB_X85_Y60_N14
\G_array[3][27]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][27]~112_combout\ = (!\G_array[1][27]~111_combout\ & ((!\G_array[1][25]~101_combout\) # (!\G_array~110_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~110_combout\,
	datab => \G_array[1][27]~111_combout\,
	datad => \G_array[1][25]~101_combout\,
	combout => \G_array[3][27]~112_combout\);

-- Location: LCCOMB_X80_Y57_N6
\G_array[3][27]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][27]~113_combout\ = ((\G_array~100_combout\ & (\G_array~110_combout\ & !\G_array[3][23]~92_combout\))) # (!\G_array[3][27]~112_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~100_combout\,
	datab => \G_array[3][27]~112_combout\,
	datac => \G_array~110_combout\,
	datad => \G_array[3][23]~92_combout\,
	combout => \G_array[3][27]~113_combout\);

-- Location: LCCOMB_X80_Y57_N12
\carry[28]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[28]~45_combout\ = (\carry[44]~44_combout\) # ((\G_array[3][27]~113_combout\) # ((\G_array~114_combout\ & \G_array[3][19]~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry[44]~44_combout\,
	datab => \G_array~114_combout\,
	datac => \G_array[3][19]~74_combout\,
	datad => \G_array[3][27]~113_combout\,
	combout => \carry[28]~45_combout\);

-- Location: IOIBUF_X102_Y73_N1
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: IOIBUF_X115_Y68_N22
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: LCCOMB_X83_Y61_N28
\S~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~35_combout\ = \carry[28]~45_combout\ $ (\A[28]~input_o\ $ (\B[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry[28]~45_combout\,
	datac => \A[28]~input_o\,
	datad => \B[28]~input_o\,
	combout => \S~35_combout\);

-- Location: LCCOMB_X83_Y61_N30
\G_array~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~115_combout\ = (\A[27]~input_o\ & (!\B[27]~input_o\ & (\A[28]~input_o\ $ (\B[28]~input_o\)))) # (!\A[27]~input_o\ & (\B[27]~input_o\ & (\A[28]~input_o\ $ (\B[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \B[27]~input_o\,
	datac => \A[28]~input_o\,
	datad => \B[28]~input_o\,
	combout => \G_array~115_combout\);

-- Location: LCCOMB_X81_Y60_N22
\G_array~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~119_combout\ = (\G_array~105_combout\ & (\G_array~85_combout\ & (\G_array~95_combout\ & \G_array~115_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~105_combout\,
	datab => \G_array~85_combout\,
	datac => \G_array~95_combout\,
	datad => \G_array~115_combout\,
	combout => \G_array~119_combout\);

-- Location: LCCOMB_X80_Y60_N12
\P_array[4][28]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[4][28]~36_combout\ = (\G_array~79_combout\ & \G_array~119_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G_array~79_combout\,
	datad => \G_array~119_combout\,
	combout => \P_array[4][28]~36_combout\);

-- Location: LCCOMB_X80_Y56_N16
\carry[13]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[13]~47_combout\ = (\P_array[2][8]~31_combout\ & (\carry[5]~7_combout\ & \P_array[2][12]~85_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[2][8]~31_combout\,
	datab => \carry[5]~7_combout\,
	datac => \P_array[2][12]~85_combout\,
	combout => \carry[13]~47_combout\);

-- Location: LCCOMB_X83_Y61_N0
\G_array[1][28]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][28]~116_combout\ = (\A[28]~input_o\ & ((\B[28]~input_o\) # ((\A[27]~input_o\ & \B[27]~input_o\)))) # (!\A[28]~input_o\ & (\A[27]~input_o\ & (\B[27]~input_o\ & \B[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \B[27]~input_o\,
	datac => \A[28]~input_o\,
	datad => \B[28]~input_o\,
	combout => \G_array[1][28]~116_combout\);

-- Location: LCCOMB_X81_Y60_N10
\G_array[3][28]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][28]~117_combout\ = (!\G_array[1][28]~116_combout\ & ((!\G_array[1][26]~106_combout\) # (!\G_array~115_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~115_combout\,
	datab => \G_array[1][28]~116_combout\,
	datad => \G_array[1][26]~106_combout\,
	combout => \G_array[3][28]~117_combout\);

-- Location: LCCOMB_X81_Y60_N4
\G_array[3][28]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][28]~118_combout\ = ((\G_array~115_combout\ & (!\G_array[3][24]~97_combout\ & \G_array~105_combout\))) # (!\G_array[3][28]~117_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~115_combout\,
	datab => \G_array[3][24]~97_combout\,
	datac => \G_array[3][28]~117_combout\,
	datad => \G_array~105_combout\,
	combout => \G_array[3][28]~118_combout\);

-- Location: LCCOMB_X80_Y60_N10
\carry[29]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[29]~46_combout\ = (\G_array[3][28]~118_combout\) # ((\G_array~119_combout\ & \G_array[3][20]~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G_array~119_combout\,
	datac => \G_array[3][20]~78_combout\,
	datad => \G_array[3][28]~118_combout\,
	combout => \carry[29]~46_combout\);

-- Location: LCCOMB_X80_Y60_N6
\carry[29]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[29]~48_combout\ = (\carry[29]~46_combout\) # ((\P_array[4][28]~36_combout\ & ((\G_array[3][12]~40_combout\) # (\carry[13]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[4][28]~36_combout\,
	datab => \G_array[3][12]~40_combout\,
	datac => \carry[13]~47_combout\,
	datad => \carry[29]~46_combout\,
	combout => \carry[29]~48_combout\);

-- Location: IOIBUF_X83_Y73_N8
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: IOIBUF_X115_Y66_N22
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: LCCOMB_X83_Y61_N2
\S~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~36_combout\ = \carry[29]~48_combout\ $ (\A[29]~input_o\ $ (\B[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \carry[29]~48_combout\,
	datac => \A[29]~input_o\,
	datad => \B[29]~input_o\,
	combout => \S~36_combout\);

-- Location: LCCOMB_X83_Y61_N12
\G_array~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~120_combout\ = (\A[29]~input_o\ & (!\B[29]~input_o\ & (\A[28]~input_o\ $ (\B[28]~input_o\)))) # (!\A[29]~input_o\ & (\B[29]~input_o\ & (\A[28]~input_o\ $ (\B[28]~input_o\))))

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
	combout => \G_array~120_combout\);

-- Location: LCCOMB_X79_Y59_N4
\P_array[2][29]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[2][29]~37_combout\ = (\G_array~120_combout\ & \G_array~110_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G_array~120_combout\,
	datac => \G_array~110_combout\,
	combout => \P_array[2][29]~37_combout\);

-- Location: LCCOMB_X79_Y59_N6
\P_array[4][29]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[4][29]~38_combout\ = (\G_array~84_combout\ & (\G_array~90_combout\ & (\P_array[2][29]~37_combout\ & \G_array~100_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~84_combout\,
	datab => \G_array~90_combout\,
	datac => \P_array[2][29]~37_combout\,
	datad => \G_array~100_combout\,
	combout => \P_array[4][29]~38_combout\);

-- Location: LCCOMB_X79_Y59_N8
\G_array~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~123_combout\ = (\G_array[3][21]~83_combout\ & (\G_array~90_combout\ & (\P_array[2][29]~37_combout\ & \G_array~100_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[3][21]~83_combout\,
	datab => \G_array~90_combout\,
	datac => \P_array[2][29]~37_combout\,
	datad => \G_array~100_combout\,
	combout => \G_array~123_combout\);

-- Location: LCCOMB_X79_Y57_N30
\carry[30]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[30]~49_combout\ = (\G_array[3][13]~44_combout\) # ((\carry[22]~18_combout\ & (\G_array~41_combout\ & \G_array~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry[22]~18_combout\,
	datab => \G_array[3][13]~44_combout\,
	datac => \G_array~41_combout\,
	datad => \G_array~33_combout\,
	combout => \carry[30]~49_combout\);

-- Location: LCCOMB_X83_Y61_N14
\G_array[1][29]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][29]~121_combout\ = (\A[29]~input_o\ & ((\B[29]~input_o\) # ((\A[28]~input_o\ & \B[28]~input_o\)))) # (!\A[29]~input_o\ & (\B[29]~input_o\ & (\A[28]~input_o\ & \B[28]~input_o\)))

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
	combout => \G_array[1][29]~121_combout\);

-- Location: LCCOMB_X80_Y61_N24
\G_array[3][29]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][29]~122_combout\ = (!\G_array[1][29]~121_combout\ & ((!\G_array[1][27]~111_combout\) # (!\G_array~120_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G_array~120_combout\,
	datac => \G_array[1][29]~121_combout\,
	datad => \G_array[1][27]~111_combout\,
	combout => \G_array[3][29]~122_combout\);

-- Location: LCCOMB_X79_Y59_N0
\G_array[3][29]~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][29]~239_combout\ = ((\G_array~110_combout\ & (!\G_array[3][25]~102_combout\ & \G_array~120_combout\))) # (!\G_array[3][29]~122_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~110_combout\,
	datab => \G_array[3][29]~122_combout\,
	datac => \G_array[3][25]~102_combout\,
	datad => \G_array~120_combout\,
	combout => \G_array[3][29]~239_combout\);

-- Location: LCCOMB_X79_Y59_N18
\carry[30]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[30]~50_combout\ = (\G_array~123_combout\) # ((\G_array[3][29]~239_combout\) # ((\P_array[4][29]~38_combout\ & \carry[30]~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[4][29]~38_combout\,
	datab => \G_array~123_combout\,
	datac => \carry[30]~49_combout\,
	datad => \G_array[3][29]~239_combout\,
	combout => \carry[30]~50_combout\);

-- Location: IOIBUF_X83_Y73_N15
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X109_Y73_N1
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: LCCOMB_X80_Y61_N18
\S~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~37_combout\ = \carry[30]~50_combout\ $ (\A[30]~input_o\ $ (\B[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry[30]~50_combout\,
	datab => \A[30]~input_o\,
	datad => \B[30]~input_o\,
	combout => \S~37_combout\);

-- Location: IOIBUF_X87_Y73_N8
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: LCCOMB_X83_Y61_N16
\G_array~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~124_combout\ = (\A[29]~input_o\ & (!\B[29]~input_o\ & (\B[30]~input_o\ $ (\A[30]~input_o\)))) # (!\A[29]~input_o\ & (\B[29]~input_o\ & (\B[30]~input_o\ $ (\A[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \B[30]~input_o\,
	datac => \A[30]~input_o\,
	datad => \B[29]~input_o\,
	combout => \G_array~124_combout\);

-- Location: LCCOMB_X81_Y60_N18
\G_array~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~128_combout\ = (\G_array~105_combout\ & (\G_array~124_combout\ & (\G_array~95_combout\ & \G_array~115_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~105_combout\,
	datab => \G_array~124_combout\,
	datac => \G_array~95_combout\,
	datad => \G_array~115_combout\,
	combout => \G_array~128_combout\);

-- Location: LCCOMB_X81_Y56_N4
\P_array[4][30]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[4][30]~39_combout\ = (\G_array~54_combout\ & (\P_array[2][22]~35_combout\ & (\G_array~64_combout\ & \G_array~128_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~54_combout\,
	datab => \P_array[2][22]~35_combout\,
	datac => \G_array~64_combout\,
	datad => \G_array~128_combout\,
	combout => \P_array[4][30]~39_combout\);

-- Location: LCCOMB_X81_Y56_N0
\carry~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry~51_combout\ = (\carry~9_combout\ & (\G_array[6][30]~49_combout\ & (\P_array[4][30]~39_combout\ & p(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry~9_combout\,
	datab => \G_array[6][30]~49_combout\,
	datac => \P_array[4][30]~39_combout\,
	datad => p(6),
	combout => \carry~51_combout\);

-- Location: IOIBUF_X83_Y73_N1
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: LCCOMB_X83_Y61_N10
\G_array[1][30]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][30]~125_combout\ = (\B[30]~input_o\ & ((\A[30]~input_o\) # ((\A[29]~input_o\ & \B[29]~input_o\)))) # (!\B[30]~input_o\ & (\A[29]~input_o\ & (\A[30]~input_o\ & \B[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \B[30]~input_o\,
	datac => \A[30]~input_o\,
	datad => \B[29]~input_o\,
	combout => \G_array[1][30]~125_combout\);

-- Location: LCCOMB_X80_Y61_N12
\G_array[3][30]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][30]~126_combout\ = (!\G_array[1][30]~125_combout\ & ((!\G_array[1][28]~116_combout\) # (!\G_array~124_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~124_combout\,
	datab => \G_array[1][28]~116_combout\,
	datac => \G_array[1][30]~125_combout\,
	combout => \G_array[3][30]~126_combout\);

-- Location: LCCOMB_X81_Y60_N16
\G_array[3][30]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][30]~127_combout\ = ((\G_array~115_combout\ & (\G_array~124_combout\ & !\G_array[3][26]~107_combout\))) # (!\G_array[3][30]~126_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~115_combout\,
	datab => \G_array[3][30]~126_combout\,
	datac => \G_array~124_combout\,
	datad => \G_array[3][26]~107_combout\,
	combout => \G_array[3][30]~127_combout\);

-- Location: LCCOMB_X81_Y56_N14
\G_array[6][30]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[6][30]~129_combout\ = (\P_array[4][30]~39_combout\ & ((\G_array[3][14]~48_combout\) # ((\G_array[6][30]~49_combout\ & \G_array[6][6]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[4][30]~39_combout\,
	datab => \G_array[6][30]~49_combout\,
	datac => \G_array[6][6]~combout\,
	datad => \G_array[3][14]~48_combout\,
	combout => \G_array[6][30]~129_combout\);

-- Location: LCCOMB_X77_Y60_N18
\G_array[6][30]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[6][30]~130_combout\ = (\G_array[3][30]~127_combout\) # ((\G_array[6][30]~129_combout\) # ((\G_array~128_combout\ & \G_array[3][22]~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~128_combout\,
	datab => \G_array[3][30]~127_combout\,
	datac => \G_array[6][30]~129_combout\,
	datad => \G_array[3][22]~88_combout\,
	combout => \G_array[6][30]~130_combout\);

-- Location: LCCOMB_X80_Y61_N10
\S~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~95_combout\ = \A[31]~input_o\ $ (\B[31]~input_o\ $ (((\carry~51_combout\) # (\G_array[6][30]~130_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \carry~51_combout\,
	datac => \B[31]~input_o\,
	datad => \G_array[6][30]~130_combout\,
	combout => \S~95_combout\);

-- Location: LCCOMB_X80_Y61_N30
\p[31]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(31) = \A[31]~input_o\ $ (\B[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datac => \B[31]~input_o\,
	combout => p(31));

-- Location: LCCOMB_X80_Y61_N16
\P_array[2][31]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[2][31]~40_combout\ = (\G_array~120_combout\ & (p(31) & (\B[30]~input_o\ $ (\A[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[30]~input_o\,
	datab => \G_array~120_combout\,
	datac => p(31),
	datad => \A[30]~input_o\,
	combout => \P_array[2][31]~40_combout\);

-- Location: LCCOMB_X79_Y61_N2
\P_array[4][31]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[4][31]~41_combout\ = (\G_array~94_combout\ & (\P_array[2][31]~40_combout\ & (\G_array~110_combout\ & \G_array~100_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~94_combout\,
	datab => \P_array[2][31]~40_combout\,
	datac => \G_array~110_combout\,
	datad => \G_array~100_combout\,
	combout => \P_array[4][31]~41_combout\);

-- Location: IOIBUF_X105_Y73_N1
\B[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(32),
	o => \B[32]~input_o\);

-- Location: IOIBUF_X115_Y63_N8
\A[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(32),
	o => \A[32]~input_o\);

-- Location: LCCOMB_X80_Y61_N0
\p[32]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(32) = \B[32]~input_o\ $ (\A[32]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[32]~input_o\,
	datad => \A[32]~input_o\,
	combout => p(32));

-- Location: LCCOMB_X80_Y61_N26
\G_array~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~131_combout\ = (\A[31]~input_o\ & (!\B[31]~input_o\ & (\A[30]~input_o\ $ (\B[30]~input_o\)))) # (!\A[31]~input_o\ & (\B[31]~input_o\ & (\A[30]~input_o\ $ (\B[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \A[30]~input_o\,
	datac => \B[31]~input_o\,
	datad => \B[30]~input_o\,
	combout => \G_array~131_combout\);

-- Location: LCCOMB_X80_Y61_N20
\G_array[1][31]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][31]~132_combout\ = (\A[31]~input_o\ & ((\B[31]~input_o\) # ((\A[30]~input_o\ & \B[30]~input_o\)))) # (!\A[31]~input_o\ & (\A[30]~input_o\ & (\B[31]~input_o\ & \B[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \A[30]~input_o\,
	datac => \B[31]~input_o\,
	datad => \B[30]~input_o\,
	combout => \G_array[1][31]~132_combout\);

-- Location: LCCOMB_X80_Y61_N6
\G_array[3][31]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][31]~133_combout\ = (!\G_array[1][31]~132_combout\ & ((!\G_array[1][29]~121_combout\) # (!\G_array~131_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~131_combout\,
	datab => \G_array[1][31]~132_combout\,
	datac => \G_array[1][29]~121_combout\,
	combout => \G_array[3][31]~133_combout\);

-- Location: LCCOMB_X79_Y61_N12
\G_array[3][31]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][31]~134_combout\ = ((\P_array[2][31]~40_combout\ & !\G_array[3][27]~112_combout\)) # (!\G_array[3][31]~133_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[3][31]~133_combout\,
	datab => \P_array[2][31]~40_combout\,
	datad => \G_array[3][27]~112_combout\,
	combout => \G_array[3][31]~134_combout\);

-- Location: LCCOMB_X79_Y61_N6
\G_array~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~135_combout\ = (\G_array~110_combout\ & (\P_array[2][31]~40_combout\ & (\G_array[3][23]~93_combout\ & \G_array~100_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~110_combout\,
	datab => \P_array[2][31]~40_combout\,
	datac => \G_array[3][23]~93_combout\,
	datad => \G_array~100_combout\,
	combout => \G_array~135_combout\);

-- Location: LCCOMB_X79_Y61_N16
\G_array[6][31]~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[6][31]~136_combout\ = (\G_array~135_combout\) # ((\G_array[6][7]~combout\ & (\P_array[4][31]~41_combout\ & \carry~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[6][7]~combout\,
	datab => \P_array[4][31]~41_combout\,
	datac => \carry~21_combout\,
	datad => \G_array~135_combout\,
	combout => \G_array[6][31]~136_combout\);

-- Location: LCCOMB_X79_Y61_N26
\G_array[6][31]\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[6][31]~combout\ = (\G_array[3][31]~134_combout\) # ((\G_array[6][31]~136_combout\) # ((\P_array[4][31]~41_combout\ & \G_array[3][15]~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[3][31]~134_combout\,
	datab => \G_array[6][31]~136_combout\,
	datac => \P_array[4][31]~41_combout\,
	datad => \G_array[3][15]~53_combout\,
	combout => \G_array[6][31]~combout\);

-- Location: LCCOMB_X85_Y57_N20
\carry~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry~52_combout\ = (\P_array[6][3]~30_combout\ & (\G_array~20_combout\ & (\carry~21_combout\ & \carry~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[6][3]~30_combout\,
	datab => \G_array~20_combout\,
	datac => \carry~21_combout\,
	datad => \carry~5_combout\,
	combout => \carry~52_combout\);

-- Location: LCCOMB_X73_Y65_N8
\S~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~38_combout\ = p(32) $ (((\G_array[6][31]~combout\) # ((\P_array[4][31]~41_combout\ & \carry~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[4][31]~41_combout\,
	datab => p(32),
	datac => \G_array[6][31]~combout\,
	datad => \carry~52_combout\,
	combout => \S~38_combout\);

-- Location: LCCOMB_X80_Y61_N28
\P_array[2][32]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[2][32]~86_combout\ = (p(32) & (\G_array~124_combout\ & (\A[31]~input_o\ $ (\B[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => p(32),
	datac => \B[31]~input_o\,
	datad => \G_array~124_combout\,
	combout => \P_array[2][32]~86_combout\);

-- Location: LCCOMB_X79_Y60_N4
\G_array~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~137_combout\ = (\G_array~115_combout\ & (\G_array[3][24]~98_combout\ & (\P_array[2][32]~86_combout\ & \G_array~105_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~115_combout\,
	datab => \G_array[3][24]~98_combout\,
	datac => \P_array[2][32]~86_combout\,
	datad => \G_array~105_combout\,
	combout => \G_array~137_combout\);

-- Location: LCCOMB_X80_Y61_N2
\G_array[1][32]~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][32]~138_combout\ = (\B[32]~input_o\ & ((\A[32]~input_o\) # ((\A[31]~input_o\ & \B[31]~input_o\)))) # (!\B[32]~input_o\ & (\A[31]~input_o\ & (\B[31]~input_o\ & \A[32]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \B[32]~input_o\,
	datac => \B[31]~input_o\,
	datad => \A[32]~input_o\,
	combout => \G_array[1][32]~138_combout\);

-- Location: LCCOMB_X80_Y61_N4
\G_array[3][32]~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][32]~139_combout\ = (!\G_array[1][32]~138_combout\ & (((!\G_array[1][30]~125_combout\) # (!p(32))) # (!p(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(31),
	datab => p(32),
	datac => \G_array[1][30]~125_combout\,
	datad => \G_array[1][32]~138_combout\,
	combout => \G_array[3][32]~139_combout\);

-- Location: LCCOMB_X79_Y60_N6
\carry[33]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[33]~53_combout\ = (\G_array~137_combout\) # (((!\G_array[3][28]~117_combout\ & \P_array[2][32]~86_combout\)) # (!\G_array[3][32]~139_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[3][28]~117_combout\,
	datab => \P_array[2][32]~86_combout\,
	datac => \G_array~137_combout\,
	datad => \G_array[3][32]~139_combout\,
	combout => \carry[33]~53_combout\);

-- Location: LCCOMB_X80_Y56_N10
\S~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~39_combout\ = (\G_array[3][8]~26_combout\ & ((!\G_array[3][8]~24_combout\) # (!\P_array[2][8]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[2][8]~31_combout\,
	datab => \G_array[3][8]~26_combout\,
	datad => \G_array[3][8]~24_combout\,
	combout => \S~39_combout\);

-- Location: LCCOMB_X80_Y56_N28
\S~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~40_combout\ = (\G_array[3][16]~57_combout\) # ((\G_array~58_combout\ & ((\carry[25]~12_combout\) # (!\S~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~39_combout\,
	datab => \G_array~58_combout\,
	datac => \G_array[3][16]~57_combout\,
	datad => \carry[25]~12_combout\,
	combout => \S~40_combout\);

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

-- Location: IOIBUF_X115_Y59_N15
\A[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(33),
	o => \A[33]~input_o\);

-- Location: LCCOMB_X80_Y59_N8
\p[33]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(33) = \B[33]~input_o\ $ (\A[33]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[33]~input_o\,
	datad => \A[33]~input_o\,
	combout => p(33));

-- Location: LCCOMB_X79_Y60_N10
\P_array[4][32]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[4][32]~42_combout\ = (\G_array~99_combout\ & (\P_array[2][32]~86_combout\ & (\G_array~115_combout\ & \G_array~105_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~99_combout\,
	datab => \P_array[2][32]~86_combout\,
	datac => \G_array~115_combout\,
	datad => \G_array~105_combout\,
	combout => \P_array[4][32]~42_combout\);

-- Location: LCCOMB_X79_Y60_N0
\S~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~41_combout\ = p(33) $ (((\carry[33]~53_combout\) # ((\S~40_combout\ & \P_array[4][32]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry[33]~53_combout\,
	datab => \S~40_combout\,
	datac => p(33),
	datad => \P_array[4][32]~42_combout\,
	combout => \S~41_combout\);

-- Location: LCCOMB_X85_Y57_N6
\carry[34]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[34]~54_combout\ = (\G_array[3][9]~29_combout\ & (!\carry[10]~13_combout\ & ((\G_array[3][9]~17_combout\) # (!\P_array[2][9]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[3][9]~29_combout\,
	datab => \P_array[2][9]~32_combout\,
	datac => \carry[10]~13_combout\,
	datad => \G_array[3][9]~17_combout\,
	combout => \carry[34]~54_combout\);

-- Location: LCCOMB_X80_Y61_N14
\P_array[2][33]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[2][33]~87_combout\ = (p(33) & (\G_array~131_combout\ & (\B[32]~input_o\ $ (\A[32]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(33),
	datab => \B[32]~input_o\,
	datac => \G_array~131_combout\,
	datad => \A[32]~input_o\,
	combout => \P_array[2][33]~87_combout\);

-- Location: LCCOMB_X79_Y59_N26
\P_array[4][33]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[4][33]~88_combout\ = (\G_array~104_combout\ & (\G_array~120_combout\ & (\G_array~110_combout\ & \P_array[2][33]~87_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~104_combout\,
	datab => \G_array~120_combout\,
	datac => \G_array~110_combout\,
	datad => \P_array[2][33]~87_combout\,
	combout => \P_array[4][33]~88_combout\);

-- Location: LCCOMB_X79_Y55_N6
\carry[34]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[34]~55_combout\ = (\P_array[4][33]~88_combout\ & ((\G_array[3][17]~62_combout\) # ((!\carry[34]~54_combout\ & \G_array~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[3][17]~62_combout\,
	datab => \carry[34]~54_combout\,
	datac => \P_array[4][33]~88_combout\,
	datad => \G_array~63_combout\,
	combout => \carry[34]~55_combout\);

-- Location: LCCOMB_X79_Y59_N28
\G_array~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~240_combout\ = (\P_array[2][33]~87_combout\ & (\G_array[3][25]~103_combout\ & (\G_array~110_combout\ & \G_array~120_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[2][33]~87_combout\,
	datab => \G_array[3][25]~103_combout\,
	datac => \G_array~110_combout\,
	datad => \G_array~120_combout\,
	combout => \G_array~240_combout\);

-- Location: LCCOMB_X80_Y59_N10
\G_array[1][33]~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][33]~140_combout\ = (\B[33]~input_o\ & ((\A[33]~input_o\) # ((\B[32]~input_o\ & \A[32]~input_o\)))) # (!\B[33]~input_o\ & (\B[32]~input_o\ & (\A[32]~input_o\ & \A[33]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[32]~input_o\,
	datab => \B[33]~input_o\,
	datac => \A[32]~input_o\,
	datad => \A[33]~input_o\,
	combout => \G_array[1][33]~140_combout\);

-- Location: LCCOMB_X80_Y59_N12
\G_array[3][33]~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][33]~141_combout\ = (!\G_array[1][33]~140_combout\ & (((!p(33)) # (!\G_array[1][31]~132_combout\)) # (!p(32))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(32),
	datab => \G_array[1][31]~132_combout\,
	datac => p(33),
	datad => \G_array[1][33]~140_combout\,
	combout => \G_array[3][33]~141_combout\);

-- Location: LCCOMB_X79_Y59_N20
\G_array[3][33]~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][33]~142_combout\ = ((!\G_array[3][29]~122_combout\ & \P_array[2][33]~87_combout\)) # (!\G_array[3][33]~141_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G_array[3][29]~122_combout\,
	datac => \P_array[2][33]~87_combout\,
	datad => \G_array[3][33]~141_combout\,
	combout => \G_array[3][33]~142_combout\);

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

-- Location: IOIBUF_X81_Y73_N15
\B[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(34),
	o => \B[34]~input_o\);

-- Location: LCCOMB_X80_Y59_N6
\p[34]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(34) = \A[34]~input_o\ $ (\B[34]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[34]~input_o\,
	datad => \B[34]~input_o\,
	combout => p(34));

-- Location: LCCOMB_X79_Y59_N14
\S~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~42_combout\ = p(34) $ (((\carry[34]~55_combout\) # ((\G_array~240_combout\) # (\G_array[3][33]~142_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry[34]~55_combout\,
	datab => \G_array~240_combout\,
	datac => \G_array[3][33]~142_combout\,
	datad => p(34),
	combout => \S~42_combout\);

-- Location: IOIBUF_X81_Y73_N1
\B[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(35),
	o => \B[35]~input_o\);

-- Location: IOIBUF_X109_Y73_N8
\A[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(35),
	o => \A[35]~input_o\);

-- Location: LCCOMB_X80_Y59_N30
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

-- Location: LCCOMB_X80_Y59_N0
\P_array[2][34]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[2][34]~43_combout\ = (p(32) & (p(31) & (p(33) & p(34))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(32),
	datab => p(31),
	datac => p(33),
	datad => p(34),
	combout => \P_array[2][34]~43_combout\);

-- Location: LCCOMB_X80_Y59_N2
\G_array[1][34]~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][34]~143_combout\ = (\A[34]~input_o\ & ((\B[34]~input_o\) # ((\A[33]~input_o\ & \B[33]~input_o\)))) # (!\A[34]~input_o\ & (\A[33]~input_o\ & (\B[33]~input_o\ & \B[34]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[33]~input_o\,
	datab => \B[33]~input_o\,
	datac => \A[34]~input_o\,
	datad => \B[34]~input_o\,
	combout => \G_array[1][34]~143_combout\);

-- Location: LCCOMB_X80_Y59_N28
\G_array[3][34]~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][34]~144_combout\ = (!\G_array[1][34]~143_combout\ & (((!\G_array[1][32]~138_combout\) # (!p(33))) # (!p(34))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(34),
	datab => p(33),
	datac => \G_array[1][32]~138_combout\,
	datad => \G_array[1][34]~143_combout\,
	combout => \G_array[3][34]~144_combout\);

-- Location: LCCOMB_X80_Y61_N22
\G_array[3][34]~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][34]~145_combout\ = ((\P_array[2][34]~43_combout\ & !\G_array[3][30]~126_combout\)) # (!\G_array[3][34]~144_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P_array[2][34]~43_combout\,
	datac => \G_array[3][34]~144_combout\,
	datad => \G_array[3][30]~126_combout\,
	combout => \G_array[3][34]~145_combout\);

-- Location: LCCOMB_X81_Y60_N20
\G_array~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~146_combout\ = (\P_array[2][34]~43_combout\ & (\G_array~124_combout\ & (\G_array[3][26]~108_combout\ & \G_array~115_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[2][34]~43_combout\,
	datab => \G_array~124_combout\,
	datac => \G_array[3][26]~108_combout\,
	datad => \G_array~115_combout\,
	combout => \G_array~146_combout\);

-- Location: LCCOMB_X82_Y56_N18
\carry[35]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[35]~56_combout\ = (\G_array~68_combout\ & \carry[11]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G_array~68_combout\,
	datad => \carry[11]~14_combout\,
	combout => \carry[35]~56_combout\);

-- Location: LCCOMB_X82_Y56_N8
\P_array[4][34]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[4][34]~44_combout\ = (\G_array~109_combout\ & (\G_array~115_combout\ & (\P_array[2][34]~43_combout\ & \G_array~124_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~109_combout\,
	datab => \G_array~115_combout\,
	datac => \P_array[2][34]~43_combout\,
	datad => \G_array~124_combout\,
	combout => \P_array[4][34]~44_combout\);

-- Location: LCCOMB_X82_Y56_N28
\carry[35]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[35]~57_combout\ = (\P_array[4][34]~44_combout\ & ((\G_array~69_combout\) # ((\carry[35]~56_combout\) # (\G_array[3][18]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~69_combout\,
	datab => \carry[35]~56_combout\,
	datac => \G_array[3][18]~67_combout\,
	datad => \P_array[4][34]~44_combout\,
	combout => \carry[35]~57_combout\);

-- Location: LCCOMB_X75_Y60_N0
\S~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~43_combout\ = p(35) $ (((\G_array[3][34]~145_combout\) # ((\G_array~146_combout\) # (\carry[35]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(35),
	datab => \G_array[3][34]~145_combout\,
	datac => \G_array~146_combout\,
	datad => \carry[35]~57_combout\,
	combout => \S~43_combout\);

-- Location: LCCOMB_X80_Y59_N16
\P_array[2][35]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[2][35]~45_combout\ = (p(32) & (p(35) & (p(33) & p(34))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(32),
	datab => p(35),
	datac => p(33),
	datad => p(34),
	combout => \P_array[2][35]~45_combout\);

-- Location: LCCOMB_X80_Y59_N26
\G_array[1][35]~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][35]~148_combout\ = (\B[35]~input_o\ & ((\A[35]~input_o\) # ((\A[34]~input_o\ & \B[34]~input_o\)))) # (!\B[35]~input_o\ & (\A[35]~input_o\ & (\A[34]~input_o\ & \B[34]~input_o\)))

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
	combout => \G_array[1][35]~148_combout\);

-- Location: LCCOMB_X80_Y59_N4
\G_array[3][35]~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][35]~149_combout\ = (!\G_array[1][35]~148_combout\ & (((!p(34)) # (!p(35))) # (!\G_array[1][33]~140_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[1][33]~140_combout\,
	datab => p(35),
	datac => \G_array[1][35]~148_combout\,
	datad => p(34),
	combout => \G_array[3][35]~149_combout\);

-- Location: LCCOMB_X79_Y61_N4
\G_array[3][35]~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][35]~150_combout\ = ((!\G_array[3][31]~133_combout\ & \P_array[2][35]~45_combout\)) # (!\G_array[3][35]~149_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[3][31]~133_combout\,
	datab => \P_array[2][35]~45_combout\,
	datad => \G_array[3][35]~149_combout\,
	combout => \G_array[3][35]~150_combout\);

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

-- Location: LCCOMB_X76_Y60_N16
\p[36]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(36) = \B[36]~input_o\ $ (\A[36]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[36]~input_o\,
	datad => \A[36]~input_o\,
	combout => p(36));

-- Location: LCCOMB_X80_Y57_N16
\G_array~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~147_combout\ = (\G_array~71_combout\ & (((!\G_array[6][7]~22_combout\ & \P_array[2][11]~34_combout\)) # (!\G_array[3][11]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~71_combout\,
	datab => \G_array[3][11]~35_combout\,
	datac => \G_array[6][7]~22_combout\,
	datad => \P_array[2][11]~34_combout\,
	combout => \G_array~147_combout\);

-- Location: LCCOMB_X80_Y57_N14
\P_array[4][35]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[4][35]~46_combout\ = (\P_array[2][35]~45_combout\ & (\G_array~114_combout\ & \P_array[2][31]~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P_array[2][35]~45_combout\,
	datac => \G_array~114_combout\,
	datad => \P_array[2][31]~40_combout\,
	combout => \P_array[4][35]~46_combout\);

-- Location: LCCOMB_X80_Y57_N18
\carry[36]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[36]~58_combout\ = (\P_array[4][35]~46_combout\ & ((\G_array[3][19]~74_combout\) # ((\G_array~147_combout\) # (\carry[36]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[3][19]~74_combout\,
	datab => \G_array~147_combout\,
	datac => \P_array[4][35]~46_combout\,
	datad => \carry[36]~26_combout\,
	combout => \carry[36]~58_combout\);

-- Location: LCCOMB_X80_Y57_N20
\G_array~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~151_combout\ = (\G_array[3][27]~113_combout\ & (\P_array[2][35]~45_combout\ & \P_array[2][31]~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[3][27]~113_combout\,
	datac => \P_array[2][35]~45_combout\,
	datad => \P_array[2][31]~40_combout\,
	combout => \G_array~151_combout\);

-- Location: LCCOMB_X77_Y61_N8
\S~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~44_combout\ = p(36) $ (((\G_array[3][35]~150_combout\) # ((\carry[36]~58_combout\) # (\G_array~151_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[3][35]~150_combout\,
	datab => p(36),
	datac => \carry[36]~58_combout\,
	datad => \G_array~151_combout\,
	combout => \S~44_combout\);

-- Location: LCCOMB_X80_Y59_N14
\P_array[2][36]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[2][36]~47_combout\ = (p(36) & (p(35) & (p(33) & p(34))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(36),
	datab => p(35),
	datac => p(33),
	datad => p(34),
	combout => \P_array[2][36]~47_combout\);

-- Location: LCCOMB_X79_Y60_N12
\P_array[4][36]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[4][36]~48_combout\ = (\P_array[2][36]~47_combout\ & (p(32) & (p(31) & \G_array~124_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[2][36]~47_combout\,
	datab => p(32),
	datac => p(31),
	datad => \G_array~124_combout\,
	combout => \P_array[4][36]~48_combout\);

-- Location: LCCOMB_X80_Y60_N26
\G_array~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~155_combout\ = (\P_array[4][36]~48_combout\ & \G_array[3][28]~118_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[4][36]~48_combout\,
	datad => \G_array[3][28]~118_combout\,
	combout => \G_array~155_combout\);

-- Location: LCCOMB_X76_Y60_N2
\G_array[1][36]~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][36]~152_combout\ = (\B[36]~input_o\ & ((\A[36]~input_o\) # ((\A[35]~input_o\ & \B[35]~input_o\)))) # (!\B[36]~input_o\ & (\A[35]~input_o\ & (\B[35]~input_o\ & \A[36]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[35]~input_o\,
	datab => \B[35]~input_o\,
	datac => \B[36]~input_o\,
	datad => \A[36]~input_o\,
	combout => \G_array[1][36]~152_combout\);

-- Location: LCCOMB_X80_Y59_N24
\G_array[3][36]~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][36]~153_combout\ = (!\G_array[1][36]~152_combout\ & (((!\G_array[1][34]~143_combout\) # (!p(35))) # (!p(36))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(36),
	datab => p(35),
	datac => \G_array[1][36]~152_combout\,
	datad => \G_array[1][34]~143_combout\,
	combout => \G_array[3][36]~153_combout\);

-- Location: LCCOMB_X79_Y60_N26
\G_array[3][36]~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][36]~154_combout\ = ((\P_array[2][36]~47_combout\ & !\G_array[3][32]~139_combout\)) # (!\G_array[3][36]~153_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[2][36]~47_combout\,
	datab => \G_array[3][36]~153_combout\,
	datad => \G_array[3][32]~139_combout\,
	combout => \G_array[3][36]~154_combout\);

-- Location: LCCOMB_X80_Y60_N28
\P_array[4][36]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[4][36]~49_combout\ = (\P_array[2][36]~47_combout\ & (\P_array[2][32]~86_combout\ & \G_array~119_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[2][36]~47_combout\,
	datac => \P_array[2][32]~86_combout\,
	datad => \G_array~119_combout\,
	combout => \P_array[4][36]~49_combout\);

-- Location: LCCOMB_X80_Y60_N22
\carry[37]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[37]~60_combout\ = (\G_array~155_combout\) # ((\G_array[3][36]~154_combout\) # ((\G_array[3][20]~78_combout\ & \P_array[4][36]~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~155_combout\,
	datab => \G_array[3][20]~78_combout\,
	datac => \G_array[3][36]~154_combout\,
	datad => \P_array[4][36]~49_combout\,
	combout => \carry[37]~60_combout\);

-- Location: IOIBUF_X115_Y28_N8
\A[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(37),
	o => \A[37]~input_o\);

-- Location: IOIBUF_X115_Y31_N8
\B[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(37),
	o => \B[37]~input_o\);

-- Location: LCCOMB_X76_Y60_N28
\p[37]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(37) = \A[37]~input_o\ $ (\B[37]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[37]~input_o\,
	datad => \B[37]~input_o\,
	combout => p(37));

-- Location: LCCOMB_X80_Y60_N16
\carry[37]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[37]~59_combout\ = (\P_array[2][36]~47_combout\ & (\G_array~79_combout\ & (\P_array[2][32]~86_combout\ & \G_array~119_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[2][36]~47_combout\,
	datab => \G_array~79_combout\,
	datac => \P_array[2][32]~86_combout\,
	datad => \G_array~119_combout\,
	combout => \carry[37]~59_combout\);

-- Location: LCCOMB_X80_Y60_N8
\S~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~45_combout\ = p(37) $ (((\carry[37]~60_combout\) # ((\carry[37]~17_combout\ & \carry[37]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry[37]~60_combout\,
	datab => p(37),
	datac => \carry[37]~17_combout\,
	datad => \carry[37]~59_combout\,
	combout => \S~45_combout\);

-- Location: LCCOMB_X76_Y60_N0
\G_array~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~159_combout\ = (\A[36]~input_o\ & (!\B[36]~input_o\ & (\A[37]~input_o\ $ (\B[37]~input_o\)))) # (!\A[36]~input_o\ & (\B[36]~input_o\ & (\A[37]~input_o\ $ (\B[37]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[36]~input_o\,
	datab => \A[37]~input_o\,
	datac => \B[36]~input_o\,
	datad => \B[37]~input_o\,
	combout => \G_array~159_combout\);

-- Location: LCCOMB_X79_Y59_N24
\P_array[4][37]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[4][37]~51_combout\ = (\P_array[2][33]~87_combout\ & (\G_array~159_combout\ & (p(35) & p(34))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[2][33]~87_combout\,
	datab => \G_array~159_combout\,
	datac => p(35),
	datad => p(34),
	combout => \P_array[4][37]~51_combout\);

-- Location: LCCOMB_X79_Y59_N12
\P_array[4][37]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[4][37]~52_combout\ = (\G_array~100_combout\ & (\G_array~90_combout\ & (\P_array[2][29]~37_combout\ & \P_array[4][37]~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~100_combout\,
	datab => \G_array~90_combout\,
	datac => \P_array[2][29]~37_combout\,
	datad => \P_array[4][37]~51_combout\,
	combout => \P_array[4][37]~52_combout\);

-- Location: LCCOMB_X76_Y60_N22
\G_array[1][37]~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][37]~156_combout\ = (\A[37]~input_o\ & ((\B[37]~input_o\) # ((\A[36]~input_o\ & \B[36]~input_o\)))) # (!\A[37]~input_o\ & (\A[36]~input_o\ & (\B[36]~input_o\ & \B[37]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[36]~input_o\,
	datab => \A[37]~input_o\,
	datac => \B[36]~input_o\,
	datad => \B[37]~input_o\,
	combout => \G_array[1][37]~156_combout\);

-- Location: LCCOMB_X80_Y59_N20
\G_array[3][37]~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][37]~157_combout\ = (!\G_array[1][37]~156_combout\ & (((!p(36)) # (!\G_array[1][35]~148_combout\)) # (!p(37))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[1][37]~156_combout\,
	datab => p(37),
	datac => \G_array[1][35]~148_combout\,
	datad => p(36),
	combout => \G_array[3][37]~157_combout\);

-- Location: LCCOMB_X80_Y59_N18
\P_array[2][37]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[2][37]~50_combout\ = (p(36) & (p(35) & (p(37) & p(34))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(36),
	datab => p(35),
	datac => p(37),
	datad => p(34),
	combout => \P_array[2][37]~50_combout\);

-- Location: LCCOMB_X73_Y59_N8
\G_array[3][37]~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][37]~158_combout\ = ((\P_array[2][37]~50_combout\ & !\G_array[3][33]~141_combout\)) # (!\G_array[3][37]~157_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[3][37]~157_combout\,
	datab => \P_array[2][37]~50_combout\,
	datac => \G_array[3][33]~141_combout\,
	combout => \G_array[3][37]~158_combout\);

-- Location: LCCOMB_X79_Y59_N2
\G_array~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~160_combout\ = (\P_array[4][37]~51_combout\ & (((\P_array[2][29]~37_combout\ & !\G_array[3][25]~102_combout\)) # (!\G_array[3][29]~122_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[2][29]~37_combout\,
	datab => \G_array[3][29]~122_combout\,
	datac => \G_array[3][25]~102_combout\,
	datad => \P_array[4][37]~51_combout\,
	combout => \G_array~160_combout\);

-- Location: LCCOMB_X79_Y57_N8
\carry[38]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[38]~61_combout\ = (\G_array[3][37]~158_combout\) # ((\G_array~160_combout\) # ((\G_array[3][21]~83_combout\ & \P_array[4][37]~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[3][21]~83_combout\,
	datab => \G_array[3][37]~158_combout\,
	datac => \P_array[4][37]~52_combout\,
	datad => \G_array~160_combout\,
	combout => \carry[38]~61_combout\);

-- Location: LCCOMB_X79_Y57_N18
\carry[38]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[38]~62_combout\ = (\carry[38]~61_combout\) # ((\P_array[4][37]~52_combout\ & (\carry[38]~19_combout\ & \G_array~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[4][37]~52_combout\,
	datab => \carry[38]~19_combout\,
	datac => \carry[38]~61_combout\,
	datad => \G_array~84_combout\,
	combout => \carry[38]~62_combout\);

-- Location: IOIBUF_X111_Y73_N8
\A[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(38),
	o => \A[38]~input_o\);

-- Location: IOIBUF_X72_Y0_N1
\B[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(38),
	o => \B[38]~input_o\);

-- Location: LCCOMB_X76_Y60_N26
\S~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~46_combout\ = \carry[38]~62_combout\ $ (\A[38]~input_o\ $ (\B[38]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \carry[38]~62_combout\,
	datac => \A[38]~input_o\,
	datad => \B[38]~input_o\,
	combout => \S~46_combout\);

-- Location: IOIBUF_X47_Y73_N15
\B[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(39),
	o => \B[39]~input_o\);

-- Location: LCCOMB_X76_Y60_N20
\G_array~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~161_combout\ = (\B[37]~input_o\ & (!\A[37]~input_o\ & (\A[38]~input_o\ $ (\B[38]~input_o\)))) # (!\B[37]~input_o\ & (\A[37]~input_o\ & (\A[38]~input_o\ $ (\B[38]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[37]~input_o\,
	datab => \A[37]~input_o\,
	datac => \A[38]~input_o\,
	datad => \B[38]~input_o\,
	combout => \G_array~161_combout\);

-- Location: LCCOMB_X76_Y60_N6
\P_array[2][38]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[2][38]~89_combout\ = (\G_array~161_combout\ & (p(36) & (\A[35]~input_o\ $ (\B[35]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~161_combout\,
	datab => p(36),
	datac => \A[35]~input_o\,
	datad => \B[35]~input_o\,
	combout => \P_array[2][38]~89_combout\);

-- Location: LCCOMB_X77_Y60_N26
\P_array[4][38]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[4][38]~54_combout\ = (\G_array~128_combout\ & (\P_array[2][38]~89_combout\ & \P_array[2][34]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~128_combout\,
	datab => \P_array[2][38]~89_combout\,
	datac => \P_array[2][34]~43_combout\,
	combout => \P_array[4][38]~54_combout\);

-- Location: LCCOMB_X77_Y60_N8
\G_array~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~165_combout\ = (\P_array[2][34]~43_combout\ & (\G_array[3][30]~127_combout\ & \P_array[2][38]~89_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[2][34]~43_combout\,
	datab => \G_array[3][30]~127_combout\,
	datac => \P_array[2][38]~89_combout\,
	combout => \G_array~165_combout\);

-- Location: LCCOMB_X76_Y60_N14
\G_array[1][38]~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][38]~162_combout\ = (\A[38]~input_o\ & ((\B[38]~input_o\) # ((\B[37]~input_o\ & \A[37]~input_o\)))) # (!\A[38]~input_o\ & (\B[37]~input_o\ & (\A[37]~input_o\ & \B[38]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[37]~input_o\,
	datab => \A[37]~input_o\,
	datac => \A[38]~input_o\,
	datad => \B[38]~input_o\,
	combout => \G_array[1][38]~162_combout\);

-- Location: LCCOMB_X76_Y60_N24
\G_array[3][38]~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][38]~163_combout\ = (!\G_array[1][38]~162_combout\ & ((!\G_array~161_combout\) # (!\G_array[1][36]~152_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G_array[1][36]~152_combout\,
	datac => \G_array[1][38]~162_combout\,
	datad => \G_array~161_combout\,
	combout => \G_array[3][38]~163_combout\);

-- Location: LCCOMB_X77_Y60_N6
\G_array[3][38]~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][38]~164_combout\ = ((\P_array[2][38]~89_combout\ & !\G_array[3][34]~144_combout\)) # (!\G_array[3][38]~163_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G_array[3][38]~163_combout\,
	datac => \P_array[2][38]~89_combout\,
	datad => \G_array[3][34]~144_combout\,
	combout => \G_array[3][38]~164_combout\);

-- Location: LCCOMB_X77_Y60_N28
\carry[39]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[39]~64_combout\ = (\G_array~165_combout\) # ((\G_array[3][38]~164_combout\) # ((\P_array[4][38]~54_combout\ & \G_array[3][22]~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[4][38]~54_combout\,
	datab => \G_array[3][22]~88_combout\,
	datac => \G_array~165_combout\,
	datad => \G_array[3][38]~164_combout\,
	combout => \carry[39]~64_combout\);

-- Location: IOIBUF_X72_Y73_N15
\A[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(39),
	o => \A[39]~input_o\);

-- Location: LCCOMB_X80_Y59_N22
\P_array[4][38]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[4][38]~53_combout\ = (p(36) & (p(35) & (\G_array~161_combout\ & \P_array[2][34]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(36),
	datab => p(35),
	datac => \G_array~161_combout\,
	datad => \P_array[2][34]~43_combout\,
	combout => \P_array[4][38]~53_combout\);

-- Location: LCCOMB_X77_Y60_N4
\carry[39]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[39]~63_combout\ = (\G_array~128_combout\ & (\carry[39]~20_combout\ & (\P_array[4][38]~53_combout\ & \G_array~89_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~128_combout\,
	datab => \carry[39]~20_combout\,
	datac => \P_array[4][38]~53_combout\,
	datad => \G_array~89_combout\,
	combout => \carry[39]~63_combout\);

-- Location: LCCOMB_X76_Y60_N18
\S~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~47_combout\ = \B[39]~input_o\ $ (\A[39]~input_o\ $ (((\carry[39]~64_combout\) # (\carry[39]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[39]~input_o\,
	datab => \carry[39]~64_combout\,
	datac => \A[39]~input_o\,
	datad => \carry[39]~63_combout\,
	combout => \S~47_combout\);

-- Location: IOIBUF_X60_Y73_N15
\B[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(40),
	o => \B[40]~input_o\);

-- Location: LCCOMB_X76_Y60_N4
\G_array~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~166_combout\ = (\B[39]~input_o\ & (!\A[39]~input_o\ & (\A[38]~input_o\ $ (\B[38]~input_o\)))) # (!\B[39]~input_o\ & (\A[39]~input_o\ & (\A[38]~input_o\ $ (\B[38]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[39]~input_o\,
	datab => \A[38]~input_o\,
	datac => \A[39]~input_o\,
	datad => \B[38]~input_o\,
	combout => \G_array~166_combout\);

-- Location: LCCOMB_X79_Y61_N0
\P_array[4][39]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[4][39]~55_combout\ = (p(37) & (p(36) & (\G_array~166_combout\ & \P_array[2][35]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(37),
	datab => p(36),
	datac => \G_array~166_combout\,
	datad => \P_array[2][35]~45_combout\,
	combout => \P_array[4][39]~55_combout\);

-- Location: LCCOMB_X79_Y61_N10
\P_array[4][39]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[4][39]~56_combout\ = (\P_array[2][31]~40_combout\ & (\P_array[4][39]~55_combout\ & (\G_array~110_combout\ & \G_array~100_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[2][31]~40_combout\,
	datab => \P_array[4][39]~55_combout\,
	datac => \G_array~110_combout\,
	datad => \G_array~100_combout\,
	combout => \P_array[4][39]~56_combout\);

-- Location: LCCOMB_X79_Y61_N28
\S~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~48_combout\ = (\G_array[3][31]~134_combout\ & ((\P_array[4][39]~55_combout\) # ((\P_array[4][39]~56_combout\ & \carry[24]~37_combout\)))) # (!\G_array[3][31]~134_combout\ & (((\P_array[4][39]~56_combout\ & \carry[24]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[3][31]~134_combout\,
	datab => \P_array[4][39]~55_combout\,
	datac => \P_array[4][39]~56_combout\,
	datad => \carry[24]~37_combout\,
	combout => \S~48_combout\);

-- Location: LCCOMB_X76_Y60_N30
\G_array[1][39]~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][39]~167_combout\ = (\B[39]~input_o\ & ((\A[39]~input_o\) # ((\A[38]~input_o\ & \B[38]~input_o\)))) # (!\B[39]~input_o\ & (\A[38]~input_o\ & (\A[39]~input_o\ & \B[38]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[39]~input_o\,
	datab => \A[38]~input_o\,
	datac => \A[39]~input_o\,
	datad => \B[38]~input_o\,
	combout => \G_array[1][39]~167_combout\);

-- Location: LCCOMB_X76_Y60_N8
\G_array[3][39]~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][39]~168_combout\ = (!\G_array[1][39]~167_combout\ & ((!\G_array[1][37]~156_combout\) # (!\G_array~166_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[1][39]~167_combout\,
	datab => \G_array~166_combout\,
	datac => \G_array[1][37]~156_combout\,
	combout => \G_array[3][39]~168_combout\);

-- Location: LCCOMB_X79_Y61_N22
\G_array[3][39]~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][39]~169_combout\ = ((\G_array~159_combout\ & (\G_array~166_combout\ & !\G_array[3][35]~149_combout\))) # (!\G_array[3][39]~168_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[3][39]~168_combout\,
	datab => \G_array~159_combout\,
	datac => \G_array~166_combout\,
	datad => \G_array[3][35]~149_combout\,
	combout => \G_array[3][39]~169_combout\);

-- Location: IOIBUF_X25_Y73_N15
\A[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(40),
	o => \A[40]~input_o\);

-- Location: LCCOMB_X72_Y60_N16
\S~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~49_combout\ = \B[40]~input_o\ $ (\A[40]~input_o\ $ (((\S~48_combout\) # (\G_array[3][39]~169_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[40]~input_o\,
	datab => \S~48_combout\,
	datac => \G_array[3][39]~169_combout\,
	datad => \A[40]~input_o\,
	combout => \S~49_combout\);

-- Location: IOIBUF_X60_Y73_N22
\A[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(41),
	o => \A[41]~input_o\);

-- Location: IOIBUF_X23_Y73_N15
\B[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(41),
	o => \B[41]~input_o\);

-- Location: LCCOMB_X72_Y60_N20
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

-- Location: LCCOMB_X79_Y60_N28
\S~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~51_combout\ = (\G_array[3][24]~98_combout\) # ((\carry[41]~38_combout\) # ((\G_array~99_combout\ & \G_array[3][16]~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~99_combout\,
	datab => \G_array[3][24]~98_combout\,
	datac => \G_array[3][16]~57_combout\,
	datad => \carry[41]~38_combout\,
	combout => \S~51_combout\);

-- Location: LCCOMB_X72_Y60_N10
\G_array~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~170_combout\ = (\B[40]~input_o\ & (!\A[40]~input_o\ & (\A[39]~input_o\ $ (\B[39]~input_o\)))) # (!\B[40]~input_o\ & (\A[40]~input_o\ & (\A[39]~input_o\ $ (\B[39]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[40]~input_o\,
	datab => \A[40]~input_o\,
	datac => \A[39]~input_o\,
	datad => \B[39]~input_o\,
	combout => \G_array~170_combout\);

-- Location: LCCOMB_X76_Y60_N10
\P_array[2][40]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[2][40]~57_combout\ = (\G_array~170_combout\ & (p(37) & (\A[38]~input_o\ $ (\B[38]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~170_combout\,
	datab => p(37),
	datac => \A[38]~input_o\,
	datad => \B[38]~input_o\,
	combout => \P_array[2][40]~57_combout\);

-- Location: LCCOMB_X79_Y60_N22
\P_array[4][40]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[4][40]~58_combout\ = (\P_array[4][36]~48_combout\ & (\P_array[2][40]~57_combout\ & (\G_array~115_combout\ & \G_array~105_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[4][36]~48_combout\,
	datab => \P_array[2][40]~57_combout\,
	datac => \G_array~115_combout\,
	datad => \G_array~105_combout\,
	combout => \P_array[4][40]~58_combout\);

-- Location: LCCOMB_X72_Y60_N6
\G_array[1][40]~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][40]~171_combout\ = (\B[40]~input_o\ & ((\A[40]~input_o\) # ((\A[39]~input_o\ & \B[39]~input_o\)))) # (!\B[40]~input_o\ & (\A[40]~input_o\ & (\A[39]~input_o\ & \B[39]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[40]~input_o\,
	datab => \A[40]~input_o\,
	datac => \A[39]~input_o\,
	datad => \B[39]~input_o\,
	combout => \G_array[1][40]~171_combout\);

-- Location: LCCOMB_X76_Y60_N12
\G_array[3][40]~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][40]~172_combout\ = (!\G_array[1][40]~171_combout\ & ((!\G_array[1][38]~162_combout\) # (!\G_array~170_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~170_combout\,
	datab => \G_array[1][38]~162_combout\,
	datac => \G_array[1][40]~171_combout\,
	combout => \G_array[3][40]~172_combout\);

-- Location: LCCOMB_X79_Y60_N24
\G_array~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~173_combout\ = (\P_array[2][36]~47_combout\ & (((!\G_array[3][28]~117_combout\ & \P_array[2][32]~86_combout\)) # (!\G_array[3][32]~139_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[2][36]~47_combout\,
	datab => \G_array[3][28]~117_combout\,
	datac => \P_array[2][32]~86_combout\,
	datad => \G_array[3][32]~139_combout\,
	combout => \G_array~173_combout\);

-- Location: LCCOMB_X79_Y60_N18
\S~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~50_combout\ = (\G_array[3][40]~172_combout\ & (((\G_array[3][36]~153_combout\ & !\G_array~173_combout\)) # (!\P_array[2][40]~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[2][40]~57_combout\,
	datab => \G_array[3][40]~172_combout\,
	datac => \G_array[3][36]~153_combout\,
	datad => \G_array~173_combout\,
	combout => \S~50_combout\);

-- Location: LCCOMB_X79_Y60_N14
\S~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~52_combout\ = p(41) $ ((((\S~51_combout\ & \P_array[4][40]~58_combout\)) # (!\S~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(41),
	datab => \S~51_combout\,
	datac => \P_array[4][40]~58_combout\,
	datad => \S~50_combout\,
	combout => \S~52_combout\);

-- Location: IOIBUF_X38_Y73_N22
\B[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(42),
	o => \B[42]~input_o\);

-- Location: IOIBUF_X31_Y73_N1
\A[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(42),
	o => \A[42]~input_o\);

-- Location: LCCOMB_X72_Y60_N18
\p[42]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(42) = \B[42]~input_o\ $ (\A[42]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[42]~input_o\,
	datac => \A[42]~input_o\,
	combout => p(42));

-- Location: LCCOMB_X79_Y55_N16
\S~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~54_combout\ = (\carry[42]~40_combout\) # ((\G_array[3][25]~103_combout\) # ((\G_array~104_combout\ & \G_array[3][17]~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry[42]~40_combout\,
	datab => \G_array~104_combout\,
	datac => \G_array[3][17]~62_combout\,
	datad => \G_array[3][25]~103_combout\,
	combout => \S~54_combout\);

-- Location: LCCOMB_X72_Y60_N8
\G_array~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~174_combout\ = (\B[41]~input_o\ & (!\A[41]~input_o\ & (\B[40]~input_o\ $ (\A[40]~input_o\)))) # (!\B[41]~input_o\ & (\A[41]~input_o\ & (\B[40]~input_o\ $ (\A[40]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[41]~input_o\,
	datab => \A[41]~input_o\,
	datac => \B[40]~input_o\,
	datad => \A[40]~input_o\,
	combout => \G_array~174_combout\);

-- Location: LCCOMB_X73_Y59_N10
\P_array[2][41]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[2][41]~59_combout\ = (\G_array~166_combout\ & \G_array~174_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G_array~166_combout\,
	datad => \G_array~174_combout\,
	combout => \P_array[2][41]~59_combout\);

-- Location: LCCOMB_X73_Y59_N24
\G_array~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~177_combout\ = (\P_array[2][37]~50_combout\ & (((!\G_array[3][29]~122_combout\ & \P_array[2][33]~87_combout\)) # (!\G_array[3][33]~141_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[3][29]~122_combout\,
	datab => \G_array[3][33]~141_combout\,
	datac => \P_array[2][33]~87_combout\,
	datad => \P_array[2][37]~50_combout\,
	combout => \G_array~177_combout\);

-- Location: LCCOMB_X72_Y60_N12
\G_array[1][41]~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][41]~175_combout\ = (\B[41]~input_o\ & ((\A[41]~input_o\) # ((\B[40]~input_o\ & \A[40]~input_o\)))) # (!\B[41]~input_o\ & (\A[41]~input_o\ & (\B[40]~input_o\ & \A[40]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[41]~input_o\,
	datab => \A[41]~input_o\,
	datac => \B[40]~input_o\,
	datad => \A[40]~input_o\,
	combout => \G_array[1][41]~175_combout\);

-- Location: LCCOMB_X73_Y59_N6
\G_array[3][41]~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][41]~176_combout\ = (!\G_array[1][41]~175_combout\ & ((!\G_array~174_combout\) # (!\G_array[1][39]~167_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[1][41]~175_combout\,
	datac => \G_array[1][39]~167_combout\,
	datad => \G_array~174_combout\,
	combout => \G_array[3][41]~176_combout\);

-- Location: LCCOMB_X73_Y59_N26
\S~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~53_combout\ = (\G_array[3][41]~176_combout\ & (((!\G_array~177_combout\ & \G_array[3][37]~157_combout\)) # (!\P_array[2][41]~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[2][41]~59_combout\,
	datab => \G_array~177_combout\,
	datac => \G_array[3][37]~157_combout\,
	datad => \G_array[3][41]~176_combout\,
	combout => \S~53_combout\);

-- Location: LCCOMB_X73_Y59_N28
\P_array[4][41]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[4][41]~60_combout\ = (\P_array[2][33]~87_combout\ & (\P_array[2][37]~50_combout\ & (\P_array[2][29]~37_combout\ & \P_array[2][41]~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[2][33]~87_combout\,
	datab => \P_array[2][37]~50_combout\,
	datac => \P_array[2][29]~37_combout\,
	datad => \P_array[2][41]~59_combout\,
	combout => \P_array[4][41]~60_combout\);

-- Location: LCCOMB_X73_Y59_N4
\S~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~55_combout\ = p(42) $ ((((\S~54_combout\ & \P_array[4][41]~60_combout\)) # (!\S~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(42),
	datab => \S~54_combout\,
	datac => \S~53_combout\,
	datad => \P_array[4][41]~60_combout\,
	combout => \S~55_combout\);

-- Location: LCCOMB_X82_Y56_N30
\S~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~57_combout\ = (\carry[43]~42_combout\) # ((\G_array[3][26]~108_combout\) # ((\G_array~109_combout\ & \G_array[3][18]~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~109_combout\,
	datab => \carry[43]~42_combout\,
	datac => \G_array[3][18]~67_combout\,
	datad => \G_array[3][26]~108_combout\,
	combout => \S~57_combout\);

-- Location: LCCOMB_X72_Y60_N30
\P_array[2][42]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[2][42]~61_combout\ = (\G_array~170_combout\ & (p(42) & (\A[41]~input_o\ $ (\B[41]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~170_combout\,
	datab => \A[41]~input_o\,
	datac => \B[41]~input_o\,
	datad => p(42),
	combout => \P_array[2][42]~61_combout\);

-- Location: LCCOMB_X79_Y60_N8
\P_array[4][42]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[4][42]~62_combout\ = (\P_array[2][42]~61_combout\ & (\P_array[4][38]~53_combout\ & (\G_array~115_combout\ & \G_array~124_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[2][42]~61_combout\,
	datab => \P_array[4][38]~53_combout\,
	datac => \G_array~115_combout\,
	datad => \G_array~124_combout\,
	combout => \P_array[4][42]~62_combout\);

-- Location: LCCOMB_X72_Y60_N0
\G_array[1][42]~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][42]~178_combout\ = (\B[42]~input_o\ & ((\A[42]~input_o\) # ((\B[41]~input_o\ & \A[41]~input_o\)))) # (!\B[42]~input_o\ & (\B[41]~input_o\ & (\A[42]~input_o\ & \A[41]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[41]~input_o\,
	datab => \B[42]~input_o\,
	datac => \A[42]~input_o\,
	datad => \A[41]~input_o\,
	combout => \G_array[1][42]~178_combout\);

-- Location: LCCOMB_X72_Y60_N26
\G_array[3][42]~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][42]~179_combout\ = (!\G_array[1][42]~178_combout\ & (((!\G_array[1][40]~171_combout\) # (!p(41))) # (!p(42))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[1][42]~178_combout\,
	datab => p(42),
	datac => p(41),
	datad => \G_array[1][40]~171_combout\,
	combout => \G_array[3][42]~179_combout\);

-- Location: LCCOMB_X75_Y60_N2
\G_array[3][42]~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][42]~180_combout\ = ((\P_array[2][42]~61_combout\ & !\G_array[3][38]~163_combout\)) # (!\G_array[3][42]~179_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P_array[2][42]~61_combout\,
	datac => \G_array[3][42]~179_combout\,
	datad => \G_array[3][38]~163_combout\,
	combout => \G_array[3][42]~180_combout\);

-- Location: LCCOMB_X75_Y60_N4
\S~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~56_combout\ = (\G_array[3][42]~180_combout\) # ((\P_array[2][38]~89_combout\ & (\G_array[3][34]~145_combout\ & \P_array[2][42]~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[2][38]~89_combout\,
	datab => \G_array[3][42]~180_combout\,
	datac => \G_array[3][34]~145_combout\,
	datad => \P_array[2][42]~61_combout\,
	combout => \S~56_combout\);

-- Location: IOIBUF_X0_Y61_N22
\A[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(43),
	o => \A[43]~input_o\);

-- Location: IOIBUF_X67_Y73_N15
\B[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(43),
	o => \B[43]~input_o\);

-- Location: LCCOMB_X72_Y61_N16
\p[43]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(43) = \A[43]~input_o\ $ (\B[43]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[43]~input_o\,
	datac => \B[43]~input_o\,
	combout => p(43));

-- Location: LCCOMB_X75_Y60_N22
\S~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~58_combout\ = p(43) $ (((\S~56_combout\) # ((\S~57_combout\ & \P_array[4][42]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~57_combout\,
	datab => \P_array[4][42]~62_combout\,
	datac => \S~56_combout\,
	datad => p(43),
	combout => \S~58_combout\);

-- Location: LCCOMB_X72_Y60_N4
\P_array[2][43]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[2][43]~90_combout\ = (\G_array~174_combout\ & (p(43) & (\B[42]~input_o\ $ (\A[42]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~174_combout\,
	datab => \B[42]~input_o\,
	datac => \A[42]~input_o\,
	datad => p(43),
	combout => \P_array[2][43]~90_combout\);

-- Location: LCCOMB_X79_Y61_N30
\P_array[4][43]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[4][43]~63_combout\ = (\P_array[4][39]~55_combout\ & (\P_array[2][43]~90_combout\ & \P_array[2][31]~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P_array[4][39]~55_combout\,
	datac => \P_array[2][43]~90_combout\,
	datad => \P_array[2][31]~40_combout\,
	combout => \P_array[4][43]~63_combout\);

-- Location: LCCOMB_X72_Y61_N20
\G_array[1][43]~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][43]~182_combout\ = (\A[43]~input_o\ & ((\B[43]~input_o\) # ((\B[42]~input_o\ & \A[42]~input_o\)))) # (!\A[43]~input_o\ & (\B[42]~input_o\ & (\B[43]~input_o\ & \A[42]~input_o\)))

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
	combout => \G_array[1][43]~182_combout\);

-- Location: LCCOMB_X72_Y61_N22
\G_array[3][43]~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][43]~183_combout\ = (!\G_array[1][43]~182_combout\ & (((!p(43)) # (!p(42))) # (!\G_array[1][41]~175_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[1][41]~175_combout\,
	datab => \G_array[1][43]~182_combout\,
	datac => p(42),
	datad => p(43),
	combout => \G_array[3][43]~183_combout\);

-- Location: LCCOMB_X79_Y61_N8
\G_array[3][43]~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][43]~184_combout\ = ((\P_array[2][43]~90_combout\ & !\G_array[3][39]~168_combout\)) # (!\G_array[3][43]~183_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G_array[3][43]~183_combout\,
	datac => \P_array[2][43]~90_combout\,
	datad => \G_array[3][39]~168_combout\,
	combout => \G_array[3][43]~184_combout\);

-- Location: LCCOMB_X77_Y61_N18
\G_array~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~181_combout\ = (p(37) & (\P_array[2][43]~90_combout\ & (\G_array~166_combout\ & p(36))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(37),
	datab => \P_array[2][43]~90_combout\,
	datac => \G_array~166_combout\,
	datad => p(36),
	combout => \G_array~181_combout\);

-- Location: LCCOMB_X77_Y61_N28
\S~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~59_combout\ = (\G_array[3][43]~184_combout\) # ((\G_array[3][35]~150_combout\ & \G_array~181_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[3][35]~150_combout\,
	datac => \G_array[3][43]~184_combout\,
	datad => \G_array~181_combout\,
	combout => \S~59_combout\);

-- Location: IOIBUF_X35_Y73_N22
\B[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(44),
	o => \B[44]~input_o\);

-- Location: IOIBUF_X65_Y73_N22
\A[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(44),
	o => \A[44]~input_o\);

-- Location: LCCOMB_X72_Y61_N10
\p[44]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(44) = \B[44]~input_o\ $ (\A[44]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[44]~input_o\,
	datad => \A[44]~input_o\,
	combout => p(44));

-- Location: LCCOMB_X80_Y57_N22
\S~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~60_combout\ = (\carry[44]~44_combout\) # ((\G_array[3][27]~113_combout\) # ((\G_array~114_combout\ & \G_array[3][19]~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry[44]~44_combout\,
	datab => \G_array~114_combout\,
	datac => \G_array[3][19]~74_combout\,
	datad => \G_array[3][27]~113_combout\,
	combout => \S~60_combout\);

-- Location: LCCOMB_X81_Y61_N24
\S~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~61_combout\ = p(44) $ (((\S~59_combout\) # ((\P_array[4][43]~63_combout\ & \S~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[4][43]~63_combout\,
	datab => \S~59_combout\,
	datac => p(44),
	datad => \S~60_combout\,
	combout => \S~61_combout\);

-- Location: LCCOMB_X72_Y60_N28
\P_array[2][44]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[2][44]~64_combout\ = (p(44) & (p(42) & (p(41) & p(43))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(44),
	datab => p(42),
	datac => p(41),
	datad => p(43),
	combout => \P_array[2][44]~64_combout\);

-- Location: LCCOMB_X80_Y60_N2
\P_array[4][44]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[4][44]~65_combout\ = (\P_array[2][36]~47_combout\ & (\P_array[2][44]~64_combout\ & (\P_array[2][32]~86_combout\ & \P_array[2][40]~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[2][36]~47_combout\,
	datab => \P_array[2][44]~64_combout\,
	datac => \P_array[2][32]~86_combout\,
	datad => \P_array[2][40]~57_combout\,
	combout => \P_array[4][44]~65_combout\);

-- Location: LCCOMB_X80_Y60_N4
\carry[45]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[45]~65_combout\ = (\P_array[4][28]~36_combout\ & (\P_array[4][44]~65_combout\ & ((\G_array[3][12]~40_combout\) # (\carry[13]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[4][28]~36_combout\,
	datab => \G_array[3][12]~40_combout\,
	datac => \carry[13]~47_combout\,
	datad => \P_array[4][44]~65_combout\,
	combout => \carry[45]~65_combout\);

-- Location: IOIBUF_X65_Y73_N15
\B[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(45),
	o => \B[45]~input_o\);

-- Location: IOIBUF_X72_Y0_N8
\A[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(45),
	o => \A[45]~input_o\);

-- Location: LCCOMB_X72_Y61_N4
\p[45]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(45) = \B[45]~input_o\ $ (\A[45]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[45]~input_o\,
	datad => \A[45]~input_o\,
	combout => p(45));

-- Location: LCCOMB_X80_Y60_N30
\carry[45]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[45]~66_combout\ = (\P_array[4][44]~65_combout\ & ((\G_array[3][28]~118_combout\) # ((\G_array[3][20]~78_combout\ & \G_array~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[3][28]~118_combout\,
	datab => \P_array[4][44]~65_combout\,
	datac => \G_array[3][20]~78_combout\,
	datad => \G_array~119_combout\,
	combout => \carry[45]~66_combout\);

-- Location: LCCOMB_X80_Y60_N0
\carry[45]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[45]~67_combout\ = (\carry[45]~66_combout\) # ((\G_array[3][36]~154_combout\ & (\P_array[2][44]~64_combout\ & \P_array[2][40]~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[3][36]~154_combout\,
	datab => \P_array[2][44]~64_combout\,
	datac => \carry[45]~66_combout\,
	datad => \P_array[2][40]~57_combout\,
	combout => \carry[45]~67_combout\);

-- Location: LCCOMB_X72_Y61_N8
\G_array[1][44]~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][44]~185_combout\ = (\A[44]~input_o\ & ((\B[44]~input_o\) # ((\B[43]~input_o\ & \A[43]~input_o\)))) # (!\A[44]~input_o\ & (\B[44]~input_o\ & (\B[43]~input_o\ & \A[43]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[44]~input_o\,
	datab => \B[44]~input_o\,
	datac => \B[43]~input_o\,
	datad => \A[43]~input_o\,
	combout => \G_array[1][44]~185_combout\);

-- Location: LCCOMB_X72_Y61_N2
\G_array[3][44]~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][44]~186_combout\ = (!\G_array[1][44]~185_combout\ & (((!p(43)) # (!\G_array[1][42]~178_combout\)) # (!p(44))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(44),
	datab => \G_array[1][42]~178_combout\,
	datac => \G_array[1][44]~185_combout\,
	datad => p(43),
	combout => \G_array[3][44]~186_combout\);

-- Location: LCCOMB_X74_Y60_N24
\G_array[3][44]~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][44]~187_combout\ = ((!\G_array[3][40]~172_combout\ & \P_array[2][44]~64_combout\)) # (!\G_array[3][44]~186_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[3][44]~186_combout\,
	datab => \G_array[3][40]~172_combout\,
	datac => \P_array[2][44]~64_combout\,
	combout => \G_array[3][44]~187_combout\);

-- Location: LCCOMB_X73_Y60_N0
\S~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~62_combout\ = p(45) $ (((\carry[45]~65_combout\) # ((\carry[45]~67_combout\) # (\G_array[3][44]~187_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry[45]~65_combout\,
	datab => p(45),
	datac => \carry[45]~67_combout\,
	datad => \G_array[3][44]~187_combout\,
	combout => \S~62_combout\);

-- Location: LCCOMB_X79_Y59_N22
\S~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~64_combout\ = (\G_array[3][29]~239_combout\) # ((\G_array~123_combout\) # ((\carry[38]~19_combout\ & \P_array[4][29]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry[38]~19_combout\,
	datab => \G_array[3][29]~239_combout\,
	datac => \G_array~123_combout\,
	datad => \P_array[4][29]~38_combout\,
	combout => \S~64_combout\);

-- Location: LCCOMB_X72_Y59_N8
\P_array[2][45]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[2][45]~66_combout\ = (p(43) & (p(44) & (p(42) & p(45))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(43),
	datab => p(44),
	datac => p(42),
	datad => p(45),
	combout => \P_array[2][45]~66_combout\);

-- Location: LCCOMB_X72_Y61_N24
\G_array[1][45]~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][45]~188_combout\ = (\B[45]~input_o\ & ((\A[45]~input_o\) # ((\A[44]~input_o\ & \B[44]~input_o\)))) # (!\B[45]~input_o\ & (\A[44]~input_o\ & (\B[44]~input_o\ & \A[45]~input_o\)))

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
	combout => \G_array[1][45]~188_combout\);

-- Location: LCCOMB_X72_Y61_N26
\G_array[3][45]~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][45]~189_combout\ = (!\G_array[1][45]~188_combout\ & (((!\G_array[1][43]~182_combout\) # (!p(45))) # (!p(44))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(44),
	datab => \G_array[1][45]~188_combout\,
	datac => p(45),
	datad => \G_array[1][43]~182_combout\,
	combout => \G_array[3][45]~189_combout\);

-- Location: LCCOMB_X73_Y59_N16
\G_array[3][45]~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][45]~190_combout\ = ((\P_array[2][45]~66_combout\ & !\G_array[3][41]~176_combout\)) # (!\G_array[3][45]~189_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[2][45]~66_combout\,
	datab => \G_array[3][45]~189_combout\,
	datad => \G_array[3][41]~176_combout\,
	combout => \G_array[3][45]~190_combout\);

-- Location: LCCOMB_X73_Y59_N2
\S~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~63_combout\ = (\G_array[3][45]~190_combout\) # ((\P_array[2][45]~66_combout\ & (\G_array[3][37]~158_combout\ & \P_array[2][41]~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[2][45]~66_combout\,
	datab => \G_array[3][45]~190_combout\,
	datac => \G_array[3][37]~158_combout\,
	datad => \P_array[2][41]~59_combout\,
	combout => \S~63_combout\);

-- Location: IOIBUF_X20_Y73_N8
\A[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(46),
	o => \A[46]~input_o\);

-- Location: IOIBUF_X23_Y73_N22
\B[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(46),
	o => \B[46]~input_o\);

-- Location: LCCOMB_X72_Y61_N30
\p[46]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(46) = \A[46]~input_o\ $ (\B[46]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[46]~input_o\,
	datac => \B[46]~input_o\,
	combout => p(46));

-- Location: LCCOMB_X73_Y59_N22
\P_array[4][45]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[4][45]~67_combout\ = (\P_array[2][45]~66_combout\ & (\P_array[2][37]~50_combout\ & (\P_array[2][33]~87_combout\ & \P_array[2][41]~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[2][45]~66_combout\,
	datab => \P_array[2][37]~50_combout\,
	datac => \P_array[2][33]~87_combout\,
	datad => \P_array[2][41]~59_combout\,
	combout => \P_array[4][45]~67_combout\);

-- Location: LCCOMB_X73_Y60_N2
\S~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~65_combout\ = p(46) $ (((\S~63_combout\) # ((\S~64_combout\ & \P_array[4][45]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~64_combout\,
	datab => \S~63_combout\,
	datac => p(46),
	datad => \P_array[4][45]~67_combout\,
	combout => \S~65_combout\);

-- Location: LCCOMB_X81_Y60_N6
\G_array~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~195_combout\ = (\G_array~128_combout\ & (((\P_array[2][22]~35_combout\ & !\G_array[3][18]~66_combout\)) # (!\G_array[3][22]~87_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[2][22]~35_combout\,
	datab => \G_array[3][22]~87_combout\,
	datac => \G_array[3][18]~66_combout\,
	datad => \G_array~128_combout\,
	combout => \G_array~195_combout\);

-- Location: LCCOMB_X73_Y60_N4
\P_array[2][46]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[2][46]~68_combout\ = (p(43) & (p(44) & (p(46) & p(45))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(43),
	datab => p(44),
	datac => p(46),
	datad => p(45),
	combout => \P_array[2][46]~68_combout\);

-- Location: LCCOMB_X77_Y60_N30
\P_array[4][46]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[4][46]~69_combout\ = (\P_array[2][34]~43_combout\ & (\P_array[2][38]~89_combout\ & (\P_array[2][42]~61_combout\ & \P_array[2][46]~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[2][34]~43_combout\,
	datab => \P_array[2][38]~89_combout\,
	datac => \P_array[2][42]~61_combout\,
	datad => \P_array[2][46]~68_combout\,
	combout => \P_array[4][46]~69_combout\);

-- Location: LCCOMB_X77_Y60_N10
\G_array~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~194_combout\ = (\P_array[2][46]~68_combout\ & (\P_array[2][42]~61_combout\ & \G_array[3][38]~164_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[2][46]~68_combout\,
	datac => \P_array[2][42]~61_combout\,
	datad => \G_array[3][38]~164_combout\,
	combout => \G_array~194_combout\);

-- Location: LCCOMB_X77_Y60_N12
\carry[47]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[47]~69_combout\ = (\G_array~194_combout\) # ((\P_array[4][46]~69_combout\ & ((\G_array~195_combout\) # (\G_array[3][30]~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~195_combout\,
	datab => \G_array[3][30]~127_combout\,
	datac => \P_array[4][46]~69_combout\,
	datad => \G_array~194_combout\,
	combout => \carry[47]~69_combout\);

-- Location: LCCOMB_X72_Y61_N28
\G_array[1][46]~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][46]~191_combout\ = (\A[46]~input_o\ & ((\B[46]~input_o\) # ((\B[45]~input_o\ & \A[45]~input_o\)))) # (!\A[46]~input_o\ & (\B[45]~input_o\ & (\B[46]~input_o\ & \A[45]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[46]~input_o\,
	datab => \B[45]~input_o\,
	datac => \B[46]~input_o\,
	datad => \A[45]~input_o\,
	combout => \G_array[1][46]~191_combout\);

-- Location: LCCOMB_X73_Y60_N30
\G_array[3][46]~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][46]~192_combout\ = (!\G_array[1][46]~191_combout\ & (((!p(45)) # (!p(46))) # (!\G_array[1][44]~185_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[1][44]~185_combout\,
	datab => \G_array[1][46]~191_combout\,
	datac => p(46),
	datad => p(45),
	combout => \G_array[3][46]~192_combout\);

-- Location: LCCOMB_X73_Y60_N24
\G_array[3][46]~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][46]~193_combout\ = ((\P_array[2][46]~68_combout\ & !\G_array[3][42]~179_combout\)) # (!\G_array[3][46]~192_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[3][46]~192_combout\,
	datab => \P_array[2][46]~68_combout\,
	datac => \G_array[3][42]~179_combout\,
	combout => \G_array[3][46]~193_combout\);

-- Location: IOIBUF_X16_Y73_N1
\A[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(47),
	o => \A[47]~input_o\);

-- Location: IOIBUF_X69_Y73_N15
\B[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(47),
	o => \B[47]~input_o\);

-- Location: LCCOMB_X72_Y61_N14
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

-- Location: LCCOMB_X77_Y60_N24
\carry[47]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[47]~68_combout\ = (\P_array[4][30]~39_combout\ & (\carry[39]~20_combout\ & \P_array[4][46]~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[4][30]~39_combout\,
	datab => \carry[39]~20_combout\,
	datac => \P_array[4][46]~69_combout\,
	combout => \carry[47]~68_combout\);

-- Location: LCCOMB_X77_Y60_N22
\S~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~66_combout\ = p(47) $ (((\carry[47]~69_combout\) # ((\G_array[3][46]~193_combout\) # (\carry[47]~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry[47]~69_combout\,
	datab => \G_array[3][46]~193_combout\,
	datac => p(47),
	datad => \carry[47]~68_combout\,
	combout => \S~66_combout\);

-- Location: IOIBUF_X33_Y73_N8
\A[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(48),
	o => \A[48]~input_o\);

-- Location: IOIBUF_X72_Y73_N22
\B[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(48),
	o => \B[48]~input_o\);

-- Location: LCCOMB_X73_Y62_N8
\p[48]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(48) = \A[48]~input_o\ $ (\B[48]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[48]~input_o\,
	datad => \B[48]~input_o\,
	combout => p(48));

-- Location: LCCOMB_X73_Y60_N10
\P_array[2][47]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[2][47]~70_combout\ = (p(47) & (p(44) & (p(46) & p(45))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(47),
	datab => p(44),
	datac => p(46),
	datad => p(45),
	combout => \P_array[2][47]~70_combout\);

-- Location: LCCOMB_X73_Y65_N20
\G_array~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~196_combout\ = (\P_array[2][43]~90_combout\ & (\G_array[3][39]~169_combout\ & \P_array[2][47]~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[2][43]~90_combout\,
	datab => \G_array[3][39]~169_combout\,
	datac => \P_array[2][47]~70_combout\,
	combout => \G_array~196_combout\);

-- Location: LCCOMB_X72_Y61_N0
\G_array[1][47]~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][47]~197_combout\ = (\A[47]~input_o\ & ((\B[47]~input_o\) # ((\A[46]~input_o\ & \B[46]~input_o\)))) # (!\A[47]~input_o\ & (\A[46]~input_o\ & (\B[46]~input_o\ & \B[47]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[46]~input_o\,
	datab => \A[47]~input_o\,
	datac => \B[46]~input_o\,
	datad => \B[47]~input_o\,
	combout => \G_array[1][47]~197_combout\);

-- Location: LCCOMB_X72_Y61_N18
\G_array[3][47]~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][47]~198_combout\ = (!\G_array[1][47]~197_combout\ & (((!p(47)) # (!\G_array[1][45]~188_combout\)) # (!p(46))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(46),
	datab => \G_array[1][45]~188_combout\,
	datac => p(47),
	datad => \G_array[1][47]~197_combout\,
	combout => \G_array[3][47]~198_combout\);

-- Location: LCCOMB_X76_Y61_N24
\G_array[3][47]~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][47]~199_combout\ = ((!\G_array[3][43]~183_combout\ & \P_array[2][47]~70_combout\)) # (!\G_array[3][47]~198_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[3][47]~198_combout\,
	datab => \G_array[3][43]~183_combout\,
	datac => \P_array[2][47]~70_combout\,
	combout => \G_array[3][47]~199_combout\);

-- Location: LCCOMB_X73_Y65_N26
\carry[48]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[48]~70_combout\ = (\P_array[4][31]~41_combout\ & (\P_array[4][39]~55_combout\ & (\P_array[2][47]~70_combout\ & \P_array[2][43]~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[4][31]~41_combout\,
	datab => \P_array[4][39]~55_combout\,
	datac => \P_array[2][47]~70_combout\,
	datad => \P_array[2][43]~90_combout\,
	combout => \carry[48]~70_combout\);

-- Location: LCCOMB_X73_Y65_N22
\S~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~68_combout\ = (\G_array~196_combout\) # ((\G_array[3][47]~199_combout\) # ((\carry[16]~22_combout\ & \carry[48]~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry[16]~22_combout\,
	datab => \G_array~196_combout\,
	datac => \G_array[3][47]~199_combout\,
	datad => \carry[48]~70_combout\,
	combout => \S~68_combout\);

-- Location: LCCOMB_X79_Y61_N18
\S~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~67_combout\ = (\P_array[4][39]~55_combout\ & (\P_array[2][43]~90_combout\ & ((\G_array[3][31]~134_combout\) # (\G_array~135_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[3][31]~134_combout\,
	datab => \P_array[4][39]~55_combout\,
	datac => \P_array[2][43]~90_combout\,
	datad => \G_array~135_combout\,
	combout => \S~67_combout\);

-- Location: LCCOMB_X73_Y65_N0
\S~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~69_combout\ = p(48) $ (((\S~68_combout\) # ((\P_array[2][47]~70_combout\ & \S~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(48),
	datab => \P_array[2][47]~70_combout\,
	datac => \S~68_combout\,
	datad => \S~67_combout\,
	combout => \S~69_combout\);

-- Location: LCCOMB_X73_Y60_N20
\P_array[2][48]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[2][48]~71_combout\ = (p(47) & (p(45) & (p(46) & p(48))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(47),
	datab => p(45),
	datac => p(46),
	datad => p(48),
	combout => \P_array[2][48]~71_combout\);

-- Location: LCCOMB_X72_Y60_N14
\carry[49]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[49]~71_combout\ = (\G_array~170_combout\ & (\P_array[2][44]~64_combout\ & (\G_array~161_combout\ & \P_array[2][48]~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~170_combout\,
	datab => \P_array[2][44]~64_combout\,
	datac => \G_array~161_combout\,
	datad => \P_array[2][48]~71_combout\,
	combout => \carry[49]~71_combout\);

-- Location: LCCOMB_X79_Y60_N2
\carry[49]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[49]~72_combout\ = (\P_array[4][32]~42_combout\ & (\carry[49]~71_combout\ & (\carry[17]~23_combout\ & \P_array[2][36]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[4][32]~42_combout\,
	datab => \carry[49]~71_combout\,
	datac => \carry[17]~23_combout\,
	datad => \P_array[2][36]~47_combout\,
	combout => \carry[49]~72_combout\);

-- Location: LCCOMB_X74_Y60_N2
\carry[49]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[49]~73_combout\ = (\P_array[2][44]~64_combout\ & (((!\G_array[3][36]~153_combout\ & \P_array[2][40]~57_combout\)) # (!\G_array[3][40]~172_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[3][36]~153_combout\,
	datab => \G_array[3][40]~172_combout\,
	datac => \P_array[2][44]~64_combout\,
	datad => \P_array[2][40]~57_combout\,
	combout => \carry[49]~73_combout\);

-- Location: LCCOMB_X72_Y60_N24
\G_array~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~200_combout\ = (\P_array[2][44]~64_combout\ & (\G_array~161_combout\ & \G_array~170_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P_array[2][44]~64_combout\,
	datac => \G_array~161_combout\,
	datad => \G_array~170_combout\,
	combout => \G_array~200_combout\);

-- Location: LCCOMB_X72_Y60_N2
\carry[49]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[49]~74_combout\ = (\P_array[2][48]~71_combout\ & ((\carry[49]~73_combout\) # ((\G_array~200_combout\ & \G_array~173_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry[49]~73_combout\,
	datab => \G_array~200_combout\,
	datac => \P_array[2][48]~71_combout\,
	datad => \G_array~173_combout\,
	combout => \carry[49]~74_combout\);

-- Location: LCCOMB_X72_Y61_N12
\G_array[1][48]~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][48]~201_combout\ = (\A[48]~input_o\ & ((\B[48]~input_o\) # ((\B[47]~input_o\ & \A[47]~input_o\)))) # (!\A[48]~input_o\ & (\B[47]~input_o\ & (\A[47]~input_o\ & \B[48]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[47]~input_o\,
	datab => \A[47]~input_o\,
	datac => \A[48]~input_o\,
	datad => \B[48]~input_o\,
	combout => \G_array[1][48]~201_combout\);

-- Location: LCCOMB_X73_Y60_N14
\G_array[3][48]~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][48]~202_combout\ = (!\G_array[1][48]~201_combout\ & (((!p(48)) # (!\G_array[1][46]~191_combout\)) # (!p(47))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(47),
	datab => \G_array[1][48]~201_combout\,
	datac => \G_array[1][46]~191_combout\,
	datad => p(48),
	combout => \G_array[3][48]~202_combout\);

-- Location: LCCOMB_X74_Y60_N20
\G_array[3][48]~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][48]~203_combout\ = ((\P_array[2][48]~71_combout\ & !\G_array[3][44]~186_combout\)) # (!\G_array[3][48]~202_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P_array[2][48]~71_combout\,
	datac => \G_array[3][44]~186_combout\,
	datad => \G_array[3][48]~202_combout\,
	combout => \G_array[3][48]~203_combout\);

-- Location: LCCOMB_X79_Y60_N20
\carry[49]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[49]~75_combout\ = (\G_array[3][48]~203_combout\) # ((\carry[49]~71_combout\ & (\G_array~137_combout\ & \P_array[2][36]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[3][48]~203_combout\,
	datab => \carry[49]~71_combout\,
	datac => \G_array~137_combout\,
	datad => \P_array[2][36]~47_combout\,
	combout => \carry[49]~75_combout\);

-- Location: IOIBUF_X96_Y73_N22
\A[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(49),
	o => \A[49]~input_o\);

-- Location: IOIBUF_X81_Y73_N8
\B[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(49),
	o => \B[49]~input_o\);

-- Location: LCCOMB_X73_Y62_N18
\p[49]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(49) = \A[49]~input_o\ $ (\B[49]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[49]~input_o\,
	datad => \B[49]~input_o\,
	combout => p(49));

-- Location: LCCOMB_X73_Y60_N16
\S~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~70_combout\ = p(49) $ (((\carry[49]~72_combout\) # ((\carry[49]~74_combout\) # (\carry[49]~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry[49]~72_combout\,
	datab => \carry[49]~74_combout\,
	datac => \carry[49]~75_combout\,
	datad => p(49),
	combout => \S~70_combout\);

-- Location: LCCOMB_X73_Y60_N26
\P_array[2][49]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[2][49]~72_combout\ = (p(49) & (p(47) & (p(46) & p(48))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(49),
	datab => p(47),
	datac => p(46),
	datad => p(48),
	combout => \P_array[2][49]~72_combout\);

-- Location: LCCOMB_X79_Y55_N18
\S~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~71_combout\ = (\P_array[2][37]~50_combout\ & ((\G_array~240_combout\) # ((\P_array[4][33]~88_combout\ & \carry[18]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[4][33]~88_combout\,
	datab => \carry[18]~24_combout\,
	datac => \G_array~240_combout\,
	datad => \P_array[2][37]~50_combout\,
	combout => \S~71_combout\);

-- Location: LCCOMB_X73_Y59_N14
\carry[50]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[50]~77_combout\ = (\G_array~166_combout\ & (\G_array~174_combout\ & (\P_array[2][49]~72_combout\ & \P_array[2][45]~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~166_combout\,
	datab => \G_array~174_combout\,
	datac => \P_array[2][49]~72_combout\,
	datad => \P_array[2][45]~66_combout\,
	combout => \carry[50]~77_combout\);

-- Location: LCCOMB_X73_Y62_N6
\G_array[1][49]~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][49]~204_combout\ = (\A[49]~input_o\ & ((\B[49]~input_o\) # ((\B[48]~input_o\ & \A[48]~input_o\)))) # (!\A[49]~input_o\ & (\B[48]~input_o\ & (\A[48]~input_o\ & \B[49]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[48]~input_o\,
	datab => \A[48]~input_o\,
	datac => \A[49]~input_o\,
	datad => \B[49]~input_o\,
	combout => \G_array[1][49]~204_combout\);

-- Location: LCCOMB_X73_Y62_N16
\G_array[3][49]~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][49]~205_combout\ = (!\G_array[1][49]~204_combout\ & (((!p(49)) # (!\G_array[1][47]~197_combout\)) # (!p(48))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[1][49]~204_combout\,
	datab => p(48),
	datac => \G_array[1][47]~197_combout\,
	datad => p(49),
	combout => \G_array[3][49]~205_combout\);

-- Location: LCCOMB_X73_Y61_N16
\G_array[3][49]~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][49]~206_combout\ = ((!\G_array[3][45]~189_combout\ & \P_array[2][49]~72_combout\)) # (!\G_array[3][49]~205_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[3][45]~189_combout\,
	datab => \P_array[2][49]~72_combout\,
	datac => \G_array[3][49]~205_combout\,
	combout => \G_array[3][49]~206_combout\);

-- Location: LCCOMB_X73_Y59_N0
\S~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~72_combout\ = (\G_array[3][49]~206_combout\) # ((\carry[50]~77_combout\ & ((\S~71_combout\) # (\G_array~177_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~71_combout\,
	datab => \G_array~177_combout\,
	datac => \carry[50]~77_combout\,
	datad => \G_array[3][49]~206_combout\,
	combout => \S~72_combout\);

-- Location: LCCOMB_X73_Y59_N12
\carry[50]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[50]~76_combout\ = (\P_array[2][45]~66_combout\ & (((\P_array[2][41]~59_combout\ & !\G_array[3][37]~157_combout\)) # (!\G_array[3][41]~176_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[2][41]~59_combout\,
	datab => \P_array[2][45]~66_combout\,
	datac => \G_array[3][37]~157_combout\,
	datad => \G_array[3][41]~176_combout\,
	combout => \carry[50]~76_combout\);

-- Location: IOIBUF_X72_Y73_N1
\A[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(50),
	o => \A[50]~input_o\);

-- Location: IOIBUF_X45_Y73_N8
\B[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(50),
	o => \B[50]~input_o\);

-- Location: LCCOMB_X73_Y62_N20
\p[50]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(50) = \A[50]~input_o\ $ (\B[50]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[50]~input_o\,
	datac => \B[50]~input_o\,
	combout => p(50));

-- Location: LCCOMB_X73_Y60_N12
\S~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~73_combout\ = p(50) $ (((\S~72_combout\) # ((\P_array[2][49]~72_combout\ & \carry[50]~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[2][49]~72_combout\,
	datab => \S~72_combout\,
	datac => \carry[50]~76_combout\,
	datad => p(50),
	combout => \S~73_combout\);

-- Location: LCCOMB_X73_Y60_N22
\P_array[2][50]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[2][50]~73_combout\ = (p(49) & (p(48) & (p(47) & p(50))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(49),
	datab => p(48),
	datac => p(47),
	datad => p(50),
	combout => \P_array[2][50]~73_combout\);

-- Location: LCCOMB_X73_Y62_N2
\G_array[1][50]~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][50]~207_combout\ = (\A[50]~input_o\ & ((\B[50]~input_o\) # ((\A[49]~input_o\ & \B[49]~input_o\)))) # (!\A[50]~input_o\ & (\A[49]~input_o\ & (\B[49]~input_o\ & \B[50]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[49]~input_o\,
	datab => \B[49]~input_o\,
	datac => \A[50]~input_o\,
	datad => \B[50]~input_o\,
	combout => \G_array[1][50]~207_combout\);

-- Location: LCCOMB_X73_Y60_N8
\G_array[3][50]~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][50]~208_combout\ = (!\G_array[1][50]~207_combout\ & (((!p(50)) # (!\G_array[1][48]~201_combout\)) # (!p(49))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(49),
	datab => \G_array[1][48]~201_combout\,
	datac => \G_array[1][50]~207_combout\,
	datad => p(50),
	combout => \G_array[3][50]~208_combout\);

-- Location: LCCOMB_X73_Y60_N18
\G_array[3][50]~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][50]~209_combout\ = ((\P_array[2][50]~73_combout\ & !\G_array[3][46]~192_combout\)) # (!\G_array[3][50]~208_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[2][50]~73_combout\,
	datab => \G_array[3][50]~208_combout\,
	datac => \G_array[3][46]~192_combout\,
	combout => \G_array[3][50]~209_combout\);

-- Location: LCCOMB_X75_Y60_N12
\carry[51]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[51]~80_combout\ = (\P_array[2][50]~73_combout\ & \P_array[2][46]~68_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P_array[2][50]~73_combout\,
	datad => \P_array[2][46]~68_combout\,
	combout => \carry[51]~80_combout\);

-- Location: LCCOMB_X75_Y60_N30
\carry[51]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[51]~81_combout\ = (\carry[51]~80_combout\ & (((\P_array[2][42]~61_combout\ & !\G_array[3][38]~163_combout\)) # (!\G_array[3][42]~179_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry[51]~80_combout\,
	datab => \P_array[2][42]~61_combout\,
	datac => \G_array[3][42]~179_combout\,
	datad => \G_array[3][38]~163_combout\,
	combout => \carry[51]~81_combout\);

-- Location: LCCOMB_X75_Y60_N24
\carry[51]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[51]~78_combout\ = (\P_array[2][38]~89_combout\ & (\P_array[2][50]~73_combout\ & (\P_array[2][42]~61_combout\ & \P_array[2][46]~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[2][38]~89_combout\,
	datab => \P_array[2][50]~73_combout\,
	datac => \P_array[2][42]~61_combout\,
	datad => \P_array[2][46]~68_combout\,
	combout => \carry[51]~78_combout\);

-- Location: LCCOMB_X75_Y60_N16
\carry[51]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[51]~82_combout\ = (\carry[51]~81_combout\) # ((\carry[51]~78_combout\ & ((\G_array[3][34]~145_combout\) # (\G_array~146_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry[51]~81_combout\,
	datab => \G_array[3][34]~145_combout\,
	datac => \G_array~146_combout\,
	datad => \carry[51]~78_combout\,
	combout => \carry[51]~82_combout\);

-- Location: IOIBUF_X85_Y73_N15
\A[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(51),
	o => \A[51]~input_o\);

-- Location: IOIBUF_X69_Y73_N1
\B[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(51),
	o => \B[51]~input_o\);

-- Location: LCCOMB_X73_Y62_N12
\p[51]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(51) = \A[51]~input_o\ $ (\B[51]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[51]~input_o\,
	datad => \B[51]~input_o\,
	combout => p(51));

-- Location: LCCOMB_X75_Y60_N10
\carry[51]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[51]~79_combout\ = (\carry[19]~25_combout\ & (\P_array[4][34]~44_combout\ & \carry[51]~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \carry[19]~25_combout\,
	datac => \P_array[4][34]~44_combout\,
	datad => \carry[51]~78_combout\,
	combout => \carry[51]~79_combout\);

-- Location: LCCOMB_X75_Y60_N26
\S~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~74_combout\ = p(51) $ (((\G_array[3][50]~209_combout\) # ((\carry[51]~82_combout\) # (\carry[51]~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[3][50]~209_combout\,
	datab => \carry[51]~82_combout\,
	datac => p(51),
	datad => \carry[51]~79_combout\,
	combout => \S~74_combout\);

-- Location: IOIBUF_X27_Y73_N22
\B[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(52),
	o => \B[52]~input_o\);

-- Location: IOIBUF_X58_Y73_N8
\A[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(52),
	o => \A[52]~input_o\);

-- Location: LCCOMB_X73_Y62_N22
\P_array[2][51]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[2][51]~74_combout\ = (p(51) & (p(49) & (p(48) & p(50))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(51),
	datab => p(49),
	datac => p(48),
	datad => p(50),
	combout => \P_array[2][51]~74_combout\);

-- Location: LCCOMB_X77_Y61_N4
\carry[52]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[52]~85_combout\ = (\P_array[2][47]~70_combout\ & (\P_array[2][51]~74_combout\ & \G_array~181_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[2][47]~70_combout\,
	datac => \P_array[2][51]~74_combout\,
	datad => \G_array~181_combout\,
	combout => \carry[52]~85_combout\);

-- Location: LCCOMB_X73_Y62_N24
\G_array[1][51]~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][51]~210_combout\ = (\A[51]~input_o\ & ((\B[51]~input_o\) # ((\B[50]~input_o\ & \A[50]~input_o\)))) # (!\A[51]~input_o\ & (\B[50]~input_o\ & (\A[50]~input_o\ & \B[51]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[50]~input_o\,
	datab => \A[51]~input_o\,
	datac => \A[50]~input_o\,
	datad => \B[51]~input_o\,
	combout => \G_array[1][51]~210_combout\);

-- Location: LCCOMB_X73_Y62_N26
\G_array[3][51]~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][51]~211_combout\ = (!\G_array[1][51]~210_combout\ & (((!p(50)) # (!p(51))) # (!\G_array[1][49]~204_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[1][49]~204_combout\,
	datab => \G_array[1][51]~210_combout\,
	datac => p(51),
	datad => p(50),
	combout => \G_array[3][51]~211_combout\);

-- Location: LCCOMB_X77_Y61_N22
\G_array[3][51]~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][51]~212_combout\ = ((!\G_array[3][47]~198_combout\ & \P_array[2][51]~74_combout\)) # (!\G_array[3][51]~211_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[3][47]~198_combout\,
	datac => \P_array[2][51]~74_combout\,
	datad => \G_array[3][51]~211_combout\,
	combout => \G_array[3][51]~212_combout\);

-- Location: LCCOMB_X77_Y61_N24
\carry[52]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[52]~83_combout\ = (\P_array[2][51]~74_combout\ & \P_array[2][47]~70_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \P_array[2][51]~74_combout\,
	datad => \P_array[2][47]~70_combout\,
	combout => \carry[52]~83_combout\);

-- Location: LCCOMB_X77_Y61_N10
\carry[52]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[52]~84_combout\ = (\carry[52]~83_combout\ & ((\G_array[3][43]~184_combout\) # ((\G_array[3][35]~150_combout\ & \G_array~181_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[3][35]~150_combout\,
	datab => \G_array~181_combout\,
	datac => \G_array[3][43]~184_combout\,
	datad => \carry[52]~83_combout\,
	combout => \carry[52]~84_combout\);

-- Location: LCCOMB_X77_Y61_N6
\carry[52]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[52]~86_combout\ = (\G_array[3][51]~212_combout\) # ((\carry[52]~84_combout\) # ((\G_array~151_combout\ & \carry[52]~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~151_combout\,
	datab => \carry[52]~85_combout\,
	datac => \G_array[3][51]~212_combout\,
	datad => \carry[52]~84_combout\,
	combout => \carry[52]~86_combout\);

-- Location: LCCOMB_X77_Y61_N16
\carry[52]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[52]~87_combout\ = (\carry[52]~86_combout\) # ((\carry[20]~27_combout\ & (\P_array[4][35]~46_combout\ & \carry[52]~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry[20]~27_combout\,
	datab => \P_array[4][35]~46_combout\,
	datac => \carry[52]~85_combout\,
	datad => \carry[52]~86_combout\,
	combout => \carry[52]~87_combout\);

-- Location: LCCOMB_X74_Y61_N0
\S~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~75_combout\ = \B[52]~input_o\ $ (\A[52]~input_o\ $ (\carry[52]~87_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[52]~input_o\,
	datac => \A[52]~input_o\,
	datad => \carry[52]~87_combout\,
	combout => \S~75_combout\);

-- Location: LCCOMB_X73_Y62_N4
\G_array~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~213_combout\ = (\B[51]~input_o\ & (!\A[51]~input_o\ & (\A[52]~input_o\ $ (\B[52]~input_o\)))) # (!\B[51]~input_o\ & (\A[51]~input_o\ & (\A[52]~input_o\ $ (\B[52]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[51]~input_o\,
	datab => \A[51]~input_o\,
	datac => \A[52]~input_o\,
	datad => \B[52]~input_o\,
	combout => \G_array~213_combout\);

-- Location: LCCOMB_X73_Y62_N10
\P_array[2][52]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[2][52]~91_combout\ = (\G_array~213_combout\ & (p(50) & (\A[49]~input_o\ $ (\B[49]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[49]~input_o\,
	datab => \B[49]~input_o\,
	datac => \G_array~213_combout\,
	datad => p(50),
	combout => \P_array[2][52]~91_combout\);

-- Location: LCCOMB_X74_Y60_N6
\carry[57]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[57]~88_combout\ = (\P_array[2][52]~91_combout\ & (\P_array[2][48]~71_combout\ & (\P_array[2][44]~64_combout\ & \P_array[2][40]~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[2][52]~91_combout\,
	datab => \P_array[2][48]~71_combout\,
	datac => \P_array[2][44]~64_combout\,
	datad => \P_array[2][40]~57_combout\,
	combout => \carry[57]~88_combout\);

-- Location: LCCOMB_X80_Y60_N18
\S~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~77_combout\ = (\G_array~155_combout\) # ((\G_array[3][36]~154_combout\) # ((\P_array[4][36]~49_combout\ & \carry[21]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~155_combout\,
	datab => \P_array[4][36]~49_combout\,
	datac => \G_array[3][36]~154_combout\,
	datad => \carry[21]~30_combout\,
	combout => \S~77_combout\);

-- Location: IOIBUF_X79_Y73_N8
\A[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(53),
	o => \A[53]~input_o\);

-- Location: IOIBUF_X74_Y73_N22
\B[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(53),
	o => \B[53]~input_o\);

-- Location: LCCOMB_X74_Y61_N10
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

-- Location: LCCOMB_X73_Y62_N14
\G_array[1][52]~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][52]~214_combout\ = (\A[52]~input_o\ & ((\B[52]~input_o\) # ((\B[51]~input_o\ & \A[51]~input_o\)))) # (!\A[52]~input_o\ & (\B[51]~input_o\ & (\A[51]~input_o\ & \B[52]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[51]~input_o\,
	datab => \A[51]~input_o\,
	datac => \A[52]~input_o\,
	datad => \B[52]~input_o\,
	combout => \G_array[1][52]~214_combout\);

-- Location: LCCOMB_X74_Y60_N8
\G_array[3][52]~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][52]~215_combout\ = (\G_array[1][52]~214_combout\) # ((\G_array~213_combout\ & \G_array[1][50]~207_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G_array~213_combout\,
	datac => \G_array[1][52]~214_combout\,
	datad => \G_array[1][50]~207_combout\,
	combout => \G_array[3][52]~215_combout\);

-- Location: LCCOMB_X74_Y60_N26
\G_array[3][52]~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][52]~216_combout\ = (\G_array[3][52]~215_combout\) # ((!\G_array[3][48]~202_combout\ & \P_array[2][52]~91_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[3][48]~202_combout\,
	datac => \G_array[3][52]~215_combout\,
	datad => \P_array[2][52]~91_combout\,
	combout => \G_array[3][52]~216_combout\);

-- Location: LCCOMB_X74_Y60_N28
\S~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~76_combout\ = (\G_array[3][52]~216_combout\) # ((\P_array[2][52]~91_combout\ & (\P_array[2][48]~71_combout\ & \G_array[3][44]~187_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[2][52]~91_combout\,
	datab => \P_array[2][48]~71_combout\,
	datac => \G_array[3][52]~216_combout\,
	datad => \G_array[3][44]~187_combout\,
	combout => \S~76_combout\);

-- Location: LCCOMB_X74_Y60_N22
\S~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~78_combout\ = p(53) $ (((\S~76_combout\) # ((\carry[57]~88_combout\ & \S~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry[57]~88_combout\,
	datab => \S~77_combout\,
	datac => p(53),
	datad => \S~76_combout\,
	combout => \S~78_combout\);

-- Location: LCCOMB_X73_Y62_N28
\P_array[2][53]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[2][53]~92_combout\ = (\G_array~213_combout\ & (p(53) & (\A[50]~input_o\ $ (\B[50]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[50]~input_o\,
	datab => \G_array~213_combout\,
	datac => \B[50]~input_o\,
	datad => p(53),
	combout => \P_array[2][53]~92_combout\);

-- Location: LCCOMB_X73_Y62_N0
\G_array~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~218_combout\ = (p(53) & (\G_array[1][51]~210_combout\ & (\B[52]~input_o\ $ (\A[52]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(53),
	datab => \B[52]~input_o\,
	datac => \A[52]~input_o\,
	datad => \G_array[1][51]~210_combout\,
	combout => \G_array~218_combout\);

-- Location: LCCOMB_X74_Y61_N28
\G_array[1][53]~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][53]~217_combout\ = (\A[53]~input_o\ & ((\B[53]~input_o\) # ((\A[52]~input_o\ & \B[52]~input_o\)))) # (!\A[53]~input_o\ & (\A[52]~input_o\ & (\B[52]~input_o\ & \B[53]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[52]~input_o\,
	datab => \B[52]~input_o\,
	datac => \A[53]~input_o\,
	datad => \B[53]~input_o\,
	combout => \G_array[1][53]~217_combout\);

-- Location: LCCOMB_X73_Y61_N2
\G_array[3][53]~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][53]~219_combout\ = (\G_array~218_combout\) # ((\G_array[1][53]~217_combout\) # ((\P_array[2][53]~92_combout\ & !\G_array[3][49]~205_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[2][53]~92_combout\,
	datab => \G_array~218_combout\,
	datac => \G_array[3][49]~205_combout\,
	datad => \G_array[1][53]~217_combout\,
	combout => \G_array[3][53]~219_combout\);

-- Location: LCCOMB_X73_Y61_N4
\carry[54]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[54]~89_combout\ = (\P_array[2][53]~92_combout\ & (\P_array[2][49]~72_combout\ & \G_array[3][45]~190_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[2][53]~92_combout\,
	datab => \P_array[2][49]~72_combout\,
	datac => \G_array[3][45]~190_combout\,
	combout => \carry[54]~89_combout\);

-- Location: LCCOMB_X73_Y59_N18
\carry[58]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[58]~90_combout\ = (\P_array[2][41]~59_combout\ & (\P_array[2][53]~92_combout\ & (\P_array[2][49]~72_combout\ & \P_array[2][45]~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[2][41]~59_combout\,
	datab => \P_array[2][53]~92_combout\,
	datac => \P_array[2][49]~72_combout\,
	datad => \P_array[2][45]~66_combout\,
	combout => \carry[58]~90_combout\);

-- Location: LCCOMB_X79_Y57_N20
\carry[54]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[54]~91_combout\ = (\carry[54]~89_combout\) # ((\carry[58]~90_combout\ & ((\G_array[3][37]~158_combout\) # (\G_array~160_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry[54]~89_combout\,
	datab => \G_array[3][37]~158_combout\,
	datac => \carry[58]~90_combout\,
	datad => \G_array~160_combout\,
	combout => \carry[54]~91_combout\);

-- Location: LCCOMB_X79_Y57_N22
\carry[54]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[54]~92_combout\ = (\carry[54]~91_combout\) # ((\carry[22]~32_combout\ & (\P_array[4][37]~52_combout\ & \carry[58]~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry[22]~32_combout\,
	datab => \carry[54]~91_combout\,
	datac => \P_array[4][37]~52_combout\,
	datad => \carry[58]~90_combout\,
	combout => \carry[54]~92_combout\);

-- Location: IOIBUF_X79_Y73_N1
\A[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(54),
	o => \A[54]~input_o\);

-- Location: IOIBUF_X74_Y73_N15
\B[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(54),
	o => \B[54]~input_o\);

-- Location: LCCOMB_X74_Y61_N22
\S~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~79_combout\ = \A[54]~input_o\ $ (\B[54]~input_o\ $ (((\G_array[3][53]~219_combout\) # (\carry[54]~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[3][53]~219_combout\,
	datab => \carry[54]~92_combout\,
	datac => \A[54]~input_o\,
	datad => \B[54]~input_o\,
	combout => \S~79_combout\);

-- Location: LCCOMB_X74_Y61_N12
\P_array[2][54]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[2][54]~75_combout\ = (p(53) & (\G_array~213_combout\ & (\A[54]~input_o\ $ (\B[54]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(53),
	datab => \G_array~213_combout\,
	datac => \A[54]~input_o\,
	datad => \B[54]~input_o\,
	combout => \P_array[2][54]~75_combout\);

-- Location: LCCOMB_X74_Y61_N18
\G_array~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~221_combout\ = (\B[54]~input_o\ & (!\A[54]~input_o\ & (\A[53]~input_o\ $ (\B[53]~input_o\)))) # (!\B[54]~input_o\ & (\A[54]~input_o\ & (\A[53]~input_o\ $ (\B[53]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[54]~input_o\,
	datab => \A[53]~input_o\,
	datac => \A[54]~input_o\,
	datad => \B[53]~input_o\,
	combout => \G_array~221_combout\);

-- Location: LCCOMB_X70_Y64_N16
\G_array~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~222_combout\ = (\G_array[1][52]~214_combout\ & \G_array~221_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[1][52]~214_combout\,
	datad => \G_array~221_combout\,
	combout => \G_array~222_combout\);

-- Location: LCCOMB_X74_Y61_N16
\G_array[1][54]~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][54]~220_combout\ = (\B[54]~input_o\ & ((\A[54]~input_o\) # ((\A[53]~input_o\ & \B[53]~input_o\)))) # (!\B[54]~input_o\ & (\A[53]~input_o\ & (\A[54]~input_o\ & \B[53]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[54]~input_o\,
	datab => \A[53]~input_o\,
	datac => \A[54]~input_o\,
	datad => \B[53]~input_o\,
	combout => \G_array[1][54]~220_combout\);

-- Location: LCCOMB_X73_Y60_N28
\G_array[3][54]~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][54]~223_combout\ = (\G_array~222_combout\) # ((\G_array[1][54]~220_combout\) # ((\P_array[2][54]~75_combout\ & !\G_array[3][50]~208_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[2][54]~75_combout\,
	datab => \G_array~222_combout\,
	datac => \G_array[3][50]~208_combout\,
	datad => \G_array[1][54]~220_combout\,
	combout => \G_array[3][54]~223_combout\);

-- Location: LCCOMB_X73_Y60_N6
\carry[55]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[55]~93_combout\ = (\G_array[3][54]~223_combout\) # ((\P_array[2][54]~75_combout\ & (\G_array[3][46]~193_combout\ & \P_array[2][50]~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[2][54]~75_combout\,
	datab => \G_array[3][46]~193_combout\,
	datac => \P_array[2][50]~73_combout\,
	datad => \G_array[3][54]~223_combout\,
	combout => \carry[55]~93_combout\);

-- Location: IOIBUF_X67_Y73_N22
\A[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(55),
	o => \A[55]~input_o\);

-- Location: IOIBUF_X49_Y73_N15
\B[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(55),
	o => \B[55]~input_o\);

-- Location: LCCOMB_X75_Y60_N14
\carry[55]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[55]~95_combout\ = (\P_array[2][46]~68_combout\ & (\P_array[2][50]~73_combout\ & (\P_array[2][42]~61_combout\ & \P_array[2][54]~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[2][46]~68_combout\,
	datab => \P_array[2][50]~73_combout\,
	datac => \P_array[2][42]~61_combout\,
	datad => \P_array[2][54]~75_combout\,
	combout => \carry[55]~95_combout\);

-- Location: LCCOMB_X75_Y60_N20
\carry[55]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[55]~94_combout\ = (\G_array[3][30]~127_combout\ & (\P_array[2][54]~75_combout\ & (\P_array[2][34]~43_combout\ & \carry[51]~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[3][30]~127_combout\,
	datab => \P_array[2][54]~75_combout\,
	datac => \P_array[2][34]~43_combout\,
	datad => \carry[51]~78_combout\,
	combout => \carry[55]~94_combout\);

-- Location: LCCOMB_X77_Y60_N0
\carry[55]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[55]~96_combout\ = (\carry[55]~94_combout\) # ((\carry[55]~95_combout\ & \G_array[3][38]~164_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \carry[55]~95_combout\,
	datac => \carry[55]~94_combout\,
	datad => \G_array[3][38]~164_combout\,
	combout => \carry[55]~96_combout\);

-- Location: LCCOMB_X77_Y60_N2
\carry[55]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[55]~97_combout\ = (\carry[55]~96_combout\) # ((\P_array[4][38]~54_combout\ & (\carry[23]~34_combout\ & \carry[55]~95_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[4][38]~54_combout\,
	datab => \carry[23]~34_combout\,
	datac => \carry[55]~95_combout\,
	datad => \carry[55]~96_combout\,
	combout => \carry[55]~97_combout\);

-- Location: LCCOMB_X74_Y61_N6
\S~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~80_combout\ = \A[55]~input_o\ $ (\B[55]~input_o\ $ (((\carry[55]~93_combout\) # (\carry[55]~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry[55]~93_combout\,
	datab => \A[55]~input_o\,
	datac => \B[55]~input_o\,
	datad => \carry[55]~97_combout\,
	combout => \S~80_combout\);

-- Location: IOIBUF_X60_Y73_N8
\A[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(56),
	o => \A[56]~input_o\);

-- Location: IOIBUF_X49_Y73_N22
\B[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(56),
	o => \B[56]~input_o\);

-- Location: LCCOMB_X66_Y64_N16
\p[56]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(56) = \A[56]~input_o\ $ (\B[56]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[56]~input_o\,
	datad => \B[56]~input_o\,
	combout => p(56));

-- Location: LCCOMB_X74_Y61_N24
\G_array~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~224_combout\ = (\B[55]~input_o\ & (!\A[55]~input_o\ & (\A[54]~input_o\ $ (\B[54]~input_o\)))) # (!\B[55]~input_o\ & (\A[55]~input_o\ & (\A[54]~input_o\ $ (\B[54]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[55]~input_o\,
	datab => \A[55]~input_o\,
	datac => \A[54]~input_o\,
	datad => \B[54]~input_o\,
	combout => \G_array~224_combout\);

-- Location: LCCOMB_X74_Y61_N2
\P_array[2][55]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[2][55]~76_combout\ = (\G_array~224_combout\ & (p(53) & (\B[52]~input_o\ $ (\A[52]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[52]~input_o\,
	datab => \G_array~224_combout\,
	datac => \A[52]~input_o\,
	datad => p(53),
	combout => \P_array[2][55]~76_combout\);

-- Location: LCCOMB_X79_Y61_N20
\carry[56]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[56]~98_combout\ = (\P_array[2][55]~76_combout\ & (\P_array[2][35]~45_combout\ & (\carry[52]~85_combout\ & \G_array[3][31]~134_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[2][55]~76_combout\,
	datab => \P_array[2][35]~45_combout\,
	datac => \carry[52]~85_combout\,
	datad => \G_array[3][31]~134_combout\,
	combout => \carry[56]~98_combout\);

-- Location: LCCOMB_X77_Y61_N14
\carry[56]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[56]~100_combout\ = (\P_array[2][43]~90_combout\ & (\P_array[2][51]~74_combout\ & (\P_array[2][55]~76_combout\ & \P_array[2][47]~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[2][43]~90_combout\,
	datab => \P_array[2][51]~74_combout\,
	datac => \P_array[2][55]~76_combout\,
	datad => \P_array[2][47]~70_combout\,
	combout => \carry[56]~100_combout\);

-- Location: LCCOMB_X79_Y61_N14
\S~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~81_combout\ = (\carry[56]~100_combout\ & ((\G_array[3][39]~169_combout\) # ((\carry[24]~37_combout\ & \P_array[4][39]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[3][39]~169_combout\,
	datab => \carry[24]~37_combout\,
	datac => \carry[56]~100_combout\,
	datad => \P_array[4][39]~56_combout\,
	combout => \S~81_combout\);

-- Location: LCCOMB_X74_Y61_N20
\G_array[1][55]~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][55]~225_combout\ = (\B[55]~input_o\ & ((\A[55]~input_o\) # ((\A[54]~input_o\ & \B[54]~input_o\)))) # (!\B[55]~input_o\ & (\A[55]~input_o\ & (\A[54]~input_o\ & \B[54]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[55]~input_o\,
	datab => \A[55]~input_o\,
	datac => \A[54]~input_o\,
	datad => \B[54]~input_o\,
	combout => \G_array[1][55]~225_combout\);

-- Location: LCCOMB_X74_Y61_N30
\G_array~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~226_combout\ = (\G_array[1][53]~217_combout\ & \G_array~224_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G_array[1][53]~217_combout\,
	datad => \G_array~224_combout\,
	combout => \G_array~226_combout\);

-- Location: LCCOMB_X77_Y61_N26
\G_array[3][55]~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[3][55]~227_combout\ = (\G_array[1][55]~225_combout\) # ((\G_array~226_combout\) # ((!\G_array[3][51]~211_combout\ & \P_array[2][55]~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[1][55]~225_combout\,
	datab => \G_array[3][51]~211_combout\,
	datac => \P_array[2][55]~76_combout\,
	datad => \G_array~226_combout\,
	combout => \G_array[3][55]~227_combout\);

-- Location: LCCOMB_X77_Y61_N12
\carry[56]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[56]~99_combout\ = (\G_array[3][55]~227_combout\) # ((\P_array[2][55]~76_combout\ & (\P_array[2][51]~74_combout\ & \G_array[3][47]~199_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[3][55]~227_combout\,
	datab => \P_array[2][55]~76_combout\,
	datac => \P_array[2][51]~74_combout\,
	datad => \G_array[3][47]~199_combout\,
	combout => \carry[56]~99_combout\);

-- Location: LCCOMB_X77_Y61_N0
\S~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~82_combout\ = p(56) $ (((\carry[56]~98_combout\) # ((\S~81_combout\) # (\carry[56]~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(56),
	datab => \carry[56]~98_combout\,
	datac => \S~81_combout\,
	datad => \carry[56]~99_combout\,
	combout => \S~82_combout\);

-- Location: IOIBUF_X38_Y73_N1
\B[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(57),
	o => \B[57]~input_o\);

-- Location: LCCOMB_X70_Y64_N6
\P_array[2][56]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[2][56]~77_combout\ = (p(56) & (\G_array~221_combout\ & (\A[55]~input_o\ $ (\B[55]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[55]~input_o\,
	datab => p(56),
	datac => \B[55]~input_o\,
	datad => \G_array~221_combout\,
	combout => \P_array[2][56]~77_combout\);

-- Location: LCCOMB_X70_Y64_N20
\G_array~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~229_combout\ = (p(56) & (\G_array[1][54]~220_combout\ & (\A[55]~input_o\ $ (\B[55]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[55]~input_o\,
	datab => p(56),
	datac => \B[55]~input_o\,
	datad => \G_array[1][54]~220_combout\,
	combout => \G_array~229_combout\);

-- Location: LCCOMB_X70_Y64_N26
\G_array[1][56]~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][56]~228_combout\ = (\A[56]~input_o\ & ((\B[56]~input_o\) # ((\A[55]~input_o\ & \B[55]~input_o\)))) # (!\A[56]~input_o\ & (\A[55]~input_o\ & (\B[55]~input_o\ & \B[56]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[55]~input_o\,
	datab => \B[55]~input_o\,
	datac => \A[56]~input_o\,
	datad => \B[56]~input_o\,
	combout => \G_array[1][56]~228_combout\);

-- Location: LCCOMB_X70_Y64_N8
\carry[57]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[57]~101_combout\ = (\G_array~229_combout\) # ((\G_array[1][56]~228_combout\) # ((\P_array[2][56]~77_combout\ & \G_array[1][52]~214_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[2][56]~77_combout\,
	datab => \G_array~229_combout\,
	datac => \G_array[1][56]~228_combout\,
	datad => \G_array[1][52]~214_combout\,
	combout => \carry[57]~101_combout\);

-- Location: LCCOMB_X74_Y60_N16
\carry[57]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[57]~102_combout\ = (\carry[57]~101_combout\) # ((\G_array~213_combout\ & (\P_array[2][56]~77_combout\ & \G_array[1][50]~207_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry[57]~101_combout\,
	datab => \G_array~213_combout\,
	datac => \P_array[2][56]~77_combout\,
	datad => \G_array[1][50]~207_combout\,
	combout => \carry[57]~102_combout\);

-- Location: LCCOMB_X74_Y60_N18
\carry[57]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[57]~103_combout\ = (\carry[57]~102_combout\) # ((\P_array[2][52]~91_combout\ & (\G_array[3][48]~203_combout\ & \P_array[2][56]~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[2][52]~91_combout\,
	datab => \G_array[3][48]~203_combout\,
	datac => \P_array[2][56]~77_combout\,
	datad => \carry[57]~102_combout\,
	combout => \carry[57]~103_combout\);

-- Location: IOIBUF_X52_Y73_N22
\A[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(57),
	o => \A[57]~input_o\);

-- Location: LCCOMB_X74_Y60_N4
\carry[57]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[57]~104_combout\ = (\P_array[2][48]~71_combout\ & (\P_array[2][56]~77_combout\ & \P_array[2][52]~91_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P_array[2][48]~71_combout\,
	datac => \P_array[2][56]~77_combout\,
	datad => \P_array[2][52]~91_combout\,
	combout => \carry[57]~104_combout\);

-- Location: LCCOMB_X74_Y60_N30
\carry[57]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[57]~105_combout\ = (\P_array[2][44]~64_combout\ & (\P_array[4][40]~58_combout\ & (\carry[57]~104_combout\ & \carry[25]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[2][44]~64_combout\,
	datab => \P_array[4][40]~58_combout\,
	datac => \carry[57]~104_combout\,
	datad => \carry[25]~39_combout\,
	combout => \carry[57]~105_combout\);

-- Location: LCCOMB_X74_Y60_N0
\carry[57]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[57]~106_combout\ = (\G_array~173_combout\ & (\P_array[2][56]~77_combout\ & \carry[57]~88_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G_array~173_combout\,
	datac => \P_array[2][56]~77_combout\,
	datad => \carry[57]~88_combout\,
	combout => \carry[57]~106_combout\);

-- Location: LCCOMB_X74_Y60_N10
\carry[57]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[57]~107_combout\ = (\carry[57]~105_combout\) # ((\carry[57]~106_combout\) # ((\carry[57]~104_combout\ & \carry[49]~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry[57]~105_combout\,
	datab => \carry[57]~106_combout\,
	datac => \carry[57]~104_combout\,
	datad => \carry[49]~73_combout\,
	combout => \carry[57]~107_combout\);

-- Location: LCCOMB_X74_Y60_N12
\S~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~83_combout\ = \B[57]~input_o\ $ (\A[57]~input_o\ $ (((\carry[57]~103_combout\) # (\carry[57]~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[57]~input_o\,
	datab => \carry[57]~103_combout\,
	datac => \A[57]~input_o\,
	datad => \carry[57]~107_combout\,
	combout => \S~83_combout\);

-- Location: IOIBUF_X35_Y73_N15
\B[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(58),
	o => \B[58]~input_o\);

-- Location: LCCOMB_X66_Y64_N26
\P_array[2][59]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[2][59]~78_combout\ = (\A[56]~input_o\ & (!\B[56]~input_o\ & (\B[57]~input_o\ $ (\A[57]~input_o\)))) # (!\A[56]~input_o\ & (\B[56]~input_o\ & (\B[57]~input_o\ $ (\A[57]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[56]~input_o\,
	datab => \B[57]~input_o\,
	datac => \A[57]~input_o\,
	datad => \B[56]~input_o\,
	combout => \P_array[2][59]~78_combout\);

-- Location: LCCOMB_X73_Y61_N8
\carry[58]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[58]~109_combout\ = (\P_array[2][59]~78_combout\ & (\P_array[2][49]~72_combout\ & (\P_array[2][53]~92_combout\ & \G_array~224_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[2][59]~78_combout\,
	datab => \P_array[2][49]~72_combout\,
	datac => \P_array[2][53]~92_combout\,
	datad => \G_array~224_combout\,
	combout => \carry[58]~109_combout\);

-- Location: LCCOMB_X73_Y59_N20
\carry[58]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[58]~110_combout\ = (\P_array[2][45]~66_combout\ & (\P_array[4][41]~60_combout\ & (\carry[58]~109_combout\ & \carry[26]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[2][45]~66_combout\,
	datab => \P_array[4][41]~60_combout\,
	datac => \carry[58]~109_combout\,
	datad => \carry[26]~41_combout\,
	combout => \carry[58]~110_combout\);

-- Location: LCCOMB_X73_Y61_N18
\carry[58]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[58]~111_combout\ = (\G_array~177_combout\ & (\P_array[2][59]~78_combout\ & (\carry[58]~90_combout\ & \G_array~224_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~177_combout\,
	datab => \P_array[2][59]~78_combout\,
	datac => \carry[58]~90_combout\,
	datad => \G_array~224_combout\,
	combout => \carry[58]~111_combout\);

-- Location: LCCOMB_X73_Y59_N30
\carry[58]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[58]~112_combout\ = (\carry[58]~110_combout\) # ((\carry[58]~111_combout\) # ((\carry[50]~76_combout\ & \carry[58]~109_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry[50]~76_combout\,
	datab => \carry[58]~110_combout\,
	datac => \carry[58]~109_combout\,
	datad => \carry[58]~111_combout\,
	combout => \carry[58]~112_combout\);

-- Location: IOIBUF_X54_Y73_N8
\A[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(58),
	o => \A[58]~input_o\);

-- Location: LCCOMB_X73_Y61_N6
\carry[58]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[58]~108_combout\ = (\G_array~224_combout\ & ((\G_array~218_combout\) # (\G_array[1][53]~217_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array~218_combout\,
	datab => \G_array[1][53]~217_combout\,
	datad => \G_array~224_combout\,
	combout => \carry[58]~108_combout\);

-- Location: LCCOMB_X66_Y64_N28
\G_array[1][57]~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][57]~230_combout\ = (\B[57]~input_o\ & ((\A[57]~input_o\) # ((\A[56]~input_o\ & \B[56]~input_o\)))) # (!\B[57]~input_o\ & (\A[56]~input_o\ & (\A[57]~input_o\ & \B[56]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[56]~input_o\,
	datab => \B[57]~input_o\,
	datac => \A[57]~input_o\,
	datad => \B[56]~input_o\,
	combout => \G_array[1][57]~230_combout\);

-- Location: LCCOMB_X73_Y61_N28
\carry[58]~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[58]~153_combout\ = (\G_array[1][55]~225_combout\) # ((\G_array[3][49]~206_combout\ & (\P_array[2][53]~92_combout\ & \G_array~224_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[1][55]~225_combout\,
	datab => \G_array[3][49]~206_combout\,
	datac => \P_array[2][53]~92_combout\,
	datad => \G_array~224_combout\,
	combout => \carry[58]~153_combout\);

-- Location: LCCOMB_X73_Y61_N22
\carry[58]~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[58]~154_combout\ = (\G_array[1][57]~230_combout\) # ((\P_array[2][59]~78_combout\ & ((\carry[58]~108_combout\) # (\carry[58]~153_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry[58]~108_combout\,
	datab => \P_array[2][59]~78_combout\,
	datac => \G_array[1][57]~230_combout\,
	datad => \carry[58]~153_combout\,
	combout => \carry[58]~154_combout\);

-- Location: LCCOMB_X66_Y64_N22
\S~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~84_combout\ = \B[58]~input_o\ $ (\A[58]~input_o\ $ (((\carry[58]~112_combout\) # (\carry[58]~154_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[58]~input_o\,
	datab => \carry[58]~112_combout\,
	datac => \A[58]~input_o\,
	datad => \carry[58]~154_combout\,
	combout => \S~84_combout\);

-- Location: IOIBUF_X62_Y73_N22
\A[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(59),
	o => \A[59]~input_o\);

-- Location: IOIBUF_X58_Y73_N22
\B[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(59),
	o => \B[59]~input_o\);

-- Location: LCCOMB_X66_Y64_N12
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

-- Location: LCCOMB_X66_Y64_N24
\P_array[1][58]\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[1][58]~combout\ = (\A[57]~input_o\ & (!\B[57]~input_o\ & (\A[58]~input_o\ $ (\B[58]~input_o\)))) # (!\A[57]~input_o\ & (\B[57]~input_o\ & (\A[58]~input_o\ $ (\B[58]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[57]~input_o\,
	datab => \B[57]~input_o\,
	datac => \A[58]~input_o\,
	datad => \B[58]~input_o\,
	combout => \P_array[1][58]~combout\);

-- Location: LCCOMB_X70_Y64_N10
\P_array[2][58]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[2][58]~79_combout\ = (p(56) & (\P_array[1][58]~combout\ & (\A[55]~input_o\ $ (\B[55]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[55]~input_o\,
	datab => p(56),
	datac => \B[55]~input_o\,
	datad => \P_array[1][58]~combout\,
	combout => \P_array[2][58]~79_combout\);

-- Location: LCCOMB_X75_Y60_N8
\carry[59]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[59]~113_combout\ = (\carry[51]~80_combout\ & (\P_array[2][54]~75_combout\ & (\P_array[2][58]~79_combout\ & \G_array[3][42]~180_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry[51]~80_combout\,
	datab => \P_array[2][54]~75_combout\,
	datac => \P_array[2][58]~79_combout\,
	datad => \G_array[3][42]~180_combout\,
	combout => \carry[59]~113_combout\);

-- Location: LCCOMB_X70_Y64_N4
\carry[59]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[59]~114_combout\ = (\P_array[2][58]~79_combout\ & ((\G_array[1][54]~220_combout\) # ((\P_array[1][58]~combout\ & \G_array[1][56]~228_combout\)))) # (!\P_array[2][58]~79_combout\ & (\P_array[1][58]~combout\ & (\G_array[1][56]~228_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[2][58]~79_combout\,
	datab => \P_array[1][58]~combout\,
	datac => \G_array[1][56]~228_combout\,
	datad => \G_array[1][54]~220_combout\,
	combout => \carry[59]~114_combout\);

-- Location: LCCOMB_X66_Y64_N2
\G_array[1][58]~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][58]~231_combout\ = (\A[58]~input_o\ & ((\B[58]~input_o\) # ((\A[57]~input_o\ & \B[57]~input_o\)))) # (!\A[58]~input_o\ & (\A[57]~input_o\ & (\B[57]~input_o\ & \B[58]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[57]~input_o\,
	datab => \B[57]~input_o\,
	datac => \A[58]~input_o\,
	datad => \B[58]~input_o\,
	combout => \G_array[1][58]~231_combout\);

-- Location: LCCOMB_X70_Y64_N22
\carry[59]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[59]~115_combout\ = (\carry[59]~114_combout\) # ((\G_array[1][58]~231_combout\) # ((\P_array[2][58]~79_combout\ & \G_array~222_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[2][58]~79_combout\,
	datab => \carry[59]~114_combout\,
	datac => \G_array[1][58]~231_combout\,
	datad => \G_array~222_combout\,
	combout => \carry[59]~115_combout\);

-- Location: LCCOMB_X75_Y60_N28
\carry[59]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[59]~118_combout\ = (\P_array[2][46]~68_combout\ & (\P_array[2][50]~73_combout\ & (\P_array[2][58]~79_combout\ & \P_array[2][54]~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[2][46]~68_combout\,
	datab => \P_array[2][50]~73_combout\,
	datac => \P_array[2][58]~79_combout\,
	datad => \P_array[2][54]~75_combout\,
	combout => \carry[59]~118_combout\);

-- Location: LCCOMB_X74_Y61_N8
\carry[59]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[59]~116_combout\ = (\G_array~213_combout\ & (\P_array[2][58]~79_combout\ & \G_array~221_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G_array~213_combout\,
	datac => \P_array[2][58]~79_combout\,
	datad => \G_array~221_combout\,
	combout => \carry[59]~116_combout\);

-- Location: LCCOMB_X75_Y60_N18
\carry[59]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[59]~117_combout\ = (\carry[59]~116_combout\ & ((\G_array[3][50]~209_combout\) # ((\G_array[3][34]~145_combout\ & \carry[51]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[3][50]~209_combout\,
	datab => \G_array[3][34]~145_combout\,
	datac => \carry[59]~116_combout\,
	datad => \carry[51]~78_combout\,
	combout => \carry[59]~117_combout\);

-- Location: LCCOMB_X75_Y60_N6
\carry[59]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[59]~119_combout\ = (\carry[59]~117_combout\) # ((\carry[27]~43_combout\ & (\carry[59]~118_combout\ & \P_array[4][42]~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry[27]~43_combout\,
	datab => \carry[59]~118_combout\,
	datac => \P_array[4][42]~62_combout\,
	datad => \carry[59]~117_combout\,
	combout => \carry[59]~119_combout\);

-- Location: LCCOMB_X70_Y64_N24
\S~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~85_combout\ = p(59) $ (((\carry[59]~113_combout\) # ((\carry[59]~115_combout\) # (\carry[59]~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p(59),
	datab => \carry[59]~113_combout\,
	datac => \carry[59]~115_combout\,
	datad => \carry[59]~119_combout\,
	combout => \S~85_combout\);

-- Location: LCCOMB_X66_Y64_N10
\G_array[1][59]~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][59]~232_combout\ = (\A[59]~input_o\ & ((\B[59]~input_o\) # ((\A[58]~input_o\ & \B[58]~input_o\)))) # (!\A[59]~input_o\ & (\B[59]~input_o\ & (\A[58]~input_o\ & \B[58]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[59]~input_o\,
	datab => \B[59]~input_o\,
	datac => \A[58]~input_o\,
	datad => \B[58]~input_o\,
	combout => \G_array[1][59]~232_combout\);

-- Location: LCCOMB_X66_Y64_N30
\P_array[1][59]\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[1][59]~combout\ = (\A[59]~input_o\ & (!\B[59]~input_o\ & (\A[58]~input_o\ $ (\B[58]~input_o\)))) # (!\A[59]~input_o\ & (\B[59]~input_o\ & (\A[58]~input_o\ $ (\B[58]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[59]~input_o\,
	datab => \B[59]~input_o\,
	datac => \A[58]~input_o\,
	datad => \B[58]~input_o\,
	combout => \P_array[1][59]~combout\);

-- Location: LCCOMB_X73_Y61_N20
\carry[60]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[60]~121_combout\ = (\P_array[1][59]~combout\ & ((\G_array[1][57]~230_combout\) # ((\P_array[2][59]~78_combout\ & \G_array[1][55]~225_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[1][57]~230_combout\,
	datab => \P_array[2][59]~78_combout\,
	datac => \G_array[1][55]~225_combout\,
	datad => \P_array[1][59]~combout\,
	combout => \carry[60]~121_combout\);

-- Location: LCCOMB_X66_Y64_N8
\P_array[2][59]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[2][59]~80_combout\ = (\P_array[1][59]~combout\ & (p(56) & (\B[57]~input_o\ $ (\A[57]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[1][59]~combout\,
	datab => \B[57]~input_o\,
	datac => \A[57]~input_o\,
	datad => p(56),
	combout => \P_array[2][59]~80_combout\);

-- Location: LCCOMB_X73_Y61_N30
\carry[60]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[60]~122_combout\ = (\G_array[1][59]~232_combout\) # ((\carry[60]~121_combout\) # ((\G_array~226_combout\ & \P_array[2][59]~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[1][59]~232_combout\,
	datab => \carry[60]~121_combout\,
	datac => \G_array~226_combout\,
	datad => \P_array[2][59]~80_combout\,
	combout => \carry[60]~122_combout\);

-- Location: IOIBUF_X45_Y73_N1
\B[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(60),
	o => \B[60]~input_o\);

-- Location: IOIBUF_X60_Y73_N1
\A[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(60),
	o => \A[60]~input_o\);

-- Location: LCCOMB_X70_Y65_N24
\p[60]\ : cycloneive_lcell_comb
-- Equation(s):
-- p(60) = \B[60]~input_o\ $ (\A[60]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[60]~input_o\,
	datad => \A[60]~input_o\,
	combout => p(60));

-- Location: LCCOMB_X73_Y65_N18
\carry[60]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[60]~123_combout\ = (\P_array[1][59]~combout\ & (\P_array[2][55]~76_combout\ & \P_array[2][59]~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[1][59]~combout\,
	datac => \P_array[2][55]~76_combout\,
	datad => \P_array[2][59]~78_combout\,
	combout => \carry[60]~123_combout\);

-- Location: LCCOMB_X77_Y61_N20
\carry[60]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[60]~124_combout\ = (\carry[60]~123_combout\ & ((\G_array[3][51]~212_combout\) # ((\G_array[3][35]~150_combout\ & \carry[52]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[3][35]~150_combout\,
	datab => \carry[52]~85_combout\,
	datac => \G_array[3][51]~212_combout\,
	datad => \carry[60]~123_combout\,
	combout => \carry[60]~124_combout\);

-- Location: LCCOMB_X77_Y61_N30
\carry[60]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[60]~125_combout\ = (\P_array[2][59]~80_combout\ & (\P_array[2][55]~76_combout\ & (\P_array[2][51]~74_combout\ & \P_array[2][47]~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[2][59]~80_combout\,
	datab => \P_array[2][55]~76_combout\,
	datac => \P_array[2][51]~74_combout\,
	datad => \P_array[2][47]~70_combout\,
	combout => \carry[60]~125_combout\);

-- Location: LCCOMB_X81_Y61_N10
\carry[60]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[60]~126_combout\ = (\carry[60]~124_combout\) # ((\P_array[4][43]~63_combout\ & (\carry[60]~125_combout\ & \carry[28]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[4][43]~63_combout\,
	datab => \carry[60]~124_combout\,
	datac => \carry[60]~125_combout\,
	datad => \carry[28]~45_combout\,
	combout => \carry[60]~126_combout\);

-- Location: LCCOMB_X77_Y61_N2
\carry[60]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[60]~120_combout\ = (\P_array[2][59]~80_combout\ & (\G_array[3][43]~184_combout\ & (\P_array[2][55]~76_combout\ & \carry[52]~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[2][59]~80_combout\,
	datab => \G_array[3][43]~184_combout\,
	datac => \P_array[2][55]~76_combout\,
	datad => \carry[52]~83_combout\,
	combout => \carry[60]~120_combout\);

-- Location: LCCOMB_X70_Y65_N2
\S~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~86_combout\ = p(60) $ (((\carry[60]~122_combout\) # ((\carry[60]~126_combout\) # (\carry[60]~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry[60]~122_combout\,
	datab => p(60),
	datac => \carry[60]~126_combout\,
	datad => \carry[60]~120_combout\,
	combout => \S~86_combout\);

-- Location: LCCOMB_X66_Y64_N20
\P_array[1][60]\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[1][60]~combout\ = (\B[60]~input_o\ & (!\A[60]~input_o\ & (\B[59]~input_o\ $ (\A[59]~input_o\)))) # (!\B[60]~input_o\ & (\A[60]~input_o\ & (\B[59]~input_o\ $ (\A[59]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[60]~input_o\,
	datab => \B[59]~input_o\,
	datac => \A[59]~input_o\,
	datad => \A[60]~input_o\,
	combout => \P_array[1][60]~combout\);

-- Location: LCCOMB_X80_Y60_N20
\carry[61]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[61]~132_combout\ = (\carry[57]~104_combout\ & (\P_array[4][44]~65_combout\ & \carry[29]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry[57]~104_combout\,
	datab => \P_array[4][44]~65_combout\,
	datad => \carry[29]~48_combout\,
	combout => \carry[61]~132_combout\);

-- Location: LCCOMB_X74_Y60_N14
\carry[61]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[61]~131_combout\ = (\P_array[2][56]~77_combout\ & ((\G_array[3][52]~216_combout\) # ((\carry[57]~88_combout\ & \G_array[3][36]~154_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry[57]~88_combout\,
	datab => \P_array[2][56]~77_combout\,
	datac => \G_array[3][52]~216_combout\,
	datad => \G_array[3][36]~154_combout\,
	combout => \carry[61]~131_combout\);

-- Location: LCCOMB_X70_Y64_N18
\carry[61]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[61]~133_combout\ = (\P_array[1][60]~combout\ & (\P_array[1][58]~combout\ & ((\carry[61]~132_combout\) # (\carry[61]~131_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[1][60]~combout\,
	datab => \carry[61]~132_combout\,
	datac => \carry[61]~131_combout\,
	datad => \P_array[1][58]~combout\,
	combout => \carry[61]~133_combout\);

-- Location: IOIBUF_X38_Y73_N15
\A[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(61),
	o => \A[61]~input_o\);

-- Location: IOIBUF_X33_Y73_N1
\B[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(61),
	o => \B[61]~input_o\);

-- Location: LCCOMB_X70_Y64_N14
\carry[61]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[61]~129_combout\ = (\G_array~229_combout\) # ((\carry[57]~104_combout\ & \G_array[3][44]~187_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G_array~229_combout\,
	datac => \carry[57]~104_combout\,
	datad => \G_array[3][44]~187_combout\,
	combout => \carry[61]~129_combout\);

-- Location: LCCOMB_X66_Y64_N6
\G_array[1][60]~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][60]~233_combout\ = (\B[60]~input_o\ & ((\A[60]~input_o\) # ((\B[59]~input_o\ & \A[59]~input_o\)))) # (!\B[60]~input_o\ & (\B[59]~input_o\ & (\A[59]~input_o\ & \A[60]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[60]~input_o\,
	datab => \B[59]~input_o\,
	datac => \A[59]~input_o\,
	datad => \A[60]~input_o\,
	combout => \G_array[1][60]~233_combout\);

-- Location: LCCOMB_X70_Y64_N2
\carry[61]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[61]~127_combout\ = ((!\G_array[1][58]~231_combout\ & ((!\P_array[1][58]~combout\) # (!\G_array[1][56]~228_combout\)))) # (!\P_array[1][60]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[1][60]~combout\,
	datab => \G_array[1][58]~231_combout\,
	datac => \G_array[1][56]~228_combout\,
	datad => \P_array[1][58]~combout\,
	combout => \carry[61]~127_combout\);

-- Location: LCCOMB_X70_Y64_N28
\carry[61]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[61]~128_combout\ = (!\G_array[1][60]~233_combout\ & \carry[61]~127_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G_array[1][60]~233_combout\,
	datad => \carry[61]~127_combout\,
	combout => \carry[61]~128_combout\);

-- Location: LCCOMB_X70_Y64_N0
\carry[61]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[61]~130_combout\ = ((\P_array[1][60]~combout\ & (\P_array[1][58]~combout\ & \carry[61]~129_combout\))) # (!\carry[61]~128_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[1][60]~combout\,
	datab => \P_array[1][58]~combout\,
	datac => \carry[61]~129_combout\,
	datad => \carry[61]~128_combout\,
	combout => \carry[61]~130_combout\);

-- Location: LCCOMB_X70_Y65_N28
\S~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~87_combout\ = \A[61]~input_o\ $ (\B[61]~input_o\ $ (((\carry[61]~133_combout\) # (\carry[61]~130_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry[61]~133_combout\,
	datab => \A[61]~input_o\,
	datac => \B[61]~input_o\,
	datad => \carry[61]~130_combout\,
	combout => \S~87_combout\);

-- Location: IOIBUF_X62_Y73_N15
\A[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(62),
	o => \A[62]~input_o\);

-- Location: LCCOMB_X70_Y65_N30
\P_array[1][61]\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[1][61]~combout\ = (\A[61]~input_o\ & (!\B[61]~input_o\ & (\B[60]~input_o\ $ (\A[60]~input_o\)))) # (!\A[61]~input_o\ & (\B[61]~input_o\ & (\B[60]~input_o\ $ (\A[60]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[61]~input_o\,
	datab => \B[60]~input_o\,
	datac => \B[61]~input_o\,
	datad => \A[60]~input_o\,
	combout => \P_array[1][61]~combout\);

-- Location: LCCOMB_X73_Y61_N14
\carry[62]~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[62]~140_combout\ = (\P_array[1][61]~combout\ & (\carry[58]~109_combout\ & \P_array[1][59]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[1][61]~combout\,
	datab => \carry[58]~109_combout\,
	datad => \P_array[1][59]~combout\,
	combout => \carry[62]~140_combout\);

-- Location: LCCOMB_X73_Y61_N26
\carry[62]~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[62]~138_combout\ = (\P_array[2][59]~78_combout\ & (\P_array[1][59]~combout\ & (\P_array[1][61]~combout\ & \G_array~224_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[2][59]~78_combout\,
	datab => \P_array[1][59]~combout\,
	datac => \P_array[1][61]~combout\,
	datad => \G_array~224_combout\,
	combout => \carry[62]~138_combout\);

-- Location: LCCOMB_X73_Y61_N12
\carry[62]~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[62]~139_combout\ = (\carry[62]~138_combout\ & ((\G_array[3][53]~219_combout\) # ((\G_array[3][37]~158_combout\ & \carry[58]~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry[62]~138_combout\,
	datab => \G_array[3][37]~158_combout\,
	datac => \carry[58]~90_combout\,
	datad => \G_array[3][53]~219_combout\,
	combout => \carry[62]~139_combout\);

-- Location: LCCOMB_X73_Y61_N24
\carry[62]~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[62]~141_combout\ = (\carry[62]~139_combout\) # ((\carry[30]~50_combout\ & (\carry[62]~140_combout\ & \P_array[4][45]~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry[30]~50_combout\,
	datab => \carry[62]~140_combout\,
	datac => \P_array[4][45]~67_combout\,
	datad => \carry[62]~139_combout\,
	combout => \carry[62]~141_combout\);

-- Location: IOIBUF_X58_Y73_N1
\B[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(62),
	o => \B[62]~input_o\);

-- Location: LCCOMB_X73_Y61_N0
\carry[62]~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[62]~136_combout\ = (\G_array[1][55]~225_combout\ & ((\P_array[2][59]~78_combout\) # ((\carry[58]~109_combout\ & \G_array[3][45]~190_combout\)))) # (!\G_array[1][55]~225_combout\ & (((\carry[58]~109_combout\ & \G_array[3][45]~190_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[1][55]~225_combout\,
	datab => \P_array[2][59]~78_combout\,
	datac => \carry[58]~109_combout\,
	datad => \G_array[3][45]~190_combout\,
	combout => \carry[62]~136_combout\);

-- Location: LCCOMB_X70_Y65_N0
\carry[62]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[62]~134_combout\ = ((!\G_array[1][59]~232_combout\ & ((!\G_array[1][57]~230_combout\) # (!\P_array[1][59]~combout\)))) # (!\P_array[1][61]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[1][59]~combout\,
	datab => \G_array[1][59]~232_combout\,
	datac => \P_array[1][61]~combout\,
	datad => \G_array[1][57]~230_combout\,
	combout => \carry[62]~134_combout\);

-- Location: LCCOMB_X70_Y65_N10
\G_array[1][61]~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][61]~234_combout\ = (\A[61]~input_o\ & ((\B[61]~input_o\) # ((\B[60]~input_o\ & \A[60]~input_o\)))) # (!\A[61]~input_o\ & (\B[60]~input_o\ & (\B[61]~input_o\ & \A[60]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[61]~input_o\,
	datab => \B[60]~input_o\,
	datac => \B[61]~input_o\,
	datad => \A[60]~input_o\,
	combout => \G_array[1][61]~234_combout\);

-- Location: LCCOMB_X70_Y65_N4
\carry[62]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[62]~135_combout\ = (\carry[62]~134_combout\ & !\G_array[1][61]~234_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \carry[62]~134_combout\,
	datad => \G_array[1][61]~234_combout\,
	combout => \carry[62]~135_combout\);

-- Location: LCCOMB_X70_Y65_N6
\carry[62]~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[62]~137_combout\ = ((\carry[62]~136_combout\ & (\P_array[1][61]~combout\ & \P_array[1][59]~combout\))) # (!\carry[62]~135_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry[62]~136_combout\,
	datab => \carry[62]~135_combout\,
	datac => \P_array[1][61]~combout\,
	datad => \P_array[1][59]~combout\,
	combout => \carry[62]~137_combout\);

-- Location: LCCOMB_X70_Y65_N16
\S~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~88_combout\ = \A[62]~input_o\ $ (\B[62]~input_o\ $ (((\carry[62]~141_combout\) # (\carry[62]~137_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[62]~input_o\,
	datab => \carry[62]~141_combout\,
	datac => \B[62]~input_o\,
	datad => \carry[62]~137_combout\,
	combout => \S~88_combout\);

-- Location: IOIBUF_X27_Y73_N15
\A[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(63),
	o => \A[63]~input_o\);

-- Location: IOIBUF_X25_Y73_N22
\B[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(63),
	o => \B[63]~input_o\);

-- Location: LCCOMB_X70_Y65_N12
\P_array[4][62]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[4][62]~81_combout\ = (\B[62]~input_o\ & (!\A[62]~input_o\ & (\A[61]~input_o\ $ (\B[61]~input_o\)))) # (!\B[62]~input_o\ & (\A[62]~input_o\ & (\A[61]~input_o\ $ (\B[61]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[62]~input_o\,
	datab => \A[61]~input_o\,
	datac => \B[61]~input_o\,
	datad => \A[62]~input_o\,
	combout => \P_array[4][62]~81_combout\);

-- Location: LCCOMB_X70_Y64_N30
\carry[63]~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[63]~144_combout\ = ((\P_array[1][60]~combout\ & (\G_array[3][54]~223_combout\ & \P_array[2][58]~79_combout\))) # (!\carry[61]~128_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[1][60]~combout\,
	datab => \carry[61]~128_combout\,
	datac => \G_array[3][54]~223_combout\,
	datad => \P_array[2][58]~79_combout\,
	combout => \carry[63]~144_combout\);

-- Location: LCCOMB_X70_Y64_N12
\P_array[4][62]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[4][62]~82_combout\ = (\P_array[1][60]~combout\ & (\P_array[4][62]~81_combout\ & (\P_array[2][50]~73_combout\ & \carry[59]~116_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[1][60]~combout\,
	datab => \P_array[4][62]~81_combout\,
	datac => \P_array[2][50]~73_combout\,
	datad => \carry[59]~116_combout\,
	combout => \P_array[4][62]~82_combout\);

-- Location: LCCOMB_X77_Y60_N20
\G_array~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~236_combout\ = (\P_array[2][42]~61_combout\ & (\P_array[4][38]~53_combout\ & (\P_array[4][62]~82_combout\ & \P_array[2][46]~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[2][42]~61_combout\,
	datab => \P_array[4][38]~53_combout\,
	datac => \P_array[4][62]~82_combout\,
	datad => \P_array[2][46]~68_combout\,
	combout => \G_array~236_combout\);

-- Location: LCCOMB_X70_Y65_N18
\G_array[1][62]~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array[1][62]~235_combout\ = (\B[62]~input_o\ & ((\A[62]~input_o\) # ((\A[61]~input_o\ & \B[61]~input_o\)))) # (!\B[62]~input_o\ & (\A[61]~input_o\ & (\B[61]~input_o\ & \A[62]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[62]~input_o\,
	datab => \A[61]~input_o\,
	datac => \B[61]~input_o\,
	datad => \A[62]~input_o\,
	combout => \G_array[1][62]~235_combout\);

-- Location: LCCOMB_X80_Y61_N8
\carry[63]~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[63]~142_combout\ = (\G_array[1][62]~235_combout\) # ((\G_array~236_combout\ & ((\G_array[6][30]~130_combout\) # (\carry~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_array[6][30]~130_combout\,
	datab => \G_array~236_combout\,
	datac => \G_array[1][62]~235_combout\,
	datad => \carry~51_combout\,
	combout => \carry[63]~142_combout\);

-- Location: LCCOMB_X77_Y60_N14
\carry[63]~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[63]~143_combout\ = (\P_array[4][62]~82_combout\ & ((\G_array[3][46]~193_combout\) # (\G_array~194_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G_array[3][46]~193_combout\,
	datac => \P_array[4][62]~82_combout\,
	datad => \G_array~194_combout\,
	combout => \carry[63]~143_combout\);

-- Location: LCCOMB_X70_Y65_N14
\carry[63]~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[63]~145_combout\ = (\carry[63]~142_combout\) # ((\carry[63]~143_combout\) # ((\P_array[4][62]~81_combout\ & \carry[63]~144_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[4][62]~81_combout\,
	datab => \carry[63]~144_combout\,
	datac => \carry[63]~142_combout\,
	datad => \carry[63]~143_combout\,
	combout => \carry[63]~145_combout\);

-- Location: LCCOMB_X70_Y65_N8
\S~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~89_combout\ = \A[63]~input_o\ $ (\B[63]~input_o\ $ (\carry[63]~145_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \B[63]~input_o\,
	datac => \carry[63]~145_combout\,
	combout => \S~89_combout\);

-- Location: LCCOMB_X70_Y65_N26
\P_array[4][63]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[4][63]~83_combout\ = (\A[63]~input_o\ & (!\B[63]~input_o\ & (\B[62]~input_o\ $ (\A[62]~input_o\)))) # (!\A[63]~input_o\ & (\B[63]~input_o\ & (\B[62]~input_o\ $ (\A[62]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \B[63]~input_o\,
	datac => \B[62]~input_o\,
	datad => \A[62]~input_o\,
	combout => \P_array[4][63]~83_combout\);

-- Location: LCCOMB_X73_Y65_N28
\P_array[4][63]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \P_array[4][63]~84_combout\ = (\P_array[1][61]~combout\ & (\P_array[4][63]~83_combout\ & (\carry[60]~123_combout\ & \P_array[2][51]~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[1][61]~combout\,
	datab => \P_array[4][63]~83_combout\,
	datac => \carry[60]~123_combout\,
	datad => \P_array[2][51]~74_combout\,
	combout => \P_array[4][63]~84_combout\);

-- Location: LCCOMB_X73_Y65_N6
\carry~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry~146_combout\ = (\P_array[4][63]~84_combout\ & ((\G_array[3][47]~199_combout\) # ((\carry[48]~70_combout\ & \carry~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry[48]~70_combout\,
	datab => \carry~52_combout\,
	datac => \G_array[3][47]~199_combout\,
	datad => \P_array[4][63]~84_combout\,
	combout => \carry~146_combout\);

-- Location: LCCOMB_X73_Y61_N10
\carry~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry~147_combout\ = (\P_array[2][59]~78_combout\ & (\P_array[1][59]~combout\ & (\P_array[1][61]~combout\ & \G_array[3][55]~227_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[2][59]~78_combout\,
	datab => \P_array[1][59]~combout\,
	datac => \P_array[1][61]~combout\,
	datad => \G_array[3][55]~227_combout\,
	combout => \carry~147_combout\);

-- Location: LCCOMB_X70_Y65_N20
\carry~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry~148_combout\ = (\A[62]~input_o\ & (((\B[62]~input_o\) # (\carry~147_combout\)) # (!\carry[62]~135_combout\))) # (!\A[62]~input_o\ & (\B[62]~input_o\ & ((\carry~147_combout\) # (!\carry[62]~135_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[62]~input_o\,
	datab => \carry[62]~135_combout\,
	datac => \B[62]~input_o\,
	datad => \carry~147_combout\,
	combout => \carry~148_combout\);

-- Location: LCCOMB_X70_Y65_N22
\carry~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry~149_combout\ = (\A[63]~input_o\ & ((\B[63]~input_o\) # (\carry~148_combout\))) # (!\A[63]~input_o\ & (\B[63]~input_o\ & \carry~148_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \B[63]~input_o\,
	datad => \carry~148_combout\,
	combout => \carry~149_combout\);

-- Location: LCCOMB_X73_Y65_N24
\carry~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry~150_combout\ = (\carry~149_combout\) # ((\G_array~196_combout\ & \P_array[4][63]~84_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G_array~196_combout\,
	datac => \carry~149_combout\,
	datad => \P_array[4][63]~84_combout\,
	combout => \carry~150_combout\);

-- Location: LCCOMB_X73_Y65_N10
\G_array~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_array~237_combout\ = (\P_array[2][43]~90_combout\ & (\P_array[2][47]~70_combout\ & (\P_array[4][39]~55_combout\ & \P_array[4][63]~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_array[2][43]~90_combout\,
	datab => \P_array[2][47]~70_combout\,
	datac => \P_array[4][39]~55_combout\,
	datad => \P_array[4][63]~84_combout\,
	combout => \G_array~237_combout\);

-- Location: LCCOMB_X73_Y65_N4
\carry~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry~151_combout\ = (\carry~146_combout\) # ((\carry~150_combout\) # ((\G_array[6][31]~combout\ & \G_array~237_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry~146_combout\,
	datab => \carry~150_combout\,
	datac => \G_array[6][31]~combout\,
	datad => \G_array~237_combout\,
	combout => \carry~151_combout\);

-- Location: LCCOMB_X73_Y65_N14
\Ovfl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = \carry~151_combout\ $ (\carry[63]~145_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \carry~151_combout\,
	datac => \carry[63]~145_combout\,
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


