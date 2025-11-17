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

-- DATE "11/16/2025 15:47:03"

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

ENTITY 	LadnerFischer IS
    PORT (
	A : IN std_logic_vector(63 DOWNTO 0);
	B : IN std_logic_vector(63 DOWNTO 0);
	Cin : IN std_logic;
	S : OUT std_logic_vector(63 DOWNTO 0);
	Cout : OUT std_logic;
	Ovfl : OUT std_logic
	);
END LadnerFischer;

-- Design Ports Information
-- S[0]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[16]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[17]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[18]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[19]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[20]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[21]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[22]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[23]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[24]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[25]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[26]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[27]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[28]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[29]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[30]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[31]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[32]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[33]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[34]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[35]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[36]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[37]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[38]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[39]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[40]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[41]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[42]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[43]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[44]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[45]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[46]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[47]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[48]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[49]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[50]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[51]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[52]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[53]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[54]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[55]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[56]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[57]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[58]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[59]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[60]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[61]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[62]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[63]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[32]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[32]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[33]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[33]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[34]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[34]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[35]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[35]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[36]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[36]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[37]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[37]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[38]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[38]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[39]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[39]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[40]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[40]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[41]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[41]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[42]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[42]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[43]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[43]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[44]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[44]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[45]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[45]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[46]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[46]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[47]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[47]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[48]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[48]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[49]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[49]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[50]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[50]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[51]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[51]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[52]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[52]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[53]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[53]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[54]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[54]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[55]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[55]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[56]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[56]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[57]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[57]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[58]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[58]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[59]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[59]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[60]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[60]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[61]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[61]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[62]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[62]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[63]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[63]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \S~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \S~1_combout\ : std_logic;
SIGNAL \ppn_carry:pg[1][0]~0_combout\ : std_logic;
SIGNAL \c_var~0_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \S~2_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \S~3_combout\ : std_logic;
SIGNAL \pg~1_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \pg~0_combout\ : std_logic;
SIGNAL \c_var~1_combout\ : std_logic;
SIGNAL \S~4_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \ppn_carry:pg[4][0]~0_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \S~5_combout\ : std_logic;
SIGNAL \c_var~2_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \pg~2_combout\ : std_logic;
SIGNAL \pg~3_combout\ : std_logic;
SIGNAL \S~6_combout\ : std_logic;
SIGNAL \ppn_carry:pg[6][0]~0_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \S~7_combout\ : std_logic;
SIGNAL \ppn_carry:pg[7][1]~0_combout\ : std_logic;
SIGNAL \ppn_carry:pg[7][1]~1_combout\ : std_logic;
SIGNAL \c_var~3_combout\ : std_logic;
SIGNAL \pg~4_combout\ : std_logic;
SIGNAL \pg~93_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \S~8_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \ppn_carry:pg[8][0]~0_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \S~9_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \c_var~4_combout\ : std_logic;
SIGNAL \pg~6_combout\ : std_logic;
SIGNAL \pg~5_combout\ : std_logic;
SIGNAL \S~10_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \ppn_carry:pg[10][0]~0_combout\ : std_logic;
SIGNAL \S~11_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \pg~7_combout\ : std_logic;
SIGNAL \pg~8_combout\ : std_logic;
SIGNAL \c_var~5_combout\ : std_logic;
SIGNAL \pg~9_combout\ : std_logic;
SIGNAL \pg~92_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \S~12_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \c_var~6_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \ppn_carry:pg[12][0]~0_combout\ : std_logic;
SIGNAL \S~13_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \pg~11_combout\ : std_logic;
SIGNAL \pg~12_combout\ : std_logic;
SIGNAL \pg~10_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \c_var~7_combout\ : std_logic;
SIGNAL \S~14_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \ppn_carry:pg[14][0]~0_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \S~15_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \pg~13_combout\ : std_logic;
SIGNAL \pg~14_combout\ : std_logic;
SIGNAL \c_var~8_combout\ : std_logic;
SIGNAL \pg~15_combout\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \pg~16_combout\ : std_logic;
SIGNAL \pg~17_combout\ : std_logic;
SIGNAL \S~16_combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \ppn_carry:pg[16][0]~0_combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \S~17_combout\ : std_logic;
SIGNAL \pg~19_combout\ : std_logic;
SIGNAL \pg~20_combout\ : std_logic;
SIGNAL \pg~18_combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \S~18_combout\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \ppn_carry:pg[18][0]~0_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \S~19_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \ppn_carry:pg[19][1]~0_combout\ : std_logic;
SIGNAL \pg~91_combout\ : std_logic;
SIGNAL \pg~21_combout\ : std_logic;
SIGNAL \S~20_combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \c_var~9_combout\ : std_logic;
SIGNAL \ppn_carry:pg[20][0]~0_combout\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \S~21_combout\ : std_logic;
SIGNAL \pg~23_combout\ : std_logic;
SIGNAL \pg~24_combout\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \pg~22_combout\ : std_logic;
SIGNAL \c_var~10_combout\ : std_logic;
SIGNAL \S~22_combout\ : std_logic;
SIGNAL \ppn_carry:pg[22][0]~0_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \S~23_combout\ : std_logic;
SIGNAL \pg~25_combout\ : std_logic;
SIGNAL \pg~26_combout\ : std_logic;
SIGNAL \pg~27_combout\ : std_logic;
SIGNAL \pg~28_combout\ : std_logic;
SIGNAL \pg~29_combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \c_var~11_combout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \S~24_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \ppn_carry:pg[24][0]~0_combout\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \S~25_combout\ : std_logic;
SIGNAL \c_var~12_combout\ : std_logic;
SIGNAL \pg~31_combout\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \pg~30_combout\ : std_logic;
SIGNAL \S~26_combout\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \ppn_carry:pg[26][0]~0_combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \S~27_combout\ : std_logic;
SIGNAL \pg~32_combout\ : std_logic;
SIGNAL \pg~33_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \pg~90_combout\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \S~28_combout\ : std_logic;
SIGNAL \c_var~13_combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \ppn_carry:pg[28][0]~0_combout\ : std_logic;
SIGNAL \S~29_combout\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \pg~34_combout\ : std_logic;
SIGNAL \pg~35_combout\ : std_logic;
SIGNAL \pg~36_combout\ : std_logic;
SIGNAL \ppn_carry:c_var[30]~0_combout\ : std_logic;
SIGNAL \S~30_combout\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \c_var~14_combout\ : std_logic;
SIGNAL \ppn_carry:pg[30][0]~0_combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \S~31_combout\ : std_logic;
SIGNAL \B[32]~input_o\ : std_logic;
SIGNAL \A[32]~input_o\ : std_logic;
SIGNAL \pg~39_combout\ : std_logic;
SIGNAL \pg~40_combout\ : std_logic;
SIGNAL \pg~41_combout\ : std_logic;
SIGNAL \pg~42_combout\ : std_logic;
SIGNAL \pg~37_combout\ : std_logic;
SIGNAL \pg~38_combout\ : std_logic;
SIGNAL \c_var~15_combout\ : std_logic;
SIGNAL \S~32_combout\ : std_logic;
SIGNAL \ppn_carry:pg[32][0]~0_combout\ : std_logic;
SIGNAL \A[33]~input_o\ : std_logic;
SIGNAL \B[33]~input_o\ : std_logic;
SIGNAL \S~33_combout\ : std_logic;
SIGNAL \pg~44_combout\ : std_logic;
SIGNAL \pg~45_combout\ : std_logic;
SIGNAL \A[34]~input_o\ : std_logic;
SIGNAL \B[34]~input_o\ : std_logic;
SIGNAL \pg~43_combout\ : std_logic;
SIGNAL \S~34_combout\ : std_logic;
SIGNAL \ppn_carry:pg[34][0]~0_combout\ : std_logic;
SIGNAL \B[35]~input_o\ : std_logic;
SIGNAL \A[35]~input_o\ : std_logic;
SIGNAL \S~35_combout\ : std_logic;
SIGNAL \B[36]~input_o\ : std_logic;
SIGNAL \pg~89_combout\ : std_logic;
SIGNAL \ppn_carry:pg[35][1]~0_combout\ : std_logic;
SIGNAL \pg~46_combout\ : std_logic;
SIGNAL \A[36]~input_o\ : std_logic;
SIGNAL \S~36_combout\ : std_logic;
SIGNAL \A[37]~input_o\ : std_logic;
SIGNAL \B[37]~input_o\ : std_logic;
SIGNAL \c_var~16_combout\ : std_logic;
SIGNAL \ppn_carry:pg[36][0]~0_combout\ : std_logic;
SIGNAL \S~37_combout\ : std_logic;
SIGNAL \pg~48_combout\ : std_logic;
SIGNAL \pg~49_combout\ : std_logic;
SIGNAL \c_var~17_combout\ : std_logic;
SIGNAL \B[38]~input_o\ : std_logic;
SIGNAL \pg~47_combout\ : std_logic;
SIGNAL \A[38]~input_o\ : std_logic;
SIGNAL \S~38_combout\ : std_logic;
SIGNAL \ppn_carry:pg[38][0]~0_combout\ : std_logic;
SIGNAL \B[39]~input_o\ : std_logic;
SIGNAL \A[39]~input_o\ : std_logic;
SIGNAL \S~39_combout\ : std_logic;
SIGNAL \A[40]~input_o\ : std_logic;
SIGNAL \B[40]~input_o\ : std_logic;
SIGNAL \pg~53_combout\ : std_logic;
SIGNAL \pg~50_combout\ : std_logic;
SIGNAL \pg~54_combout\ : std_logic;
SIGNAL \pg~51_combout\ : std_logic;
SIGNAL \pg~52_combout\ : std_logic;
SIGNAL \c_var~18_combout\ : std_logic;
SIGNAL \S~40_combout\ : std_logic;
SIGNAL \A[41]~input_o\ : std_logic;
SIGNAL \B[41]~input_o\ : std_logic;
SIGNAL \ppn_carry:pg[40][0]~0_combout\ : std_logic;
SIGNAL \S~41_combout\ : std_logic;
SIGNAL \c_var~19_combout\ : std_logic;
SIGNAL \B[42]~input_o\ : std_logic;
SIGNAL \A[42]~input_o\ : std_logic;
SIGNAL \pg~56_combout\ : std_logic;
SIGNAL \pg~55_combout\ : std_logic;
SIGNAL \S~42_combout\ : std_logic;
SIGNAL \A[43]~input_o\ : std_logic;
SIGNAL \ppn_carry:pg[42][0]~0_combout\ : std_logic;
SIGNAL \B[43]~input_o\ : std_logic;
SIGNAL \S~43_combout\ : std_logic;
SIGNAL \pg~57_combout\ : std_logic;
SIGNAL \pg~88_combout\ : std_logic;
SIGNAL \B[44]~input_o\ : std_logic;
SIGNAL \pg~58_combout\ : std_logic;
SIGNAL \A[44]~input_o\ : std_logic;
SIGNAL \S~44_combout\ : std_logic;
SIGNAL \B[45]~input_o\ : std_logic;
SIGNAL \A[45]~input_o\ : std_logic;
SIGNAL \ppn_carry:pg[44][0]~0_combout\ : std_logic;
SIGNAL \c_var~20_combout\ : std_logic;
SIGNAL \S~45_combout\ : std_logic;
SIGNAL \A[46]~input_o\ : std_logic;
SIGNAL \pg~59_combout\ : std_logic;
SIGNAL \pg~60_combout\ : std_logic;
SIGNAL \pg~61_combout\ : std_logic;
SIGNAL \ppn_carry:c_var[46]~0_combout\ : std_logic;
SIGNAL \B[46]~input_o\ : std_logic;
SIGNAL \S~46_combout\ : std_logic;
SIGNAL \B[47]~input_o\ : std_logic;
SIGNAL \A[47]~input_o\ : std_logic;
SIGNAL \ppn_carry:pg[46][0]~0_combout\ : std_logic;
SIGNAL \c_var~21_combout\ : std_logic;
SIGNAL \S~47_combout\ : std_logic;
SIGNAL \B[48]~input_o\ : std_logic;
SIGNAL \A[48]~input_o\ : std_logic;
SIGNAL \pg~62_combout\ : std_logic;
SIGNAL \pg~63_combout\ : std_logic;
SIGNAL \c_var~22_combout\ : std_logic;
SIGNAL \pg~64_combout\ : std_logic;
SIGNAL \pg~65_combout\ : std_logic;
SIGNAL \pg~66_combout\ : std_logic;
SIGNAL \pg~67_combout\ : std_logic;
SIGNAL \S~48_combout\ : std_logic;
SIGNAL \B[49]~input_o\ : std_logic;
SIGNAL \ppn_carry:pg[48][0]~0_combout\ : std_logic;
SIGNAL \A[49]~input_o\ : std_logic;
SIGNAL \S~49_combout\ : std_logic;
SIGNAL \c_var~23_combout\ : std_logic;
SIGNAL \A[50]~input_o\ : std_logic;
SIGNAL \B[50]~input_o\ : std_logic;
SIGNAL \pg~68_combout\ : std_logic;
SIGNAL \pg~69_combout\ : std_logic;
SIGNAL \S~50_combout\ : std_logic;
SIGNAL \ppn_carry:pg[50][0]~0_combout\ : std_logic;
SIGNAL \B[51]~input_o\ : std_logic;
SIGNAL \A[51]~input_o\ : std_logic;
SIGNAL \S~51_combout\ : std_logic;
SIGNAL \pg~87_combout\ : std_logic;
SIGNAL \A[52]~input_o\ : std_logic;
SIGNAL \B[52]~input_o\ : std_logic;
SIGNAL \pg~70_combout\ : std_logic;
SIGNAL \c_var~24_combout\ : std_logic;
SIGNAL \pg~71_combout\ : std_logic;
SIGNAL \S~52_combout\ : std_logic;
SIGNAL \ppn_carry:pg[52][0]~0_combout\ : std_logic;
SIGNAL \B[53]~input_o\ : std_logic;
SIGNAL \A[53]~input_o\ : std_logic;
SIGNAL \S~53_combout\ : std_logic;
SIGNAL \c_var~25_combout\ : std_logic;
SIGNAL \pg~73_combout\ : std_logic;
SIGNAL \B[54]~input_o\ : std_logic;
SIGNAL \A[54]~input_o\ : std_logic;
SIGNAL \pg~72_combout\ : std_logic;
SIGNAL \S~54_combout\ : std_logic;
SIGNAL \ppn_carry:pg[54][0]~0_combout\ : std_logic;
SIGNAL \A[55]~input_o\ : std_logic;
SIGNAL \B[55]~input_o\ : std_logic;
SIGNAL \c_var~26_combout\ : std_logic;
SIGNAL \S~55_combout\ : std_logic;
SIGNAL \pg~74_combout\ : std_logic;
SIGNAL \pg~75_combout\ : std_logic;
SIGNAL \c_var~27_combout\ : std_logic;
SIGNAL \B[56]~input_o\ : std_logic;
SIGNAL \A[56]~input_o\ : std_logic;
SIGNAL \pg~78_combout\ : std_logic;
SIGNAL \pg~77_combout\ : std_logic;
SIGNAL \pg~79_combout\ : std_logic;
SIGNAL \pg~76_combout\ : std_logic;
SIGNAL \S~56_combout\ : std_logic;
SIGNAL \ppn_carry:pg[56][0]~0_combout\ : std_logic;
SIGNAL \A[57]~input_o\ : std_logic;
SIGNAL \B[57]~input_o\ : std_logic;
SIGNAL \S~57_combout\ : std_logic;
SIGNAL \pg~80_combout\ : std_logic;
SIGNAL \c_var~28_combout\ : std_logic;
SIGNAL \B[58]~input_o\ : std_logic;
SIGNAL \A[58]~input_o\ : std_logic;
SIGNAL \pg~81_combout\ : std_logic;
SIGNAL \S~58_combout\ : std_logic;
SIGNAL \A[59]~input_o\ : std_logic;
SIGNAL \B[59]~input_o\ : std_logic;
SIGNAL \ppn_carry:pg[58][0]~0_combout\ : std_logic;
SIGNAL \S~59_combout\ : std_logic;
SIGNAL \B[60]~input_o\ : std_logic;
SIGNAL \A[60]~input_o\ : std_logic;
SIGNAL \pg~82_combout\ : std_logic;
SIGNAL \pg~83_combout\ : std_logic;
SIGNAL \pg~86_combout\ : std_logic;
SIGNAL \c_var~29_combout\ : std_logic;
SIGNAL \S~60_combout\ : std_logic;
SIGNAL \B[61]~input_o\ : std_logic;
SIGNAL \ppn_carry:pg[60][0]~0_combout\ : std_logic;
SIGNAL \A[61]~input_o\ : std_logic;
SIGNAL \S~61_combout\ : std_logic;
SIGNAL \c_var~30_combout\ : std_logic;
SIGNAL \A[62]~input_o\ : std_logic;
SIGNAL \pg~85_combout\ : std_logic;
SIGNAL \B[62]~input_o\ : std_logic;
SIGNAL \pg~84_combout\ : std_logic;
SIGNAL \S~62_combout\ : std_logic;
SIGNAL \ppn_carry:pg[62][0]~0_combout\ : std_logic;
SIGNAL \B[63]~input_o\ : std_logic;
SIGNAL \c_var~31_combout\ : std_logic;
SIGNAL \A[63]~input_o\ : std_logic;
SIGNAL \S~63_combout\ : std_logic;
SIGNAL \c_var~33_combout\ : std_logic;
SIGNAL \c_var~34_combout\ : std_logic;
SIGNAL \c_var~36_combout\ : std_logic;
SIGNAL \c_var~32_combout\ : std_logic;
SIGNAL \c_var~35_combout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;
SIGNAL p : std_logic_vector(63 DOWNTO 0);
SIGNAL \ALT_INV_pg~33_combout\ : std_logic;
SIGNAL \ALT_INV_pg~40_combout\ : std_logic;
SIGNAL \ALT_INV_ppn_carry:pg[35][1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c_var~16_combout\ : std_logic;
SIGNAL \ALT_INV_pg~36_combout\ : std_logic;
SIGNAL \ALT_INV_pg~45_combout\ : std_logic;
SIGNAL \ALT_INV_ppn_carry:pg[34][0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_pg~26_combout\ : std_logic;
SIGNAL \ALT_INV_pg~22_combout\ : std_logic;
SIGNAL \ALT_INV_c_var~12_combout\ : std_logic;
SIGNAL \ALT_INV_pg~46_combout\ : std_logic;
SIGNAL \ALT_INV_pg~35_combout\ : std_logic;
SIGNAL \ALT_INV_ppn_carry:pg[36][0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_ppn_carry:pg[22][0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_pg~23_combout\ : std_logic;
SIGNAL \ALT_INV_c_var~11_combout\ : std_logic;
SIGNAL \ALT_INV_pg~31_combout\ : std_logic;
SIGNAL \ALT_INV_ppn_carry:pg[20][0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c_var~9_combout\ : std_logic;
SIGNAL \ALT_INV_pg~25_combout\ : std_logic;
SIGNAL ALT_INV_p : std_logic_vector(58 DOWNTO 6);
SIGNAL \ALT_INV_c_var~10_combout\ : std_logic;
SIGNAL \ALT_INV_ppn_carry:pg[26][0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_ppn_carry:pg[24][0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c_var~13_combout\ : std_logic;
SIGNAL \ALT_INV_ppn_carry:c_var[30]~0_combout\ : std_logic;
SIGNAL \ALT_INV_pg~39_combout\ : std_logic;
SIGNAL \ALT_INV_ppn_carry:pg[30][0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_pg~41_combout\ : std_logic;
SIGNAL \ALT_INV_pg~43_combout\ : std_logic;
SIGNAL \ALT_INV_pg~44_combout\ : std_logic;
SIGNAL \ALT_INV_pg~34_combout\ : std_logic;
SIGNAL \ALT_INV_pg~38_combout\ : std_logic;
SIGNAL \ALT_INV_pg~42_combout\ : std_logic;
SIGNAL \ALT_INV_pg~29_combout\ : std_logic;
SIGNAL \ALT_INV_pg~27_combout\ : std_logic;
SIGNAL \ALT_INV_ppn_carry:pg[28][0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c_var~14_combout\ : std_logic;
SIGNAL \ALT_INV_pg~30_combout\ : std_logic;
SIGNAL \ALT_INV_pg~37_combout\ : std_logic;
SIGNAL \ALT_INV_c_var~15_combout\ : std_logic;
SIGNAL \ALT_INV_ppn_carry:pg[32][0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_pg~28_combout\ : std_logic;
SIGNAL \ALT_INV_pg~24_combout\ : std_logic;
SIGNAL \ALT_INV_pg~32_combout\ : std_logic;
SIGNAL \ALT_INV_c_var~22_combout\ : std_logic;
SIGNAL \ALT_INV_pg~64_combout\ : std_logic;
SIGNAL \ALT_INV_pg~67_combout\ : std_logic;
SIGNAL \ALT_INV_c_var~23_combout\ : std_logic;
SIGNAL \ALT_INV_ppn_carry:pg[50][0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c_var~24_combout\ : std_logic;
SIGNAL \ALT_INV_ppn_carry:pg[52][0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_ppn_carry:c_var[46]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c_var~18_combout\ : std_logic;
SIGNAL \ALT_INV_pg~65_combout\ : std_logic;
SIGNAL \ALT_INV_pg~66_combout\ : std_logic;
SIGNAL \ALT_INV_pg~70_combout\ : std_logic;
SIGNAL \ALT_INV_pg~60_combout\ : std_logic;
SIGNAL \ALT_INV_pg~71_combout\ : std_logic;
SIGNAL \ALT_INV_pg~50_combout\ : std_logic;
SIGNAL \ALT_INV_pg~47_combout\ : std_logic;
SIGNAL \ALT_INV_c_var~17_combout\ : std_logic;
SIGNAL \ALT_INV_c_var~21_combout\ : std_logic;
SIGNAL \ALT_INV_ppn_carry:pg[38][0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_pg~63_combout\ : std_logic;
SIGNAL \ALT_INV_ppn_carry:pg[48][0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_pg~68_combout\ : std_logic;
SIGNAL \ALT_INV_pg~69_combout\ : std_logic;
SIGNAL \ALT_INV_pg~72_combout\ : std_logic;
SIGNAL \ALT_INV_c_var~25_combout\ : std_logic;
SIGNAL \ALT_INV_pg~73_combout\ : std_logic;
SIGNAL \ALT_INV_pg~51_combout\ : std_logic;
SIGNAL \ALT_INV_ppn_carry:pg[40][0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_pg~55_combout\ : std_logic;
SIGNAL \ALT_INV_c_var~19_combout\ : std_logic;
SIGNAL \ALT_INV_pg~48_combout\ : std_logic;
SIGNAL \ALT_INV_pg~54_combout\ : std_logic;
SIGNAL \ALT_INV_pg~52_combout\ : std_logic;
SIGNAL \ALT_INV_pg~56_combout\ : std_logic;
SIGNAL \ALT_INV_pg~57_combout\ : std_logic;
SIGNAL \ALT_INV_pg~58_combout\ : std_logic;
SIGNAL \ALT_INV_ppn_carry:pg[44][0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_pg~53_combout\ : std_logic;
SIGNAL \ALT_INV_pg~59_combout\ : std_logic;
SIGNAL \ALT_INV_c_var~20_combout\ : std_logic;
SIGNAL \ALT_INV_pg~61_combout\ : std_logic;
SIGNAL \ALT_INV_ppn_carry:pg[46][0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_pg~49_combout\ : std_logic;
SIGNAL \ALT_INV_ppn_carry:pg[42][0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_pg~62_combout\ : std_logic;
SIGNAL \ALT_INV_ppn_carry:pg[1][0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c_var~0_combout\ : std_logic;
SIGNAL \ALT_INV_pg~17_combout\ : std_logic;
SIGNAL \ALT_INV_c_var~8_combout\ : std_logic;
SIGNAL \ALT_INV_ppn_carry:pg[16][0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_pg~19_combout\ : std_logic;
SIGNAL \ALT_INV_ppn_carry:pg[7][1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_pg~20_combout\ : std_logic;
SIGNAL \ALT_INV_pg~1_combout\ : std_logic;
SIGNAL \ALT_INV_pg~6_combout\ : std_logic;
SIGNAL \ALT_INV_ppn_carry:pg[19][1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_pg~0_combout\ : std_logic;
SIGNAL \ALT_INV_ppn_carry:pg[4][0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_pg~21_combout\ : std_logic;
SIGNAL \ALT_INV_pg~18_combout\ : std_logic;
SIGNAL \ALT_INV_ppn_carry:pg[18][0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_pg~2_combout\ : std_logic;
SIGNAL \ALT_INV_pg~3_combout\ : std_logic;
SIGNAL \ALT_INV_c_var~4_combout\ : std_logic;
SIGNAL \ALT_INV_pg~7_combout\ : std_logic;
SIGNAL \ALT_INV_pg~10_combout\ : std_logic;
SIGNAL \ALT_INV_ppn_carry:pg[8][0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_ppn_carry:pg[12][0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c_var~6_combout\ : std_logic;
SIGNAL \ALT_INV_c_var~7_combout\ : std_logic;
SIGNAL \ALT_INV_pg~14_combout\ : std_logic;
SIGNAL \ALT_INV_c_var~2_combout\ : std_logic;
SIGNAL \ALT_INV_c_var~1_combout\ : std_logic;
SIGNAL \ALT_INV_c_var~3_combout\ : std_logic;
SIGNAL \ALT_INV_pg~8_combout\ : std_logic;
SIGNAL \ALT_INV_ppn_carry:pg[10][0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_pg~11_combout\ : std_logic;
SIGNAL \ALT_INV_pg~12_combout\ : std_logic;
SIGNAL \ALT_INV_c_var~5_combout\ : std_logic;
SIGNAL \ALT_INV_ppn_carry:pg[14][0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_ppn_carry:pg[6][0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_pg~13_combout\ : std_logic;
SIGNAL \ALT_INV_pg~9_combout\ : std_logic;
SIGNAL \ALT_INV_pg~15_combout\ : std_logic;
SIGNAL \ALT_INV_ppn_carry:pg[7][1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_pg~5_combout\ : std_logic;
SIGNAL \ALT_INV_pg~16_combout\ : std_logic;
SIGNAL \ALT_INV_pg~4_combout\ : std_logic;
SIGNAL \ALT_INV_pg~74_combout\ : std_logic;
SIGNAL \ALT_INV_pg~76_combout\ : std_logic;
SIGNAL \ALT_INV_ppn_carry:pg[60][0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_ppn_carry:pg[62][0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_pg~86_combout\ : std_logic;
SIGNAL \ALT_INV_c_var~29_combout\ : std_logic;
SIGNAL \ALT_INV_ppn_carry:pg[54][0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_pg~89_combout\ : std_logic;
SIGNAL \ALT_INV_pg~78_combout\ : std_logic;
SIGNAL \ALT_INV_ppn_carry:pg[56][0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_pg~80_combout\ : std_logic;
SIGNAL \ALT_INV_ppn_carry:pg[58][0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_c_var~31_combout\ : std_logic;
SIGNAL \ALT_INV_pg~82_combout\ : std_logic;
SIGNAL \ALT_INV_pg~83_combout\ : std_logic;
SIGNAL \ALT_INV_c_var~33_combout\ : std_logic;
SIGNAL \ALT_INV_pg~81_combout\ : std_logic;
SIGNAL \ALT_INV_c_var~28_combout\ : std_logic;
SIGNAL \ALT_INV_c_var~34_combout\ : std_logic;
SIGNAL \ALT_INV_pg~90_combout\ : std_logic;
SIGNAL \ALT_INV_c_var~30_combout\ : std_logic;
SIGNAL \ALT_INV_c_var~32_combout\ : std_logic;
SIGNAL \ALT_INV_pg~79_combout\ : std_logic;
SIGNAL \ALT_INV_c_var~26_combout\ : std_logic;
SIGNAL \ALT_INV_pg~84_combout\ : std_logic;
SIGNAL \ALT_INV_pg~92_combout\ : std_logic;
SIGNAL \ALT_INV_pg~88_combout\ : std_logic;
SIGNAL \ALT_INV_c_var~27_combout\ : std_logic;
SIGNAL \ALT_INV_c_var~35_combout\ : std_logic;
SIGNAL \ALT_INV_c_var~36_combout\ : std_logic;
SIGNAL \ALT_INV_pg~75_combout\ : std_logic;
SIGNAL \ALT_INV_pg~87_combout\ : std_logic;
SIGNAL \ALT_INV_pg~91_combout\ : std_logic;
SIGNAL \ALT_INV_pg~93_combout\ : std_logic;
SIGNAL \ALT_INV_pg~77_combout\ : std_logic;
SIGNAL \ALT_INV_pg~85_combout\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Cin~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[32]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[32]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[35]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[35]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[36]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[33]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[33]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[34]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[37]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[37]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[34]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[38]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[38]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[36]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[39]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[41]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[44]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[48]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[55]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[56]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[56]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[58]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[43]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[63]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[45]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[49]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[42]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[51]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[41]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[47]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[45]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[49]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[40]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[43]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[53]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[53]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[54]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[57]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[52]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[59]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[47]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[50]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[60]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[58]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[61]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[63]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[54]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[39]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[51]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[40]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[52]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[59]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[44]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[46]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[48]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[55]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[57]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[46]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[60]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[61]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[62]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[50]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[42]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[62]~input_o\ : std_logic;

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
\ALT_INV_pg~33_combout\ <= NOT \pg~33_combout\;
\ALT_INV_pg~40_combout\ <= NOT \pg~40_combout\;
\ALT_INV_ppn_carry:pg[35][1]~0_combout\ <= NOT \ppn_carry:pg[35][1]~0_combout\;
\ALT_INV_c_var~16_combout\ <= NOT \c_var~16_combout\;
\ALT_INV_pg~36_combout\ <= NOT \pg~36_combout\;
\ALT_INV_pg~45_combout\ <= NOT \pg~45_combout\;
\ALT_INV_ppn_carry:pg[34][0]~0_combout\ <= NOT \ppn_carry:pg[34][0]~0_combout\;
\ALT_INV_pg~26_combout\ <= NOT \pg~26_combout\;
\ALT_INV_pg~22_combout\ <= NOT \pg~22_combout\;
\ALT_INV_c_var~12_combout\ <= NOT \c_var~12_combout\;
\ALT_INV_pg~46_combout\ <= NOT \pg~46_combout\;
\ALT_INV_pg~35_combout\ <= NOT \pg~35_combout\;
\ALT_INV_ppn_carry:pg[36][0]~0_combout\ <= NOT \ppn_carry:pg[36][0]~0_combout\;
\ALT_INV_ppn_carry:pg[22][0]~0_combout\ <= NOT \ppn_carry:pg[22][0]~0_combout\;
\ALT_INV_pg~23_combout\ <= NOT \pg~23_combout\;
\ALT_INV_c_var~11_combout\ <= NOT \c_var~11_combout\;
\ALT_INV_pg~31_combout\ <= NOT \pg~31_combout\;
\ALT_INV_ppn_carry:pg[20][0]~0_combout\ <= NOT \ppn_carry:pg[20][0]~0_combout\;
\ALT_INV_c_var~9_combout\ <= NOT \c_var~9_combout\;
\ALT_INV_pg~25_combout\ <= NOT \pg~25_combout\;
ALT_INV_p(26) <= NOT p(26);
\ALT_INV_c_var~10_combout\ <= NOT \c_var~10_combout\;
\ALT_INV_ppn_carry:pg[26][0]~0_combout\ <= NOT \ppn_carry:pg[26][0]~0_combout\;
\ALT_INV_ppn_carry:pg[24][0]~0_combout\ <= NOT \ppn_carry:pg[24][0]~0_combout\;
\ALT_INV_c_var~13_combout\ <= NOT \c_var~13_combout\;
\ALT_INV_ppn_carry:c_var[30]~0_combout\ <= NOT \ppn_carry:c_var[30]~0_combout\;
\ALT_INV_pg~39_combout\ <= NOT \pg~39_combout\;
\ALT_INV_ppn_carry:pg[30][0]~0_combout\ <= NOT \ppn_carry:pg[30][0]~0_combout\;
\ALT_INV_pg~41_combout\ <= NOT \pg~41_combout\;
ALT_INV_p(34) <= NOT p(34);
\ALT_INV_pg~43_combout\ <= NOT \pg~43_combout\;
\ALT_INV_pg~44_combout\ <= NOT \pg~44_combout\;
\ALT_INV_pg~34_combout\ <= NOT \pg~34_combout\;
\ALT_INV_pg~38_combout\ <= NOT \pg~38_combout\;
\ALT_INV_pg~42_combout\ <= NOT \pg~42_combout\;
\ALT_INV_pg~29_combout\ <= NOT \pg~29_combout\;
\ALT_INV_pg~27_combout\ <= NOT \pg~27_combout\;
\ALT_INV_ppn_carry:pg[28][0]~0_combout\ <= NOT \ppn_carry:pg[28][0]~0_combout\;
\ALT_INV_c_var~14_combout\ <= NOT \c_var~14_combout\;
\ALT_INV_pg~30_combout\ <= NOT \pg~30_combout\;
\ALT_INV_pg~37_combout\ <= NOT \pg~37_combout\;
\ALT_INV_c_var~15_combout\ <= NOT \c_var~15_combout\;
\ALT_INV_ppn_carry:pg[32][0]~0_combout\ <= NOT \ppn_carry:pg[32][0]~0_combout\;
\ALT_INV_pg~28_combout\ <= NOT \pg~28_combout\;
\ALT_INV_pg~24_combout\ <= NOT \pg~24_combout\;
\ALT_INV_pg~32_combout\ <= NOT \pg~32_combout\;
\ALT_INV_c_var~22_combout\ <= NOT \c_var~22_combout\;
\ALT_INV_pg~64_combout\ <= NOT \pg~64_combout\;
\ALT_INV_pg~67_combout\ <= NOT \pg~67_combout\;
\ALT_INV_c_var~23_combout\ <= NOT \c_var~23_combout\;
\ALT_INV_ppn_carry:pg[50][0]~0_combout\ <= NOT \ppn_carry:pg[50][0]~0_combout\;
\ALT_INV_c_var~24_combout\ <= NOT \c_var~24_combout\;
\ALT_INV_ppn_carry:pg[52][0]~0_combout\ <= NOT \ppn_carry:pg[52][0]~0_combout\;
\ALT_INV_ppn_carry:c_var[46]~0_combout\ <= NOT \ppn_carry:c_var[46]~0_combout\;
\ALT_INV_c_var~18_combout\ <= NOT \c_var~18_combout\;
\ALT_INV_pg~65_combout\ <= NOT \pg~65_combout\;
\ALT_INV_pg~66_combout\ <= NOT \pg~66_combout\;
\ALT_INV_pg~70_combout\ <= NOT \pg~70_combout\;
\ALT_INV_pg~60_combout\ <= NOT \pg~60_combout\;
\ALT_INV_pg~71_combout\ <= NOT \pg~71_combout\;
\ALT_INV_pg~50_combout\ <= NOT \pg~50_combout\;
\ALT_INV_pg~47_combout\ <= NOT \pg~47_combout\;
\ALT_INV_c_var~17_combout\ <= NOT \c_var~17_combout\;
ALT_INV_p(42) <= NOT p(42);
\ALT_INV_c_var~21_combout\ <= NOT \c_var~21_combout\;
\ALT_INV_ppn_carry:pg[38][0]~0_combout\ <= NOT \ppn_carry:pg[38][0]~0_combout\;
\ALT_INV_pg~63_combout\ <= NOT \pg~63_combout\;
\ALT_INV_ppn_carry:pg[48][0]~0_combout\ <= NOT \ppn_carry:pg[48][0]~0_combout\;
ALT_INV_p(50) <= NOT p(50);
\ALT_INV_pg~68_combout\ <= NOT \pg~68_combout\;
\ALT_INV_pg~69_combout\ <= NOT \pg~69_combout\;
\ALT_INV_pg~72_combout\ <= NOT \pg~72_combout\;
\ALT_INV_c_var~25_combout\ <= NOT \c_var~25_combout\;
\ALT_INV_pg~73_combout\ <= NOT \pg~73_combout\;
\ALT_INV_pg~51_combout\ <= NOT \pg~51_combout\;
\ALT_INV_ppn_carry:pg[40][0]~0_combout\ <= NOT \ppn_carry:pg[40][0]~0_combout\;
\ALT_INV_pg~55_combout\ <= NOT \pg~55_combout\;
\ALT_INV_c_var~19_combout\ <= NOT \c_var~19_combout\;
\ALT_INV_pg~48_combout\ <= NOT \pg~48_combout\;
\ALT_INV_pg~54_combout\ <= NOT \pg~54_combout\;
\ALT_INV_pg~52_combout\ <= NOT \pg~52_combout\;
\ALT_INV_pg~56_combout\ <= NOT \pg~56_combout\;
\ALT_INV_pg~57_combout\ <= NOT \pg~57_combout\;
\ALT_INV_pg~58_combout\ <= NOT \pg~58_combout\;
\ALT_INV_ppn_carry:pg[44][0]~0_combout\ <= NOT \ppn_carry:pg[44][0]~0_combout\;
\ALT_INV_pg~53_combout\ <= NOT \pg~53_combout\;
\ALT_INV_pg~59_combout\ <= NOT \pg~59_combout\;
\ALT_INV_c_var~20_combout\ <= NOT \c_var~20_combout\;
\ALT_INV_pg~61_combout\ <= NOT \pg~61_combout\;
\ALT_INV_ppn_carry:pg[46][0]~0_combout\ <= NOT \ppn_carry:pg[46][0]~0_combout\;
\ALT_INV_pg~49_combout\ <= NOT \pg~49_combout\;
\ALT_INV_ppn_carry:pg[42][0]~0_combout\ <= NOT \ppn_carry:pg[42][0]~0_combout\;
\ALT_INV_pg~62_combout\ <= NOT \pg~62_combout\;
\ALT_INV_ppn_carry:pg[1][0]~0_combout\ <= NOT \ppn_carry:pg[1][0]~0_combout\;
\ALT_INV_c_var~0_combout\ <= NOT \c_var~0_combout\;
\ALT_INV_pg~17_combout\ <= NOT \pg~17_combout\;
\ALT_INV_c_var~8_combout\ <= NOT \c_var~8_combout\;
\ALT_INV_ppn_carry:pg[16][0]~0_combout\ <= NOT \ppn_carry:pg[16][0]~0_combout\;
ALT_INV_p(18) <= NOT p(18);
\ALT_INV_pg~19_combout\ <= NOT \pg~19_combout\;
\ALT_INV_ppn_carry:pg[7][1]~1_combout\ <= NOT \ppn_carry:pg[7][1]~1_combout\;
\ALT_INV_pg~20_combout\ <= NOT \pg~20_combout\;
\ALT_INV_pg~1_combout\ <= NOT \pg~1_combout\;
\ALT_INV_pg~6_combout\ <= NOT \pg~6_combout\;
\ALT_INV_ppn_carry:pg[19][1]~0_combout\ <= NOT \ppn_carry:pg[19][1]~0_combout\;
\ALT_INV_pg~0_combout\ <= NOT \pg~0_combout\;
\ALT_INV_ppn_carry:pg[4][0]~0_combout\ <= NOT \ppn_carry:pg[4][0]~0_combout\;
ALT_INV_p(10) <= NOT p(10);
\ALT_INV_pg~21_combout\ <= NOT \pg~21_combout\;
\ALT_INV_pg~18_combout\ <= NOT \pg~18_combout\;
\ALT_INV_ppn_carry:pg[18][0]~0_combout\ <= NOT \ppn_carry:pg[18][0]~0_combout\;
\ALT_INV_pg~2_combout\ <= NOT \pg~2_combout\;
\ALT_INV_pg~3_combout\ <= NOT \pg~3_combout\;
\ALT_INV_c_var~4_combout\ <= NOT \c_var~4_combout\;
\ALT_INV_pg~7_combout\ <= NOT \pg~7_combout\;
\ALT_INV_pg~10_combout\ <= NOT \pg~10_combout\;
\ALT_INV_ppn_carry:pg[8][0]~0_combout\ <= NOT \ppn_carry:pg[8][0]~0_combout\;
\ALT_INV_ppn_carry:pg[12][0]~0_combout\ <= NOT \ppn_carry:pg[12][0]~0_combout\;
\ALT_INV_c_var~6_combout\ <= NOT \c_var~6_combout\;
\ALT_INV_c_var~7_combout\ <= NOT \c_var~7_combout\;
\ALT_INV_pg~14_combout\ <= NOT \pg~14_combout\;
\ALT_INV_c_var~2_combout\ <= NOT \c_var~2_combout\;
\ALT_INV_c_var~1_combout\ <= NOT \c_var~1_combout\;
\ALT_INV_c_var~3_combout\ <= NOT \c_var~3_combout\;
\ALT_INV_pg~8_combout\ <= NOT \pg~8_combout\;
\ALT_INV_ppn_carry:pg[10][0]~0_combout\ <= NOT \ppn_carry:pg[10][0]~0_combout\;
\ALT_INV_pg~11_combout\ <= NOT \pg~11_combout\;
\ALT_INV_pg~12_combout\ <= NOT \pg~12_combout\;
\ALT_INV_c_var~5_combout\ <= NOT \c_var~5_combout\;
\ALT_INV_ppn_carry:pg[14][0]~0_combout\ <= NOT \ppn_carry:pg[14][0]~0_combout\;
\ALT_INV_ppn_carry:pg[6][0]~0_combout\ <= NOT \ppn_carry:pg[6][0]~0_combout\;
ALT_INV_p(6) <= NOT p(6);
\ALT_INV_pg~13_combout\ <= NOT \pg~13_combout\;
\ALT_INV_pg~9_combout\ <= NOT \pg~9_combout\;
\ALT_INV_pg~15_combout\ <= NOT \pg~15_combout\;
\ALT_INV_ppn_carry:pg[7][1]~0_combout\ <= NOT \ppn_carry:pg[7][1]~0_combout\;
\ALT_INV_pg~5_combout\ <= NOT \pg~5_combout\;
\ALT_INV_pg~16_combout\ <= NOT \pg~16_combout\;
\ALT_INV_pg~4_combout\ <= NOT \pg~4_combout\;
\ALT_INV_pg~74_combout\ <= NOT \pg~74_combout\;
\ALT_INV_pg~76_combout\ <= NOT \pg~76_combout\;
\ALT_INV_ppn_carry:pg[60][0]~0_combout\ <= NOT \ppn_carry:pg[60][0]~0_combout\;
\ALT_INV_ppn_carry:pg[62][0]~0_combout\ <= NOT \ppn_carry:pg[62][0]~0_combout\;
\ALT_INV_pg~86_combout\ <= NOT \pg~86_combout\;
\ALT_INV_c_var~29_combout\ <= NOT \c_var~29_combout\;
\ALT_INV_ppn_carry:pg[54][0]~0_combout\ <= NOT \ppn_carry:pg[54][0]~0_combout\;
\ALT_INV_pg~89_combout\ <= NOT \pg~89_combout\;
\ALT_INV_pg~78_combout\ <= NOT \pg~78_combout\;
\ALT_INV_ppn_carry:pg[56][0]~0_combout\ <= NOT \ppn_carry:pg[56][0]~0_combout\;
\ALT_INV_pg~80_combout\ <= NOT \pg~80_combout\;
\ALT_INV_ppn_carry:pg[58][0]~0_combout\ <= NOT \ppn_carry:pg[58][0]~0_combout\;
\ALT_INV_c_var~31_combout\ <= NOT \c_var~31_combout\;
\ALT_INV_pg~82_combout\ <= NOT \pg~82_combout\;
\ALT_INV_pg~83_combout\ <= NOT \pg~83_combout\;
\ALT_INV_c_var~33_combout\ <= NOT \c_var~33_combout\;
\ALT_INV_pg~81_combout\ <= NOT \pg~81_combout\;
\ALT_INV_c_var~28_combout\ <= NOT \c_var~28_combout\;
\ALT_INV_c_var~34_combout\ <= NOT \c_var~34_combout\;
\ALT_INV_pg~90_combout\ <= NOT \pg~90_combout\;
\ALT_INV_c_var~30_combout\ <= NOT \c_var~30_combout\;
\ALT_INV_c_var~32_combout\ <= NOT \c_var~32_combout\;
\ALT_INV_pg~79_combout\ <= NOT \pg~79_combout\;
\ALT_INV_c_var~26_combout\ <= NOT \c_var~26_combout\;
ALT_INV_p(58) <= NOT p(58);
\ALT_INV_pg~84_combout\ <= NOT \pg~84_combout\;
\ALT_INV_pg~92_combout\ <= NOT \pg~92_combout\;
\ALT_INV_pg~88_combout\ <= NOT \pg~88_combout\;
\ALT_INV_c_var~27_combout\ <= NOT \c_var~27_combout\;
\ALT_INV_c_var~35_combout\ <= NOT \c_var~35_combout\;
\ALT_INV_c_var~36_combout\ <= NOT \c_var~36_combout\;
\ALT_INV_pg~75_combout\ <= NOT \pg~75_combout\;
\ALT_INV_pg~87_combout\ <= NOT \pg~87_combout\;
\ALT_INV_pg~91_combout\ <= NOT \pg~91_combout\;
\ALT_INV_pg~93_combout\ <= NOT \pg~93_combout\;
\ALT_INV_pg~77_combout\ <= NOT \pg~77_combout\;
\ALT_INV_pg~85_combout\ <= NOT \pg~85_combout\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_B[6]~input_o\ <= NOT \B[6]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_Cin~input_o\ <= NOT \Cin~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_B[5]~input_o\ <= NOT \B[5]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[5]~input_o\ <= NOT \A[5]~input_o\;
\ALT_INV_A[6]~input_o\ <= NOT \A[6]~input_o\;
\ALT_INV_A[26]~input_o\ <= NOT \A[26]~input_o\;
\ALT_INV_B[28]~input_o\ <= NOT \B[28]~input_o\;
\ALT_INV_A[29]~input_o\ <= NOT \A[29]~input_o\;
\ALT_INV_B[31]~input_o\ <= NOT \B[31]~input_o\;
\ALT_INV_A[32]~input_o\ <= NOT \A[32]~input_o\;
\ALT_INV_A[15]~input_o\ <= NOT \A[15]~input_o\;
\ALT_INV_A[24]~input_o\ <= NOT \A[24]~input_o\;
\ALT_INV_A[20]~input_o\ <= NOT \A[20]~input_o\;
\ALT_INV_A[30]~input_o\ <= NOT \A[30]~input_o\;
\ALT_INV_B[32]~input_o\ <= NOT \B[32]~input_o\;
\ALT_INV_B[17]~input_o\ <= NOT \B[17]~input_o\;
\ALT_INV_A[35]~input_o\ <= NOT \A[35]~input_o\;
\ALT_INV_A[14]~input_o\ <= NOT \A[14]~input_o\;
\ALT_INV_A[16]~input_o\ <= NOT \A[16]~input_o\;
\ALT_INV_B[35]~input_o\ <= NOT \B[35]~input_o\;
\ALT_INV_B[36]~input_o\ <= NOT \B[36]~input_o\;
\ALT_INV_A[17]~input_o\ <= NOT \A[17]~input_o\;
\ALT_INV_B[26]~input_o\ <= NOT \B[26]~input_o\;
\ALT_INV_A[31]~input_o\ <= NOT \A[31]~input_o\;
\ALT_INV_A[23]~input_o\ <= NOT \A[23]~input_o\;
\ALT_INV_A[27]~input_o\ <= NOT \A[27]~input_o\;
\ALT_INV_B[27]~input_o\ <= NOT \B[27]~input_o\;
\ALT_INV_A[33]~input_o\ <= NOT \A[33]~input_o\;
\ALT_INV_B[33]~input_o\ <= NOT \B[33]~input_o\;
\ALT_INV_A[25]~input_o\ <= NOT \A[25]~input_o\;
\ALT_INV_B[13]~input_o\ <= NOT \B[13]~input_o\;
\ALT_INV_A[34]~input_o\ <= NOT \A[34]~input_o\;
\ALT_INV_A[37]~input_o\ <= NOT \A[37]~input_o\;
\ALT_INV_A[13]~input_o\ <= NOT \A[13]~input_o\;
\ALT_INV_B[37]~input_o\ <= NOT \B[37]~input_o\;
\ALT_INV_B[7]~input_o\ <= NOT \B[7]~input_o\;
\ALT_INV_B[9]~input_o\ <= NOT \B[9]~input_o\;
\ALT_INV_A[12]~input_o\ <= NOT \A[12]~input_o\;
\ALT_INV_B[16]~input_o\ <= NOT \B[16]~input_o\;
\ALT_INV_B[20]~input_o\ <= NOT \B[20]~input_o\;
\ALT_INV_B[22]~input_o\ <= NOT \B[22]~input_o\;
\ALT_INV_A[10]~input_o\ <= NOT \A[10]~input_o\;
\ALT_INV_A[28]~input_o\ <= NOT \A[28]~input_o\;
\ALT_INV_B[29]~input_o\ <= NOT \B[29]~input_o\;
\ALT_INV_B[14]~input_o\ <= NOT \B[14]~input_o\;
\ALT_INV_B[30]~input_o\ <= NOT \B[30]~input_o\;
\ALT_INV_B[34]~input_o\ <= NOT \B[34]~input_o\;
\ALT_INV_B[19]~input_o\ <= NOT \B[19]~input_o\;
\ALT_INV_A[38]~input_o\ <= NOT \A[38]~input_o\;
\ALT_INV_A[21]~input_o\ <= NOT \A[21]~input_o\;
\ALT_INV_B[38]~input_o\ <= NOT \B[38]~input_o\;
\ALT_INV_B[8]~input_o\ <= NOT \B[8]~input_o\;
\ALT_INV_A[11]~input_o\ <= NOT \A[11]~input_o\;
\ALT_INV_B[15]~input_o\ <= NOT \B[15]~input_o\;
\ALT_INV_A[18]~input_o\ <= NOT \A[18]~input_o\;
\ALT_INV_B[25]~input_o\ <= NOT \B[25]~input_o\;
\ALT_INV_A[36]~input_o\ <= NOT \A[36]~input_o\;
\ALT_INV_A[22]~input_o\ <= NOT \A[22]~input_o\;
\ALT_INV_B[18]~input_o\ <= NOT \B[18]~input_o\;
\ALT_INV_A[7]~input_o\ <= NOT \A[7]~input_o\;
\ALT_INV_A[8]~input_o\ <= NOT \A[8]~input_o\;
\ALT_INV_A[9]~input_o\ <= NOT \A[9]~input_o\;
\ALT_INV_B[10]~input_o\ <= NOT \B[10]~input_o\;
\ALT_INV_B[12]~input_o\ <= NOT \B[12]~input_o\;
\ALT_INV_B[23]~input_o\ <= NOT \B[23]~input_o\;
\ALT_INV_B[21]~input_o\ <= NOT \B[21]~input_o\;
\ALT_INV_A[19]~input_o\ <= NOT \A[19]~input_o\;
\ALT_INV_B[24]~input_o\ <= NOT \B[24]~input_o\;
\ALT_INV_B[11]~input_o\ <= NOT \B[11]~input_o\;
\ALT_INV_B[39]~input_o\ <= NOT \B[39]~input_o\;
\ALT_INV_A[41]~input_o\ <= NOT \A[41]~input_o\;
\ALT_INV_A[44]~input_o\ <= NOT \A[44]~input_o\;
\ALT_INV_A[48]~input_o\ <= NOT \A[48]~input_o\;
\ALT_INV_A[55]~input_o\ <= NOT \A[55]~input_o\;
\ALT_INV_A[56]~input_o\ <= NOT \A[56]~input_o\;
\ALT_INV_B[56]~input_o\ <= NOT \B[56]~input_o\;
\ALT_INV_A[58]~input_o\ <= NOT \A[58]~input_o\;
\ALT_INV_A[43]~input_o\ <= NOT \A[43]~input_o\;
\ALT_INV_A[63]~input_o\ <= NOT \A[63]~input_o\;
\ALT_INV_A[45]~input_o\ <= NOT \A[45]~input_o\;
\ALT_INV_A[49]~input_o\ <= NOT \A[49]~input_o\;
\ALT_INV_A[42]~input_o\ <= NOT \A[42]~input_o\;
\ALT_INV_B[51]~input_o\ <= NOT \B[51]~input_o\;
\ALT_INV_B[41]~input_o\ <= NOT \B[41]~input_o\;
\ALT_INV_B[47]~input_o\ <= NOT \B[47]~input_o\;
\ALT_INV_B[45]~input_o\ <= NOT \B[45]~input_o\;
\ALT_INV_B[49]~input_o\ <= NOT \B[49]~input_o\;
\ALT_INV_B[40]~input_o\ <= NOT \B[40]~input_o\;
\ALT_INV_B[43]~input_o\ <= NOT \B[43]~input_o\;
\ALT_INV_A[53]~input_o\ <= NOT \A[53]~input_o\;
\ALT_INV_B[53]~input_o\ <= NOT \B[53]~input_o\;
\ALT_INV_B[54]~input_o\ <= NOT \B[54]~input_o\;
\ALT_INV_B[57]~input_o\ <= NOT \B[57]~input_o\;
\ALT_INV_B[52]~input_o\ <= NOT \B[52]~input_o\;
\ALT_INV_B[59]~input_o\ <= NOT \B[59]~input_o\;
\ALT_INV_A[47]~input_o\ <= NOT \A[47]~input_o\;
\ALT_INV_A[50]~input_o\ <= NOT \A[50]~input_o\;
\ALT_INV_A[60]~input_o\ <= NOT \A[60]~input_o\;
\ALT_INV_B[58]~input_o\ <= NOT \B[58]~input_o\;
\ALT_INV_B[61]~input_o\ <= NOT \B[61]~input_o\;
\ALT_INV_B[63]~input_o\ <= NOT \B[63]~input_o\;
\ALT_INV_A[54]~input_o\ <= NOT \A[54]~input_o\;
\ALT_INV_A[39]~input_o\ <= NOT \A[39]~input_o\;
\ALT_INV_A[51]~input_o\ <= NOT \A[51]~input_o\;
\ALT_INV_A[40]~input_o\ <= NOT \A[40]~input_o\;
\ALT_INV_A[52]~input_o\ <= NOT \A[52]~input_o\;
\ALT_INV_A[59]~input_o\ <= NOT \A[59]~input_o\;
\ALT_INV_B[44]~input_o\ <= NOT \B[44]~input_o\;
\ALT_INV_A[46]~input_o\ <= NOT \A[46]~input_o\;
\ALT_INV_B[48]~input_o\ <= NOT \B[48]~input_o\;
\ALT_INV_B[55]~input_o\ <= NOT \B[55]~input_o\;
\ALT_INV_A[57]~input_o\ <= NOT \A[57]~input_o\;
\ALT_INV_B[46]~input_o\ <= NOT \B[46]~input_o\;
\ALT_INV_B[60]~input_o\ <= NOT \B[60]~input_o\;
\ALT_INV_A[61]~input_o\ <= NOT \A[61]~input_o\;
\ALT_INV_B[62]~input_o\ <= NOT \B[62]~input_o\;
\ALT_INV_B[50]~input_o\ <= NOT \B[50]~input_o\;
\ALT_INV_B[42]~input_o\ <= NOT \B[42]~input_o\;
\ALT_INV_A[62]~input_o\ <= NOT \A[62]~input_o\;

-- Location: IOOBUF_X59_Y9_N67
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

-- Location: IOOBUF_X59_Y12_N2
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

-- Location: IOOBUF_X59_Y9_N5
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

-- Location: IOOBUF_X59_Y12_N67
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

-- Location: IOOBUF_X59_Y15_N33
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

-- Location: IOOBUF_X59_Y13_N36
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

-- Location: IOOBUF_X59_Y15_N5
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

-- Location: IOOBUF_X59_Y13_N2
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

-- Location: IOOBUF_X59_Y21_N5
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

-- Location: IOOBUF_X59_Y23_N67
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

-- Location: IOOBUF_X59_Y19_N36
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

-- Location: IOOBUF_X59_Y23_N36
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

-- Location: IOOBUF_X59_Y18_N36
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

-- Location: IOOBUF_X59_Y18_N98
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

-- Location: IOOBUF_X59_Y18_N2
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

-- Location: IOOBUF_X59_Y18_N67
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

-- Location: IOOBUF_X49_Y56_N2
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

-- Location: IOOBUF_X51_Y56_N36
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

-- Location: IOOBUF_X56_Y56_N33
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

-- Location: IOOBUF_X49_Y56_N67
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

-- Location: IOOBUF_X53_Y56_N67
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

-- Location: IOOBUF_X51_Y56_N98
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

-- Location: IOOBUF_X59_Y51_N33
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

-- Location: IOOBUF_X59_Y49_N36
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

-- Location: IOOBUF_X55_Y56_N5
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

-- Location: IOOBUF_X59_Y51_N67
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

-- Location: IOOBUF_X59_Y30_N36
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

-- Location: IOOBUF_X59_Y37_N98
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

-- Location: IOOBUF_X59_Y36_N98
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

-- Location: IOOBUF_X59_Y36_N36
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

-- Location: IOOBUF_X59_Y26_N98
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

-- Location: IOOBUF_X59_Y28_N67
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

-- Location: IOOBUF_X59_Y33_N33
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

-- Location: IOOBUF_X59_Y31_N98
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

-- Location: IOOBUF_X59_Y30_N98
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

-- Location: IOOBUF_X59_Y33_N5
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

-- Location: IOOBUF_X59_Y39_N67
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

-- Location: IOOBUF_X59_Y48_N98
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

-- Location: IOOBUF_X59_Y26_N67
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

-- Location: IOOBUF_X59_Y28_N2
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

-- Location: IOOBUF_X40_Y56_N67
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

-- Location: IOOBUF_X42_Y56_N98
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

-- Location: IOOBUF_X38_Y56_N2
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

-- Location: IOOBUF_X37_Y0_N2
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

-- Location: IOOBUF_X44_Y56_N67
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

-- Location: IOOBUF_X48_Y56_N33
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

-- Location: IOOBUF_X42_Y56_N2
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

-- Location: IOOBUF_X46_Y56_N2
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

-- Location: IOOBUF_X35_Y56_N98
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

-- Location: IOOBUF_X35_Y56_N36
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

-- Location: IOOBUF_X59_Y33_N67
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

-- Location: IOOBUF_X36_Y56_N98
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

-- Location: IOOBUF_X25_Y56_N98
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

-- Location: IOOBUF_X21_Y56_N36
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

-- Location: IOOBUF_X21_Y56_N98
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

-- Location: IOOBUF_X15_Y56_N98
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

-- Location: IOOBUF_X19_Y56_N98
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

-- Location: IOOBUF_X15_Y56_N36
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

-- Location: IOOBUF_X17_Y56_N5
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

-- Location: IOOBUF_X21_Y56_N67
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

-- Location: IOOBUF_X33_Y56_N33
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

-- Location: IOOBUF_X19_Y56_N67
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

-- Location: IOOBUF_X30_Y56_N98
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

-- Location: IOOBUF_X28_Y56_N67
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

-- Location: IOOBUF_X31_Y56_N36
\Cout~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c_var~35_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X31_Y56_N2
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

-- Location: IOIBUF_X59_Y10_N1
\B[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X59_Y12_N32
\A[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X59_Y10_N94
\Cin~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: LABCELL_X58_Y12_N20
\S~0\ : arriaii_lcell_comb
-- Equation(s):
-- \S~0_combout\ = ( \A[0]~input_o\ & ( \Cin~input_o\ & ( \B[0]~input_o\ ) ) ) # ( !\A[0]~input_o\ & ( \Cin~input_o\ & ( !\B[0]~input_o\ ) ) ) # ( \A[0]~input_o\ & ( !\Cin~input_o\ & ( !\B[0]~input_o\ ) ) ) # ( !\A[0]~input_o\ & ( !\Cin~input_o\ & ( 
-- \B[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011110011001100110011001100110011000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_Cin~input_o\,
	combout => \S~0_combout\);

-- Location: IOIBUF_X59_Y9_N32
\B[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X59_Y9_N94
\A[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LABCELL_X58_Y12_N6
\S~1\ : arriaii_lcell_comb
-- Equation(s):
-- \S~1_combout\ = ( \A[0]~input_o\ & ( \Cin~input_o\ & ( !\B[1]~input_o\ $ (\A[1]~input_o\) ) ) ) # ( !\A[0]~input_o\ & ( \Cin~input_o\ & ( !\B[1]~input_o\ $ (!\B[0]~input_o\ $ (\A[1]~input_o\)) ) ) ) # ( \A[0]~input_o\ & ( !\Cin~input_o\ & ( 
-- !\B[1]~input_o\ $ (!\B[0]~input_o\ $ (\A[1]~input_o\)) ) ) ) # ( !\A[0]~input_o\ & ( !\Cin~input_o\ & ( !\B[1]~input_o\ $ (!\A[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010110101010010101011010101001011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	datae => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_Cin~input_o\,
	combout => \S~1_combout\);

-- Location: LABCELL_X58_Y12_N10
\ppn_carry:pg[1][0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[1][0]~0_combout\ = ( \A[0]~input_o\ & ( \B[0]~input_o\ & ( (\A[1]~input_o\) # (\B[1]~input_o\) ) ) ) # ( !\A[0]~input_o\ & ( \B[0]~input_o\ & ( (\B[1]~input_o\ & \A[1]~input_o\) ) ) ) # ( \A[0]~input_o\ & ( !\B[0]~input_o\ & ( 
-- (\B[1]~input_o\ & \A[1]~input_o\) ) ) ) # ( !\A[0]~input_o\ & ( !\B[0]~input_o\ & ( (\B[1]~input_o\ & \A[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	datae => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \ppn_carry:pg[1][0]~0_combout\);

-- Location: LABCELL_X58_Y12_N12
\c_var~0\ : arriaii_lcell_comb
-- Equation(s):
-- \c_var~0_combout\ = ( \A[0]~input_o\ & ( \Cin~input_o\ & ( (!\B[0]~input_o\ & (!\A[1]~input_o\ $ (!\B[1]~input_o\))) ) ) ) # ( !\A[0]~input_o\ & ( \Cin~input_o\ & ( (\B[0]~input_o\ & (!\A[1]~input_o\ $ (!\B[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010010000100100100100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_Cin~input_o\,
	combout => \c_var~0_combout\);

-- Location: IOIBUF_X59_Y10_N32
\B[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X59_Y12_N94
\A[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LABCELL_X58_Y12_N38
\S~2\ : arriaii_lcell_comb
-- Equation(s):
-- \S~2_combout\ = ( \B[2]~input_o\ & ( \A[2]~input_o\ & ( (\c_var~0_combout\) # (\ppn_carry:pg[1][0]~0_combout\) ) ) ) # ( !\B[2]~input_o\ & ( \A[2]~input_o\ & ( (!\ppn_carry:pg[1][0]~0_combout\ & !\c_var~0_combout\) ) ) ) # ( \B[2]~input_o\ & ( 
-- !\A[2]~input_o\ & ( (!\ppn_carry:pg[1][0]~0_combout\ & !\c_var~0_combout\) ) ) ) # ( !\B[2]~input_o\ & ( !\A[2]~input_o\ & ( (\c_var~0_combout\) # (\ppn_carry:pg[1][0]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111110011000000000011001100000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ppn_carry:pg[1][0]~0_combout\,
	datad => \ALT_INV_c_var~0_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \S~2_combout\);

-- Location: IOIBUF_X59_Y10_N63
\A[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X59_Y13_N94
\B[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LABCELL_X58_Y12_N0
\S~3\ : arriaii_lcell_comb
-- Equation(s):
-- \S~3_combout\ = ( \B[3]~input_o\ & ( \ppn_carry:pg[1][0]~0_combout\ & ( !\A[3]~input_o\ $ (((\B[2]~input_o\) # (\A[2]~input_o\))) ) ) ) # ( !\B[3]~input_o\ & ( \ppn_carry:pg[1][0]~0_combout\ & ( !\A[3]~input_o\ $ (((!\A[2]~input_o\ & !\B[2]~input_o\))) ) 
-- ) ) # ( \B[3]~input_o\ & ( !\ppn_carry:pg[1][0]~0_combout\ & ( !\A[3]~input_o\ $ (((!\A[2]~input_o\ & (\B[2]~input_o\ & \c_var~0_combout\)) # (\A[2]~input_o\ & ((\c_var~0_combout\) # (\B[2]~input_o\))))) ) ) ) # ( !\B[3]~input_o\ & ( 
-- !\ppn_carry:pg[1][0]~0_combout\ & ( !\A[3]~input_o\ $ (((!\A[2]~input_o\ & ((!\B[2]~input_o\) # (!\c_var~0_combout\))) # (\A[2]~input_o\ & (!\B[2]~input_o\ & !\c_var~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011111101000111010000001011101110111100010001000100001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_c_var~0_combout\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_ppn_carry:pg[1][0]~0_combout\,
	combout => \S~3_combout\);

-- Location: LABCELL_X58_Y12_N30
\pg~1\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~1_combout\ = ( \B[3]~input_o\ & ( \ppn_carry:pg[1][0]~0_combout\ & ( (!\A[3]~input_o\ & (!\B[2]~input_o\ $ (!\A[2]~input_o\))) ) ) ) # ( !\B[3]~input_o\ & ( \ppn_carry:pg[1][0]~0_combout\ & ( (\A[3]~input_o\ & (!\B[2]~input_o\ $ (!\A[2]~input_o\))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000011000011000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_ppn_carry:pg[1][0]~0_combout\,
	combout => \pg~1_combout\);

-- Location: IOIBUF_X59_Y16_N32
\B[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X59_Y15_N63
\A[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LABCELL_X58_Y12_N26
\pg~0\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~0_combout\ = ( \B[2]~input_o\ & ( (!\A[2]~input_o\ & (\B[3]~input_o\ & \A[3]~input_o\)) # (\A[2]~input_o\ & ((\A[3]~input_o\) # (\B[3]~input_o\))) ) ) # ( !\B[2]~input_o\ & ( (\B[3]~input_o\ & \A[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000101110001011100000011000000110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_B[2]~input_o\,
	combout => \pg~0_combout\);

-- Location: LABCELL_X58_Y12_N34
\c_var~1\ : arriaii_lcell_comb
-- Equation(s):
-- \c_var~1_combout\ = ( \B[2]~input_o\ & ( (\c_var~0_combout\ & (!\A[2]~input_o\ & (!\B[3]~input_o\ $ (!\A[3]~input_o\)))) ) ) # ( !\B[2]~input_o\ & ( (\c_var~0_combout\ & (\A[2]~input_o\ & (!\B[3]~input_o\ $ (!\A[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010100000101000000000000000000000101000001010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c_var~0_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	datae => \ALT_INV_B[2]~input_o\,
	combout => \c_var~1_combout\);

-- Location: LABCELL_X58_Y15_N2
\S~4\ : arriaii_lcell_comb
-- Equation(s):
-- \S~4_combout\ = ( \pg~0_combout\ & ( \c_var~1_combout\ & ( !\B[4]~input_o\ $ (\A[4]~input_o\) ) ) ) # ( !\pg~0_combout\ & ( \c_var~1_combout\ & ( !\B[4]~input_o\ $ (\A[4]~input_o\) ) ) ) # ( \pg~0_combout\ & ( !\c_var~1_combout\ & ( !\B[4]~input_o\ $ 
-- (\A[4]~input_o\) ) ) ) # ( !\pg~0_combout\ & ( !\c_var~1_combout\ & ( !\pg~1_combout\ $ (!\B[4]~input_o\ $ (\A[4]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001110011000011001111001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pg~1_combout\,
	datab => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	datae => \ALT_INV_pg~0_combout\,
	dataf => \ALT_INV_c_var~1_combout\,
	combout => \S~4_combout\);

-- Location: IOIBUF_X59_Y16_N1
\A[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LABCELL_X58_Y15_N24
\ppn_carry:pg[4][0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[4][0]~0_combout\ = ( \pg~0_combout\ & ( \pg~1_combout\ & ( (!\A[4]~input_o\ & !\B[4]~input_o\) ) ) ) # ( !\pg~0_combout\ & ( \pg~1_combout\ & ( (!\A[4]~input_o\ & !\B[4]~input_o\) ) ) ) # ( \pg~0_combout\ & ( !\pg~1_combout\ & ( 
-- (!\A[4]~input_o\ & !\B[4]~input_o\) ) ) ) # ( !\pg~0_combout\ & ( !\pg~1_combout\ & ( (!\A[4]~input_o\) # (!\B[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datae => \ALT_INV_pg~0_combout\,
	dataf => \ALT_INV_pg~1_combout\,
	combout => \ppn_carry:pg[4][0]~0_combout\);

-- Location: IOIBUF_X59_Y16_N63
\B[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LABCELL_X58_Y15_N10
\S~5\ : arriaii_lcell_comb
-- Equation(s):
-- \S~5_combout\ = ( \A[4]~input_o\ & ( \B[5]~input_o\ & ( !\A[5]~input_o\ $ (((!\ppn_carry:pg[4][0]~0_combout\) # ((\c_var~1_combout\ & !\B[4]~input_o\)))) ) ) ) # ( !\A[4]~input_o\ & ( \B[5]~input_o\ & ( !\A[5]~input_o\ $ 
-- (((!\ppn_carry:pg[4][0]~0_combout\) # ((\c_var~1_combout\ & \B[4]~input_o\)))) ) ) ) # ( \A[4]~input_o\ & ( !\B[5]~input_o\ & ( !\A[5]~input_o\ $ (((\ppn_carry:pg[4][0]~0_combout\ & ((!\c_var~1_combout\) # (\B[4]~input_o\))))) ) ) ) # ( !\A[4]~input_o\ & 
-- ( !\B[5]~input_o\ & ( !\A[5]~input_o\ $ (((\ppn_carry:pg[4][0]~0_combout\ & ((!\c_var~1_combout\) # (!\B[4]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000110110110011000110001100110011110010010011001110011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c_var~1_combout\,
	datab => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_ppn_carry:pg[4][0]~0_combout\,
	datae => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \S~5_combout\);

-- Location: LABCELL_X58_Y15_N32
\c_var~2\ : arriaii_lcell_comb
-- Equation(s):
-- \c_var~2_combout\ = ( \B[5]~input_o\ & ( (\c_var~1_combout\ & (!\A[5]~input_o\ & (!\A[4]~input_o\ $ (!\B[4]~input_o\)))) ) ) # ( !\B[5]~input_o\ & ( (\c_var~1_combout\ & (\A[5]~input_o\ & (!\A[4]~input_o\ $ (!\B[4]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010000000000010001000000000100010000000000010001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c_var~1_combout\,
	datab => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \c_var~2_combout\);

-- Location: IOIBUF_X59_Y7_N1
\A[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X59_Y13_N63
\B[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LABCELL_X58_Y15_N34
\p[6]\ : arriaii_lcell_comb
-- Equation(s):
-- p(6) = ( \B[6]~input_o\ & ( !\A[6]~input_o\ ) ) # ( !\B[6]~input_o\ & ( \A[6]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_B[6]~input_o\,
	combout => p(6));

-- Location: LABCELL_X58_Y15_N36
\pg~2\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~2_combout\ = ( \A[4]~input_o\ & ( \B[5]~input_o\ & ( (\A[5]~input_o\) # (\B[4]~input_o\) ) ) ) # ( !\A[4]~input_o\ & ( \B[5]~input_o\ & ( \A[5]~input_o\ ) ) ) # ( \A[4]~input_o\ & ( !\B[5]~input_o\ & ( (\B[4]~input_o\ & \A[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011001100000000111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	datae => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \pg~2_combout\);

-- Location: LABCELL_X58_Y15_N20
\pg~3\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~3_combout\ = ( \pg~0_combout\ & ( \B[5]~input_o\ & ( (!\A[5]~input_o\ & (!\A[4]~input_o\ $ (!\B[4]~input_o\))) ) ) ) # ( !\pg~0_combout\ & ( \B[5]~input_o\ & ( (!\A[5]~input_o\ & (\pg~1_combout\ & (!\A[4]~input_o\ $ (!\B[4]~input_o\)))) ) ) ) # ( 
-- \pg~0_combout\ & ( !\B[5]~input_o\ & ( (\A[5]~input_o\ & (!\A[4]~input_o\ $ (!\B[4]~input_o\))) ) ) ) # ( !\pg~0_combout\ & ( !\B[5]~input_o\ & ( (\A[5]~input_o\ & (\pg~1_combout\ & (!\A[4]~input_o\ $ (!\B[4]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000010000100010010001000000100000010000100010010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datab => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_pg~1_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	datae => \ALT_INV_pg~0_combout\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \pg~3_combout\);

-- Location: LABCELL_X58_Y15_N6
\S~6\ : arriaii_lcell_comb
-- Equation(s):
-- \S~6_combout\ = ( \pg~3_combout\ & ( !p(6) ) ) # ( !\pg~3_combout\ & ( !p(6) $ (((!\c_var~2_combout\ & !\pg~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011011001100011001101100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c_var~2_combout\,
	datab => ALT_INV_p(6),
	datad => \ALT_INV_pg~2_combout\,
	dataf => \ALT_INV_pg~3_combout\,
	combout => \S~6_combout\);

-- Location: LABCELL_X58_Y15_N30
\ppn_carry:pg[6][0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[6][0]~0_combout\ = ( \B[6]~input_o\ & ( (!\pg~2_combout\ & (!\A[6]~input_o\ & !\pg~3_combout\)) ) ) # ( !\B[6]~input_o\ & ( (!\A[6]~input_o\) # ((!\pg~2_combout\ & !\pg~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011110000111110101111000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pg~2_combout\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_pg~3_combout\,
	dataf => \ALT_INV_B[6]~input_o\,
	combout => \ppn_carry:pg[6][0]~0_combout\);

-- Location: IOIBUF_X59_Y16_N94
\A[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X59_Y15_N94
\B[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LABCELL_X58_Y15_N4
\S~7\ : arriaii_lcell_comb
-- Equation(s):
-- \S~7_combout\ = ( \B[7]~input_o\ & ( !\A[7]~input_o\ $ (((!\ppn_carry:pg[6][0]~0_combout\) # ((\c_var~2_combout\ & p(6))))) ) ) # ( !\B[7]~input_o\ & ( !\A[7]~input_o\ $ (((\ppn_carry:pg[6][0]~0_combout\ & ((!\c_var~2_combout\) # (!p(6)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000100001110111100010000111000001110111100010000111011110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c_var~2_combout\,
	datab => ALT_INV_p(6),
	datac => \ALT_INV_ppn_carry:pg[6][0]~0_combout\,
	datad => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_B[7]~input_o\,
	combout => \S~7_combout\);

-- Location: LABCELL_X58_Y15_N14
\ppn_carry:pg[7][1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[7][1]~0_combout\ = ( \B[7]~input_o\ & ( (!\A[7]~input_o\ & (!\B[6]~input_o\ $ (!\A[6]~input_o\))) ) ) # ( !\B[7]~input_o\ & ( (\A[7]~input_o\ & (!\B[6]~input_o\ $ (!\A[6]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101001011010000000000101101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[6]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_B[7]~input_o\,
	combout => \ppn_carry:pg[7][1]~0_combout\);

-- Location: LABCELL_X58_Y15_N18
\ppn_carry:pg[7][1]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[7][1]~1_combout\ = ( \B[5]~input_o\ & ( (\ppn_carry:pg[7][1]~0_combout\ & (!\A[5]~input_o\ & (!\A[4]~input_o\ $ (!\B[4]~input_o\)))) ) ) # ( !\B[5]~input_o\ & ( (\ppn_carry:pg[7][1]~0_combout\ & (\A[5]~input_o\ & (!\A[4]~input_o\ $ 
-- (!\B[4]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000010000000010000001000010000001000000001000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datab => \ALT_INV_ppn_carry:pg[7][1]~0_combout\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \ppn_carry:pg[7][1]~1_combout\);

-- Location: LABCELL_X58_Y15_N12
\c_var~3\ : arriaii_lcell_comb
-- Equation(s):
-- \c_var~3_combout\ = (\c_var~1_combout\ & \ppn_carry:pg[7][1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_c_var~1_combout\,
	datad => \ALT_INV_ppn_carry:pg[7][1]~1_combout\,
	combout => \c_var~3_combout\);

-- Location: LABCELL_X58_Y15_N16
\pg~4\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~4_combout\ = ( \pg~0_combout\ & ( \ppn_carry:pg[7][1]~1_combout\ ) ) # ( !\pg~0_combout\ & ( (\pg~1_combout\ & \ppn_carry:pg[7][1]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_pg~1_combout\,
	datad => \ALT_INV_ppn_carry:pg[7][1]~1_combout\,
	dataf => \ALT_INV_pg~0_combout\,
	combout => \pg~4_combout\);

-- Location: LABCELL_X58_Y15_N28
\pg~93\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~93_combout\ = ( \B[7]~input_o\ & ( ((!\pg~2_combout\ & (\A[6]~input_o\ & \B[6]~input_o\)) # (\pg~2_combout\ & ((\B[6]~input_o\) # (\A[6]~input_o\)))) # (\A[7]~input_o\) ) ) # ( !\B[7]~input_o\ & ( (\A[7]~input_o\ & ((!\pg~2_combout\ & (\A[6]~input_o\ 
-- & \B[6]~input_o\)) # (\pg~2_combout\ & ((\B[6]~input_o\) # (\A[6]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010111000000000001011100010111111111110001011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pg~2_combout\,
	datab => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_B[6]~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_B[7]~input_o\,
	combout => \pg~93_combout\);

-- Location: IOIBUF_X59_Y19_N94
\A[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X59_Y23_N1
\B[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LABCELL_X58_Y23_N2
\S~8\ : arriaii_lcell_comb
-- Equation(s):
-- \S~8_combout\ = ( \B[8]~input_o\ & ( !\A[8]~input_o\ $ ((((\pg~93_combout\) # (\pg~4_combout\)) # (\c_var~3_combout\))) ) ) # ( !\B[8]~input_o\ & ( !\A[8]~input_o\ $ (((!\c_var~3_combout\ & (!\pg~4_combout\ & !\pg~93_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111110000000011111111000000010000000011111111000000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c_var~3_combout\,
	datab => \ALT_INV_pg~4_combout\,
	datac => \ALT_INV_pg~93_combout\,
	datad => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_B[8]~input_o\,
	combout => \S~8_combout\);

-- Location: IOIBUF_X59_Y23_N94
\A[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LABCELL_X58_Y23_N6
\ppn_carry:pg[8][0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[8][0]~0_combout\ = ( \pg~4_combout\ & ( (!\B[8]~input_o\ & !\A[8]~input_o\) ) ) # ( !\pg~4_combout\ & ( (!\B[8]~input_o\ & ((!\pg~93_combout\) # (!\A[8]~input_o\))) # (\B[8]~input_o\ & (!\pg~93_combout\ & !\A[8]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011000000111111001100000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[8]~input_o\,
	datac => \ALT_INV_pg~93_combout\,
	datad => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_pg~4_combout\,
	combout => \ppn_carry:pg[8][0]~0_combout\);

-- Location: IOIBUF_X59_Y25_N32
\B[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LABCELL_X58_Y23_N30
\S~9\ : arriaii_lcell_comb
-- Equation(s):
-- \S~9_combout\ = ( \B[9]~input_o\ & ( \B[8]~input_o\ & ( !\A[9]~input_o\ $ (((!\ppn_carry:pg[8][0]~0_combout\) # ((!\A[8]~input_o\ & \c_var~3_combout\)))) ) ) ) # ( !\B[9]~input_o\ & ( \B[8]~input_o\ & ( !\A[9]~input_o\ $ (((\ppn_carry:pg[8][0]~0_combout\ 
-- & ((!\c_var~3_combout\) # (\A[8]~input_o\))))) ) ) ) # ( \B[9]~input_o\ & ( !\B[8]~input_o\ & ( !\A[9]~input_o\ $ (((!\ppn_carry:pg[8][0]~0_combout\) # ((\A[8]~input_o\ & \c_var~3_combout\)))) ) ) ) # ( !\B[9]~input_o\ & ( !\B[8]~input_o\ & ( 
-- !\A[9]~input_o\ $ (((\ppn_carry:pg[8][0]~0_combout\ & ((!\A[8]~input_o\) # (!\c_var~3_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011010011001100110010110011001101010010110011001010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datab => \ALT_INV_ppn_carry:pg[8][0]~0_combout\,
	datac => \ALT_INV_A[8]~input_o\,
	datad => \ALT_INV_c_var~3_combout\,
	datae => \ALT_INV_B[9]~input_o\,
	dataf => \ALT_INV_B[8]~input_o\,
	combout => \S~9_combout\);

-- Location: IOIBUF_X59_Y19_N1
\B[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X59_Y19_N63
\A[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LABCELL_X58_Y23_N34
\p[10]\ : arriaii_lcell_comb
-- Equation(s):
-- p(10) = !\B[10]~input_o\ $ (!\A[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[10]~input_o\,
	datad => \ALT_INV_A[10]~input_o\,
	combout => p(10));

-- Location: LABCELL_X58_Y23_N18
\c_var~4\ : arriaii_lcell_comb
-- Equation(s):
-- \c_var~4_combout\ = ( \c_var~3_combout\ & ( (!\A[9]~input_o\ & (\B[9]~input_o\ & (!\B[8]~input_o\ $ (!\A[8]~input_o\)))) # (\A[9]~input_o\ & (!\B[9]~input_o\ & (!\B[8]~input_o\ $ (!\A[8]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000110011000000000011001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datab => \ALT_INV_B[9]~input_o\,
	datac => \ALT_INV_B[8]~input_o\,
	datad => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_c_var~3_combout\,
	combout => \c_var~4_combout\);

-- Location: LABCELL_X58_Y23_N22
\pg~6\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~6_combout\ = ( \B[9]~input_o\ & ( \pg~4_combout\ & ( (!\A[9]~input_o\ & (!\A[8]~input_o\ $ (!\B[8]~input_o\))) ) ) ) # ( !\B[9]~input_o\ & ( \pg~4_combout\ & ( (\A[9]~input_o\ & (!\A[8]~input_o\ $ (!\B[8]~input_o\))) ) ) ) # ( \B[9]~input_o\ & ( 
-- !\pg~4_combout\ & ( (!\A[9]~input_o\ & (\pg~93_combout\ & (!\A[8]~input_o\ $ (!\B[8]~input_o\)))) ) ) ) # ( !\B[9]~input_o\ & ( !\pg~4_combout\ & ( (\A[9]~input_o\ & (\pg~93_combout\ & (!\A[8]~input_o\ $ (!\B[8]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010000000000100010000000000101010100000000101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datab => \ALT_INV_pg~93_combout\,
	datac => \ALT_INV_A[8]~input_o\,
	datad => \ALT_INV_B[8]~input_o\,
	datae => \ALT_INV_B[9]~input_o\,
	dataf => \ALT_INV_pg~4_combout\,
	combout => \pg~6_combout\);

-- Location: LABCELL_X58_Y23_N16
\pg~5\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~5_combout\ = ( \B[8]~input_o\ & ( (!\A[9]~input_o\ & (\B[9]~input_o\ & \A[8]~input_o\)) # (\A[9]~input_o\ & ((\A[8]~input_o\) # (\B[9]~input_o\))) ) ) # ( !\B[8]~input_o\ & ( (\A[9]~input_o\ & \B[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001011101110001000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datab => \ALT_INV_B[9]~input_o\,
	datad => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_B[8]~input_o\,
	combout => \pg~5_combout\);

-- Location: LABCELL_X58_Y23_N32
\S~10\ : arriaii_lcell_comb
-- Equation(s):
-- \S~10_combout\ = ( \pg~5_combout\ & ( !p(10) ) ) # ( !\pg~5_combout\ & ( !p(10) $ (((!\c_var~4_combout\ & !\pg~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011001100001111001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_p(10),
	datac => \ALT_INV_c_var~4_combout\,
	datad => \ALT_INV_pg~6_combout\,
	dataf => \ALT_INV_pg~5_combout\,
	combout => \S~10_combout\);

-- Location: IOIBUF_X59_Y21_N94
\B[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X59_Y25_N94
\A[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LABCELL_X58_Y23_N24
\ppn_carry:pg[10][0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[10][0]~0_combout\ = (!\B[10]~input_o\ & ((!\A[10]~input_o\) # ((!\pg~5_combout\ & !\pg~6_combout\)))) # (\B[10]~input_o\ & (!\pg~5_combout\ & (!\A[10]~input_o\ & !\pg~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100010100000111010001010000011101000101000001110100010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[10]~input_o\,
	datab => \ALT_INV_pg~5_combout\,
	datac => \ALT_INV_A[10]~input_o\,
	datad => \ALT_INV_pg~6_combout\,
	combout => \ppn_carry:pg[10][0]~0_combout\);

-- Location: LABCELL_X58_Y23_N10
\S~11\ : arriaii_lcell_comb
-- Equation(s):
-- \S~11_combout\ = ( \ppn_carry:pg[10][0]~0_combout\ & ( !\B[11]~input_o\ $ (!\A[11]~input_o\ $ (((p(10) & \c_var~4_combout\)))) ) ) # ( !\ppn_carry:pg[10][0]~0_combout\ & ( !\B[11]~input_o\ $ (\A[11]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100101100110011010010110011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[11]~input_o\,
	datab => \ALT_INV_A[11]~input_o\,
	datac => ALT_INV_p(10),
	datad => \ALT_INV_c_var~4_combout\,
	dataf => \ALT_INV_ppn_carry:pg[10][0]~0_combout\,
	combout => \S~11_combout\);

-- Location: IOIBUF_X59_Y21_N32
\B[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LABCELL_X58_Y23_N8
\pg~7\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~7_combout\ = (!\B[11]~input_o\ & (\A[11]~input_o\ & (!\B[10]~input_o\ $ (!\A[10]~input_o\)))) # (\B[11]~input_o\ & (!\A[11]~input_o\ & (!\B[10]~input_o\ $ (!\A[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001100000000001100110000000000110011000000000011001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[11]~input_o\,
	datab => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_B[10]~input_o\,
	datad => \ALT_INV_A[10]~input_o\,
	combout => \pg~7_combout\);

-- Location: LABCELL_X58_Y23_N4
\pg~8\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~8_combout\ = ( \A[9]~input_o\ & ( (\pg~7_combout\ & (!\B[9]~input_o\ & (!\A[8]~input_o\ $ (!\B[8]~input_o\)))) ) ) # ( !\A[9]~input_o\ & ( (\pg~7_combout\ & (\B[9]~input_o\ & (!\A[8]~input_o\ $ (!\B[8]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110000000000000011000000110000000000000011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datab => \ALT_INV_B[8]~input_o\,
	datac => \ALT_INV_pg~7_combout\,
	datad => \ALT_INV_B[9]~input_o\,
	dataf => \ALT_INV_A[9]~input_o\,
	combout => \pg~8_combout\);

-- Location: LABCELL_X58_Y23_N12
\c_var~5\ : arriaii_lcell_comb
-- Equation(s):
-- \c_var~5_combout\ = ( \c_var~3_combout\ & ( \pg~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_pg~8_combout\,
	dataf => \ALT_INV_c_var~3_combout\,
	combout => \c_var~5_combout\);

-- Location: LABCELL_X58_Y23_N0
\pg~9\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~9_combout\ = (\pg~8_combout\ & ((\pg~93_combout\) # (\pg~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111000000110000111100000011000011110000001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_pg~4_combout\,
	datac => \ALT_INV_pg~8_combout\,
	datad => \ALT_INV_pg~93_combout\,
	combout => \pg~9_combout\);

-- Location: LABCELL_X58_Y23_N26
\pg~92\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~92_combout\ = ( \B[11]~input_o\ & ( ((!\B[10]~input_o\ & (\pg~5_combout\ & \A[10]~input_o\)) # (\B[10]~input_o\ & ((\A[10]~input_o\) # (\pg~5_combout\)))) # (\A[11]~input_o\) ) ) # ( !\B[11]~input_o\ & ( (\A[11]~input_o\ & ((!\B[10]~input_o\ & 
-- (\pg~5_combout\ & \A[10]~input_o\)) # (\B[10]~input_o\ & ((\A[10]~input_o\) # (\pg~5_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000111000000010000011100011111011111110001111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[10]~input_o\,
	datab => \ALT_INV_pg~5_combout\,
	datac => \ALT_INV_A[11]~input_o\,
	datad => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_B[11]~input_o\,
	combout => \pg~92_combout\);

-- Location: IOIBUF_X59_Y21_N63
\A[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LABCELL_X58_Y22_N22
\S~12\ : arriaii_lcell_comb
-- Equation(s):
-- \S~12_combout\ = ( \pg~92_combout\ & ( \A[12]~input_o\ & ( \B[12]~input_o\ ) ) ) # ( !\pg~92_combout\ & ( \A[12]~input_o\ & ( !\B[12]~input_o\ $ (((\pg~9_combout\) # (\c_var~5_combout\))) ) ) ) # ( \pg~92_combout\ & ( !\A[12]~input_o\ & ( !\B[12]~input_o\ 
-- ) ) ) # ( !\pg~92_combout\ & ( !\A[12]~input_o\ & ( !\B[12]~input_o\ $ (((!\c_var~5_combout\ & !\pg~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010101010101010101010101010011001010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[12]~input_o\,
	datab => \ALT_INV_c_var~5_combout\,
	datad => \ALT_INV_pg~9_combout\,
	datae => \ALT_INV_pg~92_combout\,
	dataf => \ALT_INV_A[12]~input_o\,
	combout => \S~12_combout\);

-- Location: IOIBUF_X59_Y22_N32
\A[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LABCELL_X58_Y22_N8
\c_var~6\ : arriaii_lcell_comb
-- Equation(s):
-- \c_var~6_combout\ = ( \A[12]~input_o\ & ( (\c_var~5_combout\ & !\B[12]~input_o\) ) ) # ( !\A[12]~input_o\ & ( (\c_var~5_combout\ & \B[12]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_c_var~5_combout\,
	datac => \ALT_INV_B[12]~input_o\,
	dataf => \ALT_INV_A[12]~input_o\,
	combout => \c_var~6_combout\);

-- Location: IOIBUF_X59_Y25_N63
\B[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LABCELL_X58_Y22_N4
\ppn_carry:pg[12][0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[12][0]~0_combout\ = ( !\pg~92_combout\ & ( \A[12]~input_o\ & ( (!\pg~9_combout\ & !\B[12]~input_o\) ) ) ) # ( \pg~92_combout\ & ( !\A[12]~input_o\ & ( !\B[12]~input_o\ ) ) ) # ( !\pg~92_combout\ & ( !\A[12]~input_o\ & ( (!\pg~9_combout\) # 
-- (!\B[12]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111100001111000010100000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pg~9_combout\,
	datac => \ALT_INV_B[12]~input_o\,
	datae => \ALT_INV_pg~92_combout\,
	dataf => \ALT_INV_A[12]~input_o\,
	combout => \ppn_carry:pg[12][0]~0_combout\);

-- Location: LABCELL_X58_Y22_N34
\S~13\ : arriaii_lcell_comb
-- Equation(s):
-- \S~13_combout\ = ( \ppn_carry:pg[12][0]~0_combout\ & ( !\A[13]~input_o\ $ (!\c_var~6_combout\ $ (\B[13]~input_o\)) ) ) # ( !\ppn_carry:pg[12][0]~0_combout\ & ( !\A[13]~input_o\ $ (\B[13]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001010101101010100101010101100110100110010110011010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[13]~input_o\,
	datab => \ALT_INV_c_var~6_combout\,
	datad => \ALT_INV_B[13]~input_o\,
	dataf => \ALT_INV_ppn_carry:pg[12][0]~0_combout\,
	combout => \S~13_combout\);

-- Location: IOIBUF_X59_Y22_N63
\B[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LABCELL_X58_Y22_N0
\pg~11\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~11_combout\ = ( \A[13]~input_o\ & ( \B[12]~input_o\ & ( (!\B[13]~input_o\ & !\A[12]~input_o\) ) ) ) # ( !\A[13]~input_o\ & ( \B[12]~input_o\ & ( (\B[13]~input_o\ & !\A[12]~input_o\) ) ) ) # ( \A[13]~input_o\ & ( !\B[12]~input_o\ & ( (!\B[13]~input_o\ 
-- & \A[12]~input_o\) ) ) ) # ( !\A[13]~input_o\ & ( !\B[12]~input_o\ & ( (\B[13]~input_o\ & \A[12]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000001111000000001111000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[13]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	datae => \ALT_INV_A[13]~input_o\,
	dataf => \ALT_INV_B[12]~input_o\,
	combout => \pg~11_combout\);

-- Location: LABCELL_X58_Y22_N10
\pg~12\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~12_combout\ = ( \pg~11_combout\ & ( (\pg~9_combout\) # (\pg~92_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_pg~92_combout\,
	datad => \ALT_INV_pg~9_combout\,
	dataf => \ALT_INV_pg~11_combout\,
	combout => \pg~12_combout\);

-- Location: LABCELL_X58_Y22_N18
\pg~10\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~10_combout\ = ( \A[13]~input_o\ & ( \B[12]~input_o\ & ( (\A[12]~input_o\) # (\B[13]~input_o\) ) ) ) # ( !\A[13]~input_o\ & ( \B[12]~input_o\ & ( (\B[13]~input_o\ & \A[12]~input_o\) ) ) ) # ( \A[13]~input_o\ & ( !\B[12]~input_o\ & ( \B[13]~input_o\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100010001000100010111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[13]~input_o\,
	datab => \ALT_INV_A[12]~input_o\,
	datae => \ALT_INV_A[13]~input_o\,
	dataf => \ALT_INV_B[12]~input_o\,
	combout => \pg~10_combout\);

-- Location: IOIBUF_X59_Y22_N94
\A[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LABCELL_X58_Y22_N32
\c_var~7\ : arriaii_lcell_comb
-- Equation(s):
-- \c_var~7_combout\ = (\c_var~6_combout\ & (!\A[13]~input_o\ $ (!\B[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001000010010000100100001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[13]~input_o\,
	datab => \ALT_INV_c_var~6_combout\,
	datac => \ALT_INV_B[13]~input_o\,
	combout => \c_var~7_combout\);

-- Location: LABCELL_X58_Y22_N24
\S~14\ : arriaii_lcell_comb
-- Equation(s):
-- \S~14_combout\ = ( \c_var~7_combout\ & ( !\B[14]~input_o\ $ (\A[14]~input_o\) ) ) # ( !\c_var~7_combout\ & ( !\B[14]~input_o\ $ (!\A[14]~input_o\ $ (((\pg~10_combout\) # (\pg~12_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110101010010101011010101001010110101010010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[14]~input_o\,
	datab => \ALT_INV_pg~12_combout\,
	datac => \ALT_INV_pg~10_combout\,
	datad => \ALT_INV_A[14]~input_o\,
	dataf => \ALT_INV_c_var~7_combout\,
	combout => \S~14_combout\);

-- Location: IOIBUF_X59_Y22_N1
\A[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LABCELL_X58_Y22_N26
\ppn_carry:pg[14][0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[14][0]~0_combout\ = (!\B[14]~input_o\ & ((!\A[14]~input_o\) # ((!\pg~12_combout\ & !\pg~10_combout\)))) # (\B[14]~input_o\ & (!\pg~12_combout\ & (!\A[14]~input_o\ & !\pg~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100010100000111010001010000011101000101000001110100010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[14]~input_o\,
	datab => \ALT_INV_pg~12_combout\,
	datac => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_pg~10_combout\,
	combout => \ppn_carry:pg[14][0]~0_combout\);

-- Location: IOIBUF_X59_Y25_N1
\B[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LABCELL_X58_Y22_N28
\S~15\ : arriaii_lcell_comb
-- Equation(s):
-- \S~15_combout\ = ( \B[14]~input_o\ & ( \B[15]~input_o\ & ( !\A[15]~input_o\ $ (((!\ppn_carry:pg[14][0]~0_combout\) # ((!\A[14]~input_o\ & \c_var~7_combout\)))) ) ) ) # ( !\B[14]~input_o\ & ( \B[15]~input_o\ & ( !\A[15]~input_o\ $ 
-- (((!\ppn_carry:pg[14][0]~0_combout\) # ((\A[14]~input_o\ & \c_var~7_combout\)))) ) ) ) # ( \B[14]~input_o\ & ( !\B[15]~input_o\ & ( !\A[15]~input_o\ $ (((\ppn_carry:pg[14][0]~0_combout\ & ((!\c_var~7_combout\) # (\A[14]~input_o\))))) ) ) ) # ( 
-- !\B[14]~input_o\ & ( !\B[15]~input_o\ & ( !\A[15]~input_o\ $ (((\ppn_carry:pg[14][0]~0_combout\ & ((!\A[14]~input_o\) # (!\c_var~7_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001010110101010100101100101010101101010010101010110100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \ALT_INV_A[14]~input_o\,
	datac => \ALT_INV_c_var~7_combout\,
	datad => \ALT_INV_ppn_carry:pg[14][0]~0_combout\,
	datae => \ALT_INV_B[14]~input_o\,
	dataf => \ALT_INV_B[15]~input_o\,
	combout => \S~15_combout\);

-- Location: IOIBUF_X48_Y56_N63
\A[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: LABCELL_X58_Y22_N14
\pg~13\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~13_combout\ = ( \B[15]~input_o\ & ( (!\A[15]~input_o\ & (!\B[14]~input_o\ $ (!\A[14]~input_o\))) ) ) # ( !\B[15]~input_o\ & ( (\A[15]~input_o\ & (!\B[14]~input_o\ $ (!\A[14]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000000110011001100110000000000110011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[14]~input_o\,
	datab => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_A[15]~input_o\,
	dataf => \ALT_INV_B[15]~input_o\,
	combout => \pg~13_combout\);

-- Location: LABCELL_X58_Y22_N36
\pg~14\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~14_combout\ = ( \pg~8_combout\ & ( (\pg~11_combout\ & \pg~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pg~11_combout\,
	datab => \ALT_INV_pg~13_combout\,
	dataf => \ALT_INV_pg~8_combout\,
	combout => \pg~14_combout\);

-- Location: LABCELL_X58_Y23_N36
\c_var~8\ : arriaii_lcell_comb
-- Equation(s):
-- \c_var~8_combout\ = ( \c_var~3_combout\ & ( \pg~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_pg~14_combout\,
	dataf => \ALT_INV_c_var~3_combout\,
	combout => \c_var~8_combout\);

-- Location: LABCELL_X58_Y23_N14
\pg~15\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~15_combout\ = ( \pg~4_combout\ & ( \pg~14_combout\ ) ) # ( !\pg~4_combout\ & ( (\pg~93_combout\ & \pg~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_pg~93_combout\,
	datad => \ALT_INV_pg~14_combout\,
	dataf => \ALT_INV_pg~4_combout\,
	combout => \pg~15_combout\);

-- Location: IOIBUF_X55_Y56_N32
\B[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: LABCELL_X58_Y22_N12
\pg~16\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~16_combout\ = ( \B[15]~input_o\ & ( ((\B[14]~input_o\ & \A[14]~input_o\)) # (\A[15]~input_o\) ) ) # ( !\B[15]~input_o\ & ( (\B[14]~input_o\ & (\A[14]~input_o\ & \A[15]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[14]~input_o\,
	datab => \ALT_INV_A[14]~input_o\,
	datac => \ALT_INV_A[15]~input_o\,
	dataf => \ALT_INV_B[15]~input_o\,
	combout => \pg~16_combout\);

-- Location: LABCELL_X58_Y22_N38
\pg~17\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~17_combout\ = ( !\pg~16_combout\ & ( (!\pg~13_combout\) # ((!\pg~10_combout\ & ((!\pg~11_combout\) # (!\pg~92_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011001100111111101100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pg~11_combout\,
	datab => \ALT_INV_pg~13_combout\,
	datac => \ALT_INV_pg~92_combout\,
	datad => \ALT_INV_pg~10_combout\,
	dataf => \ALT_INV_pg~16_combout\,
	combout => \pg~17_combout\);

-- Location: LABCELL_X53_Y52_N20
\S~16\ : arriaii_lcell_comb
-- Equation(s):
-- \S~16_combout\ = ( \pg~17_combout\ & ( !\A[16]~input_o\ $ (!\B[16]~input_o\ $ (((\pg~15_combout\) # (\c_var~8_combout\)))) ) ) # ( !\pg~17_combout\ & ( !\A[16]~input_o\ $ (\B[16]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001010101101010100101010101101010100101010110101010010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[16]~input_o\,
	datab => \ALT_INV_c_var~8_combout\,
	datac => \ALT_INV_pg~15_combout\,
	datad => \ALT_INV_B[16]~input_o\,
	dataf => \ALT_INV_pg~17_combout\,
	combout => \S~16_combout\);

-- Location: IOIBUF_X49_Y56_N32
\B[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: LABCELL_X53_Y52_N4
\ppn_carry:pg[16][0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[16][0]~0_combout\ = ( \pg~17_combout\ & ( (!\B[16]~input_o\ & ((!\pg~15_combout\) # (!\A[16]~input_o\))) # (\B[16]~input_o\ & (!\pg~15_combout\ & !\A[16]~input_o\)) ) ) # ( !\pg~17_combout\ & ( (!\B[16]~input_o\ & !\A[16]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000011111100110000001111110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[16]~input_o\,
	datac => \ALT_INV_pg~15_combout\,
	datad => \ALT_INV_A[16]~input_o\,
	dataf => \ALT_INV_pg~17_combout\,
	combout => \ppn_carry:pg[16][0]~0_combout\);

-- Location: IOIBUF_X56_Y56_N94
\A[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: LABCELL_X53_Y52_N10
\S~17\ : arriaii_lcell_comb
-- Equation(s):
-- \S~17_combout\ = ( \ppn_carry:pg[16][0]~0_combout\ & ( \A[17]~input_o\ & ( !\B[17]~input_o\ $ (((\c_var~8_combout\ & (!\B[16]~input_o\ $ (!\A[16]~input_o\))))) ) ) ) # ( !\ppn_carry:pg[16][0]~0_combout\ & ( \A[17]~input_o\ & ( \B[17]~input_o\ ) ) ) # ( 
-- \ppn_carry:pg[16][0]~0_combout\ & ( !\A[17]~input_o\ & ( !\B[17]~input_o\ $ (((!\c_var~8_combout\) # (!\B[16]~input_o\ $ (\A[16]~input_o\)))) ) ) ) # ( !\ppn_carry:pg[16][0]~0_combout\ & ( !\A[17]~input_o\ & ( !\B[17]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010010101100110010101010101010101011010100110011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[17]~input_o\,
	datab => \ALT_INV_c_var~8_combout\,
	datac => \ALT_INV_B[16]~input_o\,
	datad => \ALT_INV_A[16]~input_o\,
	datae => \ALT_INV_ppn_carry:pg[16][0]~0_combout\,
	dataf => \ALT_INV_A[17]~input_o\,
	combout => \S~17_combout\);

-- Location: LABCELL_X53_Y52_N18
\pg~19\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~19_combout\ = ( \A[17]~input_o\ & ( (!\B[17]~input_o\ & (!\A[16]~input_o\ $ (!\B[16]~input_o\))) ) ) # ( !\A[17]~input_o\ & ( (\B[17]~input_o\ & (!\A[16]~input_o\ $ (!\B[16]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101001011010000000000101101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[16]~input_o\,
	datac => \ALT_INV_B[16]~input_o\,
	datad => \ALT_INV_B[17]~input_o\,
	dataf => \ALT_INV_A[17]~input_o\,
	combout => \pg~19_combout\);

-- Location: LABCELL_X53_Y52_N32
\pg~20\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~20_combout\ = ( \pg~19_combout\ & ( (!\pg~17_combout\) # (\pg~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pg~15_combout\,
	datac => \ALT_INV_pg~17_combout\,
	dataf => \ALT_INV_pg~19_combout\,
	combout => \pg~20_combout\);

-- Location: LABCELL_X53_Y52_N6
\pg~18\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~18_combout\ = ( \A[17]~input_o\ & ( ((\A[16]~input_o\ & \B[16]~input_o\)) # (\B[17]~input_o\) ) ) # ( !\A[17]~input_o\ & ( (\A[16]~input_o\ & (\B[16]~input_o\ & \B[17]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100010001111111110001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[16]~input_o\,
	datab => \ALT_INV_B[16]~input_o\,
	datad => \ALT_INV_B[17]~input_o\,
	dataf => \ALT_INV_A[17]~input_o\,
	combout => \pg~18_combout\);

-- Location: IOIBUF_X51_Y56_N63
\A[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: IOIBUF_X53_Y56_N32
\B[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: LABCELL_X53_Y52_N34
\p[18]\ : arriaii_lcell_comb
-- Equation(s):
-- p(18) = !\A[18]~input_o\ $ (!\B[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110000110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[18]~input_o\,
	datad => \ALT_INV_B[18]~input_o\,
	combout => p(18));

-- Location: LABCELL_X53_Y52_N2
\S~18\ : arriaii_lcell_comb
-- Equation(s):
-- \S~18_combout\ = ( \pg~19_combout\ & ( !p(18) $ (((!\pg~20_combout\ & (!\pg~18_combout\ & !\c_var~8_combout\)))) ) ) # ( !\pg~19_combout\ & ( !p(18) $ (((!\pg~20_combout\ & !\pg~18_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100001111000011110000111100001111000111100000111100011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pg~20_combout\,
	datab => \ALT_INV_pg~18_combout\,
	datac => ALT_INV_p(18),
	datad => \ALT_INV_c_var~8_combout\,
	dataf => \ALT_INV_pg~19_combout\,
	combout => \S~18_combout\);

-- Location: IOIBUF_X49_Y56_N94
\B[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: LABCELL_X53_Y52_N0
\ppn_carry:pg[18][0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[18][0]~0_combout\ = (!\B[18]~input_o\ & ((!\A[18]~input_o\) # ((!\pg~20_combout\ & !\pg~18_combout\)))) # (\B[18]~input_o\ & (!\pg~20_combout\ & (!\pg~18_combout\ & !\A[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100010000000111110001000000011111000100000001111100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pg~20_combout\,
	datab => \ALT_INV_pg~18_combout\,
	datac => \ALT_INV_B[18]~input_o\,
	datad => \ALT_INV_A[18]~input_o\,
	combout => \ppn_carry:pg[18][0]~0_combout\);

-- Location: IOIBUF_X53_Y56_N1
\A[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: LABCELL_X53_Y52_N24
\S~19\ : arriaii_lcell_comb
-- Equation(s):
-- \S~19_combout\ = ( \ppn_carry:pg[18][0]~0_combout\ & ( \A[19]~input_o\ & ( !\B[19]~input_o\ $ (((\pg~19_combout\ & (p(18) & \c_var~8_combout\)))) ) ) ) # ( !\ppn_carry:pg[18][0]~0_combout\ & ( \A[19]~input_o\ & ( \B[19]~input_o\ ) ) ) # ( 
-- \ppn_carry:pg[18][0]~0_combout\ & ( !\A[19]~input_o\ & ( !\B[19]~input_o\ $ (((!\pg~19_combout\) # ((!p(18)) # (!\c_var~8_combout\)))) ) ) ) # ( !\ppn_carry:pg[18][0]~0_combout\ & ( !\A[19]~input_o\ & ( !\B[19]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000011110001111000001111000011111111000011100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pg~19_combout\,
	datab => ALT_INV_p(18),
	datac => \ALT_INV_B[19]~input_o\,
	datad => \ALT_INV_c_var~8_combout\,
	datae => \ALT_INV_ppn_carry:pg[18][0]~0_combout\,
	dataf => \ALT_INV_A[19]~input_o\,
	combout => \S~19_combout\);

-- Location: IOIBUF_X53_Y56_N94
\A[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: IOIBUF_X56_Y56_N63
\B[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: LABCELL_X53_Y52_N30
\ppn_carry:pg[19][1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[19][1]~0_combout\ = ( \pg~19_combout\ & ( (p(18) & (!\B[19]~input_o\ $ (!\A[19]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010110100000000001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[19]~input_o\,
	datac => \ALT_INV_A[19]~input_o\,
	datad => ALT_INV_p(18),
	dataf => \ALT_INV_pg~19_combout\,
	combout => \ppn_carry:pg[19][1]~0_combout\);

-- Location: LABCELL_X53_Y52_N28
\pg~91\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~91_combout\ = ( \A[19]~input_o\ & ( ((!\pg~18_combout\ & (\B[18]~input_o\ & \A[18]~input_o\)) # (\pg~18_combout\ & ((\A[18]~input_o\) # (\B[18]~input_o\)))) # (\B[19]~input_o\) ) ) # ( !\A[19]~input_o\ & ( (\B[19]~input_o\ & ((!\pg~18_combout\ & 
-- (\B[18]~input_o\ & \A[18]~input_o\)) # (\pg~18_combout\ & ((\A[18]~input_o\) # (\B[18]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010101000000010001010101010111011111110101011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[19]~input_o\,
	datab => \ALT_INV_pg~18_combout\,
	datac => \ALT_INV_B[18]~input_o\,
	datad => \ALT_INV_A[18]~input_o\,
	dataf => \ALT_INV_A[19]~input_o\,
	combout => \pg~91_combout\);

-- Location: LABCELL_X53_Y52_N16
\pg~21\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~21_combout\ = ( \pg~17_combout\ & ( (\pg~15_combout\ & \ppn_carry:pg[19][1]~0_combout\) ) ) # ( !\pg~17_combout\ & ( \ppn_carry:pg[19][1]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_pg~15_combout\,
	datad => \ALT_INV_ppn_carry:pg[19][1]~0_combout\,
	dataf => \ALT_INV_pg~17_combout\,
	combout => \pg~21_combout\);

-- Location: LABCELL_X53_Y52_N14
\S~20\ : arriaii_lcell_comb
-- Equation(s):
-- \S~20_combout\ = ( \c_var~8_combout\ & ( \pg~21_combout\ & ( !\A[20]~input_o\ $ (\B[20]~input_o\) ) ) ) # ( !\c_var~8_combout\ & ( \pg~21_combout\ & ( !\A[20]~input_o\ $ (\B[20]~input_o\) ) ) ) # ( \c_var~8_combout\ & ( !\pg~21_combout\ & ( 
-- !\A[20]~input_o\ $ (!\B[20]~input_o\ $ (((\pg~91_combout\) # (\ppn_carry:pg[19][1]~0_combout\)))) ) ) ) # ( !\c_var~8_combout\ & ( !\pg~21_combout\ & ( !\A[20]~input_o\ $ (!\B[20]~input_o\ $ (\pg~91_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011010011001100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[20]~input_o\,
	datab => \ALT_INV_B[20]~input_o\,
	datac => \ALT_INV_ppn_carry:pg[19][1]~0_combout\,
	datad => \ALT_INV_pg~91_combout\,
	datae => \ALT_INV_c_var~8_combout\,
	dataf => \ALT_INV_pg~21_combout\,
	combout => \S~20_combout\);

-- Location: IOIBUF_X51_Y56_N1
\A[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: LABCELL_X53_Y52_N22
\c_var~9\ : arriaii_lcell_comb
-- Equation(s):
-- \c_var~9_combout\ = ( \ppn_carry:pg[19][1]~0_combout\ & ( (\c_var~8_combout\ & (!\B[20]~input_o\ $ (!\A[20]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011001100000000001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_c_var~8_combout\,
	datac => \ALT_INV_B[20]~input_o\,
	datad => \ALT_INV_A[20]~input_o\,
	dataf => \ALT_INV_ppn_carry:pg[19][1]~0_combout\,
	combout => \c_var~9_combout\);

-- Location: MLABCELL_X54_Y52_N20
\ppn_carry:pg[20][0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[20][0]~0_combout\ = ( \pg~21_combout\ & ( (!\A[20]~input_o\ & !\B[20]~input_o\) ) ) # ( !\pg~21_combout\ & ( (!\A[20]~input_o\ & ((!\pg~91_combout\) # (!\B[20]~input_o\))) # (\A[20]~input_o\ & (!\pg~91_combout\ & !\B[20]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011000000111111001100000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[20]~input_o\,
	datac => \ALT_INV_pg~91_combout\,
	datad => \ALT_INV_B[20]~input_o\,
	dataf => \ALT_INV_pg~21_combout\,
	combout => \ppn_carry:pg[20][0]~0_combout\);

-- Location: IOIBUF_X56_Y56_N1
\B[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: MLABCELL_X54_Y52_N4
\S~21\ : arriaii_lcell_comb
-- Equation(s):
-- \S~21_combout\ = ( \B[21]~input_o\ & ( !\A[21]~input_o\ $ (((!\ppn_carry:pg[20][0]~0_combout\) # (\c_var~9_combout\))) ) ) # ( !\B[21]~input_o\ & ( !\A[21]~input_o\ $ (((!\c_var~9_combout\ & \ppn_carry:pg[20][0]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010011010100110101001101010011001011001010110010101100101011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[21]~input_o\,
	datab => \ALT_INV_c_var~9_combout\,
	datac => \ALT_INV_ppn_carry:pg[20][0]~0_combout\,
	dataf => \ALT_INV_B[21]~input_o\,
	combout => \S~21_combout\);

-- Location: LABCELL_X53_Y52_N38
\pg~23\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~23_combout\ = ( \A[21]~input_o\ & ( (!\B[21]~input_o\ & (!\A[20]~input_o\ $ (!\B[20]~input_o\))) ) ) # ( !\A[21]~input_o\ & ( (\B[21]~input_o\ & (!\A[20]~input_o\ $ (!\B[20]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101001011010000000000101101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[20]~input_o\,
	datac => \ALT_INV_B[20]~input_o\,
	datad => \ALT_INV_B[21]~input_o\,
	dataf => \ALT_INV_A[21]~input_o\,
	combout => \pg~23_combout\);

-- Location: MLABCELL_X54_Y52_N14
\pg~24\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~24_combout\ = ( \pg~91_combout\ & ( \pg~23_combout\ ) ) # ( !\pg~91_combout\ & ( (\pg~21_combout\ & \pg~23_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_pg~21_combout\,
	datad => \ALT_INV_pg~23_combout\,
	dataf => \ALT_INV_pg~91_combout\,
	combout => \pg~24_combout\);

-- Location: IOIBUF_X59_Y51_N94
\B[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: IOIBUF_X59_Y49_N63
\A[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: MLABCELL_X54_Y52_N30
\pg~22\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~22_combout\ = ( \B[21]~input_o\ & ( ((\A[20]~input_o\ & \B[20]~input_o\)) # (\A[21]~input_o\) ) ) # ( !\B[21]~input_o\ & ( (\A[20]~input_o\ & (\B[20]~input_o\ & \A[21]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[20]~input_o\,
	datac => \ALT_INV_B[20]~input_o\,
	datad => \ALT_INV_A[21]~input_o\,
	dataf => \ALT_INV_B[21]~input_o\,
	combout => \pg~22_combout\);

-- Location: MLABCELL_X54_Y52_N6
\c_var~10\ : arriaii_lcell_comb
-- Equation(s):
-- \c_var~10_combout\ = ( \B[21]~input_o\ & ( (!\A[21]~input_o\ & \c_var~9_combout\) ) ) # ( !\B[21]~input_o\ & ( (\A[21]~input_o\ & \c_var~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[21]~input_o\,
	datab => \ALT_INV_c_var~9_combout\,
	dataf => \ALT_INV_B[21]~input_o\,
	combout => \c_var~10_combout\);

-- Location: MLABCELL_X54_Y52_N12
\S~22\ : arriaii_lcell_comb
-- Equation(s):
-- \S~22_combout\ = ( \c_var~10_combout\ & ( !\B[22]~input_o\ $ (\A[22]~input_o\) ) ) # ( !\c_var~10_combout\ & ( !\B[22]~input_o\ $ (!\A[22]~input_o\ $ (((\pg~22_combout\) # (\pg~24_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100111000011011010011100001111000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pg~24_combout\,
	datab => \ALT_INV_B[22]~input_o\,
	datac => \ALT_INV_A[22]~input_o\,
	datad => \ALT_INV_pg~22_combout\,
	dataf => \ALT_INV_c_var~10_combout\,
	combout => \S~22_combout\);

-- Location: MLABCELL_X54_Y52_N28
\ppn_carry:pg[22][0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[22][0]~0_combout\ = ( \pg~24_combout\ & ( (!\A[22]~input_o\ & !\B[22]~input_o\) ) ) # ( !\pg~24_combout\ & ( (!\pg~22_combout\ & ((!\A[22]~input_o\) # (!\B[22]~input_o\))) # (\pg~22_combout\ & (!\A[22]~input_o\ & !\B[22]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011000000111111001100000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_pg~22_combout\,
	datac => \ALT_INV_A[22]~input_o\,
	datad => \ALT_INV_B[22]~input_o\,
	dataf => \ALT_INV_pg~24_combout\,
	combout => \ppn_carry:pg[22][0]~0_combout\);

-- Location: IOIBUF_X55_Y56_N94
\A[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: IOIBUF_X59_Y49_N94
\B[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: MLABCELL_X54_Y52_N18
\S~23\ : arriaii_lcell_comb
-- Equation(s):
-- \S~23_combout\ = ( \B[22]~input_o\ & ( \c_var~10_combout\ & ( !\A[23]~input_o\ $ (!\B[23]~input_o\ $ (((!\ppn_carry:pg[22][0]~0_combout\) # (!\A[22]~input_o\)))) ) ) ) # ( !\B[22]~input_o\ & ( \c_var~10_combout\ & ( !\A[23]~input_o\ $ (!\B[23]~input_o\ $ 
-- (((!\ppn_carry:pg[22][0]~0_combout\) # (\A[22]~input_o\)))) ) ) ) # ( \B[22]~input_o\ & ( !\c_var~10_combout\ & ( !\ppn_carry:pg[22][0]~0_combout\ $ (!\A[23]~input_o\ $ (!\B[23]~input_o\)) ) ) ) # ( !\B[22]~input_o\ & ( !\c_var~10_combout\ & ( 
-- !\ppn_carry:pg[22][0]~0_combout\ $ (!\A[23]~input_o\ $ (!\B[23]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011010010110100101101001011010010110110000111100001110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ppn_carry:pg[22][0]~0_combout\,
	datab => \ALT_INV_A[23]~input_o\,
	datac => \ALT_INV_B[23]~input_o\,
	datad => \ALT_INV_A[22]~input_o\,
	datae => \ALT_INV_B[22]~input_o\,
	dataf => \ALT_INV_c_var~10_combout\,
	combout => \S~23_combout\);

-- Location: MLABCELL_X54_Y52_N0
\pg~25\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~25_combout\ = ( \B[23]~input_o\ & ( (!\A[23]~input_o\ & (!\A[22]~input_o\ $ (!\B[22]~input_o\))) ) ) # ( !\B[23]~input_o\ & ( (\A[23]~input_o\ & (!\A[22]~input_o\ $ (!\B[22]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100100010000100010010001001000100100010000100010010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[22]~input_o\,
	datab => \ALT_INV_A[23]~input_o\,
	datad => \ALT_INV_B[22]~input_o\,
	dataf => \ALT_INV_B[23]~input_o\,
	combout => \pg~25_combout\);

-- Location: MLABCELL_X54_Y52_N26
\pg~26\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~26_combout\ = ( \ppn_carry:pg[19][1]~0_combout\ & ( (\pg~25_combout\ & \pg~23_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pg~25_combout\,
	datab => \ALT_INV_pg~23_combout\,
	dataf => \ALT_INV_ppn_carry:pg[19][1]~0_combout\,
	combout => \pg~26_combout\);

-- Location: LABCELL_X58_Y23_N38
\pg~27\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~27_combout\ = ( \pg~4_combout\ & ( (\pg~26_combout\ & ((!\pg~17_combout\) # (\pg~14_combout\))) ) ) # ( !\pg~4_combout\ & ( (\pg~26_combout\ & ((!\pg~17_combout\) # ((\pg~14_combout\ & \pg~93_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000001010101010000000101010101000100010101010100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pg~26_combout\,
	datab => \ALT_INV_pg~14_combout\,
	datac => \ALT_INV_pg~93_combout\,
	datad => \ALT_INV_pg~17_combout\,
	dataf => \ALT_INV_pg~4_combout\,
	combout => \pg~27_combout\);

-- Location: MLABCELL_X54_Y52_N2
\pg~28\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~28_combout\ = ( \B[23]~input_o\ & ( ((\A[22]~input_o\ & \B[22]~input_o\)) # (\A[23]~input_o\) ) ) # ( !\B[23]~input_o\ & ( (\A[22]~input_o\ & (\A[23]~input_o\ & \B[22]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[22]~input_o\,
	datac => \ALT_INV_A[23]~input_o\,
	datad => \ALT_INV_B[22]~input_o\,
	dataf => \ALT_INV_B[23]~input_o\,
	combout => \pg~28_combout\);

-- Location: MLABCELL_X54_Y52_N24
\pg~29\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~29_combout\ = ( \pg~91_combout\ & ( (!\pg~28_combout\ & ((!\pg~25_combout\) # ((!\pg~23_combout\ & !\pg~22_combout\)))) ) ) # ( !\pg~91_combout\ & ( (!\pg~28_combout\ & ((!\pg~25_combout\) # (!\pg~22_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010100000111100001010000011100000101000001110000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pg~25_combout\,
	datab => \ALT_INV_pg~23_combout\,
	datac => \ALT_INV_pg~28_combout\,
	datad => \ALT_INV_pg~22_combout\,
	dataf => \ALT_INV_pg~91_combout\,
	combout => \pg~29_combout\);

-- Location: IOIBUF_X59_Y48_N32
\A[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: LABCELL_X53_Y52_N36
\c_var~11\ : arriaii_lcell_comb
-- Equation(s):
-- \c_var~11_combout\ = ( \pg~26_combout\ & ( \c_var~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_c_var~8_combout\,
	dataf => \ALT_INV_pg~26_combout\,
	combout => \c_var~11_combout\);

-- Location: IOIBUF_X59_Y49_N1
\B[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: MLABCELL_X54_Y52_N8
\S~24\ : arriaii_lcell_comb
-- Equation(s):
-- \S~24_combout\ = ( \B[24]~input_o\ & ( !\A[24]~input_o\ $ ((((!\pg~29_combout\) # (\c_var~11_combout\)) # (\pg~27_combout\))) ) ) # ( !\B[24]~input_o\ & ( !\A[24]~input_o\ $ (((!\pg~27_combout\ & (\pg~29_combout\ & !\c_var~11_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101001011110000110100101111000000101101000011110010110100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pg~27_combout\,
	datab => \ALT_INV_pg~29_combout\,
	datac => \ALT_INV_A[24]~input_o\,
	datad => \ALT_INV_c_var~11_combout\,
	dataf => \ALT_INV_B[24]~input_o\,
	combout => \S~24_combout\);

-- Location: IOIBUF_X59_Y51_N1
\A[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: MLABCELL_X54_Y52_N22
\ppn_carry:pg[24][0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[24][0]~0_combout\ = ( \B[24]~input_o\ & ( (!\pg~27_combout\ & (\pg~29_combout\ & !\A[24]~input_o\)) ) ) # ( !\B[24]~input_o\ & ( (!\A[24]~input_o\) # ((!\pg~27_combout\ & \pg~29_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001010111111110000101000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pg~27_combout\,
	datac => \ALT_INV_pg~29_combout\,
	datad => \ALT_INV_A[24]~input_o\,
	dataf => \ALT_INV_B[24]~input_o\,
	combout => \ppn_carry:pg[24][0]~0_combout\);

-- Location: IOIBUF_X55_Y56_N63
\B[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: MLABCELL_X54_Y52_N32
\S~25\ : arriaii_lcell_comb
-- Equation(s):
-- \S~25_combout\ = ( \c_var~11_combout\ & ( \A[24]~input_o\ & ( !\A[25]~input_o\ $ (!\B[25]~input_o\ $ (((!\ppn_carry:pg[24][0]~0_combout\) # (!\B[24]~input_o\)))) ) ) ) # ( !\c_var~11_combout\ & ( \A[24]~input_o\ & ( !\A[25]~input_o\ $ 
-- (!\ppn_carry:pg[24][0]~0_combout\ $ (!\B[25]~input_o\)) ) ) ) # ( \c_var~11_combout\ & ( !\A[24]~input_o\ & ( !\A[25]~input_o\ $ (!\B[25]~input_o\ $ (((!\ppn_carry:pg[24][0]~0_combout\) # (\B[24]~input_o\)))) ) ) ) # ( !\c_var~11_combout\ & ( 
-- !\A[24]~input_o\ & ( !\A[25]~input_o\ $ (!\ppn_carry:pg[24][0]~0_combout\ $ (!\B[25]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011010010110100101101010010110010110100101101010010110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[25]~input_o\,
	datab => \ALT_INV_ppn_carry:pg[24][0]~0_combout\,
	datac => \ALT_INV_B[25]~input_o\,
	datad => \ALT_INV_B[24]~input_o\,
	datae => \ALT_INV_c_var~11_combout\,
	dataf => \ALT_INV_A[24]~input_o\,
	combout => \S~25_combout\);

-- Location: MLABCELL_X54_Y52_N36
\c_var~12\ : arriaii_lcell_comb
-- Equation(s):
-- \c_var~12_combout\ = ( \A[25]~input_o\ & ( (!\B[25]~input_o\ & (!\B[24]~input_o\ $ (!\A[24]~input_o\))) ) ) # ( !\A[25]~input_o\ & ( (\B[25]~input_o\ & (!\B[24]~input_o\ $ (!\A[24]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100000101000001010000101000001010000010100000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[25]~input_o\,
	datab => \ALT_INV_B[24]~input_o\,
	datac => \ALT_INV_A[24]~input_o\,
	dataf => \ALT_INV_A[25]~input_o\,
	combout => \c_var~12_combout\);

-- Location: MLABCELL_X54_Y52_N10
\pg~31\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~31_combout\ = (\c_var~12_combout\ & ((!\pg~29_combout\) # (\pg~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000011010000110100001101000011010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pg~27_combout\,
	datab => \ALT_INV_pg~29_combout\,
	datac => \ALT_INV_c_var~12_combout\,
	combout => \pg~31_combout\);

-- Location: IOIBUF_X59_Y31_N32
\B[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: IOIBUF_X59_Y34_N1
\A[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: MLABCELL_X54_Y37_N2
\p[26]\ : arriaii_lcell_comb
-- Equation(s):
-- p(26) = !\B[26]~input_o\ $ (!\A[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[26]~input_o\,
	datab => \ALT_INV_A[26]~input_o\,
	combout => p(26));

-- Location: MLABCELL_X54_Y52_N38
\pg~30\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~30_combout\ = ( \A[25]~input_o\ & ( ((\B[24]~input_o\ & \A[24]~input_o\)) # (\B[25]~input_o\) ) ) # ( !\A[25]~input_o\ & ( (\B[25]~input_o\ & (\B[24]~input_o\ & \A[24]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000101010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[25]~input_o\,
	datab => \ALT_INV_B[24]~input_o\,
	datac => \ALT_INV_A[24]~input_o\,
	dataf => \ALT_INV_A[25]~input_o\,
	combout => \pg~30_combout\);

-- Location: MLABCELL_X54_Y37_N26
\S~26\ : arriaii_lcell_comb
-- Equation(s):
-- \S~26_combout\ = ( \c_var~12_combout\ & ( !p(26) $ (((!\c_var~11_combout\ & (!\pg~31_combout\ & !\pg~30_combout\)))) ) ) # ( !\c_var~12_combout\ & ( !p(26) $ (((!\pg~31_combout\ & !\pg~30_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011110000001111001111000001111000111100000111100011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c_var~11_combout\,
	datab => \ALT_INV_pg~31_combout\,
	datac => ALT_INV_p(26),
	datad => \ALT_INV_pg~30_combout\,
	dataf => \ALT_INV_c_var~12_combout\,
	combout => \S~26_combout\);

-- Location: IOIBUF_X59_Y33_N94
\B[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: MLABCELL_X54_Y37_N0
\ppn_carry:pg[26][0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[26][0]~0_combout\ = ( \pg~31_combout\ & ( (!\B[26]~input_o\ & !\A[26]~input_o\) ) ) # ( !\pg~31_combout\ & ( (!\B[26]~input_o\ & ((!\A[26]~input_o\) # (!\pg~30_combout\))) # (\B[26]~input_o\ & (!\A[26]~input_o\ & !\pg~30_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111010001000111011101000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[26]~input_o\,
	datab => \ALT_INV_A[26]~input_o\,
	datad => \ALT_INV_pg~30_combout\,
	dataf => \ALT_INV_pg~31_combout\,
	combout => \ppn_carry:pg[26][0]~0_combout\);

-- Location: IOIBUF_X59_Y34_N63
\A[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: MLABCELL_X54_Y37_N28
\S~27\ : arriaii_lcell_comb
-- Equation(s):
-- \S~27_combout\ = ( \A[27]~input_o\ & ( \c_var~12_combout\ & ( !\B[27]~input_o\ $ (((!\ppn_carry:pg[26][0]~0_combout\) # ((\c_var~11_combout\ & p(26))))) ) ) ) # ( !\A[27]~input_o\ & ( \c_var~12_combout\ & ( !\B[27]~input_o\ $ 
-- (((\ppn_carry:pg[26][0]~0_combout\ & ((!\c_var~11_combout\) # (!p(26)))))) ) ) ) # ( \A[27]~input_o\ & ( !\c_var~12_combout\ & ( !\B[27]~input_o\ $ (!\ppn_carry:pg[26][0]~0_combout\) ) ) ) # ( !\A[27]~input_o\ & ( !\c_var~12_combout\ & ( !\B[27]~input_o\ 
-- $ (\ppn_carry:pg[26][0]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101010110100101101010100101101001100101101001011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[27]~input_o\,
	datab => \ALT_INV_c_var~11_combout\,
	datac => \ALT_INV_ppn_carry:pg[26][0]~0_combout\,
	datad => ALT_INV_p(26),
	datae => \ALT_INV_A[27]~input_o\,
	dataf => \ALT_INV_c_var~12_combout\,
	combout => \S~27_combout\);

-- Location: MLABCELL_X54_Y37_N34
\pg~32\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~32_combout\ = ( \c_var~12_combout\ & ( (p(26) & (!\B[27]~input_o\ $ (!\A[27]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000110000001100000011000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[27]~input_o\,
	datab => \ALT_INV_A[27]~input_o\,
	datac => ALT_INV_p(26),
	dataf => \ALT_INV_c_var~12_combout\,
	combout => \pg~32_combout\);

-- Location: MLABCELL_X54_Y37_N24
\pg~33\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~33_combout\ = ( \pg~29_combout\ & ( (\pg~27_combout\ & \pg~32_combout\) ) ) # ( !\pg~29_combout\ & ( \pg~32_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_pg~27_combout\,
	datad => \ALT_INV_pg~32_combout\,
	dataf => \ALT_INV_pg~29_combout\,
	combout => \pg~33_combout\);

-- Location: IOIBUF_X59_Y30_N63
\A[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: MLABCELL_X54_Y37_N32
\pg~90\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~90_combout\ = ( \A[26]~input_o\ & ( (!\B[27]~input_o\ & (\A[27]~input_o\ & ((\pg~30_combout\) # (\B[26]~input_o\)))) # (\B[27]~input_o\ & (((\pg~30_combout\) # (\B[26]~input_o\)) # (\A[27]~input_o\))) ) ) # ( !\A[26]~input_o\ & ( (!\B[27]~input_o\ & 
-- (\A[27]~input_o\ & (\B[26]~input_o\ & \pg~30_combout\))) # (\B[27]~input_o\ & (((\B[26]~input_o\ & \pg~30_combout\)) # (\A[27]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010111000100010001011100010111011101110001011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[27]~input_o\,
	datab => \ALT_INV_A[27]~input_o\,
	datac => \ALT_INV_B[26]~input_o\,
	datad => \ALT_INV_pg~30_combout\,
	dataf => \ALT_INV_A[26]~input_o\,
	combout => \pg~90_combout\);

-- Location: IOIBUF_X59_Y36_N1
\B[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: LABCELL_X58_Y36_N0
\S~28\ : arriaii_lcell_comb
-- Equation(s):
-- \S~28_combout\ = ( \pg~90_combout\ & ( \B[28]~input_o\ & ( \A[28]~input_o\ ) ) ) # ( !\pg~90_combout\ & ( \B[28]~input_o\ & ( !\A[28]~input_o\ $ ((((\pg~32_combout\ & \c_var~11_combout\)) # (\pg~33_combout\))) ) ) ) # ( \pg~90_combout\ & ( 
-- !\B[28]~input_o\ & ( !\A[28]~input_o\ ) ) ) # ( !\pg~90_combout\ & ( !\B[28]~input_o\ & ( !\A[28]~input_o\ $ (((!\pg~33_combout\ & ((!\pg~32_combout\) # (!\c_var~11_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001101100110011001100110010011001100100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pg~33_combout\,
	datab => \ALT_INV_A[28]~input_o\,
	datac => \ALT_INV_pg~32_combout\,
	datad => \ALT_INV_c_var~11_combout\,
	datae => \ALT_INV_pg~90_combout\,
	dataf => \ALT_INV_B[28]~input_o\,
	combout => \S~28_combout\);

-- Location: LABCELL_X58_Y36_N4
\c_var~13\ : arriaii_lcell_comb
-- Equation(s):
-- \c_var~13_combout\ = ( \B[28]~input_o\ & ( (!\A[28]~input_o\ & (\pg~32_combout\ & \c_var~11_combout\)) ) ) # ( !\B[28]~input_o\ & ( (\A[28]~input_o\ & (\pg~32_combout\ & \c_var~11_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[28]~input_o\,
	datac => \ALT_INV_pg~32_combout\,
	datad => \ALT_INV_c_var~11_combout\,
	dataf => \ALT_INV_B[28]~input_o\,
	combout => \c_var~13_combout\);

-- Location: IOIBUF_X59_Y28_N94
\A[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: IOIBUF_X59_Y36_N63
\B[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: LABCELL_X58_Y36_N6
\ppn_carry:pg[28][0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[28][0]~0_combout\ = ( \pg~33_combout\ & ( (!\A[28]~input_o\ & !\B[28]~input_o\) ) ) # ( !\pg~33_combout\ & ( (!\A[28]~input_o\ & ((!\B[28]~input_o\) # (!\pg~90_combout\))) # (\A[28]~input_o\ & (!\B[28]~input_o\ & !\pg~90_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011000000111111001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[28]~input_o\,
	datac => \ALT_INV_B[28]~input_o\,
	datad => \ALT_INV_pg~90_combout\,
	dataf => \ALT_INV_pg~33_combout\,
	combout => \ppn_carry:pg[28][0]~0_combout\);

-- Location: LABCELL_X58_Y36_N10
\S~29\ : arriaii_lcell_comb
-- Equation(s):
-- \S~29_combout\ = ( \ppn_carry:pg[28][0]~0_combout\ & ( !\c_var~13_combout\ $ (!\A[29]~input_o\ $ (\B[29]~input_o\)) ) ) # ( !\ppn_carry:pg[28][0]~0_combout\ & ( !\A[29]~input_o\ $ (\B[29]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111101011010101001010101101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c_var~13_combout\,
	datac => \ALT_INV_A[29]~input_o\,
	datad => \ALT_INV_B[29]~input_o\,
	dataf => \ALT_INV_ppn_carry:pg[28][0]~0_combout\,
	combout => \S~29_combout\);

-- Location: IOIBUF_X59_Y31_N63
\B[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: IOIBUF_X59_Y34_N32
\A[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: LABCELL_X58_Y36_N12
\pg~34\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~34_combout\ = ( \B[28]~input_o\ & ( (!\A[28]~input_o\ & (!\B[29]~input_o\ $ (!\A[29]~input_o\))) ) ) # ( !\B[28]~input_o\ & ( (\A[28]~input_o\ & (!\B[29]~input_o\ $ (!\A[29]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100100010000100010010001001000100100010000100010010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[29]~input_o\,
	datab => \ALT_INV_A[28]~input_o\,
	datad => \ALT_INV_A[29]~input_o\,
	dataf => \ALT_INV_B[28]~input_o\,
	combout => \pg~34_combout\);

-- Location: LABCELL_X58_Y36_N8
\pg~35\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~35_combout\ = ( \pg~33_combout\ & ( \pg~34_combout\ ) ) # ( !\pg~33_combout\ & ( (\pg~90_combout\ & \pg~34_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_pg~90_combout\,
	datad => \ALT_INV_pg~34_combout\,
	dataf => \ALT_INV_pg~33_combout\,
	combout => \pg~35_combout\);

-- Location: LABCELL_X58_Y36_N14
\pg~36\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~36_combout\ = ( \B[28]~input_o\ & ( (!\B[29]~input_o\ & (\A[28]~input_o\ & \A[29]~input_o\)) # (\B[29]~input_o\ & ((\A[29]~input_o\) # (\A[28]~input_o\))) ) ) # ( !\B[28]~input_o\ & ( (\B[29]~input_o\ & \A[29]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[29]~input_o\,
	datac => \ALT_INV_A[28]~input_o\,
	datad => \ALT_INV_A[29]~input_o\,
	dataf => \ALT_INV_B[28]~input_o\,
	combout => \pg~36_combout\);

-- Location: LABCELL_X58_Y36_N36
\ppn_carry:c_var[30]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \ppn_carry:c_var[30]~0_combout\ = ( \pg~32_combout\ & ( (!\pg~36_combout\ & ((!\pg~34_combout\) # (!\c_var~11_combout\))) ) ) # ( !\pg~32_combout\ & ( !\pg~36_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100100010001100110010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pg~34_combout\,
	datab => \ALT_INV_pg~36_combout\,
	datad => \ALT_INV_c_var~11_combout\,
	dataf => \ALT_INV_pg~32_combout\,
	combout => \ppn_carry:c_var[30]~0_combout\);

-- Location: LABCELL_X58_Y36_N20
\S~30\ : arriaii_lcell_comb
-- Equation(s):
-- \S~30_combout\ = !\B[30]~input_o\ $ (!\A[30]~input_o\ $ (((!\ppn_carry:c_var[30]~0_combout\) # (\pg~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100101101001100110010110100110011001011010011001100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[30]~input_o\,
	datab => \ALT_INV_A[30]~input_o\,
	datac => \ALT_INV_pg~35_combout\,
	datad => \ALT_INV_ppn_carry:c_var[30]~0_combout\,
	combout => \S~30_combout\);

-- Location: IOIBUF_X59_Y28_N32
\B[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: LABCELL_X58_Y36_N26
\c_var~14\ : arriaii_lcell_comb
-- Equation(s):
-- \c_var~14_combout\ = ( \B[30]~input_o\ & ( (\pg~32_combout\ & (!\A[30]~input_o\ & \pg~34_combout\)) ) ) # ( !\B[30]~input_o\ & ( (\pg~32_combout\ & (\A[30]~input_o\ & \pg~34_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pg~32_combout\,
	datac => \ALT_INV_A[30]~input_o\,
	datad => \ALT_INV_pg~34_combout\,
	dataf => \ALT_INV_B[30]~input_o\,
	combout => \c_var~14_combout\);

-- Location: LABCELL_X58_Y36_N22
\ppn_carry:pg[30][0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[30][0]~0_combout\ = ( \pg~36_combout\ & ( (!\B[30]~input_o\ & !\A[30]~input_o\) ) ) # ( !\pg~36_combout\ & ( (!\B[30]~input_o\ & ((!\A[30]~input_o\) # (!\pg~35_combout\))) # (\B[30]~input_o\ & (!\A[30]~input_o\ & !\pg~35_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111010001000111011101000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[30]~input_o\,
	datab => \ALT_INV_A[30]~input_o\,
	datad => \ALT_INV_pg~35_combout\,
	dataf => \ALT_INV_pg~36_combout\,
	combout => \ppn_carry:pg[30][0]~0_combout\);

-- Location: IOIBUF_X59_Y31_N1
\A[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: LABCELL_X58_Y36_N30
\S~31\ : arriaii_lcell_comb
-- Equation(s):
-- \S~31_combout\ = ( \A[31]~input_o\ & ( !\B[31]~input_o\ $ (((!\ppn_carry:pg[30][0]~0_combout\) # ((\c_var~14_combout\ & \c_var~11_combout\)))) ) ) # ( !\A[31]~input_o\ & ( !\B[31]~input_o\ $ (((\ppn_carry:pg[30][0]~0_combout\ & ((!\c_var~14_combout\) # 
-- (!\c_var~11_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001010110101010100101011001010101101010010101010110101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[31]~input_o\,
	datab => \ALT_INV_c_var~14_combout\,
	datac => \ALT_INV_c_var~11_combout\,
	datad => \ALT_INV_ppn_carry:pg[30][0]~0_combout\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \S~31_combout\);

-- Location: IOIBUF_X59_Y34_N94
\B[32]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(32),
	o => \B[32]~input_o\);

-- Location: IOIBUF_X59_Y26_N32
\A[32]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(32),
	o => \A[32]~input_o\);

-- Location: LABCELL_X58_Y36_N16
\pg~39\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~39_combout\ = ( \A[31]~input_o\ & ( ((\B[30]~input_o\ & \A[30]~input_o\)) # (\B[31]~input_o\) ) ) # ( !\A[31]~input_o\ & ( (\B[30]~input_o\ & (\A[30]~input_o\ & \B[31]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[30]~input_o\,
	datab => \ALT_INV_A[30]~input_o\,
	datac => \ALT_INV_B[31]~input_o\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \pg~39_combout\);

-- Location: LABCELL_X58_Y36_N18
\pg~40\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~40_combout\ = ( \A[31]~input_o\ & ( (!\B[31]~input_o\ & (!\B[30]~input_o\ $ (!\A[30]~input_o\))) ) ) # ( !\A[31]~input_o\ & ( (\B[31]~input_o\ & (!\B[30]~input_o\ $ (!\A[30]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000000110011001100110000000000110011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[30]~input_o\,
	datab => \ALT_INV_A[30]~input_o\,
	datad => \ALT_INV_B[31]~input_o\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \pg~40_combout\);

-- Location: LABCELL_X58_Y36_N38
\pg~41\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~41_combout\ = ( \pg~40_combout\ & ( (!\pg~36_combout\ & (!\pg~39_combout\ & ((!\pg~34_combout\) # (!\pg~90_combout\)))) ) ) # ( !\pg~40_combout\ & ( !\pg~39_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011000000100000001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pg~34_combout\,
	datab => \ALT_INV_pg~36_combout\,
	datac => \ALT_INV_pg~39_combout\,
	datad => \ALT_INV_pg~90_combout\,
	dataf => \ALT_INV_pg~40_combout\,
	combout => \pg~41_combout\);

-- Location: LABCELL_X58_Y36_N28
\pg~42\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~42_combout\ = ( \A[31]~input_o\ & ( (\pg~41_combout\ & (((!\c_var~14_combout\) # (\pg~29_combout\)) # (\B[31]~input_o\))) ) ) # ( !\A[31]~input_o\ & ( (\pg~41_combout\ & ((!\B[31]~input_o\) # ((!\c_var~14_combout\) # (\pg~29_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101111000000001110111100000000110111110000000011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[31]~input_o\,
	datab => \ALT_INV_c_var~14_combout\,
	datac => \ALT_INV_pg~29_combout\,
	datad => \ALT_INV_pg~41_combout\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \pg~42_combout\);

-- Location: LABCELL_X58_Y36_N24
\pg~37\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~37_combout\ = ( \A[31]~input_o\ & ( (\c_var~14_combout\ & !\B[31]~input_o\) ) ) # ( !\A[31]~input_o\ & ( (\c_var~14_combout\ & \B[31]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_c_var~14_combout\,
	datac => \ALT_INV_B[31]~input_o\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \pg~37_combout\);

-- Location: LABCELL_X58_Y36_N34
\pg~38\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~38_combout\ = ( \pg~37_combout\ & ( \pg~27_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_pg~27_combout\,
	dataf => \ALT_INV_pg~37_combout\,
	combout => \pg~38_combout\);

-- Location: LABCELL_X58_Y36_N32
\c_var~15\ : arriaii_lcell_comb
-- Equation(s):
-- \c_var~15_combout\ = ( \pg~32_combout\ & ( (\pg~34_combout\ & (\c_var~8_combout\ & (\pg~26_combout\ & \pg~40_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pg~34_combout\,
	datab => \ALT_INV_c_var~8_combout\,
	datac => \ALT_INV_pg~26_combout\,
	datad => \ALT_INV_pg~40_combout\,
	dataf => \ALT_INV_pg~32_combout\,
	combout => \c_var~15_combout\);

-- Location: MLABCELL_X54_Y37_N18
\S~32\ : arriaii_lcell_comb
-- Equation(s):
-- \S~32_combout\ = ( \c_var~15_combout\ & ( !\B[32]~input_o\ $ (\A[32]~input_o\) ) ) # ( !\c_var~15_combout\ & ( !\B[32]~input_o\ $ (!\A[32]~input_o\ $ (((!\pg~42_combout\) # (\pg~38_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011010011001100101101001100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[32]~input_o\,
	datab => \ALT_INV_A[32]~input_o\,
	datac => \ALT_INV_pg~42_combout\,
	datad => \ALT_INV_pg~38_combout\,
	dataf => \ALT_INV_c_var~15_combout\,
	combout => \S~32_combout\);

-- Location: MLABCELL_X54_Y37_N22
\ppn_carry:pg[32][0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[32][0]~0_combout\ = (!\B[32]~input_o\ & ((!\A[32]~input_o\) # ((!\pg~38_combout\ & \pg~42_combout\)))) # (\B[32]~input_o\ & (!\A[32]~input_o\ & (!\pg~38_combout\ & \pg~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100011101000100010001110100010001000111010001000100011101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[32]~input_o\,
	datab => \ALT_INV_A[32]~input_o\,
	datac => \ALT_INV_pg~38_combout\,
	datad => \ALT_INV_pg~42_combout\,
	combout => \ppn_carry:pg[32][0]~0_combout\);

-- Location: IOIBUF_X59_Y30_N1
\A[33]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(33),
	o => \A[33]~input_o\);

-- Location: IOIBUF_X59_Y37_N1
\B[33]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(33),
	o => \B[33]~input_o\);

-- Location: MLABCELL_X54_Y37_N6
\S~33\ : arriaii_lcell_comb
-- Equation(s):
-- \S~33_combout\ = ( \A[32]~input_o\ & ( \B[33]~input_o\ & ( !\A[33]~input_o\ $ (((!\ppn_carry:pg[32][0]~0_combout\) # ((!\B[32]~input_o\ & \c_var~15_combout\)))) ) ) ) # ( !\A[32]~input_o\ & ( \B[33]~input_o\ & ( !\A[33]~input_o\ $ 
-- (((!\ppn_carry:pg[32][0]~0_combout\) # ((\B[32]~input_o\ & \c_var~15_combout\)))) ) ) ) # ( \A[32]~input_o\ & ( !\B[33]~input_o\ & ( !\A[33]~input_o\ $ (((\ppn_carry:pg[32][0]~0_combout\ & ((!\c_var~15_combout\) # (\B[32]~input_o\))))) ) ) ) # ( 
-- !\A[32]~input_o\ & ( !\B[33]~input_o\ & ( !\A[33]~input_o\ $ (((\ppn_carry:pg[32][0]~0_combout\ & ((!\B[32]~input_o\) # (!\c_var~15_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111010010110000111110000100111100001011010011110000011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[32]~input_o\,
	datab => \ALT_INV_ppn_carry:pg[32][0]~0_combout\,
	datac => \ALT_INV_A[33]~input_o\,
	datad => \ALT_INV_c_var~15_combout\,
	datae => \ALT_INV_A[32]~input_o\,
	dataf => \ALT_INV_B[33]~input_o\,
	combout => \S~33_combout\);

-- Location: MLABCELL_X54_Y37_N20
\pg~44\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~44_combout\ = ( \A[33]~input_o\ & ( (!\B[33]~input_o\ & (!\B[32]~input_o\ $ (!\A[32]~input_o\))) ) ) # ( !\A[33]~input_o\ & ( (\B[33]~input_o\ & (!\B[32]~input_o\ $ (!\A[32]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011001100000011000000110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[32]~input_o\,
	datab => \ALT_INV_A[32]~input_o\,
	datac => \ALT_INV_B[33]~input_o\,
	dataf => \ALT_INV_A[33]~input_o\,
	combout => \pg~44_combout\);

-- Location: MLABCELL_X54_Y37_N14
\pg~45\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~45_combout\ = ( \pg~44_combout\ & ( (!\pg~42_combout\) # (\pg~38_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_pg~42_combout\,
	datad => \ALT_INV_pg~38_combout\,
	dataf => \ALT_INV_pg~44_combout\,
	combout => \pg~45_combout\);

-- Location: IOIBUF_X59_Y37_N32
\A[34]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(34),
	o => \A[34]~input_o\);

-- Location: IOIBUF_X59_Y37_N63
\B[34]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(34),
	o => \B[34]~input_o\);

-- Location: MLABCELL_X54_Y37_N8
\p[34]\ : arriaii_lcell_comb
-- Equation(s):
-- p(34) = !\A[34]~input_o\ $ (!\B[34]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[34]~input_o\,
	datad => \ALT_INV_B[34]~input_o\,
	combout => p(34));

-- Location: MLABCELL_X54_Y37_N16
\pg~43\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~43_combout\ = ( \A[33]~input_o\ & ( ((\B[32]~input_o\ & \A[32]~input_o\)) # (\B[33]~input_o\) ) ) # ( !\A[33]~input_o\ & ( (\B[32]~input_o\ & (\A[32]~input_o\ & \B[33]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[32]~input_o\,
	datab => \ALT_INV_A[32]~input_o\,
	datac => \ALT_INV_B[33]~input_o\,
	dataf => \ALT_INV_A[33]~input_o\,
	combout => \pg~43_combout\);

-- Location: MLABCELL_X54_Y37_N10
\S~34\ : arriaii_lcell_comb
-- Equation(s):
-- \S~34_combout\ = ( \pg~43_combout\ & ( !p(34) ) ) # ( !\pg~43_combout\ & ( !p(34) $ (((!\pg~45_combout\ & ((!\c_var~15_combout\) # (!\pg~44_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111111100000000111111110000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c_var~15_combout\,
	datab => \ALT_INV_pg~44_combout\,
	datac => \ALT_INV_pg~45_combout\,
	datad => ALT_INV_p(34),
	dataf => \ALT_INV_pg~43_combout\,
	combout => \S~34_combout\);

-- Location: MLABCELL_X54_Y37_N12
\ppn_carry:pg[34][0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[34][0]~0_combout\ = ( \pg~45_combout\ & ( (!\B[34]~input_o\ & !\A[34]~input_o\) ) ) # ( !\pg~45_combout\ & ( (!\B[34]~input_o\ & ((!\pg~43_combout\) # (!\A[34]~input_o\))) # (\B[34]~input_o\ & (!\pg~43_combout\ & !\A[34]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100011101000111010001110100010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[34]~input_o\,
	datab => \ALT_INV_pg~43_combout\,
	datac => \ALT_INV_A[34]~input_o\,
	dataf => \ALT_INV_pg~45_combout\,
	combout => \ppn_carry:pg[34][0]~0_combout\);

-- Location: IOIBUF_X59_Y39_N1
\B[35]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(35),
	o => \B[35]~input_o\);

-- Location: IOIBUF_X59_Y39_N32
\A[35]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(35),
	o => \A[35]~input_o\);

-- Location: MLABCELL_X54_Y37_N36
\S~35\ : arriaii_lcell_comb
-- Equation(s):
-- \S~35_combout\ = ( \A[35]~input_o\ & ( p(34) & ( !\B[35]~input_o\ $ (((!\ppn_carry:pg[34][0]~0_combout\) # ((\c_var~15_combout\ & \pg~44_combout\)))) ) ) ) # ( !\A[35]~input_o\ & ( p(34) & ( !\B[35]~input_o\ $ (((\ppn_carry:pg[34][0]~0_combout\ & 
-- ((!\c_var~15_combout\) # (!\pg~44_combout\))))) ) ) ) # ( \A[35]~input_o\ & ( !p(34) & ( !\ppn_carry:pg[34][0]~0_combout\ $ (!\B[35]~input_o\) ) ) ) # ( !\A[35]~input_o\ & ( !p(34) & ( !\ppn_carry:pg[34][0]~0_combout\ $ (\B[35]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001011001100110011010011001100111000110011001100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ppn_carry:pg[34][0]~0_combout\,
	datab => \ALT_INV_B[35]~input_o\,
	datac => \ALT_INV_c_var~15_combout\,
	datad => \ALT_INV_pg~44_combout\,
	datae => \ALT_INV_A[35]~input_o\,
	dataf => ALT_INV_p(34),
	combout => \S~35_combout\);

-- Location: IOIBUF_X59_Y46_N63
\B[36]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(36),
	o => \B[36]~input_o\);

-- Location: LABCELL_X58_Y44_N2
\pg~89\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~89_combout\ = ( \B[34]~input_o\ & ( (!\B[35]~input_o\ & (\A[35]~input_o\ & ((\A[34]~input_o\) # (\pg~43_combout\)))) # (\B[35]~input_o\ & (((\A[34]~input_o\) # (\pg~43_combout\)) # (\A[35]~input_o\))) ) ) # ( !\B[34]~input_o\ & ( (!\B[35]~input_o\ & 
-- (\A[35]~input_o\ & (\pg~43_combout\ & \A[34]~input_o\))) # (\B[35]~input_o\ & (((\pg~43_combout\ & \A[34]~input_o\)) # (\A[35]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010111000100010001011100010111011101110001011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[35]~input_o\,
	datab => \ALT_INV_A[35]~input_o\,
	datac => \ALT_INV_pg~43_combout\,
	datad => \ALT_INV_A[34]~input_o\,
	dataf => \ALT_INV_B[34]~input_o\,
	combout => \pg~89_combout\);

-- Location: LABCELL_X58_Y44_N0
\ppn_carry:pg[35][1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[35][1]~0_combout\ = ( p(34) & ( (\pg~44_combout\ & (!\B[35]~input_o\ $ (!\A[35]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000110000001100000011000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[35]~input_o\,
	datab => \ALT_INV_A[35]~input_o\,
	datac => \ALT_INV_pg~44_combout\,
	dataf => ALT_INV_p(34),
	combout => \ppn_carry:pg[35][1]~0_combout\);

-- Location: LABCELL_X58_Y44_N6
\pg~46\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~46_combout\ = ( \pg~42_combout\ & ( (\pg~38_combout\ & \ppn_carry:pg[35][1]~0_combout\) ) ) # ( !\pg~42_combout\ & ( \ppn_carry:pg[35][1]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_pg~38_combout\,
	datad => \ALT_INV_ppn_carry:pg[35][1]~0_combout\,
	dataf => \ALT_INV_pg~42_combout\,
	combout => \pg~46_combout\);

-- Location: IOIBUF_X59_Y46_N94
\A[36]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(36),
	o => \A[36]~input_o\);

-- Location: LABCELL_X58_Y44_N30
\S~36\ : arriaii_lcell_comb
-- Equation(s):
-- \S~36_combout\ = ( \ppn_carry:pg[35][1]~0_combout\ & ( \A[36]~input_o\ & ( !\B[36]~input_o\ $ ((((\c_var~15_combout\) # (\pg~46_combout\)) # (\pg~89_combout\))) ) ) ) # ( !\ppn_carry:pg[35][1]~0_combout\ & ( \A[36]~input_o\ & ( !\B[36]~input_o\ $ 
-- (((\pg~46_combout\) # (\pg~89_combout\))) ) ) ) # ( \ppn_carry:pg[35][1]~0_combout\ & ( !\A[36]~input_o\ & ( !\B[36]~input_o\ $ (((!\pg~89_combout\ & (!\pg~46_combout\ & !\c_var~15_combout\)))) ) ) ) # ( !\ppn_carry:pg[35][1]~0_combout\ & ( 
-- !\A[36]~input_o\ & ( !\B[36]~input_o\ $ (((!\pg~89_combout\ & !\pg~46_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110101001101010011010101010101010010101100101011001010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[36]~input_o\,
	datab => \ALT_INV_pg~89_combout\,
	datac => \ALT_INV_pg~46_combout\,
	datad => \ALT_INV_c_var~15_combout\,
	datae => \ALT_INV_ppn_carry:pg[35][1]~0_combout\,
	dataf => \ALT_INV_A[36]~input_o\,
	combout => \S~36_combout\);

-- Location: IOIBUF_X59_Y26_N1
\A[37]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(37),
	o => \A[37]~input_o\);

-- Location: IOIBUF_X59_Y39_N94
\B[37]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(37),
	o => \B[37]~input_o\);

-- Location: LABCELL_X58_Y44_N12
\c_var~16\ : arriaii_lcell_comb
-- Equation(s):
-- \c_var~16_combout\ = ( \c_var~15_combout\ & ( (\ppn_carry:pg[35][1]~0_combout\ & (!\A[36]~input_o\ $ (!\B[36]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010110100000000001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[36]~input_o\,
	datac => \ALT_INV_B[36]~input_o\,
	datad => \ALT_INV_ppn_carry:pg[35][1]~0_combout\,
	dataf => \ALT_INV_c_var~15_combout\,
	combout => \c_var~16_combout\);

-- Location: LABCELL_X58_Y44_N14
\ppn_carry:pg[36][0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[36][0]~0_combout\ = ( \pg~46_combout\ & ( (!\A[36]~input_o\ & !\B[36]~input_o\) ) ) # ( !\pg~46_combout\ & ( (!\A[36]~input_o\ & ((!\pg~89_combout\) # (!\B[36]~input_o\))) # (\A[36]~input_o\ & (!\pg~89_combout\ & !\B[36]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010100000111110101010000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[36]~input_o\,
	datac => \ALT_INV_pg~89_combout\,
	datad => \ALT_INV_B[36]~input_o\,
	dataf => \ALT_INV_pg~46_combout\,
	combout => \ppn_carry:pg[36][0]~0_combout\);

-- Location: LABCELL_X58_Y44_N18
\S~37\ : arriaii_lcell_comb
-- Equation(s):
-- \S~37_combout\ = ( \ppn_carry:pg[36][0]~0_combout\ & ( !\A[37]~input_o\ $ (!\B[37]~input_o\ $ (\c_var~16_combout\)) ) ) # ( !\ppn_carry:pg[36][0]~0_combout\ & ( !\A[37]~input_o\ $ (\B[37]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100101100110100110010110011010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[37]~input_o\,
	datab => \ALT_INV_B[37]~input_o\,
	datad => \ALT_INV_c_var~16_combout\,
	dataf => \ALT_INV_ppn_carry:pg[36][0]~0_combout\,
	combout => \S~37_combout\);

-- Location: LABCELL_X58_Y44_N20
\pg~48\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~48_combout\ = ( \A[36]~input_o\ & ( (!\B[36]~input_o\ & (!\B[37]~input_o\ $ (!\A[37]~input_o\))) ) ) # ( !\A[36]~input_o\ & ( (\B[36]~input_o\ & (!\B[37]~input_o\ $ (!\A[37]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100000101000001010000101000001010000010100000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[36]~input_o\,
	datab => \ALT_INV_B[37]~input_o\,
	datac => \ALT_INV_A[37]~input_o\,
	dataf => \ALT_INV_A[36]~input_o\,
	combout => \pg~48_combout\);

-- Location: LABCELL_X58_Y44_N24
\pg~49\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~49_combout\ = ( \pg~42_combout\ & ( (\pg~48_combout\ & (((\ppn_carry:pg[35][1]~0_combout\ & \pg~38_combout\)) # (\pg~89_combout\))) ) ) # ( !\pg~42_combout\ & ( (\pg~48_combout\ & ((\ppn_carry:pg[35][1]~0_combout\) # (\pg~89_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010001010100010001000101010001000100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pg~48_combout\,
	datab => \ALT_INV_pg~89_combout\,
	datac => \ALT_INV_ppn_carry:pg[35][1]~0_combout\,
	datad => \ALT_INV_pg~38_combout\,
	dataf => \ALT_INV_pg~42_combout\,
	combout => \pg~49_combout\);

-- Location: LABCELL_X58_Y44_N16
\c_var~17\ : arriaii_lcell_comb
-- Equation(s):
-- \c_var~17_combout\ = (\c_var~16_combout\ & (!\B[37]~input_o\ $ (!\A[37]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000000000001111000000000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[37]~input_o\,
	datac => \ALT_INV_A[37]~input_o\,
	datad => \ALT_INV_c_var~16_combout\,
	combout => \c_var~17_combout\);

-- Location: IOIBUF_X59_Y46_N32
\B[38]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(38),
	o => \B[38]~input_o\);

-- Location: LABCELL_X58_Y44_N22
\pg~47\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~47_combout\ = ( \A[36]~input_o\ & ( (!\B[36]~input_o\ & (\B[37]~input_o\ & \A[37]~input_o\)) # (\B[36]~input_o\ & ((\A[37]~input_o\) # (\B[37]~input_o\))) ) ) # ( !\A[36]~input_o\ & ( (\B[37]~input_o\ & \A[37]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100010001011101110001000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[36]~input_o\,
	datab => \ALT_INV_B[37]~input_o\,
	datad => \ALT_INV_A[37]~input_o\,
	dataf => \ALT_INV_A[36]~input_o\,
	combout => \pg~47_combout\);

-- Location: IOIBUF_X59_Y46_N1
\A[38]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(38),
	o => \A[38]~input_o\);

-- Location: LABCELL_X58_Y44_N4
\S~38\ : arriaii_lcell_comb
-- Equation(s):
-- \S~38_combout\ = ( \A[38]~input_o\ & ( !\B[38]~input_o\ $ ((((\pg~47_combout\) # (\c_var~17_combout\)) # (\pg~49_combout\))) ) ) # ( !\A[38]~input_o\ & ( !\B[38]~input_o\ $ (((!\pg~49_combout\ & (!\c_var~17_combout\ & !\pg~47_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100011110000011110001111000010000111000011111000011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pg~49_combout\,
	datab => \ALT_INV_c_var~17_combout\,
	datac => \ALT_INV_B[38]~input_o\,
	datad => \ALT_INV_pg~47_combout\,
	dataf => \ALT_INV_A[38]~input_o\,
	combout => \S~38_combout\);

-- Location: LABCELL_X58_Y44_N8
\ppn_carry:pg[38][0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[38][0]~0_combout\ = ( \pg~49_combout\ & ( (!\B[38]~input_o\ & !\A[38]~input_o\) ) ) # ( !\pg~49_combout\ & ( (!\B[38]~input_o\ & ((!\A[38]~input_o\) # (!\pg~47_combout\))) # (\B[38]~input_o\ & (!\A[38]~input_o\ & !\pg~47_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111010001000111011101000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[38]~input_o\,
	datab => \ALT_INV_A[38]~input_o\,
	datad => \ALT_INV_pg~47_combout\,
	dataf => \ALT_INV_pg~49_combout\,
	combout => \ppn_carry:pg[38][0]~0_combout\);

-- Location: IOIBUF_X59_Y48_N1
\B[39]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(39),
	o => \B[39]~input_o\);

-- Location: IOIBUF_X59_Y48_N63
\A[39]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(39),
	o => \A[39]~input_o\);

-- Location: LABCELL_X58_Y44_N34
\S~39\ : arriaii_lcell_comb
-- Equation(s):
-- \S~39_combout\ = ( \B[38]~input_o\ & ( \A[38]~input_o\ & ( !\ppn_carry:pg[38][0]~0_combout\ $ (!\B[39]~input_o\ $ (!\A[39]~input_o\)) ) ) ) # ( !\B[38]~input_o\ & ( \A[38]~input_o\ & ( !\B[39]~input_o\ $ (!\A[39]~input_o\ $ 
-- (((!\ppn_carry:pg[38][0]~0_combout\) # (\c_var~17_combout\)))) ) ) ) # ( \B[38]~input_o\ & ( !\A[38]~input_o\ & ( !\B[39]~input_o\ $ (!\A[39]~input_o\ $ (((!\ppn_carry:pg[38][0]~0_combout\) # (\c_var~17_combout\)))) ) ) ) # ( !\B[38]~input_o\ & ( 
-- !\A[38]~input_o\ & ( !\ppn_carry:pg[38][0]~0_combout\ $ (!\B[39]~input_o\ $ (!\A[39]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100101100110100111000110001110011100011000111001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ppn_carry:pg[38][0]~0_combout\,
	datab => \ALT_INV_B[39]~input_o\,
	datac => \ALT_INV_c_var~17_combout\,
	datad => \ALT_INV_A[39]~input_o\,
	datae => \ALT_INV_B[38]~input_o\,
	dataf => \ALT_INV_A[38]~input_o\,
	combout => \S~39_combout\);

-- Location: IOIBUF_X42_Y56_N32
\A[40]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(40),
	o => \A[40]~input_o\);

-- Location: IOIBUF_X40_Y56_N32
\B[40]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(40),
	o => \B[40]~input_o\);

-- Location: LABCELL_X58_Y44_N36
\pg~53\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~53_combout\ = ( \A[38]~input_o\ & ( (!\A[39]~input_o\ & (\B[39]~input_o\ & \B[38]~input_o\)) # (\A[39]~input_o\ & ((\B[38]~input_o\) # (\B[39]~input_o\))) ) ) # ( !\A[38]~input_o\ & ( (\A[39]~input_o\ & \B[39]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[39]~input_o\,
	datab => \ALT_INV_B[39]~input_o\,
	datac => \ALT_INV_B[38]~input_o\,
	dataf => \ALT_INV_A[38]~input_o\,
	combout => \pg~53_combout\);

-- Location: LABCELL_X58_Y44_N10
\pg~50\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~50_combout\ = ( \A[39]~input_o\ & ( (!\B[39]~input_o\ & (!\B[38]~input_o\ $ (!\A[38]~input_o\))) ) ) # ( !\A[39]~input_o\ & ( (\B[39]~input_o\ & (!\B[38]~input_o\ $ (!\A[38]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011001100000011000000110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[38]~input_o\,
	datab => \ALT_INV_A[38]~input_o\,
	datac => \ALT_INV_B[39]~input_o\,
	dataf => \ALT_INV_A[39]~input_o\,
	combout => \pg~50_combout\);

-- Location: LABCELL_X58_Y44_N26
\pg~54\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~54_combout\ = ( \pg~50_combout\ & ( (!\pg~53_combout\ & (!\pg~47_combout\ & ((!\pg~48_combout\) # (!\pg~89_combout\)))) ) ) # ( !\pg~50_combout\ & ( !\pg~53_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011100000000000001110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pg~48_combout\,
	datab => \ALT_INV_pg~89_combout\,
	datac => \ALT_INV_pg~53_combout\,
	datad => \ALT_INV_pg~47_combout\,
	dataf => \ALT_INV_pg~50_combout\,
	combout => \pg~54_combout\);

-- Location: LABCELL_X58_Y44_N38
\pg~51\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~51_combout\ = ( \pg~48_combout\ & ( (\pg~50_combout\ & \ppn_carry:pg[35][1]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_pg~50_combout\,
	datad => \ALT_INV_ppn_carry:pg[35][1]~0_combout\,
	dataf => \ALT_INV_pg~48_combout\,
	combout => \pg~51_combout\);

-- Location: LABCELL_X40_Y52_N22
\pg~52\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~52_combout\ = ( \pg~42_combout\ & ( (\pg~51_combout\ & \pg~38_combout\) ) ) # ( !\pg~42_combout\ & ( \pg~51_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_pg~51_combout\,
	datac => \ALT_INV_pg~38_combout\,
	dataf => \ALT_INV_pg~42_combout\,
	combout => \pg~52_combout\);

-- Location: LABCELL_X40_Y52_N20
\c_var~18\ : arriaii_lcell_comb
-- Equation(s):
-- \c_var~18_combout\ = ( \c_var~15_combout\ & ( \pg~51_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_pg~51_combout\,
	dataf => \ALT_INV_c_var~15_combout\,
	combout => \c_var~18_combout\);

-- Location: LABCELL_X40_Y52_N4
\S~40\ : arriaii_lcell_comb
-- Equation(s):
-- \S~40_combout\ = ( \c_var~18_combout\ & ( !\A[40]~input_o\ $ (\B[40]~input_o\) ) ) # ( !\c_var~18_combout\ & ( !\A[40]~input_o\ $ (!\B[40]~input_o\ $ (((!\pg~54_combout\) # (\pg~52_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011010011001100101101001100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[40]~input_o\,
	datab => \ALT_INV_B[40]~input_o\,
	datac => \ALT_INV_pg~54_combout\,
	datad => \ALT_INV_pg~52_combout\,
	dataf => \ALT_INV_c_var~18_combout\,
	combout => \S~40_combout\);

-- Location: IOIBUF_X44_Y56_N32
\A[41]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(41),
	o => \A[41]~input_o\);

-- Location: IOIBUF_X40_Y56_N1
\B[41]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(41),
	o => \B[41]~input_o\);

-- Location: LABCELL_X40_Y52_N8
\ppn_carry:pg[40][0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[40][0]~0_combout\ = ( \B[40]~input_o\ & ( (\pg~54_combout\ & (!\pg~52_combout\ & !\A[40]~input_o\)) ) ) # ( !\B[40]~input_o\ & ( (!\A[40]~input_o\) # ((\pg~54_combout\ & !\pg~52_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101010000111111110101000001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pg~54_combout\,
	datac => \ALT_INV_pg~52_combout\,
	datad => \ALT_INV_A[40]~input_o\,
	dataf => \ALT_INV_B[40]~input_o\,
	combout => \ppn_carry:pg[40][0]~0_combout\);

-- Location: LABCELL_X40_Y52_N32
\S~41\ : arriaii_lcell_comb
-- Equation(s):
-- \S~41_combout\ = ( \ppn_carry:pg[40][0]~0_combout\ & ( \c_var~18_combout\ & ( !\A[40]~input_o\ $ (!\A[41]~input_o\ $ (!\B[41]~input_o\ $ (!\B[40]~input_o\))) ) ) ) # ( !\ppn_carry:pg[40][0]~0_combout\ & ( \c_var~18_combout\ & ( !\A[41]~input_o\ $ 
-- (\B[41]~input_o\) ) ) ) # ( \ppn_carry:pg[40][0]~0_combout\ & ( !\c_var~18_combout\ & ( !\A[41]~input_o\ $ (!\B[41]~input_o\) ) ) ) # ( !\ppn_carry:pg[40][0]~0_combout\ & ( !\c_var~18_combout\ & ( !\A[41]~input_o\ $ (\B[41]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011001111000011110011000011110000110110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[40]~input_o\,
	datab => \ALT_INV_A[41]~input_o\,
	datac => \ALT_INV_B[41]~input_o\,
	datad => \ALT_INV_B[40]~input_o\,
	datae => \ALT_INV_ppn_carry:pg[40][0]~0_combout\,
	dataf => \ALT_INV_c_var~18_combout\,
	combout => \S~41_combout\);

-- Location: LABCELL_X40_Y52_N6
\c_var~19\ : arriaii_lcell_comb
-- Equation(s):
-- \c_var~19_combout\ = ( \B[41]~input_o\ & ( (!\A[41]~input_o\ & (!\A[40]~input_o\ $ (!\B[40]~input_o\))) ) ) # ( !\B[41]~input_o\ & ( (\A[41]~input_o\ & (!\A[40]~input_o\ $ (!\B[40]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011001100000011000000110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[40]~input_o\,
	datab => \ALT_INV_B[40]~input_o\,
	datac => \ALT_INV_A[41]~input_o\,
	dataf => \ALT_INV_B[41]~input_o\,
	combout => \c_var~19_combout\);

-- Location: IOIBUF_X38_Y56_N63
\B[42]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(42),
	o => \B[42]~input_o\);

-- Location: IOIBUF_X36_Y56_N1
\A[42]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(42),
	o => \A[42]~input_o\);

-- Location: LABCELL_X40_Y52_N16
\p[42]\ : arriaii_lcell_comb
-- Equation(s):
-- p(42) = ( \A[42]~input_o\ & ( !\B[42]~input_o\ ) ) # ( !\A[42]~input_o\ & ( \B[42]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[42]~input_o\,
	dataf => \ALT_INV_A[42]~input_o\,
	combout => p(42));

-- Location: LABCELL_X40_Y52_N10
\pg~56\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~56_combout\ = ( \pg~42_combout\ & ( (\c_var~19_combout\ & ((!\pg~54_combout\) # ((\pg~51_combout\ & \pg~38_combout\)))) ) ) # ( !\pg~42_combout\ & ( (\c_var~19_combout\ & ((!\pg~54_combout\) # (\pg~51_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001100100011001000110010001100100010001000110010001000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pg~54_combout\,
	datab => \ALT_INV_c_var~19_combout\,
	datac => \ALT_INV_pg~51_combout\,
	datad => \ALT_INV_pg~38_combout\,
	dataf => \ALT_INV_pg~42_combout\,
	combout => \pg~56_combout\);

-- Location: LABCELL_X40_Y52_N0
\pg~55\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~55_combout\ = ( \B[40]~input_o\ & ( (!\A[40]~input_o\ & (\B[41]~input_o\ & \A[41]~input_o\)) # (\A[40]~input_o\ & ((\A[41]~input_o\) # (\B[41]~input_o\))) ) ) # ( !\B[40]~input_o\ & ( (\B[41]~input_o\ & \A[41]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[40]~input_o\,
	datac => \ALT_INV_B[41]~input_o\,
	datad => \ALT_INV_A[41]~input_o\,
	dataf => \ALT_INV_B[40]~input_o\,
	combout => \pg~55_combout\);

-- Location: LABCELL_X40_Y52_N26
\S~42\ : arriaii_lcell_comb
-- Equation(s):
-- \S~42_combout\ = ( \c_var~18_combout\ & ( !p(42) $ (((!\c_var~19_combout\ & (!\pg~56_combout\ & !\pg~55_combout\)))) ) ) # ( !\c_var~18_combout\ & ( !p(42) $ (((!\pg~56_combout\ & !\pg~55_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011001100001111001100110001101100110011000110110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c_var~19_combout\,
	datab => ALT_INV_p(42),
	datac => \ALT_INV_pg~56_combout\,
	datad => \ALT_INV_pg~55_combout\,
	dataf => \ALT_INV_c_var~18_combout\,
	combout => \S~42_combout\);

-- Location: IOIBUF_X40_Y56_N94
\A[43]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(43),
	o => \A[43]~input_o\);

-- Location: LABCELL_X40_Y52_N2
\ppn_carry:pg[42][0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[42][0]~0_combout\ = ( \pg~56_combout\ & ( (!\A[42]~input_o\ & !\B[42]~input_o\) ) ) # ( !\pg~56_combout\ & ( (!\A[42]~input_o\ & ((!\B[42]~input_o\) # (!\pg~55_combout\))) # (\A[42]~input_o\ & (!\B[42]~input_o\ & !\pg~55_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011000000111111001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[42]~input_o\,
	datac => \ALT_INV_B[42]~input_o\,
	datad => \ALT_INV_pg~55_combout\,
	dataf => \ALT_INV_pg~56_combout\,
	combout => \ppn_carry:pg[42][0]~0_combout\);

-- Location: IOIBUF_X38_Y56_N32
\B[43]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(43),
	o => \B[43]~input_o\);

-- Location: LABCELL_X40_Y52_N28
\S~43\ : arriaii_lcell_comb
-- Equation(s):
-- \S~43_combout\ = ( \c_var~18_combout\ & ( \B[43]~input_o\ & ( !\A[43]~input_o\ $ (((!\ppn_carry:pg[42][0]~0_combout\) # ((p(42) & \c_var~19_combout\)))) ) ) ) # ( !\c_var~18_combout\ & ( \B[43]~input_o\ & ( !\A[43]~input_o\ $ 
-- (!\ppn_carry:pg[42][0]~0_combout\) ) ) ) # ( \c_var~18_combout\ & ( !\B[43]~input_o\ & ( !\A[43]~input_o\ $ (((\ppn_carry:pg[42][0]~0_combout\ & ((!p(42)) # (!\c_var~19_combout\))))) ) ) ) # ( !\c_var~18_combout\ & ( !\B[43]~input_o\ & ( !\A[43]~input_o\ 
-- $ (\ppn_carry:pg[42][0]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101101001011010011001011010010110100101101001011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[43]~input_o\,
	datab => ALT_INV_p(42),
	datac => \ALT_INV_ppn_carry:pg[42][0]~0_combout\,
	datad => \ALT_INV_c_var~19_combout\,
	datae => \ALT_INV_c_var~18_combout\,
	dataf => \ALT_INV_B[43]~input_o\,
	combout => \S~43_combout\);

-- Location: LABCELL_X40_Y52_N24
\pg~57\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~57_combout\ = ( \B[43]~input_o\ & ( (\c_var~19_combout\ & (p(42) & !\A[43]~input_o\)) ) ) # ( !\B[43]~input_o\ & ( (\c_var~19_combout\ & (p(42) & \A[43]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c_var~19_combout\,
	datab => ALT_INV_p(42),
	datac => \ALT_INV_A[43]~input_o\,
	dataf => \ALT_INV_B[43]~input_o\,
	combout => \pg~57_combout\);

-- Location: LABCELL_X40_Y52_N18
\pg~88\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~88_combout\ = ( \A[42]~input_o\ & ( (!\A[43]~input_o\ & (\B[43]~input_o\ & ((\pg~55_combout\) # (\B[42]~input_o\)))) # (\A[43]~input_o\ & (((\pg~55_combout\) # (\B[43]~input_o\)) # (\B[42]~input_o\))) ) ) # ( !\A[42]~input_o\ & ( (!\A[43]~input_o\ & 
-- (\B[42]~input_o\ & (\B[43]~input_o\ & \pg~55_combout\))) # (\A[43]~input_o\ & (((\B[42]~input_o\ & \pg~55_combout\)) # (\B[43]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010111000001010001011100010111010111110001011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[43]~input_o\,
	datab => \ALT_INV_B[42]~input_o\,
	datac => \ALT_INV_B[43]~input_o\,
	datad => \ALT_INV_pg~55_combout\,
	dataf => \ALT_INV_A[42]~input_o\,
	combout => \pg~88_combout\);

-- Location: IOIBUF_X44_Y56_N1
\B[44]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(44),
	o => \B[44]~input_o\);

-- Location: LABCELL_X40_Y52_N12
\pg~58\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~58_combout\ = ( \pg~54_combout\ & ( \pg~42_combout\ & ( (\pg~57_combout\ & (\pg~27_combout\ & (\pg~37_combout\ & \pg~51_combout\))) ) ) ) # ( !\pg~54_combout\ & ( \pg~42_combout\ & ( \pg~57_combout\ ) ) ) # ( \pg~54_combout\ & ( !\pg~42_combout\ & ( 
-- (\pg~57_combout\ & \pg~51_combout\) ) ) ) # ( !\pg~54_combout\ & ( !\pg~42_combout\ & ( \pg~57_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000101010101010101010101010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pg~57_combout\,
	datab => \ALT_INV_pg~27_combout\,
	datac => \ALT_INV_pg~37_combout\,
	datad => \ALT_INV_pg~51_combout\,
	datae => \ALT_INV_pg~54_combout\,
	dataf => \ALT_INV_pg~42_combout\,
	combout => \pg~58_combout\);

-- Location: IOIBUF_X48_Y56_N1
\A[44]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(44),
	o => \A[44]~input_o\);

-- Location: LABCELL_X43_Y52_N22
\S~44\ : arriaii_lcell_comb
-- Equation(s):
-- \S~44_combout\ = ( \pg~58_combout\ & ( \A[44]~input_o\ & ( \B[44]~input_o\ ) ) ) # ( !\pg~58_combout\ & ( \A[44]~input_o\ & ( !\B[44]~input_o\ $ ((((\pg~57_combout\ & \c_var~18_combout\)) # (\pg~88_combout\))) ) ) ) # ( \pg~58_combout\ & ( 
-- !\A[44]~input_o\ & ( !\B[44]~input_o\ ) ) ) # ( !\pg~58_combout\ & ( !\A[44]~input_o\ & ( !\B[44]~input_o\ $ (((!\pg~88_combout\ & ((!\pg~57_combout\) # (!\c_var~18_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110001111000111100001111000011000011100001110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pg~57_combout\,
	datab => \ALT_INV_pg~88_combout\,
	datac => \ALT_INV_B[44]~input_o\,
	datad => \ALT_INV_c_var~18_combout\,
	datae => \ALT_INV_pg~58_combout\,
	dataf => \ALT_INV_A[44]~input_o\,
	combout => \S~44_combout\);

-- Location: IOIBUF_X46_Y56_N32
\B[45]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(45),
	o => \B[45]~input_o\);

-- Location: IOIBUF_X48_Y56_N94
\A[45]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(45),
	o => \A[45]~input_o\);

-- Location: LABCELL_X43_Y52_N26
\ppn_carry:pg[44][0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[44][0]~0_combout\ = ( \pg~88_combout\ & ( (!\A[44]~input_o\ & !\B[44]~input_o\) ) ) # ( !\pg~88_combout\ & ( (!\A[44]~input_o\ & ((!\pg~58_combout\) # (!\B[44]~input_o\))) # (\A[44]~input_o\ & (!\pg~58_combout\ & !\B[44]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011000000111111001100000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[44]~input_o\,
	datac => \ALT_INV_pg~58_combout\,
	datad => \ALT_INV_B[44]~input_o\,
	dataf => \ALT_INV_pg~88_combout\,
	combout => \ppn_carry:pg[44][0]~0_combout\);

-- Location: LABCELL_X43_Y52_N24
\c_var~20\ : arriaii_lcell_comb
-- Equation(s):
-- \c_var~20_combout\ = ( \A[44]~input_o\ & ( (\pg~57_combout\ & (\c_var~18_combout\ & !\B[44]~input_o\)) ) ) # ( !\A[44]~input_o\ & ( (\pg~57_combout\ & (\c_var~18_combout\ & \B[44]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pg~57_combout\,
	datac => \ALT_INV_c_var~18_combout\,
	datad => \ALT_INV_B[44]~input_o\,
	dataf => \ALT_INV_A[44]~input_o\,
	combout => \c_var~20_combout\);

-- Location: LABCELL_X43_Y52_N8
\S~45\ : arriaii_lcell_comb
-- Equation(s):
-- \S~45_combout\ = ( \ppn_carry:pg[44][0]~0_combout\ & ( \c_var~20_combout\ & ( !\B[45]~input_o\ $ (\A[45]~input_o\) ) ) ) # ( !\ppn_carry:pg[44][0]~0_combout\ & ( \c_var~20_combout\ & ( !\B[45]~input_o\ $ (\A[45]~input_o\) ) ) ) # ( 
-- \ppn_carry:pg[44][0]~0_combout\ & ( !\c_var~20_combout\ & ( !\B[45]~input_o\ $ (!\A[45]~input_o\) ) ) ) # ( !\ppn_carry:pg[44][0]~0_combout\ & ( !\c_var~20_combout\ & ( !\B[45]~input_o\ $ (\A[45]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[45]~input_o\,
	datad => \ALT_INV_A[45]~input_o\,
	datae => \ALT_INV_ppn_carry:pg[44][0]~0_combout\,
	dataf => \ALT_INV_c_var~20_combout\,
	combout => \S~45_combout\);

-- Location: IOIBUF_X44_Y56_N94
\A[46]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(46),
	o => \A[46]~input_o\);

-- Location: LABCELL_X43_Y52_N32
\pg~59\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~59_combout\ = ( \A[45]~input_o\ & ( (!\B[45]~input_o\ & (!\A[44]~input_o\ $ (!\B[44]~input_o\))) ) ) # ( !\A[45]~input_o\ & ( (\B[45]~input_o\ & (!\A[44]~input_o\ $ (!\B[44]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101000100001000101000100000010001010001000010001010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[45]~input_o\,
	datab => \ALT_INV_A[44]~input_o\,
	datad => \ALT_INV_B[44]~input_o\,
	datae => \ALT_INV_A[45]~input_o\,
	combout => \pg~59_combout\);

-- Location: LABCELL_X43_Y52_N16
\pg~60\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~60_combout\ = ( \pg~88_combout\ & ( \pg~59_combout\ ) ) # ( !\pg~88_combout\ & ( (\pg~58_combout\ & \pg~59_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_pg~58_combout\,
	datac => \ALT_INV_pg~59_combout\,
	dataf => \ALT_INV_pg~88_combout\,
	combout => \pg~60_combout\);

-- Location: LABCELL_X43_Y52_N18
\pg~61\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~61_combout\ = ( \A[44]~input_o\ & ( (!\B[45]~input_o\ & (\B[44]~input_o\ & \A[45]~input_o\)) # (\B[45]~input_o\ & ((\A[45]~input_o\) # (\B[44]~input_o\))) ) ) # ( !\A[44]~input_o\ & ( (\B[45]~input_o\ & \A[45]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[45]~input_o\,
	datac => \ALT_INV_B[44]~input_o\,
	datad => \ALT_INV_A[45]~input_o\,
	dataf => \ALT_INV_A[44]~input_o\,
	combout => \pg~61_combout\);

-- Location: LABCELL_X43_Y52_N0
\ppn_carry:c_var[46]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \ppn_carry:c_var[46]~0_combout\ = ( \c_var~18_combout\ & ( (!\pg~61_combout\ & ((!\pg~59_combout\) # (!\pg~57_combout\))) ) ) # ( !\c_var~18_combout\ & ( !\pg~61_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001000110010001100100011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pg~59_combout\,
	datab => \ALT_INV_pg~61_combout\,
	datac => \ALT_INV_pg~57_combout\,
	dataf => \ALT_INV_c_var~18_combout\,
	combout => \ppn_carry:c_var[46]~0_combout\);

-- Location: IOIBUF_X46_Y56_N94
\B[46]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(46),
	o => \B[46]~input_o\);

-- Location: LABCELL_X43_Y52_N6
\S~46\ : arriaii_lcell_comb
-- Equation(s):
-- \S~46_combout\ = ( \B[46]~input_o\ & ( !\A[46]~input_o\ $ (((!\ppn_carry:c_var[46]~0_combout\) # (\pg~60_combout\))) ) ) # ( !\B[46]~input_o\ & ( !\A[46]~input_o\ $ (((!\pg~60_combout\ & \ppn_carry:c_var[46]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000111100110011000011110000110011110000110011001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[46]~input_o\,
	datac => \ALT_INV_pg~60_combout\,
	datad => \ALT_INV_ppn_carry:c_var[46]~0_combout\,
	dataf => \ALT_INV_B[46]~input_o\,
	combout => \S~46_combout\);

-- Location: IOIBUF_X46_Y56_N63
\B[47]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(47),
	o => \B[47]~input_o\);

-- Location: IOIBUF_X42_Y56_N63
\A[47]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(47),
	o => \A[47]~input_o\);

-- Location: LABCELL_X43_Y52_N28
\ppn_carry:pg[46][0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[46][0]~0_combout\ = ( \pg~60_combout\ & ( (!\B[46]~input_o\ & !\A[46]~input_o\) ) ) # ( !\pg~60_combout\ & ( (!\B[46]~input_o\ & ((!\pg~61_combout\) # (!\A[46]~input_o\))) # (\B[46]~input_o\ & (!\pg~61_combout\ & !\A[46]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011000000111111001100000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[46]~input_o\,
	datac => \ALT_INV_pg~61_combout\,
	datad => \ALT_INV_A[46]~input_o\,
	dataf => \ALT_INV_pg~60_combout\,
	combout => \ppn_carry:pg[46][0]~0_combout\);

-- Location: LABCELL_X43_Y52_N30
\c_var~21\ : arriaii_lcell_comb
-- Equation(s):
-- \c_var~21_combout\ = ( \pg~59_combout\ & ( (\pg~57_combout\ & (!\B[46]~input_o\ $ (!\A[46]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010100000101000001010000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pg~57_combout\,
	datab => \ALT_INV_B[46]~input_o\,
	datac => \ALT_INV_A[46]~input_o\,
	dataf => \ALT_INV_pg~59_combout\,
	combout => \c_var~21_combout\);

-- Location: LABCELL_X43_Y52_N12
\S~47\ : arriaii_lcell_comb
-- Equation(s):
-- \S~47_combout\ = ( \c_var~18_combout\ & ( !\B[47]~input_o\ $ (!\A[47]~input_o\ $ (((!\ppn_carry:pg[46][0]~0_combout\) # (\c_var~21_combout\)))) ) ) # ( !\c_var~18_combout\ & ( !\B[47]~input_o\ $ (!\A[47]~input_o\ $ (!\ppn_carry:pg[46][0]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011010010110100101101001011010010110100110011001011010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[47]~input_o\,
	datab => \ALT_INV_A[47]~input_o\,
	datac => \ALT_INV_ppn_carry:pg[46][0]~0_combout\,
	datad => \ALT_INV_c_var~21_combout\,
	dataf => \ALT_INV_c_var~18_combout\,
	combout => \S~47_combout\);

-- Location: IOIBUF_X36_Y56_N32
\B[48]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(48),
	o => \B[48]~input_o\);

-- Location: IOIBUF_X36_Y56_N63
\A[48]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(48),
	o => \A[48]~input_o\);

-- Location: LABCELL_X43_Y52_N38
\pg~62\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~62_combout\ = ( \B[46]~input_o\ & ( (!\A[46]~input_o\ & (!\B[47]~input_o\ $ (!\A[47]~input_o\))) ) ) # ( !\B[46]~input_o\ & ( (\A[46]~input_o\ & (!\B[47]~input_o\ $ (!\A[47]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011001100000011000000110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[47]~input_o\,
	datab => \ALT_INV_A[47]~input_o\,
	datac => \ALT_INV_A[46]~input_o\,
	dataf => \ALT_INV_B[46]~input_o\,
	combout => \pg~62_combout\);

-- Location: LABCELL_X43_Y52_N4
\pg~63\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~63_combout\ = ( \pg~59_combout\ & ( (\pg~57_combout\ & (\pg~51_combout\ & \pg~62_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pg~57_combout\,
	datac => \ALT_INV_pg~51_combout\,
	datad => \ALT_INV_pg~62_combout\,
	dataf => \ALT_INV_pg~59_combout\,
	combout => \pg~63_combout\);

-- Location: LABCELL_X35_Y52_N0
\c_var~22\ : arriaii_lcell_comb
-- Equation(s):
-- \c_var~22_combout\ = (\c_var~15_combout\ & \pg~63_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c_var~15_combout\,
	datab => \ALT_INV_pg~63_combout\,
	combout => \c_var~22_combout\);

-- Location: LABCELL_X35_Y52_N4
\pg~64\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~64_combout\ = (\pg~63_combout\ & ((!\pg~42_combout\) # (\pg~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100010001001100110001000100110011000100010011001100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pg~38_combout\,
	datab => \ALT_INV_pg~63_combout\,
	datad => \ALT_INV_pg~42_combout\,
	combout => \pg~64_combout\);

-- Location: LABCELL_X43_Y52_N36
\pg~65\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~65_combout\ = ( \B[46]~input_o\ & ( (!\B[47]~input_o\ & (\A[47]~input_o\ & \A[46]~input_o\)) # (\B[47]~input_o\ & ((\A[46]~input_o\) # (\A[47]~input_o\))) ) ) # ( !\B[46]~input_o\ & ( (\B[47]~input_o\ & \A[47]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001011101110001000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[47]~input_o\,
	datab => \ALT_INV_A[47]~input_o\,
	datad => \ALT_INV_A[46]~input_o\,
	dataf => \ALT_INV_B[46]~input_o\,
	combout => \pg~65_combout\);

-- Location: LABCELL_X43_Y52_N2
\pg~66\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~66_combout\ = ( \pg~88_combout\ & ( (!\pg~65_combout\ & ((!\pg~62_combout\) # ((!\pg~59_combout\ & !\pg~61_combout\)))) ) ) # ( !\pg~88_combout\ & ( (!\pg~65_combout\ & ((!\pg~61_combout\) # (!\pg~62_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011000000111100001100000011110000100000001111000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pg~59_combout\,
	datab => \ALT_INV_pg~61_combout\,
	datac => \ALT_INV_pg~65_combout\,
	datad => \ALT_INV_pg~62_combout\,
	dataf => \ALT_INV_pg~88_combout\,
	combout => \pg~66_combout\);

-- Location: LABCELL_X43_Y52_N14
\pg~67\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~67_combout\ = ( \pg~66_combout\ & ( ((!\c_var~21_combout\) # (!\B[47]~input_o\ $ (\A[47]~input_o\))) # (\pg~54_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111100111111111111110011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[47]~input_o\,
	datab => \ALT_INV_A[47]~input_o\,
	datac => \ALT_INV_pg~54_combout\,
	datad => \ALT_INV_c_var~21_combout\,
	dataf => \ALT_INV_pg~66_combout\,
	combout => \pg~67_combout\);

-- Location: LABCELL_X35_Y52_N8
\S~48\ : arriaii_lcell_comb
-- Equation(s):
-- \S~48_combout\ = ( \pg~67_combout\ & ( !\B[48]~input_o\ $ (!\A[48]~input_o\ $ (((\pg~64_combout\) # (\c_var~22_combout\)))) ) ) # ( !\pg~67_combout\ & ( !\B[48]~input_o\ $ (\A[48]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100101101001100110010110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[48]~input_o\,
	datab => \ALT_INV_A[48]~input_o\,
	datac => \ALT_INV_c_var~22_combout\,
	datad => \ALT_INV_pg~64_combout\,
	dataf => \ALT_INV_pg~67_combout\,
	combout => \S~48_combout\);

-- Location: IOIBUF_X33_Y56_N94
\B[49]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(49),
	o => \B[49]~input_o\);

-- Location: LABCELL_X35_Y52_N10
\ppn_carry:pg[48][0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[48][0]~0_combout\ = ( \pg~67_combout\ & ( (!\B[48]~input_o\ & ((!\A[48]~input_o\) # (!\pg~64_combout\))) # (\B[48]~input_o\ & (!\A[48]~input_o\ & !\pg~64_combout\)) ) ) # ( !\pg~67_combout\ & ( (!\B[48]~input_o\ & !\A[48]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100011101110100010001110111010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[48]~input_o\,
	datab => \ALT_INV_A[48]~input_o\,
	datad => \ALT_INV_pg~64_combout\,
	dataf => \ALT_INV_pg~67_combout\,
	combout => \ppn_carry:pg[48][0]~0_combout\);

-- Location: IOIBUF_X38_Y56_N94
\A[49]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(49),
	o => \A[49]~input_o\);

-- Location: LABCELL_X35_Y52_N12
\S~49\ : arriaii_lcell_comb
-- Equation(s):
-- \S~49_combout\ = ( \c_var~22_combout\ & ( \A[49]~input_o\ & ( !\B[49]~input_o\ $ (((!\ppn_carry:pg[48][0]~0_combout\) # (!\B[48]~input_o\ $ (!\A[48]~input_o\)))) ) ) ) # ( !\c_var~22_combout\ & ( \A[49]~input_o\ & ( !\B[49]~input_o\ $ 
-- (!\ppn_carry:pg[48][0]~0_combout\) ) ) ) # ( \c_var~22_combout\ & ( !\A[49]~input_o\ & ( !\B[49]~input_o\ $ (((\ppn_carry:pg[48][0]~0_combout\ & (!\B[48]~input_o\ $ (\A[48]~input_o\))))) ) ) ) # ( !\c_var~22_combout\ & ( !\A[49]~input_o\ & ( 
-- !\B[49]~input_o\ $ (\ppn_carry:pg[48][0]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011110001101100100100111100001111000011100100110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[48]~input_o\,
	datab => \ALT_INV_B[49]~input_o\,
	datac => \ALT_INV_ppn_carry:pg[48][0]~0_combout\,
	datad => \ALT_INV_A[48]~input_o\,
	datae => \ALT_INV_c_var~22_combout\,
	dataf => \ALT_INV_A[49]~input_o\,
	combout => \S~49_combout\);

-- Location: LABCELL_X35_Y52_N22
\c_var~23\ : arriaii_lcell_comb
-- Equation(s):
-- \c_var~23_combout\ = ( \A[49]~input_o\ & ( (!\B[49]~input_o\ & (!\B[48]~input_o\ $ (!\A[48]~input_o\))) ) ) # ( !\A[49]~input_o\ & ( (\B[49]~input_o\ & (!\B[48]~input_o\ $ (!\A[48]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001001001000010010000100100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[48]~input_o\,
	datab => \ALT_INV_B[49]~input_o\,
	datac => \ALT_INV_A[48]~input_o\,
	dataf => \ALT_INV_A[49]~input_o\,
	combout => \c_var~23_combout\);

-- Location: IOIBUF_X33_Y56_N1
\A[50]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(50),
	o => \A[50]~input_o\);

-- Location: IOIBUF_X35_Y56_N1
\B[50]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(50),
	o => \B[50]~input_o\);

-- Location: LABCELL_X35_Y52_N16
\p[50]\ : arriaii_lcell_comb
-- Equation(s):
-- p(50) = !\A[50]~input_o\ $ (!\B[50]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[50]~input_o\,
	datab => \ALT_INV_B[50]~input_o\,
	combout => p(50));

-- Location: LABCELL_X35_Y52_N20
\pg~68\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~68_combout\ = ( \A[49]~input_o\ & ( ((\B[48]~input_o\ & \A[48]~input_o\)) # (\B[49]~input_o\) ) ) # ( !\A[49]~input_o\ & ( (\B[48]~input_o\ & (\B[49]~input_o\ & \A[48]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100110011011101110011001101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[48]~input_o\,
	datab => \ALT_INV_B[49]~input_o\,
	datad => \ALT_INV_A[48]~input_o\,
	dataf => \ALT_INV_A[49]~input_o\,
	combout => \pg~68_combout\);

-- Location: LABCELL_X35_Y52_N6
\pg~69\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~69_combout\ = ( \pg~67_combout\ & ( (\pg~63_combout\ & (\c_var~23_combout\ & ((!\pg~42_combout\) # (\pg~38_combout\)))) ) ) # ( !\pg~67_combout\ & ( \c_var~23_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000011000000010000001100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pg~38_combout\,
	datab => \ALT_INV_pg~63_combout\,
	datac => \ALT_INV_c_var~23_combout\,
	datad => \ALT_INV_pg~42_combout\,
	dataf => \ALT_INV_pg~67_combout\,
	combout => \pg~69_combout\);

-- Location: LABCELL_X35_Y52_N26
\S~50\ : arriaii_lcell_comb
-- Equation(s):
-- \S~50_combout\ = ( \pg~69_combout\ & ( !p(50) ) ) # ( !\pg~69_combout\ & ( !p(50) $ (((!\pg~68_combout\ & ((!\c_var~22_combout\) # (!\c_var~23_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111011110000000111101111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c_var~22_combout\,
	datab => \ALT_INV_c_var~23_combout\,
	datac => ALT_INV_p(50),
	datad => \ALT_INV_pg~68_combout\,
	dataf => \ALT_INV_pg~69_combout\,
	combout => \S~50_combout\);

-- Location: LABCELL_X35_Y52_N18
\ppn_carry:pg[50][0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[50][0]~0_combout\ = ( \pg~68_combout\ & ( (!\A[50]~input_o\ & !\B[50]~input_o\) ) ) # ( !\pg~68_combout\ & ( (!\A[50]~input_o\ & ((!\B[50]~input_o\) # (!\pg~69_combout\))) # (\A[50]~input_o\ & (!\B[50]~input_o\ & !\pg~69_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100011101000111010001110100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[50]~input_o\,
	datab => \ALT_INV_B[50]~input_o\,
	datac => \ALT_INV_pg~69_combout\,
	dataf => \ALT_INV_pg~68_combout\,
	combout => \ppn_carry:pg[50][0]~0_combout\);

-- Location: IOIBUF_X35_Y56_N63
\B[51]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(51),
	o => \B[51]~input_o\);

-- Location: IOIBUF_X33_Y56_N63
\A[51]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(51),
	o => \A[51]~input_o\);

-- Location: LABCELL_X35_Y52_N30
\S~51\ : arriaii_lcell_comb
-- Equation(s):
-- \S~51_combout\ = ( \B[51]~input_o\ & ( \A[51]~input_o\ & ( (!\ppn_carry:pg[50][0]~0_combout\) # ((\c_var~23_combout\ & (p(50) & \c_var~22_combout\))) ) ) ) # ( !\B[51]~input_o\ & ( \A[51]~input_o\ & ( (\ppn_carry:pg[50][0]~0_combout\ & 
-- ((!\c_var~23_combout\) # ((!p(50)) # (!\c_var~22_combout\)))) ) ) ) # ( \B[51]~input_o\ & ( !\A[51]~input_o\ & ( (\ppn_carry:pg[50][0]~0_combout\ & ((!\c_var~23_combout\) # ((!p(50)) # (!\c_var~22_combout\)))) ) ) ) # ( !\B[51]~input_o\ & ( 
-- !\A[51]~input_o\ & ( (!\ppn_carry:pg[50][0]~0_combout\) # ((\c_var~23_combout\ & (p(50) & \c_var~22_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101011010101010101010001010101010101001010101010101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ppn_carry:pg[50][0]~0_combout\,
	datab => \ALT_INV_c_var~23_combout\,
	datac => ALT_INV_p(50),
	datad => \ALT_INV_c_var~22_combout\,
	datae => \ALT_INV_B[51]~input_o\,
	dataf => \ALT_INV_A[51]~input_o\,
	combout => \S~51_combout\);

-- Location: LABCELL_X35_Y52_N32
\pg~87\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~87_combout\ = ( \B[50]~input_o\ & ( (!\B[51]~input_o\ & (\A[51]~input_o\ & ((\A[50]~input_o\) # (\pg~68_combout\)))) # (\B[51]~input_o\ & (((\A[50]~input_o\) # (\pg~68_combout\)) # (\A[51]~input_o\))) ) ) # ( !\B[50]~input_o\ & ( (!\B[51]~input_o\ & 
-- (\A[51]~input_o\ & (\pg~68_combout\ & \A[50]~input_o\))) # (\B[51]~input_o\ & (((\pg~68_combout\ & \A[50]~input_o\)) # (\A[51]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010111000100010001011100010111011101110001011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[51]~input_o\,
	datab => \ALT_INV_A[51]~input_o\,
	datac => \ALT_INV_pg~68_combout\,
	datad => \ALT_INV_A[50]~input_o\,
	dataf => \ALT_INV_B[50]~input_o\,
	combout => \pg~87_combout\);

-- Location: IOIBUF_X17_Y56_N94
\A[52]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(52),
	o => \A[52]~input_o\);

-- Location: IOIBUF_X25_Y56_N63
\B[52]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(52),
	o => \B[52]~input_o\);

-- Location: LABCELL_X35_Y52_N34
\pg~70\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~70_combout\ = ( p(50) & ( (\c_var~23_combout\ & (!\B[51]~input_o\ $ (!\A[51]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000011001100000000001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[51]~input_o\,
	datab => \ALT_INV_A[51]~input_o\,
	datad => \ALT_INV_c_var~23_combout\,
	dataf => ALT_INV_p(50),
	combout => \pg~70_combout\);

-- Location: LABCELL_X35_Y52_N24
\c_var~24\ : arriaii_lcell_comb
-- Equation(s):
-- \c_var~24_combout\ = ( \pg~70_combout\ & ( \c_var~22_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c_var~22_combout\,
	dataf => \ALT_INV_pg~70_combout\,
	combout => \c_var~24_combout\);

-- Location: LABCELL_X40_Y52_N38
\pg~71\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~71_combout\ = ( \pg~67_combout\ & ( \pg~70_combout\ & ( (\pg~63_combout\ & ((!\pg~42_combout\) # ((\pg~37_combout\ & \pg~27_combout\)))) ) ) ) # ( !\pg~67_combout\ & ( \pg~70_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000111100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pg~37_combout\,
	datab => \ALT_INV_pg~27_combout\,
	datac => \ALT_INV_pg~63_combout\,
	datad => \ALT_INV_pg~42_combout\,
	datae => \ALT_INV_pg~67_combout\,
	dataf => \ALT_INV_pg~70_combout\,
	combout => \pg~71_combout\);

-- Location: MLABCELL_X26_Y52_N0
\S~52\ : arriaii_lcell_comb
-- Equation(s):
-- \S~52_combout\ = ( \c_var~24_combout\ & ( \pg~71_combout\ & ( !\A[52]~input_o\ $ (\B[52]~input_o\) ) ) ) # ( !\c_var~24_combout\ & ( \pg~71_combout\ & ( !\A[52]~input_o\ $ (\B[52]~input_o\) ) ) ) # ( \c_var~24_combout\ & ( !\pg~71_combout\ & ( 
-- !\A[52]~input_o\ $ (\B[52]~input_o\) ) ) ) # ( !\c_var~24_combout\ & ( !\pg~71_combout\ & ( !\pg~87_combout\ $ (!\A[52]~input_o\ $ (\B[52]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001110000111100001111000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pg~87_combout\,
	datab => \ALT_INV_A[52]~input_o\,
	datac => \ALT_INV_B[52]~input_o\,
	datae => \ALT_INV_c_var~24_combout\,
	dataf => \ALT_INV_pg~71_combout\,
	combout => \S~52_combout\);

-- Location: MLABCELL_X26_Y52_N6
\ppn_carry:pg[52][0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[52][0]~0_combout\ = ( !\A[52]~input_o\ & ( \pg~71_combout\ & ( !\B[52]~input_o\ ) ) ) # ( \A[52]~input_o\ & ( !\pg~71_combout\ & ( (!\B[52]~input_o\ & !\pg~87_combout\) ) ) ) # ( !\A[52]~input_o\ & ( !\pg~71_combout\ & ( (!\B[52]~input_o\) # 
-- (!\pg~87_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101010101010100000000010101010101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[52]~input_o\,
	datad => \ALT_INV_pg~87_combout\,
	datae => \ALT_INV_A[52]~input_o\,
	dataf => \ALT_INV_pg~71_combout\,
	combout => \ppn_carry:pg[52][0]~0_combout\);

-- Location: IOIBUF_X17_Y56_N63
\B[53]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(53),
	o => \B[53]~input_o\);

-- Location: IOIBUF_X28_Y56_N1
\A[53]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(53),
	o => \A[53]~input_o\);

-- Location: MLABCELL_X26_Y52_N30
\S~53\ : arriaii_lcell_comb
-- Equation(s):
-- \S~53_combout\ = ( \c_var~24_combout\ & ( \A[53]~input_o\ & ( !\B[53]~input_o\ $ (((!\ppn_carry:pg[52][0]~0_combout\) # (!\B[52]~input_o\ $ (!\A[52]~input_o\)))) ) ) ) # ( !\c_var~24_combout\ & ( \A[53]~input_o\ & ( !\ppn_carry:pg[52][0]~0_combout\ $ 
-- (!\B[53]~input_o\) ) ) ) # ( \c_var~24_combout\ & ( !\A[53]~input_o\ & ( !\B[53]~input_o\ $ (((\ppn_carry:pg[52][0]~0_combout\ & (!\B[52]~input_o\ $ (\A[52]~input_o\))))) ) ) ) # ( !\c_var~24_combout\ & ( !\A[53]~input_o\ & ( 
-- !\ppn_carry:pg[52][0]~0_combout\ $ (\B[53]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111101100000100100001111111100000000100111110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[52]~input_o\,
	datab => \ALT_INV_A[52]~input_o\,
	datac => \ALT_INV_ppn_carry:pg[52][0]~0_combout\,
	datad => \ALT_INV_B[53]~input_o\,
	datae => \ALT_INV_c_var~24_combout\,
	dataf => \ALT_INV_A[53]~input_o\,
	combout => \S~53_combout\);

-- Location: MLABCELL_X26_Y52_N12
\c_var~25\ : arriaii_lcell_comb
-- Equation(s):
-- \c_var~25_combout\ = ( \A[53]~input_o\ & ( (!\B[53]~input_o\ & (!\A[52]~input_o\ $ (!\B[52]~input_o\))) ) ) # ( !\A[53]~input_o\ & ( (\B[53]~input_o\ & (!\A[52]~input_o\ $ (!\B[52]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000110000110000000011000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[52]~input_o\,
	datac => \ALT_INV_B[53]~input_o\,
	datad => \ALT_INV_B[52]~input_o\,
	dataf => \ALT_INV_A[53]~input_o\,
	combout => \c_var~25_combout\);

-- Location: MLABCELL_X26_Y52_N16
\pg~73\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~73_combout\ = ( \pg~71_combout\ & ( \c_var~25_combout\ ) ) # ( !\pg~71_combout\ & ( (\pg~87_combout\ & \c_var~25_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pg~87_combout\,
	datac => \ALT_INV_c_var~25_combout\,
	dataf => \ALT_INV_pg~71_combout\,
	combout => \pg~73_combout\);

-- Location: IOIBUF_X25_Y56_N32
\B[54]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(54),
	o => \B[54]~input_o\);

-- Location: IOIBUF_X12_Y56_N32
\A[54]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(54),
	o => \A[54]~input_o\);

-- Location: MLABCELL_X26_Y52_N14
\pg~72\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~72_combout\ = ( \A[53]~input_o\ & ( ((\A[52]~input_o\ & \B[52]~input_o\)) # (\B[53]~input_o\) ) ) # ( !\A[53]~input_o\ & ( (\B[53]~input_o\ & (\A[52]~input_o\ & \B[52]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000101010101011101110101010101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[53]~input_o\,
	datab => \ALT_INV_A[52]~input_o\,
	datad => \ALT_INV_B[52]~input_o\,
	dataf => \ALT_INV_A[53]~input_o\,
	combout => \pg~72_combout\);

-- Location: MLABCELL_X26_Y52_N20
\S~54\ : arriaii_lcell_comb
-- Equation(s):
-- \S~54_combout\ = ( \A[54]~input_o\ & ( \pg~72_combout\ & ( \B[54]~input_o\ ) ) ) # ( !\A[54]~input_o\ & ( \pg~72_combout\ & ( !\B[54]~input_o\ ) ) ) # ( \A[54]~input_o\ & ( !\pg~72_combout\ & ( !\B[54]~input_o\ $ ((((\c_var~25_combout\ & 
-- \c_var~24_combout\)) # (\pg~73_combout\))) ) ) ) # ( !\A[54]~input_o\ & ( !\pg~72_combout\ & ( !\B[54]~input_o\ $ (((!\pg~73_combout\ & ((!\c_var~25_combout\) # (!\c_var~24_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001101100100110011001001111001100110011000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pg~73_combout\,
	datab => \ALT_INV_B[54]~input_o\,
	datac => \ALT_INV_c_var~25_combout\,
	datad => \ALT_INV_c_var~24_combout\,
	datae => \ALT_INV_A[54]~input_o\,
	dataf => \ALT_INV_pg~72_combout\,
	combout => \S~54_combout\);

-- Location: MLABCELL_X26_Y52_N18
\ppn_carry:pg[54][0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[54][0]~0_combout\ = ( \pg~72_combout\ & ( (!\B[54]~input_o\ & !\A[54]~input_o\) ) ) # ( !\pg~72_combout\ & ( (!\B[54]~input_o\ & ((!\A[54]~input_o\) # (!\pg~73_combout\))) # (\B[54]~input_o\ & (!\A[54]~input_o\ & !\pg~73_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011000000111111001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[54]~input_o\,
	datac => \ALT_INV_A[54]~input_o\,
	datad => \ALT_INV_pg~73_combout\,
	dataf => \ALT_INV_pg~72_combout\,
	combout => \ppn_carry:pg[54][0]~0_combout\);

-- Location: IOIBUF_X25_Y56_N1
\A[55]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(55),
	o => \A[55]~input_o\);

-- Location: IOIBUF_X23_Y56_N1
\B[55]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(55),
	o => \B[55]~input_o\);

-- Location: MLABCELL_X26_Y52_N24
\c_var~26\ : arriaii_lcell_comb
-- Equation(s):
-- \c_var~26_combout\ = ( \A[54]~input_o\ & ( (\c_var~25_combout\ & !\B[54]~input_o\) ) ) # ( !\A[54]~input_o\ & ( (\c_var~25_combout\ & \B[54]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_c_var~25_combout\,
	datad => \ALT_INV_B[54]~input_o\,
	dataf => \ALT_INV_A[54]~input_o\,
	combout => \c_var~26_combout\);

-- Location: MLABCELL_X26_Y52_N26
\S~55\ : arriaii_lcell_comb
-- Equation(s):
-- \S~55_combout\ = ( \c_var~26_combout\ & ( !\A[55]~input_o\ $ (!\B[55]~input_o\ $ (((!\ppn_carry:pg[54][0]~0_combout\) # (\c_var~24_combout\)))) ) ) # ( !\c_var~26_combout\ & ( !\ppn_carry:pg[54][0]~0_combout\ $ (!\A[55]~input_o\ $ (!\B[55]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100101100110100110010110011010011100011000111001110001100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ppn_carry:pg[54][0]~0_combout\,
	datab => \ALT_INV_A[55]~input_o\,
	datac => \ALT_INV_c_var~24_combout\,
	datad => \ALT_INV_B[55]~input_o\,
	dataf => \ALT_INV_c_var~26_combout\,
	combout => \S~55_combout\);

-- Location: MLABCELL_X26_Y52_N8
\pg~74\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~74_combout\ = ( \B[55]~input_o\ & ( \c_var~26_combout\ & ( !\A[55]~input_o\ ) ) ) # ( !\B[55]~input_o\ & ( \c_var~26_combout\ & ( \A[55]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[55]~input_o\,
	datae => \ALT_INV_B[55]~input_o\,
	dataf => \ALT_INV_c_var~26_combout\,
	combout => \pg~74_combout\);

-- Location: MLABCELL_X26_Y52_N34
\pg~75\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~75_combout\ = ( \pg~70_combout\ & ( \pg~74_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pg~74_combout\,
	dataf => \ALT_INV_pg~70_combout\,
	combout => \pg~75_combout\);

-- Location: LABCELL_X35_Y52_N36
\c_var~27\ : arriaii_lcell_comb
-- Equation(s):
-- \c_var~27_combout\ = (\c_var~22_combout\ & \pg~75_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c_var~22_combout\,
	datab => \ALT_INV_pg~75_combout\,
	combout => \c_var~27_combout\);

-- Location: IOIBUF_X21_Y56_N1
\B[56]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(56),
	o => \B[56]~input_o\);

-- Location: IOIBUF_X23_Y56_N32
\A[56]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(56),
	o => \A[56]~input_o\);

-- Location: MLABCELL_X26_Y52_N38
\pg~78\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~78_combout\ = ( \A[55]~input_o\ & ( (!\B[55]~input_o\ & (!\A[54]~input_o\ $ (!\B[54]~input_o\))) ) ) # ( !\A[55]~input_o\ & ( (\B[55]~input_o\ & (!\A[54]~input_o\ $ (!\B[54]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100000101000001010000101000001010000010100000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[55]~input_o\,
	datab => \ALT_INV_A[54]~input_o\,
	datac => \ALT_INV_B[54]~input_o\,
	dataf => \ALT_INV_A[55]~input_o\,
	combout => \pg~78_combout\);

-- Location: MLABCELL_X26_Y52_N36
\pg~77\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~77_combout\ = ( \A[55]~input_o\ & ( ((\A[54]~input_o\ & \B[54]~input_o\)) # (\B[55]~input_o\) ) ) # ( !\A[55]~input_o\ & ( (\B[55]~input_o\ & (\A[54]~input_o\ & \B[54]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000101010101011101110101010101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[55]~input_o\,
	datab => \ALT_INV_A[54]~input_o\,
	datad => \ALT_INV_B[54]~input_o\,
	dataf => \ALT_INV_A[55]~input_o\,
	combout => \pg~77_combout\);

-- Location: MLABCELL_X26_Y52_N32
\pg~79\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~79_combout\ = ( \pg~87_combout\ & ( (!\pg~74_combout\ & (!\pg~77_combout\ & ((!\pg~72_combout\) # (!\pg~78_combout\)))) ) ) # ( !\pg~87_combout\ & ( (!\pg~77_combout\ & ((!\pg~72_combout\) # (!\pg~78_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110000000000111111000000000010101000000000001010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pg~74_combout\,
	datab => \ALT_INV_pg~72_combout\,
	datac => \ALT_INV_pg~78_combout\,
	datad => \ALT_INV_pg~77_combout\,
	dataf => \ALT_INV_pg~87_combout\,
	combout => \pg~79_combout\);

-- Location: LABCELL_X40_Y52_N36
\pg~76\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~76_combout\ = ( \pg~67_combout\ & ( \pg~75_combout\ & ( (\pg~63_combout\ & ((!\pg~42_combout\) # ((\pg~37_combout\ & \pg~27_combout\)))) ) ) ) # ( !\pg~67_combout\ & ( \pg~75_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000011110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pg~37_combout\,
	datab => \ALT_INV_pg~27_combout\,
	datac => \ALT_INV_pg~42_combout\,
	datad => \ALT_INV_pg~63_combout\,
	datae => \ALT_INV_pg~67_combout\,
	dataf => \ALT_INV_pg~75_combout\,
	combout => \pg~76_combout\);

-- Location: LABCELL_X24_Y52_N20
\S~56\ : arriaii_lcell_comb
-- Equation(s):
-- \S~56_combout\ = ( \pg~79_combout\ & ( \pg~76_combout\ & ( !\B[56]~input_o\ $ (\A[56]~input_o\) ) ) ) # ( !\pg~79_combout\ & ( \pg~76_combout\ & ( !\B[56]~input_o\ $ (\A[56]~input_o\) ) ) ) # ( \pg~79_combout\ & ( !\pg~76_combout\ & ( !\c_var~27_combout\ 
-- $ (!\B[56]~input_o\ $ (\A[56]~input_o\)) ) ) ) # ( !\pg~79_combout\ & ( !\pg~76_combout\ & ( !\B[56]~input_o\ $ (\A[56]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011011010010110100111000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c_var~27_combout\,
	datab => \ALT_INV_B[56]~input_o\,
	datac => \ALT_INV_A[56]~input_o\,
	datae => \ALT_INV_pg~79_combout\,
	dataf => \ALT_INV_pg~76_combout\,
	combout => \S~56_combout\);

-- Location: LABCELL_X24_Y52_N6
\ppn_carry:pg[56][0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[56][0]~0_combout\ = ( \pg~79_combout\ & ( \pg~76_combout\ & ( (!\A[56]~input_o\ & !\B[56]~input_o\) ) ) ) # ( !\pg~79_combout\ & ( \pg~76_combout\ & ( (!\A[56]~input_o\ & !\B[56]~input_o\) ) ) ) # ( \pg~79_combout\ & ( !\pg~76_combout\ & ( 
-- (!\A[56]~input_o\) # (!\B[56]~input_o\) ) ) ) # ( !\pg~79_combout\ & ( !\pg~76_combout\ & ( (!\A[56]~input_o\ & !\B[56]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000111110101111101010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[56]~input_o\,
	datac => \ALT_INV_B[56]~input_o\,
	datae => \ALT_INV_pg~79_combout\,
	dataf => \ALT_INV_pg~76_combout\,
	combout => \ppn_carry:pg[56][0]~0_combout\);

-- Location: IOIBUF_X19_Y56_N32
\A[57]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(57),
	o => \A[57]~input_o\);

-- Location: IOIBUF_X15_Y56_N1
\B[57]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(57),
	o => \B[57]~input_o\);

-- Location: LABCELL_X24_Y52_N10
\S~57\ : arriaii_lcell_comb
-- Equation(s):
-- \S~57_combout\ = ( \B[57]~input_o\ & ( \c_var~27_combout\ & ( !\A[57]~input_o\ $ (((!\ppn_carry:pg[56][0]~0_combout\) # (!\A[56]~input_o\ $ (!\B[56]~input_o\)))) ) ) ) # ( !\B[57]~input_o\ & ( \c_var~27_combout\ & ( !\A[57]~input_o\ $ 
-- (((\ppn_carry:pg[56][0]~0_combout\ & (!\A[56]~input_o\ $ (\B[56]~input_o\))))) ) ) ) # ( \B[57]~input_o\ & ( !\c_var~27_combout\ & ( !\ppn_carry:pg[56][0]~0_combout\ $ (!\A[57]~input_o\) ) ) ) # ( !\B[57]~input_o\ & ( !\c_var~27_combout\ & ( 
-- !\ppn_carry:pg[56][0]~0_combout\ $ (\A[57]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111000011111111000011110110000010010000100111110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[56]~input_o\,
	datab => \ALT_INV_B[56]~input_o\,
	datac => \ALT_INV_ppn_carry:pg[56][0]~0_combout\,
	datad => \ALT_INV_A[57]~input_o\,
	datae => \ALT_INV_B[57]~input_o\,
	dataf => \ALT_INV_c_var~27_combout\,
	combout => \S~57_combout\);

-- Location: LABCELL_X24_Y52_N38
\pg~80\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~80_combout\ = ( \B[57]~input_o\ & ( \A[56]~input_o\ & ( (\B[56]~input_o\) # (\A[57]~input_o\) ) ) ) # ( !\B[57]~input_o\ & ( \A[56]~input_o\ & ( (\A[57]~input_o\ & \B[56]~input_o\) ) ) ) # ( \B[57]~input_o\ & ( !\A[56]~input_o\ & ( \A[57]~input_o\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000101000001010101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[57]~input_o\,
	datac => \ALT_INV_B[56]~input_o\,
	datae => \ALT_INV_B[57]~input_o\,
	dataf => \ALT_INV_A[56]~input_o\,
	combout => \pg~80_combout\);

-- Location: LABCELL_X24_Y52_N2
\c_var~28\ : arriaii_lcell_comb
-- Equation(s):
-- \c_var~28_combout\ = ( \B[57]~input_o\ & ( \A[56]~input_o\ & ( (!\B[56]~input_o\ & !\A[57]~input_o\) ) ) ) # ( !\B[57]~input_o\ & ( \A[56]~input_o\ & ( (!\B[56]~input_o\ & \A[57]~input_o\) ) ) ) # ( \B[57]~input_o\ & ( !\A[56]~input_o\ & ( 
-- (\B[56]~input_o\ & !\A[57]~input_o\) ) ) ) # ( !\B[57]~input_o\ & ( !\A[56]~input_o\ & ( (\B[56]~input_o\ & \A[57]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011001100110000000000000000110011001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[56]~input_o\,
	datad => \ALT_INV_A[57]~input_o\,
	datae => \ALT_INV_B[57]~input_o\,
	dataf => \ALT_INV_A[56]~input_o\,
	combout => \c_var~28_combout\);

-- Location: IOIBUF_X17_Y56_N32
\B[58]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(58),
	o => \B[58]~input_o\);

-- Location: IOIBUF_X19_Y56_N1
\A[58]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(58),
	o => \A[58]~input_o\);

-- Location: LABCELL_X24_Y52_N12
\p[58]\ : arriaii_lcell_comb
-- Equation(s):
-- p(58) = ( \A[58]~input_o\ & ( !\B[58]~input_o\ ) ) # ( !\A[58]~input_o\ & ( \B[58]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[58]~input_o\,
	dataf => \ALT_INV_A[58]~input_o\,
	combout => p(58));

-- Location: LABCELL_X24_Y52_N24
\pg~81\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~81_combout\ = ( \pg~76_combout\ & ( \c_var~28_combout\ ) ) # ( !\pg~76_combout\ & ( (\c_var~28_combout\ & !\pg~79_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_c_var~28_combout\,
	datac => \ALT_INV_pg~79_combout\,
	dataf => \ALT_INV_pg~76_combout\,
	combout => \pg~81_combout\);

-- Location: LABCELL_X24_Y52_N26
\S~58\ : arriaii_lcell_comb
-- Equation(s):
-- \S~58_combout\ = ( \c_var~27_combout\ & ( !p(58) $ (((!\pg~80_combout\ & (!\c_var~28_combout\ & !\pg~81_combout\)))) ) ) # ( !\c_var~27_combout\ & ( !p(58) $ (((!\pg~80_combout\ & !\pg~81_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101011110000010110101111000001111000111100000111100011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pg~80_combout\,
	datab => \ALT_INV_c_var~28_combout\,
	datac => ALT_INV_p(58),
	datad => \ALT_INV_pg~81_combout\,
	dataf => \ALT_INV_c_var~27_combout\,
	combout => \S~58_combout\);

-- Location: IOIBUF_X15_Y56_N63
\A[59]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(59),
	o => \A[59]~input_o\);

-- Location: IOIBUF_X23_Y56_N94
\B[59]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(59),
	o => \B[59]~input_o\);

-- Location: LABCELL_X24_Y52_N30
\ppn_carry:pg[58][0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[58][0]~0_combout\ = ( \pg~81_combout\ & ( (!\A[58]~input_o\ & !\B[58]~input_o\) ) ) # ( !\pg~81_combout\ & ( (!\pg~80_combout\ & ((!\A[58]~input_o\) # (!\B[58]~input_o\))) # (\pg~80_combout\ & (!\A[58]~input_o\ & !\B[58]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010100000111110101010000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pg~80_combout\,
	datac => \ALT_INV_A[58]~input_o\,
	datad => \ALT_INV_B[58]~input_o\,
	dataf => \ALT_INV_pg~81_combout\,
	combout => \ppn_carry:pg[58][0]~0_combout\);

-- Location: LABCELL_X24_Y52_N32
\S~59\ : arriaii_lcell_comb
-- Equation(s):
-- \S~59_combout\ = ( \ppn_carry:pg[58][0]~0_combout\ & ( \c_var~27_combout\ & ( !\A[59]~input_o\ $ (!\B[59]~input_o\ $ (((p(58) & \c_var~28_combout\)))) ) ) ) # ( !\ppn_carry:pg[58][0]~0_combout\ & ( \c_var~27_combout\ & ( !\A[59]~input_o\ $ 
-- (\B[59]~input_o\) ) ) ) # ( \ppn_carry:pg[58][0]~0_combout\ & ( !\c_var~27_combout\ & ( !\A[59]~input_o\ $ (!\B[59]~input_o\) ) ) ) # ( !\ppn_carry:pg[58][0]~0_combout\ & ( !\c_var~27_combout\ & ( !\A[59]~input_o\ $ (\B[59]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011001111000011110011000011110000110011110001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_p(58),
	datab => \ALT_INV_A[59]~input_o\,
	datac => \ALT_INV_B[59]~input_o\,
	datad => \ALT_INV_c_var~28_combout\,
	datae => \ALT_INV_ppn_carry:pg[58][0]~0_combout\,
	dataf => \ALT_INV_c_var~27_combout\,
	combout => \S~59_combout\);

-- Location: IOIBUF_X30_Y56_N32
\B[60]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(60),
	o => \B[60]~input_o\);

-- Location: IOIBUF_X28_Y56_N94
\A[60]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(60),
	o => \A[60]~input_o\);

-- Location: LABCELL_X24_Y52_N16
\pg~82\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~82_combout\ = ( p(58) & ( \c_var~28_combout\ & ( !\B[59]~input_o\ $ (!\A[59]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[59]~input_o\,
	datad => \ALT_INV_A[59]~input_o\,
	datae => ALT_INV_p(58),
	dataf => \ALT_INV_c_var~28_combout\,
	combout => \pg~82_combout\);

-- Location: MLABCELL_X31_Y52_N2
\pg~83\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~83_combout\ = ( \pg~79_combout\ & ( (\pg~82_combout\ & \pg~76_combout\) ) ) # ( !\pg~79_combout\ & ( \pg~82_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pg~82_combout\,
	datab => \ALT_INV_pg~76_combout\,
	dataf => \ALT_INV_pg~79_combout\,
	combout => \pg~83_combout\);

-- Location: LABCELL_X24_Y52_N28
\pg~86\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~86_combout\ = ( \A[59]~input_o\ & ( ((!\pg~80_combout\ & (\A[58]~input_o\ & \B[58]~input_o\)) # (\pg~80_combout\ & ((\B[58]~input_o\) # (\A[58]~input_o\)))) # (\B[59]~input_o\) ) ) # ( !\A[59]~input_o\ & ( (\B[59]~input_o\ & ((!\pg~80_combout\ & 
-- (\A[58]~input_o\ & \B[58]~input_o\)) # (\pg~80_combout\ & ((\B[58]~input_o\) # (\A[58]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000111000000010000011100011111011111110001111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pg~80_combout\,
	datab => \ALT_INV_A[58]~input_o\,
	datac => \ALT_INV_B[59]~input_o\,
	datad => \ALT_INV_B[58]~input_o\,
	dataf => \ALT_INV_A[59]~input_o\,
	combout => \pg~86_combout\);

-- Location: LABCELL_X35_Y52_N38
\c_var~29\ : arriaii_lcell_comb
-- Equation(s):
-- \c_var~29_combout\ = (\c_var~22_combout\ & (\pg~75_combout\ & \pg~82_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c_var~22_combout\,
	datab => \ALT_INV_pg~75_combout\,
	datad => \ALT_INV_pg~82_combout\,
	combout => \c_var~29_combout\);

-- Location: MLABCELL_X31_Y52_N6
\S~60\ : arriaii_lcell_comb
-- Equation(s):
-- \S~60_combout\ = ( \c_var~29_combout\ & ( !\B[60]~input_o\ $ (\A[60]~input_o\) ) ) # ( !\c_var~29_combout\ & ( !\B[60]~input_o\ $ (!\A[60]~input_o\ $ (((\pg~86_combout\) # (\pg~83_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110011001011010011001100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[60]~input_o\,
	datab => \ALT_INV_A[60]~input_o\,
	datac => \ALT_INV_pg~83_combout\,
	datad => \ALT_INV_pg~86_combout\,
	dataf => \ALT_INV_c_var~29_combout\,
	combout => \S~60_combout\);

-- Location: IOIBUF_X23_Y56_N63
\B[61]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(61),
	o => \B[61]~input_o\);

-- Location: MLABCELL_X31_Y52_N28
\ppn_carry:pg[60][0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[60][0]~0_combout\ = ( \pg~83_combout\ & ( (!\A[60]~input_o\ & !\B[60]~input_o\) ) ) # ( !\pg~83_combout\ & ( (!\A[60]~input_o\ & ((!\B[60]~input_o\) # (!\pg~86_combout\))) # (\A[60]~input_o\ & (!\B[60]~input_o\ & !\pg~86_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011000000111111001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[60]~input_o\,
	datac => \ALT_INV_B[60]~input_o\,
	datad => \ALT_INV_pg~86_combout\,
	dataf => \ALT_INV_pg~83_combout\,
	combout => \ppn_carry:pg[60][0]~0_combout\);

-- Location: IOIBUF_X31_Y56_N94
\A[61]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(61),
	o => \A[61]~input_o\);

-- Location: MLABCELL_X31_Y52_N34
\S~61\ : arriaii_lcell_comb
-- Equation(s):
-- \S~61_combout\ = ( \c_var~29_combout\ & ( \A[61]~input_o\ & ( !\B[61]~input_o\ $ (((!\ppn_carry:pg[60][0]~0_combout\) # (!\B[60]~input_o\ $ (!\A[60]~input_o\)))) ) ) ) # ( !\c_var~29_combout\ & ( \A[61]~input_o\ & ( !\B[61]~input_o\ $ 
-- (!\ppn_carry:pg[60][0]~0_combout\) ) ) ) # ( \c_var~29_combout\ & ( !\A[61]~input_o\ & ( !\B[61]~input_o\ $ (((\ppn_carry:pg[60][0]~0_combout\ & (!\B[60]~input_o\ $ (\A[60]~input_o\))))) ) ) ) # ( !\c_var~29_combout\ & ( !\A[61]~input_o\ & ( 
-- !\B[61]~input_o\ $ (\ppn_carry:pg[60][0]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000110011110011000110100100110011110011000011001110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[60]~input_o\,
	datab => \ALT_INV_B[61]~input_o\,
	datac => \ALT_INV_A[60]~input_o\,
	datad => \ALT_INV_ppn_carry:pg[60][0]~0_combout\,
	datae => \ALT_INV_c_var~29_combout\,
	dataf => \ALT_INV_A[61]~input_o\,
	combout => \S~61_combout\);

-- Location: MLABCELL_X31_Y52_N38
\c_var~30\ : arriaii_lcell_comb
-- Equation(s):
-- \c_var~30_combout\ = ( !\B[61]~input_o\ & ( \A[61]~input_o\ & ( !\B[60]~input_o\ $ (!\A[60]~input_o\) ) ) ) # ( \B[61]~input_o\ & ( !\A[61]~input_o\ & ( !\B[60]~input_o\ $ (!\A[60]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011010101001010101101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[60]~input_o\,
	datad => \ALT_INV_A[60]~input_o\,
	datae => \ALT_INV_B[61]~input_o\,
	dataf => \ALT_INV_A[61]~input_o\,
	combout => \c_var~30_combout\);

-- Location: IOIBUF_X30_Y56_N63
\A[62]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(62),
	o => \A[62]~input_o\);

-- Location: MLABCELL_X31_Y52_N0
\pg~85\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~85_combout\ = ( \c_var~30_combout\ & ( ((\pg~82_combout\ & ((!\pg~79_combout\) # (\pg~76_combout\)))) # (\pg~86_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010001111111110101000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pg~82_combout\,
	datab => \ALT_INV_pg~76_combout\,
	datac => \ALT_INV_pg~79_combout\,
	datad => \ALT_INV_pg~86_combout\,
	dataf => \ALT_INV_c_var~30_combout\,
	combout => \pg~85_combout\);

-- Location: IOIBUF_X28_Y56_N32
\B[62]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(62),
	o => \B[62]~input_o\);

-- Location: MLABCELL_X31_Y52_N4
\pg~84\ : arriaii_lcell_comb
-- Equation(s):
-- \pg~84_combout\ = ( \A[61]~input_o\ & ( ((\B[60]~input_o\ & \A[60]~input_o\)) # (\B[61]~input_o\) ) ) # ( !\A[61]~input_o\ & ( (\B[60]~input_o\ & (\A[60]~input_o\ & \B[61]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[60]~input_o\,
	datab => \ALT_INV_A[60]~input_o\,
	datac => \ALT_INV_B[61]~input_o\,
	dataf => \ALT_INV_A[61]~input_o\,
	combout => \pg~84_combout\);

-- Location: MLABCELL_X31_Y52_N22
\S~62\ : arriaii_lcell_comb
-- Equation(s):
-- \S~62_combout\ = ( \B[62]~input_o\ & ( \pg~84_combout\ & ( \A[62]~input_o\ ) ) ) # ( !\B[62]~input_o\ & ( \pg~84_combout\ & ( !\A[62]~input_o\ ) ) ) # ( \B[62]~input_o\ & ( !\pg~84_combout\ & ( !\A[62]~input_o\ $ ((((\c_var~30_combout\ & 
-- \c_var~29_combout\)) # (\pg~85_combout\))) ) ) ) # ( !\B[62]~input_o\ & ( !\pg~84_combout\ & ( !\A[62]~input_o\ $ (((!\pg~85_combout\ & ((!\c_var~30_combout\) # (!\c_var~29_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011011001100110010010011001111001100110011000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c_var~30_combout\,
	datab => \ALT_INV_A[62]~input_o\,
	datac => \ALT_INV_c_var~29_combout\,
	datad => \ALT_INV_pg~85_combout\,
	datae => \ALT_INV_B[62]~input_o\,
	dataf => \ALT_INV_pg~84_combout\,
	combout => \S~62_combout\);

-- Location: MLABCELL_X31_Y52_N30
\ppn_carry:pg[62][0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \ppn_carry:pg[62][0]~0_combout\ = ( \pg~84_combout\ & ( (!\B[62]~input_o\ & !\A[62]~input_o\) ) ) # ( !\pg~84_combout\ & ( (!\B[62]~input_o\ & ((!\A[62]~input_o\) # (!\pg~85_combout\))) # (\B[62]~input_o\ & (!\A[62]~input_o\ & !\pg~85_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010100000111110101010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[62]~input_o\,
	datac => \ALT_INV_A[62]~input_o\,
	datad => \ALT_INV_pg~85_combout\,
	dataf => \ALT_INV_pg~84_combout\,
	combout => \ppn_carry:pg[62][0]~0_combout\);

-- Location: IOIBUF_X30_Y56_N1
\B[63]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(63),
	o => \B[63]~input_o\);

-- Location: MLABCELL_X31_Y52_N26
\c_var~31\ : arriaii_lcell_comb
-- Equation(s):
-- \c_var~31_combout\ = ( \c_var~30_combout\ & ( !\B[62]~input_o\ $ (!\A[62]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[62]~input_o\,
	datac => \ALT_INV_A[62]~input_o\,
	dataf => \ALT_INV_c_var~30_combout\,
	combout => \c_var~31_combout\);

-- Location: IOIBUF_X31_Y56_N63
\A[63]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(63),
	o => \A[63]~input_o\);

-- Location: MLABCELL_X31_Y52_N10
\S~63\ : arriaii_lcell_comb
-- Equation(s):
-- \S~63_combout\ = ( \A[63]~input_o\ & ( !\B[63]~input_o\ $ (((!\ppn_carry:pg[62][0]~0_combout\) # ((\c_var~29_combout\ & \c_var~31_combout\)))) ) ) # ( !\A[63]~input_o\ & ( !\B[63]~input_o\ $ (((\ppn_carry:pg[62][0]~0_combout\ & ((!\c_var~29_combout\) # 
-- (!\c_var~31_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111010010110000111101001000111100001011010011110000101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c_var~29_combout\,
	datab => \ALT_INV_ppn_carry:pg[62][0]~0_combout\,
	datac => \ALT_INV_B[63]~input_o\,
	datad => \ALT_INV_c_var~31_combout\,
	dataf => \ALT_INV_A[63]~input_o\,
	combout => \S~63_combout\);

-- Location: MLABCELL_X31_Y52_N12
\c_var~33\ : arriaii_lcell_comb
-- Equation(s):
-- \c_var~33_combout\ = ( \pg~79_combout\ & ( !\pg~86_combout\ ) ) # ( !\pg~79_combout\ & ( (!\pg~82_combout\ & !\pg~86_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_pg~82_combout\,
	datad => \ALT_INV_pg~86_combout\,
	dataf => \ALT_INV_pg~79_combout\,
	combout => \c_var~33_combout\);

-- Location: MLABCELL_X31_Y52_N24
\c_var~34\ : arriaii_lcell_comb
-- Equation(s):
-- \c_var~34_combout\ = ( \A[63]~input_o\ & ( (!\B[63]~input_o\ & \c_var~31_combout\) ) ) # ( !\A[63]~input_o\ & ( (\B[63]~input_o\ & \c_var~31_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[63]~input_o\,
	datad => \ALT_INV_c_var~31_combout\,
	dataf => \ALT_INV_A[63]~input_o\,
	combout => \c_var~34_combout\);

-- Location: MLABCELL_X31_Y52_N14
\c_var~36\ : arriaii_lcell_comb
-- Equation(s):
-- \c_var~36_combout\ = ( \A[63]~input_o\ & ( ((!\pg~84_combout\ & (\A[62]~input_o\ & \B[62]~input_o\)) # (\pg~84_combout\ & ((\B[62]~input_o\) # (\A[62]~input_o\)))) # (\B[63]~input_o\) ) ) # ( !\A[63]~input_o\ & ( (\B[63]~input_o\ & ((!\pg~84_combout\ & 
-- (\A[62]~input_o\ & \B[62]~input_o\)) # (\pg~84_combout\ & ((\B[62]~input_o\) # (\A[62]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000111000000010000011100011111011111110001111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pg~84_combout\,
	datab => \ALT_INV_A[62]~input_o\,
	datac => \ALT_INV_B[63]~input_o\,
	datad => \ALT_INV_B[62]~input_o\,
	dataf => \ALT_INV_A[63]~input_o\,
	combout => \c_var~36_combout\);

-- Location: LABCELL_X35_Y52_N2
\c_var~32\ : arriaii_lcell_comb
-- Equation(s):
-- \c_var~32_combout\ = ( \pg~38_combout\ & ( (!\pg~63_combout\ & \pg~67_combout\) ) ) # ( !\pg~38_combout\ & ( (\pg~67_combout\ & ((!\pg~63_combout\) # ((!\c_var~15_combout\ & \pg~42_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001110000011000000111000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c_var~15_combout\,
	datab => \ALT_INV_pg~63_combout\,
	datac => \ALT_INV_pg~67_combout\,
	datad => \ALT_INV_pg~42_combout\,
	dataf => \ALT_INV_pg~38_combout\,
	combout => \c_var~32_combout\);

-- Location: MLABCELL_X31_Y52_N16
\c_var~35\ : arriaii_lcell_comb
-- Equation(s):
-- \c_var~35_combout\ = ( \pg~82_combout\ & ( \c_var~32_combout\ & ( ((!\c_var~33_combout\ & \c_var~34_combout\)) # (\c_var~36_combout\) ) ) ) # ( !\pg~82_combout\ & ( \c_var~32_combout\ & ( ((!\c_var~33_combout\ & \c_var~34_combout\)) # (\c_var~36_combout\) 
-- ) ) ) # ( \pg~82_combout\ & ( !\c_var~32_combout\ & ( ((\c_var~34_combout\ & ((!\c_var~33_combout\) # (\pg~75_combout\)))) # (\c_var~36_combout\) ) ) ) # ( !\pg~82_combout\ & ( !\c_var~32_combout\ & ( ((!\c_var~33_combout\ & \c_var~34_combout\)) # 
-- (\c_var~36_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101011111111000010111111111100001010111111110000101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c_var~33_combout\,
	datab => \ALT_INV_pg~75_combout\,
	datac => \ALT_INV_c_var~34_combout\,
	datad => \ALT_INV_c_var~36_combout\,
	datae => \ALT_INV_pg~82_combout\,
	dataf => \ALT_INV_c_var~32_combout\,
	combout => \c_var~35_combout\);

-- Location: MLABCELL_X31_Y52_N8
\Ovfl~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = ( \c_var~35_combout\ & ( (\ppn_carry:pg[62][0]~0_combout\ & ((!\c_var~29_combout\) # (!\c_var~31_combout\))) ) ) # ( !\c_var~35_combout\ & ( (!\ppn_carry:pg[62][0]~0_combout\) # ((\c_var~29_combout\ & \c_var~31_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011011101110011001101110100110011001000100011001100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c_var~29_combout\,
	datab => \ALT_INV_ppn_carry:pg[62][0]~0_combout\,
	datad => \ALT_INV_c_var~31_combout\,
	dataf => \ALT_INV_c_var~35_combout\,
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


