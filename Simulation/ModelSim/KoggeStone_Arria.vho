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

-- DATE "11/16/2025 15:57:16"

-- 
-- Device: Altera EP2AGX45DF29C6 Package FBGA780
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ARRIAII;
LIBRARY IEEE;
USE ARRIAII.ARRIAII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	KoggeStone IS
    PORT (
	A : IN std_logic_vector(63 DOWNTO 0);
	B : IN std_logic_vector(63 DOWNTO 0);
	Cin : IN std_logic;
	S : OUT std_logic_vector(63 DOWNTO 0);
	Cout : OUT std_logic;
	Ovfl : OUT std_logic
	);
END KoggeStone;

-- Design Ports Information
-- S[0]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[16]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[17]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[18]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[19]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[20]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[21]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[22]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[23]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[24]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[25]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[26]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[27]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[28]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[29]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[30]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[31]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[32]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[33]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[34]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[35]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[36]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[37]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[38]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[39]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[40]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[41]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[42]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[43]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[44]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[45]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[46]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[47]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[48]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[49]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[50]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[51]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[52]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[53]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[54]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[55]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[56]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[57]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[58]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[59]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[60]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[61]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[62]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[63]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AC13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[32]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[32]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[33]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[33]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[34]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[34]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[35]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[35]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[36]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[36]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[37]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[37]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[38]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[38]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[39]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[39]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[40]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[40]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[41]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[41]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[42]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[42]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[43]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[43]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[44]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[44]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[45]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[45]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[46]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[46]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[47]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[47]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[48]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[48]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[49]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[49]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[50]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[50]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[51]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[51]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[52]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[52]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[53]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[53]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[54]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[54]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[55]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[55]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[56]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[56]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[57]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[57]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[58]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[58]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[59]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[59]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[60]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[60]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[61]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[61]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[62]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[62]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[63]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[63]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \S~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \S~1_combout\ : std_logic;
SIGNAL \carry[10]~115_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \S~2_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \carry~0_combout\ : std_logic;
SIGNAL \G_array[1][2]~1_combout\ : std_logic;
SIGNAL \carry[11]~1_combout\ : std_logic;
SIGNAL \S~3_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \carry~2_combout\ : std_logic;
SIGNAL \G_array[1][3]~2_combout\ : std_logic;
SIGNAL \G_array[6][1]~0_combout\ : std_logic;
SIGNAL \G_array~3_combout\ : std_logic;
SIGNAL \S~4_combout\ : std_logic;
SIGNAL \G_array[1][4]~4_combout\ : std_logic;
SIGNAL \G_array~5_combout\ : std_logic;
SIGNAL \P_array[3][8]~0_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \S~5_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \carry~3_combout\ : std_logic;
SIGNAL \G_array~8_combout\ : std_logic;
SIGNAL \G_array[1][5]~6_combout\ : std_logic;
SIGNAL \G_array~7_combout\ : std_logic;
SIGNAL \G_array[6][5]~combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \S~6_combout\ : std_logic;
SIGNAL \G_array[6][2]~combout\ : std_logic;
SIGNAL \G_array~10_combout\ : std_logic;
SIGNAL \G_array~9_combout\ : std_logic;
SIGNAL \carry~4_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \G_array[1][6]~11_combout\ : std_logic;
SIGNAL \G_array[6][6]~12_combout\ : std_logic;
SIGNAL \S~7_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \G_array~13_combout\ : std_logic;
SIGNAL \G_array~15_combout\ : std_logic;
SIGNAL \G_array[1][7]~14_combout\ : std_logic;
SIGNAL \G_array[6][7]~combout\ : std_logic;
SIGNAL \carry~5_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \S~8_combout\ : std_logic;
SIGNAL \G_array~17_combout\ : std_logic;
SIGNAL \G_array~18_combout\ : std_logic;
SIGNAL \G_array[1][8]~16_combout\ : std_logic;
SIGNAL \P_array[2][8]~1_combout\ : std_logic;
SIGNAL \G_array[3][8]~combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \carry[25]~6_combout\ : std_logic;
SIGNAL \S~9_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \P_array[2][9]~2_combout\ : std_logic;
SIGNAL \carry[10]~7_combout\ : std_logic;
SIGNAL \G_array[1][9]~19_combout\ : std_logic;
SIGNAL \G_array~20_combout\ : std_logic;
SIGNAL \G_array[3][9]~combout\ : std_logic;
SIGNAL \S~10_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \G_array[1][10]~21_combout\ : std_logic;
SIGNAL \G_array~22_combout\ : std_logic;
SIGNAL \G_array~23_combout\ : std_logic;
SIGNAL \P_array[2][10]~3_combout\ : std_logic;
SIGNAL \G_array[3][10]~combout\ : std_logic;
SIGNAL \carry[11]~8_combout\ : std_logic;
SIGNAL \carry[27]~9_combout\ : std_logic;
SIGNAL \S~11_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \G_array~25_combout\ : std_logic;
SIGNAL \P_array[2][11]~4_combout\ : std_logic;
SIGNAL \carry[12]~10_combout\ : std_logic;
SIGNAL \G_array[1][11]~24_combout\ : std_logic;
SIGNAL \G_array~26_combout\ : std_logic;
SIGNAL \G_array[3][11]~combout\ : std_logic;
SIGNAL \carry[36]~11_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \S~12_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \G_array~27_combout\ : std_logic;
SIGNAL \P_array[2][12]~5_combout\ : std_logic;
SIGNAL \carry[13]~12_combout\ : std_logic;
SIGNAL \G_array~29_combout\ : std_logic;
SIGNAL \G_array[1][12]~28_combout\ : std_logic;
SIGNAL \G_array[3][12]~combout\ : std_logic;
SIGNAL \carry[37]~13_combout\ : std_logic;
SIGNAL \S~13_combout\ : std_logic;
SIGNAL \G_array~30_combout\ : std_logic;
SIGNAL \G_array~33_combout\ : std_logic;
SIGNAL \P_array[2][13]~6_combout\ : std_logic;
SIGNAL \G_array[1][13]~32_combout\ : std_logic;
SIGNAL \G_array[3][13]~combout\ : std_logic;
SIGNAL \carry~14_combout\ : std_logic;
SIGNAL \G_array~31_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \S~14_combout\ : std_logic;
SIGNAL \G_array[1][14]~36_combout\ : std_logic;
SIGNAL \G_array~34_combout\ : std_logic;
SIGNAL \G_array~37_combout\ : std_logic;
SIGNAL \P_array[2][14]~7_combout\ : std_logic;
SIGNAL \G_array[3][14]~combout\ : std_logic;
SIGNAL \G_array~35_combout\ : std_logic;
SIGNAL \carry~15_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \S~15_combout\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \G_array~38_combout\ : std_logic;
SIGNAL \P_array[2][15]~8_combout\ : std_logic;
SIGNAL \carry~16_combout\ : std_logic;
SIGNAL \G_array~41_combout\ : std_logic;
SIGNAL \G_array[1][15]~40_combout\ : std_logic;
SIGNAL \G_array[3][15]~combout\ : std_logic;
SIGNAL \G_array~39_combout\ : std_logic;
SIGNAL \S~16_combout\ : std_logic;
SIGNAL \G_array[1][16]~44_combout\ : std_logic;
SIGNAL \G_array~42_combout\ : std_logic;
SIGNAL \G_array~45_combout\ : std_logic;
SIGNAL \P_array[2][16]~9_combout\ : std_logic;
SIGNAL \G_array[3][16]~combout\ : std_logic;
SIGNAL \G_array~43_combout\ : std_logic;
SIGNAL \carry[17]~17_combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \S~17_combout\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \G_array~46_combout\ : std_logic;
SIGNAL \G_array~49_combout\ : std_logic;
SIGNAL \G_array[1][17]~48_combout\ : std_logic;
SIGNAL \P_array[2][17]~10_combout\ : std_logic;
SIGNAL \G_array[3][17]~combout\ : std_logic;
SIGNAL \G_array~47_combout\ : std_logic;
SIGNAL \carry[18]~18_combout\ : std_logic;
SIGNAL \S~18_combout\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \G_array~50_combout\ : std_logic;
SIGNAL \G_array~54_combout\ : std_logic;
SIGNAL \G_array[1][18]~53_combout\ : std_logic;
SIGNAL \P_array[2][18]~11_combout\ : std_logic;
SIGNAL \G_array[3][18]~combout\ : std_logic;
SIGNAL \G_array~51_combout\ : std_logic;
SIGNAL \G_array~52_combout\ : std_logic;
SIGNAL \carry[35]~19_combout\ : std_logic;
SIGNAL \carry[19]~20_combout\ : std_logic;
SIGNAL \S~19_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \G_array~55_combout\ : std_logic;
SIGNAL \P_array[2][19]~12_combout\ : std_logic;
SIGNAL \G_array~56_combout\ : std_logic;
SIGNAL \G_array~58_combout\ : std_logic;
SIGNAL \G_array[1][19]~57_combout\ : std_logic;
SIGNAL \G_array[3][19]~combout\ : std_logic;
SIGNAL \carry[20]~21_combout\ : std_logic;
SIGNAL \S~20_combout\ : std_logic;
SIGNAL \G_array~59_combout\ : std_logic;
SIGNAL \P_array[2][20]~13_combout\ : std_logic;
SIGNAL \G_array[1][20]~60_combout\ : std_logic;
SIGNAL \G_array~61_combout\ : std_logic;
SIGNAL \G_array[3][20]~combout\ : std_logic;
SIGNAL \carry[21]~22_combout\ : std_logic;
SIGNAL \carry[21]~23_combout\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \S~21_combout\ : std_logic;
SIGNAL \G_array~62_combout\ : std_logic;
SIGNAL \G_array~65_combout\ : std_logic;
SIGNAL \G_array[1][21]~64_combout\ : std_logic;
SIGNAL \P_array[2][21]~14_combout\ : std_logic;
SIGNAL \G_array[3][21]~combout\ : std_logic;
SIGNAL \carry[38]~24_combout\ : std_logic;
SIGNAL \G_array~63_combout\ : std_logic;
SIGNAL \carry[22]~25_combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \S~22_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \G_array[1][22]~68_combout\ : std_logic;
SIGNAL \G_array~66_combout\ : std_logic;
SIGNAL \G_array~69_combout\ : std_logic;
SIGNAL \P_array[2][22]~15_combout\ : std_logic;
SIGNAL \G_array[3][22]~combout\ : std_logic;
SIGNAL \carry[39]~26_combout\ : std_logic;
SIGNAL \G_array~67_combout\ : std_logic;
SIGNAL \carry[23]~27_combout\ : std_logic;
SIGNAL \S~23_combout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \G_array[1][23]~71_combout\ : std_logic;
SIGNAL \G_array~70_combout\ : std_logic;
SIGNAL \P_array[2][23]~16_combout\ : std_logic;
SIGNAL \G_array~72_combout\ : std_logic;
SIGNAL \G_array[3][23]~combout\ : std_logic;
SIGNAL \carry[24]~28_combout\ : std_logic;
SIGNAL \S~24_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \G_array~73_combout\ : std_logic;
SIGNAL \P_array[2][24]~17_combout\ : std_logic;
SIGNAL \G_array[1][24]~75_combout\ : std_logic;
SIGNAL \G_array~76_combout\ : std_logic;
SIGNAL \G_array[3][24]~combout\ : std_logic;
SIGNAL \carry[41]~29_combout\ : std_logic;
SIGNAL \G_array~74_combout\ : std_logic;
SIGNAL \carry[25]~30_combout\ : std_logic;
SIGNAL \S~25_combout\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \carry[42]~31_combout\ : std_logic;
SIGNAL \G_array~77_combout\ : std_logic;
SIGNAL \P_array[2][25]~18_combout\ : std_logic;
SIGNAL \G_array~78_combout\ : std_logic;
SIGNAL \G_array~80_combout\ : std_logic;
SIGNAL \G_array[1][25]~79_combout\ : std_logic;
SIGNAL \G_array[3][25]~combout\ : std_logic;
SIGNAL \carry[26]~32_combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \S~26_combout\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \G_array~81_combout\ : std_logic;
SIGNAL \P_array[2][26]~19_combout\ : std_logic;
SIGNAL \G_array~84_combout\ : std_logic;
SIGNAL \G_array[1][26]~83_combout\ : std_logic;
SIGNAL \G_array[3][26]~combout\ : std_logic;
SIGNAL \G_array~82_combout\ : std_logic;
SIGNAL \carry[27]~33_combout\ : std_logic;
SIGNAL \S~27_combout\ : std_logic;
SIGNAL \G_array~85_combout\ : std_logic;
SIGNAL \P_array[2][27]~20_combout\ : std_logic;
SIGNAL \G_array~86_combout\ : std_logic;
SIGNAL \G_array~87_combout\ : std_logic;
SIGNAL \G_array[1][27]~88_combout\ : std_logic;
SIGNAL \G_array~89_combout\ : std_logic;
SIGNAL \G_array[3][27]~combout\ : std_logic;
SIGNAL \P_array[4][27]~21_combout\ : std_logic;
SIGNAL \carry[28]~34_combout\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \S~28_combout\ : std_logic;
SIGNAL \G_array[1][28]~93_combout\ : std_logic;
SIGNAL \G_array~90_combout\ : std_logic;
SIGNAL \P_array[2][28]~22_combout\ : std_logic;
SIGNAL \G_array~94_combout\ : std_logic;
SIGNAL \G_array[3][28]~combout\ : std_logic;
SIGNAL \G_array~91_combout\ : std_logic;
SIGNAL \G_array~92_combout\ : std_logic;
SIGNAL \P_array[4][28]~23_combout\ : std_logic;
SIGNAL \carry[29]~35_combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \S~29_combout\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \G_array~95_combout\ : std_logic;
SIGNAL \P_array[2][29]~24_combout\ : std_logic;
SIGNAL \G_array~96_combout\ : std_logic;
SIGNAL \G_array~97_combout\ : std_logic;
SIGNAL \G_array~99_combout\ : std_logic;
SIGNAL \G_array[1][29]~98_combout\ : std_logic;
SIGNAL \G_array[3][29]~combout\ : std_logic;
SIGNAL \P_array[4][29]~25_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \S~30_combout\ : std_logic;
SIGNAL \G_array~100_combout\ : std_logic;
SIGNAL \P_array[2][30]~26_combout\ : std_logic;
SIGNAL \G_array~101_combout\ : std_logic;
SIGNAL \P_array[4][30]~27_combout\ : std_logic;
SIGNAL \G_array~104_combout\ : std_logic;
SIGNAL \G_array[1][30]~103_combout\ : std_logic;
SIGNAL \G_array[3][30]~combout\ : std_logic;
SIGNAL \G_array~102_combout\ : std_logic;
SIGNAL \G_array[6][30]~combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \S~31_combout\ : std_logic;
SIGNAL \B[32]~input_o\ : std_logic;
SIGNAL \A[32]~input_o\ : std_logic;
SIGNAL \G_array~105_combout\ : std_logic;
SIGNAL \P_array[2][31]~28_combout\ : std_logic;
SIGNAL \P_array[4][31]~29_combout\ : std_logic;
SIGNAL \G_array~108_combout\ : std_logic;
SIGNAL \G_array[1][31]~107_combout\ : std_logic;
SIGNAL \G_array[3][31]~combout\ : std_logic;
SIGNAL \G_array~106_combout\ : std_logic;
SIGNAL \G_array[6][31]~combout\ : std_logic;
SIGNAL \S~32_combout\ : std_logic;
SIGNAL \G_array~109_combout\ : std_logic;
SIGNAL \P_array[2][32]~30_combout\ : std_logic;
SIGNAL \P_array[4][32]~31_combout\ : std_logic;
SIGNAL \carry[33]~36_combout\ : std_logic;
SIGNAL \B[33]~input_o\ : std_logic;
SIGNAL \A[33]~input_o\ : std_logic;
SIGNAL \G_array~110_combout\ : std_logic;
SIGNAL \G_array[1][32]~111_combout\ : std_logic;
SIGNAL \G_array~112_combout\ : std_logic;
SIGNAL \G_array[3][32]~combout\ : std_logic;
SIGNAL \S~33_combout\ : std_logic;
SIGNAL \B[34]~input_o\ : std_logic;
SIGNAL \A[34]~input_o\ : std_logic;
SIGNAL \G_array~113_combout\ : std_logic;
SIGNAL \P_array[2][33]~32_combout\ : std_logic;
SIGNAL \P_array[4][33]~33_combout\ : std_logic;
SIGNAL \G_array~114_combout\ : std_logic;
SIGNAL \G_array~116_combout\ : std_logic;
SIGNAL \G_array[1][33]~115_combout\ : std_logic;
SIGNAL \G_array[3][33]~combout\ : std_logic;
SIGNAL \carry[34]~37_combout\ : std_logic;
SIGNAL \S~34_combout\ : std_logic;
SIGNAL \A[35]~input_o\ : std_logic;
SIGNAL \B[35]~input_o\ : std_logic;
SIGNAL \G_array~117_combout\ : std_logic;
SIGNAL \G_array~119_combout\ : std_logic;
SIGNAL \G_array[1][34]~118_combout\ : std_logic;
SIGNAL \P_array[2][34]~34_combout\ : std_logic;
SIGNAL \G_array[3][34]~combout\ : std_logic;
SIGNAL \P_array[4][34]~35_combout\ : std_logic;
SIGNAL \G_array~120_combout\ : std_logic;
SIGNAL \carry[35]~38_combout\ : std_logic;
SIGNAL \S~35_combout\ : std_logic;
SIGNAL \G_array~121_combout\ : std_logic;
SIGNAL \P_array[2][35]~36_combout\ : std_logic;
SIGNAL \G_array~124_combout\ : std_logic;
SIGNAL \G_array[1][35]~123_combout\ : std_logic;
SIGNAL \G_array[3][35]~combout\ : std_logic;
SIGNAL \P_array[4][35]~37_combout\ : std_logic;
SIGNAL \G_array~122_combout\ : std_logic;
SIGNAL \carry[36]~39_combout\ : std_logic;
SIGNAL \A[36]~input_o\ : std_logic;
SIGNAL \B[36]~input_o\ : std_logic;
SIGNAL \S~36_combout\ : std_logic;
SIGNAL \A[37]~input_o\ : std_logic;
SIGNAL \B[37]~input_o\ : std_logic;
SIGNAL \G_array~125_combout\ : std_logic;
SIGNAL \P_array[2][36]~38_combout\ : std_logic;
SIGNAL \G_array[1][36]~126_combout\ : std_logic;
SIGNAL \G_array~127_combout\ : std_logic;
SIGNAL \G_array[3][36]~combout\ : std_logic;
SIGNAL \P_array[4][36]~39_combout\ : std_logic;
SIGNAL \carry[37]~41_combout\ : std_logic;
SIGNAL \carry[37]~40_combout\ : std_logic;
SIGNAL \S~37_combout\ : std_logic;
SIGNAL \A[38]~input_o\ : std_logic;
SIGNAL \G_array[1][37]~129_combout\ : std_logic;
SIGNAL \G_array~128_combout\ : std_logic;
SIGNAL \G_array~130_combout\ : std_logic;
SIGNAL \P_array[2][37]~40_combout\ : std_logic;
SIGNAL \G_array[3][37]~combout\ : std_logic;
SIGNAL \B[38]~input_o\ : std_logic;
SIGNAL \P_array[4][37]~41_combout\ : std_logic;
SIGNAL \P_array[4][37]~42_combout\ : std_logic;
SIGNAL \G_array~131_combout\ : std_logic;
SIGNAL \carry[38]~42_combout\ : std_logic;
SIGNAL \S~38_combout\ : std_logic;
SIGNAL \G_array~132_combout\ : std_logic;
SIGNAL \G_array~134_combout\ : std_logic;
SIGNAL \G_array[1][38]~133_combout\ : std_logic;
SIGNAL \P_array[2][38]~43_combout\ : std_logic;
SIGNAL \G_array[3][38]~combout\ : std_logic;
SIGNAL \P_array[4][38]~44_combout\ : std_logic;
SIGNAL \carry[39]~43_combout\ : std_logic;
SIGNAL \B[39]~input_o\ : std_logic;
SIGNAL \P_array[4][38]~45_combout\ : std_logic;
SIGNAL \A[39]~input_o\ : std_logic;
SIGNAL \S~39_combout\ : std_logic;
SIGNAL \A[40]~input_o\ : std_logic;
SIGNAL \G_array~135_combout\ : std_logic;
SIGNAL \P_array[2][39]~46_combout\ : std_logic;
SIGNAL \P_array[4][39]~47_combout\ : std_logic;
SIGNAL \P_array[4][39]~48_combout\ : std_logic;
SIGNAL \carry[40]~44_combout\ : std_logic;
SIGNAL \G_array[1][39]~136_combout\ : std_logic;
SIGNAL \G_array~137_combout\ : std_logic;
SIGNAL \G_array[3][39]~combout\ : std_logic;
SIGNAL \G_array~138_combout\ : std_logic;
SIGNAL \carry[40]~45_combout\ : std_logic;
SIGNAL \B[40]~input_o\ : std_logic;
SIGNAL \S~40_combout\ : std_logic;
SIGNAL \B[41]~input_o\ : std_logic;
SIGNAL \A[41]~input_o\ : std_logic;
SIGNAL \G_array~139_combout\ : std_logic;
SIGNAL \P_array[2][40]~49_combout\ : std_logic;
SIGNAL \G_array[1][40]~141_combout\ : std_logic;
SIGNAL \G_array~142_combout\ : std_logic;
SIGNAL \G_array[3][40]~combout\ : std_logic;
SIGNAL \P_array[4][40]~50_combout\ : std_logic;
SIGNAL \carry[41]~46_combout\ : std_logic;
SIGNAL \G_array~140_combout\ : std_logic;
SIGNAL \S~41_combout\ : std_logic;
SIGNAL \G_array~143_combout\ : std_logic;
SIGNAL \P_array[2][41]~51_combout\ : std_logic;
SIGNAL \G_array~146_combout\ : std_logic;
SIGNAL \G_array[1][41]~145_combout\ : std_logic;
SIGNAL \G_array[3][41]~combout\ : std_logic;
SIGNAL \P_array[4][41]~52_combout\ : std_logic;
SIGNAL \carry[42]~47_combout\ : std_logic;
SIGNAL \A[42]~input_o\ : std_logic;
SIGNAL \G_array~144_combout\ : std_logic;
SIGNAL \B[42]~input_o\ : std_logic;
SIGNAL \S~42_combout\ : std_logic;
SIGNAL \A[43]~input_o\ : std_logic;
SIGNAL \G_array~147_combout\ : std_logic;
SIGNAL \P_array[2][42]~53_combout\ : std_logic;
SIGNAL \P_array[4][42]~54_combout\ : std_logic;
SIGNAL \carry[43]~49_combout\ : std_logic;
SIGNAL \G_array~150_combout\ : std_logic;
SIGNAL \G_array[1][42]~149_combout\ : std_logic;
SIGNAL \G_array[3][42]~combout\ : std_logic;
SIGNAL \carry[43]~48_combout\ : std_logic;
SIGNAL \G_array~148_combout\ : std_logic;
SIGNAL \B[43]~input_o\ : std_logic;
SIGNAL \S~43_combout\ : std_logic;
SIGNAL \G_array~151_combout\ : std_logic;
SIGNAL \P_array[2][43]~55_combout\ : std_logic;
SIGNAL \G_array~152_combout\ : std_logic;
SIGNAL \G_array~154_combout\ : std_logic;
SIGNAL \G_array[1][43]~153_combout\ : std_logic;
SIGNAL \G_array[3][43]~combout\ : std_logic;
SIGNAL \P_array[4][43]~56_combout\ : std_logic;
SIGNAL \carry[44]~50_combout\ : std_logic;
SIGNAL \A[44]~input_o\ : std_logic;
SIGNAL \B[44]~input_o\ : std_logic;
SIGNAL \S~44_combout\ : std_logic;
SIGNAL \G_array~155_combout\ : std_logic;
SIGNAL \P_array[2][44]~57_combout\ : std_logic;
SIGNAL \G_array~156_combout\ : std_logic;
SIGNAL \P_array[4][44]~58_combout\ : std_logic;
SIGNAL \A[45]~input_o\ : std_logic;
SIGNAL \G_array[1][44]~157_combout\ : std_logic;
SIGNAL \G_array~158_combout\ : std_logic;
SIGNAL \G_array[3][44]~combout\ : std_logic;
SIGNAL \carry[45]~51_combout\ : std_logic;
SIGNAL \B[45]~input_o\ : std_logic;
SIGNAL \S~45_combout\ : std_logic;
SIGNAL \G_array~159_combout\ : std_logic;
SIGNAL \P_array[2][45]~59_combout\ : std_logic;
SIGNAL \G_array~160_combout\ : std_logic;
SIGNAL \P_array[4][45]~60_combout\ : std_logic;
SIGNAL \G_array[1][45]~161_combout\ : std_logic;
SIGNAL \G_array~162_combout\ : std_logic;
SIGNAL \G_array[3][45]~combout\ : std_logic;
SIGNAL \carry[46]~52_combout\ : std_logic;
SIGNAL \B[46]~input_o\ : std_logic;
SIGNAL \A[46]~input_o\ : std_logic;
SIGNAL \S~46_combout\ : std_logic;
SIGNAL \G_array~163_combout\ : std_logic;
SIGNAL \P_array[2][46]~61_combout\ : std_logic;
SIGNAL \P_array[4][46]~62_combout\ : std_logic;
SIGNAL \G_array~166_combout\ : std_logic;
SIGNAL \G_array[1][46]~165_combout\ : std_logic;
SIGNAL \G_array[3][46]~combout\ : std_logic;
SIGNAL \G_array~164_combout\ : std_logic;
SIGNAL \carry[47]~53_combout\ : std_logic;
SIGNAL \A[47]~input_o\ : std_logic;
SIGNAL \B[47]~input_o\ : std_logic;
SIGNAL \S~47_combout\ : std_logic;
SIGNAL \G_array~167_combout\ : std_logic;
SIGNAL \P_array[2][47]~63_combout\ : std_logic;
SIGNAL \P_array[4][47]~64_combout\ : std_logic;
SIGNAL \G_array~170_combout\ : std_logic;
SIGNAL \G_array[1][47]~169_combout\ : std_logic;
SIGNAL \G_array[3][47]~combout\ : std_logic;
SIGNAL \G_array~168_combout\ : std_logic;
SIGNAL \carry[48]~54_combout\ : std_logic;
SIGNAL \A[48]~input_o\ : std_logic;
SIGNAL \B[48]~input_o\ : std_logic;
SIGNAL \S~48_combout\ : std_logic;
SIGNAL \B[49]~input_o\ : std_logic;
SIGNAL \G_array~171_combout\ : std_logic;
SIGNAL \P_array[2][48]~65_combout\ : std_logic;
SIGNAL \carry[49]~55_combout\ : std_logic;
SIGNAL \G_array[1][48]~172_combout\ : std_logic;
SIGNAL \G_array~173_combout\ : std_logic;
SIGNAL \G_array[3][48]~combout\ : std_logic;
SIGNAL \carry[49]~58_combout\ : std_logic;
SIGNAL \carry[49]~56_combout\ : std_logic;
SIGNAL \carry[49]~57_combout\ : std_logic;
SIGNAL \A[49]~input_o\ : std_logic;
SIGNAL \S~49_combout\ : std_logic;
SIGNAL \G_array~174_combout\ : std_logic;
SIGNAL \P_array[2][49]~66_combout\ : std_logic;
SIGNAL \carry[50]~59_combout\ : std_logic;
SIGNAL \G_array~176_combout\ : std_logic;
SIGNAL \G_array[1][49]~175_combout\ : std_logic;
SIGNAL \G_array[3][49]~combout\ : std_logic;
SIGNAL \carry[50]~62_combout\ : std_logic;
SIGNAL \carry[50]~60_combout\ : std_logic;
SIGNAL \A[50]~input_o\ : std_logic;
SIGNAL \carry[50]~61_combout\ : std_logic;
SIGNAL \B[50]~input_o\ : std_logic;
SIGNAL \S~50_combout\ : std_logic;
SIGNAL \G_array~177_combout\ : std_logic;
SIGNAL \P_array[2][50]~67_combout\ : std_logic;
SIGNAL \carry[51]~63_combout\ : std_logic;
SIGNAL \G_array[1][50]~178_combout\ : std_logic;
SIGNAL \G_array~179_combout\ : std_logic;
SIGNAL \G_array[3][50]~combout\ : std_logic;
SIGNAL \carry[51]~64_combout\ : std_logic;
SIGNAL \carry[51]~65_combout\ : std_logic;
SIGNAL \B[51]~input_o\ : std_logic;
SIGNAL \A[51]~input_o\ : std_logic;
SIGNAL \S~51_combout\ : std_logic;
SIGNAL \B[52]~input_o\ : std_logic;
SIGNAL \G_array~180_combout\ : std_logic;
SIGNAL \P_array[2][51]~68_combout\ : std_logic;
SIGNAL \carry[52]~66_combout\ : std_logic;
SIGNAL \G_array~182_combout\ : std_logic;
SIGNAL \G_array[1][51]~181_combout\ : std_logic;
SIGNAL \G_array[3][51]~combout\ : std_logic;
SIGNAL \carry[52]~67_combout\ : std_logic;
SIGNAL \carry[52]~68_combout\ : std_logic;
SIGNAL \A[52]~input_o\ : std_logic;
SIGNAL \S~52_combout\ : std_logic;
SIGNAL \G_array~184_combout\ : std_logic;
SIGNAL \G_array[1][52]~183_combout\ : std_logic;
SIGNAL \P_array[2][52]~69_combout\ : std_logic;
SIGNAL \G_array[3][52]~combout\ : std_logic;
SIGNAL \carry[57]~69_combout\ : std_logic;
SIGNAL \carry[53]~72_combout\ : std_logic;
SIGNAL \carry[53]~71_combout\ : std_logic;
SIGNAL \B[53]~input_o\ : std_logic;
SIGNAL \carry[53]~70_combout\ : std_logic;
SIGNAL \A[53]~input_o\ : std_logic;
SIGNAL \S~53_combout\ : std_logic;
SIGNAL \P_array[2][53]~70_combout\ : std_logic;
SIGNAL \carry[58]~73_combout\ : std_logic;
SIGNAL \carry[54]~74_combout\ : std_logic;
SIGNAL \G_array~186_combout\ : std_logic;
SIGNAL \G_array[1][53]~185_combout\ : std_logic;
SIGNAL \G_array[3][53]~combout\ : std_logic;
SIGNAL \carry[54]~75_combout\ : std_logic;
SIGNAL \B[54]~input_o\ : std_logic;
SIGNAL \A[54]~input_o\ : std_logic;
SIGNAL \S~54_combout\ : std_logic;
SIGNAL \G_array~187_combout\ : std_logic;
SIGNAL \P_array[2][54]~71_combout\ : std_logic;
SIGNAL \carry[55]~76_combout\ : std_logic;
SIGNAL \G_array[1][54]~188_combout\ : std_logic;
SIGNAL \G_array[3][54]~combout\ : std_logic;
SIGNAL \carry[55]~78_combout\ : std_logic;
SIGNAL \carry[55]~79_combout\ : std_logic;
SIGNAL \B[55]~input_o\ : std_logic;
SIGNAL \carry[55]~77_combout\ : std_logic;
SIGNAL \A[55]~input_o\ : std_logic;
SIGNAL \S~55_combout\ : std_logic;
SIGNAL \B[56]~input_o\ : std_logic;
SIGNAL \G_array~189_combout\ : std_logic;
SIGNAL \P_array[2][55]~72_combout\ : std_logic;
SIGNAL \carry[56]~80_combout\ : std_logic;
SIGNAL \carry[56]~81_combout\ : std_logic;
SIGNAL \G_array[1][55]~190_combout\ : std_logic;
SIGNAL \G_array[3][55]~combout\ : std_logic;
SIGNAL \carry[56]~82_combout\ : std_logic;
SIGNAL \carry[56]~83_combout\ : std_logic;
SIGNAL \A[56]~input_o\ : std_logic;
SIGNAL \S~56_combout\ : std_logic;
SIGNAL \P_array[2][56]~73_combout\ : std_logic;
SIGNAL \carry[57]~84_combout\ : std_logic;
SIGNAL \A[57]~input_o\ : std_logic;
SIGNAL \B[57]~input_o\ : std_logic;
SIGNAL \G_array~192_combout\ : std_logic;
SIGNAL \G_array[1][56]~191_combout\ : std_logic;
SIGNAL \carry[57]~85_combout\ : std_logic;
SIGNAL \carry[57]~86_combout\ : std_logic;
SIGNAL \S~57_combout\ : std_logic;
SIGNAL \P_array[2][57]~74_combout\ : std_logic;
SIGNAL \G_array~194_combout\ : std_logic;
SIGNAL \G_array[1][57]~193_combout\ : std_logic;
SIGNAL \carry[58]~88_combout\ : std_logic;
SIGNAL \carry[58]~89_combout\ : std_logic;
SIGNAL \carry[58]~87_combout\ : std_logic;
SIGNAL \B[58]~input_o\ : std_logic;
SIGNAL \A[58]~input_o\ : std_logic;
SIGNAL \S~58_combout\ : std_logic;
SIGNAL \P_array[1][58]~combout\ : std_logic;
SIGNAL \P_array[2][58]~75_combout\ : std_logic;
SIGNAL \carry[59]~90_combout\ : std_logic;
SIGNAL \G_array[1][58]~195_combout\ : std_logic;
SIGNAL \carry[59]~91_combout\ : std_logic;
SIGNAL \carry[59]~92_combout\ : std_logic;
SIGNAL \carry[59]~93_combout\ : std_logic;
SIGNAL \B[59]~input_o\ : std_logic;
SIGNAL \A[59]~input_o\ : std_logic;
SIGNAL \S~59_combout\ : std_logic;
SIGNAL \P_array[1][59]~combout\ : std_logic;
SIGNAL \P_array[2][59]~76_combout\ : std_logic;
SIGNAL \carry[60]~94_combout\ : std_logic;
SIGNAL \B[60]~input_o\ : std_logic;
SIGNAL \A[60]~input_o\ : std_logic;
SIGNAL \G_array[1][59]~196_combout\ : std_logic;
SIGNAL \carry[60]~95_combout\ : std_logic;
SIGNAL \carry[60]~96_combout\ : std_logic;
SIGNAL \carry[60]~97_combout\ : std_logic;
SIGNAL \S~60_combout\ : std_logic;
SIGNAL \P_array[1][60]~combout\ : std_logic;
SIGNAL \carry[61]~98_combout\ : std_logic;
SIGNAL \G_array[1][60]~197_combout\ : std_logic;
SIGNAL \carry[61]~100_combout\ : std_logic;
SIGNAL \carry[61]~101_combout\ : std_logic;
SIGNAL \carry[61]~102_combout\ : std_logic;
SIGNAL \A[61]~input_o\ : std_logic;
SIGNAL \B[61]~input_o\ : std_logic;
SIGNAL \carry[61]~99_combout\ : std_logic;
SIGNAL \S~61_combout\ : std_logic;
SIGNAL \P_array[1][61]~combout\ : std_logic;
SIGNAL \carry[62]~103_combout\ : std_logic;
SIGNAL \G_array[1][61]~198_combout\ : std_logic;
SIGNAL \carry[62]~105_combout\ : std_logic;
SIGNAL \carry[62]~106_combout\ : std_logic;
SIGNAL \carry[62]~107_combout\ : std_logic;
SIGNAL \A[62]~input_o\ : std_logic;
SIGNAL \B[62]~input_o\ : std_logic;
SIGNAL \carry[62]~104_combout\ : std_logic;
SIGNAL \S~62_combout\ : std_logic;
SIGNAL \P_array[4][62]~78_combout\ : std_logic;
SIGNAL \P_array[4][62]~77_combout\ : std_logic;
SIGNAL \carry[63]~109_combout\ : std_logic;
SIGNAL \P_array[4][62]~79_combout\ : std_logic;
SIGNAL \G_array[1][62]~201_combout\ : std_logic;
SIGNAL \carry[63]~110_combout\ : std_logic;
SIGNAL \G_array~199_combout\ : std_logic;
SIGNAL \carry~108_combout\ : std_logic;
SIGNAL \B[63]~input_o\ : std_logic;
SIGNAL \G_array~200_combout\ : std_logic;
SIGNAL \A[63]~input_o\ : std_logic;
SIGNAL \S~63_combout\ : std_logic;
SIGNAL \P_array[4][63]~81_combout\ : std_logic;
SIGNAL \P_array[4][63]~80_combout\ : std_logic;
SIGNAL \G_array~202_combout\ : std_logic;
SIGNAL \G_array~203_combout\ : std_logic;
SIGNAL \G_array[1][63]~204_combout\ : std_logic;
SIGNAL \carry~112_combout\ : std_logic;
SIGNAL \P_array[4][63]~82_combout\ : std_logic;
SIGNAL \carry~113_combout\ : std_logic;
SIGNAL \carry~111_combout\ : std_logic;
SIGNAL \carry~114_combout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;
SIGNAL p : std_logic_vector(63 DOWNTO 0);
SIGNAL carry : std_logic_vector(64 DOWNTO 0);
SIGNAL \ALT_INV_G_array~186_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~194_combout\ : std_logic;
SIGNAL \ALT_INV_carry[58]~88_combout\ : std_logic;
SIGNAL \ALT_INV_carry[53]~72_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[2][53]~70_combout\ : std_logic;
SIGNAL \ALT_INV_carry[55]~76_combout\ : std_logic;
SIGNAL \ALT_INV_carry[55]~78_combout\ : std_logic;
SIGNAL \ALT_INV_carry[53]~70_combout\ : std_logic;
SIGNAL \ALT_INV_carry[56]~83_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][53]~185_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[2][56]~73_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][54]~188_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~192_combout\ : std_logic;
SIGNAL \ALT_INV_carry[56]~81_combout\ : std_logic;
SIGNAL ALT_INV_p : std_logic_vector(62 DOWNTO 2);
SIGNAL \ALT_INV_carry[57]~69_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[2][57]~74_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[2][55]~72_combout\ : std_logic;
SIGNAL \ALT_INV_carry[57]~86_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[3][55]~combout\ : std_logic;
SIGNAL \ALT_INV_carry[58]~73_combout\ : std_logic;
SIGNAL \ALT_INV_carry[58]~87_combout\ : std_logic;
SIGNAL \ALT_INV_carry[53]~71_combout\ : std_logic;
SIGNAL \ALT_INV_carry[58]~89_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[1][58]~combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][52]~183_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][58]~195_combout\ : std_logic;
SIGNAL \ALT_INV_carry[59]~91_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[2][52]~69_combout\ : std_logic;
SIGNAL \ALT_INV_carry[59]~90_combout\ : std_logic;
SIGNAL \ALT_INV_carry[59]~92_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][55]~190_combout\ : std_logic;
SIGNAL \ALT_INV_carry[59]~93_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[2][58]~75_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[1][59]~combout\ : std_logic;
SIGNAL \ALT_INV_G_array~184_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[2][54]~71_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[2][59]~76_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~187_combout\ : std_logic;
SIGNAL \ALT_INV_carry[55]~77_combout\ : std_logic;
SIGNAL \ALT_INV_carry[54]~74_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[3][54]~combout\ : std_logic;
SIGNAL \ALT_INV_G_array[3][52]~combout\ : std_logic;
SIGNAL \ALT_INV_carry[55]~79_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[3][53]~combout\ : std_logic;
SIGNAL \ALT_INV_carry[56]~80_combout\ : std_logic;
SIGNAL \ALT_INV_carry[54]~75_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][56]~191_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~189_combout\ : std_logic;
SIGNAL \ALT_INV_carry[56]~82_combout\ : std_logic;
SIGNAL \ALT_INV_carry[57]~84_combout\ : std_logic;
SIGNAL \ALT_INV_carry[57]~85_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][57]~193_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][61]~198_combout\ : std_logic;
SIGNAL \ALT_INV_carry[62]~103_combout\ : std_logic;
SIGNAL \ALT_INV_carry[62]~106_combout\ : std_logic;
SIGNAL \ALT_INV_carry[61]~98_combout\ : std_logic;
SIGNAL \ALT_INV_carry[60]~94_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[1][60]~combout\ : std_logic;
SIGNAL \ALT_INV_P_array[4][62]~78_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][59]~196_combout\ : std_logic;
SIGNAL \ALT_INV_carry[61]~102_combout\ : std_logic;
SIGNAL \ALT_INV_carry~113_combout\ : std_logic;
SIGNAL \ALT_INV_carry[60]~97_combout\ : std_logic;
SIGNAL \ALT_INV_carry[61]~101_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~200_combout\ : std_logic;
SIGNAL \ALT_INV_carry[62]~107_combout\ : std_logic;
SIGNAL \ALT_INV_carry~111_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][60]~197_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~202_combout\ : std_logic;
SIGNAL \ALT_INV_carry~108_combout\ : std_logic;
SIGNAL \ALT_INV_carry[62]~104_combout\ : std_logic;
SIGNAL \ALT_INV_carry[63]~109_combout\ : std_logic;
SIGNAL \ALT_INV_carry[10]~115_combout\ : std_logic;
SIGNAL \ALT_INV_carry[61]~100_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~199_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[4][62]~79_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[1][61]~combout\ : std_logic;
SIGNAL \ALT_INV_carry[62]~105_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[4][62]~77_combout\ : std_logic;
SIGNAL \ALT_INV_carry[60]~96_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][62]~201_combout\ : std_logic;
SIGNAL \ALT_INV_carry[61]~99_combout\ : std_logic;
SIGNAL \ALT_INV_carry[63]~110_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[4][63]~80_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[4][63]~81_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[4][63]~82_combout\ : std_logic;
SIGNAL \ALT_INV_carry~112_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][63]~204_combout\ : std_logic;
SIGNAL \ALT_INV_carry[60]~95_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~203_combout\ : std_logic;
SIGNAL \ALT_INV_Cin~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[38]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[38]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[39]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[32]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[35]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[32]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[35]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[36]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[33]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[34]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[36]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[34]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[33]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[37]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[37]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[59]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[45]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[39]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[40]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[44]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[55]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[55]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[47]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[44]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[52]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[56]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[57]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[50]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[58]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[46]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[51]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[61]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[48]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[62]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[63]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[46]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[50]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[41]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[48]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[51]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[63]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[40]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[43]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[53]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[42]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[56]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[60]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[42]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[53]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[43]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[49]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[52]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[57]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[58]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[59]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[60]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[61]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[49]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[62]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[47]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[54]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[45]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[41]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[54]~input_o\ : std_logic;
SIGNAL \ALT_INV_G_array[6][2]~combout\ : std_logic;
SIGNAL \ALT_INV_carry[11]~1_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][4]~4_combout\ : std_logic;
SIGNAL ALT_INV_carry : std_logic_vector(30 DOWNTO 4);
SIGNAL \ALT_INV_P_array[3][8]~0_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][6]~11_combout\ : std_logic;
SIGNAL \ALT_INV_carry~5_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~15_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[6][7]~combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][3]~2_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~8_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][8]~16_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~17_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[2][8]~1_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~18_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~10_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[3][8]~combout\ : std_logic;
SIGNAL \ALT_INV_carry[25]~6_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][9]~19_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[2][9]~2_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~20_combout\ : std_logic;
SIGNAL \ALT_INV_carry~0_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][5]~6_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~13_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][2]~1_combout\ : std_logic;
SIGNAL \ALT_INV_carry~3_combout\ : std_logic;
SIGNAL \ALT_INV_carry~2_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~5_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[6][1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~9_combout\ : std_logic;
SIGNAL \ALT_INV_carry~4_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[6][6]~12_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~3_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[6][5]~combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][7]~14_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~7_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][14]~36_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[2][13]~6_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[3][10]~combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][12]~28_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[2][15]~8_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~46_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[2][17]~10_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~22_combout\ : std_logic;
SIGNAL \ALT_INV_carry[27]~9_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~25_combout\ : std_logic;
SIGNAL \ALT_INV_carry[12]~10_combout\ : std_logic;
SIGNAL \ALT_INV_carry[36]~11_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[3][12]~combout\ : std_logic;
SIGNAL \ALT_INV_P_array[2][10]~3_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~30_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~31_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[3][13]~combout\ : std_logic;
SIGNAL \ALT_INV_G_array~34_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[2][14]~7_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[3][14]~combout\ : std_logic;
SIGNAL \ALT_INV_G_array~35_combout\ : std_logic;
SIGNAL \ALT_INV_carry~16_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~39_combout\ : std_logic;
SIGNAL \ALT_INV_carry[37]~13_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][15]~40_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~33_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~37_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~42_combout\ : std_logic;
SIGNAL \ALT_INV_carry~14_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~43_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][16]~44_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][13]~32_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~23_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[3][11]~combout\ : std_logic;
SIGNAL \ALT_INV_G_array~26_combout\ : std_logic;
SIGNAL \ALT_INV_carry[11]~8_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[3][9]~combout\ : std_logic;
SIGNAL \ALT_INV_carry[10]~7_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][10]~21_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[2][11]~4_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~29_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[2][12]~5_combout\ : std_logic;
SIGNAL \ALT_INV_carry~15_combout\ : std_logic;
SIGNAL \ALT_INV_carry[13]~12_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~38_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~27_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~41_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~45_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[3][16]~combout\ : std_logic;
SIGNAL \ALT_INV_carry[17]~17_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][11]~24_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[3][15]~combout\ : std_logic;
SIGNAL \ALT_INV_P_array[2][16]~9_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~70_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][22]~68_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[2][19]~12_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][19]~57_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~49_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~61_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[2][20]~13_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[2][21]~14_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~67_combout\ : std_logic;
SIGNAL \ALT_INV_carry[20]~21_combout\ : std_logic;
SIGNAL \ALT_INV_carry[18]~18_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[2][23]~16_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[3][17]~combout\ : std_logic;
SIGNAL \ALT_INV_G_array[3][18]~combout\ : std_logic;
SIGNAL \ALT_INV_carry[22]~25_combout\ : std_logic;
SIGNAL \ALT_INV_carry[39]~26_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][23]~71_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[3][23]~combout\ : std_logic;
SIGNAL \ALT_INV_G_array~73_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~74_combout\ : std_logic;
SIGNAL \ALT_INV_carry[41]~29_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][17]~48_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~50_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[2][18]~11_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~69_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[2][24]~17_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][24]~75_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~52_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~76_combout\ : std_logic;
SIGNAL \ALT_INV_carry[35]~19_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][20]~60_combout\ : std_logic;
SIGNAL \ALT_INV_carry[21]~23_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~54_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~55_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~65_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][21]~64_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~51_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~63_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~47_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~59_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[3][19]~combout\ : std_logic;
SIGNAL \ALT_INV_carry[38]~24_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~58_combout\ : std_logic;
SIGNAL \ALT_INV_carry[19]~20_combout\ : std_logic;
SIGNAL \ALT_INV_carry[21]~22_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[3][21]~combout\ : std_logic;
SIGNAL \ALT_INV_G_array~66_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[3][22]~combout\ : std_logic;
SIGNAL \ALT_INV_carry[23]~27_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][18]~53_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~72_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~56_combout\ : std_logic;
SIGNAL \ALT_INV_carry[24]~28_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[3][20]~combout\ : std_logic;
SIGNAL \ALT_INV_G_array~62_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[2][22]~15_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][25]~79_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[2][27]~20_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~85_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[2][28]~22_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][28]~93_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~94_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~100_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~78_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][26]~83_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~86_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[3][27]~combout\ : std_logic;
SIGNAL \ALT_INV_G_array~91_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~90_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[2][25]~18_combout\ : std_logic;
SIGNAL \ALT_INV_carry[42]~31_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[3][24]~combout\ : std_logic;
SIGNAL \ALT_INV_carry[26]~32_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~84_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][27]~88_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[3][28]~combout\ : std_logic;
SIGNAL \ALT_INV_G_array~95_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[2][30]~26_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~97_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~92_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~99_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~101_combout\ : std_logic;
SIGNAL \ALT_INV_carry[28]~34_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[3][29]~combout\ : std_logic;
SIGNAL \ALT_INV_G_array~104_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~105_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~81_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[3][25]~combout\ : std_logic;
SIGNAL \ALT_INV_G_array~89_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~82_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[4][27]~21_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[4][28]~23_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[3][30]~combout\ : std_logic;
SIGNAL \ALT_INV_G_array~106_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~87_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][30]~103_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[2][31]~28_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][29]~98_combout\ : std_logic;
SIGNAL \ALT_INV_carry[25]~30_combout\ : std_logic;
SIGNAL \ALT_INV_carry[27]~33_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~102_combout\ : std_logic;
SIGNAL \ALT_INV_carry[29]~35_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[4][31]~29_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[6][30]~combout\ : std_logic;
SIGNAL \ALT_INV_G_array~96_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~77_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~80_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[2][26]~19_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[4][29]~25_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[3][26]~combout\ : std_logic;
SIGNAL \ALT_INV_P_array[2][29]~24_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[4][30]~27_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~110_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[2][36]~38_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[2][35]~36_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~124_combout\ : std_logic;
SIGNAL \ALT_INV_carry[37]~41_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[6][31]~combout\ : std_logic;
SIGNAL \ALT_INV_G_array~119_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~116_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[2][37]~40_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[3][31]~combout\ : std_logic;
SIGNAL \ALT_INV_G_array~121_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~125_combout\ : std_logic;
SIGNAL \ALT_INV_carry[36]~39_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][36]~126_combout\ : std_logic;
SIGNAL \ALT_INV_carry[33]~36_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~128_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][37]~129_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~131_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[3][32]~combout\ : std_logic;
SIGNAL \ALT_INV_carry[38]~42_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~114_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~132_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[4][37]~42_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~130_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[4][35]~37_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[2][38]~43_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[4][38]~44_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[4][38]~45_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~108_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][32]~111_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[4][36]~39_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[2][32]~30_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[3][37]~combout\ : std_logic;
SIGNAL \ALT_INV_P_array[2][34]~34_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][35]~123_combout\ : std_logic;
SIGNAL \ALT_INV_carry[37]~40_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[3][36]~combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][31]~107_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~109_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][33]~115_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~113_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~112_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[3][33]~combout\ : std_logic;
SIGNAL \ALT_INV_carry[34]~37_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[4][33]~33_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~117_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][34]~118_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[3][34]~combout\ : std_logic;
SIGNAL \ALT_INV_G_array~120_combout\ : std_logic;
SIGNAL \ALT_INV_carry[35]~38_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~122_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[3][35]~combout\ : std_logic;
SIGNAL \ALT_INV_P_array[2][33]~32_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~127_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[4][34]~35_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[4][32]~31_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[4][37]~41_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[3][39]~combout\ : std_logic;
SIGNAL \ALT_INV_G_array~142_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][39]~136_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~138_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[3][42]~combout\ : std_logic;
SIGNAL \ALT_INV_carry[43]~48_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[4][39]~47_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[4][40]~50_combout\ : std_logic;
SIGNAL \ALT_INV_carry[40]~44_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][41]~145_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[4][41]~52_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~150_combout\ : std_logic;
SIGNAL \ALT_INV_carry[43]~49_combout\ : std_logic;
SIGNAL \ALT_INV_carry[41]~46_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~151_combout\ : std_logic;
SIGNAL \ALT_INV_carry[39]~43_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][43]~153_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[3][43]~combout\ : std_logic;
SIGNAL \ALT_INV_P_array[2][43]~55_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~155_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~137_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~147_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[4][43]~56_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[2][44]~57_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[4][44]~58_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~140_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[3][41]~combout\ : std_logic;
SIGNAL \ALT_INV_carry[44]~50_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~158_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[3][44]~combout\ : std_logic;
SIGNAL \ALT_INV_carry[45]~51_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[2][40]~49_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[3][40]~combout\ : std_logic;
SIGNAL \ALT_INV_P_array[4][42]~54_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~159_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~139_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][44]~157_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[2][45]~59_combout\ : std_logic;
SIGNAL \ALT_INV_carry[42]~47_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[3][38]~combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][40]~141_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[4][39]~48_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][38]~133_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[2][41]~51_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~143_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~144_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~146_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~148_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~152_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~154_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][42]~149_combout\ : std_logic;
SIGNAL \ALT_INV_carry[40]~45_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~156_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~134_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[2][39]~46_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[2][42]~53_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~135_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~182_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[3][50]~combout\ : std_logic;
SIGNAL \ALT_INV_carry[49]~57_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~173_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~180_combout\ : std_logic;
SIGNAL \ALT_INV_carry[48]~54_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~168_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[2][49]~66_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~177_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][47]~169_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[3][49]~combout\ : std_logic;
SIGNAL \ALT_INV_G_array~170_combout\ : std_logic;
SIGNAL \ALT_INV_carry[49]~55_combout\ : std_logic;
SIGNAL \ALT_INV_carry[50]~62_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~179_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~164_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~167_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][46]~165_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[2][47]~63_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~171_combout\ : std_logic;
SIGNAL \ALT_INV_carry[50]~60_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][50]~178_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[3][46]~combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][51]~181_combout\ : std_logic;
SIGNAL \ALT_INV_carry[52]~67_combout\ : std_logic;
SIGNAL \ALT_INV_carry[52]~68_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[4][45]~60_combout\ : std_logic;
SIGNAL \ALT_INV_carry[46]~52_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~176_combout\ : std_logic;
SIGNAL \ALT_INV_carry[49]~56_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[4][46]~62_combout\ : std_logic;
SIGNAL \ALT_INV_carry[52]~66_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[4][47]~64_combout\ : std_logic;
SIGNAL \ALT_INV_carry[50]~59_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][49]~175_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[2][51]~68_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[3][51]~combout\ : std_logic;
SIGNAL \ALT_INV_G_array~160_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[2][46]~61_combout\ : std_logic;
SIGNAL \ALT_INV_P_array[2][48]~65_combout\ : std_logic;
SIGNAL \ALT_INV_carry[49]~58_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~163_combout\ : std_logic;
SIGNAL \ALT_INV_carry[47]~53_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~174_combout\ : std_logic;
SIGNAL \ALT_INV_G_array~162_combout\ : std_logic;
SIGNAL \ALT_INV_carry[50]~61_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][48]~172_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[1][45]~161_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[3][48]~combout\ : std_logic;
SIGNAL \ALT_INV_G_array~166_combout\ : std_logic;
SIGNAL \ALT_INV_carry[51]~64_combout\ : std_logic;
SIGNAL \ALT_INV_G_array[3][45]~combout\ : std_logic;
SIGNAL \ALT_INV_G_array[3][47]~combout\ : std_logic;
SIGNAL \ALT_INV_P_array[2][50]~67_combout\ : std_logic;
SIGNAL \ALT_INV_carry[51]~63_combout\ : std_logic;
SIGNAL \ALT_INV_carry[51]~65_combout\ : std_logic;

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
\ALT_INV_G_array~186_combout\ <= NOT \G_array~186_combout\;
\ALT_INV_G_array~194_combout\ <= NOT \G_array~194_combout\;
\ALT_INV_carry[58]~88_combout\ <= NOT \carry[58]~88_combout\;
\ALT_INV_carry[53]~72_combout\ <= NOT \carry[53]~72_combout\;
\ALT_INV_P_array[2][53]~70_combout\ <= NOT \P_array[2][53]~70_combout\;
\ALT_INV_carry[55]~76_combout\ <= NOT \carry[55]~76_combout\;
\ALT_INV_carry[55]~78_combout\ <= NOT \carry[55]~78_combout\;
\ALT_INV_carry[53]~70_combout\ <= NOT \carry[53]~70_combout\;
\ALT_INV_carry[56]~83_combout\ <= NOT \carry[56]~83_combout\;
\ALT_INV_G_array[1][53]~185_combout\ <= NOT \G_array[1][53]~185_combout\;
\ALT_INV_P_array[2][56]~73_combout\ <= NOT \P_array[2][56]~73_combout\;
\ALT_INV_G_array[1][54]~188_combout\ <= NOT \G_array[1][54]~188_combout\;
\ALT_INV_G_array~192_combout\ <= NOT \G_array~192_combout\;
\ALT_INV_carry[56]~81_combout\ <= NOT \carry[56]~81_combout\;
ALT_INV_p(58) <= NOT p(58);
\ALT_INV_carry[57]~69_combout\ <= NOT \carry[57]~69_combout\;
\ALT_INV_P_array[2][57]~74_combout\ <= NOT \P_array[2][57]~74_combout\;
\ALT_INV_P_array[2][55]~72_combout\ <= NOT \P_array[2][55]~72_combout\;
\ALT_INV_carry[57]~86_combout\ <= NOT \carry[57]~86_combout\;
\ALT_INV_G_array[3][55]~combout\ <= NOT \G_array[3][55]~combout\;
ALT_INV_p(57) <= NOT p(57);
\ALT_INV_carry[58]~73_combout\ <= NOT \carry[58]~73_combout\;
\ALT_INV_carry[58]~87_combout\ <= NOT \carry[58]~87_combout\;
\ALT_INV_carry[53]~71_combout\ <= NOT \carry[53]~71_combout\;
\ALT_INV_carry[58]~89_combout\ <= NOT \carry[58]~89_combout\;
ALT_INV_p(59) <= NOT p(59);
\ALT_INV_P_array[1][58]~combout\ <= NOT \P_array[1][58]~combout\;
\ALT_INV_G_array[1][52]~183_combout\ <= NOT \G_array[1][52]~183_combout\;
\ALT_INV_G_array[1][58]~195_combout\ <= NOT \G_array[1][58]~195_combout\;
\ALT_INV_carry[59]~91_combout\ <= NOT \carry[59]~91_combout\;
\ALT_INV_P_array[2][52]~69_combout\ <= NOT \P_array[2][52]~69_combout\;
\ALT_INV_carry[59]~90_combout\ <= NOT \carry[59]~90_combout\;
\ALT_INV_carry[59]~92_combout\ <= NOT \carry[59]~92_combout\;
\ALT_INV_G_array[1][55]~190_combout\ <= NOT \G_array[1][55]~190_combout\;
\ALT_INV_carry[59]~93_combout\ <= NOT \carry[59]~93_combout\;
\ALT_INV_P_array[2][58]~75_combout\ <= NOT \P_array[2][58]~75_combout\;
ALT_INV_p(60) <= NOT p(60);
\ALT_INV_P_array[1][59]~combout\ <= NOT \P_array[1][59]~combout\;
\ALT_INV_G_array~184_combout\ <= NOT \G_array~184_combout\;
\ALT_INV_P_array[2][54]~71_combout\ <= NOT \P_array[2][54]~71_combout\;
\ALT_INV_P_array[2][59]~76_combout\ <= NOT \P_array[2][59]~76_combout\;
\ALT_INV_G_array~187_combout\ <= NOT \G_array~187_combout\;
\ALT_INV_carry[55]~77_combout\ <= NOT \carry[55]~77_combout\;
\ALT_INV_carry[54]~74_combout\ <= NOT \carry[54]~74_combout\;
\ALT_INV_G_array[3][54]~combout\ <= NOT \G_array[3][54]~combout\;
\ALT_INV_G_array[3][52]~combout\ <= NOT \G_array[3][52]~combout\;
\ALT_INV_carry[55]~79_combout\ <= NOT \carry[55]~79_combout\;
\ALT_INV_G_array[3][53]~combout\ <= NOT \G_array[3][53]~combout\;
\ALT_INV_carry[56]~80_combout\ <= NOT \carry[56]~80_combout\;
\ALT_INV_carry[54]~75_combout\ <= NOT \carry[54]~75_combout\;
\ALT_INV_G_array[1][56]~191_combout\ <= NOT \G_array[1][56]~191_combout\;
\ALT_INV_G_array~189_combout\ <= NOT \G_array~189_combout\;
\ALT_INV_carry[56]~82_combout\ <= NOT \carry[56]~82_combout\;
\ALT_INV_carry[57]~84_combout\ <= NOT \carry[57]~84_combout\;
\ALT_INV_carry[57]~85_combout\ <= NOT \carry[57]~85_combout\;
\ALT_INV_G_array[1][57]~193_combout\ <= NOT \G_array[1][57]~193_combout\;
\ALT_INV_G_array[1][61]~198_combout\ <= NOT \G_array[1][61]~198_combout\;
\ALT_INV_carry[62]~103_combout\ <= NOT \carry[62]~103_combout\;
\ALT_INV_carry[62]~106_combout\ <= NOT \carry[62]~106_combout\;
\ALT_INV_carry[61]~98_combout\ <= NOT \carry[61]~98_combout\;
\ALT_INV_carry[60]~94_combout\ <= NOT \carry[60]~94_combout\;
\ALT_INV_P_array[1][60]~combout\ <= NOT \P_array[1][60]~combout\;
\ALT_INV_P_array[4][62]~78_combout\ <= NOT \P_array[4][62]~78_combout\;
\ALT_INV_G_array[1][59]~196_combout\ <= NOT \G_array[1][59]~196_combout\;
\ALT_INV_carry[61]~102_combout\ <= NOT \carry[61]~102_combout\;
\ALT_INV_carry~113_combout\ <= NOT \carry~113_combout\;
\ALT_INV_carry[60]~97_combout\ <= NOT \carry[60]~97_combout\;
\ALT_INV_carry[61]~101_combout\ <= NOT \carry[61]~101_combout\;
\ALT_INV_G_array~200_combout\ <= NOT \G_array~200_combout\;
\ALT_INV_carry[62]~107_combout\ <= NOT \carry[62]~107_combout\;
\ALT_INV_carry~111_combout\ <= NOT \carry~111_combout\;
\ALT_INV_G_array[1][60]~197_combout\ <= NOT \G_array[1][60]~197_combout\;
\ALT_INV_G_array~202_combout\ <= NOT \G_array~202_combout\;
\ALT_INV_carry~108_combout\ <= NOT \carry~108_combout\;
\ALT_INV_carry[62]~104_combout\ <= NOT \carry[62]~104_combout\;
\ALT_INV_carry[63]~109_combout\ <= NOT \carry[63]~109_combout\;
\ALT_INV_carry[10]~115_combout\ <= NOT \carry[10]~115_combout\;
\ALT_INV_carry[61]~100_combout\ <= NOT \carry[61]~100_combout\;
\ALT_INV_G_array~199_combout\ <= NOT \G_array~199_combout\;
\ALT_INV_P_array[4][62]~79_combout\ <= NOT \P_array[4][62]~79_combout\;
\ALT_INV_P_array[1][61]~combout\ <= NOT \P_array[1][61]~combout\;
\ALT_INV_carry[62]~105_combout\ <= NOT \carry[62]~105_combout\;
ALT_INV_p(62) <= NOT p(62);
\ALT_INV_P_array[4][62]~77_combout\ <= NOT \P_array[4][62]~77_combout\;
\ALT_INV_carry[60]~96_combout\ <= NOT \carry[60]~96_combout\;
ALT_INV_p(61) <= NOT p(61);
\ALT_INV_G_array[1][62]~201_combout\ <= NOT \G_array[1][62]~201_combout\;
\ALT_INV_carry[61]~99_combout\ <= NOT \carry[61]~99_combout\;
\ALT_INV_carry[63]~110_combout\ <= NOT \carry[63]~110_combout\;
\ALT_INV_P_array[4][63]~80_combout\ <= NOT \P_array[4][63]~80_combout\;
\ALT_INV_P_array[4][63]~81_combout\ <= NOT \P_array[4][63]~81_combout\;
\ALT_INV_P_array[4][63]~82_combout\ <= NOT \P_array[4][63]~82_combout\;
\ALT_INV_carry~112_combout\ <= NOT \carry~112_combout\;
\ALT_INV_G_array[1][63]~204_combout\ <= NOT \G_array[1][63]~204_combout\;
\ALT_INV_carry[60]~95_combout\ <= NOT \carry[60]~95_combout\;
\ALT_INV_G_array~203_combout\ <= NOT \G_array~203_combout\;
\ALT_INV_Cin~input_o\ <= NOT \Cin~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_A[7]~input_o\ <= NOT \A[7]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_B[5]~input_o\ <= NOT \B[5]~input_o\;
\ALT_INV_B[6]~input_o\ <= NOT \B[6]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[5]~input_o\ <= NOT \A[5]~input_o\;
\ALT_INV_A[6]~input_o\ <= NOT \A[6]~input_o\;
\ALT_INV_B[17]~input_o\ <= NOT \B[17]~input_o\;
\ALT_INV_A[24]~input_o\ <= NOT \A[24]~input_o\;
\ALT_INV_B[19]~input_o\ <= NOT \B[19]~input_o\;
\ALT_INV_A[20]~input_o\ <= NOT \A[20]~input_o\;
\ALT_INV_A[38]~input_o\ <= NOT \A[38]~input_o\;
\ALT_INV_B[8]~input_o\ <= NOT \B[8]~input_o\;
\ALT_INV_B[38]~input_o\ <= NOT \B[38]~input_o\;
\ALT_INV_A[39]~input_o\ <= NOT \A[39]~input_o\;
\ALT_INV_A[8]~input_o\ <= NOT \A[8]~input_o\;
\ALT_INV_B[13]~input_o\ <= NOT \B[13]~input_o\;
\ALT_INV_B[16]~input_o\ <= NOT \B[16]~input_o\;
\ALT_INV_B[20]~input_o\ <= NOT \B[20]~input_o\;
\ALT_INV_A[22]~input_o\ <= NOT \A[22]~input_o\;
\ALT_INV_A[31]~input_o\ <= NOT \A[31]~input_o\;
\ALT_INV_A[32]~input_o\ <= NOT \A[32]~input_o\;
\ALT_INV_B[35]~input_o\ <= NOT \B[35]~input_o\;
\ALT_INV_B[12]~input_o\ <= NOT \B[12]~input_o\;
\ALT_INV_A[9]~input_o\ <= NOT \A[9]~input_o\;
\ALT_INV_B[29]~input_o\ <= NOT \B[29]~input_o\;
\ALT_INV_A[14]~input_o\ <= NOT \A[14]~input_o\;
\ALT_INV_B[18]~input_o\ <= NOT \B[18]~input_o\;
\ALT_INV_B[28]~input_o\ <= NOT \B[28]~input_o\;
\ALT_INV_B[32]~input_o\ <= NOT \B[32]~input_o\;
\ALT_INV_A[12]~input_o\ <= NOT \A[12]~input_o\;
\ALT_INV_A[16]~input_o\ <= NOT \A[16]~input_o\;
\ALT_INV_B[14]~input_o\ <= NOT \B[14]~input_o\;
\ALT_INV_B[21]~input_o\ <= NOT \B[21]~input_o\;
\ALT_INV_A[21]~input_o\ <= NOT \A[21]~input_o\;
\ALT_INV_B[30]~input_o\ <= NOT \B[30]~input_o\;
\ALT_INV_A[35]~input_o\ <= NOT \A[35]~input_o\;
\ALT_INV_A[36]~input_o\ <= NOT \A[36]~input_o\;
\ALT_INV_A[26]~input_o\ <= NOT \A[26]~input_o\;
\ALT_INV_A[17]~input_o\ <= NOT \A[17]~input_o\;
\ALT_INV_A[33]~input_o\ <= NOT \A[33]~input_o\;
\ALT_INV_B[10]~input_o\ <= NOT \B[10]~input_o\;
\ALT_INV_B[22]~input_o\ <= NOT \B[22]~input_o\;
\ALT_INV_B[31]~input_o\ <= NOT \B[31]~input_o\;
\ALT_INV_B[9]~input_o\ <= NOT \B[9]~input_o\;
\ALT_INV_A[10]~input_o\ <= NOT \A[10]~input_o\;
\ALT_INV_B[11]~input_o\ <= NOT \B[11]~input_o\;
\ALT_INV_B[34]~input_o\ <= NOT \B[34]~input_o\;
\ALT_INV_B[36]~input_o\ <= NOT \B[36]~input_o\;
\ALT_INV_B[23]~input_o\ <= NOT \B[23]~input_o\;
\ALT_INV_A[15]~input_o\ <= NOT \A[15]~input_o\;
\ALT_INV_A[11]~input_o\ <= NOT \A[11]~input_o\;
\ALT_INV_B[27]~input_o\ <= NOT \B[27]~input_o\;
\ALT_INV_A[30]~input_o\ <= NOT \A[30]~input_o\;
\ALT_INV_A[19]~input_o\ <= NOT \A[19]~input_o\;
\ALT_INV_A[29]~input_o\ <= NOT \A[29]~input_o\;
\ALT_INV_A[28]~input_o\ <= NOT \A[28]~input_o\;
\ALT_INV_A[34]~input_o\ <= NOT \A[34]~input_o\;
\ALT_INV_B[15]~input_o\ <= NOT \B[15]~input_o\;
\ALT_INV_A[18]~input_o\ <= NOT \A[18]~input_o\;
\ALT_INV_A[25]~input_o\ <= NOT \A[25]~input_o\;
\ALT_INV_B[25]~input_o\ <= NOT \B[25]~input_o\;
\ALT_INV_B[26]~input_o\ <= NOT \B[26]~input_o\;
\ALT_INV_B[7]~input_o\ <= NOT \B[7]~input_o\;
\ALT_INV_A[13]~input_o\ <= NOT \A[13]~input_o\;
\ALT_INV_B[33]~input_o\ <= NOT \B[33]~input_o\;
\ALT_INV_A[23]~input_o\ <= NOT \A[23]~input_o\;
\ALT_INV_A[37]~input_o\ <= NOT \A[37]~input_o\;
\ALT_INV_B[24]~input_o\ <= NOT \B[24]~input_o\;
\ALT_INV_A[27]~input_o\ <= NOT \A[27]~input_o\;
\ALT_INV_B[37]~input_o\ <= NOT \B[37]~input_o\;
\ALT_INV_A[59]~input_o\ <= NOT \A[59]~input_o\;
\ALT_INV_A[45]~input_o\ <= NOT \A[45]~input_o\;
\ALT_INV_B[39]~input_o\ <= NOT \B[39]~input_o\;
\ALT_INV_A[40]~input_o\ <= NOT \A[40]~input_o\;
\ALT_INV_A[44]~input_o\ <= NOT \A[44]~input_o\;
\ALT_INV_A[55]~input_o\ <= NOT \A[55]~input_o\;
\ALT_INV_B[55]~input_o\ <= NOT \B[55]~input_o\;
\ALT_INV_B[47]~input_o\ <= NOT \B[47]~input_o\;
\ALT_INV_B[44]~input_o\ <= NOT \B[44]~input_o\;
\ALT_INV_B[52]~input_o\ <= NOT \B[52]~input_o\;
\ALT_INV_A[56]~input_o\ <= NOT \A[56]~input_o\;
\ALT_INV_A[57]~input_o\ <= NOT \A[57]~input_o\;
\ALT_INV_B[50]~input_o\ <= NOT \B[50]~input_o\;
\ALT_INV_B[58]~input_o\ <= NOT \B[58]~input_o\;
\ALT_INV_B[46]~input_o\ <= NOT \B[46]~input_o\;
\ALT_INV_B[51]~input_o\ <= NOT \B[51]~input_o\;
\ALT_INV_A[61]~input_o\ <= NOT \A[61]~input_o\;
\ALT_INV_A[48]~input_o\ <= NOT \A[48]~input_o\;
\ALT_INV_A[62]~input_o\ <= NOT \A[62]~input_o\;
\ALT_INV_A[63]~input_o\ <= NOT \A[63]~input_o\;
\ALT_INV_A[46]~input_o\ <= NOT \A[46]~input_o\;
\ALT_INV_A[50]~input_o\ <= NOT \A[50]~input_o\;
\ALT_INV_B[41]~input_o\ <= NOT \B[41]~input_o\;
\ALT_INV_B[48]~input_o\ <= NOT \B[48]~input_o\;
\ALT_INV_A[51]~input_o\ <= NOT \A[51]~input_o\;
\ALT_INV_B[63]~input_o\ <= NOT \B[63]~input_o\;
\ALT_INV_B[40]~input_o\ <= NOT \B[40]~input_o\;
\ALT_INV_A[43]~input_o\ <= NOT \A[43]~input_o\;
\ALT_INV_A[53]~input_o\ <= NOT \A[53]~input_o\;
\ALT_INV_B[42]~input_o\ <= NOT \B[42]~input_o\;
\ALT_INV_B[56]~input_o\ <= NOT \B[56]~input_o\;
\ALT_INV_A[60]~input_o\ <= NOT \A[60]~input_o\;
\ALT_INV_A[42]~input_o\ <= NOT \A[42]~input_o\;
\ALT_INV_B[53]~input_o\ <= NOT \B[53]~input_o\;
\ALT_INV_B[43]~input_o\ <= NOT \B[43]~input_o\;
\ALT_INV_A[49]~input_o\ <= NOT \A[49]~input_o\;
\ALT_INV_A[52]~input_o\ <= NOT \A[52]~input_o\;
\ALT_INV_B[57]~input_o\ <= NOT \B[57]~input_o\;
\ALT_INV_A[58]~input_o\ <= NOT \A[58]~input_o\;
\ALT_INV_B[59]~input_o\ <= NOT \B[59]~input_o\;
\ALT_INV_B[60]~input_o\ <= NOT \B[60]~input_o\;
\ALT_INV_B[61]~input_o\ <= NOT \B[61]~input_o\;
\ALT_INV_B[49]~input_o\ <= NOT \B[49]~input_o\;
\ALT_INV_B[62]~input_o\ <= NOT \B[62]~input_o\;
\ALT_INV_A[47]~input_o\ <= NOT \A[47]~input_o\;
\ALT_INV_A[54]~input_o\ <= NOT \A[54]~input_o\;
\ALT_INV_B[45]~input_o\ <= NOT \B[45]~input_o\;
\ALT_INV_A[41]~input_o\ <= NOT \A[41]~input_o\;
\ALT_INV_B[54]~input_o\ <= NOT \B[54]~input_o\;
ALT_INV_p(2) <= NOT p(2);
\ALT_INV_G_array[6][2]~combout\ <= NOT \G_array[6][2]~combout\;
\ALT_INV_carry[11]~1_combout\ <= NOT \carry[11]~1_combout\;
\ALT_INV_G_array[1][4]~4_combout\ <= NOT \G_array[1][4]~4_combout\;
ALT_INV_carry(4) <= NOT carry(4);
ALT_INV_p(5) <= NOT p(5);
\ALT_INV_P_array[3][8]~0_combout\ <= NOT \P_array[3][8]~0_combout\;
\ALT_INV_G_array[1][6]~11_combout\ <= NOT \G_array[1][6]~11_combout\;
\ALT_INV_carry~5_combout\ <= NOT \carry~5_combout\;
\ALT_INV_G_array~15_combout\ <= NOT \G_array~15_combout\;
\ALT_INV_G_array[6][7]~combout\ <= NOT \G_array[6][7]~combout\;
\ALT_INV_G_array[1][3]~2_combout\ <= NOT \G_array[1][3]~2_combout\;
\ALT_INV_G_array~8_combout\ <= NOT \G_array~8_combout\;
\ALT_INV_G_array[1][8]~16_combout\ <= NOT \G_array[1][8]~16_combout\;
\ALT_INV_G_array~17_combout\ <= NOT \G_array~17_combout\;
\ALT_INV_P_array[2][8]~1_combout\ <= NOT \P_array[2][8]~1_combout\;
\ALT_INV_G_array~18_combout\ <= NOT \G_array~18_combout\;
\ALT_INV_G_array~10_combout\ <= NOT \G_array~10_combout\;
\ALT_INV_G_array[3][8]~combout\ <= NOT \G_array[3][8]~combout\;
\ALT_INV_carry[25]~6_combout\ <= NOT \carry[25]~6_combout\;
\ALT_INV_G_array[1][9]~19_combout\ <= NOT \G_array[1][9]~19_combout\;
\ALT_INV_P_array[2][9]~2_combout\ <= NOT \P_array[2][9]~2_combout\;
ALT_INV_carry(8) <= NOT carry(8);
\ALT_INV_G_array~20_combout\ <= NOT \G_array~20_combout\;
\ALT_INV_carry~0_combout\ <= NOT \carry~0_combout\;
ALT_INV_p(3) <= NOT p(3);
\ALT_INV_G_array[1][5]~6_combout\ <= NOT \G_array[1][5]~6_combout\;
\ALT_INV_G_array~13_combout\ <= NOT \G_array~13_combout\;
ALT_INV_carry(5) <= NOT carry(5);
\ALT_INV_G_array[1][2]~1_combout\ <= NOT \G_array[1][2]~1_combout\;
\ALT_INV_carry~3_combout\ <= NOT \carry~3_combout\;
\ALT_INV_carry~2_combout\ <= NOT \carry~2_combout\;
\ALT_INV_G_array~5_combout\ <= NOT \G_array~5_combout\;
\ALT_INV_G_array[6][1]~0_combout\ <= NOT \G_array[6][1]~0_combout\;
\ALT_INV_G_array~9_combout\ <= NOT \G_array~9_combout\;
\ALT_INV_carry~4_combout\ <= NOT \carry~4_combout\;
\ALT_INV_G_array[6][6]~12_combout\ <= NOT \G_array[6][6]~12_combout\;
\ALT_INV_G_array~3_combout\ <= NOT \G_array~3_combout\;
\ALT_INV_G_array[6][5]~combout\ <= NOT \G_array[6][5]~combout\;
\ALT_INV_G_array[1][7]~14_combout\ <= NOT \G_array[1][7]~14_combout\;
\ALT_INV_G_array~7_combout\ <= NOT \G_array~7_combout\;
\ALT_INV_G_array[1][14]~36_combout\ <= NOT \G_array[1][14]~36_combout\;
\ALT_INV_P_array[2][13]~6_combout\ <= NOT \P_array[2][13]~6_combout\;
\ALT_INV_G_array[3][10]~combout\ <= NOT \G_array[3][10]~combout\;
\ALT_INV_G_array[1][12]~28_combout\ <= NOT \G_array[1][12]~28_combout\;
ALT_INV_carry(15) <= NOT carry(15);
\ALT_INV_P_array[2][15]~8_combout\ <= NOT \P_array[2][15]~8_combout\;
\ALT_INV_G_array~46_combout\ <= NOT \G_array~46_combout\;
\ALT_INV_P_array[2][17]~10_combout\ <= NOT \P_array[2][17]~10_combout\;
\ALT_INV_G_array~22_combout\ <= NOT \G_array~22_combout\;
\ALT_INV_carry[27]~9_combout\ <= NOT \carry[27]~9_combout\;
\ALT_INV_G_array~25_combout\ <= NOT \G_array~25_combout\;
\ALT_INV_carry[12]~10_combout\ <= NOT \carry[12]~10_combout\;
\ALT_INV_carry[36]~11_combout\ <= NOT \carry[36]~11_combout\;
\ALT_INV_G_array[3][12]~combout\ <= NOT \G_array[3][12]~combout\;
\ALT_INV_P_array[2][10]~3_combout\ <= NOT \P_array[2][10]~3_combout\;
\ALT_INV_G_array~30_combout\ <= NOT \G_array~30_combout\;
\ALT_INV_G_array~31_combout\ <= NOT \G_array~31_combout\;
\ALT_INV_G_array[3][13]~combout\ <= NOT \G_array[3][13]~combout\;
\ALT_INV_G_array~34_combout\ <= NOT \G_array~34_combout\;
\ALT_INV_P_array[2][14]~7_combout\ <= NOT \P_array[2][14]~7_combout\;
\ALT_INV_G_array[3][14]~combout\ <= NOT \G_array[3][14]~combout\;
\ALT_INV_G_array~35_combout\ <= NOT \G_array~35_combout\;
\ALT_INV_carry~16_combout\ <= NOT \carry~16_combout\;
\ALT_INV_G_array~39_combout\ <= NOT \G_array~39_combout\;
\ALT_INV_carry[37]~13_combout\ <= NOT \carry[37]~13_combout\;
\ALT_INV_G_array[1][15]~40_combout\ <= NOT \G_array[1][15]~40_combout\;
ALT_INV_carry(16) <= NOT carry(16);
\ALT_INV_G_array~33_combout\ <= NOT \G_array~33_combout\;
ALT_INV_carry(14) <= NOT carry(14);
\ALT_INV_G_array~37_combout\ <= NOT \G_array~37_combout\;
\ALT_INV_G_array~42_combout\ <= NOT \G_array~42_combout\;
\ALT_INV_carry~14_combout\ <= NOT \carry~14_combout\;
\ALT_INV_G_array~43_combout\ <= NOT \G_array~43_combout\;
\ALT_INV_G_array[1][16]~44_combout\ <= NOT \G_array[1][16]~44_combout\;
\ALT_INV_G_array[1][13]~32_combout\ <= NOT \G_array[1][13]~32_combout\;
\ALT_INV_G_array~23_combout\ <= NOT \G_array~23_combout\;
\ALT_INV_G_array[3][11]~combout\ <= NOT \G_array[3][11]~combout\;
\ALT_INV_G_array~26_combout\ <= NOT \G_array~26_combout\;
\ALT_INV_carry[11]~8_combout\ <= NOT \carry[11]~8_combout\;
\ALT_INV_G_array[3][9]~combout\ <= NOT \G_array[3][9]~combout\;
\ALT_INV_carry[10]~7_combout\ <= NOT \carry[10]~7_combout\;
\ALT_INV_G_array[1][10]~21_combout\ <= NOT \G_array[1][10]~21_combout\;
\ALT_INV_P_array[2][11]~4_combout\ <= NOT \P_array[2][11]~4_combout\;
\ALT_INV_G_array~29_combout\ <= NOT \G_array~29_combout\;
\ALT_INV_P_array[2][12]~5_combout\ <= NOT \P_array[2][12]~5_combout\;
\ALT_INV_carry~15_combout\ <= NOT \carry~15_combout\;
\ALT_INV_carry[13]~12_combout\ <= NOT \carry[13]~12_combout\;
\ALT_INV_G_array~38_combout\ <= NOT \G_array~38_combout\;
\ALT_INV_G_array~27_combout\ <= NOT \G_array~27_combout\;
\ALT_INV_G_array~41_combout\ <= NOT \G_array~41_combout\;
\ALT_INV_G_array~45_combout\ <= NOT \G_array~45_combout\;
\ALT_INV_G_array[3][16]~combout\ <= NOT \G_array[3][16]~combout\;
\ALT_INV_carry[17]~17_combout\ <= NOT \carry[17]~17_combout\;
\ALT_INV_G_array[1][11]~24_combout\ <= NOT \G_array[1][11]~24_combout\;
\ALT_INV_G_array[3][15]~combout\ <= NOT \G_array[3][15]~combout\;
\ALT_INV_P_array[2][16]~9_combout\ <= NOT \P_array[2][16]~9_combout\;
\ALT_INV_G_array~70_combout\ <= NOT \G_array~70_combout\;
\ALT_INV_G_array[1][22]~68_combout\ <= NOT \G_array[1][22]~68_combout\;
\ALT_INV_P_array[2][19]~12_combout\ <= NOT \P_array[2][19]~12_combout\;
\ALT_INV_G_array[1][19]~57_combout\ <= NOT \G_array[1][19]~57_combout\;
\ALT_INV_G_array~49_combout\ <= NOT \G_array~49_combout\;
\ALT_INV_G_array~61_combout\ <= NOT \G_array~61_combout\;
\ALT_INV_P_array[2][20]~13_combout\ <= NOT \P_array[2][20]~13_combout\;
\ALT_INV_P_array[2][21]~14_combout\ <= NOT \P_array[2][21]~14_combout\;
\ALT_INV_G_array~67_combout\ <= NOT \G_array~67_combout\;
\ALT_INV_carry[20]~21_combout\ <= NOT \carry[20]~21_combout\;
\ALT_INV_carry[18]~18_combout\ <= NOT \carry[18]~18_combout\;
\ALT_INV_P_array[2][23]~16_combout\ <= NOT \P_array[2][23]~16_combout\;
\ALT_INV_G_array[3][17]~combout\ <= NOT \G_array[3][17]~combout\;
\ALT_INV_G_array[3][18]~combout\ <= NOT \G_array[3][18]~combout\;
\ALT_INV_carry[22]~25_combout\ <= NOT \carry[22]~25_combout\;
\ALT_INV_carry[39]~26_combout\ <= NOT \carry[39]~26_combout\;
\ALT_INV_G_array[1][23]~71_combout\ <= NOT \G_array[1][23]~71_combout\;
\ALT_INV_G_array[3][23]~combout\ <= NOT \G_array[3][23]~combout\;
ALT_INV_carry(24) <= NOT carry(24);
\ALT_INV_G_array~73_combout\ <= NOT \G_array~73_combout\;
\ALT_INV_G_array~74_combout\ <= NOT \G_array~74_combout\;
\ALT_INV_carry[41]~29_combout\ <= NOT \carry[41]~29_combout\;
\ALT_INV_G_array[1][17]~48_combout\ <= NOT \G_array[1][17]~48_combout\;
\ALT_INV_G_array~50_combout\ <= NOT \G_array~50_combout\;
\ALT_INV_P_array[2][18]~11_combout\ <= NOT \P_array[2][18]~11_combout\;
\ALT_INV_G_array~69_combout\ <= NOT \G_array~69_combout\;
\ALT_INV_P_array[2][24]~17_combout\ <= NOT \P_array[2][24]~17_combout\;
\ALT_INV_G_array[1][24]~75_combout\ <= NOT \G_array[1][24]~75_combout\;
\ALT_INV_G_array~52_combout\ <= NOT \G_array~52_combout\;
\ALT_INV_G_array~76_combout\ <= NOT \G_array~76_combout\;
\ALT_INV_carry[35]~19_combout\ <= NOT \carry[35]~19_combout\;
\ALT_INV_G_array[1][20]~60_combout\ <= NOT \G_array[1][20]~60_combout\;
\ALT_INV_carry[21]~23_combout\ <= NOT \carry[21]~23_combout\;
\ALT_INV_G_array~54_combout\ <= NOT \G_array~54_combout\;
\ALT_INV_G_array~55_combout\ <= NOT \G_array~55_combout\;
\ALT_INV_G_array~65_combout\ <= NOT \G_array~65_combout\;
\ALT_INV_G_array[1][21]~64_combout\ <= NOT \G_array[1][21]~64_combout\;
\ALT_INV_G_array~51_combout\ <= NOT \G_array~51_combout\;
\ALT_INV_G_array~63_combout\ <= NOT \G_array~63_combout\;
\ALT_INV_G_array~47_combout\ <= NOT \G_array~47_combout\;
\ALT_INV_G_array~59_combout\ <= NOT \G_array~59_combout\;
\ALT_INV_G_array[3][19]~combout\ <= NOT \G_array[3][19]~combout\;
\ALT_INV_carry[38]~24_combout\ <= NOT \carry[38]~24_combout\;
\ALT_INV_G_array~58_combout\ <= NOT \G_array~58_combout\;
\ALT_INV_carry[19]~20_combout\ <= NOT \carry[19]~20_combout\;
\ALT_INV_carry[21]~22_combout\ <= NOT \carry[21]~22_combout\;
\ALT_INV_G_array[3][21]~combout\ <= NOT \G_array[3][21]~combout\;
\ALT_INV_G_array~66_combout\ <= NOT \G_array~66_combout\;
\ALT_INV_G_array[3][22]~combout\ <= NOT \G_array[3][22]~combout\;
\ALT_INV_carry[23]~27_combout\ <= NOT \carry[23]~27_combout\;
\ALT_INV_G_array[1][18]~53_combout\ <= NOT \G_array[1][18]~53_combout\;
\ALT_INV_G_array~72_combout\ <= NOT \G_array~72_combout\;
\ALT_INV_G_array~56_combout\ <= NOT \G_array~56_combout\;
\ALT_INV_carry[24]~28_combout\ <= NOT \carry[24]~28_combout\;
\ALT_INV_G_array[3][20]~combout\ <= NOT \G_array[3][20]~combout\;
\ALT_INV_G_array~62_combout\ <= NOT \G_array~62_combout\;
\ALT_INV_P_array[2][22]~15_combout\ <= NOT \P_array[2][22]~15_combout\;
\ALT_INV_G_array[1][25]~79_combout\ <= NOT \G_array[1][25]~79_combout\;
\ALT_INV_P_array[2][27]~20_combout\ <= NOT \P_array[2][27]~20_combout\;
\ALT_INV_G_array~85_combout\ <= NOT \G_array~85_combout\;
\ALT_INV_P_array[2][28]~22_combout\ <= NOT \P_array[2][28]~22_combout\;
\ALT_INV_G_array[1][28]~93_combout\ <= NOT \G_array[1][28]~93_combout\;
\ALT_INV_G_array~94_combout\ <= NOT \G_array~94_combout\;
\ALT_INV_G_array~100_combout\ <= NOT \G_array~100_combout\;
\ALT_INV_G_array~78_combout\ <= NOT \G_array~78_combout\;
\ALT_INV_G_array[1][26]~83_combout\ <= NOT \G_array[1][26]~83_combout\;
\ALT_INV_G_array~86_combout\ <= NOT \G_array~86_combout\;
\ALT_INV_G_array[3][27]~combout\ <= NOT \G_array[3][27]~combout\;
\ALT_INV_G_array~91_combout\ <= NOT \G_array~91_combout\;
\ALT_INV_G_array~90_combout\ <= NOT \G_array~90_combout\;
\ALT_INV_P_array[2][25]~18_combout\ <= NOT \P_array[2][25]~18_combout\;
\ALT_INV_carry[42]~31_combout\ <= NOT \carry[42]~31_combout\;
\ALT_INV_G_array[3][24]~combout\ <= NOT \G_array[3][24]~combout\;
\ALT_INV_carry[26]~32_combout\ <= NOT \carry[26]~32_combout\;
\ALT_INV_G_array~84_combout\ <= NOT \G_array~84_combout\;
\ALT_INV_G_array[1][27]~88_combout\ <= NOT \G_array[1][27]~88_combout\;
\ALT_INV_G_array[3][28]~combout\ <= NOT \G_array[3][28]~combout\;
\ALT_INV_G_array~95_combout\ <= NOT \G_array~95_combout\;
\ALT_INV_P_array[2][30]~26_combout\ <= NOT \P_array[2][30]~26_combout\;
\ALT_INV_G_array~97_combout\ <= NOT \G_array~97_combout\;
\ALT_INV_G_array~92_combout\ <= NOT \G_array~92_combout\;
\ALT_INV_G_array~99_combout\ <= NOT \G_array~99_combout\;
\ALT_INV_G_array~101_combout\ <= NOT \G_array~101_combout\;
\ALT_INV_carry[28]~34_combout\ <= NOT \carry[28]~34_combout\;
\ALT_INV_G_array[3][29]~combout\ <= NOT \G_array[3][29]~combout\;
\ALT_INV_G_array~104_combout\ <= NOT \G_array~104_combout\;
\ALT_INV_G_array~105_combout\ <= NOT \G_array~105_combout\;
\ALT_INV_G_array~81_combout\ <= NOT \G_array~81_combout\;
\ALT_INV_G_array[3][25]~combout\ <= NOT \G_array[3][25]~combout\;
\ALT_INV_G_array~89_combout\ <= NOT \G_array~89_combout\;
\ALT_INV_G_array~82_combout\ <= NOT \G_array~82_combout\;
\ALT_INV_P_array[4][27]~21_combout\ <= NOT \P_array[4][27]~21_combout\;
\ALT_INV_P_array[4][28]~23_combout\ <= NOT \P_array[4][28]~23_combout\;
\ALT_INV_G_array[3][30]~combout\ <= NOT \G_array[3][30]~combout\;
\ALT_INV_G_array~106_combout\ <= NOT \G_array~106_combout\;
\ALT_INV_G_array~87_combout\ <= NOT \G_array~87_combout\;
\ALT_INV_G_array[1][30]~103_combout\ <= NOT \G_array[1][30]~103_combout\;
\ALT_INV_P_array[2][31]~28_combout\ <= NOT \P_array[2][31]~28_combout\;
\ALT_INV_G_array[1][29]~98_combout\ <= NOT \G_array[1][29]~98_combout\;
\ALT_INV_carry[25]~30_combout\ <= NOT \carry[25]~30_combout\;
\ALT_INV_carry[27]~33_combout\ <= NOT \carry[27]~33_combout\;
\ALT_INV_G_array~102_combout\ <= NOT \G_array~102_combout\;
\ALT_INV_carry[29]~35_combout\ <= NOT \carry[29]~35_combout\;
\ALT_INV_P_array[4][31]~29_combout\ <= NOT \P_array[4][31]~29_combout\;
\ALT_INV_G_array[6][30]~combout\ <= NOT \G_array[6][30]~combout\;
\ALT_INV_G_array~96_combout\ <= NOT \G_array~96_combout\;
\ALT_INV_G_array~77_combout\ <= NOT \G_array~77_combout\;
\ALT_INV_G_array~80_combout\ <= NOT \G_array~80_combout\;
\ALT_INV_P_array[2][26]~19_combout\ <= NOT \P_array[2][26]~19_combout\;
\ALT_INV_P_array[4][29]~25_combout\ <= NOT \P_array[4][29]~25_combout\;
ALT_INV_carry(30) <= NOT carry(30);
\ALT_INV_G_array[3][26]~combout\ <= NOT \G_array[3][26]~combout\;
\ALT_INV_P_array[2][29]~24_combout\ <= NOT \P_array[2][29]~24_combout\;
\ALT_INV_P_array[4][30]~27_combout\ <= NOT \P_array[4][30]~27_combout\;
\ALT_INV_G_array~110_combout\ <= NOT \G_array~110_combout\;
\ALT_INV_P_array[2][36]~38_combout\ <= NOT \P_array[2][36]~38_combout\;
\ALT_INV_P_array[2][35]~36_combout\ <= NOT \P_array[2][35]~36_combout\;
\ALT_INV_G_array~124_combout\ <= NOT \G_array~124_combout\;
\ALT_INV_carry[37]~41_combout\ <= NOT \carry[37]~41_combout\;
\ALT_INV_G_array[6][31]~combout\ <= NOT \G_array[6][31]~combout\;
\ALT_INV_G_array~119_combout\ <= NOT \G_array~119_combout\;
\ALT_INV_G_array~116_combout\ <= NOT \G_array~116_combout\;
\ALT_INV_P_array[2][37]~40_combout\ <= NOT \P_array[2][37]~40_combout\;
\ALT_INV_G_array[3][31]~combout\ <= NOT \G_array[3][31]~combout\;
\ALT_INV_G_array~121_combout\ <= NOT \G_array~121_combout\;
\ALT_INV_G_array~125_combout\ <= NOT \G_array~125_combout\;
\ALT_INV_carry[36]~39_combout\ <= NOT \carry[36]~39_combout\;
\ALT_INV_G_array[1][36]~126_combout\ <= NOT \G_array[1][36]~126_combout\;
\ALT_INV_carry[33]~36_combout\ <= NOT \carry[33]~36_combout\;
\ALT_INV_G_array~128_combout\ <= NOT \G_array~128_combout\;
\ALT_INV_G_array[1][37]~129_combout\ <= NOT \G_array[1][37]~129_combout\;
\ALT_INV_G_array~131_combout\ <= NOT \G_array~131_combout\;
\ALT_INV_G_array[3][32]~combout\ <= NOT \G_array[3][32]~combout\;
\ALT_INV_carry[38]~42_combout\ <= NOT \carry[38]~42_combout\;
\ALT_INV_G_array~114_combout\ <= NOT \G_array~114_combout\;
\ALT_INV_G_array~132_combout\ <= NOT \G_array~132_combout\;
\ALT_INV_P_array[4][37]~42_combout\ <= NOT \P_array[4][37]~42_combout\;
\ALT_INV_G_array~130_combout\ <= NOT \G_array~130_combout\;
\ALT_INV_P_array[4][35]~37_combout\ <= NOT \P_array[4][35]~37_combout\;
\ALT_INV_P_array[2][38]~43_combout\ <= NOT \P_array[2][38]~43_combout\;
\ALT_INV_P_array[4][38]~44_combout\ <= NOT \P_array[4][38]~44_combout\;
\ALT_INV_P_array[4][38]~45_combout\ <= NOT \P_array[4][38]~45_combout\;
\ALT_INV_G_array~108_combout\ <= NOT \G_array~108_combout\;
\ALT_INV_G_array[1][32]~111_combout\ <= NOT \G_array[1][32]~111_combout\;
\ALT_INV_P_array[4][36]~39_combout\ <= NOT \P_array[4][36]~39_combout\;
\ALT_INV_P_array[2][32]~30_combout\ <= NOT \P_array[2][32]~30_combout\;
\ALT_INV_G_array[3][37]~combout\ <= NOT \G_array[3][37]~combout\;
\ALT_INV_P_array[2][34]~34_combout\ <= NOT \P_array[2][34]~34_combout\;
\ALT_INV_G_array[1][35]~123_combout\ <= NOT \G_array[1][35]~123_combout\;
\ALT_INV_carry[37]~40_combout\ <= NOT \carry[37]~40_combout\;
\ALT_INV_G_array[3][36]~combout\ <= NOT \G_array[3][36]~combout\;
\ALT_INV_G_array[1][31]~107_combout\ <= NOT \G_array[1][31]~107_combout\;
\ALT_INV_G_array~109_combout\ <= NOT \G_array~109_combout\;
\ALT_INV_G_array[1][33]~115_combout\ <= NOT \G_array[1][33]~115_combout\;
\ALT_INV_G_array~113_combout\ <= NOT \G_array~113_combout\;
\ALT_INV_G_array~112_combout\ <= NOT \G_array~112_combout\;
\ALT_INV_G_array[3][33]~combout\ <= NOT \G_array[3][33]~combout\;
\ALT_INV_carry[34]~37_combout\ <= NOT \carry[34]~37_combout\;
\ALT_INV_P_array[4][33]~33_combout\ <= NOT \P_array[4][33]~33_combout\;
\ALT_INV_G_array~117_combout\ <= NOT \G_array~117_combout\;
\ALT_INV_G_array[1][34]~118_combout\ <= NOT \G_array[1][34]~118_combout\;
\ALT_INV_G_array[3][34]~combout\ <= NOT \G_array[3][34]~combout\;
\ALT_INV_G_array~120_combout\ <= NOT \G_array~120_combout\;
\ALT_INV_carry[35]~38_combout\ <= NOT \carry[35]~38_combout\;
\ALT_INV_G_array~122_combout\ <= NOT \G_array~122_combout\;
\ALT_INV_G_array[3][35]~combout\ <= NOT \G_array[3][35]~combout\;
\ALT_INV_P_array[2][33]~32_combout\ <= NOT \P_array[2][33]~32_combout\;
\ALT_INV_G_array~127_combout\ <= NOT \G_array~127_combout\;
\ALT_INV_P_array[4][34]~35_combout\ <= NOT \P_array[4][34]~35_combout\;
\ALT_INV_P_array[4][32]~31_combout\ <= NOT \P_array[4][32]~31_combout\;
\ALT_INV_P_array[4][37]~41_combout\ <= NOT \P_array[4][37]~41_combout\;
\ALT_INV_G_array[3][39]~combout\ <= NOT \G_array[3][39]~combout\;
\ALT_INV_G_array~142_combout\ <= NOT \G_array~142_combout\;
\ALT_INV_G_array[1][39]~136_combout\ <= NOT \G_array[1][39]~136_combout\;
\ALT_INV_G_array~138_combout\ <= NOT \G_array~138_combout\;
\ALT_INV_G_array[3][42]~combout\ <= NOT \G_array[3][42]~combout\;
\ALT_INV_carry[43]~48_combout\ <= NOT \carry[43]~48_combout\;
\ALT_INV_P_array[4][39]~47_combout\ <= NOT \P_array[4][39]~47_combout\;
\ALT_INV_P_array[4][40]~50_combout\ <= NOT \P_array[4][40]~50_combout\;
\ALT_INV_carry[40]~44_combout\ <= NOT \carry[40]~44_combout\;
\ALT_INV_G_array[1][41]~145_combout\ <= NOT \G_array[1][41]~145_combout\;
\ALT_INV_P_array[4][41]~52_combout\ <= NOT \P_array[4][41]~52_combout\;
\ALT_INV_G_array~150_combout\ <= NOT \G_array~150_combout\;
\ALT_INV_carry[43]~49_combout\ <= NOT \carry[43]~49_combout\;
\ALT_INV_carry[41]~46_combout\ <= NOT \carry[41]~46_combout\;
\ALT_INV_G_array~151_combout\ <= NOT \G_array~151_combout\;
\ALT_INV_carry[39]~43_combout\ <= NOT \carry[39]~43_combout\;
\ALT_INV_G_array[1][43]~153_combout\ <= NOT \G_array[1][43]~153_combout\;
\ALT_INV_G_array[3][43]~combout\ <= NOT \G_array[3][43]~combout\;
\ALT_INV_P_array[2][43]~55_combout\ <= NOT \P_array[2][43]~55_combout\;
\ALT_INV_G_array~155_combout\ <= NOT \G_array~155_combout\;
\ALT_INV_G_array~137_combout\ <= NOT \G_array~137_combout\;
\ALT_INV_G_array~147_combout\ <= NOT \G_array~147_combout\;
\ALT_INV_P_array[4][43]~56_combout\ <= NOT \P_array[4][43]~56_combout\;
\ALT_INV_P_array[2][44]~57_combout\ <= NOT \P_array[2][44]~57_combout\;
\ALT_INV_P_array[4][44]~58_combout\ <= NOT \P_array[4][44]~58_combout\;
\ALT_INV_G_array~140_combout\ <= NOT \G_array~140_combout\;
\ALT_INV_G_array[3][41]~combout\ <= NOT \G_array[3][41]~combout\;
\ALT_INV_carry[44]~50_combout\ <= NOT \carry[44]~50_combout\;
\ALT_INV_G_array~158_combout\ <= NOT \G_array~158_combout\;
\ALT_INV_G_array[3][44]~combout\ <= NOT \G_array[3][44]~combout\;
\ALT_INV_carry[45]~51_combout\ <= NOT \carry[45]~51_combout\;
\ALT_INV_P_array[2][40]~49_combout\ <= NOT \P_array[2][40]~49_combout\;
\ALT_INV_G_array[3][40]~combout\ <= NOT \G_array[3][40]~combout\;
\ALT_INV_P_array[4][42]~54_combout\ <= NOT \P_array[4][42]~54_combout\;
\ALT_INV_G_array~159_combout\ <= NOT \G_array~159_combout\;
\ALT_INV_G_array~139_combout\ <= NOT \G_array~139_combout\;
\ALT_INV_G_array[1][44]~157_combout\ <= NOT \G_array[1][44]~157_combout\;
\ALT_INV_P_array[2][45]~59_combout\ <= NOT \P_array[2][45]~59_combout\;
\ALT_INV_carry[42]~47_combout\ <= NOT \carry[42]~47_combout\;
\ALT_INV_G_array[3][38]~combout\ <= NOT \G_array[3][38]~combout\;
\ALT_INV_G_array[1][40]~141_combout\ <= NOT \G_array[1][40]~141_combout\;
\ALT_INV_P_array[4][39]~48_combout\ <= NOT \P_array[4][39]~48_combout\;
\ALT_INV_G_array[1][38]~133_combout\ <= NOT \G_array[1][38]~133_combout\;
\ALT_INV_P_array[2][41]~51_combout\ <= NOT \P_array[2][41]~51_combout\;
\ALT_INV_G_array~143_combout\ <= NOT \G_array~143_combout\;
\ALT_INV_G_array~144_combout\ <= NOT \G_array~144_combout\;
\ALT_INV_G_array~146_combout\ <= NOT \G_array~146_combout\;
\ALT_INV_G_array~148_combout\ <= NOT \G_array~148_combout\;
\ALT_INV_G_array~152_combout\ <= NOT \G_array~152_combout\;
\ALT_INV_G_array~154_combout\ <= NOT \G_array~154_combout\;
\ALT_INV_G_array[1][42]~149_combout\ <= NOT \G_array[1][42]~149_combout\;
\ALT_INV_carry[40]~45_combout\ <= NOT \carry[40]~45_combout\;
\ALT_INV_G_array~156_combout\ <= NOT \G_array~156_combout\;
\ALT_INV_G_array~134_combout\ <= NOT \G_array~134_combout\;
\ALT_INV_P_array[2][39]~46_combout\ <= NOT \P_array[2][39]~46_combout\;
\ALT_INV_P_array[2][42]~53_combout\ <= NOT \P_array[2][42]~53_combout\;
\ALT_INV_G_array~135_combout\ <= NOT \G_array~135_combout\;
\ALT_INV_G_array~182_combout\ <= NOT \G_array~182_combout\;
\ALT_INV_G_array[3][50]~combout\ <= NOT \G_array[3][50]~combout\;
\ALT_INV_carry[49]~57_combout\ <= NOT \carry[49]~57_combout\;
\ALT_INV_G_array~173_combout\ <= NOT \G_array~173_combout\;
\ALT_INV_G_array~180_combout\ <= NOT \G_array~180_combout\;
\ALT_INV_carry[48]~54_combout\ <= NOT \carry[48]~54_combout\;
\ALT_INV_G_array~168_combout\ <= NOT \G_array~168_combout\;
\ALT_INV_P_array[2][49]~66_combout\ <= NOT \P_array[2][49]~66_combout\;
\ALT_INV_G_array~177_combout\ <= NOT \G_array~177_combout\;
\ALT_INV_G_array[1][47]~169_combout\ <= NOT \G_array[1][47]~169_combout\;
\ALT_INV_G_array[3][49]~combout\ <= NOT \G_array[3][49]~combout\;
\ALT_INV_G_array~170_combout\ <= NOT \G_array~170_combout\;
\ALT_INV_carry[49]~55_combout\ <= NOT \carry[49]~55_combout\;
\ALT_INV_carry[50]~62_combout\ <= NOT \carry[50]~62_combout\;
\ALT_INV_G_array~179_combout\ <= NOT \G_array~179_combout\;
\ALT_INV_G_array~164_combout\ <= NOT \G_array~164_combout\;
\ALT_INV_G_array~167_combout\ <= NOT \G_array~167_combout\;
\ALT_INV_G_array[1][46]~165_combout\ <= NOT \G_array[1][46]~165_combout\;
\ALT_INV_P_array[2][47]~63_combout\ <= NOT \P_array[2][47]~63_combout\;
\ALT_INV_G_array~171_combout\ <= NOT \G_array~171_combout\;
\ALT_INV_carry[50]~60_combout\ <= NOT \carry[50]~60_combout\;
\ALT_INV_G_array[1][50]~178_combout\ <= NOT \G_array[1][50]~178_combout\;
\ALT_INV_G_array[3][46]~combout\ <= NOT \G_array[3][46]~combout\;
\ALT_INV_G_array[1][51]~181_combout\ <= NOT \G_array[1][51]~181_combout\;
\ALT_INV_carry[52]~67_combout\ <= NOT \carry[52]~67_combout\;
\ALT_INV_carry[52]~68_combout\ <= NOT \carry[52]~68_combout\;
\ALT_INV_P_array[4][45]~60_combout\ <= NOT \P_array[4][45]~60_combout\;
\ALT_INV_carry[46]~52_combout\ <= NOT \carry[46]~52_combout\;
\ALT_INV_G_array~176_combout\ <= NOT \G_array~176_combout\;
\ALT_INV_carry[49]~56_combout\ <= NOT \carry[49]~56_combout\;
\ALT_INV_P_array[4][46]~62_combout\ <= NOT \P_array[4][46]~62_combout\;
\ALT_INV_carry[52]~66_combout\ <= NOT \carry[52]~66_combout\;
\ALT_INV_P_array[4][47]~64_combout\ <= NOT \P_array[4][47]~64_combout\;
\ALT_INV_carry[50]~59_combout\ <= NOT \carry[50]~59_combout\;
\ALT_INV_G_array[1][49]~175_combout\ <= NOT \G_array[1][49]~175_combout\;
\ALT_INV_P_array[2][51]~68_combout\ <= NOT \P_array[2][51]~68_combout\;
\ALT_INV_G_array[3][51]~combout\ <= NOT \G_array[3][51]~combout\;
\ALT_INV_G_array~160_combout\ <= NOT \G_array~160_combout\;
\ALT_INV_P_array[2][46]~61_combout\ <= NOT \P_array[2][46]~61_combout\;
\ALT_INV_P_array[2][48]~65_combout\ <= NOT \P_array[2][48]~65_combout\;
\ALT_INV_carry[49]~58_combout\ <= NOT \carry[49]~58_combout\;
\ALT_INV_G_array~163_combout\ <= NOT \G_array~163_combout\;
\ALT_INV_carry[47]~53_combout\ <= NOT \carry[47]~53_combout\;
\ALT_INV_G_array~174_combout\ <= NOT \G_array~174_combout\;
\ALT_INV_G_array~162_combout\ <= NOT \G_array~162_combout\;
\ALT_INV_carry[50]~61_combout\ <= NOT \carry[50]~61_combout\;
\ALT_INV_G_array[1][48]~172_combout\ <= NOT \G_array[1][48]~172_combout\;
\ALT_INV_G_array[1][45]~161_combout\ <= NOT \G_array[1][45]~161_combout\;
\ALT_INV_G_array[3][48]~combout\ <= NOT \G_array[3][48]~combout\;
\ALT_INV_G_array~166_combout\ <= NOT \G_array~166_combout\;
\ALT_INV_carry[51]~64_combout\ <= NOT \carry[51]~64_combout\;
\ALT_INV_G_array[3][45]~combout\ <= NOT \G_array[3][45]~combout\;
\ALT_INV_G_array[3][47]~combout\ <= NOT \G_array[3][47]~combout\;
\ALT_INV_P_array[2][50]~67_combout\ <= NOT \P_array[2][50]~67_combout\;
\ALT_INV_carry[51]~63_combout\ <= NOT \carry[51]~63_combout\;
\ALT_INV_carry[51]~65_combout\ <= NOT \carry[51]~65_combout\;

-- Location: IOOBUF_X23_Y56_N98
\S[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~0_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X31_Y56_N67
\S[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~1_combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X39_Y0_N36
\S[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~2_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X25_Y56_N33
\S[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~3_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X14_Y56_N67
\S[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~4_combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X30_Y56_N98
\S[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~5_combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X25_Y56_N5
\S[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~6_combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X59_Y49_N2
\S[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~7_combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X19_Y56_N2
\S[8]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~8_combout\,
	devoe => ww_devoe,
	o => \S[8]~output_o\);

-- Location: IOOBUF_X59_Y22_N98
\S[9]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~9_combout\,
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X59_Y18_N98
\S[10]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~10_combout\,
	devoe => ww_devoe,
	o => \S[10]~output_o\);

-- Location: IOOBUF_X35_Y56_N2
\S[11]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~11_combout\,
	devoe => ww_devoe,
	o => \S[11]~output_o\);

-- Location: IOOBUF_X30_Y56_N67
\S[12]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~12_combout\,
	devoe => ww_devoe,
	o => \S[12]~output_o\);

-- Location: IOOBUF_X33_Y56_N67
\S[13]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~13_combout\,
	devoe => ww_devoe,
	o => \S[13]~output_o\);

-- Location: IOOBUF_X28_Y56_N2
\S[14]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~14_combout\,
	devoe => ww_devoe,
	o => \S[14]~output_o\);

-- Location: IOOBUF_X23_Y56_N67
\S[15]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~15_combout\,
	devoe => ww_devoe,
	o => \S[15]~output_o\);

-- Location: IOOBUF_X36_Y56_N2
\S[16]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~16_combout\,
	devoe => ww_devoe,
	o => \S[16]~output_o\);

-- Location: IOOBUF_X36_Y56_N36
\S[17]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~17_combout\,
	devoe => ww_devoe,
	o => \S[17]~output_o\);

-- Location: IOOBUF_X14_Y56_N98
\S[18]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~18_combout\,
	devoe => ww_devoe,
	o => \S[18]~output_o\);

-- Location: IOOBUF_X28_Y56_N67
\S[19]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~19_combout\,
	devoe => ww_devoe,
	o => \S[19]~output_o\);

-- Location: IOOBUF_X12_Y56_N98
\S[20]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~20_combout\,
	devoe => ww_devoe,
	o => \S[20]~output_o\);

-- Location: IOOBUF_X30_Y56_N2
\S[21]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~21_combout\,
	devoe => ww_devoe,
	o => \S[21]~output_o\);

-- Location: IOOBUF_X15_Y56_N36
\S[22]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~22_combout\,
	devoe => ww_devoe,
	o => \S[22]~output_o\);

-- Location: IOOBUF_X46_Y56_N98
\S[23]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~23_combout\,
	devoe => ww_devoe,
	o => \S[23]~output_o\);

-- Location: IOOBUF_X59_Y48_N2
\S[24]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~24_combout\,
	devoe => ww_devoe,
	o => \S[24]~output_o\);

-- Location: IOOBUF_X55_Y56_N33
\S[25]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~25_combout\,
	devoe => ww_devoe,
	o => \S[25]~output_o\);

-- Location: IOOBUF_X59_Y25_N98
\S[26]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~26_combout\,
	devoe => ww_devoe,
	o => \S[26]~output_o\);

-- Location: IOOBUF_X59_Y18_N67
\S[27]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~27_combout\,
	devoe => ww_devoe,
	o => \S[27]~output_o\);

-- Location: IOOBUF_X59_Y51_N33
\S[28]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~28_combout\,
	devoe => ww_devoe,
	o => \S[28]~output_o\);

-- Location: IOOBUF_X49_Y56_N98
\S[29]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~29_combout\,
	devoe => ww_devoe,
	o => \S[29]~output_o\);

-- Location: IOOBUF_X59_Y21_N67
\S[30]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~30_combout\,
	devoe => ww_devoe,
	o => \S[30]~output_o\);

-- Location: IOOBUF_X55_Y56_N98
\S[31]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~31_combout\,
	devoe => ww_devoe,
	o => \S[31]~output_o\);

-- Location: IOOBUF_X59_Y26_N5
\S[32]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~32_combout\,
	devoe => ww_devoe,
	o => \S[32]~output_o\);

-- Location: IOOBUF_X40_Y56_N5
\S[33]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~33_combout\,
	devoe => ww_devoe,
	o => \S[33]~output_o\);

-- Location: IOOBUF_X59_Y37_N2
\S[34]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~34_combout\,
	devoe => ww_devoe,
	o => \S[34]~output_o\);

-- Location: IOOBUF_X8_Y56_N2
\S[35]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~35_combout\,
	devoe => ww_devoe,
	o => \S[35]~output_o\);

-- Location: IOOBUF_X59_Y9_N98
\S[36]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~36_combout\,
	devoe => ww_devoe,
	o => \S[36]~output_o\);

-- Location: IOOBUF_X51_Y56_N36
\S[37]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~37_combout\,
	devoe => ww_devoe,
	o => \S[37]~output_o\);

-- Location: IOOBUF_X51_Y56_N2
\S[38]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~38_combout\,
	devoe => ww_devoe,
	o => \S[38]~output_o\);

-- Location: IOOBUF_X46_Y56_N36
\S[39]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~39_combout\,
	devoe => ww_devoe,
	o => \S[39]~output_o\);

-- Location: IOOBUF_X59_Y19_N98
\S[40]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~40_combout\,
	devoe => ww_devoe,
	o => \S[40]~output_o\);

-- Location: IOOBUF_X59_Y26_N98
\S[41]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~41_combout\,
	devoe => ww_devoe,
	o => \S[41]~output_o\);

-- Location: IOOBUF_X59_Y33_N5
\S[42]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~42_combout\,
	devoe => ww_devoe,
	o => \S[42]~output_o\);

-- Location: IOOBUF_X55_Y56_N5
\S[43]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~43_combout\,
	devoe => ww_devoe,
	o => \S[43]~output_o\);

-- Location: IOOBUF_X59_Y23_N2
\S[44]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~44_combout\,
	devoe => ww_devoe,
	o => \S[44]~output_o\);

-- Location: IOOBUF_X42_Y56_N98
\S[45]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~45_combout\,
	devoe => ww_devoe,
	o => \S[45]~output_o\);

-- Location: IOOBUF_X59_Y23_N36
\S[46]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~46_combout\,
	devoe => ww_devoe,
	o => \S[46]~output_o\);

-- Location: IOOBUF_X49_Y56_N2
\S[47]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~47_combout\,
	devoe => ww_devoe,
	o => \S[47]~output_o\);

-- Location: IOOBUF_X59_Y39_N33
\S[48]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~48_combout\,
	devoe => ww_devoe,
	o => \S[48]~output_o\);

-- Location: IOOBUF_X51_Y56_N67
\S[49]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~49_combout\,
	devoe => ww_devoe,
	o => \S[49]~output_o\);

-- Location: IOOBUF_X59_Y30_N2
\S[50]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~50_combout\,
	devoe => ww_devoe,
	o => \S[50]~output_o\);

-- Location: IOOBUF_X46_Y56_N67
\S[51]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~51_combout\,
	devoe => ww_devoe,
	o => \S[51]~output_o\);

-- Location: IOOBUF_X59_Y22_N36
\S[52]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~52_combout\,
	devoe => ww_devoe,
	o => \S[52]~output_o\);

-- Location: IOOBUF_X59_Y15_N33
\S[53]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~53_combout\,
	devoe => ww_devoe,
	o => \S[53]~output_o\);

-- Location: IOOBUF_X59_Y28_N98
\S[54]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~54_combout\,
	devoe => ww_devoe,
	o => \S[54]~output_o\);

-- Location: IOOBUF_X15_Y56_N2
\S[55]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~55_combout\,
	devoe => ww_devoe,
	o => \S[55]~output_o\);

-- Location: IOOBUF_X59_Y15_N67
\S[56]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~56_combout\,
	devoe => ww_devoe,
	o => \S[56]~output_o\);

-- Location: IOOBUF_X44_Y56_N98
\S[57]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~57_combout\,
	devoe => ww_devoe,
	o => \S[57]~output_o\);

-- Location: IOOBUF_X59_Y31_N98
\S[58]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~58_combout\,
	devoe => ww_devoe,
	o => \S[58]~output_o\);

-- Location: IOOBUF_X56_Y56_N2
\S[59]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~59_combout\,
	devoe => ww_devoe,
	o => \S[59]~output_o\);

-- Location: IOOBUF_X15_Y56_N98
\S[60]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~60_combout\,
	devoe => ww_devoe,
	o => \S[60]~output_o\);

-- Location: IOOBUF_X59_Y36_N67
\S[61]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~61_combout\,
	devoe => ww_devoe,
	o => \S[61]~output_o\);

-- Location: IOOBUF_X59_Y25_N36
\S[62]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~62_combout\,
	devoe => ww_devoe,
	o => \S[62]~output_o\);

-- Location: IOOBUF_X17_Y56_N33
\S[63]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~63_combout\,
	devoe => ww_devoe,
	o => \S[63]~output_o\);

-- Location: IOOBUF_X44_Y56_N36
\Cout~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \carry~114_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X49_Y56_N36
\Ovfl~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ovfl~0_combout\,
	devoe => ww_devoe,
	o => \Ovfl~output_o\);

-- Location: IOIBUF_X33_Y56_N94
\Cin~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X21_Y56_N1
\A[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X59_Y39_N1
\B[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LABCELL_X38_Y47_N20
\S~0\ : arriaii_lcell_comb
-- Equation(s):
-- \S~0_combout\ = !\Cin~input_o\ $ (!\A[0]~input_o\ $ (\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Cin~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	combout => \S~0_combout\);

-- Location: IOIBUF_X12_Y56_N32
\B[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X37_Y0_N94
\A[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LABCELL_X38_Y47_N22
\S~1\ : arriaii_lcell_comb
-- Equation(s):
-- \S~1_combout\ = ( \A[1]~input_o\ & ( !\B[1]~input_o\ $ (((!\Cin~input_o\ & (\A[0]~input_o\ & \B[0]~input_o\)) # (\Cin~input_o\ & ((\B[0]~input_o\) # (\A[0]~input_o\))))) ) ) # ( !\A[1]~input_o\ & ( !\B[1]~input_o\ $ (((!\Cin~input_o\ & ((!\A[0]~input_o\) 
-- # (!\B[0]~input_o\))) # (\Cin~input_o\ & (!\A[0]~input_o\ & !\B[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111001111000000111100111100011100001100001111110000110000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Cin~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \S~1_combout\);

-- Location: LABCELL_X38_Y47_N8
\carry[10]~115\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[10]~115_combout\ = ( \A[1]~input_o\ & ( ((!\B[0]~input_o\ & (\A[0]~input_o\ & \Cin~input_o\)) # (\B[0]~input_o\ & ((\Cin~input_o\) # (\A[0]~input_o\)))) # (\B[1]~input_o\) ) ) # ( !\A[1]~input_o\ & ( (\B[1]~input_o\ & ((!\B[0]~input_o\ & 
-- (\A[0]~input_o\ & \Cin~input_o\)) # (\B[0]~input_o\ & ((\Cin~input_o\) # (\A[0]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010111000000000001011100010111111111110001011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_Cin~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \carry[10]~115_combout\);

-- Location: IOIBUF_X59_Y10_N94
\A[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X10_Y56_N94
\B[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LABCELL_X38_Y47_N6
\p[2]\ : arriaii_lcell_comb
-- Equation(s):
-- p(2) = !\A[2]~input_o\ $ (!\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	combout => p(2));

-- Location: MLABCELL_X37_Y47_N2
\S~2\ : arriaii_lcell_comb
-- Equation(s):
-- \S~2_combout\ = !\carry[10]~115_combout\ $ (!p(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_carry[10]~115_combout\,
	datab => ALT_INV_p(2),
	combout => \S~2_combout\);

-- Location: IOIBUF_X19_Y56_N94
\B[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X36_Y56_N94
\A[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: MLABCELL_X37_Y47_N26
\p[3]\ : arriaii_lcell_comb
-- Equation(s):
-- p(3) = ( \A[3]~input_o\ & ( !\B[3]~input_o\ ) ) # ( !\A[3]~input_o\ & ( \B[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => p(3));

-- Location: LABCELL_X38_Y47_N12
\carry~0\ : arriaii_lcell_comb
-- Equation(s):
-- \carry~0_combout\ = ( \A[1]~input_o\ & ( (!\B[1]~input_o\ & (!\A[2]~input_o\ $ (!\B[2]~input_o\))) ) ) # ( !\A[1]~input_o\ & ( (\B[1]~input_o\ & (!\A[2]~input_o\ $ (!\B[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001001001000010010000100100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \carry~0_combout\);

-- Location: LABCELL_X38_Y47_N14
\G_array[1][2]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][2]~1_combout\ = ( \A[1]~input_o\ & ( (!\A[2]~input_o\ & (\B[1]~input_o\ & \B[2]~input_o\)) # (\A[2]~input_o\ & ((\B[2]~input_o\) # (\B[1]~input_o\))) ) ) # ( !\A[1]~input_o\ & ( (\A[2]~input_o\ & \B[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100010001011101110001000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \G_array[1][2]~1_combout\);

-- Location: LABCELL_X38_Y47_N16
\carry[11]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[11]~1_combout\ = ( !\G_array[1][2]~1_combout\ & ( (!\carry~0_combout\) # ((!\B[0]~input_o\ & ((!\A[0]~input_o\) # (!\Cin~input_o\))) # (\B[0]~input_o\ & (!\A[0]~input_o\ & !\Cin~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101000111111111110100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_Cin~input_o\,
	datad => \ALT_INV_carry~0_combout\,
	dataf => \ALT_INV_G_array[1][2]~1_combout\,
	combout => \carry[11]~1_combout\);

-- Location: LABCELL_X35_Y49_N22
\S~3\ : arriaii_lcell_comb
-- Equation(s):
-- \S~3_combout\ = ( \carry[11]~1_combout\ & ( p(3) ) ) # ( !\carry[11]~1_combout\ & ( !p(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_p(3),
	dataf => \ALT_INV_carry[11]~1_combout\,
	combout => \S~3_combout\);

-- Location: IOIBUF_X19_Y56_N32
\A[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X31_Y56_N94
\B[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LABCELL_X38_Y47_N18
\carry~2\ : arriaii_lcell_comb
-- Equation(s):
-- \carry~2_combout\ = ( \Cin~input_o\ & ( (\carry~0_combout\ & (!\B[0]~input_o\ $ (!\A[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000011001100000000001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_carry~0_combout\,
	dataf => \ALT_INV_Cin~input_o\,
	combout => \carry~2_combout\);

-- Location: LABCELL_X38_Y47_N4
\G_array[1][3]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][3]~2_combout\ = ( \A[3]~input_o\ & ( ((\A[2]~input_o\ & \B[2]~input_o\)) # (\B[3]~input_o\) ) ) # ( !\A[3]~input_o\ & ( (\A[2]~input_o\ & (\B[2]~input_o\ & \B[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \G_array[1][3]~2_combout\);

-- Location: LABCELL_X38_Y47_N10
\G_array[6][1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[6][1]~0_combout\ = ( \A[1]~input_o\ & ( ((\B[0]~input_o\ & \A[0]~input_o\)) # (\B[1]~input_o\) ) ) # ( !\A[1]~input_o\ & ( (\B[0]~input_o\ & (\A[0]~input_o\ & \B[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \G_array[6][1]~0_combout\);

-- Location: LABCELL_X38_Y47_N2
\G_array~3\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~3_combout\ = ( p(3) & ( (p(2) & \G_array[6][1]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_p(2),
	datad => \ALT_INV_G_array[6][1]~0_combout\,
	dataf => ALT_INV_p(3),
	combout => \G_array~3_combout\);

-- Location: MLABCELL_X39_Y47_N2
\carry[4]\ : arriaii_lcell_comb
-- Equation(s):
-- carry(4) = ( !\G_array~3_combout\ & ( (!\G_array[1][3]~2_combout\ & ((!\carry~2_combout\) # (!p(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101000000000111110100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_carry~2_combout\,
	datac => ALT_INV_p(3),
	datad => \ALT_INV_G_array[1][3]~2_combout\,
	dataf => \ALT_INV_G_array~3_combout\,
	combout => carry(4));

-- Location: MLABCELL_X37_Y47_N8
\S~4\ : arriaii_lcell_comb
-- Equation(s):
-- \S~4_combout\ = ( carry(4) & ( !\A[4]~input_o\ $ (!\B[4]~input_o\) ) ) # ( !carry(4) & ( !\A[4]~input_o\ $ (\B[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => ALT_INV_carry(4),
	combout => \S~4_combout\);

-- Location: MLABCELL_X37_Y47_N24
\G_array[1][4]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][4]~4_combout\ = ( \A[3]~input_o\ & ( (!\B[3]~input_o\ & (\A[4]~input_o\ & \B[4]~input_o\)) # (\B[3]~input_o\ & ((\B[4]~input_o\) # (\A[4]~input_o\))) ) ) # ( !\A[3]~input_o\ & ( (\A[4]~input_o\ & \B[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000011001111110000001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \G_array[1][4]~4_combout\);

-- Location: LABCELL_X38_Y47_N26
\G_array~5\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~5_combout\ = ( \G_array[1][2]~1_combout\ & ( (p(3) & (!\A[4]~input_o\ $ (!\B[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001010001000001000101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_p(3),
	datab => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_G_array[1][2]~1_combout\,
	combout => \G_array~5_combout\);

-- Location: LABCELL_X38_Y47_N24
\P_array[3][8]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[3][8]~0_combout\ = (p(3) & (\carry~0_combout\ & (!\A[4]~input_o\ $ (!\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000100000000010000010000000001000001000000000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_p(3),
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_carry~0_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	combout => \P_array[3][8]~0_combout\);

-- Location: LABCELL_X38_Y47_N28
\carry[5]\ : arriaii_lcell_comb
-- Equation(s):
-- carry(5) = ( \B[0]~input_o\ & ( \P_array[3][8]~0_combout\ & ( (!\G_array[1][4]~4_combout\ & (!\A[0]~input_o\ & (!\Cin~input_o\ & !\G_array~5_combout\))) ) ) ) # ( !\B[0]~input_o\ & ( \P_array[3][8]~0_combout\ & ( (!\G_array[1][4]~4_combout\ & 
-- (!\G_array~5_combout\ & ((!\A[0]~input_o\) # (!\Cin~input_o\)))) ) ) ) # ( \B[0]~input_o\ & ( !\P_array[3][8]~0_combout\ & ( (!\G_array[1][4]~4_combout\ & !\G_array~5_combout\) ) ) ) # ( !\B[0]~input_o\ & ( !\P_array[3][8]~0_combout\ & ( 
-- (!\G_array[1][4]~4_combout\ & !\G_array~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000010101000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array[1][4]~4_combout\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_Cin~input_o\,
	datad => \ALT_INV_G_array~5_combout\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_P_array[3][8]~0_combout\,
	combout => carry(5));

-- Location: IOIBUF_X28_Y56_N94
\B[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X12_Y56_N63
\A[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: MLABCELL_X37_Y49_N0
\p[5]\ : arriaii_lcell_comb
-- Equation(s):
-- p(5) = ( \A[5]~input_o\ & ( !\B[5]~input_o\ ) ) # ( !\A[5]~input_o\ & ( \B[5]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => p(5));

-- Location: LABCELL_X38_Y51_N2
\S~5\ : arriaii_lcell_comb
-- Equation(s):
-- \S~5_combout\ = ( p(5) & ( carry(5) ) ) # ( !p(5) & ( !carry(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000000001111111111111111000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_carry(5),
	datae => ALT_INV_p(5),
	combout => \S~5_combout\);

-- Location: IOIBUF_X59_Y34_N1
\A[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LABCELL_X38_Y47_N32
\carry~3\ : arriaii_lcell_comb
-- Equation(s):
-- \carry~3_combout\ = ( \P_array[3][8]~0_combout\ & ( (\Cin~input_o\ & (!\B[0]~input_o\ $ (!\A[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000110000001100000011000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_Cin~input_o\,
	dataf => \ALT_INV_P_array[3][8]~0_combout\,
	combout => \carry~3_combout\);

-- Location: MLABCELL_X37_Y47_N32
\G_array~8\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~8_combout\ = ( \G_array[1][3]~2_combout\ & ( (p(5) & (!\B[4]~input_o\ $ (!\A[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000110000001100000011000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => ALT_INV_p(5),
	dataf => \ALT_INV_G_array[1][3]~2_combout\,
	combout => \G_array~8_combout\);

-- Location: MLABCELL_X37_Y49_N2
\G_array[1][5]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][5]~6_combout\ = ( \A[5]~input_o\ & ( ((\A[4]~input_o\ & \B[4]~input_o\)) # (\B[5]~input_o\) ) ) # ( !\A[5]~input_o\ & ( (\B[5]~input_o\ & (\A[4]~input_o\ & \B[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \G_array[1][5]~6_combout\);

-- Location: MLABCELL_X37_Y47_N34
\G_array~7\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~7_combout\ = (p(3) & (p(5) & (!\B[4]~input_o\ $ (!\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110000000000000011000000000000001100000000000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => ALT_INV_p(3),
	datad => ALT_INV_p(5),
	combout => \G_array~7_combout\);

-- Location: MLABCELL_X37_Y47_N16
\G_array[6][5]\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[6][5]~combout\ = ( p(2) & ( (!\G_array~8_combout\ & (!\G_array[1][5]~6_combout\ & ((!\G_array[6][1]~0_combout\) # (!\G_array~7_combout\)))) ) ) # ( !p(2) & ( (!\G_array~8_combout\ & !\G_array[1][5]~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~8_combout\,
	datab => \ALT_INV_G_array[1][5]~6_combout\,
	datac => \ALT_INV_G_array[6][1]~0_combout\,
	datad => \ALT_INV_G_array~7_combout\,
	dataf => ALT_INV_p(2),
	combout => \G_array[6][5]~combout\);

-- Location: IOIBUF_X28_Y56_N32
\B[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: MLABCELL_X37_Y47_N10
\S~6\ : arriaii_lcell_comb
-- Equation(s):
-- \S~6_combout\ = ( p(5) & ( !\A[6]~input_o\ $ (!\B[6]~input_o\ $ (((!\G_array[6][5]~combout\) # (\carry~3_combout\)))) ) ) # ( !p(5) & ( !\A[6]~input_o\ $ (!\G_array[6][5]~combout\ $ (!\B[6]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010101011010101001010101101010100110010110011010011001011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_carry~3_combout\,
	datac => \ALT_INV_G_array[6][5]~combout\,
	datad => \ALT_INV_B[6]~input_o\,
	dataf => ALT_INV_p(5),
	combout => \S~6_combout\);

-- Location: LABCELL_X38_Y47_N34
\G_array[6][2]\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[6][2]~combout\ = ( !\G_array[1][2]~1_combout\ & ( (!\B[0]~input_o\) # ((!\A[0]~input_o\) # (!\carry~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101110111111111110111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_carry~0_combout\,
	dataf => \ALT_INV_G_array[1][2]~1_combout\,
	combout => \G_array[6][2]~combout\);

-- Location: MLABCELL_X37_Y47_N22
\G_array~10\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~10_combout\ = ( !\G_array[6][2]~combout\ & ( (\G_array~7_combout\ & (!\A[6]~input_o\ $ (!\B[6]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100100010000100010010001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_G_array~7_combout\,
	datad => \ALT_INV_B[6]~input_o\,
	dataf => \ALT_INV_G_array[6][2]~combout\,
	combout => \G_array~10_combout\);

-- Location: MLABCELL_X37_Y49_N24
\G_array~9\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~9_combout\ = ( \A[5]~input_o\ & ( (!\B[5]~input_o\ & (!\A[6]~input_o\ $ (!\B[6]~input_o\))) ) ) # ( !\A[5]~input_o\ & ( (\B[5]~input_o\ & (!\A[6]~input_o\ $ (!\B[6]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001001001000010010000100100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_B[6]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \G_array~9_combout\);

-- Location: LABCELL_X38_Y47_N38
\carry~4\ : arriaii_lcell_comb
-- Equation(s):
-- \carry~4_combout\ = ( \P_array[3][8]~0_combout\ & ( (\Cin~input_o\ & (\G_array~9_combout\ & (!\A[0]~input_o\ $ (!\B[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000001000000000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Cin~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_G_array~9_combout\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_P_array[3][8]~0_combout\,
	combout => \carry~4_combout\);

-- Location: IOIBUF_X48_Y56_N32
\A[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X48_Y56_N94
\B[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: MLABCELL_X37_Y49_N26
\G_array[1][6]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][6]~11_combout\ = ( \A[5]~input_o\ & ( (!\A[6]~input_o\ & (\B[5]~input_o\ & \B[6]~input_o\)) # (\A[6]~input_o\ & ((\B[6]~input_o\) # (\B[5]~input_o\))) ) ) # ( !\A[5]~input_o\ & ( (\A[6]~input_o\ & \B[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100010001011101110001000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_B[6]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \G_array[1][6]~11_combout\);

-- Location: MLABCELL_X37_Y49_N28
\G_array[6][6]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[6][6]~12_combout\ = ( \G_array~9_combout\ & ( (!\G_array[1][6]~11_combout\ & !\G_array[1][4]~4_combout\) ) ) # ( !\G_array~9_combout\ & ( !\G_array[1][6]~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array[1][6]~11_combout\,
	datad => \ALT_INV_G_array[1][4]~4_combout\,
	dataf => \ALT_INV_G_array~9_combout\,
	combout => \G_array[6][6]~12_combout\);

-- Location: MLABCELL_X46_Y49_N22
\S~7\ : arriaii_lcell_comb
-- Equation(s):
-- \S~7_combout\ = ( \G_array[6][6]~12_combout\ & ( !\A[7]~input_o\ $ (!\B[7]~input_o\ $ (((\carry~4_combout\) # (\G_array~10_combout\)))) ) ) # ( !\G_array[6][6]~12_combout\ & ( !\A[7]~input_o\ $ (\B[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111101111000100001110111100010000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~10_combout\,
	datab => \ALT_INV_carry~4_combout\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_B[7]~input_o\,
	dataf => \ALT_INV_G_array[6][6]~12_combout\,
	combout => \S~7_combout\);

-- Location: IOIBUF_X23_Y56_N1
\A[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: MLABCELL_X37_Y49_N14
\G_array~13\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~13_combout\ = ( \G_array~9_combout\ & ( (!\A[7]~input_o\ & (\B[7]~input_o\ & (!\A[4]~input_o\ $ (!\B[4]~input_o\)))) # (\A[7]~input_o\ & (!\B[7]~input_o\ & (!\A[4]~input_o\ $ (!\B[4]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000110011000000000011001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_G_array~9_combout\,
	combout => \G_array~13_combout\);

-- Location: MLABCELL_X37_Y49_N36
\G_array~15\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~15_combout\ = ( \B[7]~input_o\ & ( (!\A[7]~input_o\ & (\G_array[1][5]~6_combout\ & (!\A[6]~input_o\ $ (!\B[6]~input_o\)))) ) ) # ( !\B[7]~input_o\ & ( (\A[7]~input_o\ & (\G_array[1][5]~6_combout\ & (!\A[6]~input_o\ $ (!\B[6]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110000000000000011000000000011000000000000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_B[6]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_G_array[1][5]~6_combout\,
	dataf => \ALT_INV_B[7]~input_o\,
	combout => \G_array~15_combout\);

-- Location: MLABCELL_X37_Y49_N12
\G_array[1][7]~14\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][7]~14_combout\ = (!\A[7]~input_o\ & (\B[7]~input_o\ & (\A[6]~input_o\ & \B[6]~input_o\))) # (\A[7]~input_o\ & (((\A[6]~input_o\ & \B[6]~input_o\)) # (\B[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010111000100010001011100010001000101110001000100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_B[6]~input_o\,
	combout => \G_array[1][7]~14_combout\);

-- Location: MLABCELL_X39_Y47_N30
\G_array[6][7]\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[6][7]~combout\ = ( \G_array~3_combout\ & ( (!\G_array~13_combout\ & (!\G_array~15_combout\ & !\G_array[1][7]~14_combout\)) ) ) # ( !\G_array~3_combout\ & ( (!\G_array~15_combout\ & (!\G_array[1][7]~14_combout\ & ((!\G_array~13_combout\) # 
-- (!\G_array[1][3]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000010000000110000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~13_combout\,
	datab => \ALT_INV_G_array~15_combout\,
	datac => \ALT_INV_G_array[1][7]~14_combout\,
	datad => \ALT_INV_G_array[1][3]~2_combout\,
	dataf => \ALT_INV_G_array~3_combout\,
	combout => \G_array[6][7]~combout\);

-- Location: MLABCELL_X39_Y47_N24
\carry~5\ : arriaii_lcell_comb
-- Equation(s):
-- \carry~5_combout\ = ( \G_array~13_combout\ & ( (\carry~2_combout\ & p(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_carry~2_combout\,
	datad => ALT_INV_p(3),
	dataf => \ALT_INV_G_array~13_combout\,
	combout => \carry~5_combout\);

-- Location: MLABCELL_X39_Y47_N28
\carry[8]\ : arriaii_lcell_comb
-- Equation(s):
-- carry(8) = ( !\carry~5_combout\ & ( \G_array[6][7]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_G_array[6][7]~combout\,
	dataf => \ALT_INV_carry~5_combout\,
	combout => carry(8));

-- Location: IOIBUF_X21_Y56_N63
\B[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: MLABCELL_X23_Y51_N2
\S~8\ : arriaii_lcell_comb
-- Equation(s):
-- \S~8_combout\ = ( carry(8) & ( \B[8]~input_o\ & ( !\A[8]~input_o\ ) ) ) # ( !carry(8) & ( \B[8]~input_o\ & ( \A[8]~input_o\ ) ) ) # ( carry(8) & ( !\B[8]~input_o\ & ( \A[8]~input_o\ ) ) ) # ( !carry(8) & ( !\B[8]~input_o\ & ( !\A[8]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100001100110011001100110011001100111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[8]~input_o\,
	datae => ALT_INV_carry(8),
	dataf => \ALT_INV_B[8]~input_o\,
	combout => \S~8_combout\);

-- Location: MLABCELL_X37_Y49_N20
\G_array~17\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~17_combout\ = ( \B[8]~input_o\ & ( (!\A[8]~input_o\ & (!\B[7]~input_o\ $ (!\A[7]~input_o\))) ) ) # ( !\B[8]~input_o\ & ( (\A[8]~input_o\ & (!\B[7]~input_o\ $ (!\A[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000111100000000000011110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_B[8]~input_o\,
	combout => \G_array~17_combout\);

-- Location: MLABCELL_X37_Y49_N30
\G_array~18\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~18_combout\ = ( \G_array~17_combout\ & ( \G_array[1][6]~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array[1][6]~11_combout\,
	dataf => \ALT_INV_G_array~17_combout\,
	combout => \G_array~18_combout\);

-- Location: MLABCELL_X37_Y49_N22
\G_array[1][8]~16\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][8]~16_combout\ = ( \B[8]~input_o\ & ( ((\A[7]~input_o\ & \B[7]~input_o\)) # (\A[8]~input_o\) ) ) # ( !\B[8]~input_o\ & ( (\A[7]~input_o\ & (\B[7]~input_o\ & \A[8]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100010001111111110001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \ALT_INV_B[7]~input_o\,
	datad => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_B[8]~input_o\,
	combout => \G_array[1][8]~16_combout\);

-- Location: MLABCELL_X37_Y49_N4
\P_array[2][8]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[2][8]~1_combout\ = ( \G_array~9_combout\ & ( \G_array~17_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~17_combout\,
	dataf => \ALT_INV_G_array~9_combout\,
	combout => \P_array[2][8]~1_combout\);

-- Location: LABCELL_X38_Y47_N0
\G_array[3][8]\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[3][8]~combout\ = ( \G_array[1][4]~4_combout\ & ( (!\G_array~18_combout\ & (!\G_array[1][8]~16_combout\ & !\P_array[2][8]~1_combout\)) ) ) # ( !\G_array[1][4]~4_combout\ & ( (!\G_array~18_combout\ & (!\G_array[1][8]~16_combout\ & 
-- ((!\P_array[2][8]~1_combout\) # (!\G_array~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010000000100010001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~18_combout\,
	datab => \ALT_INV_G_array[1][8]~16_combout\,
	datac => \ALT_INV_P_array[2][8]~1_combout\,
	datad => \ALT_INV_G_array~5_combout\,
	dataf => \ALT_INV_G_array[1][4]~4_combout\,
	combout => \G_array[3][8]~combout\);

-- Location: IOIBUF_X17_Y56_N94
\A[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X40_Y56_N94
\B[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LABCELL_X38_Y47_N36
\carry[25]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[25]~6_combout\ = ( \P_array[3][8]~0_combout\ & ( (\P_array[2][8]~1_combout\ & ((!\Cin~input_o\ & (\A[0]~input_o\ & \B[0]~input_o\)) # (\Cin~input_o\ & ((\B[0]~input_o\) # (\A[0]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000101110000000000010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Cin~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_P_array[2][8]~1_combout\,
	dataf => \ALT_INV_P_array[3][8]~0_combout\,
	combout => \carry[25]~6_combout\);

-- Location: LABCELL_X43_Y48_N20
\S~9\ : arriaii_lcell_comb
-- Equation(s):
-- \S~9_combout\ = ( \carry[25]~6_combout\ & ( !\A[9]~input_o\ $ (\B[9]~input_o\) ) ) # ( !\carry[25]~6_combout\ & ( !\G_array[3][8]~combout\ $ (!\A[9]~input_o\ $ (!\B[9]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100111100110000110011110011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G_array[3][8]~combout\,
	datac => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_B[9]~input_o\,
	dataf => \ALT_INV_carry[25]~6_combout\,
	combout => \S~9_combout\);

-- Location: IOIBUF_X23_Y56_N32
\A[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X25_Y56_N63
\B[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: MLABCELL_X37_Y49_N38
\P_array[2][9]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[2][9]~2_combout\ = ( \A[9]~input_o\ & ( (!\B[9]~input_o\ & (\G_array~17_combout\ & (!\A[6]~input_o\ $ (!\B[6]~input_o\)))) ) ) # ( !\A[9]~input_o\ & ( (\B[9]~input_o\ & (\G_array~17_combout\ & (!\A[6]~input_o\ $ (!\B[6]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110000000000000011000000000011000000000000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_B[6]~input_o\,
	datac => \ALT_INV_B[9]~input_o\,
	datad => \ALT_INV_G_array~17_combout\,
	dataf => \ALT_INV_A[9]~input_o\,
	combout => \P_array[2][9]~2_combout\);

-- Location: MLABCELL_X37_Y47_N0
\carry[10]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[10]~7_combout\ = ( \P_array[2][9]~2_combout\ & ( (\carry[10]~115_combout\ & (p(2) & \G_array~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_carry[10]~115_combout\,
	datab => ALT_INV_p(2),
	datad => \ALT_INV_G_array~7_combout\,
	dataf => \ALT_INV_P_array[2][9]~2_combout\,
	combout => \carry[10]~7_combout\);

-- Location: MLABCELL_X37_Y49_N10
\G_array[1][9]~19\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][9]~19_combout\ = ( \B[8]~input_o\ & ( (!\A[8]~input_o\ & (\B[9]~input_o\ & \A[9]~input_o\)) # (\A[8]~input_o\ & ((\A[9]~input_o\) # (\B[9]~input_o\))) ) ) # ( !\B[8]~input_o\ & ( (\B[9]~input_o\ & \A[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datab => \ALT_INV_B[9]~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	dataf => \ALT_INV_B[8]~input_o\,
	combout => \G_array[1][9]~19_combout\);

-- Location: MLABCELL_X37_Y49_N8
\G_array~20\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~20_combout\ = ( \A[9]~input_o\ & ( (!\B[9]~input_o\ & (\G_array[1][7]~14_combout\ & (!\A[8]~input_o\ $ (!\B[8]~input_o\)))) ) ) # ( !\A[9]~input_o\ & ( (\B[9]~input_o\ & (\G_array[1][7]~14_combout\ & (!\A[8]~input_o\ $ (!\B[8]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010010000000000001001000000000010010000000000001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datab => \ALT_INV_B[9]~input_o\,
	datac => \ALT_INV_B[8]~input_o\,
	datad => \ALT_INV_G_array[1][7]~14_combout\,
	dataf => \ALT_INV_A[9]~input_o\,
	combout => \G_array~20_combout\);

-- Location: MLABCELL_X37_Y47_N18
\G_array[3][9]\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[3][9]~combout\ = ( !\G_array~20_combout\ & ( (!\G_array[1][9]~19_combout\ & ((!\P_array[2][9]~2_combout\) # ((!\G_array~8_combout\ & !\G_array[1][5]~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100000000000111110000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~8_combout\,
	datab => \ALT_INV_G_array[1][5]~6_combout\,
	datac => \ALT_INV_P_array[2][9]~2_combout\,
	datad => \ALT_INV_G_array[1][9]~19_combout\,
	dataf => \ALT_INV_G_array~20_combout\,
	combout => \G_array[3][9]~combout\);

-- Location: LABCELL_X38_Y49_N0
\S~10\ : arriaii_lcell_comb
-- Equation(s):
-- \S~10_combout\ = ( \G_array[3][9]~combout\ & ( !\A[10]~input_o\ $ (!\B[10]~input_o\ $ (\carry[10]~7_combout\)) ) ) # ( !\G_array[3][9]~combout\ & ( !\A[10]~input_o\ $ (\B[10]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[10]~input_o\,
	datab => \ALT_INV_B[10]~input_o\,
	datac => \ALT_INV_carry[10]~7_combout\,
	dataf => \ALT_INV_G_array[3][9]~combout\,
	combout => \S~10_combout\);

-- Location: IOIBUF_X21_Y56_N32
\B[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X38_Y56_N63
\A[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LABCELL_X38_Y49_N2
\G_array[1][10]~21\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][10]~21_combout\ = ( \B[9]~input_o\ & ( (!\A[10]~input_o\ & (\B[10]~input_o\ & \A[9]~input_o\)) # (\A[10]~input_o\ & ((\A[9]~input_o\) # (\B[10]~input_o\))) ) ) # ( !\B[9]~input_o\ & ( (\A[10]~input_o\ & \B[10]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[10]~input_o\,
	datab => \ALT_INV_B[10]~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	dataf => \ALT_INV_B[9]~input_o\,
	combout => \G_array[1][10]~21_combout\);

-- Location: LABCELL_X38_Y49_N6
\G_array~22\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~22_combout\ = ( \B[9]~input_o\ & ( (!\A[9]~input_o\ & (!\A[10]~input_o\ $ (!\B[10]~input_o\))) ) ) # ( !\B[9]~input_o\ & ( (\A[9]~input_o\ & (!\A[10]~input_o\ $ (!\B[10]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101001010000101000000101000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[10]~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_B[10]~input_o\,
	dataf => \ALT_INV_B[9]~input_o\,
	combout => \G_array~22_combout\);

-- Location: LABCELL_X38_Y49_N10
\G_array~23\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~23_combout\ = ( \G_array~22_combout\ & ( \G_array[1][8]~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_G_array[1][8]~16_combout\,
	dataf => \ALT_INV_G_array~22_combout\,
	combout => \G_array~23_combout\);

-- Location: MLABCELL_X37_Y49_N6
\P_array[2][10]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[2][10]~3_combout\ = ( \G_array~22_combout\ & ( \G_array~17_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~17_combout\,
	dataf => \ALT_INV_G_array~22_combout\,
	combout => \P_array[2][10]~3_combout\);

-- Location: MLABCELL_X37_Y49_N32
\G_array[3][10]\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[3][10]~combout\ = ( !\G_array[1][6]~11_combout\ & ( \P_array[2][10]~3_combout\ & ( (!\G_array[1][10]~21_combout\ & (!\G_array~23_combout\ & ((!\G_array[1][4]~4_combout\) # (!\G_array~9_combout\)))) ) ) ) # ( \G_array[1][6]~11_combout\ & ( 
-- !\P_array[2][10]~3_combout\ & ( (!\G_array[1][10]~21_combout\ & !\G_array~23_combout\) ) ) ) # ( !\G_array[1][6]~11_combout\ & ( !\P_array[2][10]~3_combout\ & ( (!\G_array[1][10]~21_combout\ & !\G_array~23_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000010101000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array[1][10]~21_combout\,
	datab => \ALT_INV_G_array[1][4]~4_combout\,
	datac => \ALT_INV_G_array~9_combout\,
	datad => \ALT_INV_G_array~23_combout\,
	datae => \ALT_INV_G_array[1][6]~11_combout\,
	dataf => \ALT_INV_P_array[2][10]~3_combout\,
	combout => \G_array[3][10]~combout\);

-- Location: MLABCELL_X37_Y47_N20
\carry[11]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[11]~8_combout\ = ( \P_array[2][10]~3_combout\ & ( (\G_array~7_combout\ & (!\carry[11]~1_combout\ & (!\A[6]~input_o\ $ (!\B[6]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000001000000001000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_G_array~7_combout\,
	datac => \ALT_INV_carry[11]~1_combout\,
	datad => \ALT_INV_B[6]~input_o\,
	dataf => \ALT_INV_P_array[2][10]~3_combout\,
	combout => \carry[11]~8_combout\);

-- Location: LABCELL_X45_Y48_N20
\carry[27]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[27]~9_combout\ = ( !\carry[11]~8_combout\ & ( \G_array[3][10]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G_array[3][10]~combout\,
	dataf => \ALT_INV_carry[11]~8_combout\,
	combout => \carry[27]~9_combout\);

-- Location: LABCELL_X38_Y49_N14
\S~11\ : arriaii_lcell_comb
-- Equation(s):
-- \S~11_combout\ = ( \carry[27]~9_combout\ & ( !\B[11]~input_o\ $ (!\A[11]~input_o\) ) ) # ( !\carry[27]~9_combout\ & ( !\B[11]~input_o\ $ (\A[11]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100101100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[11]~input_o\,
	datab => \ALT_INV_A[11]~input_o\,
	dataf => \ALT_INV_carry[27]~9_combout\,
	combout => \S~11_combout\);

-- Location: IOIBUF_X12_Y56_N1
\B[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LABCELL_X38_Y49_N36
\G_array~25\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~25_combout\ = ( \A[11]~input_o\ & ( (!\B[11]~input_o\ & (!\A[10]~input_o\ $ (!\B[10]~input_o\))) ) ) # ( !\A[11]~input_o\ & ( (\B[11]~input_o\ & (!\A[10]~input_o\ $ (!\B[10]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011001100000011000000110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[10]~input_o\,
	datab => \ALT_INV_B[10]~input_o\,
	datac => \ALT_INV_B[11]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \G_array~25_combout\);

-- Location: MLABCELL_X37_Y49_N16
\P_array[2][11]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[2][11]~4_combout\ = ( \B[8]~input_o\ & ( (\G_array~25_combout\ & (!\A[8]~input_o\ & (!\A[9]~input_o\ $ (!\B[9]~input_o\)))) ) ) # ( !\B[8]~input_o\ & ( (\G_array~25_combout\ & (\A[8]~input_o\ & (!\A[9]~input_o\ $ (!\B[9]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000100000000010000010000010000010000000001000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~25_combout\,
	datab => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_A[8]~input_o\,
	datad => \ALT_INV_B[9]~input_o\,
	dataf => \ALT_INV_B[8]~input_o\,
	combout => \P_array[2][11]~4_combout\);

-- Location: MLABCELL_X39_Y47_N0
\carry[12]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[12]~10_combout\ = ( \G_array~13_combout\ & ( (!carry(4) & \P_array[2][11]~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_carry(4),
	datac => \ALT_INV_P_array[2][11]~4_combout\,
	dataf => \ALT_INV_G_array~13_combout\,
	combout => \carry[12]~10_combout\);

-- Location: LABCELL_X38_Y49_N38
\G_array[1][11]~24\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][11]~24_combout\ = ( \A[11]~input_o\ & ( ((\A[10]~input_o\ & \B[10]~input_o\)) # (\B[11]~input_o\) ) ) # ( !\A[11]~input_o\ & ( (\A[10]~input_o\ & (\B[10]~input_o\ & \B[11]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100010001111111110001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[10]~input_o\,
	datab => \ALT_INV_B[10]~input_o\,
	datad => \ALT_INV_B[11]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \G_array[1][11]~24_combout\);

-- Location: MLABCELL_X37_Y49_N18
\G_array~26\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~26_combout\ = ( \G_array[1][9]~19_combout\ & ( \G_array~25_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~25_combout\,
	dataf => \ALT_INV_G_array[1][9]~19_combout\,
	combout => \G_array~26_combout\);

-- Location: MLABCELL_X39_Y47_N14
\G_array[3][11]\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[3][11]~combout\ = ( \G_array~15_combout\ & ( (!\P_array[2][11]~4_combout\ & (!\G_array[1][11]~24_combout\ & !\G_array~26_combout\)) ) ) # ( !\G_array~15_combout\ & ( (!\G_array[1][11]~24_combout\ & (!\G_array~26_combout\ & 
-- ((!\P_array[2][11]~4_combout\) # (!\G_array[1][7]~14_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000000000000111000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[2][11]~4_combout\,
	datab => \ALT_INV_G_array[1][7]~14_combout\,
	datac => \ALT_INV_G_array[1][11]~24_combout\,
	datad => \ALT_INV_G_array~26_combout\,
	dataf => \ALT_INV_G_array~15_combout\,
	combout => \G_array[3][11]~combout\);

-- Location: LABCELL_X40_Y46_N0
\carry[36]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[36]~11_combout\ = (!\carry[12]~10_combout\ & \G_array[3][11]~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_carry[12]~10_combout\,
	datab => \ALT_INV_G_array[3][11]~combout\,
	combout => \carry[36]~11_combout\);

-- Location: IOIBUF_X33_Y56_N1
\A[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LABCELL_X38_Y49_N22
\S~12\ : arriaii_lcell_comb
-- Equation(s):
-- \S~12_combout\ = ( \A[12]~input_o\ & ( !\B[12]~input_o\ $ (!\carry[36]~11_combout\) ) ) # ( !\A[12]~input_o\ & ( !\B[12]~input_o\ $ (\carry[36]~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001010101101010100101010101010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[12]~input_o\,
	datad => \ALT_INV_carry[36]~11_combout\,
	dataf => \ALT_INV_A[12]~input_o\,
	combout => \S~12_combout\);

-- Location: IOIBUF_X33_Y56_N32
\B[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X14_Y56_N1
\A[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LABCELL_X38_Y49_N4
\G_array~27\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~27_combout\ = ( \A[11]~input_o\ & ( (!\B[11]~input_o\ & (!\A[12]~input_o\ $ (!\B[12]~input_o\))) ) ) # ( !\A[11]~input_o\ & ( (\B[11]~input_o\ & (!\A[12]~input_o\ $ (!\B[12]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000111100000000000011110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[12]~input_o\,
	datac => \ALT_INV_B[12]~input_o\,
	datad => \ALT_INV_B[11]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \G_array~27_combout\);

-- Location: LABCELL_X38_Y49_N24
\P_array[2][12]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[2][12]~5_combout\ = ( \G_array~22_combout\ & ( \G_array~27_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_G_array~27_combout\,
	dataf => \ALT_INV_G_array~22_combout\,
	combout => \P_array[2][12]~5_combout\);

-- Location: MLABCELL_X42_Y48_N0
\carry[13]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[13]~12_combout\ = (\P_array[2][12]~5_combout\ & (\P_array[2][8]~1_combout\ & !carry(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[2][12]~5_combout\,
	datac => \ALT_INV_P_array[2][8]~1_combout\,
	datad => ALT_INV_carry(5),
	combout => \carry[13]~12_combout\);

-- Location: LABCELL_X38_Y49_N30
\G_array~29\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~29_combout\ = ( \G_array[1][10]~21_combout\ & ( \G_array~27_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~27_combout\,
	dataf => \ALT_INV_G_array[1][10]~21_combout\,
	combout => \G_array~29_combout\);

-- Location: LABCELL_X38_Y49_N12
\G_array[1][12]~28\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][12]~28_combout\ = ( \A[12]~input_o\ & ( ((\B[11]~input_o\ & \A[11]~input_o\)) # (\B[12]~input_o\) ) ) # ( !\A[12]~input_o\ & ( (\B[11]~input_o\ & (\A[11]~input_o\ & \B[12]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[11]~input_o\,
	datab => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_B[12]~input_o\,
	dataf => \ALT_INV_A[12]~input_o\,
	combout => \G_array[1][12]~28_combout\);

-- Location: MLABCELL_X42_Y48_N26
\G_array[3][12]\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[3][12]~combout\ = ( \P_array[2][12]~5_combout\ & ( (!\G_array~29_combout\ & (!\G_array[1][12]~28_combout\ & (!\G_array[1][8]~16_combout\ & !\G_array~18_combout\))) ) ) # ( !\P_array[2][12]~5_combout\ & ( (!\G_array~29_combout\ & 
-- !\G_array[1][12]~28_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~29_combout\,
	datab => \ALT_INV_G_array[1][12]~28_combout\,
	datac => \ALT_INV_G_array[1][8]~16_combout\,
	datad => \ALT_INV_G_array~18_combout\,
	dataf => \ALT_INV_P_array[2][12]~5_combout\,
	combout => \G_array[3][12]~combout\);

-- Location: MLABCELL_X42_Y48_N28
\carry[37]~13\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[37]~13_combout\ = (!\carry[13]~12_combout\ & \G_array[3][12]~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_carry[13]~12_combout\,
	datab => \ALT_INV_G_array[3][12]~combout\,
	combout => \carry[37]~13_combout\);

-- Location: LABCELL_X38_Y49_N34
\S~13\ : arriaii_lcell_comb
-- Equation(s):
-- \S~13_combout\ = ( \carry[37]~13_combout\ & ( !\B[13]~input_o\ $ (!\A[13]~input_o\) ) ) # ( !\carry[37]~13_combout\ & ( !\B[13]~input_o\ $ (\A[13]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100101100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[13]~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	dataf => \ALT_INV_carry[37]~13_combout\,
	combout => \S~13_combout\);

-- Location: LABCELL_X38_Y49_N18
\G_array~30\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~30_combout\ = ( \B[12]~input_o\ & ( (!\A[12]~input_o\ & (!\B[13]~input_o\ $ (!\A[13]~input_o\))) ) ) # ( !\B[12]~input_o\ & ( (\A[12]~input_o\ & (!\B[13]~input_o\ $ (!\A[13]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001001001000010010000100100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[13]~input_o\,
	datab => \ALT_INV_A[12]~input_o\,
	datac => \ALT_INV_A[13]~input_o\,
	dataf => \ALT_INV_B[12]~input_o\,
	combout => \G_array~30_combout\);

-- Location: LABCELL_X38_Y48_N2
\G_array~33\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~33_combout\ = ( \G_array~30_combout\ & ( \G_array[1][11]~24_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_G_array~30_combout\,
	dataf => \ALT_INV_G_array[1][11]~24_combout\,
	combout => \G_array~33_combout\);

-- Location: LABCELL_X35_Y49_N6
\P_array[2][13]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[2][13]~6_combout\ = ( \G_array~30_combout\ & ( \G_array~25_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_G_array~25_combout\,
	dataf => \ALT_INV_G_array~30_combout\,
	combout => \P_array[2][13]~6_combout\);

-- Location: LABCELL_X38_Y49_N16
\G_array[1][13]~32\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][13]~32_combout\ = ( \B[12]~input_o\ & ( (!\B[13]~input_o\ & (\A[12]~input_o\ & \A[13]~input_o\)) # (\B[13]~input_o\ & ((\A[13]~input_o\) # (\A[12]~input_o\))) ) ) # ( !\B[12]~input_o\ & ( (\B[13]~input_o\ & \A[13]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100010001011101110001000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[13]~input_o\,
	datab => \ALT_INV_A[12]~input_o\,
	datad => \ALT_INV_A[13]~input_o\,
	dataf => \ALT_INV_B[12]~input_o\,
	combout => \G_array[1][13]~32_combout\);

-- Location: MLABCELL_X37_Y47_N30
\G_array[3][13]\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[3][13]~combout\ = ( !\G_array[1][13]~32_combout\ & ( (!\G_array~33_combout\ & ((!\P_array[2][13]~6_combout\) # ((!\G_array[1][9]~19_combout\ & !\G_array~20_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010000000111100001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array[1][9]~19_combout\,
	datab => \ALT_INV_G_array~20_combout\,
	datac => \ALT_INV_G_array~33_combout\,
	datad => \ALT_INV_P_array[2][13]~6_combout\,
	dataf => \ALT_INV_G_array[1][13]~32_combout\,
	combout => \G_array[3][13]~combout\);

-- Location: MLABCELL_X37_Y47_N4
\carry~14\ : arriaii_lcell_comb
-- Equation(s):
-- \carry~14_combout\ = ( \carry~3_combout\ & ( (\P_array[2][13]~6_combout\ & (\P_array[2][9]~2_combout\ & p(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[2][13]~6_combout\,
	datab => \ALT_INV_P_array[2][9]~2_combout\,
	datac => ALT_INV_p(5),
	dataf => \ALT_INV_carry~3_combout\,
	combout => \carry~14_combout\);

-- Location: MLABCELL_X37_Y47_N6
\G_array~31\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~31_combout\ = ( !\G_array[6][5]~combout\ & ( (\P_array[2][13]~6_combout\ & \P_array[2][9]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[2][13]~6_combout\,
	datab => \ALT_INV_P_array[2][9]~2_combout\,
	dataf => \ALT_INV_G_array[6][5]~combout\,
	combout => \G_array~31_combout\);

-- Location: MLABCELL_X37_Y47_N28
\carry[14]\ : arriaii_lcell_comb
-- Equation(s):
-- carry(14) = ( !\G_array~31_combout\ & ( (\G_array[3][13]~combout\ & !\carry~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_G_array[3][13]~combout\,
	datad => \ALT_INV_carry~14_combout\,
	dataf => \ALT_INV_G_array~31_combout\,
	combout => carry(14));

-- Location: IOIBUF_X36_Y56_N63
\A[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X38_Y56_N1
\B[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: MLABCELL_X39_Y49_N22
\S~14\ : arriaii_lcell_comb
-- Equation(s):
-- \S~14_combout\ = ( \A[14]~input_o\ & ( \B[14]~input_o\ & ( !carry(14) ) ) ) # ( !\A[14]~input_o\ & ( \B[14]~input_o\ & ( carry(14) ) ) ) # ( \A[14]~input_o\ & ( !\B[14]~input_o\ & ( carry(14) ) ) ) # ( !\A[14]~input_o\ & ( !\B[14]~input_o\ & ( !carry(14) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000000001111111100000000111111111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_carry(14),
	datae => \ALT_INV_A[14]~input_o\,
	dataf => \ALT_INV_B[14]~input_o\,
	combout => \S~14_combout\);

-- Location: LABCELL_X38_Y49_N32
\G_array[1][14]~36\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][14]~36_combout\ = ( \B[14]~input_o\ & ( ((\B[13]~input_o\ & \A[13]~input_o\)) # (\A[14]~input_o\) ) ) # ( !\B[14]~input_o\ & ( (\B[13]~input_o\ & (\A[13]~input_o\ & \A[14]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[13]~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_A[14]~input_o\,
	dataf => \ALT_INV_B[14]~input_o\,
	combout => \G_array[1][14]~36_combout\);

-- Location: LABCELL_X38_Y49_N20
\G_array~34\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~34_combout\ = ( \B[14]~input_o\ & ( (!\A[14]~input_o\ & (!\A[13]~input_o\ $ (!\B[13]~input_o\))) ) ) # ( !\B[14]~input_o\ & ( (\A[14]~input_o\ & (!\A[13]~input_o\ $ (!\B[13]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000110000110000000011000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_B[13]~input_o\,
	dataf => \ALT_INV_B[14]~input_o\,
	combout => \G_array~34_combout\);

-- Location: LABCELL_X38_Y49_N8
\G_array~37\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~37_combout\ = ( \G_array~34_combout\ & ( \G_array[1][12]~28_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_G_array[1][12]~28_combout\,
	dataf => \ALT_INV_G_array~34_combout\,
	combout => \G_array~37_combout\);

-- Location: LABCELL_X38_Y49_N28
\P_array[2][14]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[2][14]~7_combout\ = ( \G_array~34_combout\ & ( \G_array~27_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~27_combout\,
	dataf => \ALT_INV_G_array~34_combout\,
	combout => \P_array[2][14]~7_combout\);

-- Location: LABCELL_X38_Y49_N26
\G_array[3][14]\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[3][14]~combout\ = ( \G_array[1][10]~21_combout\ & ( (!\G_array[1][14]~36_combout\ & (!\G_array~37_combout\ & !\P_array[2][14]~7_combout\)) ) ) # ( !\G_array[1][10]~21_combout\ & ( (!\G_array[1][14]~36_combout\ & (!\G_array~37_combout\ & 
-- ((!\G_array~23_combout\) # (!\P_array[2][14]~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010000000101000001000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array[1][14]~36_combout\,
	datab => \ALT_INV_G_array~23_combout\,
	datac => \ALT_INV_G_array~37_combout\,
	datad => \ALT_INV_P_array[2][14]~7_combout\,
	dataf => \ALT_INV_G_array[1][10]~21_combout\,
	combout => \G_array[3][14]~combout\);

-- Location: MLABCELL_X46_Y49_N8
\G_array~35\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~35_combout\ = ( \P_array[2][10]~3_combout\ & ( (\P_array[2][14]~7_combout\ & ((!\G_array[6][6]~12_combout\) # (\G_array~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000001100110011000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_P_array[2][14]~7_combout\,
	datac => \ALT_INV_G_array[6][6]~12_combout\,
	datad => \ALT_INV_G_array~10_combout\,
	dataf => \ALT_INV_P_array[2][10]~3_combout\,
	combout => \G_array~35_combout\);

-- Location: MLABCELL_X46_Y49_N6
\carry~15\ : arriaii_lcell_comb
-- Equation(s):
-- \carry~15_combout\ = ( \P_array[2][10]~3_combout\ & ( (\carry~4_combout\ & \P_array[2][14]~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_carry~4_combout\,
	datad => \ALT_INV_P_array[2][14]~7_combout\,
	dataf => \ALT_INV_P_array[2][10]~3_combout\,
	combout => \carry~15_combout\);

-- Location: LABCELL_X45_Y49_N20
\carry[15]\ : arriaii_lcell_comb
-- Equation(s):
-- carry(15) = ( !\carry~15_combout\ & ( (\G_array[3][14]~combout\ & !\G_array~35_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_G_array[3][14]~combout\,
	datad => \ALT_INV_G_array~35_combout\,
	dataf => \ALT_INV_carry~15_combout\,
	combout => carry(15));

-- Location: IOIBUF_X38_Y56_N32
\B[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X40_Y56_N32
\A[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: MLABCELL_X39_Y49_N6
\S~15\ : arriaii_lcell_comb
-- Equation(s):
-- \S~15_combout\ = ( \B[15]~input_o\ & ( \A[15]~input_o\ & ( !carry(15) ) ) ) # ( !\B[15]~input_o\ & ( \A[15]~input_o\ & ( carry(15) ) ) ) # ( \B[15]~input_o\ & ( !\A[15]~input_o\ & ( carry(15) ) ) ) # ( !\B[15]~input_o\ & ( !\A[15]~input_o\ & ( !carry(15) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000011110000111100001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_carry(15),
	datae => \ALT_INV_B[15]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \S~15_combout\);

-- Location: IOIBUF_X31_Y56_N1
\B[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: IOIBUF_X42_Y56_N63
\A[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: MLABCELL_X39_Y49_N10
\G_array~38\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~38_combout\ = ( \A[15]~input_o\ & ( (!\B[15]~input_o\ & (!\B[14]~input_o\ $ (!\A[14]~input_o\))) ) ) # ( !\A[15]~input_o\ & ( (\B[15]~input_o\ & (!\B[14]~input_o\ $ (!\A[14]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000111100000000000011110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[14]~input_o\,
	datac => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_B[15]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \G_array~38_combout\);

-- Location: MLABCELL_X39_Y47_N16
\P_array[2][15]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[2][15]~8_combout\ = ( \G_array~30_combout\ & ( \G_array~38_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G_array~38_combout\,
	dataf => \ALT_INV_G_array~30_combout\,
	combout => \P_array[2][15]~8_combout\);

-- Location: MLABCELL_X39_Y47_N22
\carry~16\ : arriaii_lcell_comb
-- Equation(s):
-- \carry~16_combout\ = ( \carry~5_combout\ & ( (\P_array[2][11]~4_combout\ & \P_array[2][15]~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[2][11]~4_combout\,
	datac => \ALT_INV_P_array[2][15]~8_combout\,
	dataf => \ALT_INV_carry~5_combout\,
	combout => \carry~16_combout\);

-- Location: MLABCELL_X39_Y47_N18
\G_array~41\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~41_combout\ = (\G_array~38_combout\ & \G_array[1][13]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G_array~38_combout\,
	datad => \ALT_INV_G_array[1][13]~32_combout\,
	combout => \G_array~41_combout\);

-- Location: MLABCELL_X39_Y49_N14
\G_array[1][15]~40\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][15]~40_combout\ = ( \A[14]~input_o\ & ( \A[15]~input_o\ & ( (\B[14]~input_o\) # (\B[15]~input_o\) ) ) ) # ( !\A[14]~input_o\ & ( \A[15]~input_o\ & ( \B[15]~input_o\ ) ) ) # ( \A[14]~input_o\ & ( !\A[15]~input_o\ & ( (\B[15]~input_o\ & 
-- \B[14]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100110011001100110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[15]~input_o\,
	datac => \ALT_INV_B[14]~input_o\,
	datae => \ALT_INV_A[14]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \G_array[1][15]~40_combout\);

-- Location: MLABCELL_X39_Y47_N4
\G_array[3][15]\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[3][15]~combout\ = ( !\G_array[1][15]~40_combout\ & ( (!\G_array~41_combout\ & ((!\P_array[2][15]~8_combout\) # ((!\G_array~26_combout\ & !\G_array[1][11]~24_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100010001000101010001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~41_combout\,
	datab => \ALT_INV_P_array[2][15]~8_combout\,
	datac => \ALT_INV_G_array~26_combout\,
	datad => \ALT_INV_G_array[1][11]~24_combout\,
	dataf => \ALT_INV_G_array[1][15]~40_combout\,
	combout => \G_array[3][15]~combout\);

-- Location: MLABCELL_X39_Y47_N6
\G_array~39\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~39_combout\ = (\P_array[2][15]~8_combout\ & (!\G_array[6][7]~combout\ & \P_array[2][11]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_P_array[2][15]~8_combout\,
	datac => \ALT_INV_G_array[6][7]~combout\,
	datad => \ALT_INV_P_array[2][11]~4_combout\,
	combout => \G_array~39_combout\);

-- Location: MLABCELL_X39_Y45_N0
\carry[16]\ : arriaii_lcell_comb
-- Equation(s):
-- carry(16) = ( !\G_array~39_combout\ & ( (!\carry~16_combout\ & \G_array[3][15]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_carry~16_combout\,
	datad => \ALT_INV_G_array[3][15]~combout\,
	dataf => \ALT_INV_G_array~39_combout\,
	combout => carry(16));

-- Location: MLABCELL_X39_Y49_N16
\S~16\ : arriaii_lcell_comb
-- Equation(s):
-- \S~16_combout\ = !\B[16]~input_o\ $ (!\A[16]~input_o\ $ (!carry(16)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011010010110100101101001011010010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[16]~input_o\,
	datab => \ALT_INV_A[16]~input_o\,
	datac => ALT_INV_carry(16),
	combout => \S~16_combout\);

-- Location: MLABCELL_X39_Y49_N2
\G_array[1][16]~44\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][16]~44_combout\ = ( \A[15]~input_o\ & ( (!\B[16]~input_o\ & (\A[16]~input_o\ & \B[15]~input_o\)) # (\B[16]~input_o\ & ((\B[15]~input_o\) # (\A[16]~input_o\))) ) ) # ( !\A[15]~input_o\ & ( (\B[16]~input_o\ & \A[16]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[16]~input_o\,
	datab => \ALT_INV_A[16]~input_o\,
	datac => \ALT_INV_B[15]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \G_array[1][16]~44_combout\);

-- Location: MLABCELL_X39_Y49_N0
\G_array~42\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~42_combout\ = ( \A[15]~input_o\ & ( (!\B[15]~input_o\ & (!\B[16]~input_o\ $ (!\A[16]~input_o\))) ) ) # ( !\A[15]~input_o\ & ( (\B[15]~input_o\ & (!\B[16]~input_o\ $ (!\A[16]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000000110011001100110000000000110011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[16]~input_o\,
	datab => \ALT_INV_A[16]~input_o\,
	datad => \ALT_INV_B[15]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \G_array~42_combout\);

-- Location: MLABCELL_X39_Y49_N24
\G_array~45\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~45_combout\ = ( \G_array[1][14]~36_combout\ & ( \G_array~42_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~42_combout\,
	dataf => \ALT_INV_G_array[1][14]~36_combout\,
	combout => \G_array~45_combout\);

-- Location: MLABCELL_X39_Y49_N26
\P_array[2][16]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[2][16]~9_combout\ = ( \G_array~34_combout\ & ( \G_array~42_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~42_combout\,
	dataf => \ALT_INV_G_array~34_combout\,
	combout => \P_array[2][16]~9_combout\);

-- Location: MLABCELL_X42_Y48_N24
\G_array[3][16]\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[3][16]~combout\ = ( \P_array[2][16]~9_combout\ & ( (!\G_array~29_combout\ & (!\G_array[1][12]~28_combout\ & (!\G_array[1][16]~44_combout\ & !\G_array~45_combout\))) ) ) # ( !\P_array[2][16]~9_combout\ & ( (!\G_array[1][16]~44_combout\ & 
-- !\G_array~45_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~29_combout\,
	datab => \ALT_INV_G_array[1][12]~28_combout\,
	datac => \ALT_INV_G_array[1][16]~44_combout\,
	datad => \ALT_INV_G_array~45_combout\,
	dataf => \ALT_INV_P_array[2][16]~9_combout\,
	combout => \G_array[3][16]~combout\);

-- Location: MLABCELL_X42_Y48_N2
\G_array~43\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~43_combout\ = ( \P_array[2][16]~9_combout\ & ( \P_array[2][12]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[2][12]~5_combout\,
	dataf => \ALT_INV_P_array[2][16]~9_combout\,
	combout => \G_array~43_combout\);

-- Location: LABCELL_X43_Y48_N26
\carry[17]~17\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[17]~17_combout\ = ( \carry[25]~6_combout\ & ( (\G_array[3][16]~combout\ & !\G_array~43_combout\) ) ) # ( !\carry[25]~6_combout\ & ( (\G_array[3][16]~combout\ & ((!\G_array~43_combout\) # (\G_array[3][8]~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010101010100000101010101010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array[3][16]~combout\,
	datac => \ALT_INV_G_array~43_combout\,
	datad => \ALT_INV_G_array[3][8]~combout\,
	dataf => \ALT_INV_carry[25]~6_combout\,
	combout => \carry[17]~17_combout\);

-- Location: IOIBUF_X14_Y56_N32
\B[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X15_Y56_N63
\A[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: MLABCELL_X39_Y49_N30
\S~17\ : arriaii_lcell_comb
-- Equation(s):
-- \S~17_combout\ = ( \A[17]~input_o\ & ( !\carry[17]~17_combout\ $ (!\B[17]~input_o\) ) ) # ( !\A[17]~input_o\ & ( !\carry[17]~17_combout\ $ (\B[17]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101101001011010010101011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_carry[17]~17_combout\,
	datac => \ALT_INV_B[17]~input_o\,
	dataf => \ALT_INV_A[17]~input_o\,
	combout => \S~17_combout\);

-- Location: IOIBUF_X17_Y56_N63
\B[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: IOIBUF_X35_Y56_N63
\A[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: MLABCELL_X39_Y49_N18
\G_array~46\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~46_combout\ = ( \A[17]~input_o\ & ( (!\B[17]~input_o\ & (!\B[16]~input_o\ $ (!\A[16]~input_o\))) ) ) # ( !\A[17]~input_o\ & ( (\B[17]~input_o\ & (!\B[16]~input_o\ $ (!\A[16]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011001100000011000000110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[16]~input_o\,
	datab => \ALT_INV_A[16]~input_o\,
	datac => \ALT_INV_B[17]~input_o\,
	dataf => \ALT_INV_A[17]~input_o\,
	combout => \G_array~46_combout\);

-- Location: MLABCELL_X39_Y49_N28
\G_array~49\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~49_combout\ = ( \G_array[1][15]~40_combout\ & ( \G_array~46_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_G_array~46_combout\,
	dataf => \ALT_INV_G_array[1][15]~40_combout\,
	combout => \G_array~49_combout\);

-- Location: MLABCELL_X39_Y49_N32
\G_array[1][17]~48\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][17]~48_combout\ = ( \B[17]~input_o\ & ( ((\B[16]~input_o\ & \A[16]~input_o\)) # (\A[17]~input_o\) ) ) # ( !\B[17]~input_o\ & ( (\A[17]~input_o\ & (\B[16]~input_o\ & \A[16]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101010101010101111100000000000001010101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[17]~input_o\,
	datac => \ALT_INV_B[16]~input_o\,
	datad => \ALT_INV_A[16]~input_o\,
	datae => \ALT_INV_B[17]~input_o\,
	combout => \G_array[1][17]~48_combout\);

-- Location: LABCELL_X40_Y47_N2
\P_array[2][17]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[2][17]~10_combout\ = ( \G_array~38_combout\ & ( \G_array~46_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_G_array~38_combout\,
	dataf => \ALT_INV_G_array~46_combout\,
	combout => \P_array[2][17]~10_combout\);

-- Location: MLABCELL_X42_Y45_N24
\G_array[3][17]\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[3][17]~combout\ = ( \G_array~33_combout\ & ( (!\G_array~49_combout\ & (!\G_array[1][17]~48_combout\ & !\P_array[2][17]~10_combout\)) ) ) # ( !\G_array~33_combout\ & ( (!\G_array~49_combout\ & (!\G_array[1][17]~48_combout\ & 
-- ((!\P_array[2][17]~10_combout\) # (!\G_array[1][13]~32_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010000000100010001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~49_combout\,
	datab => \ALT_INV_G_array[1][17]~48_combout\,
	datac => \ALT_INV_P_array[2][17]~10_combout\,
	datad => \ALT_INV_G_array[1][13]~32_combout\,
	dataf => \ALT_INV_G_array~33_combout\,
	combout => \G_array[3][17]~combout\);

-- Location: MLABCELL_X42_Y45_N2
\G_array~47\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~47_combout\ = (\P_array[2][17]~10_combout\ & \P_array[2][13]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[2][17]~10_combout\,
	datac => \ALT_INV_P_array[2][13]~6_combout\,
	combout => \G_array~47_combout\);

-- Location: MLABCELL_X42_Y45_N0
\carry[18]~18\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[18]~18_combout\ = ( \G_array~47_combout\ & ( (\G_array[3][9]~combout\ & (\G_array[3][17]~combout\ & !\carry[10]~7_combout\)) ) ) # ( !\G_array~47_combout\ & ( \G_array[3][17]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G_array[3][9]~combout\,
	datac => \ALT_INV_G_array[3][17]~combout\,
	datad => \ALT_INV_carry[10]~7_combout\,
	dataf => \ALT_INV_G_array~47_combout\,
	combout => \carry[18]~18_combout\);

-- Location: MLABCELL_X39_Y48_N22
\S~18\ : arriaii_lcell_comb
-- Equation(s):
-- \S~18_combout\ = ( \carry[18]~18_combout\ & ( !\B[18]~input_o\ $ (!\A[18]~input_o\) ) ) # ( !\carry[18]~18_combout\ & ( !\B[18]~input_o\ $ (\A[18]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[18]~input_o\,
	datad => \ALT_INV_A[18]~input_o\,
	dataf => \ALT_INV_carry[18]~18_combout\,
	combout => \S~18_combout\);

-- Location: IOIBUF_X38_Y56_N94
\B[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X7_Y56_N32
\A[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: MLABCELL_X39_Y48_N24
\G_array~50\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~50_combout\ = ( \B[18]~input_o\ & ( (!\A[18]~input_o\ & (!\A[17]~input_o\ $ (!\B[17]~input_o\))) ) ) # ( !\B[18]~input_o\ & ( (\A[18]~input_o\ & (!\A[17]~input_o\ $ (!\B[17]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000111100000000000011110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[17]~input_o\,
	datac => \ALT_INV_B[17]~input_o\,
	datad => \ALT_INV_A[18]~input_o\,
	dataf => \ALT_INV_B[18]~input_o\,
	combout => \G_array~50_combout\);

-- Location: MLABCELL_X39_Y49_N38
\G_array~54\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~54_combout\ = ( \G_array[1][16]~44_combout\ & ( \G_array~50_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~50_combout\,
	dataf => \ALT_INV_G_array[1][16]~44_combout\,
	combout => \G_array~54_combout\);

-- Location: MLABCELL_X39_Y48_N8
\G_array[1][18]~53\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][18]~53_combout\ = ( \B[18]~input_o\ & ( ((\B[17]~input_o\ & \A[17]~input_o\)) # (\A[18]~input_o\) ) ) # ( !\B[18]~input_o\ & ( (\B[17]~input_o\ & (\A[17]~input_o\ & \A[18]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100010001111111110001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[17]~input_o\,
	datab => \ALT_INV_A[17]~input_o\,
	datad => \ALT_INV_A[18]~input_o\,
	dataf => \ALT_INV_B[18]~input_o\,
	combout => \G_array[1][18]~53_combout\);

-- Location: MLABCELL_X39_Y49_N36
\P_array[2][18]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[2][18]~11_combout\ = (\G_array~50_combout\ & \G_array~42_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~50_combout\,
	datac => \ALT_INV_G_array~42_combout\,
	combout => \P_array[2][18]~11_combout\);

-- Location: MLABCELL_X46_Y49_N14
\G_array[3][18]\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[3][18]~combout\ = ( \G_array[1][14]~36_combout\ & ( (!\G_array~54_combout\ & (!\G_array[1][18]~53_combout\ & !\P_array[2][18]~11_combout\)) ) ) # ( !\G_array[1][14]~36_combout\ & ( (!\G_array~54_combout\ & (!\G_array[1][18]~53_combout\ & 
-- ((!\P_array[2][18]~11_combout\) # (!\G_array~37_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010000000100010001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~54_combout\,
	datab => \ALT_INV_G_array[1][18]~53_combout\,
	datac => \ALT_INV_P_array[2][18]~11_combout\,
	datad => \ALT_INV_G_array~37_combout\,
	dataf => \ALT_INV_G_array[1][14]~36_combout\,
	combout => \G_array[3][18]~combout\);

-- Location: MLABCELL_X46_Y49_N20
\G_array~51\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~51_combout\ = ( \P_array[2][18]~11_combout\ & ( \P_array[2][14]~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_P_array[2][14]~7_combout\,
	dataf => \ALT_INV_P_array[2][18]~11_combout\,
	combout => \G_array~51_combout\);

-- Location: LABCELL_X45_Y48_N22
\G_array~52\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~52_combout\ = (!\G_array[3][10]~combout\ & \G_array~51_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G_array[3][10]~combout\,
	datac => \ALT_INV_G_array~51_combout\,
	combout => \G_array~52_combout\);

-- Location: LABCELL_X45_Y48_N4
\carry[35]~19\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[35]~19_combout\ = ( \carry[11]~8_combout\ & ( \G_array~51_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G_array~51_combout\,
	dataf => \ALT_INV_carry[11]~8_combout\,
	combout => \carry[35]~19_combout\);

-- Location: LABCELL_X45_Y48_N28
\carry[19]~20\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[19]~20_combout\ = (\G_array[3][18]~combout\ & (!\G_array~52_combout\ & !\carry[35]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array[3][18]~combout\,
	datab => \ALT_INV_G_array~52_combout\,
	datac => \ALT_INV_carry[35]~19_combout\,
	combout => \carry[19]~20_combout\);

-- Location: MLABCELL_X39_Y48_N12
\S~19\ : arriaii_lcell_comb
-- Equation(s):
-- \S~19_combout\ = ( \carry[19]~20_combout\ & ( !\B[19]~input_o\ $ (!\A[19]~input_o\) ) ) # ( !\carry[19]~20_combout\ & ( !\B[19]~input_o\ $ (\A[19]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100101100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[19]~input_o\,
	datab => \ALT_INV_A[19]~input_o\,
	dataf => \ALT_INV_carry[19]~20_combout\,
	combout => \S~19_combout\);

-- Location: IOIBUF_X19_Y56_N63
\A[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: IOIBUF_X35_Y56_N32
\B[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: MLABCELL_X39_Y48_N14
\G_array~55\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~55_combout\ = (!\B[19]~input_o\ & (\A[19]~input_o\ & (!\B[18]~input_o\ $ (!\A[18]~input_o\)))) # (\B[19]~input_o\ & (!\A[19]~input_o\ & (!\B[18]~input_o\ $ (!\A[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001100000000001100110000000000110011000000000011001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[19]~input_o\,
	datab => \ALT_INV_A[19]~input_o\,
	datac => \ALT_INV_B[18]~input_o\,
	datad => \ALT_INV_A[18]~input_o\,
	combout => \G_array~55_combout\);

-- Location: MLABCELL_X39_Y49_N8
\P_array[2][19]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[2][19]~12_combout\ = (\G_array~46_combout\ & \G_array~55_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~46_combout\,
	datac => \ALT_INV_G_array~55_combout\,
	combout => \P_array[2][19]~12_combout\);

-- Location: MLABCELL_X39_Y47_N10
\G_array~56\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~56_combout\ = ( \P_array[2][15]~8_combout\ & ( \P_array[2][19]~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_P_array[2][19]~12_combout\,
	dataf => \ALT_INV_P_array[2][15]~8_combout\,
	combout => \G_array~56_combout\);

-- Location: MLABCELL_X39_Y47_N34
\G_array~58\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~58_combout\ = (\G_array[1][17]~48_combout\ & \G_array~55_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_G_array[1][17]~48_combout\,
	datad => \ALT_INV_G_array~55_combout\,
	combout => \G_array~58_combout\);

-- Location: MLABCELL_X39_Y48_N38
\G_array[1][19]~57\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][19]~57_combout\ = (!\B[19]~input_o\ & (\A[19]~input_o\ & (\B[18]~input_o\ & \A[18]~input_o\))) # (\B[19]~input_o\ & (((\B[18]~input_o\ & \A[18]~input_o\)) # (\A[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010111000100010001011100010001000101110001000100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[19]~input_o\,
	datab => \ALT_INV_A[19]~input_o\,
	datac => \ALT_INV_B[18]~input_o\,
	datad => \ALT_INV_A[18]~input_o\,
	combout => \G_array[1][19]~57_combout\);

-- Location: MLABCELL_X39_Y47_N32
\G_array[3][19]\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[3][19]~combout\ = ( \P_array[2][19]~12_combout\ & ( (!\G_array~41_combout\ & (!\G_array~58_combout\ & (!\G_array[1][15]~40_combout\ & !\G_array[1][19]~57_combout\))) ) ) # ( !\P_array[2][19]~12_combout\ & ( (!\G_array~58_combout\ & 
-- !\G_array[1][19]~57_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~41_combout\,
	datab => \ALT_INV_G_array~58_combout\,
	datac => \ALT_INV_G_array[1][15]~40_combout\,
	datad => \ALT_INV_G_array[1][19]~57_combout\,
	dataf => \ALT_INV_P_array[2][19]~12_combout\,
	combout => \G_array[3][19]~combout\);

-- Location: LABCELL_X40_Y46_N2
\carry[20]~21\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[20]~21_combout\ = ( \G_array[3][19]~combout\ & ( (!\G_array~56_combout\) # ((!\carry[12]~10_combout\ & \G_array[3][11]~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111001000101111111100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_carry[12]~10_combout\,
	datab => \ALT_INV_G_array[3][11]~combout\,
	datad => \ALT_INV_G_array~56_combout\,
	dataf => \ALT_INV_G_array[3][19]~combout\,
	combout => \carry[20]~21_combout\);

-- Location: MLABCELL_X39_Y48_N2
\S~20\ : arriaii_lcell_comb
-- Equation(s):
-- \S~20_combout\ = ( \carry[20]~21_combout\ & ( !\A[20]~input_o\ $ (!\B[20]~input_o\) ) ) # ( !\carry[20]~21_combout\ & ( !\A[20]~input_o\ $ (\B[20]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101101001011010010101011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[20]~input_o\,
	datac => \ALT_INV_B[20]~input_o\,
	dataf => \ALT_INV_carry[20]~21_combout\,
	combout => \S~20_combout\);

-- Location: MLABCELL_X39_Y48_N36
\G_array~59\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~59_combout\ = ( \B[20]~input_o\ & ( (!\A[20]~input_o\ & (!\B[19]~input_o\ $ (!\A[19]~input_o\))) ) ) # ( !\B[20]~input_o\ & ( (\A[20]~input_o\ & (!\B[19]~input_o\ $ (!\A[19]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011001100000011000000110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[19]~input_o\,
	datab => \ALT_INV_A[19]~input_o\,
	datac => \ALT_INV_A[20]~input_o\,
	dataf => \ALT_INV_B[20]~input_o\,
	combout => \G_array~59_combout\);

-- Location: MLABCELL_X42_Y48_N14
\P_array[2][20]~13\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[2][20]~13_combout\ = ( \G_array~59_combout\ & ( \G_array~50_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_G_array~50_combout\,
	dataf => \ALT_INV_G_array~59_combout\,
	combout => \P_array[2][20]~13_combout\);

-- Location: MLABCELL_X39_Y48_N6
\G_array[1][20]~60\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][20]~60_combout\ = (!\A[20]~input_o\ & (\B[20]~input_o\ & (\A[19]~input_o\ & \B[19]~input_o\))) # (\A[20]~input_o\ & (((\A[19]~input_o\ & \B[19]~input_o\)) # (\B[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010111000100010001011100010001000101110001000100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[20]~input_o\,
	datab => \ALT_INV_B[20]~input_o\,
	datac => \ALT_INV_A[19]~input_o\,
	datad => \ALT_INV_B[19]~input_o\,
	combout => \G_array[1][20]~60_combout\);

-- Location: LABCELL_X47_Y48_N0
\G_array~61\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~61_combout\ = ( \G_array[1][18]~53_combout\ & ( \G_array~59_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_G_array~59_combout\,
	datae => \ALT_INV_G_array[1][18]~53_combout\,
	combout => \G_array~61_combout\);

-- Location: MLABCELL_X42_Y48_N12
\G_array[3][20]\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[3][20]~combout\ = ( !\G_array~61_combout\ & ( (!\G_array[1][20]~60_combout\ & ((!\P_array[2][20]~13_combout\) # ((!\G_array[1][16]~44_combout\ & !\G_array~45_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100010001000110010001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[2][20]~13_combout\,
	datab => \ALT_INV_G_array[1][20]~60_combout\,
	datac => \ALT_INV_G_array[1][16]~44_combout\,
	datad => \ALT_INV_G_array~45_combout\,
	dataf => \ALT_INV_G_array~61_combout\,
	combout => \G_array[3][20]~combout\);

-- Location: MLABCELL_X42_Y48_N36
\carry[21]~22\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[21]~22_combout\ = ( \G_array~43_combout\ & ( (\P_array[2][20]~13_combout\ & (\P_array[2][8]~1_combout\ & !carry(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_P_array[2][20]~13_combout\,
	datac => \ALT_INV_P_array[2][8]~1_combout\,
	datad => ALT_INV_carry(5),
	dataf => \ALT_INV_G_array~43_combout\,
	combout => \carry[21]~22_combout\);

-- Location: MLABCELL_X42_Y48_N38
\carry[21]~23\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[21]~23_combout\ = ( !\carry[21]~22_combout\ & ( (\G_array[3][20]~combout\ & ((!\P_array[2][16]~9_combout\) # ((!\P_array[2][20]~13_combout\) # (\G_array[3][12]~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101111000000001110111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[2][16]~9_combout\,
	datab => \ALT_INV_P_array[2][20]~13_combout\,
	datac => \ALT_INV_G_array[3][12]~combout\,
	datad => \ALT_INV_G_array[3][20]~combout\,
	dataf => \ALT_INV_carry[21]~22_combout\,
	combout => \carry[21]~23_combout\);

-- Location: IOIBUF_X17_Y56_N1
\B[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: IOIBUF_X10_Y56_N63
\A[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: MLABCELL_X39_Y48_N10
\S~21\ : arriaii_lcell_comb
-- Equation(s):
-- \S~21_combout\ = ( \A[21]~input_o\ & ( !\carry[21]~23_combout\ $ (!\B[21]~input_o\) ) ) # ( !\A[21]~input_o\ & ( !\carry[21]~23_combout\ $ (\B[21]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_carry[21]~23_combout\,
	datad => \ALT_INV_B[21]~input_o\,
	dataf => \ALT_INV_A[21]~input_o\,
	combout => \S~21_combout\);

-- Location: MLABCELL_X39_Y48_N4
\G_array~62\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~62_combout\ = ( \A[21]~input_o\ & ( (!\B[21]~input_o\ & (!\A[20]~input_o\ $ (!\B[20]~input_o\))) ) ) # ( !\A[21]~input_o\ & ( (\B[21]~input_o\ & (!\A[20]~input_o\ $ (!\B[20]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011001100000011000000110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[20]~input_o\,
	datab => \ALT_INV_B[20]~input_o\,
	datac => \ALT_INV_B[21]~input_o\,
	dataf => \ALT_INV_A[21]~input_o\,
	combout => \G_array~62_combout\);

-- Location: MLABCELL_X39_Y48_N20
\G_array~65\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~65_combout\ = ( \G_array[1][19]~57_combout\ & ( \G_array~62_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_G_array~62_combout\,
	dataf => \ALT_INV_G_array[1][19]~57_combout\,
	combout => \G_array~65_combout\);

-- Location: MLABCELL_X39_Y48_N0
\G_array[1][21]~64\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][21]~64_combout\ = ( \B[20]~input_o\ & ( (!\A[20]~input_o\ & (\A[21]~input_o\ & \B[21]~input_o\)) # (\A[20]~input_o\ & ((\B[21]~input_o\) # (\A[21]~input_o\))) ) ) # ( !\B[20]~input_o\ & ( (\A[21]~input_o\ & \B[21]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[20]~input_o\,
	datab => \ALT_INV_A[21]~input_o\,
	datac => \ALT_INV_B[21]~input_o\,
	dataf => \ALT_INV_B[20]~input_o\,
	combout => \G_array[1][21]~64_combout\);

-- Location: MLABCELL_X42_Y45_N10
\P_array[2][21]~14\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[2][21]~14_combout\ = ( \G_array~62_combout\ & ( \G_array~55_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~55_combout\,
	dataf => \ALT_INV_G_array~62_combout\,
	combout => \P_array[2][21]~14_combout\);

-- Location: MLABCELL_X42_Y45_N26
\G_array[3][21]\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[3][21]~combout\ = ( \P_array[2][21]~14_combout\ & ( (!\G_array~49_combout\ & (!\G_array[1][17]~48_combout\ & (!\G_array~65_combout\ & !\G_array[1][21]~64_combout\))) ) ) # ( !\P_array[2][21]~14_combout\ & ( (!\G_array~65_combout\ & 
-- !\G_array[1][21]~64_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~49_combout\,
	datab => \ALT_INV_G_array[1][17]~48_combout\,
	datac => \ALT_INV_G_array~65_combout\,
	datad => \ALT_INV_G_array[1][21]~64_combout\,
	dataf => \ALT_INV_P_array[2][21]~14_combout\,
	combout => \G_array[3][21]~combout\);

-- Location: MLABCELL_X37_Y47_N12
\carry[38]~24\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[38]~24_combout\ = ( \P_array[2][21]~14_combout\ & ( \G_array~47_combout\ & ( (\P_array[2][9]~2_combout\ & ((!\G_array[6][5]~combout\) # ((p(5) & \carry~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_p(5),
	datab => \ALT_INV_G_array[6][5]~combout\,
	datac => \ALT_INV_carry~3_combout\,
	datad => \ALT_INV_P_array[2][9]~2_combout\,
	datae => \ALT_INV_P_array[2][21]~14_combout\,
	dataf => \ALT_INV_G_array~47_combout\,
	combout => \carry[38]~24_combout\);

-- Location: MLABCELL_X42_Y44_N2
\G_array~63\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~63_combout\ = ( \P_array[2][21]~14_combout\ & ( (\P_array[2][17]~10_combout\ & !\G_array[3][13]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_P_array[2][17]~10_combout\,
	datad => \ALT_INV_G_array[3][13]~combout\,
	dataf => \ALT_INV_P_array[2][21]~14_combout\,
	combout => \G_array~63_combout\);

-- Location: MLABCELL_X42_Y44_N24
\carry[22]~25\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[22]~25_combout\ = ( !\G_array~63_combout\ & ( (\G_array[3][21]~combout\ & !\carry[38]~24_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G_array[3][21]~combout\,
	datac => \ALT_INV_carry[38]~24_combout\,
	dataf => \ALT_INV_G_array~63_combout\,
	combout => \carry[22]~25_combout\);

-- Location: IOIBUF_X30_Y56_N32
\A[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: IOIBUF_X31_Y56_N32
\B[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: MLABCELL_X39_Y48_N28
\S~22\ : arriaii_lcell_comb
-- Equation(s):
-- \S~22_combout\ = !\carry[22]~25_combout\ $ (!\A[22]~input_o\ $ (!\B[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100111100110000110011110011000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_carry[22]~25_combout\,
	datac => \ALT_INV_A[22]~input_o\,
	datad => \ALT_INV_B[22]~input_o\,
	combout => \S~22_combout\);

-- Location: IOIBUF_X40_Y56_N63
\A[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: IOIBUF_X59_Y31_N63
\B[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: MLABCELL_X39_Y48_N34
\G_array[1][22]~68\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][22]~68_combout\ = ( \B[21]~input_o\ & ( (!\A[22]~input_o\ & (\A[21]~input_o\ & \B[22]~input_o\)) # (\A[22]~input_o\ & ((\B[22]~input_o\) # (\A[21]~input_o\))) ) ) # ( !\B[21]~input_o\ & ( (\A[22]~input_o\ & \B[22]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100010001011101110001000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[22]~input_o\,
	datab => \ALT_INV_A[21]~input_o\,
	datad => \ALT_INV_B[22]~input_o\,
	dataf => \ALT_INV_B[21]~input_o\,
	combout => \G_array[1][22]~68_combout\);

-- Location: MLABCELL_X39_Y48_N32
\G_array~66\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~66_combout\ = (!\A[22]~input_o\ & (\B[22]~input_o\ & (!\A[21]~input_o\ $ (!\B[21]~input_o\)))) # (\A[22]~input_o\ & (!\B[22]~input_o\ & (!\A[21]~input_o\ $ (!\B[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001001001000000100100100100000010010010010000001001001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[22]~input_o\,
	datab => \ALT_INV_A[21]~input_o\,
	datac => \ALT_INV_B[22]~input_o\,
	datad => \ALT_INV_B[21]~input_o\,
	combout => \G_array~66_combout\);

-- Location: MLABCELL_X39_Y48_N26
\G_array~69\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~69_combout\ = ( \G_array[1][20]~60_combout\ & ( \G_array~66_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~66_combout\,
	dataf => \ALT_INV_G_array[1][20]~60_combout\,
	combout => \G_array~69_combout\);

-- Location: LABCELL_X47_Y48_N4
\P_array[2][22]~15\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[2][22]~15_combout\ = ( \G_array~59_combout\ & ( \G_array~66_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~66_combout\,
	dataf => \ALT_INV_G_array~59_combout\,
	combout => \P_array[2][22]~15_combout\);

-- Location: MLABCELL_X46_Y49_N12
\G_array[3][22]\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[3][22]~combout\ = ( \P_array[2][22]~15_combout\ & ( (!\G_array~54_combout\ & (!\G_array[1][18]~53_combout\ & (!\G_array[1][22]~68_combout\ & !\G_array~69_combout\))) ) ) # ( !\P_array[2][22]~15_combout\ & ( (!\G_array[1][22]~68_combout\ & 
-- !\G_array~69_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~54_combout\,
	datab => \ALT_INV_G_array[1][18]~53_combout\,
	datac => \ALT_INV_G_array[1][22]~68_combout\,
	datad => \ALT_INV_G_array~69_combout\,
	dataf => \ALT_INV_P_array[2][22]~15_combout\,
	combout => \G_array[3][22]~combout\);

-- Location: MLABCELL_X46_Y49_N2
\carry[39]~26\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[39]~26_combout\ = ( \G_array~10_combout\ & ( \G_array~51_combout\ & ( (\P_array[2][10]~3_combout\ & \P_array[2][22]~15_combout\) ) ) ) # ( !\G_array~10_combout\ & ( \G_array~51_combout\ & ( (\P_array[2][10]~3_combout\ & (\P_array[2][22]~15_combout\ 
-- & ((!\G_array[6][6]~12_combout\) # (\carry~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000000010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[2][10]~3_combout\,
	datab => \ALT_INV_carry~4_combout\,
	datac => \ALT_INV_P_array[2][22]~15_combout\,
	datad => \ALT_INV_G_array[6][6]~12_combout\,
	datae => \ALT_INV_G_array~10_combout\,
	dataf => \ALT_INV_G_array~51_combout\,
	combout => \carry[39]~26_combout\);

-- Location: MLABCELL_X46_Y49_N38
\G_array~67\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~67_combout\ = ( \P_array[2][22]~15_combout\ & ( (!\G_array[3][14]~combout\ & \P_array[2][18]~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_G_array[3][14]~combout\,
	datad => \ALT_INV_P_array[2][18]~11_combout\,
	dataf => \ALT_INV_P_array[2][22]~15_combout\,
	combout => \G_array~67_combout\);

-- Location: MLABCELL_X46_Y49_N26
\carry[23]~27\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[23]~27_combout\ = ( !\G_array~67_combout\ & ( (\G_array[3][22]~combout\ & !\carry[39]~26_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array[3][22]~combout\,
	datac => \ALT_INV_carry[39]~26_combout\,
	dataf => \ALT_INV_G_array~67_combout\,
	combout => \carry[23]~27_combout\);

-- Location: LABCELL_X47_Y48_N28
\S~23\ : arriaii_lcell_comb
-- Equation(s):
-- \S~23_combout\ = ( \carry[23]~27_combout\ & ( !\A[23]~input_o\ $ (!\B[23]~input_o\) ) ) # ( !\carry[23]~27_combout\ & ( !\A[23]~input_o\ $ (\B[23]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000110011001100111100110011001100001100110011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[23]~input_o\,
	datad => \ALT_INV_B[23]~input_o\,
	datae => \ALT_INV_carry[23]~27_combout\,
	combout => \S~23_combout\);

-- Location: IOIBUF_X56_Y56_N94
\B[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: IOIBUF_X56_Y56_N63
\A[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: MLABCELL_X39_Y48_N18
\G_array[1][23]~71\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][23]~71_combout\ = ( \A[23]~input_o\ & ( ((\B[22]~input_o\ & \A[22]~input_o\)) # (\B[23]~input_o\) ) ) # ( !\A[23]~input_o\ & ( (\B[22]~input_o\ & (\B[23]~input_o\ & \A[22]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100110011011101110011001101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[22]~input_o\,
	datab => \ALT_INV_B[23]~input_o\,
	datad => \ALT_INV_A[22]~input_o\,
	dataf => \ALT_INV_A[23]~input_o\,
	combout => \G_array[1][23]~71_combout\);

-- Location: MLABCELL_X39_Y48_N16
\G_array~70\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~70_combout\ = ( \A[23]~input_o\ & ( (!\B[23]~input_o\ & (!\B[22]~input_o\ $ (!\A[22]~input_o\))) ) ) # ( !\A[23]~input_o\ & ( (\B[23]~input_o\ & (!\B[22]~input_o\ $ (!\A[22]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000000001100110000000000110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[23]~input_o\,
	datac => \ALT_INV_B[22]~input_o\,
	datad => \ALT_INV_A[22]~input_o\,
	dataf => \ALT_INV_A[23]~input_o\,
	combout => \G_array~70_combout\);

-- Location: MLABCELL_X39_Y47_N36
\P_array[2][23]~16\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[2][23]~16_combout\ = ( \G_array~70_combout\ & ( \G_array~62_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_G_array~62_combout\,
	dataf => \ALT_INV_G_array~70_combout\,
	combout => \P_array[2][23]~16_combout\);

-- Location: MLABCELL_X39_Y48_N30
\G_array~72\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~72_combout\ = ( \G_array~70_combout\ & ( \G_array[1][21]~64_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array[1][21]~64_combout\,
	dataf => \ALT_INV_G_array~70_combout\,
	combout => \G_array~72_combout\);

-- Location: MLABCELL_X39_Y47_N38
\G_array[3][23]\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[3][23]~combout\ = ( !\G_array~72_combout\ & ( (!\G_array[1][23]~71_combout\ & ((!\P_array[2][23]~16_combout\) # ((!\G_array~58_combout\ & !\G_array[1][19]~57_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010000000101010101000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array[1][23]~71_combout\,
	datab => \ALT_INV_G_array~58_combout\,
	datac => \ALT_INV_G_array[1][19]~57_combout\,
	datad => \ALT_INV_P_array[2][23]~16_combout\,
	dataf => \ALT_INV_G_array~72_combout\,
	combout => \G_array[3][23]~combout\);

-- Location: MLABCELL_X39_Y47_N20
\carry[24]~28\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[24]~28_combout\ = ( \G_array[6][7]~combout\ & ( \G_array[3][23]~combout\ ) ) # ( !\G_array[6][7]~combout\ & ( (\G_array[3][23]~combout\ & ((!\P_array[2][11]~4_combout\) # ((!\G_array~56_combout\) # (!\P_array[2][23]~16_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001110000011110000111000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[2][11]~4_combout\,
	datab => \ALT_INV_G_array~56_combout\,
	datac => \ALT_INV_G_array[3][23]~combout\,
	datad => \ALT_INV_P_array[2][23]~16_combout\,
	dataf => \ALT_INV_G_array[6][7]~combout\,
	combout => \carry[24]~28_combout\);

-- Location: MLABCELL_X39_Y47_N8
\carry[24]\ : arriaii_lcell_comb
-- Equation(s):
-- carry(24) = ( \G_array[3][15]~combout\ & ( (\carry[24]~28_combout\ & ((!\P_array[2][19]~12_combout\) # ((!\carry~16_combout\) # (!\P_array[2][23]~16_combout\)))) ) ) # ( !\G_array[3][15]~combout\ & ( (\carry[24]~28_combout\ & 
-- ((!\P_array[2][19]~12_combout\) # (!\P_array[2][23]~16_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101000100010101010100010001010101010101000101010101010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_carry[24]~28_combout\,
	datab => \ALT_INV_P_array[2][19]~12_combout\,
	datac => \ALT_INV_carry~16_combout\,
	datad => \ALT_INV_P_array[2][23]~16_combout\,
	dataf => \ALT_INV_G_array[3][15]~combout\,
	combout => carry(24));

-- Location: LABCELL_X47_Y48_N12
\S~24\ : arriaii_lcell_comb
-- Equation(s):
-- \S~24_combout\ = ( carry(24) & ( !\B[24]~input_o\ $ (!\A[24]~input_o\) ) ) # ( !carry(24) & ( !\B[24]~input_o\ $ (\A[24]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001010101010101011010101010101010010101010101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[24]~input_o\,
	datad => \ALT_INV_A[24]~input_o\,
	datae => ALT_INV_carry(24),
	combout => \S~24_combout\);

-- Location: IOIBUF_X59_Y25_N1
\A[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: IOIBUF_X51_Y56_N94
\B[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: LABCELL_X47_Y48_N16
\G_array~73\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~73_combout\ = ( \B[23]~input_o\ & ( (!\A[23]~input_o\ & (!\B[24]~input_o\ $ (!\A[24]~input_o\))) ) ) # ( !\B[23]~input_o\ & ( (\A[23]~input_o\ & (!\B[24]~input_o\ $ (!\A[24]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000011001100000000000011001100000000110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[23]~input_o\,
	datac => \ALT_INV_B[24]~input_o\,
	datad => \ALT_INV_A[24]~input_o\,
	datae => \ALT_INV_B[23]~input_o\,
	combout => \G_array~73_combout\);

-- Location: LABCELL_X47_Y48_N22
\P_array[2][24]~17\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[2][24]~17_combout\ = ( \G_array~73_combout\ & ( \G_array~66_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_G_array~66_combout\,
	dataf => \ALT_INV_G_array~73_combout\,
	combout => \P_array[2][24]~17_combout\);

-- Location: LABCELL_X47_Y48_N26
\G_array[1][24]~75\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][24]~75_combout\ = ( \B[23]~input_o\ & ( (!\B[24]~input_o\ & (\A[24]~input_o\ & \A[23]~input_o\)) # (\B[24]~input_o\ & ((\A[23]~input_o\) # (\A[24]~input_o\))) ) ) # ( !\B[23]~input_o\ & ( (\B[24]~input_o\ & \A[24]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000101110001011100010001000100010001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[24]~input_o\,
	datab => \ALT_INV_A[24]~input_o\,
	datac => \ALT_INV_A[23]~input_o\,
	datae => \ALT_INV_B[23]~input_o\,
	combout => \G_array[1][24]~75_combout\);

-- Location: LABCELL_X47_Y48_N8
\G_array~76\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~76_combout\ = ( \G_array~73_combout\ & ( \G_array[1][22]~68_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array[1][22]~68_combout\,
	dataf => \ALT_INV_G_array~73_combout\,
	combout => \G_array~76_combout\);

-- Location: LABCELL_X43_Y48_N14
\G_array[3][24]\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[3][24]~combout\ = ( !\G_array~76_combout\ & ( (!\G_array[1][24]~75_combout\ & ((!\P_array[2][24]~17_combout\) # ((!\G_array[1][20]~60_combout\ & !\G_array~61_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011000000111000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array[1][20]~60_combout\,
	datab => \ALT_INV_P_array[2][24]~17_combout\,
	datac => \ALT_INV_G_array[1][24]~75_combout\,
	datad => \ALT_INV_G_array~61_combout\,
	dataf => \ALT_INV_G_array~76_combout\,
	combout => \G_array[3][24]~combout\);

-- Location: LABCELL_X43_Y48_N22
\carry[41]~29\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[41]~29_combout\ = ( \G_array~43_combout\ & ( (!\G_array[3][8]~combout\) # (\carry[25]~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_carry[25]~6_combout\,
	datab => \ALT_INV_G_array[3][8]~combout\,
	dataf => \ALT_INV_G_array~43_combout\,
	combout => \carry[41]~29_combout\);

-- Location: LABCELL_X43_Y48_N10
\G_array~74\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~74_combout\ = (\P_array[2][20]~13_combout\ & \P_array[2][24]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_P_array[2][20]~13_combout\,
	datad => \ALT_INV_P_array[2][24]~17_combout\,
	combout => \G_array~74_combout\);

-- Location: LABCELL_X43_Y48_N16
\carry[25]~30\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[25]~30_combout\ = ( \G_array~74_combout\ & ( (\G_array[3][24]~combout\ & (\G_array[3][16]~combout\ & !\carry[41]~29_combout\)) ) ) # ( !\G_array~74_combout\ & ( \G_array[3][24]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G_array[3][24]~combout\,
	datac => \ALT_INV_G_array[3][16]~combout\,
	datad => \ALT_INV_carry[41]~29_combout\,
	dataf => \ALT_INV_G_array~74_combout\,
	combout => \carry[25]~30_combout\);

-- Location: LABCELL_X50_Y48_N22
\S~25\ : arriaii_lcell_comb
-- Equation(s):
-- \S~25_combout\ = ( \carry[25]~30_combout\ & ( !\A[25]~input_o\ $ (!\B[25]~input_o\) ) ) # ( !\carry[25]~30_combout\ & ( !\A[25]~input_o\ $ (\B[25]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100101100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[25]~input_o\,
	datab => \ALT_INV_B[25]~input_o\,
	dataf => \ALT_INV_carry[25]~30_combout\,
	combout => \S~25_combout\);

-- Location: IOIBUF_X59_Y21_N94
\B[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: MLABCELL_X42_Y45_N20
\carry[42]~31\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[42]~31_combout\ = ( \G_array~47_combout\ & ( (!\G_array[3][9]~combout\) # (\carry[10]~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G_array[3][9]~combout\,
	datac => \ALT_INV_carry[10]~7_combout\,
	dataf => \ALT_INV_G_array~47_combout\,
	combout => \carry[42]~31_combout\);

-- Location: LABCELL_X50_Y48_N20
\G_array~77\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~77_combout\ = ( \B[24]~input_o\ & ( (!\A[24]~input_o\ & (!\A[25]~input_o\ $ (!\B[25]~input_o\))) ) ) # ( !\B[24]~input_o\ & ( (\A[24]~input_o\ & (!\A[25]~input_o\ $ (!\B[25]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011001100000011000000110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[25]~input_o\,
	datab => \ALT_INV_B[25]~input_o\,
	datac => \ALT_INV_A[24]~input_o\,
	dataf => \ALT_INV_B[24]~input_o\,
	combout => \G_array~77_combout\);

-- Location: MLABCELL_X42_Y45_N32
\P_array[2][25]~18\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[2][25]~18_combout\ = ( \G_array~70_combout\ & ( \G_array~77_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_G_array~77_combout\,
	dataf => \ALT_INV_G_array~70_combout\,
	combout => \P_array[2][25]~18_combout\);

-- Location: MLABCELL_X42_Y45_N16
\G_array~78\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~78_combout\ = ( \P_array[2][21]~14_combout\ & ( \P_array[2][25]~18_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[2][25]~18_combout\,
	dataf => \ALT_INV_P_array[2][21]~14_combout\,
	combout => \G_array~78_combout\);

-- Location: MLABCELL_X42_Y45_N4
\G_array~80\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~80_combout\ = ( \G_array[1][23]~71_combout\ & ( \G_array~77_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_G_array~77_combout\,
	dataf => \ALT_INV_G_array[1][23]~71_combout\,
	combout => \G_array~80_combout\);

-- Location: LABCELL_X50_Y48_N4
\G_array[1][25]~79\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][25]~79_combout\ = ( \B[24]~input_o\ & ( (!\B[25]~input_o\ & (\A[24]~input_o\ & \A[25]~input_o\)) # (\B[25]~input_o\ & ((\A[25]~input_o\) # (\A[24]~input_o\))) ) ) # ( !\B[24]~input_o\ & ( (\B[25]~input_o\ & \A[25]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000011001111110000001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[25]~input_o\,
	datac => \ALT_INV_A[24]~input_o\,
	datad => \ALT_INV_A[25]~input_o\,
	dataf => \ALT_INV_B[24]~input_o\,
	combout => \G_array[1][25]~79_combout\);

-- Location: MLABCELL_X42_Y45_N28
\G_array[3][25]\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[3][25]~combout\ = ( \P_array[2][25]~18_combout\ & ( (!\G_array~80_combout\ & (!\G_array[1][25]~79_combout\ & (!\G_array[1][21]~64_combout\ & !\G_array~65_combout\))) ) ) # ( !\P_array[2][25]~18_combout\ & ( (!\G_array~80_combout\ & 
-- !\G_array[1][25]~79_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~80_combout\,
	datab => \ALT_INV_G_array[1][25]~79_combout\,
	datac => \ALT_INV_G_array[1][21]~64_combout\,
	datad => \ALT_INV_G_array~65_combout\,
	dataf => \ALT_INV_P_array[2][25]~18_combout\,
	combout => \G_array[3][25]~combout\);

-- Location: MLABCELL_X42_Y45_N8
\carry[26]~32\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[26]~32_combout\ = ( \G_array[3][25]~combout\ & ( (!\G_array~78_combout\) # ((!\carry[42]~31_combout\ & \G_array[3][17]~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000011001111111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_carry[42]~31_combout\,
	datac => \ALT_INV_G_array[3][17]~combout\,
	datad => \ALT_INV_G_array~78_combout\,
	dataf => \ALT_INV_G_array[3][25]~combout\,
	combout => \carry[26]~32_combout\);

-- Location: IOIBUF_X59_Y26_N32
\A[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: LABCELL_X43_Y45_N20
\S~26\ : arriaii_lcell_comb
-- Equation(s):
-- \S~26_combout\ = ( \A[26]~input_o\ & ( !\B[26]~input_o\ $ (!\carry[26]~32_combout\) ) ) # ( !\A[26]~input_o\ & ( !\B[26]~input_o\ $ (\carry[26]~32_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011110000111100001100111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[26]~input_o\,
	datac => \ALT_INV_carry[26]~32_combout\,
	dataf => \ALT_INV_A[26]~input_o\,
	combout => \S~26_combout\);

-- Location: IOIBUF_X59_Y48_N32
\B[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: IOIBUF_X59_Y37_N63
\A[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: LABCELL_X50_Y48_N28
\G_array~81\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~81_combout\ = ( \B[26]~input_o\ & ( (!\A[26]~input_o\ & (!\B[25]~input_o\ $ (!\A[25]~input_o\))) ) ) # ( !\B[26]~input_o\ & ( (\A[26]~input_o\ & (!\B[25]~input_o\ $ (!\A[25]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100000101000001010000101000001010000010100000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[26]~input_o\,
	datab => \ALT_INV_B[25]~input_o\,
	datac => \ALT_INV_A[25]~input_o\,
	dataf => \ALT_INV_B[26]~input_o\,
	combout => \G_array~81_combout\);

-- Location: LABCELL_X47_Y48_N34
\P_array[2][26]~19\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[2][26]~19_combout\ = ( \G_array~81_combout\ & ( \G_array~73_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_G_array~73_combout\,
	datae => \ALT_INV_G_array~81_combout\,
	combout => \P_array[2][26]~19_combout\);

-- Location: LABCELL_X50_Y48_N14
\G_array~84\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~84_combout\ = ( \G_array[1][24]~75_combout\ & ( \G_array~81_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G_array~81_combout\,
	dataf => \ALT_INV_G_array[1][24]~75_combout\,
	combout => \G_array~84_combout\);

-- Location: LABCELL_X50_Y48_N30
\G_array[1][26]~83\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][26]~83_combout\ = ( \B[26]~input_o\ & ( ((\B[25]~input_o\ & \A[25]~input_o\)) # (\A[26]~input_o\) ) ) # ( !\B[26]~input_o\ & ( (\A[26]~input_o\ & (\B[25]~input_o\ & \A[25]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000101010101011101110101010101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[26]~input_o\,
	datab => \ALT_INV_B[25]~input_o\,
	datad => \ALT_INV_A[25]~input_o\,
	dataf => \ALT_INV_B[26]~input_o\,
	combout => \G_array[1][26]~83_combout\);

-- Location: MLABCELL_X46_Y49_N30
\G_array[3][26]\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[3][26]~combout\ = ( \G_array[1][22]~68_combout\ & ( (!\P_array[2][26]~19_combout\ & (!\G_array~84_combout\ & !\G_array[1][26]~83_combout\)) ) ) # ( !\G_array[1][22]~68_combout\ & ( (!\G_array~84_combout\ & (!\G_array[1][26]~83_combout\ & 
-- ((!\P_array[2][26]~19_combout\) # (!\G_array~69_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100000000000110010000000000010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[2][26]~19_combout\,
	datab => \ALT_INV_G_array~84_combout\,
	datac => \ALT_INV_G_array~69_combout\,
	datad => \ALT_INV_G_array[1][26]~83_combout\,
	dataf => \ALT_INV_G_array[1][22]~68_combout\,
	combout => \G_array[3][26]~combout\);

-- Location: MLABCELL_X46_Y49_N28
\G_array~82\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~82_combout\ = ( \P_array[2][22]~15_combout\ & ( \P_array[2][26]~19_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[2][26]~19_combout\,
	dataf => \ALT_INV_P_array[2][22]~15_combout\,
	combout => \G_array~82_combout\);

-- Location: LABCELL_X45_Y48_N32
\carry[27]~33\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[27]~33_combout\ = ( \carry[27]~9_combout\ & ( (\G_array[3][26]~combout\ & ((!\G_array~82_combout\) # (\G_array[3][18]~combout\))) ) ) # ( !\carry[27]~9_combout\ & ( (\G_array[3][26]~combout\ & ((!\G_array~82_combout\) # ((\G_array[3][18]~combout\ & 
-- !\G_array~51_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000100000011110000010000001111000001010000111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array[3][18]~combout\,
	datab => \ALT_INV_G_array~51_combout\,
	datac => \ALT_INV_G_array[3][26]~combout\,
	datad => \ALT_INV_G_array~82_combout\,
	dataf => \ALT_INV_carry[27]~9_combout\,
	combout => \carry[27]~33_combout\);

-- Location: LABCELL_X50_Y48_N38
\S~27\ : arriaii_lcell_comb
-- Equation(s):
-- \S~27_combout\ = ( \carry[27]~33_combout\ & ( !\B[27]~input_o\ $ (!\A[27]~input_o\) ) ) # ( !\carry[27]~33_combout\ & ( !\B[27]~input_o\ $ (\A[27]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100101100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[27]~input_o\,
	datab => \ALT_INV_A[27]~input_o\,
	dataf => \ALT_INV_carry[27]~33_combout\,
	combout => \S~27_combout\);

-- Location: LABCELL_X50_Y48_N6
\G_array~85\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~85_combout\ = ( \B[26]~input_o\ & ( (!\A[26]~input_o\ & (!\B[27]~input_o\ $ (!\A[27]~input_o\))) ) ) # ( !\B[26]~input_o\ & ( (\A[26]~input_o\ & (!\B[27]~input_o\ $ (!\A[27]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101001011010000000000101101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[27]~input_o\,
	datac => \ALT_INV_A[27]~input_o\,
	datad => \ALT_INV_A[26]~input_o\,
	dataf => \ALT_INV_B[26]~input_o\,
	combout => \G_array~85_combout\);

-- Location: LABCELL_X40_Y45_N2
\P_array[2][27]~20\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[2][27]~20_combout\ = ( \G_array~77_combout\ & ( \G_array~85_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G_array~85_combout\,
	dataf => \ALT_INV_G_array~77_combout\,
	combout => \P_array[2][27]~20_combout\);

-- Location: LABCELL_X40_Y45_N6
\G_array~86\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~86_combout\ = ( \P_array[2][27]~20_combout\ & ( \P_array[2][23]~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[2][23]~16_combout\,
	dataf => \ALT_INV_P_array[2][27]~20_combout\,
	combout => \G_array~86_combout\);

-- Location: LABCELL_X40_Y46_N4
\G_array~87\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~87_combout\ = ( !\G_array[3][19]~combout\ & ( \G_array~86_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G_array~86_combout\,
	dataf => \ALT_INV_G_array[3][19]~combout\,
	combout => \G_array~87_combout\);

-- Location: LABCELL_X50_Y48_N0
\G_array[1][27]~88\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][27]~88_combout\ = (!\B[27]~input_o\ & (\A[27]~input_o\ & (\B[26]~input_o\ & \A[26]~input_o\))) # (\B[27]~input_o\ & (((\B[26]~input_o\ & \A[26]~input_o\)) # (\A[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010111000100010001011100010001000101110001000100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[27]~input_o\,
	datab => \ALT_INV_A[27]~input_o\,
	datac => \ALT_INV_B[26]~input_o\,
	datad => \ALT_INV_A[26]~input_o\,
	combout => \G_array[1][27]~88_combout\);

-- Location: LABCELL_X40_Y45_N30
\G_array~89\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~89_combout\ = ( \G_array~85_combout\ & ( \G_array[1][25]~79_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_G_array[1][25]~79_combout\,
	dataf => \ALT_INV_G_array~85_combout\,
	combout => \G_array~89_combout\);

-- Location: LABCELL_X40_Y45_N14
\G_array[3][27]\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[3][27]~combout\ = ( \P_array[2][27]~20_combout\ & ( (!\G_array[1][27]~88_combout\ & (!\G_array~89_combout\ & (!\G_array~72_combout\ & !\G_array[1][23]~71_combout\))) ) ) # ( !\P_array[2][27]~20_combout\ & ( (!\G_array[1][27]~88_combout\ & 
-- !\G_array~89_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array[1][27]~88_combout\,
	datab => \ALT_INV_G_array~89_combout\,
	datac => \ALT_INV_G_array~72_combout\,
	datad => \ALT_INV_G_array[1][23]~71_combout\,
	dataf => \ALT_INV_P_array[2][27]~20_combout\,
	combout => \G_array[3][27]~combout\);

-- Location: LABCELL_X40_Y46_N6
\P_array[4][27]~21\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[4][27]~21_combout\ = (\G_array~86_combout\ & \G_array~56_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G_array~86_combout\,
	datad => \ALT_INV_G_array~56_combout\,
	combout => \P_array[4][27]~21_combout\);

-- Location: LABCELL_X40_Y46_N30
\carry[28]~34\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[28]~34_combout\ = ( \P_array[4][27]~21_combout\ & ( (!\G_array~87_combout\ & (\G_array[3][27]~combout\ & (\G_array[3][11]~combout\ & !\carry[12]~10_combout\))) ) ) # ( !\P_array[4][27]~21_combout\ & ( (!\G_array~87_combout\ & 
-- \G_array[3][27]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~87_combout\,
	datab => \ALT_INV_G_array[3][27]~combout\,
	datac => \ALT_INV_G_array[3][11]~combout\,
	datad => \ALT_INV_carry[12]~10_combout\,
	dataf => \ALT_INV_P_array[4][27]~21_combout\,
	combout => \carry[28]~34_combout\);

-- Location: IOIBUF_X59_Y49_N63
\B[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: IOIBUF_X59_Y51_N94
\A[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: LABCELL_X50_Y48_N26
\S~28\ : arriaii_lcell_comb
-- Equation(s):
-- \S~28_combout\ = ( \A[28]~input_o\ & ( !\carry[28]~34_combout\ $ (!\B[28]~input_o\) ) ) # ( !\A[28]~input_o\ & ( !\carry[28]~34_combout\ $ (\B[28]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_carry[28]~34_combout\,
	datad => \ALT_INV_B[28]~input_o\,
	dataf => \ALT_INV_A[28]~input_o\,
	combout => \S~28_combout\);

-- Location: LABCELL_X50_Y48_N36
\G_array[1][28]~93\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][28]~93_combout\ = ( \A[28]~input_o\ & ( ((\B[27]~input_o\ & \A[27]~input_o\)) # (\B[28]~input_o\) ) ) # ( !\A[28]~input_o\ & ( (\B[27]~input_o\ & (\A[27]~input_o\ & \B[28]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[27]~input_o\,
	datab => \ALT_INV_A[27]~input_o\,
	datac => \ALT_INV_B[28]~input_o\,
	dataf => \ALT_INV_A[28]~input_o\,
	combout => \G_array[1][28]~93_combout\);

-- Location: LABCELL_X50_Y48_N2
\G_array~90\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~90_combout\ = ( \A[28]~input_o\ & ( (!\B[28]~input_o\ & (!\B[27]~input_o\ $ (!\A[27]~input_o\))) ) ) # ( !\A[28]~input_o\ & ( (\B[28]~input_o\ & (!\B[27]~input_o\ $ (!\A[27]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000000110011001100110000000000110011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[27]~input_o\,
	datab => \ALT_INV_A[27]~input_o\,
	datad => \ALT_INV_B[28]~input_o\,
	dataf => \ALT_INV_A[28]~input_o\,
	combout => \G_array~90_combout\);

-- Location: LABCELL_X50_Y48_N12
\P_array[2][28]~22\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[2][28]~22_combout\ = ( \G_array~90_combout\ & ( \G_array~81_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G_array~81_combout\,
	dataf => \ALT_INV_G_array~90_combout\,
	combout => \P_array[2][28]~22_combout\);

-- Location: LABCELL_X50_Y48_N8
\G_array~94\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~94_combout\ = ( \G_array[1][26]~83_combout\ & ( \G_array~90_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G_array~90_combout\,
	dataf => \ALT_INV_G_array[1][26]~83_combout\,
	combout => \G_array~94_combout\);

-- Location: MLABCELL_X44_Y48_N2
\G_array[3][28]\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[3][28]~combout\ = ( \G_array~76_combout\ & ( (!\G_array[1][28]~93_combout\ & (!\P_array[2][28]~22_combout\ & !\G_array~94_combout\)) ) ) # ( !\G_array~76_combout\ & ( (!\G_array[1][28]~93_combout\ & (!\G_array~94_combout\ & 
-- ((!\P_array[2][28]~22_combout\) # (!\G_array[1][24]~75_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100000000000101010000000000010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array[1][28]~93_combout\,
	datab => \ALT_INV_P_array[2][28]~22_combout\,
	datac => \ALT_INV_G_array[1][24]~75_combout\,
	datad => \ALT_INV_G_array~94_combout\,
	dataf => \ALT_INV_G_array~76_combout\,
	combout => \G_array[3][28]~combout\);

-- Location: LABCELL_X43_Y48_N0
\G_array~91\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~91_combout\ = (\P_array[2][28]~22_combout\ & \P_array[2][24]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_P_array[2][28]~22_combout\,
	datad => \ALT_INV_P_array[2][24]~17_combout\,
	combout => \G_array~91_combout\);

-- Location: MLABCELL_X42_Y48_N4
\G_array~92\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~92_combout\ = (!\G_array[3][20]~combout\ & \G_array~91_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array[3][20]~combout\,
	datab => \ALT_INV_G_array~91_combout\,
	combout => \G_array~92_combout\);

-- Location: MLABCELL_X42_Y48_N20
\P_array[4][28]~23\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[4][28]~23_combout\ = ( \P_array[2][20]~13_combout\ & ( (\P_array[2][16]~9_combout\ & \G_array~91_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[2][16]~9_combout\,
	datab => \ALT_INV_G_array~91_combout\,
	dataf => \ALT_INV_P_array[2][20]~13_combout\,
	combout => \P_array[4][28]~23_combout\);

-- Location: MLABCELL_X42_Y48_N30
\carry[29]~35\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[29]~35_combout\ = ( \P_array[4][28]~23_combout\ & ( (!\carry[13]~12_combout\ & (\G_array[3][12]~combout\ & (\G_array[3][28]~combout\ & !\G_array~92_combout\))) ) ) # ( !\P_array[4][28]~23_combout\ & ( (\G_array[3][28]~combout\ & 
-- !\G_array~92_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_carry[13]~12_combout\,
	datab => \ALT_INV_G_array[3][12]~combout\,
	datac => \ALT_INV_G_array[3][28]~combout\,
	datad => \ALT_INV_G_array~92_combout\,
	dataf => \ALT_INV_P_array[4][28]~23_combout\,
	combout => \carry[29]~35_combout\);

-- Location: IOIBUF_X53_Y56_N63
\A[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: IOIBUF_X56_Y56_N32
\B[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: MLABCELL_X44_Y48_N24
\S~29\ : arriaii_lcell_comb
-- Equation(s):
-- \S~29_combout\ = ( \B[29]~input_o\ & ( !\carry[29]~35_combout\ $ (!\A[29]~input_o\) ) ) # ( !\B[29]~input_o\ & ( !\carry[29]~35_combout\ $ (\A[29]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011110000111100001100111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_carry[29]~35_combout\,
	datac => \ALT_INV_A[29]~input_o\,
	dataf => \ALT_INV_B[29]~input_o\,
	combout => \S~29_combout\);

-- Location: IOIBUF_X59_Y28_N1
\B[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: LABCELL_X50_Y48_N32
\G_array~95\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~95_combout\ = ( \A[28]~input_o\ & ( (!\B[28]~input_o\ & (!\B[29]~input_o\ $ (!\A[29]~input_o\))) ) ) # ( !\A[28]~input_o\ & ( (\B[28]~input_o\ & (!\B[29]~input_o\ $ (!\A[29]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011001100000011000000110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[29]~input_o\,
	datab => \ALT_INV_A[29]~input_o\,
	datac => \ALT_INV_B[28]~input_o\,
	dataf => \ALT_INV_A[28]~input_o\,
	combout => \G_array~95_combout\);

-- Location: LABCELL_X40_Y45_N0
\P_array[2][29]~24\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[2][29]~24_combout\ = (\G_array~85_combout\ & \G_array~95_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G_array~85_combout\,
	datac => \ALT_INV_G_array~95_combout\,
	combout => \P_array[2][29]~24_combout\);

-- Location: MLABCELL_X42_Y45_N18
\G_array~96\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~96_combout\ = ( \P_array[2][29]~24_combout\ & ( \P_array[2][25]~18_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[2][25]~18_combout\,
	dataf => \ALT_INV_P_array[2][29]~24_combout\,
	combout => \G_array~96_combout\);

-- Location: MLABCELL_X42_Y45_N6
\G_array~97\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~97_combout\ = (\G_array~96_combout\ & !\G_array[3][21]~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~96_combout\,
	datac => \ALT_INV_G_array[3][21]~combout\,
	combout => \G_array~97_combout\);

-- Location: LABCELL_X40_Y45_N4
\G_array~99\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~99_combout\ = ( \G_array[1][27]~88_combout\ & ( \G_array~95_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_G_array~95_combout\,
	dataf => \ALT_INV_G_array[1][27]~88_combout\,
	combout => \G_array~99_combout\);

-- Location: LABCELL_X50_Y48_N34
\G_array[1][29]~98\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][29]~98_combout\ = ( \A[28]~input_o\ & ( (!\B[29]~input_o\ & (\A[29]~input_o\ & \B[28]~input_o\)) # (\B[29]~input_o\ & ((\B[28]~input_o\) # (\A[29]~input_o\))) ) ) # ( !\A[28]~input_o\ & ( (\B[29]~input_o\ & \A[29]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001011101110001000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[29]~input_o\,
	datab => \ALT_INV_A[29]~input_o\,
	datad => \ALT_INV_B[28]~input_o\,
	dataf => \ALT_INV_A[28]~input_o\,
	combout => \G_array[1][29]~98_combout\);

-- Location: MLABCELL_X42_Y45_N30
\G_array[3][29]\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[3][29]~combout\ = ( !\G_array[1][29]~98_combout\ & ( (!\G_array~99_combout\ & ((!\P_array[2][29]~24_combout\) # ((!\G_array~80_combout\ & !\G_array[1][25]~79_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100000000000111110000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~80_combout\,
	datab => \ALT_INV_G_array[1][25]~79_combout\,
	datac => \ALT_INV_P_array[2][29]~24_combout\,
	datad => \ALT_INV_G_array~99_combout\,
	dataf => \ALT_INV_G_array[1][29]~98_combout\,
	combout => \G_array[3][29]~combout\);

-- Location: MLABCELL_X42_Y45_N34
\P_array[4][29]~25\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[4][29]~25_combout\ = ( \P_array[2][21]~14_combout\ & ( (\G_array~96_combout\ & \P_array[2][17]~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~96_combout\,
	datad => \ALT_INV_P_array[2][17]~10_combout\,
	dataf => \ALT_INV_P_array[2][21]~14_combout\,
	combout => \P_array[4][29]~25_combout\);

-- Location: MLABCELL_X37_Y47_N36
\carry[30]\ : arriaii_lcell_comb
-- Equation(s):
-- carry(30) = ( \G_array[3][13]~combout\ & ( \G_array~31_combout\ & ( (!\G_array~97_combout\ & (\G_array[3][29]~combout\ & !\P_array[4][29]~25_combout\)) ) ) ) # ( !\G_array[3][13]~combout\ & ( \G_array~31_combout\ & ( (!\G_array~97_combout\ & 
-- (\G_array[3][29]~combout\ & !\P_array[4][29]~25_combout\)) ) ) ) # ( \G_array[3][13]~combout\ & ( !\G_array~31_combout\ & ( (!\G_array~97_combout\ & (\G_array[3][29]~combout\ & ((!\carry~14_combout\) # (!\P_array[4][29]~25_combout\)))) ) ) ) # ( 
-- !\G_array[3][13]~combout\ & ( !\G_array~31_combout\ & ( (!\G_array~97_combout\ & (\G_array[3][29]~combout\ & !\P_array[4][29]~25_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100010000000100010000000000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~97_combout\,
	datab => \ALT_INV_G_array[3][29]~combout\,
	datac => \ALT_INV_carry~14_combout\,
	datad => \ALT_INV_P_array[4][29]~25_combout\,
	datae => \ALT_INV_G_array[3][13]~combout\,
	dataf => \ALT_INV_G_array~31_combout\,
	combout => carry(30));

-- Location: IOIBUF_X59_Y33_N94
\A[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: LABCELL_X50_Y48_N18
\S~30\ : arriaii_lcell_comb
-- Equation(s):
-- \S~30_combout\ = ( \A[30]~input_o\ & ( !\B[30]~input_o\ $ (!carry(30)) ) ) # ( !\A[30]~input_o\ & ( !\B[30]~input_o\ $ (carry(30)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101101001011010010101011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[30]~input_o\,
	datac => ALT_INV_carry(30),
	dataf => \ALT_INV_A[30]~input_o\,
	combout => \S~30_combout\);

-- Location: LABCELL_X50_Y48_N24
\G_array~100\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~100_combout\ = ( \A[30]~input_o\ & ( (!\B[30]~input_o\ & (!\A[29]~input_o\ $ (!\B[29]~input_o\))) ) ) # ( !\A[30]~input_o\ & ( (\B[30]~input_o\ & (!\A[29]~input_o\ $ (!\B[29]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100000101000001010000101000001010000010100000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[30]~input_o\,
	datab => \ALT_INV_A[29]~input_o\,
	datac => \ALT_INV_B[29]~input_o\,
	dataf => \ALT_INV_A[30]~input_o\,
	combout => \G_array~100_combout\);

-- Location: LABCELL_X50_Y48_N10
\P_array[2][30]~26\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[2][30]~26_combout\ = ( \G_array~100_combout\ & ( \G_array~90_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G_array~90_combout\,
	dataf => \ALT_INV_G_array~100_combout\,
	combout => \P_array[2][30]~26_combout\);

-- Location: MLABCELL_X46_Y49_N32
\G_array~101\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~101_combout\ = ( \P_array[2][26]~19_combout\ & ( \P_array[2][30]~26_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_P_array[2][30]~26_combout\,
	dataf => \ALT_INV_P_array[2][26]~19_combout\,
	combout => \G_array~101_combout\);

-- Location: MLABCELL_X46_Y49_N34
\P_array[4][30]~27\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[4][30]~27_combout\ = ( \P_array[2][22]~15_combout\ & ( (\P_array[2][18]~11_combout\ & \G_array~101_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[2][18]~11_combout\,
	datac => \ALT_INV_G_array~101_combout\,
	dataf => \ALT_INV_P_array[2][22]~15_combout\,
	combout => \P_array[4][30]~27_combout\);

-- Location: MLABCELL_X44_Y48_N8
\G_array~104\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~104_combout\ = (\G_array~100_combout\ & \G_array[1][28]~93_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~100_combout\,
	datac => \ALT_INV_G_array[1][28]~93_combout\,
	combout => \G_array~104_combout\);

-- Location: LABCELL_X50_Y48_N16
\G_array[1][30]~103\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][30]~103_combout\ = ( \A[30]~input_o\ & ( ((\A[29]~input_o\ & \B[29]~input_o\)) # (\B[30]~input_o\) ) ) # ( !\A[30]~input_o\ & ( (\B[30]~input_o\ & (\A[29]~input_o\ & \B[29]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000101010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[30]~input_o\,
	datab => \ALT_INV_A[29]~input_o\,
	datac => \ALT_INV_B[29]~input_o\,
	dataf => \ALT_INV_A[30]~input_o\,
	combout => \G_array[1][30]~103_combout\);

-- Location: MLABCELL_X46_Y49_N36
\G_array[3][30]\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[3][30]~combout\ = ( !\G_array[1][30]~103_combout\ & ( (!\G_array~104_combout\ & ((!\P_array[2][30]~26_combout\) # ((!\G_array[1][26]~83_combout\ & !\G_array~84_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110010000000110011001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array[1][26]~83_combout\,
	datab => \ALT_INV_G_array~104_combout\,
	datac => \ALT_INV_G_array~84_combout\,
	datad => \ALT_INV_P_array[2][30]~26_combout\,
	dataf => \ALT_INV_G_array[1][30]~103_combout\,
	combout => \G_array[3][30]~combout\);

-- Location: MLABCELL_X46_Y49_N24
\G_array~102\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~102_combout\ = ( \G_array~101_combout\ & ( !\G_array[3][22]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array[3][22]~combout\,
	dataf => \ALT_INV_G_array~101_combout\,
	combout => \G_array~102_combout\);

-- Location: LABCELL_X45_Y49_N24
\G_array[6][30]\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[6][30]~combout\ = ( !\G_array~102_combout\ & ( \G_array[3][14]~combout\ & ( (\G_array[3][30]~combout\ & ((!\G_array~35_combout\) # (!\P_array[4][30]~27_combout\))) ) ) ) # ( !\G_array~102_combout\ & ( !\G_array[3][14]~combout\ & ( 
-- (!\P_array[4][30]~27_combout\ & \G_array[3][30]~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000000000000000000000111111000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G_array~35_combout\,
	datac => \ALT_INV_P_array[4][30]~27_combout\,
	datad => \ALT_INV_G_array[3][30]~combout\,
	datae => \ALT_INV_G_array~102_combout\,
	dataf => \ALT_INV_G_array[3][14]~combout\,
	combout => \G_array[6][30]~combout\);

-- Location: IOIBUF_X59_Y46_N32
\A[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: IOIBUF_X59_Y30_N94
\B[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: LABCELL_X45_Y49_N30
\S~31\ : arriaii_lcell_comb
-- Equation(s):
-- \S~31_combout\ = ( \A[31]~input_o\ & ( \B[31]~input_o\ & ( (!\G_array[6][30]~combout\) # ((\carry~15_combout\ & \P_array[4][30]~27_combout\)) ) ) ) # ( !\A[31]~input_o\ & ( \B[31]~input_o\ & ( (\G_array[6][30]~combout\ & ((!\carry~15_combout\) # 
-- (!\P_array[4][30]~27_combout\))) ) ) ) # ( \A[31]~input_o\ & ( !\B[31]~input_o\ & ( (\G_array[6][30]~combout\ & ((!\carry~15_combout\) # (!\P_array[4][30]~27_combout\))) ) ) ) # ( !\A[31]~input_o\ & ( !\B[31]~input_o\ & ( (!\G_array[6][30]~combout\) # 
-- ((\carry~15_combout\ & \P_array[4][30]~27_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101111010101010101000001010101010100001010101010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array[6][30]~combout\,
	datac => \ALT_INV_carry~15_combout\,
	datad => \ALT_INV_P_array[4][30]~27_combout\,
	datae => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_B[31]~input_o\,
	combout => \S~31_combout\);

-- Location: IOIBUF_X59_Y16_N63
\B[32]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(32),
	o => \B[32]~input_o\);

-- Location: IOIBUF_X59_Y23_N94
\A[32]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(32),
	o => \A[32]~input_o\);

-- Location: MLABCELL_X44_Y45_N20
\G_array~105\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~105_combout\ = ( \A[30]~input_o\ & ( (!\B[30]~input_o\ & (!\B[31]~input_o\ $ (!\A[31]~input_o\))) ) ) # ( !\A[30]~input_o\ & ( (\B[30]~input_o\ & (!\B[31]~input_o\ $ (!\A[31]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000110000110000000011000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[31]~input_o\,
	datac => \ALT_INV_B[30]~input_o\,
	datad => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_A[30]~input_o\,
	combout => \G_array~105_combout\);

-- Location: LABCELL_X40_Y45_N28
\P_array[2][31]~28\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[2][31]~28_combout\ = (\G_array~105_combout\ & \G_array~95_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G_array~105_combout\,
	datac => \ALT_INV_G_array~95_combout\,
	combout => \P_array[2][31]~28_combout\);

-- Location: MLABCELL_X39_Y45_N24
\P_array[4][31]~29\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[4][31]~29_combout\ = ( \G_array~86_combout\ & ( (\P_array[2][31]~28_combout\ & \P_array[2][19]~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_P_array[2][31]~28_combout\,
	datad => \ALT_INV_P_array[2][19]~12_combout\,
	dataf => \ALT_INV_G_array~86_combout\,
	combout => \P_array[4][31]~29_combout\);

-- Location: MLABCELL_X44_Y45_N6
\G_array~108\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~108_combout\ = ( \G_array~105_combout\ & ( \G_array[1][29]~98_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_G_array[1][29]~98_combout\,
	dataf => \ALT_INV_G_array~105_combout\,
	combout => \G_array~108_combout\);

-- Location: MLABCELL_X44_Y45_N22
\G_array[1][31]~107\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][31]~107_combout\ = ( \A[30]~input_o\ & ( (!\B[30]~input_o\ & (\B[31]~input_o\ & \A[31]~input_o\)) # (\B[30]~input_o\ & ((\A[31]~input_o\) # (\B[31]~input_o\))) ) ) # ( !\A[30]~input_o\ & ( (\B[31]~input_o\ & \A[31]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100010001011101110001000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[30]~input_o\,
	datab => \ALT_INV_B[31]~input_o\,
	datad => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_A[30]~input_o\,
	combout => \G_array[1][31]~107_combout\);

-- Location: LABCELL_X40_Y45_N12
\G_array[3][31]\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[3][31]~combout\ = ( !\G_array[1][31]~107_combout\ & ( (!\G_array~108_combout\ & ((!\P_array[2][31]~28_combout\) # ((!\G_array[1][27]~88_combout\ & !\G_array~89_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010000000111100001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array[1][27]~88_combout\,
	datab => \ALT_INV_G_array~89_combout\,
	datac => \ALT_INV_G_array~108_combout\,
	datad => \ALT_INV_P_array[2][31]~28_combout\,
	dataf => \ALT_INV_G_array[1][31]~107_combout\,
	combout => \G_array[3][31]~combout\);

-- Location: LABCELL_X40_Y45_N16
\G_array~106\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~106_combout\ = ( \P_array[2][27]~20_combout\ & ( (\P_array[2][31]~28_combout\ & !\G_array[3][23]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_P_array[2][31]~28_combout\,
	datad => \ALT_INV_G_array[3][23]~combout\,
	dataf => \ALT_INV_P_array[2][27]~20_combout\,
	combout => \G_array~106_combout\);

-- Location: MLABCELL_X39_Y45_N26
\G_array[6][31]\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[6][31]~combout\ = ( \P_array[4][31]~29_combout\ & ( (\G_array[3][31]~combout\ & (!\G_array~39_combout\ & (!\G_array~106_combout\ & \G_array[3][15]~combout\))) ) ) # ( !\P_array[4][31]~29_combout\ & ( (\G_array[3][31]~combout\ & 
-- !\G_array~106_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array[3][31]~combout\,
	datab => \ALT_INV_G_array~39_combout\,
	datac => \ALT_INV_G_array~106_combout\,
	datad => \ALT_INV_G_array[3][15]~combout\,
	dataf => \ALT_INV_P_array[4][31]~29_combout\,
	combout => \G_array[6][31]~combout\);

-- Location: MLABCELL_X44_Y45_N10
\S~32\ : arriaii_lcell_comb
-- Equation(s):
-- \S~32_combout\ = ( \carry~16_combout\ & ( !\B[32]~input_o\ $ (!\A[32]~input_o\ $ (((!\G_array[6][31]~combout\) # (\P_array[4][31]~29_combout\)))) ) ) # ( !\carry~16_combout\ & ( !\B[32]~input_o\ $ (!\A[32]~input_o\ $ (!\G_array[6][31]~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100101100110100110010110011010011001011010011001100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[32]~input_o\,
	datab => \ALT_INV_A[32]~input_o\,
	datac => \ALT_INV_P_array[4][31]~29_combout\,
	datad => \ALT_INV_G_array[6][31]~combout\,
	dataf => \ALT_INV_carry~16_combout\,
	combout => \S~32_combout\);

-- Location: MLABCELL_X44_Y45_N8
\G_array~109\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~109_combout\ = ( \B[31]~input_o\ & ( (!\A[31]~input_o\ & (!\B[32]~input_o\ $ (!\A[32]~input_o\))) ) ) # ( !\B[31]~input_o\ & ( (\A[31]~input_o\ & (!\B[32]~input_o\ $ (!\A[32]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011001100000011000000110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[32]~input_o\,
	datab => \ALT_INV_A[32]~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_B[31]~input_o\,
	combout => \G_array~109_combout\);

-- Location: MLABCELL_X44_Y48_N10
\P_array[2][32]~30\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[2][32]~30_combout\ = ( \G_array~109_combout\ & ( \G_array~100_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~100_combout\,
	dataf => \ALT_INV_G_array~109_combout\,
	combout => \P_array[2][32]~30_combout\);

-- Location: LABCELL_X43_Y48_N12
\P_array[4][32]~31\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[4][32]~31_combout\ = ( \G_array~74_combout\ & ( (\P_array[2][28]~22_combout\ & \P_array[2][32]~30_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_P_array[2][28]~22_combout\,
	datad => \ALT_INV_P_array[2][32]~30_combout\,
	dataf => \ALT_INV_G_array~74_combout\,
	combout => \P_array[4][32]~31_combout\);

-- Location: LABCELL_X43_Y48_N24
\carry[33]~36\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[33]~36_combout\ = ( \carry[25]~6_combout\ & ( (\P_array[4][32]~31_combout\ & ((!\G_array[3][16]~combout\) # (\G_array~43_combout\))) ) ) # ( !\carry[25]~6_combout\ & ( (\P_array[4][32]~31_combout\ & ((!\G_array[3][16]~combout\) # 
-- ((\G_array~43_combout\ & !\G_array[3][8]~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111010000000001011101000000000101110110000000010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array[3][16]~combout\,
	datab => \ALT_INV_G_array~43_combout\,
	datac => \ALT_INV_G_array[3][8]~combout\,
	datad => \ALT_INV_P_array[4][32]~31_combout\,
	dataf => \ALT_INV_carry[25]~6_combout\,
	combout => \carry[33]~36_combout\);

-- Location: IOIBUF_X59_Y33_N32
\B[33]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(33),
	o => \B[33]~input_o\);

-- Location: IOIBUF_X59_Y18_N32
\A[33]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(33),
	o => \A[33]~input_o\);

-- Location: LABCELL_X43_Y48_N18
\G_array~110\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~110_combout\ = (\P_array[2][32]~30_combout\ & (!\G_array[3][24]~combout\ & \P_array[2][28]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010000000000010001000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[2][32]~30_combout\,
	datab => \ALT_INV_G_array[3][24]~combout\,
	datad => \ALT_INV_P_array[2][28]~22_combout\,
	combout => \G_array~110_combout\);

-- Location: MLABCELL_X44_Y45_N12
\G_array[1][32]~111\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][32]~111_combout\ = ( \B[31]~input_o\ & ( (!\B[32]~input_o\ & (\A[31]~input_o\ & \A[32]~input_o\)) # (\B[32]~input_o\ & ((\A[32]~input_o\) # (\A[31]~input_o\))) ) ) # ( !\B[31]~input_o\ & ( (\B[32]~input_o\ & \A[32]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[32]~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_A[32]~input_o\,
	dataf => \ALT_INV_B[31]~input_o\,
	combout => \G_array[1][32]~111_combout\);

-- Location: MLABCELL_X44_Y48_N34
\G_array~112\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~112_combout\ = ( \G_array~109_combout\ & ( \G_array[1][30]~103_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_G_array[1][30]~103_combout\,
	dataf => \ALT_INV_G_array~109_combout\,
	combout => \G_array~112_combout\);

-- Location: MLABCELL_X44_Y48_N16
\G_array[3][32]\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[3][32]~combout\ = ( \P_array[2][32]~30_combout\ & ( (!\G_array[1][32]~111_combout\ & (!\G_array~112_combout\ & (!\G_array[1][28]~93_combout\ & !\G_array~94_combout\))) ) ) # ( !\P_array[2][32]~30_combout\ & ( (!\G_array[1][32]~111_combout\ & 
-- !\G_array~112_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array[1][32]~111_combout\,
	datab => \ALT_INV_G_array~112_combout\,
	datac => \ALT_INV_G_array[1][28]~93_combout\,
	datad => \ALT_INV_G_array~94_combout\,
	dataf => \ALT_INV_P_array[2][32]~30_combout\,
	combout => \G_array[3][32]~combout\);

-- Location: LABCELL_X43_Y48_N8
\S~33\ : arriaii_lcell_comb
-- Equation(s):
-- \S~33_combout\ = ( \G_array[3][32]~combout\ & ( !\B[33]~input_o\ $ (!\A[33]~input_o\ $ (((\G_array~110_combout\) # (\carry[33]~36_combout\)))) ) ) # ( !\G_array[3][32]~combout\ & ( !\B[33]~input_o\ $ (\A[33]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011110000111100001101101001110000110110100111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_carry[33]~36_combout\,
	datab => \ALT_INV_B[33]~input_o\,
	datac => \ALT_INV_A[33]~input_o\,
	datad => \ALT_INV_G_array~110_combout\,
	dataf => \ALT_INV_G_array[3][32]~combout\,
	combout => \S~33_combout\);

-- Location: IOIBUF_X59_Y34_N63
\B[34]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(34),
	o => \B[34]~input_o\);

-- Location: IOIBUF_X45_Y0_N1
\A[34]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(34),
	o => \A[34]~input_o\);

-- Location: MLABCELL_X44_Y45_N38
\G_array~113\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~113_combout\ = ( \A[33]~input_o\ & ( (!\B[33]~input_o\ & (!\B[32]~input_o\ $ (!\A[32]~input_o\))) ) ) # ( !\A[33]~input_o\ & ( (\B[33]~input_o\ & (!\B[32]~input_o\ $ (!\A[32]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001001001000010010000100100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[32]~input_o\,
	datab => \ALT_INV_B[33]~input_o\,
	datac => \ALT_INV_A[32]~input_o\,
	dataf => \ALT_INV_A[33]~input_o\,
	combout => \G_array~113_combout\);

-- Location: MLABCELL_X44_Y45_N0
\P_array[2][33]~32\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[2][33]~32_combout\ = ( \G_array~105_combout\ & ( \G_array~113_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~113_combout\,
	dataf => \ALT_INV_G_array~105_combout\,
	combout => \P_array[2][33]~32_combout\);

-- Location: LABCELL_X43_Y45_N26
\P_array[4][33]~33\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[4][33]~33_combout\ = ( \P_array[2][33]~32_combout\ & ( \P_array[2][29]~24_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[2][29]~24_combout\,
	dataf => \ALT_INV_P_array[2][33]~32_combout\,
	combout => \P_array[4][33]~33_combout\);

-- Location: LABCELL_X43_Y45_N28
\G_array~114\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~114_combout\ = (!\G_array[3][25]~combout\ & \P_array[4][33]~33_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G_array[3][25]~combout\,
	datad => \ALT_INV_P_array[4][33]~33_combout\,
	combout => \G_array~114_combout\);

-- Location: MLABCELL_X44_Y45_N2
\G_array~116\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~116_combout\ = (\G_array~113_combout\ & \G_array[1][31]~107_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~113_combout\,
	datac => \ALT_INV_G_array[1][31]~107_combout\,
	combout => \G_array~116_combout\);

-- Location: MLABCELL_X44_Y45_N36
\G_array[1][33]~115\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][33]~115_combout\ = ( \A[33]~input_o\ & ( ((\B[32]~input_o\ & \A[32]~input_o\)) # (\B[33]~input_o\) ) ) # ( !\A[33]~input_o\ & ( (\B[32]~input_o\ & (\B[33]~input_o\ & \A[32]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100110011011101110011001101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[32]~input_o\,
	datab => \ALT_INV_B[33]~input_o\,
	datad => \ALT_INV_A[32]~input_o\,
	dataf => \ALT_INV_A[33]~input_o\,
	combout => \G_array[1][33]~115_combout\);

-- Location: MLABCELL_X44_Y45_N24
\G_array[3][33]\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[3][33]~combout\ = ( \G_array~99_combout\ & ( (!\G_array~116_combout\ & (!\G_array[1][33]~115_combout\ & !\P_array[2][33]~32_combout\)) ) ) # ( !\G_array~99_combout\ & ( (!\G_array~116_combout\ & (!\G_array[1][33]~115_combout\ & 
-- ((!\P_array[2][33]~32_combout\) # (!\G_array[1][29]~98_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010000000100010001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~116_combout\,
	datab => \ALT_INV_G_array[1][33]~115_combout\,
	datac => \ALT_INV_P_array[2][33]~32_combout\,
	datad => \ALT_INV_G_array[1][29]~98_combout\,
	dataf => \ALT_INV_G_array~99_combout\,
	combout => \G_array[3][33]~combout\);

-- Location: MLABCELL_X42_Y45_N12
\carry[34]~37\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[34]~37_combout\ = ( \carry[10]~7_combout\ & ( \G_array~47_combout\ & ( (\G_array~78_combout\ & \P_array[4][33]~33_combout\) ) ) ) # ( !\carry[10]~7_combout\ & ( \G_array~47_combout\ & ( (\G_array~78_combout\ & (\P_array[4][33]~33_combout\ & 
-- ((!\G_array[3][17]~combout\) # (!\G_array[3][9]~combout\)))) ) ) ) # ( \carry[10]~7_combout\ & ( !\G_array~47_combout\ & ( (!\G_array[3][17]~combout\ & (\G_array~78_combout\ & \P_array[4][33]~33_combout\)) ) ) ) # ( !\carry[10]~7_combout\ & ( 
-- !\G_array~47_combout\ & ( (!\G_array[3][17]~combout\ & (\G_array~78_combout\ & \P_array[4][33]~33_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000000000011100000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array[3][17]~combout\,
	datab => \ALT_INV_G_array[3][9]~combout\,
	datac => \ALT_INV_G_array~78_combout\,
	datad => \ALT_INV_P_array[4][33]~33_combout\,
	datae => \ALT_INV_carry[10]~7_combout\,
	dataf => \ALT_INV_G_array~47_combout\,
	combout => \carry[34]~37_combout\);

-- Location: MLABCELL_X44_Y45_N28
\S~34\ : arriaii_lcell_comb
-- Equation(s):
-- \S~34_combout\ = ( \carry[34]~37_combout\ & ( !\B[34]~input_o\ $ (\A[34]~input_o\) ) ) # ( !\carry[34]~37_combout\ & ( !\B[34]~input_o\ $ (!\A[34]~input_o\ $ (((!\G_array[3][33]~combout\) # (\G_array~114_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100101101001100110010110100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[34]~input_o\,
	datab => \ALT_INV_A[34]~input_o\,
	datac => \ALT_INV_G_array~114_combout\,
	datad => \ALT_INV_G_array[3][33]~combout\,
	dataf => \ALT_INV_carry[34]~37_combout\,
	combout => \S~34_combout\);

-- Location: IOIBUF_X59_Y46_N63
\A[35]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(35),
	o => \A[35]~input_o\);

-- Location: IOIBUF_X59_Y26_N63
\B[35]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(35),
	o => \B[35]~input_o\);

-- Location: MLABCELL_X44_Y45_N14
\G_array~117\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~117_combout\ = ( \B[34]~input_o\ & ( (!\A[34]~input_o\ & (!\A[33]~input_o\ $ (!\B[33]~input_o\))) ) ) # ( !\B[34]~input_o\ & ( (\A[34]~input_o\ & (!\A[33]~input_o\ $ (!\B[33]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000110000110000000011000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[33]~input_o\,
	datac => \ALT_INV_A[34]~input_o\,
	datad => \ALT_INV_B[33]~input_o\,
	dataf => \ALT_INV_B[34]~input_o\,
	combout => \G_array~117_combout\);

-- Location: MLABCELL_X44_Y48_N22
\G_array~119\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~119_combout\ = (\G_array~117_combout\ & \G_array[1][32]~111_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~117_combout\,
	datad => \ALT_INV_G_array[1][32]~111_combout\,
	combout => \G_array~119_combout\);

-- Location: MLABCELL_X44_Y45_N32
\G_array[1][34]~118\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][34]~118_combout\ = ( \A[33]~input_o\ & ( (!\B[34]~input_o\ & (\A[34]~input_o\ & \B[33]~input_o\)) # (\B[34]~input_o\ & ((\B[33]~input_o\) # (\A[34]~input_o\))) ) ) # ( !\A[33]~input_o\ & ( (\B[34]~input_o\ & \A[34]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001011101110001000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[34]~input_o\,
	datab => \ALT_INV_A[34]~input_o\,
	datad => \ALT_INV_B[33]~input_o\,
	dataf => \ALT_INV_A[33]~input_o\,
	combout => \G_array[1][34]~118_combout\);

-- Location: MLABCELL_X44_Y48_N20
\P_array[2][34]~34\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[2][34]~34_combout\ = ( \G_array~109_combout\ & ( \G_array~117_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~117_combout\,
	dataf => \ALT_INV_G_array~109_combout\,
	combout => \P_array[2][34]~34_combout\);

-- Location: MLABCELL_X44_Y49_N2
\G_array[3][34]\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[3][34]~combout\ = ( \G_array[1][30]~103_combout\ & ( (!\G_array~119_combout\ & (!\G_array[1][34]~118_combout\ & !\P_array[2][34]~34_combout\)) ) ) # ( !\G_array[1][30]~103_combout\ & ( (!\G_array~119_combout\ & (!\G_array[1][34]~118_combout\ & 
-- ((!\P_array[2][34]~34_combout\) # (!\G_array~104_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010000000100010001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~119_combout\,
	datab => \ALT_INV_G_array[1][34]~118_combout\,
	datac => \ALT_INV_P_array[2][34]~34_combout\,
	datad => \ALT_INV_G_array~104_combout\,
	dataf => \ALT_INV_G_array[1][30]~103_combout\,
	combout => \G_array[3][34]~combout\);

-- Location: LABCELL_X45_Y48_N16
\P_array[4][34]~35\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[4][34]~35_combout\ = ( \P_array[2][34]~34_combout\ & ( (\G_array~82_combout\ & \P_array[2][30]~26_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G_array~82_combout\,
	datac => \ALT_INV_P_array[2][30]~26_combout\,
	dataf => \ALT_INV_P_array[2][34]~34_combout\,
	combout => \P_array[4][34]~35_combout\);

-- Location: LABCELL_X45_Y48_N6
\G_array~120\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~120_combout\ = ( !\G_array[3][26]~combout\ & ( (\P_array[2][34]~34_combout\ & \P_array[2][30]~26_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[2][34]~34_combout\,
	datad => \ALT_INV_P_array[2][30]~26_combout\,
	dataf => \ALT_INV_G_array[3][26]~combout\,
	combout => \G_array~120_combout\);

-- Location: LABCELL_X45_Y48_N30
\carry[35]~38\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[35]~38_combout\ = ( !\G_array~120_combout\ & ( (!\P_array[4][34]~35_combout\) # ((\G_array[3][18]~combout\ & (!\G_array~52_combout\ & !\carry[35]~19_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010011110000111101001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array[3][18]~combout\,
	datab => \ALT_INV_G_array~52_combout\,
	datac => \ALT_INV_P_array[4][34]~35_combout\,
	datad => \ALT_INV_carry[35]~19_combout\,
	dataf => \ALT_INV_G_array~120_combout\,
	combout => \carry[35]~38_combout\);

-- Location: MLABCELL_X46_Y48_N0
\S~35\ : arriaii_lcell_comb
-- Equation(s):
-- \S~35_combout\ = ( \carry[35]~38_combout\ & ( !\A[35]~input_o\ $ (!\B[35]~input_o\ $ (!\G_array[3][34]~combout\)) ) ) # ( !\carry[35]~38_combout\ & ( !\A[35]~input_o\ $ (\B[35]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100110010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[35]~input_o\,
	datab => \ALT_INV_B[35]~input_o\,
	datac => \ALT_INV_G_array[3][34]~combout\,
	dataf => \ALT_INV_carry[35]~38_combout\,
	combout => \S~35_combout\);

-- Location: MLABCELL_X44_Y45_N34
\G_array~121\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~121_combout\ = ( \A[35]~input_o\ & ( (!\B[35]~input_o\ & (!\B[34]~input_o\ $ (!\A[34]~input_o\))) ) ) # ( !\A[35]~input_o\ & ( (\B[35]~input_o\ & (!\B[34]~input_o\ $ (!\A[34]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011001100000011000000110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[34]~input_o\,
	datab => \ALT_INV_A[34]~input_o\,
	datac => \ALT_INV_B[35]~input_o\,
	dataf => \ALT_INV_A[35]~input_o\,
	combout => \G_array~121_combout\);

-- Location: MLABCELL_X44_Y45_N18
\P_array[2][35]~36\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[2][35]~36_combout\ = ( \G_array~113_combout\ & ( \G_array~121_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G_array~121_combout\,
	dataf => \ALT_INV_G_array~113_combout\,
	combout => \P_array[2][35]~36_combout\);

-- Location: MLABCELL_X44_Y45_N4
\G_array~124\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~124_combout\ = (\G_array[1][33]~115_combout\ & \G_array~121_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G_array[1][33]~115_combout\,
	datad => \ALT_INV_G_array~121_combout\,
	combout => \G_array~124_combout\);

-- Location: MLABCELL_X44_Y45_N30
\G_array[1][35]~123\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][35]~123_combout\ = ( \A[35]~input_o\ & ( ((\B[34]~input_o\ & \A[34]~input_o\)) # (\B[35]~input_o\) ) ) # ( !\A[35]~input_o\ & ( (\B[34]~input_o\ & (\A[34]~input_o\ & \B[35]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[34]~input_o\,
	datab => \ALT_INV_A[34]~input_o\,
	datac => \ALT_INV_B[35]~input_o\,
	dataf => \ALT_INV_A[35]~input_o\,
	combout => \G_array[1][35]~123_combout\);

-- Location: LABCELL_X40_Y45_N26
\G_array[3][35]\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[3][35]~combout\ = ( \G_array[1][31]~107_combout\ & ( (!\P_array[2][35]~36_combout\ & (!\G_array~124_combout\ & !\G_array[1][35]~123_combout\)) ) ) # ( !\G_array[1][31]~107_combout\ & ( (!\G_array~124_combout\ & (!\G_array[1][35]~123_combout\ & 
-- ((!\P_array[2][35]~36_combout\) # (!\G_array~108_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000010000000110000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[2][35]~36_combout\,
	datab => \ALT_INV_G_array~124_combout\,
	datac => \ALT_INV_G_array[1][35]~123_combout\,
	datad => \ALT_INV_G_array~108_combout\,
	dataf => \ALT_INV_G_array[1][31]~107_combout\,
	combout => \G_array[3][35]~combout\);

-- Location: LABCELL_X40_Y45_N20
\P_array[4][35]~37\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[4][35]~37_combout\ = ( \G_array~86_combout\ & ( (\P_array[2][31]~28_combout\ & \P_array[2][35]~36_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_P_array[2][31]~28_combout\,
	datac => \ALT_INV_P_array[2][35]~36_combout\,
	dataf => \ALT_INV_G_array~86_combout\,
	combout => \P_array[4][35]~37_combout\);

-- Location: LABCELL_X40_Y45_N24
\G_array~122\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~122_combout\ = ( \P_array[2][31]~28_combout\ & ( (\P_array[2][35]~36_combout\ & !\G_array[3][27]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[2][35]~36_combout\,
	datac => \ALT_INV_G_array[3][27]~combout\,
	dataf => \ALT_INV_P_array[2][31]~28_combout\,
	combout => \G_array~122_combout\);

-- Location: LABCELL_X40_Y45_N22
\carry[36]~39\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[36]~39_combout\ = ( !\G_array~122_combout\ & ( (\G_array[3][35]~combout\ & ((!\P_array[4][35]~37_combout\) # (\G_array[3][19]~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000101000011110000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array[3][19]~combout\,
	datac => \ALT_INV_G_array[3][35]~combout\,
	datad => \ALT_INV_P_array[4][35]~37_combout\,
	dataf => \ALT_INV_G_array~122_combout\,
	combout => \carry[36]~39_combout\);

-- Location: IOIBUF_X42_Y56_N1
\A[36]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(36),
	o => \A[36]~input_o\);

-- Location: IOIBUF_X59_Y51_N1
\B[36]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(36),
	o => \B[36]~input_o\);

-- Location: MLABCELL_X46_Y48_N26
\S~36\ : arriaii_lcell_comb
-- Equation(s):
-- \S~36_combout\ = ( \A[36]~input_o\ & ( \B[36]~input_o\ & ( (!\carry[36]~39_combout\) # ((\G_array~56_combout\ & (!\carry[36]~11_combout\ & \P_array[4][35]~37_combout\))) ) ) ) # ( !\A[36]~input_o\ & ( \B[36]~input_o\ & ( (\carry[36]~39_combout\ & 
-- ((!\G_array~56_combout\) # ((!\P_array[4][35]~37_combout\) # (\carry[36]~11_combout\)))) ) ) ) # ( \A[36]~input_o\ & ( !\B[36]~input_o\ & ( (\carry[36]~39_combout\ & ((!\G_array~56_combout\) # ((!\P_array[4][35]~37_combout\) # (\carry[36]~11_combout\)))) 
-- ) ) ) # ( !\A[36]~input_o\ & ( !\B[36]~input_o\ & ( (!\carry[36]~39_combout\) # ((\G_array~56_combout\ & (!\carry[36]~11_combout\ & \P_array[4][35]~37_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010111010010101010100010101010101010001011010101010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_carry[36]~39_combout\,
	datab => \ALT_INV_G_array~56_combout\,
	datac => \ALT_INV_carry[36]~11_combout\,
	datad => \ALT_INV_P_array[4][35]~37_combout\,
	datae => \ALT_INV_A[36]~input_o\,
	dataf => \ALT_INV_B[36]~input_o\,
	combout => \S~36_combout\);

-- Location: IOIBUF_X59_Y48_N94
\A[37]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(37),
	o => \A[37]~input_o\);

-- Location: IOIBUF_X59_Y48_N63
\B[37]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(37),
	o => \B[37]~input_o\);

-- Location: MLABCELL_X46_Y48_N2
\G_array~125\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~125_combout\ = ( \B[36]~input_o\ & ( (!\A[36]~input_o\ & (!\A[35]~input_o\ $ (!\B[35]~input_o\))) ) ) # ( !\B[36]~input_o\ & ( (\A[36]~input_o\ & (!\A[35]~input_o\ $ (!\B[35]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000000110011001100110000000000110011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[35]~input_o\,
	datab => \ALT_INV_B[35]~input_o\,
	datad => \ALT_INV_A[36]~input_o\,
	dataf => \ALT_INV_B[36]~input_o\,
	combout => \G_array~125_combout\);

-- Location: MLABCELL_X44_Y48_N32
\P_array[2][36]~38\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[2][36]~38_combout\ = ( \G_array~125_combout\ & ( \G_array~117_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_G_array~117_combout\,
	dataf => \ALT_INV_G_array~125_combout\,
	combout => \P_array[2][36]~38_combout\);

-- Location: MLABCELL_X46_Y48_N8
\G_array[1][36]~126\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][36]~126_combout\ = (!\A[36]~input_o\ & (\B[36]~input_o\ & (\A[35]~input_o\ & \B[35]~input_o\))) # (\A[36]~input_o\ & (((\A[35]~input_o\ & \B[35]~input_o\)) # (\B[36]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010111000100010001011100010001000101110001000100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[36]~input_o\,
	datab => \ALT_INV_B[36]~input_o\,
	datac => \ALT_INV_A[35]~input_o\,
	datad => \ALT_INV_B[35]~input_o\,
	combout => \G_array[1][36]~126_combout\);

-- Location: MLABCELL_X44_Y48_N0
\G_array~127\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~127_combout\ = ( \G_array~125_combout\ & ( \G_array[1][34]~118_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_G_array[1][34]~118_combout\,
	dataf => \ALT_INV_G_array~125_combout\,
	combout => \G_array~127_combout\);

-- Location: MLABCELL_X44_Y48_N18
\G_array[3][36]\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[3][36]~combout\ = ( !\G_array~127_combout\ & ( (!\G_array[1][36]~126_combout\ & ((!\P_array[2][36]~38_combout\) # ((!\G_array[1][32]~111_combout\ & !\G_array~112_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100000000000111110000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array[1][32]~111_combout\,
	datab => \ALT_INV_G_array~112_combout\,
	datac => \ALT_INV_P_array[2][36]~38_combout\,
	datad => \ALT_INV_G_array[1][36]~126_combout\,
	dataf => \ALT_INV_G_array~127_combout\,
	combout => \G_array[3][36]~combout\);

-- Location: MLABCELL_X44_Y48_N4
\P_array[4][36]~39\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[4][36]~39_combout\ = (\P_array[2][36]~38_combout\ & \P_array[2][32]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_P_array[2][36]~38_combout\,
	datac => \ALT_INV_P_array[2][32]~30_combout\,
	combout => \P_array[4][36]~39_combout\);

-- Location: MLABCELL_X42_Y48_N6
\carry[37]~41\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[37]~41_combout\ = ( \G_array[3][28]~combout\ & ( (\G_array[3][36]~combout\ & (((!\G_array~91_combout\) # (!\P_array[4][36]~39_combout\)) # (\G_array[3][20]~combout\))) ) ) # ( !\G_array[3][28]~combout\ & ( (\G_array[3][36]~combout\ & 
-- !\P_array[4][36]~39_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000011010000111100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array[3][20]~combout\,
	datab => \ALT_INV_G_array~91_combout\,
	datac => \ALT_INV_G_array[3][36]~combout\,
	datad => \ALT_INV_P_array[4][36]~39_combout\,
	dataf => \ALT_INV_G_array[3][28]~combout\,
	combout => \carry[37]~41_combout\);

-- Location: MLABCELL_X42_Y48_N22
\carry[37]~40\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[37]~40_combout\ = ( \P_array[2][20]~13_combout\ & ( (\P_array[2][16]~9_combout\ & (\G_array~91_combout\ & \P_array[4][36]~39_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[2][16]~9_combout\,
	datab => \ALT_INV_G_array~91_combout\,
	datad => \ALT_INV_P_array[4][36]~39_combout\,
	dataf => \ALT_INV_P_array[2][20]~13_combout\,
	combout => \carry[37]~40_combout\);

-- Location: MLABCELL_X46_Y48_N12
\S~37\ : arriaii_lcell_comb
-- Equation(s):
-- \S~37_combout\ = ( \carry[37]~40_combout\ & ( !\A[37]~input_o\ $ (!\B[37]~input_o\ $ (((!\carry[37]~41_combout\) # (!\carry[37]~13_combout\)))) ) ) # ( !\carry[37]~40_combout\ & ( !\A[37]~input_o\ $ (!\B[37]~input_o\ $ (!\carry[37]~41_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011010010110100101101001011010011001100101101001100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[37]~input_o\,
	datab => \ALT_INV_B[37]~input_o\,
	datac => \ALT_INV_carry[37]~41_combout\,
	datad => \ALT_INV_carry[37]~13_combout\,
	dataf => \ALT_INV_carry[37]~40_combout\,
	combout => \S~37_combout\);

-- Location: IOIBUF_X59_Y22_N1
\A[38]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(38),
	o => \A[38]~input_o\);

-- Location: MLABCELL_X46_Y48_N36
\G_array[1][37]~129\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][37]~129_combout\ = ( \B[36]~input_o\ & ( (!\A[37]~input_o\ & (\B[37]~input_o\ & \A[36]~input_o\)) # (\A[37]~input_o\ & ((\A[36]~input_o\) # (\B[37]~input_o\))) ) ) # ( !\B[36]~input_o\ & ( (\A[37]~input_o\ & \B[37]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[37]~input_o\,
	datab => \ALT_INV_B[37]~input_o\,
	datac => \ALT_INV_A[36]~input_o\,
	dataf => \ALT_INV_B[36]~input_o\,
	combout => \G_array[1][37]~129_combout\);

-- Location: MLABCELL_X46_Y48_N10
\G_array~128\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~128_combout\ = ( \B[37]~input_o\ & ( (!\A[37]~input_o\ & (!\A[36]~input_o\ $ (!\B[36]~input_o\))) ) ) # ( !\B[37]~input_o\ & ( (\A[37]~input_o\ & (!\A[36]~input_o\ $ (!\B[36]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000000110011001100110000000000110011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[36]~input_o\,
	datab => \ALT_INV_B[36]~input_o\,
	datad => \ALT_INV_A[37]~input_o\,
	dataf => \ALT_INV_B[37]~input_o\,
	combout => \G_array~128_combout\);

-- Location: LABCELL_X43_Y45_N24
\G_array~130\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~130_combout\ = (\G_array[1][35]~123_combout\ & \G_array~128_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G_array[1][35]~123_combout\,
	datac => \ALT_INV_G_array~128_combout\,
	combout => \G_array~130_combout\);

-- Location: MLABCELL_X44_Y45_N16
\P_array[2][37]~40\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[2][37]~40_combout\ = (\G_array~121_combout\ & \G_array~128_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G_array~121_combout\,
	datac => \ALT_INV_G_array~128_combout\,
	combout => \P_array[2][37]~40_combout\);

-- Location: MLABCELL_X44_Y45_N26
\G_array[3][37]\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[3][37]~combout\ = ( \P_array[2][37]~40_combout\ & ( (!\G_array~116_combout\ & (!\G_array[1][33]~115_combout\ & (!\G_array[1][37]~129_combout\ & !\G_array~130_combout\))) ) ) # ( !\P_array[2][37]~40_combout\ & ( (!\G_array[1][37]~129_combout\ & 
-- !\G_array~130_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~116_combout\,
	datab => \ALT_INV_G_array[1][33]~115_combout\,
	datac => \ALT_INV_G_array[1][37]~129_combout\,
	datad => \ALT_INV_G_array~130_combout\,
	dataf => \ALT_INV_P_array[2][37]~40_combout\,
	combout => \G_array[3][37]~combout\);

-- Location: IOIBUF_X53_Y56_N32
\B[38]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(38),
	o => \B[38]~input_o\);

-- Location: LABCELL_X43_Y45_N30
\P_array[4][37]~41\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[4][37]~41_combout\ = ( \P_array[2][33]~32_combout\ & ( \P_array[2][37]~40_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[2][37]~40_combout\,
	dataf => \ALT_INV_P_array[2][33]~32_combout\,
	combout => \P_array[4][37]~41_combout\);

-- Location: MLABCELL_X42_Y45_N22
\P_array[4][37]~42\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[4][37]~42_combout\ = ( \P_array[4][37]~41_combout\ & ( \G_array~96_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~96_combout\,
	dataf => \ALT_INV_P_array[4][37]~41_combout\,
	combout => \P_array[4][37]~42_combout\);

-- Location: MLABCELL_X42_Y44_N8
\G_array~131\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~131_combout\ = ( !\G_array[3][29]~combout\ & ( \P_array[4][37]~41_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_P_array[4][37]~41_combout\,
	dataf => \ALT_INV_G_array[3][29]~combout\,
	combout => \G_array~131_combout\);

-- Location: MLABCELL_X42_Y44_N10
\carry[38]~42\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[38]~42_combout\ = ( !\G_array~131_combout\ & ( (!\P_array[4][37]~42_combout\) # ((!\carry[38]~24_combout\ & (!\G_array~63_combout\ & \G_array[3][21]~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001000111111110000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_carry[38]~24_combout\,
	datab => \ALT_INV_G_array~63_combout\,
	datac => \ALT_INV_G_array[3][21]~combout\,
	datad => \ALT_INV_P_array[4][37]~42_combout\,
	dataf => \ALT_INV_G_array~131_combout\,
	combout => \carry[38]~42_combout\);

-- Location: MLABCELL_X46_Y48_N20
\S~38\ : arriaii_lcell_comb
-- Equation(s):
-- \S~38_combout\ = ( \carry[38]~42_combout\ & ( !\A[38]~input_o\ $ (!\G_array[3][37]~combout\ $ (!\B[38]~input_o\)) ) ) # ( !\carry[38]~42_combout\ & ( !\A[38]~input_o\ $ (\B[38]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000110011110011000011001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[38]~input_o\,
	datac => \ALT_INV_G_array[3][37]~combout\,
	datad => \ALT_INV_B[38]~input_o\,
	dataf => \ALT_INV_carry[38]~42_combout\,
	combout => \S~38_combout\);

-- Location: MLABCELL_X46_Y48_N38
\G_array~132\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~132_combout\ = (!\A[37]~input_o\ & (\B[37]~input_o\ & (!\B[38]~input_o\ $ (!\A[38]~input_o\)))) # (\A[37]~input_o\ & (!\B[37]~input_o\ & (!\B[38]~input_o\ $ (!\A[38]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001100000000001100110000000000110011000000000011001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[37]~input_o\,
	datab => \ALT_INV_B[37]~input_o\,
	datac => \ALT_INV_B[38]~input_o\,
	datad => \ALT_INV_A[38]~input_o\,
	combout => \G_array~132_combout\);

-- Location: MLABCELL_X46_Y48_N30
\G_array~134\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~134_combout\ = (\G_array~132_combout\ & \G_array[1][36]~126_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~132_combout\,
	datad => \ALT_INV_G_array[1][36]~126_combout\,
	combout => \G_array~134_combout\);

-- Location: MLABCELL_X46_Y48_N14
\G_array[1][38]~133\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][38]~133_combout\ = (!\B[38]~input_o\ & (\A[37]~input_o\ & (\B[37]~input_o\ & \A[38]~input_o\))) # (\B[38]~input_o\ & (((\A[37]~input_o\ & \B[37]~input_o\)) # (\A[38]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111000000010001111100000001000111110000000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[37]~input_o\,
	datab => \ALT_INV_B[37]~input_o\,
	datac => \ALT_INV_B[38]~input_o\,
	datad => \ALT_INV_A[38]~input_o\,
	combout => \G_array[1][38]~133_combout\);

-- Location: MLABCELL_X46_Y48_N4
\P_array[2][38]~43\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[2][38]~43_combout\ = ( \G_array~132_combout\ & ( \G_array~125_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G_array~125_combout\,
	dataf => \ALT_INV_G_array~132_combout\,
	combout => \P_array[2][38]~43_combout\);

-- Location: MLABCELL_X44_Y49_N0
\G_array[3][38]\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[3][38]~combout\ = ( \P_array[2][38]~43_combout\ & ( (!\G_array~119_combout\ & (!\G_array[1][34]~118_combout\ & (!\G_array~134_combout\ & !\G_array[1][38]~133_combout\))) ) ) # ( !\P_array[2][38]~43_combout\ & ( (!\G_array~134_combout\ & 
-- !\G_array[1][38]~133_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~119_combout\,
	datab => \ALT_INV_G_array[1][34]~118_combout\,
	datac => \ALT_INV_G_array~134_combout\,
	datad => \ALT_INV_G_array[1][38]~133_combout\,
	dataf => \ALT_INV_P_array[2][38]~43_combout\,
	combout => \G_array[3][38]~combout\);

-- Location: LABCELL_X45_Y48_N0
\P_array[4][38]~44\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[4][38]~44_combout\ = ( \P_array[2][34]~34_combout\ & ( \P_array[2][38]~43_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_P_array[2][38]~43_combout\,
	dataf => \ALT_INV_P_array[2][34]~34_combout\,
	combout => \P_array[4][38]~44_combout\);

-- Location: MLABCELL_X46_Y49_N18
\carry[39]~43\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[39]~43_combout\ = ( \P_array[4][38]~44_combout\ & ( \G_array[3][22]~combout\ & ( (\G_array[3][38]~combout\ & (\G_array[3][30]~combout\ & ((!\G_array~67_combout\) # (!\G_array~101_combout\)))) ) ) ) # ( !\P_array[4][38]~44_combout\ & ( 
-- \G_array[3][22]~combout\ & ( \G_array[3][38]~combout\ ) ) ) # ( \P_array[4][38]~44_combout\ & ( !\G_array[3][22]~combout\ & ( (\G_array[3][38]~combout\ & (\G_array[3][30]~combout\ & !\G_array~101_combout\)) ) ) ) # ( !\P_array[4][38]~44_combout\ & ( 
-- !\G_array[3][22]~combout\ & ( \G_array[3][38]~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000110000000000110011001100110000001100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~67_combout\,
	datab => \ALT_INV_G_array[3][38]~combout\,
	datac => \ALT_INV_G_array[3][30]~combout\,
	datad => \ALT_INV_G_array~101_combout\,
	datae => \ALT_INV_P_array[4][38]~44_combout\,
	dataf => \ALT_INV_G_array[3][22]~combout\,
	combout => \carry[39]~43_combout\);

-- Location: IOIBUF_X49_Y56_N63
\B[39]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(39),
	o => \B[39]~input_o\);

-- Location: MLABCELL_X46_Y49_N10
\P_array[4][38]~45\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[4][38]~45_combout\ = ( \G_array~101_combout\ & ( \P_array[4][38]~44_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_P_array[4][38]~44_combout\,
	dataf => \ALT_INV_G_array~101_combout\,
	combout => \P_array[4][38]~45_combout\);

-- Location: IOIBUF_X55_Y56_N63
\A[39]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(39),
	o => \A[39]~input_o\);

-- Location: MLABCELL_X46_Y49_N4
\S~39\ : arriaii_lcell_comb
-- Equation(s):
-- \S~39_combout\ = ( \A[39]~input_o\ & ( !\B[39]~input_o\ $ (((!\carry[39]~43_combout\) # ((\carry[39]~26_combout\ & \P_array[4][38]~45_combout\)))) ) ) # ( !\A[39]~input_o\ & ( !\B[39]~input_o\ $ (((\carry[39]~43_combout\ & ((!\carry[39]~26_combout\) # 
-- (!\P_array[4][38]~45_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110110100101001011011010001011010010010110101101001001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_carry[39]~43_combout\,
	datab => \ALT_INV_carry[39]~26_combout\,
	datac => \ALT_INV_B[39]~input_o\,
	datad => \ALT_INV_P_array[4][38]~45_combout\,
	dataf => \ALT_INV_A[39]~input_o\,
	combout => \S~39_combout\);

-- Location: IOIBUF_X59_Y49_N32
\A[40]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(40),
	o => \A[40]~input_o\);

-- Location: MLABCELL_X46_Y48_N32
\G_array~135\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~135_combout\ = ( \A[39]~input_o\ & ( (!\B[39]~input_o\ & (!\B[38]~input_o\ $ (!\A[38]~input_o\))) ) ) # ( !\A[39]~input_o\ & ( (\B[39]~input_o\ & (!\B[38]~input_o\ $ (!\A[38]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101000100000100010100010000100010100010000010001010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[39]~input_o\,
	datab => \ALT_INV_B[38]~input_o\,
	datad => \ALT_INV_A[38]~input_o\,
	dataf => \ALT_INV_A[39]~input_o\,
	combout => \G_array~135_combout\);

-- Location: LABCELL_X40_Y45_N10
\P_array[2][39]~46\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[2][39]~46_combout\ = (\G_array~135_combout\ & \G_array~128_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G_array~135_combout\,
	datad => \ALT_INV_G_array~128_combout\,
	combout => \P_array[2][39]~46_combout\);

-- Location: LABCELL_X40_Y45_N32
\P_array[4][39]~47\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[4][39]~47_combout\ = (\P_array[2][39]~46_combout\ & \P_array[2][35]~36_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_P_array[2][39]~46_combout\,
	datad => \ALT_INV_P_array[2][35]~36_combout\,
	combout => \P_array[4][39]~47_combout\);

-- Location: LABCELL_X40_Y45_N38
\P_array[4][39]~48\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[4][39]~48_combout\ = ( \P_array[2][27]~20_combout\ & ( (\P_array[4][39]~47_combout\ & \P_array[2][31]~28_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_P_array[4][39]~47_combout\,
	datac => \ALT_INV_P_array[2][31]~28_combout\,
	dataf => \ALT_INV_P_array[2][27]~20_combout\,
	combout => \P_array[4][39]~48_combout\);

-- Location: MLABCELL_X39_Y47_N26
\carry[40]~44\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[40]~44_combout\ = ( \P_array[4][39]~48_combout\ & ( (\P_array[2][11]~4_combout\ & (\P_array[2][23]~16_combout\ & (\G_array~56_combout\ & !carry(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[2][11]~4_combout\,
	datab => \ALT_INV_P_array[2][23]~16_combout\,
	datac => \ALT_INV_G_array~56_combout\,
	datad => ALT_INV_carry(8),
	dataf => \ALT_INV_P_array[4][39]~48_combout\,
	combout => \carry[40]~44_combout\);

-- Location: MLABCELL_X46_Y48_N34
\G_array[1][39]~136\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][39]~136_combout\ = (!\B[39]~input_o\ & (\B[38]~input_o\ & (\A[39]~input_o\ & \A[38]~input_o\))) # (\B[39]~input_o\ & (((\B[38]~input_o\ & \A[38]~input_o\)) # (\A[39]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010111000001010001011100000101000101110000010100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[39]~input_o\,
	datab => \ALT_INV_B[38]~input_o\,
	datac => \ALT_INV_A[39]~input_o\,
	datad => \ALT_INV_A[38]~input_o\,
	combout => \G_array[1][39]~136_combout\);

-- Location: LABCELL_X40_Y45_N8
\G_array~137\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~137_combout\ = ( \G_array[1][37]~129_combout\ & ( \G_array~135_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G_array~135_combout\,
	dataf => \ALT_INV_G_array[1][37]~129_combout\,
	combout => \G_array~137_combout\);

-- Location: LABCELL_X40_Y45_N34
\G_array[3][39]\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[3][39]~combout\ = ( !\G_array~137_combout\ & ( (!\G_array[1][39]~136_combout\ & ((!\P_array[2][39]~46_combout\) # ((!\G_array[1][35]~123_combout\ & !\G_array~124_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100010001000101010001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array[1][39]~136_combout\,
	datab => \ALT_INV_P_array[2][39]~46_combout\,
	datac => \ALT_INV_G_array[1][35]~123_combout\,
	datad => \ALT_INV_G_array~124_combout\,
	dataf => \ALT_INV_G_array~137_combout\,
	combout => \G_array[3][39]~combout\);

-- Location: MLABCELL_X39_Y47_N12
\G_array~138\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~138_combout\ = ( \P_array[2][19]~12_combout\ & ( (!\G_array[3][15]~combout\ & \P_array[2][23]~16_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_G_array[3][15]~combout\,
	datad => \ALT_INV_P_array[2][23]~16_combout\,
	dataf => \ALT_INV_P_array[2][19]~12_combout\,
	combout => \G_array~138_combout\);

-- Location: LABCELL_X40_Y45_N36
\carry[40]~45\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[40]~45_combout\ = ( \G_array~138_combout\ & ( (!\P_array[4][39]~48_combout\ & ((!\P_array[4][39]~47_combout\) # (\G_array[3][31]~combout\))) ) ) # ( !\G_array~138_combout\ & ( (!\G_array[3][31]~combout\ & (!\P_array[4][39]~47_combout\ & 
-- ((!\P_array[4][39]~48_combout\) # (\G_array[3][23]~combout\)))) # (\G_array[3][31]~combout\ & (((!\P_array[4][39]~48_combout\) # (\G_array[3][23]~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000011011101110100001101110111010000110100001101000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array[3][31]~combout\,
	datab => \ALT_INV_P_array[4][39]~47_combout\,
	datac => \ALT_INV_P_array[4][39]~48_combout\,
	datad => \ALT_INV_G_array[3][23]~combout\,
	dataf => \ALT_INV_G_array~138_combout\,
	combout => \carry[40]~45_combout\);

-- Location: IOIBUF_X59_Y30_N63
\B[40]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(40),
	o => \B[40]~input_o\);

-- Location: MLABCELL_X39_Y45_N2
\S~40\ : arriaii_lcell_comb
-- Equation(s):
-- \S~40_combout\ = ( \B[40]~input_o\ & ( !\A[40]~input_o\ $ ((((!\G_array[3][39]~combout\) # (!\carry[40]~45_combout\)) # (\carry[40]~44_combout\))) ) ) # ( !\B[40]~input_o\ & ( !\A[40]~input_o\ $ (((!\carry[40]~44_combout\ & (\G_array[3][39]~combout\ & 
-- \carry[40]~45_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010100110101010101010011001010101010110010101010101011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[40]~input_o\,
	datab => \ALT_INV_carry[40]~44_combout\,
	datac => \ALT_INV_G_array[3][39]~combout\,
	datad => \ALT_INV_carry[40]~45_combout\,
	dataf => \ALT_INV_B[40]~input_o\,
	combout => \S~40_combout\);

-- Location: IOIBUF_X59_Y19_N63
\B[41]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(41),
	o => \B[41]~input_o\);

-- Location: IOIBUF_X59_Y13_N94
\A[41]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(41),
	o => \A[41]~input_o\);

-- Location: MLABCELL_X46_Y48_N22
\G_array~139\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~139_combout\ = ( \A[39]~input_o\ & ( (!\B[39]~input_o\ & (!\B[40]~input_o\ $ (!\A[40]~input_o\))) ) ) # ( !\A[39]~input_o\ & ( (\B[39]~input_o\ & (!\B[40]~input_o\ $ (!\A[40]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101001011010000000000101101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[40]~input_o\,
	datac => \ALT_INV_A[40]~input_o\,
	datad => \ALT_INV_B[39]~input_o\,
	dataf => \ALT_INV_A[39]~input_o\,
	combout => \G_array~139_combout\);

-- Location: MLABCELL_X46_Y48_N28
\P_array[2][40]~49\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[2][40]~49_combout\ = (\G_array~132_combout\ & \G_array~139_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~132_combout\,
	datad => \ALT_INV_G_array~139_combout\,
	combout => \P_array[2][40]~49_combout\);

-- Location: MLABCELL_X46_Y48_N16
\G_array[1][40]~141\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][40]~141_combout\ = ( \A[39]~input_o\ & ( (!\B[39]~input_o\ & (\A[40]~input_o\ & \B[40]~input_o\)) # (\B[39]~input_o\ & ((\B[40]~input_o\) # (\A[40]~input_o\))) ) ) # ( !\A[39]~input_o\ & ( (\A[40]~input_o\ & \B[40]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[39]~input_o\,
	datab => \ALT_INV_A[40]~input_o\,
	datac => \ALT_INV_B[40]~input_o\,
	dataf => \ALT_INV_A[39]~input_o\,
	combout => \G_array[1][40]~141_combout\);

-- Location: MLABCELL_X46_Y48_N18
\G_array~142\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~142_combout\ = ( \G_array[1][38]~133_combout\ & ( \G_array~139_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_G_array~139_combout\,
	dataf => \ALT_INV_G_array[1][38]~133_combout\,
	combout => \G_array~142_combout\);

-- Location: MLABCELL_X44_Y48_N12
\G_array[3][40]\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[3][40]~combout\ = ( \P_array[2][40]~49_combout\ & ( (!\G_array[1][40]~141_combout\ & (!\G_array~142_combout\ & (!\G_array~127_combout\ & !\G_array[1][36]~126_combout\))) ) ) # ( !\P_array[2][40]~49_combout\ & ( (!\G_array[1][40]~141_combout\ & 
-- !\G_array~142_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array[1][40]~141_combout\,
	datab => \ALT_INV_G_array~142_combout\,
	datac => \ALT_INV_G_array~127_combout\,
	datad => \ALT_INV_G_array[1][36]~126_combout\,
	dataf => \ALT_INV_P_array[2][40]~49_combout\,
	combout => \G_array[3][40]~combout\);

-- Location: MLABCELL_X44_Y48_N30
\P_array[4][40]~50\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[4][40]~50_combout\ = ( \P_array[2][40]~49_combout\ & ( (\P_array[4][36]~39_combout\ & \P_array[2][28]~22_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[4][36]~39_combout\,
	datac => \ALT_INV_P_array[2][28]~22_combout\,
	dataf => \ALT_INV_P_array[2][40]~49_combout\,
	combout => \P_array[4][40]~50_combout\);

-- Location: LABCELL_X43_Y48_N6
\carry[41]~46\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[41]~46_combout\ = ( \P_array[4][40]~50_combout\ & ( \G_array[3][24]~combout\ & ( (\G_array[3][40]~combout\ & ((!\G_array~74_combout\) # ((!\carry[41]~29_combout\ & \G_array[3][16]~combout\)))) ) ) ) # ( !\P_array[4][40]~50_combout\ & ( 
-- \G_array[3][24]~combout\ & ( \G_array[3][40]~combout\ ) ) ) # ( !\P_array[4][40]~50_combout\ & ( !\G_array[3][24]~combout\ & ( \G_array[3][40]~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000001010101010101010101000001010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array[3][40]~combout\,
	datab => \ALT_INV_carry[41]~29_combout\,
	datac => \ALT_INV_G_array~74_combout\,
	datad => \ALT_INV_G_array[3][16]~combout\,
	datae => \ALT_INV_P_array[4][40]~50_combout\,
	dataf => \ALT_INV_G_array[3][24]~combout\,
	combout => \carry[41]~46_combout\);

-- Location: LABCELL_X43_Y48_N2
\G_array~140\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~140_combout\ = ( !\G_array[3][32]~combout\ & ( \P_array[2][36]~38_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[2][36]~38_combout\,
	dataf => \ALT_INV_G_array[3][32]~combout\,
	combout => \G_array~140_combout\);

-- Location: LABCELL_X43_Y46_N0
\S~41\ : arriaii_lcell_comb
-- Equation(s):
-- \S~41_combout\ = ( \G_array~140_combout\ & ( !\B[41]~input_o\ $ (!\A[41]~input_o\ $ (((!\carry[41]~46_combout\) # (\P_array[2][40]~49_combout\)))) ) ) # ( !\G_array~140_combout\ & ( !\B[41]~input_o\ $ (!\A[41]~input_o\ $ (!\carry[41]~46_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100101100110100110010110011010011001011010011001100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[41]~input_o\,
	datab => \ALT_INV_A[41]~input_o\,
	datac => \ALT_INV_P_array[2][40]~49_combout\,
	datad => \ALT_INV_carry[41]~46_combout\,
	dataf => \ALT_INV_G_array~140_combout\,
	combout => \S~41_combout\);

-- Location: LABCELL_X43_Y46_N2
\G_array~143\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~143_combout\ = ( \A[40]~input_o\ & ( (!\B[40]~input_o\ & (!\B[41]~input_o\ $ (!\A[41]~input_o\))) ) ) # ( !\A[40]~input_o\ & ( (\B[40]~input_o\ & (!\B[41]~input_o\ $ (!\A[41]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011001100000011000000110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[41]~input_o\,
	datab => \ALT_INV_A[41]~input_o\,
	datac => \ALT_INV_B[40]~input_o\,
	dataf => \ALT_INV_A[40]~input_o\,
	combout => \G_array~143_combout\);

-- Location: LABCELL_X43_Y45_N14
\P_array[2][41]~51\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[2][41]~51_combout\ = ( \G_array~135_combout\ & ( \G_array~143_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~143_combout\,
	dataf => \ALT_INV_G_array~135_combout\,
	combout => \P_array[2][41]~51_combout\);

-- Location: LABCELL_X43_Y45_N12
\G_array~146\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~146_combout\ = ( \G_array[1][39]~136_combout\ & ( \G_array~143_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~143_combout\,
	dataf => \ALT_INV_G_array[1][39]~136_combout\,
	combout => \G_array~146_combout\);

-- Location: LABCELL_X43_Y46_N6
\G_array[1][41]~145\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][41]~145_combout\ = ( \A[41]~input_o\ & ( ((\A[40]~input_o\ & \B[40]~input_o\)) # (\B[41]~input_o\) ) ) # ( !\A[41]~input_o\ & ( (\B[41]~input_o\ & (\A[40]~input_o\ & \B[40]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000101010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[41]~input_o\,
	datab => \ALT_INV_A[40]~input_o\,
	datac => \ALT_INV_B[40]~input_o\,
	dataf => \ALT_INV_A[41]~input_o\,
	combout => \G_array[1][41]~145_combout\);

-- Location: LABCELL_X43_Y45_N2
\G_array[3][41]\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[3][41]~combout\ = ( !\G_array[1][41]~145_combout\ & ( (!\G_array~146_combout\ & ((!\P_array[2][41]~51_combout\) # ((!\G_array~130_combout\ & !\G_array[1][37]~129_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011000000111000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~130_combout\,
	datab => \ALT_INV_P_array[2][41]~51_combout\,
	datac => \ALT_INV_G_array~146_combout\,
	datad => \ALT_INV_G_array[1][37]~129_combout\,
	dataf => \ALT_INV_G_array[1][41]~145_combout\,
	combout => \G_array[3][41]~combout\);

-- Location: LABCELL_X43_Y45_N0
\P_array[4][41]~52\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[4][41]~52_combout\ = ( \P_array[4][37]~41_combout\ & ( (\P_array[2][41]~51_combout\ & \P_array[2][29]~24_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_P_array[2][41]~51_combout\,
	datad => \ALT_INV_P_array[2][29]~24_combout\,
	dataf => \ALT_INV_P_array[4][37]~41_combout\,
	combout => \P_array[4][41]~52_combout\);

-- Location: LABCELL_X43_Y45_N4
\carry[42]~47\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[42]~47_combout\ = ( \G_array[3][25]~combout\ & ( \P_array[4][41]~52_combout\ & ( (\G_array[3][41]~combout\ & ((!\G_array~78_combout\) # ((\G_array[3][17]~combout\ & !\carry[42]~31_combout\)))) ) ) ) # ( \G_array[3][25]~combout\ & ( 
-- !\P_array[4][41]~52_combout\ & ( \G_array[3][41]~combout\ ) ) ) # ( !\G_array[3][25]~combout\ & ( !\P_array[4][41]~52_combout\ & ( \G_array[3][41]~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000011011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array[3][17]~combout\,
	datab => \ALT_INV_G_array~78_combout\,
	datac => \ALT_INV_carry[42]~31_combout\,
	datad => \ALT_INV_G_array[3][41]~combout\,
	datae => \ALT_INV_G_array[3][25]~combout\,
	dataf => \ALT_INV_P_array[4][41]~52_combout\,
	combout => \carry[42]~47_combout\);

-- Location: IOIBUF_X59_Y34_N32
\A[42]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(42),
	o => \A[42]~input_o\);

-- Location: LABCELL_X43_Y45_N18
\G_array~144\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~144_combout\ = ( !\G_array[3][33]~combout\ & ( \P_array[2][37]~40_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_P_array[2][37]~40_combout\,
	dataf => \ALT_INV_G_array[3][33]~combout\,
	combout => \G_array~144_combout\);

-- Location: IOIBUF_X53_Y56_N94
\B[42]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(42),
	o => \B[42]~input_o\);

-- Location: LABCELL_X43_Y45_N16
\S~42\ : arriaii_lcell_comb
-- Equation(s):
-- \S~42_combout\ = ( \B[42]~input_o\ & ( !\A[42]~input_o\ $ (((!\carry[42]~47_combout\) # ((\P_array[2][41]~51_combout\ & \G_array~144_combout\)))) ) ) # ( !\B[42]~input_o\ & ( !\A[42]~input_o\ $ (((\carry[42]~47_combout\ & ((!\P_array[2][41]~51_combout\) # 
-- (!\G_array~144_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110110100101001011011010001011010010010110101101001001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_carry[42]~47_combout\,
	datab => \ALT_INV_P_array[2][41]~51_combout\,
	datac => \ALT_INV_A[42]~input_o\,
	datad => \ALT_INV_G_array~144_combout\,
	dataf => \ALT_INV_B[42]~input_o\,
	combout => \S~42_combout\);

-- Location: IOIBUF_X59_Y34_N94
\A[43]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(43),
	o => \A[43]~input_o\);

-- Location: LABCELL_X43_Y46_N30
\G_array~147\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~147_combout\ = ( \A[41]~input_o\ & ( (!\B[41]~input_o\ & (!\B[42]~input_o\ $ (!\A[42]~input_o\))) ) ) # ( !\A[41]~input_o\ & ( (\B[41]~input_o\ & (!\B[42]~input_o\ $ (!\A[42]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000000001010101000000000101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[41]~input_o\,
	datac => \ALT_INV_B[42]~input_o\,
	datad => \ALT_INV_A[42]~input_o\,
	dataf => \ALT_INV_A[41]~input_o\,
	combout => \G_array~147_combout\);

-- Location: MLABCELL_X46_Y48_N6
\P_array[2][42]~53\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[2][42]~53_combout\ = (\G_array~147_combout\ & \G_array~139_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~147_combout\,
	datac => \ALT_INV_G_array~139_combout\,
	combout => \P_array[2][42]~53_combout\);

-- Location: MLABCELL_X44_Y49_N24
\P_array[4][42]~54\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[4][42]~54_combout\ = ( \P_array[4][38]~44_combout\ & ( (\P_array[2][30]~26_combout\ & \P_array[2][42]~53_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_P_array[2][30]~26_combout\,
	datad => \ALT_INV_P_array[2][42]~53_combout\,
	dataf => \ALT_INV_P_array[4][38]~44_combout\,
	combout => \P_array[4][42]~54_combout\);

-- Location: LABCELL_X45_Y48_N34
\carry[43]~49\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[43]~49_combout\ = ( \carry[27]~9_combout\ & ( (!\G_array[3][18]~combout\ & (\P_array[4][42]~54_combout\ & \G_array~82_combout\)) ) ) # ( !\carry[27]~9_combout\ & ( (\P_array[4][42]~54_combout\ & (\G_array~82_combout\ & ((!\G_array[3][18]~combout\) 
-- # (\G_array~51_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001011000000000000101100000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array[3][18]~combout\,
	datab => \ALT_INV_G_array~51_combout\,
	datac => \ALT_INV_P_array[4][42]~54_combout\,
	datad => \ALT_INV_G_array~82_combout\,
	dataf => \ALT_INV_carry[27]~9_combout\,
	combout => \carry[43]~49_combout\);

-- Location: MLABCELL_X44_Y46_N2
\G_array~150\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~150_combout\ = ( \G_array[1][40]~141_combout\ & ( \G_array~147_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_G_array~147_combout\,
	dataf => \ALT_INV_G_array[1][40]~141_combout\,
	combout => \G_array~150_combout\);

-- Location: LABCELL_X43_Y46_N28
\G_array[1][42]~149\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][42]~149_combout\ = ( \A[41]~input_o\ & ( (!\B[41]~input_o\ & (\B[42]~input_o\ & \A[42]~input_o\)) # (\B[41]~input_o\ & ((\A[42]~input_o\) # (\B[42]~input_o\))) ) ) # ( !\A[41]~input_o\ & ( (\B[42]~input_o\ & \A[42]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100010001011101110001000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[41]~input_o\,
	datab => \ALT_INV_B[42]~input_o\,
	datad => \ALT_INV_A[42]~input_o\,
	dataf => \ALT_INV_A[41]~input_o\,
	combout => \G_array[1][42]~149_combout\);

-- Location: MLABCELL_X44_Y49_N30
\G_array[3][42]\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[3][42]~combout\ = ( !\G_array[1][42]~149_combout\ & ( (!\G_array~150_combout\ & ((!\P_array[2][42]~53_combout\) # ((!\G_array~134_combout\ & !\G_array[1][38]~133_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011000000111000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~134_combout\,
	datab => \ALT_INV_P_array[2][42]~53_combout\,
	datac => \ALT_INV_G_array~150_combout\,
	datad => \ALT_INV_G_array[1][38]~133_combout\,
	dataf => \ALT_INV_G_array[1][42]~149_combout\,
	combout => \G_array[3][42]~combout\);

-- Location: LABCELL_X45_Y48_N2
\carry[43]~48\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[43]~48_combout\ = ( \G_array[3][26]~combout\ & ( \G_array[3][42]~combout\ ) ) # ( !\G_array[3][26]~combout\ & ( (\G_array[3][42]~combout\ & !\P_array[4][42]~54_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G_array[3][42]~combout\,
	datac => \ALT_INV_P_array[4][42]~54_combout\,
	dataf => \ALT_INV_G_array[3][26]~combout\,
	combout => \carry[43]~48_combout\);

-- Location: LABCELL_X47_Y48_N36
\G_array~148\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~148_combout\ = ( !\G_array[3][34]~combout\ & ( (\P_array[2][38]~43_combout\ & \P_array[2][42]~53_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_P_array[2][38]~43_combout\,
	datad => \ALT_INV_P_array[2][42]~53_combout\,
	dataf => \ALT_INV_G_array[3][34]~combout\,
	combout => \G_array~148_combout\);

-- Location: IOIBUF_X59_Y36_N1
\B[43]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(43),
	o => \B[43]~input_o\);

-- Location: LABCELL_X47_Y48_N38
\S~43\ : arriaii_lcell_comb
-- Equation(s):
-- \S~43_combout\ = ( \B[43]~input_o\ & ( !\A[43]~input_o\ $ ((((!\carry[43]~48_combout\) # (\G_array~148_combout\)) # (\carry[43]~49_combout\))) ) ) # ( !\B[43]~input_o\ & ( !\A[43]~input_o\ $ (((!\carry[43]~49_combout\ & (\carry[43]~48_combout\ & 
-- !\G_array~148_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010011010101010101001101010101001011001010101010101100101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[43]~input_o\,
	datab => \ALT_INV_carry[43]~49_combout\,
	datac => \ALT_INV_carry[43]~48_combout\,
	datad => \ALT_INV_G_array~148_combout\,
	dataf => \ALT_INV_B[43]~input_o\,
	combout => \S~43_combout\);

-- Location: LABCELL_X43_Y46_N14
\G_array~151\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~151_combout\ = ( \A[43]~input_o\ & ( (!\B[43]~input_o\ & (!\B[42]~input_o\ $ (!\A[42]~input_o\))) ) ) # ( !\A[43]~input_o\ & ( (\B[43]~input_o\ & (!\B[42]~input_o\ $ (!\A[42]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000000001010101000000000101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[43]~input_o\,
	datac => \ALT_INV_B[42]~input_o\,
	datad => \ALT_INV_A[42]~input_o\,
	dataf => \ALT_INV_A[43]~input_o\,
	combout => \G_array~151_combout\);

-- Location: LABCELL_X43_Y46_N18
\P_array[2][43]~55\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[2][43]~55_combout\ = (\G_array~151_combout\ & \G_array~143_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G_array~151_combout\,
	datad => \ALT_INV_G_array~143_combout\,
	combout => \P_array[2][43]~55_combout\);

-- Location: LABCELL_X40_Y46_N12
\G_array~152\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~152_combout\ = ( \P_array[2][39]~46_combout\ & ( (\P_array[2][43]~55_combout\ & !\G_array[3][35]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[2][43]~55_combout\,
	datad => \ALT_INV_G_array[3][35]~combout\,
	dataf => \ALT_INV_P_array[2][39]~46_combout\,
	combout => \G_array~152_combout\);

-- Location: LABCELL_X43_Y46_N16
\G_array~154\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~154_combout\ = ( \G_array[1][41]~145_combout\ & ( \G_array~151_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G_array~151_combout\,
	dataf => \ALT_INV_G_array[1][41]~145_combout\,
	combout => \G_array~154_combout\);

-- Location: LABCELL_X43_Y46_N12
\G_array[1][43]~153\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][43]~153_combout\ = ( \A[43]~input_o\ & ( ((\B[42]~input_o\ & \A[42]~input_o\)) # (\B[43]~input_o\) ) ) # ( !\A[43]~input_o\ & ( (\B[43]~input_o\ & (\B[42]~input_o\ & \A[42]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000101010101011101110101010101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[43]~input_o\,
	datab => \ALT_INV_B[42]~input_o\,
	datad => \ALT_INV_A[42]~input_o\,
	dataf => \ALT_INV_A[43]~input_o\,
	combout => \G_array[1][43]~153_combout\);

-- Location: LABCELL_X40_Y46_N16
\G_array[3][43]\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[3][43]~combout\ = ( \G_array[1][39]~136_combout\ & ( (!\G_array~154_combout\ & (!\G_array[1][43]~153_combout\ & !\P_array[2][43]~55_combout\)) ) ) # ( !\G_array[1][39]~136_combout\ & ( (!\G_array~154_combout\ & (!\G_array[1][43]~153_combout\ & 
-- ((!\G_array~137_combout\) # (!\P_array[2][43]~55_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010000000100010001000000010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~154_combout\,
	datab => \ALT_INV_G_array[1][43]~153_combout\,
	datac => \ALT_INV_G_array~137_combout\,
	datad => \ALT_INV_P_array[2][43]~55_combout\,
	dataf => \ALT_INV_G_array[1][39]~136_combout\,
	combout => \G_array[3][43]~combout\);

-- Location: LABCELL_X40_Y46_N14
\P_array[4][43]~56\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[4][43]~56_combout\ = ( \P_array[4][39]~47_combout\ & ( (\P_array[2][43]~55_combout\ & \P_array[2][31]~28_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[2][43]~55_combout\,
	datac => \ALT_INV_P_array[2][31]~28_combout\,
	dataf => \ALT_INV_P_array[4][39]~47_combout\,
	combout => \P_array[4][43]~56_combout\);

-- Location: LABCELL_X40_Y46_N28
\carry[44]~50\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[44]~50_combout\ = ( \P_array[4][43]~56_combout\ & ( (!\G_array~87_combout\ & (\G_array[3][27]~combout\ & (!\G_array~152_combout\ & \G_array[3][43]~combout\))) ) ) # ( !\P_array[4][43]~56_combout\ & ( (!\G_array~152_combout\ & 
-- \G_array[3][43]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~87_combout\,
	datab => \ALT_INV_G_array[3][27]~combout\,
	datac => \ALT_INV_G_array~152_combout\,
	datad => \ALT_INV_G_array[3][43]~combout\,
	dataf => \ALT_INV_P_array[4][43]~56_combout\,
	combout => \carry[44]~50_combout\);

-- Location: IOIBUF_X35_Y56_N94
\A[44]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(44),
	o => \A[44]~input_o\);

-- Location: IOIBUF_X41_Y0_N63
\B[44]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(44),
	o => \B[44]~input_o\);

-- Location: LABCELL_X40_Y46_N20
\S~44\ : arriaii_lcell_comb
-- Equation(s):
-- \S~44_combout\ = ( \B[44]~input_o\ & ( \P_array[4][27]~21_combout\ & ( !\A[44]~input_o\ $ (((!\carry[44]~50_combout\) # ((!\carry[36]~11_combout\ & \P_array[4][43]~56_combout\)))) ) ) ) # ( !\B[44]~input_o\ & ( \P_array[4][27]~21_combout\ & ( 
-- !\A[44]~input_o\ $ (((\carry[44]~50_combout\ & ((!\P_array[4][43]~56_combout\) # (\carry[36]~11_combout\))))) ) ) ) # ( \B[44]~input_o\ & ( !\P_array[4][27]~21_combout\ & ( !\carry[44]~50_combout\ $ (!\A[44]~input_o\) ) ) ) # ( !\B[44]~input_o\ & ( 
-- !\P_array[4][27]~21_combout\ & ( !\carry[44]~50_combout\ $ (\A[44]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101010110100101101010100101111000010101101000011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_carry[44]~50_combout\,
	datab => \ALT_INV_carry[36]~11_combout\,
	datac => \ALT_INV_A[44]~input_o\,
	datad => \ALT_INV_P_array[4][43]~56_combout\,
	datae => \ALT_INV_B[44]~input_o\,
	dataf => \ALT_INV_P_array[4][27]~21_combout\,
	combout => \S~44_combout\);

-- Location: LABCELL_X43_Y46_N20
\G_array~155\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~155_combout\ = ( \A[43]~input_o\ & ( (!\B[43]~input_o\ & (!\B[44]~input_o\ $ (!\A[44]~input_o\))) ) ) # ( !\A[43]~input_o\ & ( (\B[43]~input_o\ & (!\B[44]~input_o\ $ (!\A[44]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000110000110000000011000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[44]~input_o\,
	datac => \ALT_INV_B[43]~input_o\,
	datad => \ALT_INV_A[44]~input_o\,
	dataf => \ALT_INV_A[43]~input_o\,
	combout => \G_array~155_combout\);

-- Location: MLABCELL_X44_Y46_N6
\P_array[2][44]~57\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[2][44]~57_combout\ = ( \G_array~155_combout\ & ( \G_array~147_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~147_combout\,
	dataf => \ALT_INV_G_array~155_combout\,
	combout => \P_array[2][44]~57_combout\);

-- Location: MLABCELL_X44_Y48_N6
\G_array~156\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~156_combout\ = ( \P_array[2][40]~49_combout\ & ( \P_array[2][44]~57_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_P_array[2][44]~57_combout\,
	dataf => \ALT_INV_P_array[2][40]~49_combout\,
	combout => \G_array~156_combout\);

-- Location: MLABCELL_X44_Y48_N26
\P_array[4][44]~58\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[4][44]~58_combout\ = ( \G_array~156_combout\ & ( \P_array[4][36]~39_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[4][36]~39_combout\,
	dataf => \ALT_INV_G_array~156_combout\,
	combout => \P_array[4][44]~58_combout\);

-- Location: IOIBUF_X21_Y56_N94
\A[45]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(45),
	o => \A[45]~input_o\);

-- Location: LABCELL_X43_Y46_N22
\G_array[1][44]~157\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][44]~157_combout\ = ( \A[43]~input_o\ & ( (!\B[43]~input_o\ & (\B[44]~input_o\ & \A[44]~input_o\)) # (\B[43]~input_o\ & ((\A[44]~input_o\) # (\B[44]~input_o\))) ) ) # ( !\A[43]~input_o\ & ( (\B[44]~input_o\ & \A[44]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100010001011101110001000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[43]~input_o\,
	datab => \ALT_INV_B[44]~input_o\,
	datad => \ALT_INV_A[44]~input_o\,
	dataf => \ALT_INV_A[43]~input_o\,
	combout => \G_array[1][44]~157_combout\);

-- Location: LABCELL_X43_Y46_N24
\G_array~158\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~158_combout\ = ( \G_array[1][42]~149_combout\ & ( \G_array~155_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_G_array~155_combout\,
	dataf => \ALT_INV_G_array[1][42]~149_combout\,
	combout => \G_array~158_combout\);

-- Location: MLABCELL_X44_Y48_N14
\G_array[3][44]\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[3][44]~combout\ = ( !\G_array~158_combout\ & ( (!\G_array[1][44]~157_combout\ & ((!\P_array[2][44]~57_combout\) # ((!\G_array[1][40]~141_combout\ & !\G_array~142_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010000000111100001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array[1][40]~141_combout\,
	datab => \ALT_INV_G_array~142_combout\,
	datac => \ALT_INV_G_array[1][44]~157_combout\,
	datad => \ALT_INV_P_array[2][44]~57_combout\,
	dataf => \ALT_INV_G_array~158_combout\,
	combout => \G_array[3][44]~combout\);

-- Location: MLABCELL_X42_Y48_N8
\carry[45]~51\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[45]~51_combout\ = ( \G_array~92_combout\ & ( \G_array[3][28]~combout\ & ( (\G_array[3][44]~combout\ & ((!\G_array~156_combout\) # ((!\P_array[4][36]~39_combout\ & \G_array[3][36]~combout\)))) ) ) ) # ( !\G_array~92_combout\ & ( 
-- \G_array[3][28]~combout\ & ( (\G_array[3][44]~combout\ & ((!\G_array~156_combout\) # (\G_array[3][36]~combout\))) ) ) ) # ( \G_array~92_combout\ & ( !\G_array[3][28]~combout\ & ( (\G_array[3][44]~combout\ & ((!\G_array~156_combout\) # 
-- ((!\P_array[4][36]~39_combout\ & \G_array[3][36]~combout\)))) ) ) ) # ( !\G_array~92_combout\ & ( !\G_array[3][28]~combout\ & ( (\G_array[3][44]~combout\ & ((!\G_array~156_combout\) # ((!\P_array[4][36]~39_combout\ & \G_array[3][36]~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110010001100000011001000110000001100110011000000110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[4][36]~39_combout\,
	datab => \ALT_INV_G_array[3][44]~combout\,
	datac => \ALT_INV_G_array~156_combout\,
	datad => \ALT_INV_G_array[3][36]~combout\,
	datae => \ALT_INV_G_array~92_combout\,
	dataf => \ALT_INV_G_array[3][28]~combout\,
	combout => \carry[45]~51_combout\);

-- Location: IOIBUF_X59_Y33_N63
\B[45]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(45),
	o => \B[45]~input_o\);

-- Location: MLABCELL_X42_Y48_N34
\S~45\ : arriaii_lcell_comb
-- Equation(s):
-- \S~45_combout\ = ( \carry[45]~51_combout\ & ( \B[45]~input_o\ & ( !\A[45]~input_o\ $ (((!\carry[37]~13_combout\ & (\P_array[4][44]~58_combout\ & \P_array[4][28]~23_combout\)))) ) ) ) # ( !\carry[45]~51_combout\ & ( \B[45]~input_o\ & ( \A[45]~input_o\ ) ) 
-- ) # ( \carry[45]~51_combout\ & ( !\B[45]~input_o\ & ( !\A[45]~input_o\ $ ((((!\P_array[4][44]~58_combout\) # (!\P_array[4][28]~23_combout\)) # (\carry[37]~13_combout\))) ) ) ) # ( !\carry[45]~51_combout\ & ( !\B[45]~input_o\ & ( !\A[45]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000011110010110100001111000011111111000011010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_carry[37]~13_combout\,
	datab => \ALT_INV_P_array[4][44]~58_combout\,
	datac => \ALT_INV_A[45]~input_o\,
	datad => \ALT_INV_P_array[4][28]~23_combout\,
	datae => \ALT_INV_carry[45]~51_combout\,
	dataf => \ALT_INV_B[45]~input_o\,
	combout => \S~45_combout\);

-- Location: LABCELL_X43_Y46_N8
\G_array~159\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~159_combout\ = ( \B[45]~input_o\ & ( (!\A[45]~input_o\ & (!\B[44]~input_o\ $ (!\A[44]~input_o\))) ) ) # ( !\B[45]~input_o\ & ( (\A[45]~input_o\ & (!\B[44]~input_o\ $ (!\A[44]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100000101000001010000101000001010000010100000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[45]~input_o\,
	datab => \ALT_INV_B[44]~input_o\,
	datac => \ALT_INV_A[44]~input_o\,
	dataf => \ALT_INV_B[45]~input_o\,
	combout => \G_array~159_combout\);

-- Location: LABCELL_X43_Y46_N32
\P_array[2][45]~59\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[2][45]~59_combout\ = ( \G_array~151_combout\ & ( \G_array~159_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~159_combout\,
	dataf => \ALT_INV_G_array~151_combout\,
	combout => \P_array[2][45]~59_combout\);

-- Location: LABCELL_X43_Y45_N22
\G_array~160\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~160_combout\ = ( \P_array[2][41]~51_combout\ & ( \P_array[2][45]~59_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[2][45]~59_combout\,
	dataf => \ALT_INV_P_array[2][41]~51_combout\,
	combout => \G_array~160_combout\);

-- Location: LABCELL_X43_Y44_N2
\P_array[4][45]~60\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[4][45]~60_combout\ = ( \G_array~160_combout\ & ( \P_array[4][37]~41_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_P_array[4][37]~41_combout\,
	dataf => \ALT_INV_G_array~160_combout\,
	combout => \P_array[4][45]~60_combout\);

-- Location: LABCELL_X43_Y46_N10
\G_array[1][45]~161\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][45]~161_combout\ = ( \B[45]~input_o\ & ( ((\B[44]~input_o\ & \A[44]~input_o\)) # (\A[45]~input_o\) ) ) # ( !\B[45]~input_o\ & ( (\A[45]~input_o\ & (\B[44]~input_o\ & \A[44]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000101010101011101110101010101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[45]~input_o\,
	datab => \ALT_INV_B[44]~input_o\,
	datad => \ALT_INV_A[44]~input_o\,
	dataf => \ALT_INV_B[45]~input_o\,
	combout => \G_array[1][45]~161_combout\);

-- Location: LABCELL_X43_Y46_N34
\G_array~162\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~162_combout\ = ( \G_array[1][43]~153_combout\ & ( \G_array~159_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~159_combout\,
	dataf => \ALT_INV_G_array[1][43]~153_combout\,
	combout => \G_array~162_combout\);

-- Location: LABCELL_X43_Y44_N26
\G_array[3][45]\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[3][45]~combout\ = ( \G_array~146_combout\ & ( (!\P_array[2][45]~59_combout\ & (!\G_array[1][45]~161_combout\ & !\G_array~162_combout\)) ) ) # ( !\G_array~146_combout\ & ( (!\G_array[1][45]~161_combout\ & (!\G_array~162_combout\ & 
-- ((!\P_array[2][45]~59_combout\) # (!\G_array[1][41]~145_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100000000000110010000000000010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[2][45]~59_combout\,
	datab => \ALT_INV_G_array[1][45]~161_combout\,
	datac => \ALT_INV_G_array[1][41]~145_combout\,
	datad => \ALT_INV_G_array~162_combout\,
	dataf => \ALT_INV_G_array~146_combout\,
	combout => \G_array[3][45]~combout\);

-- Location: MLABCELL_X42_Y45_N36
\carry[46]~52\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[46]~52_combout\ = ( \G_array[3][45]~combout\ & ( \G_array[3][37]~combout\ & ( (!\P_array[4][37]~41_combout\) # ((!\G_array~160_combout\) # ((\G_array[3][29]~combout\ & !\G_array~97_combout\))) ) ) ) # ( \G_array[3][45]~combout\ & ( 
-- !\G_array[3][37]~combout\ & ( !\G_array~160_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111101111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[4][37]~41_combout\,
	datab => \ALT_INV_G_array[3][29]~combout\,
	datac => \ALT_INV_G_array~160_combout\,
	datad => \ALT_INV_G_array~97_combout\,
	datae => \ALT_INV_G_array[3][45]~combout\,
	dataf => \ALT_INV_G_array[3][37]~combout\,
	combout => \carry[46]~52_combout\);

-- Location: IOIBUF_X59_Y39_N63
\B[46]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(46),
	o => \B[46]~input_o\);

-- Location: IOIBUF_X59_Y30_N32
\A[46]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(46),
	o => \A[46]~input_o\);

-- Location: MLABCELL_X42_Y46_N2
\S~46\ : arriaii_lcell_comb
-- Equation(s):
-- \S~46_combout\ = ( \B[46]~input_o\ & ( \A[46]~input_o\ & ( (!\carry[46]~52_combout\) # ((\P_array[4][29]~25_combout\ & (\P_array[4][45]~60_combout\ & !carry(14)))) ) ) ) # ( !\B[46]~input_o\ & ( \A[46]~input_o\ & ( (\carry[46]~52_combout\ & 
-- ((!\P_array[4][29]~25_combout\) # ((!\P_array[4][45]~60_combout\) # (carry(14))))) ) ) ) # ( \B[46]~input_o\ & ( !\A[46]~input_o\ & ( (\carry[46]~52_combout\ & ((!\P_array[4][29]~25_combout\) # ((!\P_array[4][45]~60_combout\) # (carry(14))))) ) ) ) # ( 
-- !\B[46]~input_o\ & ( !\A[46]~input_o\ & ( (!\carry[46]~52_combout\) # ((\P_array[4][29]~25_combout\ & (\P_array[4][45]~60_combout\ & !carry(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000111110000000011100000111100001110000011111111000111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[4][29]~25_combout\,
	datab => \ALT_INV_P_array[4][45]~60_combout\,
	datac => \ALT_INV_carry[46]~52_combout\,
	datad => ALT_INV_carry(14),
	datae => \ALT_INV_B[46]~input_o\,
	dataf => \ALT_INV_A[46]~input_o\,
	combout => \S~46_combout\);

-- Location: LABCELL_X43_Y46_N36
\G_array~163\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~163_combout\ = ( \B[45]~input_o\ & ( (!\A[45]~input_o\ & (!\A[46]~input_o\ $ (!\B[46]~input_o\))) ) ) # ( !\B[45]~input_o\ & ( (\A[45]~input_o\ & (!\A[46]~input_o\ $ (!\B[46]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100000101000001010000101000001010000010100000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[45]~input_o\,
	datab => \ALT_INV_A[46]~input_o\,
	datac => \ALT_INV_B[46]~input_o\,
	dataf => \ALT_INV_B[45]~input_o\,
	combout => \G_array~163_combout\);

-- Location: MLABCELL_X44_Y46_N30
\P_array[2][46]~61\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[2][46]~61_combout\ = ( \G_array~163_combout\ & ( \G_array~155_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_G_array~155_combout\,
	dataf => \ALT_INV_G_array~163_combout\,
	combout => \P_array[2][46]~61_combout\);

-- Location: MLABCELL_X44_Y49_N34
\P_array[4][46]~62\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[4][46]~62_combout\ = ( \P_array[2][42]~53_combout\ & ( (\P_array[4][38]~44_combout\ & \P_array[2][46]~61_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_P_array[4][38]~44_combout\,
	datad => \ALT_INV_P_array[2][46]~61_combout\,
	dataf => \ALT_INV_P_array[2][42]~53_combout\,
	combout => \P_array[4][46]~62_combout\);

-- Location: LABCELL_X43_Y46_N26
\G_array~166\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~166_combout\ = (\G_array~163_combout\ & \G_array[1][44]~157_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G_array~163_combout\,
	datac => \ALT_INV_G_array[1][44]~157_combout\,
	combout => \G_array~166_combout\);

-- Location: LABCELL_X43_Y46_N38
\G_array[1][46]~165\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][46]~165_combout\ = ( \B[45]~input_o\ & ( (!\A[45]~input_o\ & (\A[46]~input_o\ & \B[46]~input_o\)) # (\A[45]~input_o\ & ((\B[46]~input_o\) # (\A[46]~input_o\))) ) ) # ( !\B[45]~input_o\ & ( (\A[46]~input_o\ & \B[46]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100010001011101110001000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[45]~input_o\,
	datab => \ALT_INV_A[46]~input_o\,
	datad => \ALT_INV_B[46]~input_o\,
	dataf => \ALT_INV_B[45]~input_o\,
	combout => \G_array[1][46]~165_combout\);

-- Location: MLABCELL_X44_Y49_N20
\G_array[3][46]\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[3][46]~combout\ = ( \G_array~150_combout\ & ( (!\G_array~166_combout\ & (!\G_array[1][46]~165_combout\ & !\P_array[2][46]~61_combout\)) ) ) # ( !\G_array~150_combout\ & ( (!\G_array~166_combout\ & (!\G_array[1][46]~165_combout\ & 
-- ((!\G_array[1][42]~149_combout\) # (!\P_array[2][46]~61_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010000000100010001000000010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~166_combout\,
	datab => \ALT_INV_G_array[1][46]~165_combout\,
	datac => \ALT_INV_G_array[1][42]~149_combout\,
	datad => \ALT_INV_P_array[2][46]~61_combout\,
	dataf => \ALT_INV_G_array~150_combout\,
	combout => \G_array[3][46]~combout\);

-- Location: MLABCELL_X44_Y49_N16
\G_array~164\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~164_combout\ = ( \P_array[2][42]~53_combout\ & ( (!\G_array[3][38]~combout\ & \P_array[2][46]~61_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_G_array[3][38]~combout\,
	datad => \ALT_INV_P_array[2][46]~61_combout\,
	dataf => \ALT_INV_P_array[2][42]~53_combout\,
	combout => \G_array~164_combout\);

-- Location: LABCELL_X45_Y49_N22
\carry[47]~53\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[47]~53_combout\ = ( !\G_array~164_combout\ & ( (\G_array[3][46]~combout\ & ((!\P_array[4][46]~62_combout\) # ((\G_array[3][30]~combout\ & !\G_array~102_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010101000100010001010100010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array[3][46]~combout\,
	datab => \ALT_INV_P_array[4][46]~62_combout\,
	datac => \ALT_INV_G_array[3][30]~combout\,
	datad => \ALT_INV_G_array~102_combout\,
	dataf => \ALT_INV_G_array~164_combout\,
	combout => \carry[47]~53_combout\);

-- Location: IOIBUF_X42_Y56_N32
\A[47]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(47),
	o => \A[47]~input_o\);

-- Location: IOIBUF_X59_Y36_N94
\B[47]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(47),
	o => \B[47]~input_o\);

-- Location: LABCELL_X45_Y49_N34
\S~47\ : arriaii_lcell_comb
-- Equation(s):
-- \S~47_combout\ = ( \B[47]~input_o\ & ( \P_array[4][30]~27_combout\ & ( !\A[47]~input_o\ $ (((!\carry[47]~53_combout\) # ((!carry(15) & \P_array[4][46]~62_combout\)))) ) ) ) # ( !\B[47]~input_o\ & ( \P_array[4][30]~27_combout\ & ( !\A[47]~input_o\ $ 
-- (((\carry[47]~53_combout\ & ((!\P_array[4][46]~62_combout\) # (carry(15)))))) ) ) ) # ( \B[47]~input_o\ & ( !\P_array[4][30]~27_combout\ & ( !\carry[47]~53_combout\ $ (!\A[47]~input_o\) ) ) ) # ( !\B[47]~input_o\ & ( !\P_array[4][30]~27_combout\ & ( 
-- !\carry[47]~53_combout\ $ (\A[47]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111000011111111000011110010000011010000110111110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_carry(15),
	datab => \ALT_INV_P_array[4][46]~62_combout\,
	datac => \ALT_INV_carry[47]~53_combout\,
	datad => \ALT_INV_A[47]~input_o\,
	datae => \ALT_INV_B[47]~input_o\,
	dataf => \ALT_INV_P_array[4][30]~27_combout\,
	combout => \S~47_combout\);

-- Location: MLABCELL_X42_Y46_N24
\G_array~167\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~167_combout\ = ( \B[46]~input_o\ & ( (!\A[46]~input_o\ & (!\B[47]~input_o\ $ (!\A[47]~input_o\))) ) ) # ( !\B[46]~input_o\ & ( (\A[46]~input_o\ & (!\B[47]~input_o\ $ (!\A[47]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100001010000010100000010100000101000010100000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[46]~input_o\,
	datab => \ALT_INV_B[47]~input_o\,
	datac => \ALT_INV_A[47]~input_o\,
	datae => \ALT_INV_B[46]~input_o\,
	combout => \G_array~167_combout\);

-- Location: LABCELL_X43_Y46_N4
\P_array[2][47]~63\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[2][47]~63_combout\ = ( \G_array~167_combout\ & ( \G_array~159_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_G_array~159_combout\,
	dataf => \ALT_INV_G_array~167_combout\,
	combout => \P_array[2][47]~63_combout\);

-- Location: MLABCELL_X39_Y45_N30
\P_array[4][47]~64\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[4][47]~64_combout\ = ( \P_array[4][39]~47_combout\ & ( (\P_array[2][43]~55_combout\ & \P_array[2][47]~63_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[2][43]~55_combout\,
	datab => \ALT_INV_P_array[2][47]~63_combout\,
	dataf => \ALT_INV_P_array[4][39]~47_combout\,
	combout => \P_array[4][47]~64_combout\);

-- Location: MLABCELL_X42_Y46_N32
\G_array~170\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~170_combout\ = ( \G_array[1][45]~161_combout\ & ( \G_array~167_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_G_array~167_combout\,
	dataf => \ALT_INV_G_array[1][45]~161_combout\,
	combout => \G_array~170_combout\);

-- Location: MLABCELL_X42_Y46_N30
\G_array[1][47]~169\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][47]~169_combout\ = ( \B[46]~input_o\ & ( (!\A[47]~input_o\ & (\B[47]~input_o\ & \A[46]~input_o\)) # (\A[47]~input_o\ & ((\A[46]~input_o\) # (\B[47]~input_o\))) ) ) # ( !\B[46]~input_o\ & ( (\A[47]~input_o\ & \B[47]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010101111100000101000001010000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[47]~input_o\,
	datac => \ALT_INV_B[47]~input_o\,
	datad => \ALT_INV_A[46]~input_o\,
	datae => \ALT_INV_B[46]~input_o\,
	combout => \G_array[1][47]~169_combout\);

-- Location: MLABCELL_X42_Y46_N18
\G_array[3][47]\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[3][47]~combout\ = ( \P_array[2][47]~63_combout\ & ( (!\G_array~170_combout\ & (!\G_array[1][47]~169_combout\ & (!\G_array~154_combout\ & !\G_array[1][43]~153_combout\))) ) ) # ( !\P_array[2][47]~63_combout\ & ( (!\G_array~170_combout\ & 
-- !\G_array[1][47]~169_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~170_combout\,
	datab => \ALT_INV_G_array[1][47]~169_combout\,
	datac => \ALT_INV_G_array~154_combout\,
	datad => \ALT_INV_G_array[1][43]~153_combout\,
	dataf => \ALT_INV_P_array[2][47]~63_combout\,
	combout => \G_array[3][47]~combout\);

-- Location: MLABCELL_X39_Y45_N28
\G_array~168\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~168_combout\ = ( !\G_array[3][39]~combout\ & ( (\P_array[2][43]~55_combout\ & \P_array[2][47]~63_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[2][43]~55_combout\,
	datab => \ALT_INV_P_array[2][47]~63_combout\,
	dataf => \ALT_INV_G_array[3][39]~combout\,
	combout => \G_array~168_combout\);

-- Location: MLABCELL_X39_Y45_N32
\carry[48]~54\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[48]~54_combout\ = ( !\G_array~168_combout\ & ( (\G_array[3][47]~combout\ & ((!\P_array[4][47]~64_combout\) # ((!\G_array~106_combout\ & \G_array[3][31]~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001110000010100000111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[4][47]~64_combout\,
	datab => \ALT_INV_G_array~106_combout\,
	datac => \ALT_INV_G_array[3][47]~combout\,
	datad => \ALT_INV_G_array[3][31]~combout\,
	dataf => \ALT_INV_G_array~168_combout\,
	combout => \carry[48]~54_combout\);

-- Location: IOIBUF_X59_Y7_N63
\A[48]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(48),
	o => \A[48]~input_o\);

-- Location: IOIBUF_X59_Y21_N1
\B[48]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(48),
	o => \B[48]~input_o\);

-- Location: LABCELL_X43_Y47_N20
\S~48\ : arriaii_lcell_comb
-- Equation(s):
-- \S~48_combout\ = ( \P_array[4][31]~29_combout\ & ( \B[48]~input_o\ & ( !\A[48]~input_o\ $ (((!\carry[48]~54_combout\) # ((!carry(16) & \P_array[4][47]~64_combout\)))) ) ) ) # ( !\P_array[4][31]~29_combout\ & ( \B[48]~input_o\ & ( !\carry[48]~54_combout\ $ 
-- (!\A[48]~input_o\) ) ) ) # ( \P_array[4][31]~29_combout\ & ( !\B[48]~input_o\ & ( !\A[48]~input_o\ $ (((\carry[48]~54_combout\ & ((!\P_array[4][47]~64_combout\) # (carry(16)))))) ) ) ) # ( !\P_array[4][31]~29_combout\ & ( !\B[48]~input_o\ & ( 
-- !\carry[48]~54_combout\ $ (\A[48]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000110011110011100011000100110011110011000011000111001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_carry(16),
	datab => \ALT_INV_carry[48]~54_combout\,
	datac => \ALT_INV_P_array[4][47]~64_combout\,
	datad => \ALT_INV_A[48]~input_o\,
	datae => \ALT_INV_P_array[4][31]~29_combout\,
	dataf => \ALT_INV_B[48]~input_o\,
	combout => \S~48_combout\);

-- Location: IOIBUF_X59_Y49_N94
\B[49]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(49),
	o => \B[49]~input_o\);

-- Location: LABCELL_X43_Y47_N24
\G_array~171\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~171_combout\ = ( \B[47]~input_o\ & ( (!\A[47]~input_o\ & (!\B[48]~input_o\ $ (!\A[48]~input_o\))) ) ) # ( !\B[47]~input_o\ & ( (\A[47]~input_o\ & (!\B[48]~input_o\ $ (!\A[48]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011001100000011000000110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[48]~input_o\,
	datab => \ALT_INV_A[48]~input_o\,
	datac => \ALT_INV_A[47]~input_o\,
	dataf => \ALT_INV_B[47]~input_o\,
	combout => \G_array~171_combout\);

-- Location: LABCELL_X43_Y47_N30
\P_array[2][48]~65\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[2][48]~65_combout\ = (\G_array~163_combout\ & \G_array~171_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_G_array~163_combout\,
	datad => \ALT_INV_G_array~171_combout\,
	combout => \P_array[2][48]~65_combout\);

-- Location: MLABCELL_X44_Y48_N28
\carry[49]~55\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[49]~55_combout\ = ( \P_array[2][48]~65_combout\ & ( \G_array~156_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G_array~156_combout\,
	dataf => \ALT_INV_P_array[2][48]~65_combout\,
	combout => \carry[49]~55_combout\);

-- Location: LABCELL_X43_Y47_N12
\G_array[1][48]~172\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][48]~172_combout\ = ( \B[47]~input_o\ & ( (!\A[47]~input_o\ & (\A[48]~input_o\ & \B[48]~input_o\)) # (\A[47]~input_o\ & ((\B[48]~input_o\) # (\A[48]~input_o\))) ) ) # ( !\B[47]~input_o\ & ( (\A[48]~input_o\ & \B[48]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[47]~input_o\,
	datab => \ALT_INV_A[48]~input_o\,
	datac => \ALT_INV_B[48]~input_o\,
	dataf => \ALT_INV_B[47]~input_o\,
	combout => \G_array[1][48]~172_combout\);

-- Location: LABCELL_X43_Y47_N14
\G_array~173\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~173_combout\ = ( \G_array[1][46]~165_combout\ & ( \G_array~171_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_G_array~171_combout\,
	dataf => \ALT_INV_G_array[1][46]~165_combout\,
	combout => \G_array~173_combout\);

-- Location: MLABCELL_X44_Y47_N20
\G_array[3][48]\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[3][48]~combout\ = ( !\G_array~173_combout\ & ( (!\G_array[1][48]~172_combout\ & ((!\P_array[2][48]~65_combout\) # ((!\G_array~158_combout\ & !\G_array[1][44]~157_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100010001000101010001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array[1][48]~172_combout\,
	datab => \ALT_INV_P_array[2][48]~65_combout\,
	datac => \ALT_INV_G_array~158_combout\,
	datad => \ALT_INV_G_array[1][44]~157_combout\,
	dataf => \ALT_INV_G_array~173_combout\,
	combout => \G_array[3][48]~combout\);

-- Location: LABCELL_X43_Y48_N30
\carry[49]~58\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[49]~58_combout\ = ( \G_array~140_combout\ & ( (!\carry[49]~55_combout\ & \G_array[3][48]~combout\) ) ) # ( !\G_array~140_combout\ & ( (\G_array[3][48]~combout\ & ((!\P_array[2][36]~38_combout\) # ((!\carry[49]~55_combout\) # 
-- (!\G_array~110_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001110000011110000111000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[2][36]~38_combout\,
	datab => \ALT_INV_carry[49]~55_combout\,
	datac => \ALT_INV_G_array[3][48]~combout\,
	datad => \ALT_INV_G_array~110_combout\,
	dataf => \ALT_INV_G_array~140_combout\,
	combout => \carry[49]~58_combout\);

-- Location: LABCELL_X43_Y48_N28
\carry[49]~56\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[49]~56_combout\ = (\P_array[2][36]~38_combout\ & (\carry[49]~55_combout\ & (\P_array[4][32]~31_combout\ & !\carry[17]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[2][36]~38_combout\,
	datab => \ALT_INV_carry[49]~55_combout\,
	datac => \ALT_INV_P_array[4][32]~31_combout\,
	datad => \ALT_INV_carry[17]~17_combout\,
	combout => \carry[49]~56_combout\);

-- Location: LABCELL_X43_Y48_N32
\carry[49]~57\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[49]~57_combout\ = ( \P_array[2][44]~57_combout\ & ( (!\G_array[3][40]~combout\ & \P_array[2][48]~65_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_G_array[3][40]~combout\,
	datad => \ALT_INV_P_array[2][48]~65_combout\,
	dataf => \ALT_INV_P_array[2][44]~57_combout\,
	combout => \carry[49]~57_combout\);

-- Location: IOIBUF_X59_Y51_N63
\A[49]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(49),
	o => \A[49]~input_o\);

-- Location: LABCELL_X43_Y48_N34
\S~49\ : arriaii_lcell_comb
-- Equation(s):
-- \S~49_combout\ = ( \A[49]~input_o\ & ( !\B[49]~input_o\ $ (((!\carry[49]~58_combout\) # ((\carry[49]~57_combout\) # (\carry[49]~56_combout\)))) ) ) # ( !\A[49]~input_o\ & ( !\B[49]~input_o\ $ (((\carry[49]~58_combout\ & (!\carry[49]~56_combout\ & 
-- !\carry[49]~57_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001101010101010100110101010101001100101010101010110010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[49]~input_o\,
	datab => \ALT_INV_carry[49]~58_combout\,
	datac => \ALT_INV_carry[49]~56_combout\,
	datad => \ALT_INV_carry[49]~57_combout\,
	dataf => \ALT_INV_A[49]~input_o\,
	combout => \S~49_combout\);

-- Location: LABCELL_X43_Y47_N26
\G_array~174\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~174_combout\ = ( \A[49]~input_o\ & ( (!\B[49]~input_o\ & (!\B[48]~input_o\ $ (!\A[48]~input_o\))) ) ) # ( !\A[49]~input_o\ & ( (\B[49]~input_o\ & (!\B[48]~input_o\ $ (!\A[48]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000000110011001100110000000000110011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[48]~input_o\,
	datab => \ALT_INV_A[48]~input_o\,
	datad => \ALT_INV_B[49]~input_o\,
	dataf => \ALT_INV_A[49]~input_o\,
	combout => \G_array~174_combout\);

-- Location: MLABCELL_X42_Y46_N20
\P_array[2][49]~66\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[2][49]~66_combout\ = ( \G_array~174_combout\ & ( \G_array~167_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_G_array~167_combout\,
	datae => \ALT_INV_G_array~174_combout\,
	combout => \P_array[2][49]~66_combout\);

-- Location: LABCELL_X43_Y44_N24
\carry[50]~59\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[50]~59_combout\ = ( \G_array~160_combout\ & ( \P_array[2][49]~66_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_P_array[2][49]~66_combout\,
	dataf => \ALT_INV_G_array~160_combout\,
	combout => \carry[50]~59_combout\);

-- Location: MLABCELL_X42_Y46_N6
\G_array~176\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~176_combout\ = ( \G_array[1][47]~169_combout\ & ( \G_array~174_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_G_array~174_combout\,
	datae => \ALT_INV_G_array[1][47]~169_combout\,
	combout => \G_array~176_combout\);

-- Location: LABCELL_X43_Y47_N28
\G_array[1][49]~175\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][49]~175_combout\ = ( \A[49]~input_o\ & ( ((\A[48]~input_o\ & \B[48]~input_o\)) # (\B[49]~input_o\) ) ) # ( !\A[49]~input_o\ & ( (\B[49]~input_o\ & (\A[48]~input_o\ & \B[48]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000101010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[49]~input_o\,
	datab => \ALT_INV_A[48]~input_o\,
	datac => \ALT_INV_B[48]~input_o\,
	dataf => \ALT_INV_A[49]~input_o\,
	combout => \G_array[1][49]~175_combout\);

-- Location: LABCELL_X43_Y44_N10
\G_array[3][49]\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[3][49]~combout\ = ( !\G_array[1][49]~175_combout\ & ( (!\G_array~176_combout\ & ((!\P_array[2][49]~66_combout\) # ((!\G_array[1][45]~161_combout\ & !\G_array~162_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100010001000110010001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[2][49]~66_combout\,
	datab => \ALT_INV_G_array~176_combout\,
	datac => \ALT_INV_G_array[1][45]~161_combout\,
	datad => \ALT_INV_G_array~162_combout\,
	dataf => \ALT_INV_G_array[1][49]~175_combout\,
	combout => \G_array[3][49]~combout\);

-- Location: LABCELL_X43_Y45_N8
\carry[50]~62\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[50]~62_combout\ = ( \G_array[3][49]~combout\ & ( (!\carry[50]~59_combout\) # ((!\G_array~144_combout\ & ((!\P_array[2][37]~40_combout\) # (!\G_array~114_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111110110011001111111011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[2][37]~40_combout\,
	datab => \ALT_INV_carry[50]~59_combout\,
	datac => \ALT_INV_G_array~114_combout\,
	datad => \ALT_INV_G_array~144_combout\,
	dataf => \ALT_INV_G_array[3][49]~combout\,
	combout => \carry[50]~62_combout\);

-- Location: LABCELL_X43_Y45_N10
\carry[50]~60\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[50]~60_combout\ = ( \G_array~78_combout\ & ( (\P_array[2][37]~40_combout\ & (\carry[50]~59_combout\ & (\P_array[4][33]~33_combout\ & !\carry[18]~18_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[2][37]~40_combout\,
	datab => \ALT_INV_carry[50]~59_combout\,
	datac => \ALT_INV_P_array[4][33]~33_combout\,
	datad => \ALT_INV_carry[18]~18_combout\,
	dataf => \ALT_INV_G_array~78_combout\,
	combout => \carry[50]~60_combout\);

-- Location: IOIBUF_X59_Y23_N63
\A[50]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(50),
	o => \A[50]~input_o\);

-- Location: LABCELL_X43_Y45_N32
\carry[50]~61\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[50]~61_combout\ = ( !\G_array[3][41]~combout\ & ( (\P_array[2][45]~59_combout\ & \P_array[2][49]~66_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_P_array[2][45]~59_combout\,
	datad => \ALT_INV_P_array[2][49]~66_combout\,
	dataf => \ALT_INV_G_array[3][41]~combout\,
	combout => \carry[50]~61_combout\);

-- Location: IOIBUF_X59_Y16_N1
\B[50]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(50),
	o => \B[50]~input_o\);

-- Location: LABCELL_X43_Y45_N34
\S~50\ : arriaii_lcell_comb
-- Equation(s):
-- \S~50_combout\ = ( \B[50]~input_o\ & ( !\A[50]~input_o\ $ (((!\carry[50]~62_combout\) # ((\carry[50]~61_combout\) # (\carry[50]~60_combout\)))) ) ) # ( !\B[50]~input_o\ & ( !\A[50]~input_o\ $ (((\carry[50]~62_combout\ & (!\carry[50]~60_combout\ & 
-- !\carry[50]~61_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011010011110000101101001111000001001011000011110100101100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_carry[50]~62_combout\,
	datab => \ALT_INV_carry[50]~60_combout\,
	datac => \ALT_INV_A[50]~input_o\,
	datad => \ALT_INV_carry[50]~61_combout\,
	dataf => \ALT_INV_B[50]~input_o\,
	combout => \S~50_combout\);

-- Location: LABCELL_X43_Y47_N36
\G_array~177\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~177_combout\ = ( \A[49]~input_o\ & ( (!\B[49]~input_o\ & (!\A[50]~input_o\ $ (!\B[50]~input_o\))) ) ) # ( !\A[49]~input_o\ & ( (\B[49]~input_o\ & (!\A[50]~input_o\ $ (!\B[50]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000111100000000000011110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[50]~input_o\,
	datac => \ALT_INV_B[50]~input_o\,
	datad => \ALT_INV_B[49]~input_o\,
	dataf => \ALT_INV_A[49]~input_o\,
	combout => \G_array~177_combout\);

-- Location: LABCELL_X43_Y47_N0
\P_array[2][50]~67\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[2][50]~67_combout\ = (\G_array~177_combout\ & \G_array~171_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G_array~177_combout\,
	datad => \ALT_INV_G_array~171_combout\,
	combout => \P_array[2][50]~67_combout\);

-- Location: MLABCELL_X44_Y49_N6
\carry[51]~63\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[51]~63_combout\ = ( \P_array[2][38]~43_combout\ & ( (\P_array[2][50]~67_combout\ & (\P_array[2][46]~61_combout\ & \P_array[2][42]~53_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[2][50]~67_combout\,
	datab => \ALT_INV_P_array[2][46]~61_combout\,
	datac => \ALT_INV_P_array[2][42]~53_combout\,
	dataf => \ALT_INV_P_array[2][38]~43_combout\,
	combout => \carry[51]~63_combout\);

-- Location: LABCELL_X43_Y47_N38
\G_array[1][50]~178\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][50]~178_combout\ = ( \A[49]~input_o\ & ( (!\B[50]~input_o\ & (\A[50]~input_o\ & \B[49]~input_o\)) # (\B[50]~input_o\ & ((\B[49]~input_o\) # (\A[50]~input_o\))) ) ) # ( !\A[49]~input_o\ & ( (\B[50]~input_o\ & \A[50]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001011101110001000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[50]~input_o\,
	datab => \ALT_INV_A[50]~input_o\,
	datad => \ALT_INV_B[49]~input_o\,
	dataf => \ALT_INV_A[49]~input_o\,
	combout => \G_array[1][50]~178_combout\);

-- Location: LABCELL_X43_Y47_N2
\G_array~179\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~179_combout\ = (\G_array~177_combout\ & \G_array[1][48]~172_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G_array~177_combout\,
	datad => \ALT_INV_G_array[1][48]~172_combout\,
	combout => \G_array~179_combout\);

-- Location: MLABCELL_X44_Y49_N22
\G_array[3][50]\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[3][50]~combout\ = ( !\G_array~179_combout\ & ( (!\G_array[1][50]~178_combout\ & ((!\P_array[2][50]~67_combout\) # ((!\G_array~166_combout\ & !\G_array[1][46]~165_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010000000111100001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~166_combout\,
	datab => \ALT_INV_G_array[1][46]~165_combout\,
	datac => \ALT_INV_G_array[1][50]~178_combout\,
	datad => \ALT_INV_P_array[2][50]~67_combout\,
	dataf => \ALT_INV_G_array~179_combout\,
	combout => \G_array[3][50]~combout\);

-- Location: MLABCELL_X44_Y49_N4
\carry[51]~64\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[51]~64_combout\ = ( \G_array[3][42]~combout\ & ( \G_array[3][50]~combout\ ) ) # ( !\G_array[3][42]~combout\ & ( (\G_array[3][50]~combout\ & ((!\P_array[2][50]~67_combout\) # (!\P_array[2][46]~61_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101110000000001110111000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[2][50]~67_combout\,
	datab => \ALT_INV_P_array[2][46]~61_combout\,
	datad => \ALT_INV_G_array[3][50]~combout\,
	dataf => \ALT_INV_G_array[3][42]~combout\,
	combout => \carry[51]~64_combout\);

-- Location: LABCELL_X45_Y48_N18
\carry[51]~65\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[51]~65_combout\ = ( \G_array~120_combout\ & ( (!\carry[51]~63_combout\ & \carry[51]~64_combout\) ) ) # ( !\G_array~120_combout\ & ( (\carry[51]~64_combout\ & ((!\carry[51]~63_combout\) # (\G_array[3][34]~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001111000010100000111100001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_carry[51]~63_combout\,
	datac => \ALT_INV_carry[51]~64_combout\,
	datad => \ALT_INV_G_array[3][34]~combout\,
	dataf => \ALT_INV_G_array~120_combout\,
	combout => \carry[51]~65_combout\);

-- Location: IOIBUF_X59_Y46_N1
\B[51]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(51),
	o => \B[51]~input_o\);

-- Location: IOIBUF_X53_Y56_N1
\A[51]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(51),
	o => \A[51]~input_o\);

-- Location: LABCELL_X45_Y48_N26
\S~51\ : arriaii_lcell_comb
-- Equation(s):
-- \S~51_combout\ = ( \carry[51]~63_combout\ & ( \A[51]~input_o\ & ( !\B[51]~input_o\ $ (((!\carry[51]~65_combout\) # ((\P_array[4][34]~35_combout\ & !\carry[19]~20_combout\)))) ) ) ) # ( !\carry[51]~63_combout\ & ( \A[51]~input_o\ & ( 
-- !\carry[51]~65_combout\ $ (!\B[51]~input_o\) ) ) ) # ( \carry[51]~63_combout\ & ( !\A[51]~input_o\ & ( !\B[51]~input_o\ $ (((\carry[51]~65_combout\ & ((!\P_array[4][34]~35_combout\) # (\carry[19]~20_combout\))))) ) ) ) # ( !\carry[51]~63_combout\ & ( 
-- !\A[51]~input_o\ & ( !\carry[51]~65_combout\ $ (\B[51]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100111001001100101100110011001100110001101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_carry[51]~65_combout\,
	datab => \ALT_INV_B[51]~input_o\,
	datac => \ALT_INV_P_array[4][34]~35_combout\,
	datad => \ALT_INV_carry[19]~20_combout\,
	datae => \ALT_INV_carry[51]~63_combout\,
	dataf => \ALT_INV_A[51]~input_o\,
	combout => \S~51_combout\);

-- Location: IOIBUF_X59_Y31_N1
\B[52]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(52),
	o => \B[52]~input_o\);

-- Location: LABCELL_X43_Y47_N4
\G_array~180\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~180_combout\ = ( \A[51]~input_o\ & ( (!\B[51]~input_o\ & (!\A[50]~input_o\ $ (!\B[50]~input_o\))) ) ) # ( !\A[51]~input_o\ & ( (\B[51]~input_o\ & (!\A[50]~input_o\ $ (!\B[50]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001001001000010010000100100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[50]~input_o\,
	datab => \ALT_INV_B[51]~input_o\,
	datac => \ALT_INV_B[50]~input_o\,
	dataf => \ALT_INV_A[51]~input_o\,
	combout => \G_array~180_combout\);

-- Location: MLABCELL_X42_Y46_N10
\P_array[2][51]~68\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[2][51]~68_combout\ = ( \G_array~174_combout\ & ( \G_array~180_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_G_array~180_combout\,
	datae => \ALT_INV_G_array~174_combout\,
	combout => \P_array[2][51]~68_combout\);

-- Location: MLABCELL_X39_Y45_N18
\carry[52]~66\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[52]~66_combout\ = ( \P_array[2][39]~46_combout\ & ( (\P_array[2][43]~55_combout\ & (\P_array[2][47]~63_combout\ & \P_array[2][51]~68_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[2][43]~55_combout\,
	datab => \ALT_INV_P_array[2][47]~63_combout\,
	datad => \ALT_INV_P_array[2][51]~68_combout\,
	dataf => \ALT_INV_P_array[2][39]~46_combout\,
	combout => \carry[52]~66_combout\);

-- Location: LABCELL_X43_Y43_N22
\G_array~182\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~182_combout\ = ( \G_array~180_combout\ & ( \G_array[1][49]~175_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_G_array~180_combout\,
	dataf => \ALT_INV_G_array[1][49]~175_combout\,
	combout => \G_array~182_combout\);

-- Location: LABCELL_X43_Y47_N6
\G_array[1][51]~181\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][51]~181_combout\ = ( \A[51]~input_o\ & ( ((\A[50]~input_o\ & \B[50]~input_o\)) # (\B[51]~input_o\) ) ) # ( !\A[51]~input_o\ & ( (\A[50]~input_o\ & (\B[51]~input_o\ & \B[50]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100110111001101110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[50]~input_o\,
	datab => \ALT_INV_B[51]~input_o\,
	datac => \ALT_INV_B[50]~input_o\,
	dataf => \ALT_INV_A[51]~input_o\,
	combout => \G_array[1][51]~181_combout\);

-- Location: MLABCELL_X42_Y46_N16
\G_array[3][51]\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[3][51]~combout\ = ( !\G_array[1][51]~181_combout\ & ( (!\G_array~182_combout\ & ((!\P_array[2][51]~68_combout\) # ((!\G_array~170_combout\ & !\G_array[1][47]~169_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100000000000111110000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~170_combout\,
	datab => \ALT_INV_G_array[1][47]~169_combout\,
	datac => \ALT_INV_P_array[2][51]~68_combout\,
	datad => \ALT_INV_G_array~182_combout\,
	dataf => \ALT_INV_G_array[1][51]~181_combout\,
	combout => \G_array[3][51]~combout\);

-- Location: LABCELL_X40_Y46_N24
\carry[52]~67\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[52]~67_combout\ = ( \P_array[2][47]~63_combout\ & ( (\G_array[3][51]~combout\ & ((!\P_array[2][51]~68_combout\) # (\G_array[3][43]~combout\))) ) ) # ( !\P_array[2][47]~63_combout\ & ( \G_array[3][51]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001100000011110000110000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_P_array[2][51]~68_combout\,
	datac => \ALT_INV_G_array[3][51]~combout\,
	datad => \ALT_INV_G_array[3][43]~combout\,
	dataf => \ALT_INV_P_array[2][47]~63_combout\,
	combout => \carry[52]~67_combout\);

-- Location: LABCELL_X40_Y46_N26
\carry[52]~68\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[52]~68_combout\ = ( \carry[52]~66_combout\ & ( (!\G_array~122_combout\ & (\G_array[3][35]~combout\ & \carry[52]~67_combout\)) ) ) # ( !\carry[52]~66_combout\ & ( \carry[52]~67_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~122_combout\,
	datac => \ALT_INV_G_array[3][35]~combout\,
	datad => \ALT_INV_carry[52]~67_combout\,
	dataf => \ALT_INV_carry[52]~66_combout\,
	combout => \carry[52]~68_combout\);

-- Location: IOIBUF_X59_Y28_N32
\A[52]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(52),
	o => \A[52]~input_o\);

-- Location: LABCELL_X40_Y46_N8
\S~52\ : arriaii_lcell_comb
-- Equation(s):
-- \S~52_combout\ = ( \A[52]~input_o\ & ( \carry[20]~21_combout\ & ( !\B[52]~input_o\ $ (!\carry[52]~68_combout\) ) ) ) # ( !\A[52]~input_o\ & ( \carry[20]~21_combout\ & ( !\B[52]~input_o\ $ (\carry[52]~68_combout\) ) ) ) # ( \A[52]~input_o\ & ( 
-- !\carry[20]~21_combout\ & ( !\B[52]~input_o\ $ (((!\carry[52]~68_combout\) # ((\carry[52]~66_combout\ & \P_array[4][35]~37_combout\)))) ) ) ) # ( !\A[52]~input_o\ & ( !\carry[20]~21_combout\ & ( !\B[52]~input_o\ $ (((\carry[52]~68_combout\ & 
-- ((!\carry[52]~66_combout\) # (!\P_array[4][35]~37_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001010110010101011010100110101010010101010101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[52]~input_o\,
	datab => \ALT_INV_carry[52]~66_combout\,
	datac => \ALT_INV_P_array[4][35]~37_combout\,
	datad => \ALT_INV_carry[52]~68_combout\,
	datae => \ALT_INV_A[52]~input_o\,
	dataf => \ALT_INV_carry[20]~21_combout\,
	combout => \S~52_combout\);

-- Location: LABCELL_X43_Y47_N8
\G_array~184\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~184_combout\ = ( \A[51]~input_o\ & ( (!\B[51]~input_o\ & (\G_array[1][50]~178_combout\ & (!\B[52]~input_o\ $ (!\A[52]~input_o\)))) ) ) # ( !\A[51]~input_o\ & ( (\B[51]~input_o\ & (\G_array[1][50]~178_combout\ & (!\B[52]~input_o\ $ 
-- (!\A[52]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000010000000010000001000000100000010000000010000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[52]~input_o\,
	datab => \ALT_INV_B[51]~input_o\,
	datac => \ALT_INV_G_array[1][50]~178_combout\,
	datad => \ALT_INV_A[52]~input_o\,
	dataf => \ALT_INV_A[51]~input_o\,
	combout => \G_array~184_combout\);

-- Location: LABCELL_X43_Y47_N34
\G_array[1][52]~183\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][52]~183_combout\ = ( \A[51]~input_o\ & ( (!\A[52]~input_o\ & (\B[51]~input_o\ & \B[52]~input_o\)) # (\A[52]~input_o\ & ((\B[52]~input_o\) # (\B[51]~input_o\))) ) ) # ( !\A[51]~input_o\ & ( (\A[52]~input_o\ & \B[52]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[52]~input_o\,
	datab => \ALT_INV_B[51]~input_o\,
	datac => \ALT_INV_B[52]~input_o\,
	dataf => \ALT_INV_A[51]~input_o\,
	combout => \G_array[1][52]~183_combout\);

-- Location: LABCELL_X43_Y47_N10
\P_array[2][52]~69\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[2][52]~69_combout\ = ( \A[51]~input_o\ & ( (!\B[51]~input_o\ & (\G_array~177_combout\ & (!\B[52]~input_o\ $ (!\A[52]~input_o\)))) ) ) # ( !\A[51]~input_o\ & ( (\B[51]~input_o\ & (\G_array~177_combout\ & (!\B[52]~input_o\ $ (!\A[52]~input_o\)))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000010000000010000001000000100000010000000010000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[52]~input_o\,
	datab => \ALT_INV_B[51]~input_o\,
	datac => \ALT_INV_G_array~177_combout\,
	datad => \ALT_INV_A[52]~input_o\,
	dataf => \ALT_INV_A[51]~input_o\,
	combout => \P_array[2][52]~69_combout\);

-- Location: MLABCELL_X44_Y47_N12
\G_array[3][52]\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[3][52]~combout\ = ( \G_array~173_combout\ & ( (!\G_array~184_combout\ & (!\G_array[1][52]~183_combout\ & !\P_array[2][52]~69_combout\)) ) ) # ( !\G_array~173_combout\ & ( (!\G_array~184_combout\ & (!\G_array[1][52]~183_combout\ & 
-- ((!\G_array[1][48]~172_combout\) # (!\P_array[2][52]~69_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010000000100010001000000010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~184_combout\,
	datab => \ALT_INV_G_array[1][52]~183_combout\,
	datac => \ALT_INV_G_array[1][48]~172_combout\,
	datad => \ALT_INV_P_array[2][52]~69_combout\,
	dataf => \ALT_INV_G_array~173_combout\,
	combout => \G_array[3][52]~combout\);

-- Location: MLABCELL_X44_Y47_N6
\carry[57]~69\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[57]~69_combout\ = ( \P_array[2][52]~69_combout\ & ( (\P_array[2][48]~65_combout\ & \G_array~156_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_P_array[2][48]~65_combout\,
	datad => \ALT_INV_G_array~156_combout\,
	dataf => \ALT_INV_P_array[2][52]~69_combout\,
	combout => \carry[57]~69_combout\);

-- Location: MLABCELL_X42_Y48_N16
\carry[53]~72\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[53]~72_combout\ = ( \G_array[3][28]~combout\ & ( (\G_array[3][52]~combout\ & ((!\carry[57]~69_combout\) # (\G_array[3][36]~combout\))) ) ) # ( !\G_array[3][28]~combout\ & ( (\G_array[3][52]~combout\ & ((!\carry[57]~69_combout\) # 
-- ((!\P_array[4][36]~39_combout\ & \G_array[3][36]~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000010000011110000001000001111000000110000111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[4][36]~39_combout\,
	datab => \ALT_INV_G_array[3][36]~combout\,
	datac => \ALT_INV_G_array[3][52]~combout\,
	datad => \ALT_INV_carry[57]~69_combout\,
	dataf => \ALT_INV_G_array[3][28]~combout\,
	combout => \carry[53]~72_combout\);

-- Location: MLABCELL_X44_Y47_N28
\carry[53]~71\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[53]~71_combout\ = ( !\G_array[3][44]~combout\ & ( (\P_array[2][48]~65_combout\ & \P_array[2][52]~69_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_P_array[2][48]~65_combout\,
	datac => \ALT_INV_P_array[2][52]~69_combout\,
	dataf => \ALT_INV_G_array[3][44]~combout\,
	combout => \carry[53]~71_combout\);

-- Location: IOIBUF_X59_Y15_N1
\B[53]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(53),
	o => \B[53]~input_o\);

-- Location: MLABCELL_X42_Y48_N18
\carry[53]~70\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[53]~70_combout\ = ( \G_array~91_combout\ & ( (\P_array[4][36]~39_combout\ & \carry[57]~69_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[4][36]~39_combout\,
	datad => \ALT_INV_carry[57]~69_combout\,
	dataf => \ALT_INV_G_array~91_combout\,
	combout => \carry[53]~70_combout\);

-- Location: IOIBUF_X59_Y36_N32
\A[53]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(53),
	o => \A[53]~input_o\);

-- Location: MLABCELL_X42_Y44_N14
\S~53\ : arriaii_lcell_comb
-- Equation(s):
-- \S~53_combout\ = ( \A[53]~input_o\ & ( \carry[21]~23_combout\ & ( !\B[53]~input_o\ $ (((!\carry[53]~72_combout\) # (\carry[53]~71_combout\))) ) ) ) # ( !\A[53]~input_o\ & ( \carry[21]~23_combout\ & ( !\B[53]~input_o\ $ (((\carry[53]~72_combout\ & 
-- !\carry[53]~71_combout\))) ) ) ) # ( \A[53]~input_o\ & ( !\carry[21]~23_combout\ & ( !\B[53]~input_o\ $ (((!\carry[53]~72_combout\) # ((\carry[53]~70_combout\) # (\carry[53]~71_combout\)))) ) ) ) # ( !\A[53]~input_o\ & ( !\carry[21]~23_combout\ & ( 
-- !\B[53]~input_o\ $ (((\carry[53]~72_combout\ & (!\carry[53]~71_combout\ & !\carry[53]~70_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011010011110000010010110000111110110100101101000100101101001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_carry[53]~72_combout\,
	datab => \ALT_INV_carry[53]~71_combout\,
	datac => \ALT_INV_B[53]~input_o\,
	datad => \ALT_INV_carry[53]~70_combout\,
	datae => \ALT_INV_A[53]~input_o\,
	dataf => \ALT_INV_carry[21]~23_combout\,
	combout => \S~53_combout\);

-- Location: MLABCELL_X42_Y44_N0
\P_array[2][53]~70\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[2][53]~70_combout\ = ( \B[52]~input_o\ & ( (\G_array~180_combout\ & (!\A[52]~input_o\ & (!\A[53]~input_o\ $ (!\B[53]~input_o\)))) ) ) # ( !\B[52]~input_o\ & ( (\G_array~180_combout\ & (\A[52]~input_o\ & (!\A[53]~input_o\ $ (!\B[53]~input_o\)))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000100000000010000010000010000010000000001000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~180_combout\,
	datab => \ALT_INV_A[53]~input_o\,
	datac => \ALT_INV_A[52]~input_o\,
	datad => \ALT_INV_B[53]~input_o\,
	dataf => \ALT_INV_B[52]~input_o\,
	combout => \P_array[2][53]~70_combout\);

-- Location: LABCELL_X43_Y44_N32
\carry[58]~73\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[58]~73_combout\ = ( \G_array~160_combout\ & ( (\P_array[2][49]~66_combout\ & \P_array[2][53]~70_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[2][49]~66_combout\,
	datac => \ALT_INV_P_array[2][53]~70_combout\,
	dataf => \ALT_INV_G_array~160_combout\,
	combout => \carry[58]~73_combout\);

-- Location: LABCELL_X43_Y44_N34
\carry[54]~74\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[54]~74_combout\ = (\P_array[2][49]~66_combout\ & (!\G_array[3][45]~combout\ & \P_array[2][53]~70_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[2][49]~66_combout\,
	datac => \ALT_INV_G_array[3][45]~combout\,
	datad => \ALT_INV_P_array[2][53]~70_combout\,
	combout => \carry[54]~74_combout\);

-- Location: MLABCELL_X42_Y44_N20
\G_array~186\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~186_combout\ = ( \G_array[1][51]~181_combout\ & ( (!\B[52]~input_o\ & (\A[52]~input_o\ & (!\A[53]~input_o\ $ (!\B[53]~input_o\)))) # (\B[52]~input_o\ & (!\A[52]~input_o\ & (!\A[53]~input_o\ $ (!\B[53]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010010010010000001001001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[52]~input_o\,
	datab => \ALT_INV_A[53]~input_o\,
	datac => \ALT_INV_A[52]~input_o\,
	datad => \ALT_INV_B[53]~input_o\,
	dataf => \ALT_INV_G_array[1][51]~181_combout\,
	combout => \G_array~186_combout\);

-- Location: MLABCELL_X42_Y44_N38
\G_array[1][53]~185\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][53]~185_combout\ = ( \B[52]~input_o\ & ( (!\A[52]~input_o\ & (\B[53]~input_o\ & \A[53]~input_o\)) # (\A[52]~input_o\ & ((\A[53]~input_o\) # (\B[53]~input_o\))) ) ) # ( !\B[52]~input_o\ & ( (\B[53]~input_o\ & \A[53]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[52]~input_o\,
	datac => \ALT_INV_B[53]~input_o\,
	datad => \ALT_INV_A[53]~input_o\,
	dataf => \ALT_INV_B[52]~input_o\,
	combout => \G_array[1][53]~185_combout\);

-- Location: LABCELL_X43_Y44_N36
\G_array[3][53]\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[3][53]~combout\ = ( \G_array[1][49]~175_combout\ & ( (!\G_array~186_combout\ & (!\G_array[1][53]~185_combout\ & !\P_array[2][53]~70_combout\)) ) ) # ( !\G_array[1][49]~175_combout\ & ( (!\G_array~186_combout\ & (!\G_array[1][53]~185_combout\ & 
-- ((!\P_array[2][53]~70_combout\) # (!\G_array~176_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010000000100010001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~186_combout\,
	datab => \ALT_INV_G_array[1][53]~185_combout\,
	datac => \ALT_INV_P_array[2][53]~70_combout\,
	datad => \ALT_INV_G_array~176_combout\,
	dataf => \ALT_INV_G_array[1][49]~175_combout\,
	combout => \G_array[3][53]~combout\);

-- Location: LABCELL_X43_Y44_N0
\carry[54]~75\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[54]~75_combout\ = ( \G_array~131_combout\ & ( (!\carry[58]~73_combout\ & (!\carry[54]~74_combout\ & \G_array[3][53]~combout\)) ) ) # ( !\G_array~131_combout\ & ( (!\carry[54]~74_combout\ & (\G_array[3][53]~combout\ & ((!\carry[58]~73_combout\) # 
-- (\G_array[3][37]~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010110000000000001011000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_carry[58]~73_combout\,
	datab => \ALT_INV_G_array[3][37]~combout\,
	datac => \ALT_INV_carry[54]~74_combout\,
	datad => \ALT_INV_G_array[3][53]~combout\,
	dataf => \ALT_INV_G_array~131_combout\,
	combout => \carry[54]~75_combout\);

-- Location: IOIBUF_X59_Y37_N94
\B[54]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(54),
	o => \B[54]~input_o\);

-- Location: IOIBUF_X59_Y19_N1
\A[54]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(54),
	o => \A[54]~input_o\);

-- Location: MLABCELL_X42_Y44_N6
\S~54\ : arriaii_lcell_comb
-- Equation(s):
-- \S~54_combout\ = ( \P_array[4][37]~42_combout\ & ( \A[54]~input_o\ & ( !\B[54]~input_o\ $ (((!\carry[54]~75_combout\) # ((\carry[58]~73_combout\ & !\carry[22]~25_combout\)))) ) ) ) # ( !\P_array[4][37]~42_combout\ & ( \A[54]~input_o\ & ( 
-- !\carry[54]~75_combout\ $ (!\B[54]~input_o\) ) ) ) # ( \P_array[4][37]~42_combout\ & ( !\A[54]~input_o\ & ( !\B[54]~input_o\ $ (((\carry[54]~75_combout\ & ((!\carry[58]~73_combout\) # (\carry[22]~25_combout\))))) ) ) ) # ( !\P_array[4][37]~42_combout\ & ( 
-- !\A[54]~input_o\ & ( !\carry[54]~75_combout\ $ (\B[54]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011110100101100001100111100001111000010110100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_carry[58]~73_combout\,
	datab => \ALT_INV_carry[54]~75_combout\,
	datac => \ALT_INV_B[54]~input_o\,
	datad => \ALT_INV_carry[22]~25_combout\,
	datae => \ALT_INV_P_array[4][37]~42_combout\,
	dataf => \ALT_INV_A[54]~input_o\,
	combout => \S~54_combout\);

-- Location: MLABCELL_X42_Y44_N26
\G_array~187\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~187_combout\ = ( \B[54]~input_o\ & ( (!\A[54]~input_o\ & (!\B[53]~input_o\ $ (!\A[53]~input_o\))) ) ) # ( !\B[54]~input_o\ & ( (\A[54]~input_o\ & (!\B[53]~input_o\ $ (!\A[53]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000000001010101000000000101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[54]~input_o\,
	datac => \ALT_INV_B[53]~input_o\,
	datad => \ALT_INV_A[53]~input_o\,
	dataf => \ALT_INV_B[54]~input_o\,
	combout => \G_array~187_combout\);

-- Location: LABCELL_X43_Y47_N32
\P_array[2][54]~71\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[2][54]~71_combout\ = ( \A[51]~input_o\ & ( (!\B[51]~input_o\ & (\G_array~187_combout\ & (!\A[52]~input_o\ $ (!\B[52]~input_o\)))) ) ) # ( !\A[51]~input_o\ & ( (\B[51]~input_o\ & (\G_array~187_combout\ & (!\A[52]~input_o\ $ (!\B[52]~input_o\)))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010010000000000001001000000000010010000000000001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[52]~input_o\,
	datab => \ALT_INV_B[51]~input_o\,
	datac => \ALT_INV_B[52]~input_o\,
	datad => \ALT_INV_G_array~187_combout\,
	dataf => \ALT_INV_A[51]~input_o\,
	combout => \P_array[2][54]~71_combout\);

-- Location: MLABCELL_X44_Y49_N28
\carry[55]~76\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[55]~76_combout\ = (\P_array[2][50]~67_combout\ & \P_array[2][54]~71_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_P_array[2][50]~67_combout\,
	datad => \ALT_INV_P_array[2][54]~71_combout\,
	combout => \carry[55]~76_combout\);

-- Location: MLABCELL_X42_Y44_N28
\G_array[1][54]~188\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][54]~188_combout\ = ( \B[53]~input_o\ & ( (!\A[54]~input_o\ & (\B[54]~input_o\ & \A[53]~input_o\)) # (\A[54]~input_o\ & ((\A[53]~input_o\) # (\B[54]~input_o\))) ) ) # ( !\B[53]~input_o\ & ( (\A[54]~input_o\ & \B[54]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001011101110001000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[54]~input_o\,
	datab => \ALT_INV_B[54]~input_o\,
	datad => \ALT_INV_A[53]~input_o\,
	dataf => \ALT_INV_B[53]~input_o\,
	combout => \G_array[1][54]~188_combout\);

-- Location: LABCELL_X43_Y47_N16
\G_array[3][54]\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[3][54]~combout\ = ( \G_array[1][52]~183_combout\ & ( \G_array[1][50]~178_combout\ & ( (!\P_array[2][54]~71_combout\ & (!\G_array~187_combout\ & !\G_array[1][54]~188_combout\)) ) ) ) # ( !\G_array[1][52]~183_combout\ & ( 
-- \G_array[1][50]~178_combout\ & ( (!\P_array[2][54]~71_combout\ & !\G_array[1][54]~188_combout\) ) ) ) # ( \G_array[1][52]~183_combout\ & ( !\G_array[1][50]~178_combout\ & ( (!\G_array~187_combout\ & (!\G_array[1][54]~188_combout\ & 
-- ((!\P_array[2][54]~71_combout\) # (!\G_array~179_combout\)))) ) ) ) # ( !\G_array[1][52]~183_combout\ & ( !\G_array[1][50]~178_combout\ & ( (!\G_array[1][54]~188_combout\ & ((!\P_array[2][54]~71_combout\) # (!\G_array~179_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010100000110000001000000010100000101000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[2][54]~71_combout\,
	datab => \ALT_INV_G_array~187_combout\,
	datac => \ALT_INV_G_array[1][54]~188_combout\,
	datad => \ALT_INV_G_array~179_combout\,
	datae => \ALT_INV_G_array[1][52]~183_combout\,
	dataf => \ALT_INV_G_array[1][50]~178_combout\,
	combout => \G_array[3][54]~combout\);

-- Location: MLABCELL_X44_Y49_N10
\carry[55]~78\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[55]~78_combout\ = ( \G_array[3][54]~combout\ & ( \P_array[2][42]~53_combout\ & ( (!\carry[55]~76_combout\) # ((\G_array[3][46]~combout\ & ((!\P_array[2][46]~61_combout\) # (\G_array[3][38]~combout\)))) ) ) ) # ( \G_array[3][54]~combout\ & ( 
-- !\P_array[2][42]~53_combout\ & ( (!\carry[55]~76_combout\) # (\G_array[3][46]~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111111100000000000000001111000011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array[3][38]~combout\,
	datab => \ALT_INV_P_array[2][46]~61_combout\,
	datac => \ALT_INV_carry[55]~76_combout\,
	datad => \ALT_INV_G_array[3][46]~combout\,
	datae => \ALT_INV_G_array[3][54]~combout\,
	dataf => \ALT_INV_P_array[2][42]~53_combout\,
	combout => \carry[55]~78_combout\);

-- Location: MLABCELL_X44_Y49_N32
\carry[55]~79\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[55]~79_combout\ = ( \carry[55]~78_combout\ & ( (!\carry[51]~63_combout\) # ((!\P_array[2][34]~34_combout\) # ((!\P_array[2][54]~71_combout\) # (\G_array[3][30]~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111011111111111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_carry[51]~63_combout\,
	datab => \ALT_INV_P_array[2][34]~34_combout\,
	datac => \ALT_INV_G_array[3][30]~combout\,
	datad => \ALT_INV_P_array[2][54]~71_combout\,
	dataf => \ALT_INV_carry[55]~78_combout\,
	combout => \carry[55]~79_combout\);

-- Location: IOIBUF_X59_Y46_N94
\B[55]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(55),
	o => \B[55]~input_o\);

-- Location: MLABCELL_X44_Y49_N18
\carry[55]~77\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[55]~77_combout\ = ( \P_array[4][38]~45_combout\ & ( (\P_array[2][42]~53_combout\ & (\carry[55]~76_combout\ & \P_array[2][46]~61_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_P_array[2][42]~53_combout\,
	datac => \ALT_INV_carry[55]~76_combout\,
	datad => \ALT_INV_P_array[2][46]~61_combout\,
	dataf => \ALT_INV_P_array[4][38]~45_combout\,
	combout => \carry[55]~77_combout\);

-- Location: IOIBUF_X25_Y56_N94
\A[55]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(55),
	o => \A[55]~input_o\);

-- Location: MLABCELL_X44_Y49_N26
\S~55\ : arriaii_lcell_comb
-- Equation(s):
-- \S~55_combout\ = ( \A[55]~input_o\ & ( !\B[55]~input_o\ $ (((!\carry[55]~79_combout\) # ((!\carry[23]~27_combout\ & \carry[55]~77_combout\)))) ) ) # ( !\A[55]~input_o\ & ( !\B[55]~input_o\ $ (((\carry[55]~79_combout\ & ((!\carry[55]~77_combout\) # 
-- (\carry[23]~27_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010111100001101001011110000101011010000111100101101000011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_carry[55]~79_combout\,
	datab => \ALT_INV_carry[23]~27_combout\,
	datac => \ALT_INV_B[55]~input_o\,
	datad => \ALT_INV_carry[55]~77_combout\,
	dataf => \ALT_INV_A[55]~input_o\,
	combout => \S~55_combout\);

-- Location: IOIBUF_X59_Y31_N32
\B[56]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(56),
	o => \B[56]~input_o\);

-- Location: MLABCELL_X42_Y44_N30
\G_array~189\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~189_combout\ = ( \B[55]~input_o\ & ( (!\A[55]~input_o\ & (!\A[54]~input_o\ $ (!\B[54]~input_o\))) ) ) # ( !\B[55]~input_o\ & ( (\A[55]~input_o\ & (!\A[54]~input_o\ $ (!\B[54]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011001100000011000000110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[54]~input_o\,
	datab => \ALT_INV_B[54]~input_o\,
	datac => \ALT_INV_A[55]~input_o\,
	dataf => \ALT_INV_B[55]~input_o\,
	combout => \G_array~189_combout\);

-- Location: MLABCELL_X42_Y44_N22
\P_array[2][55]~72\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[2][55]~72_combout\ = ( \A[52]~input_o\ & ( (!\B[52]~input_o\ & (\G_array~189_combout\ & (!\A[53]~input_o\ $ (!\B[53]~input_o\)))) ) ) # ( !\A[52]~input_o\ & ( (\B[52]~input_o\ & (\G_array~189_combout\ & (!\A[53]~input_o\ $ (!\B[53]~input_o\)))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010100000000000001010000000000001010000000000000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[52]~input_o\,
	datab => \ALT_INV_A[53]~input_o\,
	datac => \ALT_INV_B[53]~input_o\,
	datad => \ALT_INV_G_array~189_combout\,
	dataf => \ALT_INV_A[52]~input_o\,
	combout => \P_array[2][55]~72_combout\);

-- Location: MLABCELL_X39_Y45_N34
\carry[56]~80\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[56]~80_combout\ = ( \P_array[2][55]~72_combout\ & ( \P_array[2][51]~68_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_P_array[2][51]~68_combout\,
	dataf => \ALT_INV_P_array[2][55]~72_combout\,
	combout => \carry[56]~80_combout\);

-- Location: MLABCELL_X39_Y45_N16
\carry[56]~81\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[56]~81_combout\ = ( \P_array[4][39]~48_combout\ & ( (\P_array[2][43]~55_combout\ & (\P_array[2][47]~63_combout\ & \carry[56]~80_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[2][43]~55_combout\,
	datab => \ALT_INV_P_array[2][47]~63_combout\,
	datad => \ALT_INV_carry[56]~80_combout\,
	dataf => \ALT_INV_P_array[4][39]~48_combout\,
	combout => \carry[56]~81_combout\);

-- Location: MLABCELL_X42_Y44_N36
\G_array[1][55]~190\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][55]~190_combout\ = ( \A[54]~input_o\ & ( (!\B[54]~input_o\ & (\B[55]~input_o\ & \A[55]~input_o\)) # (\B[54]~input_o\ & ((\A[55]~input_o\) # (\B[55]~input_o\))) ) ) # ( !\A[54]~input_o\ & ( (\B[55]~input_o\ & \A[55]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000011001111110000001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[54]~input_o\,
	datac => \ALT_INV_B[55]~input_o\,
	datad => \ALT_INV_A[55]~input_o\,
	dataf => \ALT_INV_A[54]~input_o\,
	combout => \G_array[1][55]~190_combout\);

-- Location: MLABCELL_X42_Y44_N34
\G_array[3][55]\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[3][55]~combout\ = ( \G_array~182_combout\ & ( \G_array[1][51]~181_combout\ & ( (!\G_array[1][55]~190_combout\ & (!\P_array[2][55]~72_combout\ & ((!\G_array~189_combout\) # (!\G_array[1][53]~185_combout\)))) ) ) ) # ( !\G_array~182_combout\ & ( 
-- \G_array[1][51]~181_combout\ & ( (!\G_array[1][55]~190_combout\ & (!\P_array[2][55]~72_combout\ & ((!\G_array~189_combout\) # (!\G_array[1][53]~185_combout\)))) ) ) ) # ( \G_array~182_combout\ & ( !\G_array[1][51]~181_combout\ & ( 
-- (!\G_array[1][55]~190_combout\ & (!\P_array[2][55]~72_combout\ & ((!\G_array~189_combout\) # (!\G_array[1][53]~185_combout\)))) ) ) ) # ( !\G_array~182_combout\ & ( !\G_array[1][51]~181_combout\ & ( (!\G_array[1][55]~190_combout\ & 
-- ((!\G_array~189_combout\) # (!\G_array[1][53]~185_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010001000101000001000000010100000100000001010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array[1][55]~190_combout\,
	datab => \ALT_INV_G_array~189_combout\,
	datac => \ALT_INV_P_array[2][55]~72_combout\,
	datad => \ALT_INV_G_array[1][53]~185_combout\,
	datae => \ALT_INV_G_array~182_combout\,
	dataf => \ALT_INV_G_array[1][51]~181_combout\,
	combout => \G_array[3][55]~combout\);

-- Location: MLABCELL_X39_Y45_N22
\carry[56]~82\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[56]~82_combout\ = ( \P_array[2][43]~55_combout\ & ( \G_array[3][39]~combout\ & ( (\G_array[3][55]~combout\ & ((!\carry[56]~80_combout\) # (\G_array[3][47]~combout\))) ) ) ) # ( !\P_array[2][43]~55_combout\ & ( \G_array[3][39]~combout\ & ( 
-- (\G_array[3][55]~combout\ & ((!\carry[56]~80_combout\) # (\G_array[3][47]~combout\))) ) ) ) # ( \P_array[2][43]~55_combout\ & ( !\G_array[3][39]~combout\ & ( (\G_array[3][55]~combout\ & ((!\carry[56]~80_combout\) # ((\G_array[3][47]~combout\ & 
-- !\P_array[2][47]~63_combout\)))) ) ) ) # ( !\P_array[2][43]~55_combout\ & ( !\G_array[3][39]~combout\ & ( (\G_array[3][55]~combout\ & ((!\carry[56]~80_combout\) # (\G_array[3][47]~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110101000000001111010000000000111101010000000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array[3][47]~combout\,
	datab => \ALT_INV_P_array[2][47]~63_combout\,
	datac => \ALT_INV_carry[56]~80_combout\,
	datad => \ALT_INV_G_array[3][55]~combout\,
	datae => \ALT_INV_P_array[2][43]~55_combout\,
	dataf => \ALT_INV_G_array[3][39]~combout\,
	combout => \carry[56]~82_combout\);

-- Location: LABCELL_X40_Y45_N18
\carry[56]~83\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[56]~83_combout\ = ( \P_array[2][55]~72_combout\ & ( (\carry[56]~82_combout\ & (((!\carry[52]~66_combout\) # (!\P_array[2][35]~36_combout\)) # (\G_array[3][31]~combout\))) ) ) # ( !\P_array[2][55]~72_combout\ & ( \carry[56]~82_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100010011001100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array[3][31]~combout\,
	datab => \ALT_INV_carry[56]~82_combout\,
	datac => \ALT_INV_carry[52]~66_combout\,
	datad => \ALT_INV_P_array[2][35]~36_combout\,
	dataf => \ALT_INV_P_array[2][55]~72_combout\,
	combout => \carry[56]~83_combout\);

-- Location: IOIBUF_X59_Y39_N94
\A[56]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(56),
	o => \A[56]~input_o\);

-- Location: MLABCELL_X44_Y44_N2
\S~56\ : arriaii_lcell_comb
-- Equation(s):
-- \S~56_combout\ = ( \carry[56]~83_combout\ & ( \A[56]~input_o\ & ( !\B[56]~input_o\ $ (((!carry(24) & \carry[56]~81_combout\))) ) ) ) # ( !\carry[56]~83_combout\ & ( \A[56]~input_o\ & ( \B[56]~input_o\ ) ) ) # ( \carry[56]~83_combout\ & ( !\A[56]~input_o\ 
-- & ( !\B[56]~input_o\ $ (((!\carry[56]~81_combout\) # (carry(24)))) ) ) ) # ( !\carry[56]~83_combout\ & ( !\A[56]~input_o\ & ( !\B[56]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100001110010011100100110011001100111100011011000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_carry(24),
	datab => \ALT_INV_B[56]~input_o\,
	datac => \ALT_INV_carry[56]~81_combout\,
	datae => \ALT_INV_carry[56]~83_combout\,
	dataf => \ALT_INV_A[56]~input_o\,
	combout => \S~56_combout\);

-- Location: MLABCELL_X44_Y47_N38
\P_array[2][56]~73\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[2][56]~73_combout\ = ( \A[55]~input_o\ & ( (!\B[55]~input_o\ & (\G_array~187_combout\ & (!\B[56]~input_o\ $ (!\A[56]~input_o\)))) ) ) # ( !\A[55]~input_o\ & ( (\B[55]~input_o\ & (\G_array~187_combout\ & (!\B[56]~input_o\ $ (!\A[56]~input_o\)))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000010000000010000001000000100000010000000010000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[56]~input_o\,
	datab => \ALT_INV_B[55]~input_o\,
	datac => \ALT_INV_G_array~187_combout\,
	datad => \ALT_INV_A[56]~input_o\,
	dataf => \ALT_INV_A[55]~input_o\,
	combout => \P_array[2][56]~73_combout\);

-- Location: MLABCELL_X44_Y47_N22
\carry[57]~84\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[57]~84_combout\ = ( \P_array[2][56]~73_combout\ & ( (\P_array[2][48]~65_combout\ & (\P_array[2][44]~57_combout\ & \P_array[2][52]~69_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_P_array[2][48]~65_combout\,
	datac => \ALT_INV_P_array[2][44]~57_combout\,
	datad => \ALT_INV_P_array[2][52]~69_combout\,
	dataf => \ALT_INV_P_array[2][56]~73_combout\,
	combout => \carry[57]~84_combout\);

-- Location: IOIBUF_X59_Y12_N63
\A[57]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(57),
	o => \A[57]~input_o\);

-- Location: IOIBUF_X59_Y16_N94
\B[57]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(57),
	o => \B[57]~input_o\);

-- Location: MLABCELL_X44_Y44_N24
\p[57]\ : arriaii_lcell_comb
-- Equation(s):
-- p(57) = ( \B[57]~input_o\ & ( !\A[57]~input_o\ ) ) # ( !\B[57]~input_o\ & ( \A[57]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[57]~input_o\,
	dataf => \ALT_INV_B[57]~input_o\,
	combout => p(57));

-- Location: MLABCELL_X44_Y47_N36
\G_array~192\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~192_combout\ = ( \A[55]~input_o\ & ( (!\B[55]~input_o\ & (\G_array[1][54]~188_combout\ & (!\B[56]~input_o\ $ (!\A[56]~input_o\)))) ) ) # ( !\A[55]~input_o\ & ( (\B[55]~input_o\ & (\G_array[1][54]~188_combout\ & (!\B[56]~input_o\ $ 
-- (!\A[56]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000010000000010000001000000100000010000000010000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[56]~input_o\,
	datab => \ALT_INV_B[55]~input_o\,
	datac => \ALT_INV_G_array[1][54]~188_combout\,
	datad => \ALT_INV_A[56]~input_o\,
	dataf => \ALT_INV_A[55]~input_o\,
	combout => \G_array~192_combout\);

-- Location: MLABCELL_X44_Y47_N0
\G_array[1][56]~191\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][56]~191_combout\ = ( \A[55]~input_o\ & ( (!\A[56]~input_o\ & (\B[56]~input_o\ & \B[55]~input_o\)) # (\A[56]~input_o\ & ((\B[55]~input_o\) # (\B[56]~input_o\))) ) ) # ( !\A[55]~input_o\ & ( (\A[56]~input_o\ & \B[56]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[56]~input_o\,
	datac => \ALT_INV_B[56]~input_o\,
	datad => \ALT_INV_B[55]~input_o\,
	dataf => \ALT_INV_A[55]~input_o\,
	combout => \G_array[1][56]~191_combout\);

-- Location: MLABCELL_X44_Y47_N14
\carry[57]~85\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[57]~85_combout\ = ( !\G_array[1][56]~191_combout\ & ( (!\G_array~192_combout\ & ((!\P_array[2][56]~73_combout\) # ((!\G_array~184_combout\ & !\G_array[1][52]~183_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010000000111100001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~184_combout\,
	datab => \ALT_INV_G_array[1][52]~183_combout\,
	datac => \ALT_INV_G_array~192_combout\,
	datad => \ALT_INV_P_array[2][56]~73_combout\,
	dataf => \ALT_INV_G_array[1][56]~191_combout\,
	combout => \carry[57]~85_combout\);

-- Location: MLABCELL_X44_Y47_N26
\carry[57]~86\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[57]~86_combout\ = ( \G_array[3][48]~combout\ & ( \P_array[2][52]~69_combout\ & ( (\carry[57]~85_combout\ & ((!\P_array[2][56]~73_combout\) # ((!\carry[57]~69_combout\) # (!\G_array~140_combout\)))) ) ) ) # ( !\G_array[3][48]~combout\ & ( 
-- \P_array[2][52]~69_combout\ & ( (!\P_array[2][56]~73_combout\ & \carry[57]~85_combout\) ) ) ) # ( \G_array[3][48]~combout\ & ( !\P_array[2][52]~69_combout\ & ( (\carry[57]~85_combout\ & ((!\P_array[2][56]~73_combout\) # ((!\carry[57]~69_combout\) # 
-- (!\G_array~140_combout\)))) ) ) ) # ( !\G_array[3][48]~combout\ & ( !\P_array[2][52]~69_combout\ & ( (\carry[57]~85_combout\ & ((!\P_array[2][56]~73_combout\) # ((!\carry[57]~69_combout\) # (!\G_array~140_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001110000011110000111000001010000010100000111100001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[2][56]~73_combout\,
	datab => \ALT_INV_carry[57]~69_combout\,
	datac => \ALT_INV_carry[57]~85_combout\,
	datad => \ALT_INV_G_array~140_combout\,
	datae => \ALT_INV_G_array[3][48]~combout\,
	dataf => \ALT_INV_P_array[2][52]~69_combout\,
	combout => \carry[57]~86_combout\);

-- Location: LABCELL_X43_Y48_N38
\S~57\ : arriaii_lcell_comb
-- Equation(s):
-- \S~57_combout\ = ( \P_array[4][40]~50_combout\ & ( \G_array[3][40]~combout\ & ( !p(57) $ (((\carry[57]~86_combout\ & ((!\carry[57]~84_combout\) # (\carry[25]~30_combout\))))) ) ) ) # ( !\P_array[4][40]~50_combout\ & ( \G_array[3][40]~combout\ & ( !p(57) $ 
-- (\carry[57]~86_combout\) ) ) ) # ( \P_array[4][40]~50_combout\ & ( !\G_array[3][40]~combout\ & ( !p(57) $ (((!\carry[57]~84_combout\ & \carry[57]~86_combout\))) ) ) ) # ( !\P_array[4][40]~50_combout\ & ( !\G_array[3][40]~combout\ & ( !p(57) $ 
-- (((!\carry[57]~84_combout\ & \carry[57]~86_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000111100111100000011110011110000000011111111000000101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_carry[25]~30_combout\,
	datab => \ALT_INV_carry[57]~84_combout\,
	datac => ALT_INV_p(57),
	datad => \ALT_INV_carry[57]~86_combout\,
	datae => \ALT_INV_P_array[4][40]~50_combout\,
	dataf => \ALT_INV_G_array[3][40]~combout\,
	combout => \S~57_combout\);

-- Location: MLABCELL_X44_Y44_N8
\P_array[2][57]~74\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[2][57]~74_combout\ = ( !\B[56]~input_o\ & ( \A[56]~input_o\ & ( (p(57) & \G_array~189_combout\) ) ) ) # ( \B[56]~input_o\ & ( !\A[56]~input_o\ & ( (p(57) & \G_array~189_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000101000001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_p(57),
	datac => \ALT_INV_G_array~189_combout\,
	datae => \ALT_INV_B[56]~input_o\,
	dataf => \ALT_INV_A[56]~input_o\,
	combout => \P_array[2][57]~74_combout\);

-- Location: MLABCELL_X44_Y44_N38
\G_array~194\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~194_combout\ = ( \A[56]~input_o\ & ( (p(57) & (!\B[56]~input_o\ & \G_array[1][55]~190_combout\)) ) ) # ( !\A[56]~input_o\ & ( (p(57) & (\B[56]~input_o\ & \G_array[1][55]~190_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_p(57),
	datab => \ALT_INV_B[56]~input_o\,
	datac => \ALT_INV_G_array[1][55]~190_combout\,
	dataf => \ALT_INV_A[56]~input_o\,
	combout => \G_array~194_combout\);

-- Location: MLABCELL_X44_Y44_N14
\G_array[1][57]~193\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][57]~193_combout\ = ( \A[56]~input_o\ & ( (!\B[57]~input_o\ & (\A[57]~input_o\ & \B[56]~input_o\)) # (\B[57]~input_o\ & ((\B[56]~input_o\) # (\A[57]~input_o\))) ) ) # ( !\A[56]~input_o\ & ( (\B[57]~input_o\ & \A[57]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[57]~input_o\,
	datab => \ALT_INV_A[57]~input_o\,
	datac => \ALT_INV_B[56]~input_o\,
	dataf => \ALT_INV_A[56]~input_o\,
	combout => \G_array[1][57]~193_combout\);

-- Location: LABCELL_X43_Y44_N38
\carry[58]~88\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[58]~88_combout\ = ( !\G_array[1][57]~193_combout\ & ( (!\G_array~194_combout\ & ((!\P_array[2][57]~74_combout\) # ((!\G_array~186_combout\ & !\G_array[1][53]~185_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100000000000111110000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~186_combout\,
	datab => \ALT_INV_G_array[1][53]~185_combout\,
	datac => \ALT_INV_P_array[2][57]~74_combout\,
	datad => \ALT_INV_G_array~194_combout\,
	dataf => \ALT_INV_G_array[1][57]~193_combout\,
	combout => \carry[58]~88_combout\);

-- Location: LABCELL_X43_Y44_N20
\carry[58]~89\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[58]~89_combout\ = ( \G_array~144_combout\ & ( \carry[58]~73_combout\ & ( (\carry[58]~88_combout\ & !\P_array[2][57]~74_combout\) ) ) ) # ( !\G_array~144_combout\ & ( \carry[58]~73_combout\ & ( (\carry[58]~88_combout\ & 
-- (((!\P_array[2][53]~70_combout\) # (!\P_array[2][57]~74_combout\)) # (\G_array[3][49]~combout\))) ) ) ) # ( \G_array~144_combout\ & ( !\carry[58]~73_combout\ & ( (\carry[58]~88_combout\ & (((!\P_array[2][53]~70_combout\) # (!\P_array[2][57]~74_combout\)) 
-- # (\G_array[3][49]~combout\))) ) ) ) # ( !\G_array~144_combout\ & ( !\carry[58]~73_combout\ & ( (\carry[58]~88_combout\ & (((!\P_array[2][53]~70_combout\) # (!\P_array[2][57]~74_combout\)) # (\G_array[3][49]~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010001010101010101000101010101010100010101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_carry[58]~88_combout\,
	datab => \ALT_INV_G_array[3][49]~combout\,
	datac => \ALT_INV_P_array[2][53]~70_combout\,
	datad => \ALT_INV_P_array[2][57]~74_combout\,
	datae => \ALT_INV_G_array~144_combout\,
	dataf => \ALT_INV_carry[58]~73_combout\,
	combout => \carry[58]~89_combout\);

-- Location: LABCELL_X43_Y44_N8
\carry[58]~87\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[58]~87_combout\ = ( \P_array[2][57]~74_combout\ & ( (\P_array[2][49]~66_combout\ & (\P_array[2][45]~59_combout\ & \P_array[2][53]~70_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[2][49]~66_combout\,
	datac => \ALT_INV_P_array[2][45]~59_combout\,
	datad => \ALT_INV_P_array[2][53]~70_combout\,
	dataf => \ALT_INV_P_array[2][57]~74_combout\,
	combout => \carry[58]~87_combout\);

-- Location: IOIBUF_X59_Y37_N32
\B[58]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(58),
	o => \B[58]~input_o\);

-- Location: IOIBUF_X59_Y19_N32
\A[58]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(58),
	o => \A[58]~input_o\);

-- Location: MLABCELL_X44_Y44_N26
\p[58]\ : arriaii_lcell_comb
-- Equation(s):
-- p(58) = !\B[58]~input_o\ $ (!\A[58]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[58]~input_o\,
	datac => \ALT_INV_A[58]~input_o\,
	combout => p(58));

-- Location: LABCELL_X43_Y45_N38
\S~58\ : arriaii_lcell_comb
-- Equation(s):
-- \S~58_combout\ = ( p(58) & ( \P_array[4][41]~52_combout\ & ( (\carry[58]~89_combout\ & ((!\carry[58]~87_combout\) # ((\G_array[3][41]~combout\ & \carry[26]~32_combout\)))) ) ) ) # ( !p(58) & ( \P_array[4][41]~52_combout\ & ( (!\carry[58]~89_combout\) # 
-- ((\carry[58]~87_combout\ & ((!\G_array[3][41]~combout\) # (!\carry[26]~32_combout\)))) ) ) ) # ( p(58) & ( !\P_array[4][41]~52_combout\ & ( (\carry[58]~89_combout\ & ((!\carry[58]~87_combout\) # (\G_array[3][41]~combout\))) ) ) ) # ( !p(58) & ( 
-- !\P_array[4][41]~52_combout\ & ( (!\carry[58]~89_combout\) # ((\carry[58]~87_combout\ & !\G_array[3][41]~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101010111010010001010100010110111011101110100100010001000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_carry[58]~89_combout\,
	datab => \ALT_INV_carry[58]~87_combout\,
	datac => \ALT_INV_G_array[3][41]~combout\,
	datad => \ALT_INV_carry[26]~32_combout\,
	datae => ALT_INV_p(58),
	dataf => \ALT_INV_P_array[4][41]~52_combout\,
	combout => \S~58_combout\);

-- Location: MLABCELL_X44_Y44_N12
\P_array[1][58]\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[1][58]~combout\ = (!\B[57]~input_o\ & (\A[57]~input_o\ & (!\B[58]~input_o\ $ (!\A[58]~input_o\)))) # (\B[57]~input_o\ & (!\A[57]~input_o\ & (!\B[58]~input_o\ $ (!\A[58]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001100000000001100110000000000110011000000000011001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[57]~input_o\,
	datab => \ALT_INV_A[57]~input_o\,
	datac => \ALT_INV_B[58]~input_o\,
	datad => \ALT_INV_A[58]~input_o\,
	combout => \P_array[1][58]~combout\);

-- Location: MLABCELL_X44_Y47_N2
\P_array[2][58]~75\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[2][58]~75_combout\ = ( \B[56]~input_o\ & ( (!\A[56]~input_o\ & (\P_array[1][58]~combout\ & (!\A[55]~input_o\ $ (!\B[55]~input_o\)))) ) ) # ( !\B[56]~input_o\ & ( (\A[56]~input_o\ & (\P_array[1][58]~combout\ & (!\A[55]~input_o\ $ 
-- (!\B[55]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010100000000000001010000000000001010000000000000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[56]~input_o\,
	datab => \ALT_INV_A[55]~input_o\,
	datac => \ALT_INV_B[55]~input_o\,
	datad => \ALT_INV_P_array[1][58]~combout\,
	dataf => \ALT_INV_B[56]~input_o\,
	combout => \P_array[2][58]~75_combout\);

-- Location: LABCELL_X45_Y48_N8
\carry[59]~90\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[59]~90_combout\ = ( \carry[55]~76_combout\ & ( (\P_array[2][58]~75_combout\ & \P_array[2][46]~61_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[2][58]~75_combout\,
	datac => \ALT_INV_P_array[2][46]~61_combout\,
	dataf => \ALT_INV_carry[55]~76_combout\,
	combout => \carry[59]~90_combout\);

-- Location: MLABCELL_X44_Y44_N4
\G_array[1][58]~195\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][58]~195_combout\ = ( \B[57]~input_o\ & ( (!\B[58]~input_o\ & (\A[58]~input_o\ & \A[57]~input_o\)) # (\B[58]~input_o\ & ((\A[57]~input_o\) # (\A[58]~input_o\))) ) ) # ( !\B[57]~input_o\ & ( (\B[58]~input_o\ & \A[58]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001011101110001000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[58]~input_o\,
	datab => \ALT_INV_A[58]~input_o\,
	datad => \ALT_INV_A[57]~input_o\,
	dataf => \ALT_INV_B[57]~input_o\,
	combout => \G_array[1][58]~195_combout\);

-- Location: MLABCELL_X44_Y47_N10
\carry[59]~91\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[59]~91_combout\ = ( \G_array[1][56]~191_combout\ & ( (!\G_array[1][58]~195_combout\ & !\P_array[1][58]~combout\) ) ) # ( !\G_array[1][56]~191_combout\ & ( !\G_array[1][58]~195_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G_array[1][58]~195_combout\,
	datad => \ALT_INV_P_array[1][58]~combout\,
	dataf => \ALT_INV_G_array[1][56]~191_combout\,
	combout => \carry[59]~91_combout\);

-- Location: MLABCELL_X44_Y47_N32
\carry[59]~92\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[59]~92_combout\ = ( \carry[59]~91_combout\ & ( (!\P_array[2][58]~75_combout\) # ((!\G_array[1][54]~188_combout\ & ((!\G_array~187_combout\) # (!\G_array[1][52]~183_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111010111010101111101011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[2][58]~75_combout\,
	datab => \ALT_INV_G_array~187_combout\,
	datac => \ALT_INV_G_array[1][54]~188_combout\,
	datad => \ALT_INV_G_array[1][52]~183_combout\,
	dataf => \ALT_INV_carry[59]~91_combout\,
	combout => \carry[59]~92_combout\);

-- Location: LABCELL_X45_Y48_N14
\carry[59]~93\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[59]~93_combout\ = ( \G_array[3][34]~combout\ & ( \P_array[2][54]~71_combout\ & ( (\carry[59]~92_combout\ & ((!\P_array[2][58]~75_combout\) # (\G_array[3][50]~combout\))) ) ) ) # ( !\G_array[3][34]~combout\ & ( \P_array[2][54]~71_combout\ & ( 
-- (\carry[59]~92_combout\ & ((!\P_array[2][58]~75_combout\) # ((!\carry[51]~63_combout\ & \G_array[3][50]~combout\)))) ) ) ) # ( \G_array[3][34]~combout\ & ( !\P_array[2][54]~71_combout\ & ( \carry[59]~92_combout\ ) ) ) # ( !\G_array[3][34]~combout\ & ( 
-- !\P_array[2][54]~71_combout\ & ( \carry[59]~92_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000000100000111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_carry[51]~63_combout\,
	datab => \ALT_INV_G_array[3][50]~combout\,
	datac => \ALT_INV_carry[59]~92_combout\,
	datad => \ALT_INV_P_array[2][58]~75_combout\,
	datae => \ALT_INV_G_array[3][34]~combout\,
	dataf => \ALT_INV_P_array[2][54]~71_combout\,
	combout => \carry[59]~93_combout\);

-- Location: IOIBUF_X59_Y16_N32
\B[59]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(59),
	o => \B[59]~input_o\);

-- Location: IOIBUF_X59_Y21_N32
\A[59]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(59),
	o => \A[59]~input_o\);

-- Location: MLABCELL_X44_Y44_N22
\p[59]\ : arriaii_lcell_comb
-- Equation(s):
-- p(59) = !\B[59]~input_o\ $ (!\A[59]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[59]~input_o\,
	datab => \ALT_INV_A[59]~input_o\,
	combout => p(59));

-- Location: LABCELL_X45_Y48_N36
\S~59\ : arriaii_lcell_comb
-- Equation(s):
-- \S~59_combout\ = ( p(59) & ( \G_array[3][42]~combout\ & ( (\carry[59]~93_combout\ & (((!\P_array[4][42]~54_combout\) # (!\carry[59]~90_combout\)) # (\carry[27]~33_combout\))) ) ) ) # ( !p(59) & ( \G_array[3][42]~combout\ & ( (!\carry[59]~93_combout\) # 
-- ((!\carry[27]~33_combout\ & (\P_array[4][42]~54_combout\ & \carry[59]~90_combout\))) ) ) ) # ( p(59) & ( !\G_array[3][42]~combout\ & ( (!\carry[59]~90_combout\ & \carry[59]~93_combout\) ) ) ) # ( !p(59) & ( !\G_array[3][42]~combout\ & ( 
-- (!\carry[59]~93_combout\) # (\carry[59]~90_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111000000001111000011111111000000100000000011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_carry[27]~33_combout\,
	datab => \ALT_INV_P_array[4][42]~54_combout\,
	datac => \ALT_INV_carry[59]~90_combout\,
	datad => \ALT_INV_carry[59]~93_combout\,
	datae => ALT_INV_p(59),
	dataf => \ALT_INV_G_array[3][42]~combout\,
	combout => \S~59_combout\);

-- Location: MLABCELL_X44_Y44_N6
\P_array[1][59]\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[1][59]~combout\ = ( \B[59]~input_o\ & ( (!\A[59]~input_o\ & (!\B[58]~input_o\ $ (!\A[58]~input_o\))) ) ) # ( !\B[59]~input_o\ & ( (\A[59]~input_o\ & (!\B[58]~input_o\ $ (!\A[58]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011001100000011000000110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[58]~input_o\,
	datab => \ALT_INV_A[58]~input_o\,
	datac => \ALT_INV_A[59]~input_o\,
	dataf => \ALT_INV_B[59]~input_o\,
	combout => \P_array[1][59]~combout\);

-- Location: MLABCELL_X44_Y44_N36
\P_array[2][59]~76\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[2][59]~76_combout\ = ( \A[56]~input_o\ & ( (p(57) & (!\B[56]~input_o\ & \P_array[1][59]~combout\)) ) ) # ( !\A[56]~input_o\ & ( (p(57) & (\B[56]~input_o\ & \P_array[1][59]~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_p(57),
	datab => \ALT_INV_B[56]~input_o\,
	datac => \ALT_INV_P_array[1][59]~combout\,
	dataf => \ALT_INV_A[56]~input_o\,
	combout => \P_array[2][59]~76_combout\);

-- Location: LABCELL_X40_Y46_N18
\carry[60]~94\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[60]~94_combout\ = ( \P_array[2][47]~63_combout\ & ( (\P_array[2][59]~76_combout\ & \carry[56]~80_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_P_array[2][59]~76_combout\,
	datad => \ALT_INV_carry[56]~80_combout\,
	dataf => \ALT_INV_P_array[2][47]~63_combout\,
	combout => \carry[60]~94_combout\);

-- Location: IOIBUF_X59_Y28_N63
\B[60]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(60),
	o => \B[60]~input_o\);

-- Location: IOIBUF_X59_Y25_N63
\A[60]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(60),
	o => \A[60]~input_o\);

-- Location: MLABCELL_X44_Y44_N30
\p[60]\ : arriaii_lcell_comb
-- Equation(s):
-- p(60) = !\B[60]~input_o\ $ (!\A[60]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[60]~input_o\,
	datab => \ALT_INV_A[60]~input_o\,
	combout => p(60));

-- Location: MLABCELL_X44_Y44_N20
\G_array[1][59]~196\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][59]~196_combout\ = (!\B[59]~input_o\ & (\A[59]~input_o\ & (\B[58]~input_o\ & \A[58]~input_o\))) # (\B[59]~input_o\ & (((\B[58]~input_o\ & \A[58]~input_o\)) # (\A[59]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010111000100010001011100010001000101110001000100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[59]~input_o\,
	datab => \ALT_INV_A[59]~input_o\,
	datac => \ALT_INV_B[58]~input_o\,
	datad => \ALT_INV_A[58]~input_o\,
	combout => \G_array[1][59]~196_combout\);

-- Location: LABCELL_X43_Y44_N4
\carry[60]~95\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[60]~95_combout\ = ( \P_array[1][59]~combout\ & ( (!\G_array[1][57]~193_combout\ & !\G_array[1][59]~196_combout\) ) ) # ( !\P_array[1][59]~combout\ & ( !\G_array[1][59]~196_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_G_array[1][57]~193_combout\,
	datad => \ALT_INV_G_array[1][59]~196_combout\,
	dataf => \ALT_INV_P_array[1][59]~combout\,
	combout => \carry[60]~95_combout\);

-- Location: MLABCELL_X42_Y44_N18
\carry[60]~96\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[60]~96_combout\ = ( \carry[60]~95_combout\ & ( (!\P_array[2][59]~76_combout\) # ((!\G_array[1][55]~190_combout\ & ((!\G_array[1][53]~185_combout\) # (!\G_array~189_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111100111011001111110011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array[1][53]~185_combout\,
	datab => \ALT_INV_P_array[2][59]~76_combout\,
	datac => \ALT_INV_G_array[1][55]~190_combout\,
	datad => \ALT_INV_G_array~189_combout\,
	dataf => \ALT_INV_carry[60]~95_combout\,
	combout => \carry[60]~96_combout\);

-- Location: LABCELL_X40_Y46_N34
\carry[60]~97\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[60]~97_combout\ = ( \P_array[2][59]~76_combout\ & ( \carry[52]~66_combout\ & ( (\carry[60]~96_combout\ & ((!\P_array[2][55]~72_combout\) # ((\G_array[3][51]~combout\ & \G_array[3][35]~combout\)))) ) ) ) # ( !\P_array[2][59]~76_combout\ & ( 
-- \carry[52]~66_combout\ & ( \carry[60]~96_combout\ ) ) ) # ( \P_array[2][59]~76_combout\ & ( !\carry[52]~66_combout\ & ( (\carry[60]~96_combout\ & ((!\P_array[2][55]~72_combout\) # (\G_array[3][51]~combout\))) ) ) ) # ( !\P_array[2][59]~76_combout\ & ( 
-- !\carry[52]~66_combout\ & ( \carry[60]~96_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111010100000000111111110000000011110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array[3][51]~combout\,
	datab => \ALT_INV_G_array[3][35]~combout\,
	datac => \ALT_INV_P_array[2][55]~72_combout\,
	datad => \ALT_INV_carry[60]~96_combout\,
	datae => \ALT_INV_P_array[2][59]~76_combout\,
	dataf => \ALT_INV_carry[52]~66_combout\,
	combout => \carry[60]~97_combout\);

-- Location: LABCELL_X40_Y46_N36
\S~60\ : arriaii_lcell_comb
-- Equation(s):
-- \S~60_combout\ = ( \carry[28]~34_combout\ & ( \P_array[4][43]~56_combout\ & ( !p(60) $ (((\carry[60]~97_combout\ & ((!\carry[60]~94_combout\) # (\G_array[3][43]~combout\))))) ) ) ) # ( !\carry[28]~34_combout\ & ( \P_array[4][43]~56_combout\ & ( !p(60) $ 
-- (((!\carry[60]~94_combout\ & \carry[60]~97_combout\))) ) ) ) # ( \carry[28]~34_combout\ & ( !\P_array[4][43]~56_combout\ & ( !p(60) $ (((\carry[60]~97_combout\ & ((!\carry[60]~94_combout\) # (\G_array[3][43]~combout\))))) ) ) ) # ( !\carry[28]~34_combout\ 
-- & ( !\P_array[4][43]~56_combout\ & ( !p(60) $ (((\carry[60]~97_combout\ & ((!\carry[60]~94_combout\) # (\G_array[3][43]~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000001001011111100000100101111110000010110101111000001001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_carry[60]~94_combout\,
	datab => \ALT_INV_G_array[3][43]~combout\,
	datac => ALT_INV_p(60),
	datad => \ALT_INV_carry[60]~97_combout\,
	datae => \ALT_INV_carry[28]~34_combout\,
	dataf => \ALT_INV_P_array[4][43]~56_combout\,
	combout => \S~60_combout\);

-- Location: LABCELL_X45_Y48_N10
\P_array[1][60]\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[1][60]~combout\ = (p(60) & p(59))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_p(60),
	datad => ALT_INV_p(59),
	combout => \P_array[1][60]~combout\);

-- Location: MLABCELL_X44_Y47_N30
\carry[61]~98\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[61]~98_combout\ = ( \P_array[1][60]~combout\ & ( \P_array[1][58]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[1][58]~combout\,
	dataf => \ALT_INV_P_array[1][60]~combout\,
	combout => \carry[61]~98_combout\);

-- Location: MLABCELL_X44_Y44_N32
\G_array[1][60]~197\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][60]~197_combout\ = ( \B[60]~input_o\ & ( ((\A[59]~input_o\ & \B[59]~input_o\)) # (\A[60]~input_o\) ) ) # ( !\B[60]~input_o\ & ( (\A[59]~input_o\ & (\B[59]~input_o\ & \A[60]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[59]~input_o\,
	datac => \ALT_INV_B[59]~input_o\,
	datad => \ALT_INV_A[60]~input_o\,
	dataf => \ALT_INV_B[60]~input_o\,
	combout => \G_array[1][60]~197_combout\);

-- Location: MLABCELL_X44_Y47_N8
\carry[61]~100\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[61]~100_combout\ = ( \P_array[1][60]~combout\ & ( (!\G_array[1][58]~195_combout\ & (!\G_array[1][60]~197_combout\ & ((!\G_array[1][56]~191_combout\) # (!\P_array[1][58]~combout\)))) ) ) # ( !\P_array[1][60]~combout\ & ( 
-- !\G_array[1][60]~197_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011000000100000001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array[1][56]~191_combout\,
	datab => \ALT_INV_G_array[1][58]~195_combout\,
	datac => \ALT_INV_G_array[1][60]~197_combout\,
	datad => \ALT_INV_P_array[1][58]~combout\,
	dataf => \ALT_INV_P_array[1][60]~combout\,
	combout => \carry[61]~100_combout\);

-- Location: MLABCELL_X44_Y47_N4
\carry[61]~101\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[61]~101_combout\ = ( \P_array[2][56]~73_combout\ & ( (\carry[61]~100_combout\ & ((!\carry[61]~98_combout\) # ((\G_array[3][52]~combout\ & !\G_array~192_combout\)))) ) ) # ( !\P_array[2][56]~73_combout\ & ( (\carry[61]~100_combout\ & 
-- ((!\carry[61]~98_combout\) # (!\G_array~192_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001100000011110000110000001101000011000000110100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array[3][52]~combout\,
	datab => \ALT_INV_carry[61]~98_combout\,
	datac => \ALT_INV_carry[61]~100_combout\,
	datad => \ALT_INV_G_array~192_combout\,
	dataf => \ALT_INV_P_array[2][56]~73_combout\,
	combout => \carry[61]~101_combout\);

-- Location: MLABCELL_X44_Y47_N16
\carry[61]~102\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[61]~102_combout\ = ( \carry[57]~69_combout\ & ( (\carry[61]~101_combout\ & ((!\P_array[2][56]~73_combout\) # ((!\carry[61]~98_combout\) # (\G_array[3][36]~combout\)))) ) ) # ( !\carry[57]~69_combout\ & ( \carry[61]~101_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111011110000000011101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[2][56]~73_combout\,
	datab => \ALT_INV_carry[61]~98_combout\,
	datac => \ALT_INV_G_array[3][36]~combout\,
	datad => \ALT_INV_carry[61]~101_combout\,
	dataf => \ALT_INV_carry[57]~69_combout\,
	combout => \carry[61]~102_combout\);

-- Location: IOIBUF_X59_Y22_N63
\A[61]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(61),
	o => \A[61]~input_o\);

-- Location: IOIBUF_X44_Y56_N1
\B[61]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(61),
	o => \B[61]~input_o\);

-- Location: MLABCELL_X44_Y44_N34
\p[61]\ : arriaii_lcell_comb
-- Equation(s):
-- p(61) = !\A[61]~input_o\ $ (!\B[61]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[61]~input_o\,
	datad => \ALT_INV_B[61]~input_o\,
	combout => p(61));

-- Location: MLABCELL_X44_Y47_N18
\carry[61]~99\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[61]~99_combout\ = ( \P_array[2][56]~73_combout\ & ( (\carry[61]~98_combout\ & (\P_array[2][48]~65_combout\ & \P_array[2][52]~69_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_carry[61]~98_combout\,
	datac => \ALT_INV_P_array[2][48]~65_combout\,
	datad => \ALT_INV_P_array[2][52]~69_combout\,
	dataf => \ALT_INV_P_array[2][56]~73_combout\,
	combout => \carry[61]~99_combout\);

-- Location: MLABCELL_X44_Y48_N36
\S~61\ : arriaii_lcell_comb
-- Equation(s):
-- \S~61_combout\ = ( \carry[29]~35_combout\ & ( \carry[61]~99_combout\ & ( !p(61) $ (((\carry[61]~102_combout\ & \G_array[3][44]~combout\))) ) ) ) # ( !\carry[29]~35_combout\ & ( \carry[61]~99_combout\ & ( !p(61) $ (((\carry[61]~102_combout\ & 
-- (\G_array[3][44]~combout\ & !\P_array[4][44]~58_combout\)))) ) ) ) # ( \carry[29]~35_combout\ & ( !\carry[61]~99_combout\ & ( !\carry[61]~102_combout\ $ (p(61)) ) ) ) # ( !\carry[29]~35_combout\ & ( !\carry[61]~99_combout\ & ( !\carry[61]~102_combout\ $ 
-- (p(61)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101101001011010010111100001111100001110000111100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_carry[61]~102_combout\,
	datab => \ALT_INV_G_array[3][44]~combout\,
	datac => ALT_INV_p(61),
	datad => \ALT_INV_P_array[4][44]~58_combout\,
	datae => \ALT_INV_carry[29]~35_combout\,
	dataf => \ALT_INV_carry[61]~99_combout\,
	combout => \S~61_combout\);

-- Location: MLABCELL_X44_Y44_N16
\P_array[1][61]\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[1][61]~combout\ = ( p(60) & ( p(61) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_p(61),
	dataf => ALT_INV_p(60),
	combout => \P_array[1][61]~combout\);

-- Location: LABCELL_X43_Y44_N28
\carry[62]~103\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[62]~103_combout\ = (\P_array[1][61]~combout\ & \P_array[1][59]~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[1][61]~combout\,
	datab => \ALT_INV_P_array[1][59]~combout\,
	combout => \carry[62]~103_combout\);

-- Location: MLABCELL_X44_Y44_N28
\G_array[1][61]~198\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][61]~198_combout\ = (!\B[61]~input_o\ & (\B[60]~input_o\ & (\A[60]~input_o\ & \A[61]~input_o\))) # (\B[61]~input_o\ & (((\B[60]~input_o\ & \A[60]~input_o\)) # (\A[61]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111000000010001111100000001000111110000000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[60]~input_o\,
	datab => \ALT_INV_A[60]~input_o\,
	datac => \ALT_INV_B[61]~input_o\,
	datad => \ALT_INV_A[61]~input_o\,
	combout => \G_array[1][61]~198_combout\);

-- Location: LABCELL_X43_Y44_N30
\carry[62]~105\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[62]~105_combout\ = ( \G_array[1][57]~193_combout\ & ( (!\G_array[1][61]~198_combout\ & ((!\P_array[1][61]~combout\) # ((!\P_array[1][59]~combout\ & !\G_array[1][59]~196_combout\)))) ) ) # ( !\G_array[1][57]~193_combout\ & ( 
-- (!\G_array[1][61]~198_combout\ & ((!\P_array[1][61]~combout\) # (!\G_array[1][59]~196_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010100000111100001010000011100000101000001110000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[1][61]~combout\,
	datab => \ALT_INV_P_array[1][59]~combout\,
	datac => \ALT_INV_G_array[1][61]~198_combout\,
	datad => \ALT_INV_G_array[1][59]~196_combout\,
	dataf => \ALT_INV_G_array[1][57]~193_combout\,
	combout => \carry[62]~105_combout\);

-- Location: LABCELL_X43_Y44_N6
\carry[62]~106\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[62]~106_combout\ = ( \G_array[3][53]~combout\ & ( (\carry[62]~105_combout\ & ((!\carry[62]~103_combout\) # (!\G_array~194_combout\))) ) ) # ( !\G_array[3][53]~combout\ & ( (\carry[62]~105_combout\ & ((!\carry[62]~103_combout\) # 
-- ((!\P_array[2][57]~74_combout\ & !\G_array~194_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000100010001100100010001000110011001000100011001100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_carry[62]~103_combout\,
	datab => \ALT_INV_carry[62]~105_combout\,
	datac => \ALT_INV_P_array[2][57]~74_combout\,
	datad => \ALT_INV_G_array~194_combout\,
	dataf => \ALT_INV_G_array[3][53]~combout\,
	combout => \carry[62]~106_combout\);

-- Location: LABCELL_X43_Y44_N12
\carry[62]~107\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[62]~107_combout\ = ( \carry[62]~106_combout\ & ( (!\carry[62]~103_combout\) # ((!\P_array[2][57]~74_combout\) # ((!\carry[58]~73_combout\) # (\G_array[3][37]~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111110111111111111111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_carry[62]~103_combout\,
	datab => \ALT_INV_P_array[2][57]~74_combout\,
	datac => \ALT_INV_carry[58]~73_combout\,
	datad => \ALT_INV_G_array[3][37]~combout\,
	dataf => \ALT_INV_carry[62]~106_combout\,
	combout => \carry[62]~107_combout\);

-- Location: IOIBUF_X48_Y56_N1
\A[62]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(62),
	o => \A[62]~input_o\);

-- Location: IOIBUF_X48_Y56_N63
\B[62]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(62),
	o => \B[62]~input_o\);

-- Location: LABCELL_X45_Y49_N18
\p[62]\ : arriaii_lcell_comb
-- Equation(s):
-- p(62) = !\A[62]~input_o\ $ (!\B[62]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[62]~input_o\,
	datab => \ALT_INV_B[62]~input_o\,
	combout => p(62));

-- Location: LABCELL_X43_Y44_N14
\carry[62]~104\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[62]~104_combout\ = ( \P_array[2][49]~66_combout\ & ( (\carry[62]~103_combout\ & (\P_array[2][57]~74_combout\ & \P_array[2][53]~70_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_carry[62]~103_combout\,
	datab => \ALT_INV_P_array[2][57]~74_combout\,
	datad => \ALT_INV_P_array[2][53]~70_combout\,
	dataf => \ALT_INV_P_array[2][49]~66_combout\,
	combout => \carry[62]~104_combout\);

-- Location: LABCELL_X43_Y44_N18
\S~62\ : arriaii_lcell_comb
-- Equation(s):
-- \S~62_combout\ = ( carry(30) & ( \carry[62]~104_combout\ & ( !p(62) $ (((\carry[62]~107_combout\ & \G_array[3][45]~combout\))) ) ) ) # ( !carry(30) & ( \carry[62]~104_combout\ & ( !p(62) $ (((\carry[62]~107_combout\ & (\G_array[3][45]~combout\ & 
-- !\P_array[4][45]~60_combout\)))) ) ) ) # ( carry(30) & ( !\carry[62]~104_combout\ & ( !\carry[62]~107_combout\ $ (p(62)) ) ) ) # ( !carry(30) & ( !\carry[62]~104_combout\ & ( !\carry[62]~107_combout\ $ (p(62)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101101001011010010111100001111100001110000111100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_carry[62]~107_combout\,
	datab => \ALT_INV_G_array[3][45]~combout\,
	datac => ALT_INV_p(62),
	datad => \ALT_INV_P_array[4][45]~60_combout\,
	datae => ALT_INV_carry(30),
	dataf => \ALT_INV_carry[62]~104_combout\,
	combout => \S~62_combout\);

-- Location: MLABCELL_X44_Y47_N34
\P_array[4][62]~78\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[4][62]~78_combout\ = ( \P_array[1][60]~combout\ & ( \P_array[2][58]~75_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[2][58]~75_combout\,
	dataf => \ALT_INV_P_array[1][60]~combout\,
	combout => \P_array[4][62]~78_combout\);

-- Location: MLABCELL_X44_Y44_N18
\P_array[4][62]~77\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[4][62]~77_combout\ = ( p(62) & ( p(61) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_p(61),
	dataf => ALT_INV_p(62),
	combout => \P_array[4][62]~77_combout\);

-- Location: MLABCELL_X44_Y49_N38
\carry[63]~109\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[63]~109_combout\ = ( \carry[61]~100_combout\ & ( (\P_array[4][62]~78_combout\ & (\P_array[4][62]~77_combout\ & !\G_array[3][54]~combout\)) ) ) # ( !\carry[61]~100_combout\ & ( \P_array[4][62]~77_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100010001000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[4][62]~78_combout\,
	datab => \ALT_INV_P_array[4][62]~77_combout\,
	datad => \ALT_INV_G_array[3][54]~combout\,
	dataf => \ALT_INV_carry[61]~100_combout\,
	combout => \carry[63]~109_combout\);

-- Location: MLABCELL_X44_Y49_N36
\P_array[4][62]~79\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[4][62]~79_combout\ = (\P_array[4][62]~78_combout\ & (\P_array[4][62]~77_combout\ & \carry[55]~76_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[4][62]~78_combout\,
	datab => \ALT_INV_P_array[4][62]~77_combout\,
	datad => \ALT_INV_carry[55]~76_combout\,
	combout => \P_array[4][62]~79_combout\);

-- Location: LABCELL_X45_Y49_N16
\G_array[1][62]~201\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][62]~201_combout\ = ( \A[61]~input_o\ & ( (!\A[62]~input_o\ & (\B[62]~input_o\ & \B[61]~input_o\)) # (\A[62]~input_o\ & ((\B[61]~input_o\) # (\B[62]~input_o\))) ) ) # ( !\A[61]~input_o\ & ( (\A[62]~input_o\ & \B[62]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[62]~input_o\,
	datab => \ALT_INV_B[62]~input_o\,
	datac => \ALT_INV_B[61]~input_o\,
	dataf => \ALT_INV_A[61]~input_o\,
	combout => \G_array[1][62]~201_combout\);

-- Location: LABCELL_X45_Y49_N4
\carry[63]~110\ : arriaii_lcell_comb
-- Equation(s):
-- \carry[63]~110_combout\ = ( !\G_array[1][62]~201_combout\ & ( (!\carry[63]~109_combout\ & ((!\P_array[4][62]~79_combout\) # ((!\G_array~164_combout\ & \G_array[3][46]~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000001000101010100000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_carry[63]~109_combout\,
	datab => \ALT_INV_G_array~164_combout\,
	datac => \ALT_INV_G_array[3][46]~combout\,
	datad => \ALT_INV_P_array[4][62]~79_combout\,
	dataf => \ALT_INV_G_array[1][62]~201_combout\,
	combout => \carry[63]~110_combout\);

-- Location: MLABCELL_X44_Y49_N14
\G_array~199\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~199_combout\ = ( \P_array[2][46]~61_combout\ & ( \P_array[2][42]~53_combout\ & ( (\P_array[4][38]~44_combout\ & (\P_array[4][62]~77_combout\ & (\carry[55]~76_combout\ & \P_array[4][62]~78_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[4][38]~44_combout\,
	datab => \ALT_INV_P_array[4][62]~77_combout\,
	datac => \ALT_INV_carry[55]~76_combout\,
	datad => \ALT_INV_P_array[4][62]~78_combout\,
	datae => \ALT_INV_P_array[2][46]~61_combout\,
	dataf => \ALT_INV_P_array[2][42]~53_combout\,
	combout => \G_array~199_combout\);

-- Location: LABCELL_X45_Y49_N6
\carry~108\ : arriaii_lcell_comb
-- Equation(s):
-- \carry~108_combout\ = ( \carry~15_combout\ & ( (\G_array~199_combout\ & \P_array[4][30]~27_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_G_array~199_combout\,
	datad => \ALT_INV_P_array[4][30]~27_combout\,
	dataf => \ALT_INV_carry~15_combout\,
	combout => \carry~108_combout\);

-- Location: IOIBUF_X46_Y56_N1
\B[63]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(63),
	o => \B[63]~input_o\);

-- Location: LABCELL_X45_Y49_N0
\G_array~200\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~200_combout\ = ( \G_array[3][30]~combout\ & ( \G_array~199_combout\ & ( ((\P_array[4][30]~27_combout\ & ((!\G_array[3][14]~combout\) # (\G_array~35_combout\)))) # (\G_array~102_combout\) ) ) ) # ( !\G_array[3][30]~combout\ & ( 
-- \G_array~199_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110011101100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array[3][14]~combout\,
	datab => \ALT_INV_G_array~102_combout\,
	datac => \ALT_INV_P_array[4][30]~27_combout\,
	datad => \ALT_INV_G_array~35_combout\,
	datae => \ALT_INV_G_array[3][30]~combout\,
	dataf => \ALT_INV_G_array~199_combout\,
	combout => \G_array~200_combout\);

-- Location: IOIBUF_X44_Y56_N63
\A[63]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(63),
	o => \A[63]~input_o\);

-- Location: LABCELL_X45_Y49_N8
\S~63\ : arriaii_lcell_comb
-- Equation(s):
-- \S~63_combout\ = ( \A[63]~input_o\ & ( !\B[63]~input_o\ $ (((!\carry[63]~110_combout\) # ((\G_array~200_combout\) # (\carry~108_combout\)))) ) ) # ( !\A[63]~input_o\ & ( !\B[63]~input_o\ $ (((\carry[63]~110_combout\ & (!\carry~108_combout\ & 
-- !\G_array~200_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011010011110000101101001111000001001011000011110100101100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_carry[63]~110_combout\,
	datab => \ALT_INV_carry~108_combout\,
	datac => \ALT_INV_B[63]~input_o\,
	datad => \ALT_INV_G_array~200_combout\,
	dataf => \ALT_INV_A[63]~input_o\,
	combout => \S~63_combout\);

-- Location: LABCELL_X45_Y49_N14
\P_array[4][63]~81\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[4][63]~81_combout\ = ( p(62) & ( !\B[63]~input_o\ $ (!\A[63]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[63]~input_o\,
	datab => \ALT_INV_A[63]~input_o\,
	dataf => ALT_INV_p(62),
	combout => \P_array[4][63]~81_combout\);

-- Location: MLABCELL_X42_Y44_N16
\P_array[4][63]~80\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[4][63]~80_combout\ = (\P_array[2][59]~76_combout\ & \P_array[1][61]~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_P_array[2][59]~76_combout\,
	datac => \ALT_INV_P_array[1][61]~combout\,
	combout => \P_array[4][63]~80_combout\);

-- Location: MLABCELL_X39_Y45_N4
\G_array~202\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~202_combout\ = ( \carry[56]~80_combout\ & ( \P_array[4][63]~80_combout\ & ( (\P_array[4][39]~47_combout\ & (\P_array[2][47]~63_combout\ & (\P_array[2][43]~55_combout\ & \P_array[4][63]~81_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P_array[4][39]~47_combout\,
	datab => \ALT_INV_P_array[2][47]~63_combout\,
	datac => \ALT_INV_P_array[2][43]~55_combout\,
	datad => \ALT_INV_P_array[4][63]~81_combout\,
	datae => \ALT_INV_carry[56]~80_combout\,
	dataf => \ALT_INV_P_array[4][63]~80_combout\,
	combout => \G_array~202_combout\);

-- Location: MLABCELL_X39_Y45_N8
\G_array~203\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array~203_combout\ = ( \G_array[3][31]~combout\ & ( \P_array[4][31]~29_combout\ & ( (\G_array~202_combout\ & ((!\G_array[3][15]~combout\) # ((\G_array~106_combout\) # (\G_array~39_combout\)))) ) ) ) # ( !\G_array[3][31]~combout\ & ( 
-- \P_array[4][31]~29_combout\ & ( \G_array~202_combout\ ) ) ) # ( \G_array[3][31]~combout\ & ( !\P_array[4][31]~29_combout\ & ( (\G_array~202_combout\ & \G_array~106_combout\) ) ) ) # ( !\G_array[3][31]~combout\ & ( !\P_array[4][31]~29_combout\ & ( 
-- \G_array~202_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000111100001111000011110000101100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array[3][15]~combout\,
	datab => \ALT_INV_G_array~39_combout\,
	datac => \ALT_INV_G_array~202_combout\,
	datad => \ALT_INV_G_array~106_combout\,
	datae => \ALT_INV_G_array[3][31]~combout\,
	dataf => \ALT_INV_P_array[4][31]~29_combout\,
	combout => \G_array~203_combout\);

-- Location: LABCELL_X45_Y49_N12
\G_array[1][63]~204\ : arriaii_lcell_comb
-- Equation(s):
-- \G_array[1][63]~204_combout\ = ( \B[62]~input_o\ & ( (!\B[63]~input_o\ & (\A[63]~input_o\ & \A[62]~input_o\)) # (\B[63]~input_o\ & ((\A[62]~input_o\) # (\A[63]~input_o\))) ) ) # ( !\B[62]~input_o\ & ( (\B[63]~input_o\ & \A[63]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[63]~input_o\,
	datab => \ALT_INV_A[63]~input_o\,
	datac => \ALT_INV_A[62]~input_o\,
	dataf => \ALT_INV_B[62]~input_o\,
	combout => \G_array[1][63]~204_combout\);

-- Location: MLABCELL_X39_Y45_N36
\carry~112\ : arriaii_lcell_comb
-- Equation(s):
-- \carry~112_combout\ = ( \P_array[4][63]~80_combout\ & ( (\P_array[4][63]~81_combout\ & ((!\G_array[3][55]~combout\) # (!\carry[62]~105_combout\))) ) ) # ( !\P_array[4][63]~80_combout\ & ( (\P_array[4][63]~81_combout\ & !\carry[62]~105_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011001100000011001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_P_array[4][63]~81_combout\,
	datac => \ALT_INV_G_array[3][55]~combout\,
	datad => \ALT_INV_carry[62]~105_combout\,
	dataf => \ALT_INV_P_array[4][63]~80_combout\,
	combout => \carry~112_combout\);

-- Location: MLABCELL_X39_Y45_N38
\P_array[4][63]~82\ : arriaii_lcell_comb
-- Equation(s):
-- \P_array[4][63]~82_combout\ = ( \P_array[4][63]~80_combout\ & ( (\P_array[4][63]~81_combout\ & \carry[56]~80_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_P_array[4][63]~81_combout\,
	datac => \ALT_INV_carry[56]~80_combout\,
	dataf => \ALT_INV_P_array[4][63]~80_combout\,
	combout => \P_array[4][63]~82_combout\);

-- Location: MLABCELL_X39_Y45_N12
\carry~113\ : arriaii_lcell_comb
-- Equation(s):
-- \carry~113_combout\ = ( \P_array[4][63]~82_combout\ & ( (!\G_array~168_combout\ & (!\G_array[1][63]~204_combout\ & (\G_array[3][47]~combout\ & !\carry~112_combout\))) ) ) # ( !\P_array[4][63]~82_combout\ & ( (!\G_array[1][63]~204_combout\ & 
-- !\carry~112_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~168_combout\,
	datab => \ALT_INV_G_array[1][63]~204_combout\,
	datac => \ALT_INV_G_array[3][47]~combout\,
	datad => \ALT_INV_carry~112_combout\,
	dataf => \ALT_INV_P_array[4][63]~82_combout\,
	combout => \carry~113_combout\);

-- Location: MLABCELL_X39_Y45_N14
\carry~111\ : arriaii_lcell_comb
-- Equation(s):
-- \carry~111_combout\ = ( \P_array[4][31]~29_combout\ & ( (\carry~16_combout\ & \G_array~202_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_carry~16_combout\,
	datad => \ALT_INV_G_array~202_combout\,
	dataf => \ALT_INV_P_array[4][31]~29_combout\,
	combout => \carry~111_combout\);

-- Location: LABCELL_X45_Y49_N10
\carry~114\ : arriaii_lcell_comb
-- Equation(s):
-- \carry~114_combout\ = ( \carry~111_combout\ ) # ( !\carry~111_combout\ & ( (!\carry~113_combout\) # (\G_array~203_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_G_array~203_combout\,
	datad => \ALT_INV_carry~113_combout\,
	dataf => \ALT_INV_carry~111_combout\,
	combout => \carry~114_combout\);

-- Location: LABCELL_X45_Y49_N36
\Ovfl~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = ( \carry~113_combout\ & ( \carry~111_combout\ & ( (!\G_array~200_combout\ & (\carry[63]~110_combout\ & !\carry~108_combout\)) ) ) ) # ( !\carry~113_combout\ & ( \carry~111_combout\ & ( (!\G_array~200_combout\ & (\carry[63]~110_combout\ 
-- & !\carry~108_combout\)) ) ) ) # ( \carry~113_combout\ & ( !\carry~111_combout\ & ( !\G_array~203_combout\ $ (((!\G_array~200_combout\ & (\carry[63]~110_combout\ & !\carry~108_combout\)))) ) ) ) # ( !\carry~113_combout\ & ( !\carry~111_combout\ & ( 
-- (!\G_array~200_combout\ & (\carry[63]~110_combout\ & !\carry~108_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000110001101100110000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G_array~200_combout\,
	datab => \ALT_INV_G_array~203_combout\,
	datac => \ALT_INV_carry[63]~110_combout\,
	datad => \ALT_INV_carry~108_combout\,
	datae => \ALT_INV_carry~113_combout\,
	dataf => \ALT_INV_carry~111_combout\,
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


