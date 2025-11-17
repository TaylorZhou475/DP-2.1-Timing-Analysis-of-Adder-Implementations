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

-- DATE "11/16/2025 15:59:52"

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

ENTITY 	RippleCarry IS
    PORT (
	A : IN std_logic_vector(63 DOWNTO 0);
	B : IN std_logic_vector(63 DOWNTO 0);
	Cin : IN std_logic;
	Sum : OUT std_logic_vector(63 DOWNTO 0);
	Cout : OUT std_logic;
	Ovfl : OUT std_logic
	);
END RippleCarry;

-- Design Ports Information
-- Sum[0]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[1]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[2]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[3]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[4]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[5]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[6]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[7]	=>  Location: PIN_AG9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[8]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[9]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[10]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[11]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[12]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[13]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[14]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[15]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[16]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[17]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[18]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[19]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[20]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[21]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[22]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[23]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[24]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[25]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[26]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[27]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[28]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[29]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[30]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[31]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[32]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[33]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[34]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[35]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[36]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[37]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[38]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[39]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[40]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[41]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[42]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[43]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[44]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[45]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[46]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[47]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[48]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[49]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[50]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[51]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[52]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[53]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[54]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[55]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[56]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[57]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[58]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[59]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[60]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[61]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[62]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[63]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AC13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_AH16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[32]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[32]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[33]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[33]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[34]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[34]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[35]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[35]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[36]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[36]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[37]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[37]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[38]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[38]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[39]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[39]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[40]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[40]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[41]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[41]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[42]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[42]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[43]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[43]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[44]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[44]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[45]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[45]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[46]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[46]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[47]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[47]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[48]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[48]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[49]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[49]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[50]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[50]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[51]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[51]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[52]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[52]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[53]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[53]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[54]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[54]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[55]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[55]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[56]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[56]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[57]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[57]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[58]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[58]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[59]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[59]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[60]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[60]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[61]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[61]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[62]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[62]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[63]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[63]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RippleCarry IS
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
SIGNAL ww_Sum : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_Cout : std_logic;
SIGNAL ww_Ovfl : std_logic;
SIGNAL \Sum[0]~output_o\ : std_logic;
SIGNAL \Sum[1]~output_o\ : std_logic;
SIGNAL \Sum[2]~output_o\ : std_logic;
SIGNAL \Sum[3]~output_o\ : std_logic;
SIGNAL \Sum[4]~output_o\ : std_logic;
SIGNAL \Sum[5]~output_o\ : std_logic;
SIGNAL \Sum[6]~output_o\ : std_logic;
SIGNAL \Sum[7]~output_o\ : std_logic;
SIGNAL \Sum[8]~output_o\ : std_logic;
SIGNAL \Sum[9]~output_o\ : std_logic;
SIGNAL \Sum[10]~output_o\ : std_logic;
SIGNAL \Sum[11]~output_o\ : std_logic;
SIGNAL \Sum[12]~output_o\ : std_logic;
SIGNAL \Sum[13]~output_o\ : std_logic;
SIGNAL \Sum[14]~output_o\ : std_logic;
SIGNAL \Sum[15]~output_o\ : std_logic;
SIGNAL \Sum[16]~output_o\ : std_logic;
SIGNAL \Sum[17]~output_o\ : std_logic;
SIGNAL \Sum[18]~output_o\ : std_logic;
SIGNAL \Sum[19]~output_o\ : std_logic;
SIGNAL \Sum[20]~output_o\ : std_logic;
SIGNAL \Sum[21]~output_o\ : std_logic;
SIGNAL \Sum[22]~output_o\ : std_logic;
SIGNAL \Sum[23]~output_o\ : std_logic;
SIGNAL \Sum[24]~output_o\ : std_logic;
SIGNAL \Sum[25]~output_o\ : std_logic;
SIGNAL \Sum[26]~output_o\ : std_logic;
SIGNAL \Sum[27]~output_o\ : std_logic;
SIGNAL \Sum[28]~output_o\ : std_logic;
SIGNAL \Sum[29]~output_o\ : std_logic;
SIGNAL \Sum[30]~output_o\ : std_logic;
SIGNAL \Sum[31]~output_o\ : std_logic;
SIGNAL \Sum[32]~output_o\ : std_logic;
SIGNAL \Sum[33]~output_o\ : std_logic;
SIGNAL \Sum[34]~output_o\ : std_logic;
SIGNAL \Sum[35]~output_o\ : std_logic;
SIGNAL \Sum[36]~output_o\ : std_logic;
SIGNAL \Sum[37]~output_o\ : std_logic;
SIGNAL \Sum[38]~output_o\ : std_logic;
SIGNAL \Sum[39]~output_o\ : std_logic;
SIGNAL \Sum[40]~output_o\ : std_logic;
SIGNAL \Sum[41]~output_o\ : std_logic;
SIGNAL \Sum[42]~output_o\ : std_logic;
SIGNAL \Sum[43]~output_o\ : std_logic;
SIGNAL \Sum[44]~output_o\ : std_logic;
SIGNAL \Sum[45]~output_o\ : std_logic;
SIGNAL \Sum[46]~output_o\ : std_logic;
SIGNAL \Sum[47]~output_o\ : std_logic;
SIGNAL \Sum[48]~output_o\ : std_logic;
SIGNAL \Sum[49]~output_o\ : std_logic;
SIGNAL \Sum[50]~output_o\ : std_logic;
SIGNAL \Sum[51]~output_o\ : std_logic;
SIGNAL \Sum[52]~output_o\ : std_logic;
SIGNAL \Sum[53]~output_o\ : std_logic;
SIGNAL \Sum[54]~output_o\ : std_logic;
SIGNAL \Sum[55]~output_o\ : std_logic;
SIGNAL \Sum[56]~output_o\ : std_logic;
SIGNAL \Sum[57]~output_o\ : std_logic;
SIGNAL \Sum[58]~output_o\ : std_logic;
SIGNAL \Sum[59]~output_o\ : std_logic;
SIGNAL \Sum[60]~output_o\ : std_logic;
SIGNAL \Sum[61]~output_o\ : std_logic;
SIGNAL \Sum[62]~output_o\ : std_logic;
SIGNAL \Sum[63]~output_o\ : std_logic;
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \Ovfl~output_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \gen_adders:0:FA_inst|sum~combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \gen_adders:1:FA_inst|sum~combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \gen_adders:1:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \gen_adders:2:FA_inst|sum~combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \gen_adders:3:FA_inst|sum~combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \gen_adders:3:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \gen_adders:4:FA_inst|sum~combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \gen_adders:4:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \gen_adders:4:FA_inst|cout~1_combout\ : std_logic;
SIGNAL \gen_adders:4:FA_inst|cout~2_combout\ : std_logic;
SIGNAL \gen_adders:5:FA_inst|sum~combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \gen_adders:6:FA_inst|sum~combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \gen_adders:6:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \gen_adders:7:FA_inst|sum~combout\ : std_logic;
SIGNAL \gen_adders:7:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \gen_adders:8:FA_inst|sum~combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \gen_adders:9:FA_inst|sum~combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \gen_adders:9:FA_inst|cout~1_combout\ : std_logic;
SIGNAL \gen_adders:9:FA_inst|cout~2_combout\ : std_logic;
SIGNAL \gen_adders:9:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \gen_adders:9:FA_inst|cout~3_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \gen_adders:10:FA_inst|sum~combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \gen_adders:11:FA_inst|sum~combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \gen_adders:11:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \gen_adders:12:FA_inst|sum~combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \gen_adders:12:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \gen_adders:13:FA_inst|sum~combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \gen_adders:14:FA_inst|sum~combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \gen_adders:14:FA_inst|cout~1_combout\ : std_logic;
SIGNAL \gen_adders:14:FA_inst|cout~2_combout\ : std_logic;
SIGNAL \gen_adders:14:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \gen_adders:14:FA_inst|cout~3_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \gen_adders:15:FA_inst|sum~combout\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \gen_adders:16:FA_inst|sum~combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \gen_adders:16:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \gen_adders:17:FA_inst|sum~combout\ : std_logic;
SIGNAL \gen_adders:17:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \gen_adders:18:FA_inst|sum~combout\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \gen_adders:19:FA_inst|sum~combout\ : std_logic;
SIGNAL \gen_adders:19:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \gen_adders:19:FA_inst|cout~1_combout\ : std_logic;
SIGNAL \gen_adders:19:FA_inst|cout~2_combout\ : std_logic;
SIGNAL \gen_adders:19:FA_inst|cout~3_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \gen_adders:20:FA_inst|sum~combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \gen_adders:21:FA_inst|sum~combout\ : std_logic;
SIGNAL \gen_adders:21:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \gen_adders:22:FA_inst|sum~combout\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \gen_adders:22:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \gen_adders:23:FA_inst|sum~combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \gen_adders:24:FA_inst|sum~combout\ : std_logic;
SIGNAL \gen_adders:24:FA_inst|cout~1_combout\ : std_logic;
SIGNAL \gen_adders:24:FA_inst|cout~2_combout\ : std_logic;
SIGNAL \gen_adders:24:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \gen_adders:24:FA_inst|cout~3_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \gen_adders:25:FA_inst|sum~combout\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \gen_adders:26:FA_inst|sum~combout\ : std_logic;
SIGNAL \gen_adders:26:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \gen_adders:27:FA_inst|sum~combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \gen_adders:27:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \gen_adders:28:FA_inst|sum~combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \gen_adders:29:FA_inst|sum~combout\ : std_logic;
SIGNAL \gen_adders:29:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \gen_adders:29:FA_inst|cout~1_combout\ : std_logic;
SIGNAL \gen_adders:29:FA_inst|cout~2_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \gen_adders:30:FA_inst|sum~combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \gen_adders:31:FA_inst|sum~combout\ : std_logic;
SIGNAL \gen_adders:31:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \B[32]~input_o\ : std_logic;
SIGNAL \A[32]~input_o\ : std_logic;
SIGNAL \gen_adders:32:FA_inst|sum~combout\ : std_logic;
SIGNAL \A[33]~input_o\ : std_logic;
SIGNAL \gen_adders:32:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \B[33]~input_o\ : std_logic;
SIGNAL \gen_adders:33:FA_inst|sum~combout\ : std_logic;
SIGNAL \A[34]~input_o\ : std_logic;
SIGNAL \B[34]~input_o\ : std_logic;
SIGNAL \gen_adders:34:FA_inst|sum~combout\ : std_logic;
SIGNAL \B[35]~input_o\ : std_logic;
SIGNAL \A[35]~input_o\ : std_logic;
SIGNAL \gen_adders:34:FA_inst|cout~1_combout\ : std_logic;
SIGNAL \gen_adders:34:FA_inst|cout~2_combout\ : std_logic;
SIGNAL \gen_adders:34:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \gen_adders:34:FA_inst|cout~3_combout\ : std_logic;
SIGNAL \gen_adders:35:FA_inst|sum~combout\ : std_logic;
SIGNAL \A[36]~input_o\ : std_logic;
SIGNAL \B[36]~input_o\ : std_logic;
SIGNAL \gen_adders:36:FA_inst|sum~combout\ : std_logic;
SIGNAL \gen_adders:36:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \A[37]~input_o\ : std_logic;
SIGNAL \B[37]~input_o\ : std_logic;
SIGNAL \gen_adders:37:FA_inst|sum~combout\ : std_logic;
SIGNAL \B[38]~input_o\ : std_logic;
SIGNAL \A[38]~input_o\ : std_logic;
SIGNAL \gen_adders:37:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \gen_adders:38:FA_inst|sum~combout\ : std_logic;
SIGNAL \B[39]~input_o\ : std_logic;
SIGNAL \A[39]~input_o\ : std_logic;
SIGNAL \gen_adders:39:FA_inst|sum~combout\ : std_logic;
SIGNAL \gen_adders:39:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \A[40]~input_o\ : std_logic;
SIGNAL \B[40]~input_o\ : std_logic;
SIGNAL \gen_adders:39:FA_inst|cout~1_combout\ : std_logic;
SIGNAL \gen_adders:39:FA_inst|cout~2_combout\ : std_logic;
SIGNAL \gen_adders:40:FA_inst|sum~combout\ : std_logic;
SIGNAL \A[41]~input_o\ : std_logic;
SIGNAL \B[41]~input_o\ : std_logic;
SIGNAL \gen_adders:41:FA_inst|sum~combout\ : std_logic;
SIGNAL \B[42]~input_o\ : std_logic;
SIGNAL \A[42]~input_o\ : std_logic;
SIGNAL \gen_adders:41:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \gen_adders:42:FA_inst|sum~combout\ : std_logic;
SIGNAL \A[43]~input_o\ : std_logic;
SIGNAL \B[43]~input_o\ : std_logic;
SIGNAL \gen_adders:42:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \gen_adders:43:FA_inst|sum~combout\ : std_logic;
SIGNAL \B[44]~input_o\ : std_logic;
SIGNAL \A[44]~input_o\ : std_logic;
SIGNAL \gen_adders:44:FA_inst|sum~combout\ : std_logic;
SIGNAL \B[45]~input_o\ : std_logic;
SIGNAL \gen_adders:44:FA_inst|cout~1_combout\ : std_logic;
SIGNAL \gen_adders:44:FA_inst|cout~2_combout\ : std_logic;
SIGNAL \gen_adders:44:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \gen_adders:44:FA_inst|cout~3_combout\ : std_logic;
SIGNAL \A[45]~input_o\ : std_logic;
SIGNAL \gen_adders:45:FA_inst|sum~combout\ : std_logic;
SIGNAL \B[46]~input_o\ : std_logic;
SIGNAL \A[46]~input_o\ : std_logic;
SIGNAL \gen_adders:46:FA_inst|sum~combout\ : std_logic;
SIGNAL \A[47]~input_o\ : std_logic;
SIGNAL \gen_adders:46:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \B[47]~input_o\ : std_logic;
SIGNAL \gen_adders:47:FA_inst|sum~combout\ : std_logic;
SIGNAL \A[48]~input_o\ : std_logic;
SIGNAL \B[48]~input_o\ : std_logic;
SIGNAL \gen_adders:48:FA_inst|sum~combout\ : std_logic;
SIGNAL \A[49]~input_o\ : std_logic;
SIGNAL \B[49]~input_o\ : std_logic;
SIGNAL \gen_adders:49:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \gen_adders:49:FA_inst|sum~combout\ : std_logic;
SIGNAL \gen_adders:49:FA_inst|cout~1_combout\ : std_logic;
SIGNAL \gen_adders:49:FA_inst|cout~2_combout\ : std_logic;
SIGNAL \gen_adders:49:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \B[50]~input_o\ : std_logic;
SIGNAL \A[50]~input_o\ : std_logic;
SIGNAL \gen_adders:50:FA_inst|sum~combout\ : std_logic;
SIGNAL \A[51]~input_o\ : std_logic;
SIGNAL \B[51]~input_o\ : std_logic;
SIGNAL \gen_adders:51:FA_inst|sum~combout\ : std_logic;
SIGNAL \B[52]~input_o\ : std_logic;
SIGNAL \A[52]~input_o\ : std_logic;
SIGNAL \gen_adders:51:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \gen_adders:52:FA_inst|sum~combout\ : std_logic;
SIGNAL \A[53]~input_o\ : std_logic;
SIGNAL \B[53]~input_o\ : std_logic;
SIGNAL \gen_adders:53:FA_inst|sum~combout\ : std_logic;
SIGNAL \B[54]~input_o\ : std_logic;
SIGNAL \A[54]~input_o\ : std_logic;
SIGNAL \gen_adders:54:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \gen_adders:54:FA_inst|sum~combout\ : std_logic;
SIGNAL \gen_adders:54:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \B[55]~input_o\ : std_logic;
SIGNAL \A[55]~input_o\ : std_logic;
SIGNAL \gen_adders:54:FA_inst|cout~1_combout\ : std_logic;
SIGNAL \gen_adders:54:FA_inst|cout~2_combout\ : std_logic;
SIGNAL \gen_adders:55:FA_inst|sum~combout\ : std_logic;
SIGNAL \A[56]~input_o\ : std_logic;
SIGNAL \B[56]~input_o\ : std_logic;
SIGNAL \gen_adders:56:FA_inst|sum~combout\ : std_logic;
SIGNAL \gen_adders:56:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \B[57]~input_o\ : std_logic;
SIGNAL \A[57]~input_o\ : std_logic;
SIGNAL \gen_adders:57:FA_inst|sum~combout\ : std_logic;
SIGNAL \A[58]~input_o\ : std_logic;
SIGNAL \B[58]~input_o\ : std_logic;
SIGNAL \gen_adders:58:FA_inst|sum~combout\ : std_logic;
SIGNAL \B[59]~input_o\ : std_logic;
SIGNAL \A[59]~input_o\ : std_logic;
SIGNAL \gen_adders:59:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \gen_adders:59:FA_inst|sum~combout\ : std_logic;
SIGNAL \B[60]~input_o\ : std_logic;
SIGNAL \gen_adders:59:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \A[60]~input_o\ : std_logic;
SIGNAL \gen_adders:59:FA_inst|cout~1_combout\ : std_logic;
SIGNAL \gen_adders:59:FA_inst|cout~2_combout\ : std_logic;
SIGNAL \gen_adders:60:FA_inst|sum~combout\ : std_logic;
SIGNAL \A[61]~input_o\ : std_logic;
SIGNAL \B[61]~input_o\ : std_logic;
SIGNAL \gen_adders:61:FA_inst|sum~combout\ : std_logic;
SIGNAL \B[62]~input_o\ : std_logic;
SIGNAL \gen_adders:61:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \A[62]~input_o\ : std_logic;
SIGNAL \gen_adders:62:FA_inst|sum~combout\ : std_logic;
SIGNAL \B[63]~input_o\ : std_logic;
SIGNAL \A[63]~input_o\ : std_logic;
SIGNAL \gen_adders:63:FA_inst|sum~combout\ : std_logic;
SIGNAL \gen_adders:63:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;
SIGNAL \gen_adders:46:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_adders:49:FA_inst|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \gen_adders:51:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_adders:54:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_adders:59:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_adders:59:FA_inst|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \gen_adders:59:FA_inst|ALT_INV_cout~1_combout\ : std_logic;
SIGNAL \gen_adders:61:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_adders:44:FA_inst|ALT_INV_cout~1_combout\ : std_logic;
SIGNAL \gen_adders:49:FA_inst|ALT_INV_cout~1_combout\ : std_logic;
SIGNAL \gen_adders:42:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_adders:59:FA_inst|ALT_INV_cout~2_combout\ : std_logic;
SIGNAL \gen_adders:56:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_adders:49:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_adders:39:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_adders:39:FA_inst|ALT_INV_cout~2_combout\ : std_logic;
SIGNAL \gen_adders:44:FA_inst|ALT_INV_cout~3_combout\ : std_logic;
SIGNAL \gen_adders:39:FA_inst|ALT_INV_cout~1_combout\ : std_logic;
SIGNAL \gen_adders:54:FA_inst|ALT_INV_cout~1_combout\ : std_logic;
SIGNAL \gen_adders:54:FA_inst|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \gen_adders:54:FA_inst|ALT_INV_cout~2_combout\ : std_logic;
SIGNAL \gen_adders:44:FA_inst|ALT_INV_cout~2_combout\ : std_logic;
SIGNAL \gen_adders:44:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_adders:41:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_adders:49:FA_inst|ALT_INV_cout~2_combout\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Cin~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[32]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[33]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[34]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[34]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[35]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[35]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[33]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[32]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[18]~input_o\ : std_logic;
SIGNAL \gen_adders:14:FA_inst|ALT_INV_cout~1_combout\ : std_logic;
SIGNAL \gen_adders:9:FA_inst|ALT_INV_cout~1_combout\ : std_logic;
SIGNAL \gen_adders:22:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_adders:19:FA_inst|ALT_INV_cout~1_combout\ : std_logic;
SIGNAL \gen_adders:1:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_adders:17:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_adders:4:FA_inst|ALT_INV_cout~1_combout\ : std_logic;
SIGNAL \gen_adders:14:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_adders:21:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_adders:7:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_adders:3:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_adders:6:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_adders:9:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_adders:11:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_adders:12:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_adders:14:FA_inst|ALT_INV_cout~3_combout\ : std_logic;
SIGNAL \gen_adders:4:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_adders:14:FA_inst|ALT_INV_cout~2_combout\ : std_logic;
SIGNAL \gen_adders:9:FA_inst|ALT_INV_cout~3_combout\ : std_logic;
SIGNAL \gen_adders:16:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_adders:19:FA_inst|ALT_INV_cout~2_combout\ : std_logic;
SIGNAL \gen_adders:9:FA_inst|ALT_INV_cout~2_combout\ : std_logic;
SIGNAL \gen_adders:4:FA_inst|ALT_INV_cout~2_combout\ : std_logic;
SIGNAL \gen_adders:19:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_adders:19:FA_inst|ALT_INV_cout~3_combout\ : std_logic;
SIGNAL \gen_adders:34:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_adders:34:FA_inst|ALT_INV_cout~2_combout\ : std_logic;
SIGNAL \gen_adders:34:FA_inst|ALT_INV_cout~3_combout\ : std_logic;
SIGNAL \gen_adders:24:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_adders:27:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_adders:31:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_adders:24:FA_inst|ALT_INV_cout~1_combout\ : std_logic;
SIGNAL \gen_adders:29:FA_inst|ALT_INV_cout~1_combout\ : std_logic;
SIGNAL \gen_adders:29:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_adders:34:FA_inst|ALT_INV_cout~1_combout\ : std_logic;
SIGNAL \gen_adders:36:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_adders:26:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_adders:37:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \gen_adders:24:FA_inst|ALT_INV_cout~2_combout\ : std_logic;
SIGNAL \gen_adders:24:FA_inst|ALT_INV_cout~3_combout\ : std_logic;
SIGNAL \gen_adders:29:FA_inst|ALT_INV_cout~2_combout\ : std_logic;
SIGNAL \gen_adders:32:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \ALT_INV_B[53]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[56]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[57]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[59]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[47]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[59]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[61]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[62]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[46]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[45]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[47]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[48]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[37]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[38]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[39]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[40]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[46]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[48]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[49]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[56]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[57]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[58]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[60]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[42]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[37]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[38]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[42]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[51]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[61]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[62]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[41]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[63]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[36]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[39]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[51]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[52]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[49]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[60]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[40]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[55]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[45]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[54]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[36]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[54]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[55]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[43]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[52]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[44]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[63]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[58]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[41]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[43]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[50]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[44]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[50]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[53]~input_o\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_Cin <= Cin;
Sum <= ww_Sum;
Cout <= ww_Cout;
Ovfl <= ww_Ovfl;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\gen_adders:46:FA_inst|ALT_INV_cout~0_combout\ <= NOT \gen_adders:46:FA_inst|cout~0_combout\;
\gen_adders:49:FA_inst|ALT_INV_sum~0_combout\ <= NOT \gen_adders:49:FA_inst|sum~0_combout\;
\gen_adders:51:FA_inst|ALT_INV_cout~0_combout\ <= NOT \gen_adders:51:FA_inst|cout~0_combout\;
\gen_adders:54:FA_inst|ALT_INV_cout~0_combout\ <= NOT \gen_adders:54:FA_inst|cout~0_combout\;
\gen_adders:59:FA_inst|ALT_INV_cout~0_combout\ <= NOT \gen_adders:59:FA_inst|cout~0_combout\;
\gen_adders:59:FA_inst|ALT_INV_sum~0_combout\ <= NOT \gen_adders:59:FA_inst|sum~0_combout\;
\gen_adders:59:FA_inst|ALT_INV_cout~1_combout\ <= NOT \gen_adders:59:FA_inst|cout~1_combout\;
\gen_adders:61:FA_inst|ALT_INV_cout~0_combout\ <= NOT \gen_adders:61:FA_inst|cout~0_combout\;
\gen_adders:44:FA_inst|ALT_INV_cout~1_combout\ <= NOT \gen_adders:44:FA_inst|cout~1_combout\;
\gen_adders:49:FA_inst|ALT_INV_cout~1_combout\ <= NOT \gen_adders:49:FA_inst|cout~1_combout\;
\gen_adders:42:FA_inst|ALT_INV_cout~0_combout\ <= NOT \gen_adders:42:FA_inst|cout~0_combout\;
\gen_adders:59:FA_inst|ALT_INV_cout~2_combout\ <= NOT \gen_adders:59:FA_inst|cout~2_combout\;
\gen_adders:56:FA_inst|ALT_INV_cout~0_combout\ <= NOT \gen_adders:56:FA_inst|cout~0_combout\;
\gen_adders:49:FA_inst|ALT_INV_cout~0_combout\ <= NOT \gen_adders:49:FA_inst|cout~0_combout\;
\gen_adders:39:FA_inst|ALT_INV_cout~0_combout\ <= NOT \gen_adders:39:FA_inst|cout~0_combout\;
\gen_adders:39:FA_inst|ALT_INV_cout~2_combout\ <= NOT \gen_adders:39:FA_inst|cout~2_combout\;
\gen_adders:44:FA_inst|ALT_INV_cout~3_combout\ <= NOT \gen_adders:44:FA_inst|cout~3_combout\;
\gen_adders:39:FA_inst|ALT_INV_cout~1_combout\ <= NOT \gen_adders:39:FA_inst|cout~1_combout\;
\gen_adders:54:FA_inst|ALT_INV_cout~1_combout\ <= NOT \gen_adders:54:FA_inst|cout~1_combout\;
\gen_adders:54:FA_inst|ALT_INV_sum~0_combout\ <= NOT \gen_adders:54:FA_inst|sum~0_combout\;
\gen_adders:54:FA_inst|ALT_INV_cout~2_combout\ <= NOT \gen_adders:54:FA_inst|cout~2_combout\;
\gen_adders:44:FA_inst|ALT_INV_cout~2_combout\ <= NOT \gen_adders:44:FA_inst|cout~2_combout\;
\gen_adders:44:FA_inst|ALT_INV_cout~0_combout\ <= NOT \gen_adders:44:FA_inst|cout~0_combout\;
\gen_adders:41:FA_inst|ALT_INV_cout~0_combout\ <= NOT \gen_adders:41:FA_inst|cout~0_combout\;
\gen_adders:49:FA_inst|ALT_INV_cout~2_combout\ <= NOT \gen_adders:49:FA_inst|cout~2_combout\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_Cin~input_o\ <= NOT \Cin~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_A[22]~input_o\ <= NOT \A[22]~input_o\;
\ALT_INV_A[17]~input_o\ <= NOT \A[17]~input_o\;
\ALT_INV_B[25]~input_o\ <= NOT \B[25]~input_o\;
\ALT_INV_A[26]~input_o\ <= NOT \A[26]~input_o\;
\ALT_INV_B[27]~input_o\ <= NOT \B[27]~input_o\;
\ALT_INV_B[29]~input_o\ <= NOT \B[29]~input_o\;
\ALT_INV_B[28]~input_o\ <= NOT \B[28]~input_o\;
\ALT_INV_A[8]~input_o\ <= NOT \A[8]~input_o\;
\ALT_INV_A[30]~input_o\ <= NOT \A[30]~input_o\;
\ALT_INV_B[30]~input_o\ <= NOT \B[30]~input_o\;
\ALT_INV_A[31]~input_o\ <= NOT \A[31]~input_o\;
\ALT_INV_B[32]~input_o\ <= NOT \B[32]~input_o\;
\ALT_INV_B[10]~input_o\ <= NOT \B[10]~input_o\;
\ALT_INV_A[33]~input_o\ <= NOT \A[33]~input_o\;
\ALT_INV_A[14]~input_o\ <= NOT \A[14]~input_o\;
\ALT_INV_B[14]~input_o\ <= NOT \B[14]~input_o\;
\ALT_INV_A[10]~input_o\ <= NOT \A[10]~input_o\;
\ALT_INV_B[17]~input_o\ <= NOT \B[17]~input_o\;
\ALT_INV_B[21]~input_o\ <= NOT \B[21]~input_o\;
\ALT_INV_A[34]~input_o\ <= NOT \A[34]~input_o\;
\ALT_INV_B[34]~input_o\ <= NOT \B[34]~input_o\;
\ALT_INV_A[35]~input_o\ <= NOT \A[35]~input_o\;
\ALT_INV_B[35]~input_o\ <= NOT \B[35]~input_o\;
\ALT_INV_A[16]~input_o\ <= NOT \A[16]~input_o\;
\ALT_INV_A[11]~input_o\ <= NOT \A[11]~input_o\;
\ALT_INV_B[15]~input_o\ <= NOT \B[15]~input_o\;
\ALT_INV_B[23]~input_o\ <= NOT \B[23]~input_o\;
\ALT_INV_B[31]~input_o\ <= NOT \B[31]~input_o\;
\ALT_INV_B[33]~input_o\ <= NOT \B[33]~input_o\;
\ALT_INV_A[29]~input_o\ <= NOT \A[29]~input_o\;
\ALT_INV_B[11]~input_o\ <= NOT \B[11]~input_o\;
\ALT_INV_B[18]~input_o\ <= NOT \B[18]~input_o\;
\ALT_INV_B[16]~input_o\ <= NOT \B[16]~input_o\;
\ALT_INV_B[20]~input_o\ <= NOT \B[20]~input_o\;
\ALT_INV_A[9]~input_o\ <= NOT \A[9]~input_o\;
\ALT_INV_B[22]~input_o\ <= NOT \B[22]~input_o\;
\ALT_INV_A[24]~input_o\ <= NOT \A[24]~input_o\;
\ALT_INV_B[19]~input_o\ <= NOT \B[19]~input_o\;
\ALT_INV_A[28]~input_o\ <= NOT \A[28]~input_o\;
\ALT_INV_A[32]~input_o\ <= NOT \A[32]~input_o\;
\ALT_INV_A[12]~input_o\ <= NOT \A[12]~input_o\;
\ALT_INV_A[13]~input_o\ <= NOT \A[13]~input_o\;
\ALT_INV_A[6]~input_o\ <= NOT \A[6]~input_o\;
\ALT_INV_A[7]~input_o\ <= NOT \A[7]~input_o\;
\ALT_INV_B[9]~input_o\ <= NOT \B[9]~input_o\;
\ALT_INV_B[6]~input_o\ <= NOT \B[6]~input_o\;
\ALT_INV_A[25]~input_o\ <= NOT \A[25]~input_o\;
\ALT_INV_B[26]~input_o\ <= NOT \B[26]~input_o\;
\ALT_INV_A[15]~input_o\ <= NOT \A[15]~input_o\;
\ALT_INV_A[19]~input_o\ <= NOT \A[19]~input_o\;
\ALT_INV_B[13]~input_o\ <= NOT \B[13]~input_o\;
\ALT_INV_A[27]~input_o\ <= NOT \A[27]~input_o\;
\ALT_INV_B[12]~input_o\ <= NOT \B[12]~input_o\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_A[5]~input_o\ <= NOT \A[5]~input_o\;
\ALT_INV_B[7]~input_o\ <= NOT \B[7]~input_o\;
\ALT_INV_A[20]~input_o\ <= NOT \A[20]~input_o\;
\ALT_INV_B[24]~input_o\ <= NOT \B[24]~input_o\;
\ALT_INV_A[23]~input_o\ <= NOT \A[23]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_B[8]~input_o\ <= NOT \B[8]~input_o\;
\ALT_INV_A[21]~input_o\ <= NOT \A[21]~input_o\;
\ALT_INV_B[5]~input_o\ <= NOT \B[5]~input_o\;
\ALT_INV_A[18]~input_o\ <= NOT \A[18]~input_o\;
\gen_adders:14:FA_inst|ALT_INV_cout~1_combout\ <= NOT \gen_adders:14:FA_inst|cout~1_combout\;
\gen_adders:9:FA_inst|ALT_INV_cout~1_combout\ <= NOT \gen_adders:9:FA_inst|cout~1_combout\;
\gen_adders:22:FA_inst|ALT_INV_cout~0_combout\ <= NOT \gen_adders:22:FA_inst|cout~0_combout\;
\gen_adders:19:FA_inst|ALT_INV_cout~1_combout\ <= NOT \gen_adders:19:FA_inst|cout~1_combout\;
\gen_adders:1:FA_inst|ALT_INV_cout~0_combout\ <= NOT \gen_adders:1:FA_inst|cout~0_combout\;
\gen_adders:17:FA_inst|ALT_INV_cout~0_combout\ <= NOT \gen_adders:17:FA_inst|cout~0_combout\;
\gen_adders:4:FA_inst|ALT_INV_cout~1_combout\ <= NOT \gen_adders:4:FA_inst|cout~1_combout\;
\gen_adders:14:FA_inst|ALT_INV_cout~0_combout\ <= NOT \gen_adders:14:FA_inst|cout~0_combout\;
\gen_adders:21:FA_inst|ALT_INV_cout~0_combout\ <= NOT \gen_adders:21:FA_inst|cout~0_combout\;
\gen_adders:7:FA_inst|ALT_INV_cout~0_combout\ <= NOT \gen_adders:7:FA_inst|cout~0_combout\;
\gen_adders:3:FA_inst|ALT_INV_cout~0_combout\ <= NOT \gen_adders:3:FA_inst|cout~0_combout\;
\gen_adders:6:FA_inst|ALT_INV_cout~0_combout\ <= NOT \gen_adders:6:FA_inst|cout~0_combout\;
\gen_adders:9:FA_inst|ALT_INV_cout~0_combout\ <= NOT \gen_adders:9:FA_inst|cout~0_combout\;
\gen_adders:11:FA_inst|ALT_INV_cout~0_combout\ <= NOT \gen_adders:11:FA_inst|cout~0_combout\;
\gen_adders:12:FA_inst|ALT_INV_cout~0_combout\ <= NOT \gen_adders:12:FA_inst|cout~0_combout\;
\gen_adders:14:FA_inst|ALT_INV_cout~3_combout\ <= NOT \gen_adders:14:FA_inst|cout~3_combout\;
\gen_adders:4:FA_inst|ALT_INV_cout~0_combout\ <= NOT \gen_adders:4:FA_inst|cout~0_combout\;
\gen_adders:14:FA_inst|ALT_INV_cout~2_combout\ <= NOT \gen_adders:14:FA_inst|cout~2_combout\;
\gen_adders:9:FA_inst|ALT_INV_cout~3_combout\ <= NOT \gen_adders:9:FA_inst|cout~3_combout\;
\gen_adders:16:FA_inst|ALT_INV_cout~0_combout\ <= NOT \gen_adders:16:FA_inst|cout~0_combout\;
\gen_adders:19:FA_inst|ALT_INV_cout~2_combout\ <= NOT \gen_adders:19:FA_inst|cout~2_combout\;
\gen_adders:9:FA_inst|ALT_INV_cout~2_combout\ <= NOT \gen_adders:9:FA_inst|cout~2_combout\;
\gen_adders:4:FA_inst|ALT_INV_cout~2_combout\ <= NOT \gen_adders:4:FA_inst|cout~2_combout\;
\gen_adders:19:FA_inst|ALT_INV_cout~0_combout\ <= NOT \gen_adders:19:FA_inst|cout~0_combout\;
\gen_adders:19:FA_inst|ALT_INV_cout~3_combout\ <= NOT \gen_adders:19:FA_inst|cout~3_combout\;
\gen_adders:34:FA_inst|ALT_INV_cout~0_combout\ <= NOT \gen_adders:34:FA_inst|cout~0_combout\;
\gen_adders:34:FA_inst|ALT_INV_cout~2_combout\ <= NOT \gen_adders:34:FA_inst|cout~2_combout\;
\gen_adders:34:FA_inst|ALT_INV_cout~3_combout\ <= NOT \gen_adders:34:FA_inst|cout~3_combout\;
\gen_adders:24:FA_inst|ALT_INV_cout~0_combout\ <= NOT \gen_adders:24:FA_inst|cout~0_combout\;
\gen_adders:27:FA_inst|ALT_INV_cout~0_combout\ <= NOT \gen_adders:27:FA_inst|cout~0_combout\;
\gen_adders:31:FA_inst|ALT_INV_cout~0_combout\ <= NOT \gen_adders:31:FA_inst|cout~0_combout\;
\gen_adders:24:FA_inst|ALT_INV_cout~1_combout\ <= NOT \gen_adders:24:FA_inst|cout~1_combout\;
\gen_adders:29:FA_inst|ALT_INV_cout~1_combout\ <= NOT \gen_adders:29:FA_inst|cout~1_combout\;
\gen_adders:29:FA_inst|ALT_INV_cout~0_combout\ <= NOT \gen_adders:29:FA_inst|cout~0_combout\;
\gen_adders:34:FA_inst|ALT_INV_cout~1_combout\ <= NOT \gen_adders:34:FA_inst|cout~1_combout\;
\gen_adders:36:FA_inst|ALT_INV_cout~0_combout\ <= NOT \gen_adders:36:FA_inst|cout~0_combout\;
\gen_adders:26:FA_inst|ALT_INV_cout~0_combout\ <= NOT \gen_adders:26:FA_inst|cout~0_combout\;
\gen_adders:37:FA_inst|ALT_INV_cout~0_combout\ <= NOT \gen_adders:37:FA_inst|cout~0_combout\;
\gen_adders:24:FA_inst|ALT_INV_cout~2_combout\ <= NOT \gen_adders:24:FA_inst|cout~2_combout\;
\gen_adders:24:FA_inst|ALT_INV_cout~3_combout\ <= NOT \gen_adders:24:FA_inst|cout~3_combout\;
\gen_adders:29:FA_inst|ALT_INV_cout~2_combout\ <= NOT \gen_adders:29:FA_inst|cout~2_combout\;
\gen_adders:32:FA_inst|ALT_INV_cout~0_combout\ <= NOT \gen_adders:32:FA_inst|cout~0_combout\;
\ALT_INV_B[53]~input_o\ <= NOT \B[53]~input_o\;
\ALT_INV_B[56]~input_o\ <= NOT \B[56]~input_o\;
\ALT_INV_A[57]~input_o\ <= NOT \A[57]~input_o\;
\ALT_INV_A[59]~input_o\ <= NOT \A[59]~input_o\;
\ALT_INV_A[47]~input_o\ <= NOT \A[47]~input_o\;
\ALT_INV_B[59]~input_o\ <= NOT \B[59]~input_o\;
\ALT_INV_A[61]~input_o\ <= NOT \A[61]~input_o\;
\ALT_INV_A[62]~input_o\ <= NOT \A[62]~input_o\;
\ALT_INV_B[46]~input_o\ <= NOT \B[46]~input_o\;
\ALT_INV_B[45]~input_o\ <= NOT \B[45]~input_o\;
\ALT_INV_B[47]~input_o\ <= NOT \B[47]~input_o\;
\ALT_INV_B[48]~input_o\ <= NOT \B[48]~input_o\;
\ALT_INV_A[37]~input_o\ <= NOT \A[37]~input_o\;
\ALT_INV_B[38]~input_o\ <= NOT \B[38]~input_o\;
\ALT_INV_A[39]~input_o\ <= NOT \A[39]~input_o\;
\ALT_INV_A[40]~input_o\ <= NOT \A[40]~input_o\;
\ALT_INV_A[46]~input_o\ <= NOT \A[46]~input_o\;
\ALT_INV_A[48]~input_o\ <= NOT \A[48]~input_o\;
\ALT_INV_B[49]~input_o\ <= NOT \B[49]~input_o\;
\ALT_INV_A[56]~input_o\ <= NOT \A[56]~input_o\;
\ALT_INV_B[57]~input_o\ <= NOT \B[57]~input_o\;
\ALT_INV_A[58]~input_o\ <= NOT \A[58]~input_o\;
\ALT_INV_B[60]~input_o\ <= NOT \B[60]~input_o\;
\ALT_INV_B[42]~input_o\ <= NOT \B[42]~input_o\;
\ALT_INV_B[37]~input_o\ <= NOT \B[37]~input_o\;
\ALT_INV_A[38]~input_o\ <= NOT \A[38]~input_o\;
\ALT_INV_A[42]~input_o\ <= NOT \A[42]~input_o\;
\ALT_INV_B[51]~input_o\ <= NOT \B[51]~input_o\;
\ALT_INV_B[61]~input_o\ <= NOT \B[61]~input_o\;
\ALT_INV_B[62]~input_o\ <= NOT \B[62]~input_o\;
\ALT_INV_A[41]~input_o\ <= NOT \A[41]~input_o\;
\ALT_INV_A[63]~input_o\ <= NOT \A[63]~input_o\;
\ALT_INV_B[36]~input_o\ <= NOT \B[36]~input_o\;
\ALT_INV_B[39]~input_o\ <= NOT \B[39]~input_o\;
\ALT_INV_A[51]~input_o\ <= NOT \A[51]~input_o\;
\ALT_INV_A[52]~input_o\ <= NOT \A[52]~input_o\;
\ALT_INV_A[49]~input_o\ <= NOT \A[49]~input_o\;
\ALT_INV_A[60]~input_o\ <= NOT \A[60]~input_o\;
\ALT_INV_B[40]~input_o\ <= NOT \B[40]~input_o\;
\ALT_INV_B[55]~input_o\ <= NOT \B[55]~input_o\;
\ALT_INV_A[45]~input_o\ <= NOT \A[45]~input_o\;
\ALT_INV_A[54]~input_o\ <= NOT \A[54]~input_o\;
\ALT_INV_A[36]~input_o\ <= NOT \A[36]~input_o\;
\ALT_INV_B[54]~input_o\ <= NOT \B[54]~input_o\;
\ALT_INV_A[55]~input_o\ <= NOT \A[55]~input_o\;
\ALT_INV_B[43]~input_o\ <= NOT \B[43]~input_o\;
\ALT_INV_B[52]~input_o\ <= NOT \B[52]~input_o\;
\ALT_INV_A[44]~input_o\ <= NOT \A[44]~input_o\;
\ALT_INV_B[63]~input_o\ <= NOT \B[63]~input_o\;
\ALT_INV_B[58]~input_o\ <= NOT \B[58]~input_o\;
\ALT_INV_B[41]~input_o\ <= NOT \B[41]~input_o\;
\ALT_INV_A[43]~input_o\ <= NOT \A[43]~input_o\;
\ALT_INV_A[50]~input_o\ <= NOT \A[50]~input_o\;
\ALT_INV_B[44]~input_o\ <= NOT \B[44]~input_o\;
\ALT_INV_B[50]~input_o\ <= NOT \B[50]~input_o\;
\ALT_INV_A[53]~input_o\ <= NOT \A[53]~input_o\;

-- Location: IOOBUF_X29_Y0_N98
\Sum[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:0:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[0]~output_o\);

-- Location: IOOBUF_X37_Y0_N2
\Sum[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:1:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[1]~output_o\);

-- Location: IOOBUF_X29_Y0_N36
\Sum[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:2:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[2]~output_o\);

-- Location: IOOBUF_X30_Y0_N67
\Sum[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:3:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[3]~output_o\);

-- Location: IOOBUF_X32_Y0_N36
\Sum[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:4:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[4]~output_o\);

-- Location: IOOBUF_X37_Y0_N36
\Sum[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:5:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[5]~output_o\);

-- Location: IOOBUF_X35_Y0_N2
\Sum[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:6:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[6]~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\Sum[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:7:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[7]~output_o\);

-- Location: IOOBUF_X39_Y0_N36
\Sum[8]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:8:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[8]~output_o\);

-- Location: IOOBUF_X43_Y0_N36
\Sum[9]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:9:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[9]~output_o\);

-- Location: IOOBUF_X41_Y0_N67
\Sum[10]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:10:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[10]~output_o\);

-- Location: IOOBUF_X41_Y0_N33
\Sum[11]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:11:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[11]~output_o\);

-- Location: IOOBUF_X39_Y0_N98
\Sum[12]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:12:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[12]~output_o\);

-- Location: IOOBUF_X50_Y0_N98
\Sum[13]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:13:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[13]~output_o\);

-- Location: IOOBUF_X43_Y0_N2
\Sum[14]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:14:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[14]~output_o\);

-- Location: IOOBUF_X47_Y0_N36
\Sum[15]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:15:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[15]~output_o\);

-- Location: IOOBUF_X48_Y0_N67
\Sum[16]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:16:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[16]~output_o\);

-- Location: IOOBUF_X19_Y0_N2
\Sum[17]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:17:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[17]~output_o\);

-- Location: IOOBUF_X24_Y0_N98
\Sum[18]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:18:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[18]~output_o\);

-- Location: IOOBUF_X19_Y0_N36
\Sum[19]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:19:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[19]~output_o\);

-- Location: IOOBUF_X22_Y0_N98
\Sum[20]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:20:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[20]~output_o\);

-- Location: IOOBUF_X22_Y0_N36
\Sum[21]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:21:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[21]~output_o\);

-- Location: IOOBUF_X24_Y0_N67
\Sum[22]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:22:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[22]~output_o\);

-- Location: IOOBUF_X53_Y56_N67
\Sum[23]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:23:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[23]~output_o\);

-- Location: IOOBUF_X55_Y56_N33
\Sum[24]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:24:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[24]~output_o\);

-- Location: IOOBUF_X53_Y56_N98
\Sum[25]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:25:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[25]~output_o\);

-- Location: IOOBUF_X49_Y56_N36
\Sum[26]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:26:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[26]~output_o\);

-- Location: IOOBUF_X48_Y56_N98
\Sum[27]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:27:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[27]~output_o\);

-- Location: IOOBUF_X55_Y56_N67
\Sum[28]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:28:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[28]~output_o\);

-- Location: IOOBUF_X56_Y56_N64
\Sum[29]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:29:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[29]~output_o\);

-- Location: IOOBUF_X59_Y9_N5
\Sum[30]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:30:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[30]~output_o\);

-- Location: IOOBUF_X59_Y10_N98
\Sum[31]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:31:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[31]~output_o\);

-- Location: IOOBUF_X59_Y9_N33
\Sum[32]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:32:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[32]~output_o\);

-- Location: IOOBUF_X59_Y10_N67
\Sum[33]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:33:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[33]~output_o\);

-- Location: IOOBUF_X59_Y16_N98
\Sum[34]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:34:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[34]~output_o\);

-- Location: IOOBUF_X59_Y16_N36
\Sum[35]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:35:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[35]~output_o\);

-- Location: IOOBUF_X59_Y13_N67
\Sum[36]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:36:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[36]~output_o\);

-- Location: IOOBUF_X59_Y12_N2
\Sum[37]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:37:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[37]~output_o\);

-- Location: IOOBUF_X59_Y26_N67
\Sum[38]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:38:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[38]~output_o\);

-- Location: IOOBUF_X59_Y30_N2
\Sum[39]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:39:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[39]~output_o\);

-- Location: IOOBUF_X59_Y34_N2
\Sum[40]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:40:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[40]~output_o\);

-- Location: IOOBUF_X59_Y26_N33
\Sum[41]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:41:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[41]~output_o\);

-- Location: IOOBUF_X59_Y33_N5
\Sum[42]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:42:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[42]~output_o\);

-- Location: IOOBUF_X59_Y33_N33
\Sum[43]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:43:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[43]~output_o\);

-- Location: IOOBUF_X59_Y31_N36
\Sum[44]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:44:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[44]~output_o\);

-- Location: IOOBUF_X59_Y46_N67
\Sum[45]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:45:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[45]~output_o\);

-- Location: IOOBUF_X59_Y39_N33
\Sum[46]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:46:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[46]~output_o\);

-- Location: IOOBUF_X59_Y36_N36
\Sum[47]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:47:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[47]~output_o\);

-- Location: IOOBUF_X59_Y36_N67
\Sum[48]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:48:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[48]~output_o\);

-- Location: IOOBUF_X59_Y33_N67
\Sum[49]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:49:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[49]~output_o\);

-- Location: IOOBUF_X59_Y46_N36
\Sum[50]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:50:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[50]~output_o\);

-- Location: IOOBUF_X59_Y48_N98
\Sum[51]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:51:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[51]~output_o\);

-- Location: IOOBUF_X35_Y56_N36
\Sum[52]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:52:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[52]~output_o\);

-- Location: IOOBUF_X38_Y56_N36
\Sum[53]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:53:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[53]~output_o\);

-- Location: IOOBUF_X38_Y56_N98
\Sum[54]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:54:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[54]~output_o\);

-- Location: IOOBUF_X42_Y56_N98
\Sum[55]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:55:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[55]~output_o\);

-- Location: IOOBUF_X46_Y56_N36
\Sum[56]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:56:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[56]~output_o\);

-- Location: IOOBUF_X33_Y56_N33
\Sum[57]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:57:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[57]~output_o\);

-- Location: IOOBUF_X44_Y56_N98
\Sum[58]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:58:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[58]~output_o\);

-- Location: IOOBUF_X35_Y56_N2
\Sum[59]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:59:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[59]~output_o\);

-- Location: IOOBUF_X36_Y56_N98
\Sum[60]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:60:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[60]~output_o\);

-- Location: IOOBUF_X42_Y56_N2
\Sum[61]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:61:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[61]~output_o\);

-- Location: IOOBUF_X59_Y22_N2
\Sum[62]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:62:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[62]~output_o\);

-- Location: IOOBUF_X59_Y23_N36
\Sum[63]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:63:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \Sum[63]~output_o\);

-- Location: IOOBUF_X59_Y23_N2
\Cout~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:63:FA_inst|cout~0_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X59_Y23_N98
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

-- Location: IOIBUF_X29_Y0_N63
\B[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X32_Y0_N94
\Cin~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X37_Y0_N94
\A[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: MLABCELL_X34_Y1_N2
\gen_adders:0:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:0:FA_inst|sum~combout\ = ( \A[0]~input_o\ & ( !\B[0]~input_o\ $ (\Cin~input_o\) ) ) # ( !\A[0]~input_o\ & ( !\B[0]~input_o\ $ (!\Cin~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_Cin~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \gen_adders:0:FA_inst|sum~combout\);

-- Location: IOIBUF_X25_Y0_N1
\B[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X32_Y0_N63
\A[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: MLABCELL_X34_Y1_N0
\gen_adders:1:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:1:FA_inst|sum~combout\ = ( \A[0]~input_o\ & ( !\B[1]~input_o\ $ (!\A[1]~input_o\ $ (((\Cin~input_o\) # (\B[0]~input_o\)))) ) ) # ( !\A[0]~input_o\ & ( !\B[1]~input_o\ $ (!\A[1]~input_o\ $ (((\B[0]~input_o\ & \Cin~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111011100001000111101110000101111000100001110111100010000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_Cin~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \gen_adders:1:FA_inst|sum~combout\);

-- Location: IOIBUF_X33_Y0_N94
\B[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X37_Y0_N63
\A[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: MLABCELL_X34_Y1_N6
\gen_adders:1:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:1:FA_inst|cout~0_combout\ = ( \B[0]~input_o\ & ( (!\A[1]~input_o\ & (\B[1]~input_o\ & ((\A[0]~input_o\) # (\Cin~input_o\)))) # (\A[1]~input_o\ & (((\B[1]~input_o\) # (\A[0]~input_o\)) # (\Cin~input_o\))) ) ) # ( !\B[0]~input_o\ & ( 
-- (!\A[1]~input_o\ & (\Cin~input_o\ & (\A[0]~input_o\ & \B[1]~input_o\))) # (\A[1]~input_o\ & (((\Cin~input_o\ & \A[0]~input_o\)) # (\B[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010111000000010101011100010101011111110001010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \ALT_INV_Cin~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \gen_adders:1:FA_inst|cout~0_combout\);

-- Location: MLABCELL_X34_Y1_N4
\gen_adders:2:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:2:FA_inst|sum~combout\ = ( \gen_adders:1:FA_inst|cout~0_combout\ & ( !\B[2]~input_o\ $ (\A[2]~input_o\) ) ) # ( !\gen_adders:1:FA_inst|cout~0_combout\ & ( !\B[2]~input_o\ $ (!\A[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	dataf => \gen_adders:1:FA_inst|ALT_INV_cout~0_combout\,
	combout => \gen_adders:2:FA_inst|sum~combout\);

-- Location: IOIBUF_X33_Y0_N63
\B[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X30_Y0_N32
\A[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: MLABCELL_X34_Y1_N30
\gen_adders:3:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:3:FA_inst|sum~combout\ = ( \B[2]~input_o\ & ( !\B[3]~input_o\ $ (!\A[3]~input_o\ $ (((\A[2]~input_o\) # (\gen_adders:1:FA_inst|cout~0_combout\)))) ) ) # ( !\B[2]~input_o\ & ( !\B[3]~input_o\ $ (!\A[3]~input_o\ $ 
-- (((\gen_adders:1:FA_inst|cout~0_combout\ & \A[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011010101001010101101010100101101010100101010110101010010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \gen_adders:1:FA_inst|ALT_INV_cout~0_combout\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \gen_adders:3:FA_inst|sum~combout\);

-- Location: IOIBUF_X29_Y0_N1
\B[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X33_Y0_N32
\A[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: MLABCELL_X34_Y1_N28
\gen_adders:3:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:3:FA_inst|cout~0_combout\ = ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & (\A[3]~input_o\ & ((\A[2]~input_o\) # (\gen_adders:1:FA_inst|cout~0_combout\)))) # (\B[3]~input_o\ & (((\A[2]~input_o\) # (\A[3]~input_o\)) # 
-- (\gen_adders:1:FA_inst|cout~0_combout\))) ) ) # ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & (\gen_adders:1:FA_inst|cout~0_combout\ & (\A[3]~input_o\ & \A[2]~input_o\))) # (\B[3]~input_o\ & (((\gen_adders:1:FA_inst|cout~0_combout\ & \A[2]~input_o\)) # 
-- (\A[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010111000001010001011100010111010111110001011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \gen_adders:1:FA_inst|ALT_INV_cout~0_combout\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \gen_adders:3:FA_inst|cout~0_combout\);

-- Location: MLABCELL_X34_Y1_N12
\gen_adders:4:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:4:FA_inst|sum~combout\ = ( \gen_adders:3:FA_inst|cout~0_combout\ & ( !\B[4]~input_o\ $ (\A[4]~input_o\) ) ) # ( !\gen_adders:3:FA_inst|cout~0_combout\ & ( !\B[4]~input_o\ $ (!\A[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	dataf => \gen_adders:3:FA_inst|ALT_INV_cout~0_combout\,
	combout => \gen_adders:4:FA_inst|sum~combout\);

-- Location: IOIBUF_X30_Y0_N94
\A[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X35_Y0_N94
\B[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: MLABCELL_X34_Y1_N16
\gen_adders:4:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:4:FA_inst|cout~0_combout\ = ( \A[4]~input_o\ & ( \B[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \gen_adders:4:FA_inst|cout~0_combout\);

-- Location: MLABCELL_X34_Y1_N14
\gen_adders:4:FA_inst|cout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:4:FA_inst|cout~1_combout\ = ( !\A[4]~input_o\ & ( !\B[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \gen_adders:4:FA_inst|cout~1_combout\);

-- Location: MLABCELL_X34_Y1_N20
\gen_adders:4:FA_inst|cout~2\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:4:FA_inst|cout~2_combout\ = ( \A[2]~input_o\ & ( !\gen_adders:4:FA_inst|cout~1_combout\ & ( (!\B[3]~input_o\ & (\A[3]~input_o\ & ((\gen_adders:1:FA_inst|cout~0_combout\) # (\B[2]~input_o\)))) # (\B[3]~input_o\ & 
-- (((\gen_adders:1:FA_inst|cout~0_combout\) # (\A[3]~input_o\)) # (\B[2]~input_o\))) ) ) ) # ( !\A[2]~input_o\ & ( !\gen_adders:4:FA_inst|cout~1_combout\ & ( (!\B[3]~input_o\ & (\B[2]~input_o\ & (\A[3]~input_o\ & \gen_adders:1:FA_inst|cout~0_combout\))) # 
-- (\B[3]~input_o\ & (((\B[2]~input_o\ & \gen_adders:1:FA_inst|cout~0_combout\)) # (\A[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010111000101110101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \gen_adders:1:FA_inst|ALT_INV_cout~0_combout\,
	datae => \ALT_INV_A[2]~input_o\,
	dataf => \gen_adders:4:FA_inst|ALT_INV_cout~1_combout\,
	combout => \gen_adders:4:FA_inst|cout~2_combout\);

-- Location: MLABCELL_X34_Y1_N18
\gen_adders:5:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:5:FA_inst|sum~combout\ = ( \gen_adders:4:FA_inst|cout~2_combout\ & ( !\A[5]~input_o\ $ (\B[5]~input_o\) ) ) # ( !\gen_adders:4:FA_inst|cout~2_combout\ & ( !\A[5]~input_o\ $ (!\B[5]~input_o\ $ (\gen_adders:4:FA_inst|cout~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \gen_adders:4:FA_inst|ALT_INV_cout~0_combout\,
	dataf => \gen_adders:4:FA_inst|ALT_INV_cout~2_combout\,
	combout => \gen_adders:5:FA_inst|sum~combout\);

-- Location: IOIBUF_X30_Y0_N1
\A[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X35_Y0_N63
\B[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: MLABCELL_X34_Y1_N24
\gen_adders:6:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:6:FA_inst|sum~combout\ = ( \B[5]~input_o\ & ( \B[6]~input_o\ & ( !\A[6]~input_o\ $ ((((\gen_adders:4:FA_inst|cout~0_combout\) # (\A[5]~input_o\)) # (\gen_adders:4:FA_inst|cout~2_combout\))) ) ) ) # ( !\B[5]~input_o\ & ( \B[6]~input_o\ & ( 
-- !\A[6]~input_o\ $ (((\A[5]~input_o\ & ((\gen_adders:4:FA_inst|cout~0_combout\) # (\gen_adders:4:FA_inst|cout~2_combout\))))) ) ) ) # ( \B[5]~input_o\ & ( !\B[6]~input_o\ & ( !\A[6]~input_o\ $ (((!\gen_adders:4:FA_inst|cout~2_combout\ & (!\A[5]~input_o\ & 
-- !\gen_adders:4:FA_inst|cout~0_combout\)))) ) ) ) # ( !\B[5]~input_o\ & ( !\B[6]~input_o\ & ( !\A[6]~input_o\ $ (((!\A[5]~input_o\) # ((!\gen_adders:4:FA_inst|cout~2_combout\ & !\gen_adders:4:FA_inst|cout~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011000111100011011001100110011001001110000111001001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:4:FA_inst|ALT_INV_cout~2_combout\,
	datab => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \gen_adders:4:FA_inst|ALT_INV_cout~0_combout\,
	datae => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_B[6]~input_o\,
	combout => \gen_adders:6:FA_inst|sum~combout\);

-- Location: IOIBUF_X35_Y0_N32
\A[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: MLABCELL_X34_Y1_N10
\gen_adders:6:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:6:FA_inst|cout~0_combout\ = ( \B[5]~input_o\ & ( \B[6]~input_o\ & ( (!\gen_adders:4:FA_inst|cout~2_combout\ & (!\A[6]~input_o\ & (!\gen_adders:4:FA_inst|cout~0_combout\ & !\A[5]~input_o\))) ) ) ) # ( !\B[5]~input_o\ & ( \B[6]~input_o\ & ( 
-- (!\A[6]~input_o\ & ((!\A[5]~input_o\) # ((!\gen_adders:4:FA_inst|cout~2_combout\ & !\gen_adders:4:FA_inst|cout~0_combout\)))) ) ) ) # ( \B[5]~input_o\ & ( !\B[6]~input_o\ & ( (!\A[6]~input_o\) # ((!\gen_adders:4:FA_inst|cout~2_combout\ & 
-- (!\gen_adders:4:FA_inst|cout~0_combout\ & !\A[5]~input_o\))) ) ) ) # ( !\B[5]~input_o\ & ( !\B[6]~input_o\ & ( (!\A[6]~input_o\) # ((!\A[5]~input_o\) # ((!\gen_adders:4:FA_inst|cout~2_combout\ & !\gen_adders:4:FA_inst|cout~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101100111011001100110011001100100000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:4:FA_inst|ALT_INV_cout~2_combout\,
	datab => \ALT_INV_A[6]~input_o\,
	datac => \gen_adders:4:FA_inst|ALT_INV_cout~0_combout\,
	datad => \ALT_INV_A[5]~input_o\,
	datae => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_B[6]~input_o\,
	combout => \gen_adders:6:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X33_Y0_N1
\B[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: MLABCELL_X34_Y1_N32
\gen_adders:7:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:7:FA_inst|sum~combout\ = ( \B[7]~input_o\ & ( !\A[7]~input_o\ $ (!\gen_adders:6:FA_inst|cout~0_combout\) ) ) # ( !\B[7]~input_o\ & ( !\A[7]~input_o\ $ (\gen_adders:6:FA_inst|cout~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100101100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \gen_adders:6:FA_inst|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_B[7]~input_o\,
	combout => \gen_adders:7:FA_inst|sum~combout\);

-- Location: MLABCELL_X34_Y1_N34
\gen_adders:7:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:7:FA_inst|cout~0_combout\ = ( \B[7]~input_o\ & ( (!\gen_adders:6:FA_inst|cout~0_combout\) # (\A[7]~input_o\) ) ) # ( !\B[7]~input_o\ & ( (\A[7]~input_o\ & !\gen_adders:6:FA_inst|cout~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010011011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \gen_adders:6:FA_inst|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_B[7]~input_o\,
	combout => \gen_adders:7:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X39_Y0_N1
\B[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X39_Y0_N63
\A[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: MLABCELL_X42_Y1_N20
\gen_adders:8:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:8:FA_inst|sum~combout\ = ( \B[8]~input_o\ & ( \A[8]~input_o\ & ( \gen_adders:7:FA_inst|cout~0_combout\ ) ) ) # ( !\B[8]~input_o\ & ( \A[8]~input_o\ & ( !\gen_adders:7:FA_inst|cout~0_combout\ ) ) ) # ( \B[8]~input_o\ & ( !\A[8]~input_o\ & ( 
-- !\gen_adders:7:FA_inst|cout~0_combout\ ) ) ) # ( !\B[8]~input_o\ & ( !\A[8]~input_o\ & ( \gen_adders:7:FA_inst|cout~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011110011001100110011001100110011000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \gen_adders:7:FA_inst|ALT_INV_cout~0_combout\,
	datae => \ALT_INV_B[8]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \gen_adders:8:FA_inst|sum~combout\);

-- Location: IOIBUF_X41_Y0_N94
\A[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X50_Y0_N1
\B[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: MLABCELL_X42_Y1_N24
\gen_adders:9:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:9:FA_inst|sum~combout\ = ( \B[9]~input_o\ & ( !\A[9]~input_o\ $ (((!\A[8]~input_o\ & (\B[8]~input_o\ & \gen_adders:7:FA_inst|cout~0_combout\)) # (\A[8]~input_o\ & ((\gen_adders:7:FA_inst|cout~0_combout\) # (\B[8]~input_o\))))) ) ) # ( 
-- !\B[9]~input_o\ & ( !\A[9]~input_o\ $ (((!\A[8]~input_o\ & ((!\B[8]~input_o\) # (!\gen_adders:7:FA_inst|cout~0_combout\))) # (\A[8]~input_o\ & (!\B[8]~input_o\ & !\gen_adders:7:FA_inst|cout~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111001111000111000011000011100011110011110001110000110000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datab => \ALT_INV_B[8]~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	datad => \gen_adders:7:FA_inst|ALT_INV_cout~0_combout\,
	datae => \ALT_INV_B[9]~input_o\,
	combout => \gen_adders:9:FA_inst|sum~combout\);

-- Location: IOIBUF_X43_Y0_N94
\A[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: MLABCELL_X42_Y1_N8
\gen_adders:9:FA_inst|cout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:9:FA_inst|cout~1_combout\ = ( !\A[9]~input_o\ & ( !\B[9]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[9]~input_o\,
	dataf => \ALT_INV_A[9]~input_o\,
	combout => \gen_adders:9:FA_inst|cout~1_combout\);

-- Location: MLABCELL_X34_Y1_N36
\gen_adders:9:FA_inst|cout~2\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:9:FA_inst|cout~2_combout\ = ( \A[8]~input_o\ & ( !\gen_adders:9:FA_inst|cout~1_combout\ & ( ((!\B[7]~input_o\ & (\A[7]~input_o\ & !\gen_adders:6:FA_inst|cout~0_combout\)) # (\B[7]~input_o\ & ((!\gen_adders:6:FA_inst|cout~0_combout\) # 
-- (\A[7]~input_o\)))) # (\B[8]~input_o\) ) ) ) # ( !\A[8]~input_o\ & ( !\gen_adders:9:FA_inst|cout~1_combout\ & ( (\B[8]~input_o\ & ((!\B[7]~input_o\ & (\A[7]~input_o\ & !\gen_adders:6:FA_inst|cout~0_combout\)) # (\B[7]~input_o\ & 
-- ((!\gen_adders:6:FA_inst|cout~0_combout\) # (\A[7]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100000001011111110101011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[8]~input_o\,
	datab => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \gen_adders:6:FA_inst|ALT_INV_cout~0_combout\,
	datae => \ALT_INV_A[8]~input_o\,
	dataf => \gen_adders:9:FA_inst|ALT_INV_cout~1_combout\,
	combout => \gen_adders:9:FA_inst|cout~2_combout\);

-- Location: MLABCELL_X42_Y1_N10
\gen_adders:9:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:9:FA_inst|cout~0_combout\ = ( \A[9]~input_o\ & ( \B[9]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[9]~input_o\,
	dataf => \ALT_INV_A[9]~input_o\,
	combout => \gen_adders:9:FA_inst|cout~0_combout\);

-- Location: MLABCELL_X42_Y1_N12
\gen_adders:9:FA_inst|cout~3\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:9:FA_inst|cout~3_combout\ = ( !\gen_adders:9:FA_inst|cout~0_combout\ & ( !\gen_adders:9:FA_inst|cout~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \gen_adders:9:FA_inst|ALT_INV_cout~2_combout\,
	dataf => \gen_adders:9:FA_inst|ALT_INV_cout~0_combout\,
	combout => \gen_adders:9:FA_inst|cout~3_combout\);

-- Location: IOIBUF_X41_Y0_N1
\B[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: MLABCELL_X42_Y1_N18
\gen_adders:10:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:10:FA_inst|sum~combout\ = ( \B[10]~input_o\ & ( !\A[10]~input_o\ $ (!\gen_adders:9:FA_inst|cout~3_combout\) ) ) # ( !\B[10]~input_o\ & ( !\A[10]~input_o\ $ (\gen_adders:9:FA_inst|cout~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001010101101010100101010101010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[10]~input_o\,
	datad => \gen_adders:9:FA_inst|ALT_INV_cout~3_combout\,
	dataf => \ALT_INV_B[10]~input_o\,
	combout => \gen_adders:10:FA_inst|sum~combout\);

-- Location: IOIBUF_X45_Y0_N63
\A[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X43_Y0_N63
\B[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: MLABCELL_X42_Y1_N14
\gen_adders:11:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:11:FA_inst|sum~combout\ = ( \B[11]~input_o\ & ( !\A[11]~input_o\ $ (((!\A[10]~input_o\ & (\B[10]~input_o\ & !\gen_adders:9:FA_inst|cout~3_combout\)) # (\A[10]~input_o\ & ((!\gen_adders:9:FA_inst|cout~3_combout\) # (\B[10]~input_o\))))) ) ) # ( 
-- !\B[11]~input_o\ & ( !\A[11]~input_o\ $ (((!\A[10]~input_o\ & ((!\B[10]~input_o\) # (\gen_adders:9:FA_inst|cout~3_combout\))) # (\A[10]~input_o\ & (!\B[10]~input_o\ & \gen_adders:9:FA_inst|cout~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100000011110011110000001111010000111111000011000011111100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[10]~input_o\,
	datab => \ALT_INV_B[10]~input_o\,
	datac => \ALT_INV_A[11]~input_o\,
	datad => \gen_adders:9:FA_inst|ALT_INV_cout~3_combout\,
	dataf => \ALT_INV_B[11]~input_o\,
	combout => \gen_adders:11:FA_inst|sum~combout\);

-- Location: IOIBUF_X47_Y0_N94
\B[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: MLABCELL_X42_Y1_N0
\gen_adders:11:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:11:FA_inst|cout~0_combout\ = ( !\A[11]~input_o\ & ( \B[11]~input_o\ & ( (!\A[10]~input_o\ & ((!\B[10]~input_o\) # ((!\gen_adders:9:FA_inst|cout~2_combout\ & !\gen_adders:9:FA_inst|cout~0_combout\)))) # (\A[10]~input_o\ & 
-- (!\gen_adders:9:FA_inst|cout~2_combout\ & (!\B[10]~input_o\ & !\gen_adders:9:FA_inst|cout~0_combout\))) ) ) ) # ( \A[11]~input_o\ & ( !\B[11]~input_o\ & ( (!\A[10]~input_o\ & ((!\B[10]~input_o\) # ((!\gen_adders:9:FA_inst|cout~2_combout\ & 
-- !\gen_adders:9:FA_inst|cout~0_combout\)))) # (\A[10]~input_o\ & (!\gen_adders:9:FA_inst|cout~2_combout\ & (!\B[10]~input_o\ & !\gen_adders:9:FA_inst|cout~0_combout\))) ) ) ) # ( !\A[11]~input_o\ & ( !\B[11]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111010001010000011101000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[10]~input_o\,
	datab => \gen_adders:9:FA_inst|ALT_INV_cout~2_combout\,
	datac => \ALT_INV_B[10]~input_o\,
	datad => \gen_adders:9:FA_inst|ALT_INV_cout~0_combout\,
	datae => \ALT_INV_A[11]~input_o\,
	dataf => \ALT_INV_B[11]~input_o\,
	combout => \gen_adders:11:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X45_Y0_N1
\A[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: MLABCELL_X42_Y1_N16
\gen_adders:12:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:12:FA_inst|sum~combout\ = ( \A[12]~input_o\ & ( !\B[12]~input_o\ $ (!\gen_adders:11:FA_inst|cout~0_combout\) ) ) # ( !\A[12]~input_o\ & ( !\B[12]~input_o\ $ (\gen_adders:11:FA_inst|cout~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011110000111100001100111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[12]~input_o\,
	datac => \gen_adders:11:FA_inst|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_A[12]~input_o\,
	combout => \gen_adders:12:FA_inst|sum~combout\);

-- Location: IOIBUF_X50_Y0_N63
\B[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: MLABCELL_X42_Y1_N4
\gen_adders:12:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:12:FA_inst|cout~0_combout\ = (!\A[12]~input_o\ & (\B[12]~input_o\ & !\gen_adders:11:FA_inst|cout~0_combout\)) # (\A[12]~input_o\ & ((!\gen_adders:11:FA_inst|cout~0_combout\) # (\B[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000101110001011100010111000101110001011100010111000101110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[12]~input_o\,
	datab => \ALT_INV_B[12]~input_o\,
	datac => \gen_adders:11:FA_inst|ALT_INV_cout~0_combout\,
	combout => \gen_adders:12:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X45_Y0_N94
\A[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: MLABCELL_X42_Y1_N30
\gen_adders:13:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:13:FA_inst|sum~combout\ = ( \A[13]~input_o\ & ( !\B[13]~input_o\ $ (\gen_adders:12:FA_inst|cout~0_combout\) ) ) # ( !\A[13]~input_o\ & ( !\B[13]~input_o\ $ (!\gen_adders:12:FA_inst|cout~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110011001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[13]~input_o\,
	datad => \gen_adders:12:FA_inst|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_A[13]~input_o\,
	combout => \gen_adders:13:FA_inst|sum~combout\);

-- Location: IOIBUF_X47_Y0_N63
\B[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X45_Y0_N32
\A[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: MLABCELL_X42_Y1_N28
\gen_adders:14:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:14:FA_inst|sum~combout\ = ( \A[13]~input_o\ & ( !\B[14]~input_o\ $ (!\A[14]~input_o\ $ (((\B[13]~input_o\) # (\gen_adders:12:FA_inst|cout~0_combout\)))) ) ) # ( !\A[13]~input_o\ & ( !\B[14]~input_o\ $ (!\A[14]~input_o\ $ 
-- (((\gen_adders:12:FA_inst|cout~0_combout\ & \B[13]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111011100001000111101110000101111000100001110111100010000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:12:FA_inst|ALT_INV_cout~0_combout\,
	datab => \ALT_INV_B[13]~input_o\,
	datac => \ALT_INV_B[14]~input_o\,
	datad => \ALT_INV_A[14]~input_o\,
	dataf => \ALT_INV_A[13]~input_o\,
	combout => \gen_adders:14:FA_inst|sum~combout\);

-- Location: IOIBUF_X47_Y0_N1
\A[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: MLABCELL_X42_Y1_N6
\gen_adders:14:FA_inst|cout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:14:FA_inst|cout~1_combout\ = ( !\B[14]~input_o\ & ( !\A[14]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[14]~input_o\,
	dataf => \ALT_INV_B[14]~input_o\,
	combout => \gen_adders:14:FA_inst|cout~1_combout\);

-- Location: MLABCELL_X42_Y1_N36
\gen_adders:14:FA_inst|cout~2\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:14:FA_inst|cout~2_combout\ = ( \B[13]~input_o\ & ( \A[13]~input_o\ & ( !\gen_adders:14:FA_inst|cout~1_combout\ ) ) ) # ( !\B[13]~input_o\ & ( \A[13]~input_o\ & ( (!\gen_adders:14:FA_inst|cout~1_combout\ & ((!\A[12]~input_o\ & 
-- (!\gen_adders:11:FA_inst|cout~0_combout\ & \B[12]~input_o\)) # (\A[12]~input_o\ & ((!\gen_adders:11:FA_inst|cout~0_combout\) # (\B[12]~input_o\))))) ) ) ) # ( \B[13]~input_o\ & ( !\A[13]~input_o\ & ( (!\gen_adders:14:FA_inst|cout~1_combout\ & 
-- ((!\A[12]~input_o\ & (!\gen_adders:11:FA_inst|cout~0_combout\ & \B[12]~input_o\)) # (\A[12]~input_o\ & ((!\gen_adders:11:FA_inst|cout~0_combout\) # (\B[12]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000001100010001000000110001001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[12]~input_o\,
	datab => \gen_adders:14:FA_inst|ALT_INV_cout~1_combout\,
	datac => \gen_adders:11:FA_inst|ALT_INV_cout~0_combout\,
	datad => \ALT_INV_B[12]~input_o\,
	datae => \ALT_INV_B[13]~input_o\,
	dataf => \ALT_INV_A[13]~input_o\,
	combout => \gen_adders:14:FA_inst|cout~2_combout\);

-- Location: MLABCELL_X42_Y1_N32
\gen_adders:14:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:14:FA_inst|cout~0_combout\ = ( \B[14]~input_o\ & ( \A[14]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[14]~input_o\,
	dataf => \ALT_INV_B[14]~input_o\,
	combout => \gen_adders:14:FA_inst|cout~0_combout\);

-- Location: MLABCELL_X42_Y1_N34
\gen_adders:14:FA_inst|cout~3\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:14:FA_inst|cout~3_combout\ = ( !\gen_adders:14:FA_inst|cout~0_combout\ & ( !\gen_adders:14:FA_inst|cout~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \gen_adders:14:FA_inst|ALT_INV_cout~2_combout\,
	dataf => \gen_adders:14:FA_inst|ALT_INV_cout~0_combout\,
	combout => \gen_adders:14:FA_inst|cout~3_combout\);

-- Location: IOIBUF_X48_Y0_N32
\B[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LABCELL_X47_Y1_N22
\gen_adders:15:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:15:FA_inst|sum~combout\ = ( \B[15]~input_o\ & ( !\A[15]~input_o\ $ (!\gen_adders:14:FA_inst|cout~3_combout\) ) ) # ( !\B[15]~input_o\ & ( !\A[15]~input_o\ $ (\gen_adders:14:FA_inst|cout~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000110011110011000011001100110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[15]~input_o\,
	datad => \gen_adders:14:FA_inst|ALT_INV_cout~3_combout\,
	dataf => \ALT_INV_B[15]~input_o\,
	combout => \gen_adders:15:FA_inst|sum~combout\);

-- Location: IOIBUF_X48_Y0_N1
\B[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: IOIBUF_X48_Y0_N94
\A[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: LABCELL_X47_Y1_N26
\gen_adders:16:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:16:FA_inst|sum~combout\ = ( \A[16]~input_o\ & ( \B[15]~input_o\ & ( !\B[16]~input_o\ $ (((!\gen_adders:14:FA_inst|cout~3_combout\) # (\A[15]~input_o\))) ) ) ) # ( !\A[16]~input_o\ & ( \B[15]~input_o\ & ( !\B[16]~input_o\ $ 
-- (((\gen_adders:14:FA_inst|cout~3_combout\ & !\A[15]~input_o\))) ) ) ) # ( \A[16]~input_o\ & ( !\B[15]~input_o\ & ( !\B[16]~input_o\ $ (((!\gen_adders:14:FA_inst|cout~3_combout\ & \A[15]~input_o\))) ) ) ) # ( !\A[16]~input_o\ & ( !\B[15]~input_o\ & ( 
-- !\B[16]~input_o\ $ (((!\A[15]~input_o\) # (\gen_adders:14:FA_inst|cout~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010110100101101110100101101001010110100101101000100101101001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:14:FA_inst|ALT_INV_cout~3_combout\,
	datab => \ALT_INV_A[15]~input_o\,
	datac => \ALT_INV_B[16]~input_o\,
	datae => \ALT_INV_A[16]~input_o\,
	dataf => \ALT_INV_B[15]~input_o\,
	combout => \gen_adders:16:FA_inst|sum~combout\);

-- Location: IOIBUF_X25_Y0_N94
\B[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X25_Y0_N63
\A[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: LABCELL_X47_Y1_N30
\gen_adders:16:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:16:FA_inst|cout~0_combout\ = ( \A[16]~input_o\ & ( \B[15]~input_o\ & ( (!\gen_adders:14:FA_inst|cout~2_combout\ & (!\B[16]~input_o\ & (!\A[15]~input_o\ & !\gen_adders:14:FA_inst|cout~0_combout\))) ) ) ) # ( !\A[16]~input_o\ & ( \B[15]~input_o\ 
-- & ( (!\B[16]~input_o\) # ((!\gen_adders:14:FA_inst|cout~2_combout\ & (!\A[15]~input_o\ & !\gen_adders:14:FA_inst|cout~0_combout\))) ) ) ) # ( \A[16]~input_o\ & ( !\B[15]~input_o\ & ( (!\B[16]~input_o\ & ((!\A[15]~input_o\) # 
-- ((!\gen_adders:14:FA_inst|cout~2_combout\ & !\gen_adders:14:FA_inst|cout~0_combout\)))) ) ) ) # ( !\A[16]~input_o\ & ( !\B[15]~input_o\ & ( (!\B[16]~input_o\) # ((!\A[15]~input_o\) # ((!\gen_adders:14:FA_inst|cout~2_combout\ & 
-- !\gen_adders:14:FA_inst|cout~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011111100110010001100000011101100110011001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:14:FA_inst|ALT_INV_cout~2_combout\,
	datab => \ALT_INV_B[16]~input_o\,
	datac => \ALT_INV_A[15]~input_o\,
	datad => \gen_adders:14:FA_inst|ALT_INV_cout~0_combout\,
	datae => \ALT_INV_A[16]~input_o\,
	dataf => \ALT_INV_B[15]~input_o\,
	combout => \gen_adders:16:FA_inst|cout~0_combout\);

-- Location: LABCELL_X24_Y4_N0
\gen_adders:17:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:17:FA_inst|sum~combout\ = ( \A[17]~input_o\ & ( \gen_adders:16:FA_inst|cout~0_combout\ & ( !\B[17]~input_o\ ) ) ) # ( !\A[17]~input_o\ & ( \gen_adders:16:FA_inst|cout~0_combout\ & ( \B[17]~input_o\ ) ) ) # ( \A[17]~input_o\ & ( 
-- !\gen_adders:16:FA_inst|cout~0_combout\ & ( \B[17]~input_o\ ) ) ) # ( !\A[17]~input_o\ & ( !\gen_adders:16:FA_inst|cout~0_combout\ & ( !\B[17]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100001100110011001100110011001100111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[17]~input_o\,
	datae => \ALT_INV_A[17]~input_o\,
	dataf => \gen_adders:16:FA_inst|ALT_INV_cout~0_combout\,
	combout => \gen_adders:17:FA_inst|sum~combout\);

-- Location: LABCELL_X24_Y4_N24
\gen_adders:17:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:17:FA_inst|cout~0_combout\ = ( \A[17]~input_o\ & ( \gen_adders:16:FA_inst|cout~0_combout\ & ( \B[17]~input_o\ ) ) ) # ( \A[17]~input_o\ & ( !\gen_adders:16:FA_inst|cout~0_combout\ ) ) # ( !\A[17]~input_o\ & ( 
-- !\gen_adders:16:FA_inst|cout~0_combout\ & ( \B[17]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_B[17]~input_o\,
	datae => \ALT_INV_A[17]~input_o\,
	dataf => \gen_adders:16:FA_inst|ALT_INV_cout~0_combout\,
	combout => \gen_adders:17:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X24_Y0_N32
\A[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: IOIBUF_X22_Y0_N63
\B[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: LABCELL_X24_Y4_N8
\gen_adders:18:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:18:FA_inst|sum~combout\ = ( \B[18]~input_o\ & ( !\gen_adders:17:FA_inst|cout~0_combout\ $ (\A[18]~input_o\) ) ) # ( !\B[18]~input_o\ & ( !\gen_adders:17:FA_inst|cout~0_combout\ $ (!\A[18]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:17:FA_inst|ALT_INV_cout~0_combout\,
	datab => \ALT_INV_A[18]~input_o\,
	dataf => \ALT_INV_B[18]~input_o\,
	combout => \gen_adders:18:FA_inst|sum~combout\);

-- Location: IOIBUF_X19_Y0_N94
\B[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X19_Y0_N63
\A[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: LABCELL_X24_Y4_N10
\gen_adders:19:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:19:FA_inst|sum~combout\ = ( \A[19]~input_o\ & ( !\B[19]~input_o\ $ (((!\gen_adders:17:FA_inst|cout~0_combout\ & (\A[18]~input_o\ & \B[18]~input_o\)) # (\gen_adders:17:FA_inst|cout~0_combout\ & ((\B[18]~input_o\) # (\A[18]~input_o\))))) ) ) # ( 
-- !\A[19]~input_o\ & ( !\B[19]~input_o\ $ (((!\gen_adders:17:FA_inst|cout~0_combout\ & ((!\A[18]~input_o\) # (!\B[18]~input_o\))) # (\gen_adders:17:FA_inst|cout~0_combout\ & (!\A[18]~input_o\ & !\B[18]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111001111000000111100111100011100001100001111110000110000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:17:FA_inst|ALT_INV_cout~0_combout\,
	datab => \ALT_INV_A[18]~input_o\,
	datac => \ALT_INV_B[19]~input_o\,
	datad => \ALT_INV_B[18]~input_o\,
	dataf => \ALT_INV_A[19]~input_o\,
	combout => \gen_adders:19:FA_inst|sum~combout\);

-- Location: LABCELL_X24_Y4_N12
\gen_adders:19:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:19:FA_inst|cout~0_combout\ = (\A[19]~input_o\ & \B[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[19]~input_o\,
	datab => \ALT_INV_B[19]~input_o\,
	combout => \gen_adders:19:FA_inst|cout~0_combout\);

-- Location: LABCELL_X24_Y4_N14
\gen_adders:19:FA_inst|cout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:19:FA_inst|cout~1_combout\ = (!\A[19]~input_o\ & !\B[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[19]~input_o\,
	datab => \ALT_INV_B[19]~input_o\,
	combout => \gen_adders:19:FA_inst|cout~1_combout\);

-- Location: LABCELL_X24_Y4_N16
\gen_adders:19:FA_inst|cout~2\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:19:FA_inst|cout~2_combout\ = ( \A[18]~input_o\ & ( \gen_adders:16:FA_inst|cout~0_combout\ & ( (!\gen_adders:19:FA_inst|cout~1_combout\ & (((\A[17]~input_o\ & \B[17]~input_o\)) # (\B[18]~input_o\))) ) ) ) # ( !\A[18]~input_o\ & ( 
-- \gen_adders:16:FA_inst|cout~0_combout\ & ( (\A[17]~input_o\ & (!\gen_adders:19:FA_inst|cout~1_combout\ & (\B[18]~input_o\ & \B[17]~input_o\))) ) ) ) # ( \A[18]~input_o\ & ( !\gen_adders:16:FA_inst|cout~0_combout\ & ( 
-- (!\gen_adders:19:FA_inst|cout~1_combout\ & (((\B[17]~input_o\) # (\B[18]~input_o\)) # (\A[17]~input_o\))) ) ) ) # ( !\A[18]~input_o\ & ( !\gen_adders:16:FA_inst|cout~0_combout\ & ( (!\gen_adders:19:FA_inst|cout~1_combout\ & (\B[18]~input_o\ & 
-- ((\B[17]~input_o\) # (\A[17]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000001100010011001100110000000000000001000000110001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[17]~input_o\,
	datab => \gen_adders:19:FA_inst|ALT_INV_cout~1_combout\,
	datac => \ALT_INV_B[18]~input_o\,
	datad => \ALT_INV_B[17]~input_o\,
	datae => \ALT_INV_A[18]~input_o\,
	dataf => \gen_adders:16:FA_inst|ALT_INV_cout~0_combout\,
	combout => \gen_adders:19:FA_inst|cout~2_combout\);

-- Location: LABCELL_X24_Y4_N20
\gen_adders:19:FA_inst|cout~3\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:19:FA_inst|cout~3_combout\ = ( !\gen_adders:19:FA_inst|cout~2_combout\ & ( !\gen_adders:19:FA_inst|cout~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \gen_adders:19:FA_inst|ALT_INV_cout~0_combout\,
	dataf => \gen_adders:19:FA_inst|ALT_INV_cout~2_combout\,
	combout => \gen_adders:19:FA_inst|cout~3_combout\);

-- Location: IOIBUF_X18_Y0_N63
\A[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: IOIBUF_X25_Y0_N32
\B[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: LABCELL_X24_Y4_N4
\gen_adders:20:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:20:FA_inst|sum~combout\ = ( \A[20]~input_o\ & ( \B[20]~input_o\ & ( !\gen_adders:19:FA_inst|cout~3_combout\ ) ) ) # ( !\A[20]~input_o\ & ( \B[20]~input_o\ & ( \gen_adders:19:FA_inst|cout~3_combout\ ) ) ) # ( \A[20]~input_o\ & ( 
-- !\B[20]~input_o\ & ( \gen_adders:19:FA_inst|cout~3_combout\ ) ) ) # ( !\A[20]~input_o\ & ( !\B[20]~input_o\ & ( !\gen_adders:19:FA_inst|cout~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000011110000111100001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \gen_adders:19:FA_inst|ALT_INV_cout~3_combout\,
	datae => \ALT_INV_A[20]~input_o\,
	dataf => \ALT_INV_B[20]~input_o\,
	combout => \gen_adders:20:FA_inst|sum~combout\);

-- Location: IOIBUF_X22_Y0_N1
\A[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\B[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: LABCELL_X24_Y4_N22
\gen_adders:21:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:21:FA_inst|sum~combout\ = ( \B[20]~input_o\ & ( !\A[21]~input_o\ $ (!\B[21]~input_o\ $ (((!\gen_adders:19:FA_inst|cout~3_combout\) # (\A[20]~input_o\)))) ) ) # ( !\B[20]~input_o\ & ( !\A[21]~input_o\ $ (!\B[21]~input_o\ $ (((\A[20]~input_o\ & 
-- !\gen_adders:19:FA_inst|cout~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101100110011010010110011010011001011010011001100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[21]~input_o\,
	datab => \ALT_INV_B[21]~input_o\,
	datac => \ALT_INV_A[20]~input_o\,
	datad => \gen_adders:19:FA_inst|ALT_INV_cout~3_combout\,
	dataf => \ALT_INV_B[20]~input_o\,
	combout => \gen_adders:21:FA_inst|sum~combout\);

-- Location: LABCELL_X24_Y4_N28
\gen_adders:21:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:21:FA_inst|cout~0_combout\ = ( \B[21]~input_o\ & ( \B[20]~input_o\ & ( (!\gen_adders:19:FA_inst|cout~0_combout\ & (!\A[20]~input_o\ & (!\A[21]~input_o\ & !\gen_adders:19:FA_inst|cout~2_combout\))) ) ) ) # ( !\B[21]~input_o\ & ( \B[20]~input_o\ 
-- & ( (!\A[21]~input_o\) # ((!\gen_adders:19:FA_inst|cout~0_combout\ & (!\A[20]~input_o\ & !\gen_adders:19:FA_inst|cout~2_combout\))) ) ) ) # ( \B[21]~input_o\ & ( !\B[20]~input_o\ & ( (!\A[21]~input_o\ & ((!\A[20]~input_o\) # 
-- ((!\gen_adders:19:FA_inst|cout~0_combout\ & !\gen_adders:19:FA_inst|cout~2_combout\)))) ) ) ) # ( !\B[21]~input_o\ & ( !\B[20]~input_o\ & ( (!\A[20]~input_o\) # ((!\A[21]~input_o\) # ((!\gen_adders:19:FA_inst|cout~0_combout\ & 
-- !\gen_adders:19:FA_inst|cout~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011111100111000001100000011111000111100001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:19:FA_inst|ALT_INV_cout~0_combout\,
	datab => \ALT_INV_A[20]~input_o\,
	datac => \ALT_INV_A[21]~input_o\,
	datad => \gen_adders:19:FA_inst|ALT_INV_cout~2_combout\,
	datae => \ALT_INV_B[21]~input_o\,
	dataf => \ALT_INV_B[20]~input_o\,
	combout => \gen_adders:21:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X28_Y56_N32
\B[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: IOIBUF_X31_Y56_N1
\A[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: LABCELL_X24_Y4_N32
\gen_adders:22:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:22:FA_inst|sum~combout\ = ( \A[22]~input_o\ & ( !\gen_adders:21:FA_inst|cout~0_combout\ $ (!\B[22]~input_o\) ) ) # ( !\A[22]~input_o\ & ( !\gen_adders:21:FA_inst|cout~0_combout\ $ (\B[22]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101101001011010010101011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:21:FA_inst|ALT_INV_cout~0_combout\,
	datac => \ALT_INV_B[22]~input_o\,
	dataf => \ALT_INV_A[22]~input_o\,
	combout => \gen_adders:22:FA_inst|sum~combout\);

-- Location: IOIBUF_X56_Y56_N32
\B[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: MLABCELL_X52_Y52_N22
\gen_adders:22:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:22:FA_inst|cout~0_combout\ = ( \gen_adders:21:FA_inst|cout~0_combout\ & ( (\A[22]~input_o\ & \B[22]~input_o\) ) ) # ( !\gen_adders:21:FA_inst|cout~0_combout\ & ( (\B[22]~input_o\) # (\A[22]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[22]~input_o\,
	datac => \ALT_INV_B[22]~input_o\,
	dataf => \gen_adders:21:FA_inst|ALT_INV_cout~0_combout\,
	combout => \gen_adders:22:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X56_Y56_N94
\A[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: MLABCELL_X52_Y52_N20
\gen_adders:23:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:23:FA_inst|sum~combout\ = ( \A[23]~input_o\ & ( !\B[23]~input_o\ $ (\gen_adders:22:FA_inst|cout~0_combout\) ) ) # ( !\A[23]~input_o\ & ( !\B[23]~input_o\ $ (!\gen_adders:22:FA_inst|cout~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[23]~input_o\,
	datad => \gen_adders:22:FA_inst|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_A[23]~input_o\,
	combout => \gen_adders:23:FA_inst|sum~combout\);

-- Location: IOIBUF_X49_Y56_N1
\A[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: IOIBUF_X51_Y56_N32
\B[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: MLABCELL_X52_Y52_N26
\gen_adders:24:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:24:FA_inst|sum~combout\ = ( \B[23]~input_o\ & ( !\A[24]~input_o\ $ (!\B[24]~input_o\ $ (((\gen_adders:22:FA_inst|cout~0_combout\) # (\A[23]~input_o\)))) ) ) # ( !\B[23]~input_o\ & ( !\A[24]~input_o\ $ (!\B[24]~input_o\ $ (((\A[23]~input_o\ & 
-- \gen_adders:22:FA_inst|cout~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001101001011001100110100101101001100110010110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[24]~input_o\,
	datab => \ALT_INV_B[24]~input_o\,
	datac => \ALT_INV_A[23]~input_o\,
	datad => \gen_adders:22:FA_inst|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_B[23]~input_o\,
	combout => \gen_adders:24:FA_inst|sum~combout\);

-- Location: MLABCELL_X52_Y52_N24
\gen_adders:24:FA_inst|cout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:24:FA_inst|cout~1_combout\ = (!\A[24]~input_o\ & !\B[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[24]~input_o\,
	datab => \ALT_INV_B[24]~input_o\,
	combout => \gen_adders:24:FA_inst|cout~1_combout\);

-- Location: MLABCELL_X52_Y52_N32
\gen_adders:24:FA_inst|cout~2\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:24:FA_inst|cout~2_combout\ = ( \A[22]~input_o\ & ( \B[23]~input_o\ & ( (!\gen_adders:24:FA_inst|cout~1_combout\ & (((!\gen_adders:21:FA_inst|cout~0_combout\) # (\A[23]~input_o\)) # (\B[22]~input_o\))) ) ) ) # ( !\A[22]~input_o\ & ( 
-- \B[23]~input_o\ & ( (!\gen_adders:24:FA_inst|cout~1_combout\ & (((\B[22]~input_o\ & !\gen_adders:21:FA_inst|cout~0_combout\)) # (\A[23]~input_o\))) ) ) ) # ( \A[22]~input_o\ & ( !\B[23]~input_o\ & ( (!\gen_adders:24:FA_inst|cout~1_combout\ & 
-- (\A[23]~input_o\ & ((!\gen_adders:21:FA_inst|cout~0_combout\) # (\B[22]~input_o\)))) ) ) ) # ( !\A[22]~input_o\ & ( !\B[23]~input_o\ & ( (!\gen_adders:24:FA_inst|cout~1_combout\ & (\B[22]~input_o\ & (!\gen_adders:21:FA_inst|cout~0_combout\ & 
-- \A[23]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000001010001000100000101010101010001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:24:FA_inst|ALT_INV_cout~1_combout\,
	datab => \ALT_INV_B[22]~input_o\,
	datac => \gen_adders:21:FA_inst|ALT_INV_cout~0_combout\,
	datad => \ALT_INV_A[23]~input_o\,
	datae => \ALT_INV_A[22]~input_o\,
	dataf => \ALT_INV_B[23]~input_o\,
	combout => \gen_adders:24:FA_inst|cout~2_combout\);

-- Location: MLABCELL_X52_Y52_N28
\gen_adders:24:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:24:FA_inst|cout~0_combout\ = (\B[24]~input_o\ & \A[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[24]~input_o\,
	datac => \ALT_INV_A[24]~input_o\,
	combout => \gen_adders:24:FA_inst|cout~0_combout\);

-- Location: MLABCELL_X52_Y52_N30
\gen_adders:24:FA_inst|cout~3\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:24:FA_inst|cout~3_combout\ = ( !\gen_adders:24:FA_inst|cout~0_combout\ & ( !\gen_adders:24:FA_inst|cout~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:24:FA_inst|ALT_INV_cout~2_combout\,
	dataf => \gen_adders:24:FA_inst|ALT_INV_cout~0_combout\,
	combout => \gen_adders:24:FA_inst|cout~3_combout\);

-- Location: IOIBUF_X53_Y56_N1
\A[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: IOIBUF_X53_Y56_N32
\B[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: MLABCELL_X52_Y52_N16
\gen_adders:25:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:25:FA_inst|sum~combout\ = ( \B[25]~input_o\ & ( !\gen_adders:24:FA_inst|cout~3_combout\ $ (!\A[25]~input_o\) ) ) # ( !\B[25]~input_o\ & ( !\gen_adders:24:FA_inst|cout~3_combout\ $ (\A[25]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100101100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:24:FA_inst|ALT_INV_cout~3_combout\,
	datab => \ALT_INV_A[25]~input_o\,
	dataf => \ALT_INV_B[25]~input_o\,
	combout => \gen_adders:25:FA_inst|sum~combout\);

-- Location: IOIBUF_X51_Y56_N63
\B[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: IOIBUF_X59_Y51_N1
\A[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: MLABCELL_X52_Y52_N18
\gen_adders:26:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:26:FA_inst|sum~combout\ = ( \A[26]~input_o\ & ( !\B[26]~input_o\ $ (((!\gen_adders:24:FA_inst|cout~3_combout\ & ((\B[25]~input_o\) # (\A[25]~input_o\))) # (\gen_adders:24:FA_inst|cout~3_combout\ & (\A[25]~input_o\ & \B[25]~input_o\)))) ) ) # ( 
-- !\A[26]~input_o\ & ( !\B[26]~input_o\ $ (((!\gen_adders:24:FA_inst|cout~3_combout\ & (!\A[25]~input_o\ & !\B[25]~input_o\)) # (\gen_adders:24:FA_inst|cout~3_combout\ & ((!\A[25]~input_o\) # (!\B[25]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101111010100001010111101010011010100001010111101010000101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:24:FA_inst|ALT_INV_cout~3_combout\,
	datab => \ALT_INV_A[25]~input_o\,
	datac => \ALT_INV_B[25]~input_o\,
	datad => \ALT_INV_B[26]~input_o\,
	dataf => \ALT_INV_A[26]~input_o\,
	combout => \gen_adders:26:FA_inst|sum~combout\);

-- Location: MLABCELL_X52_Y52_N0
\gen_adders:26:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:26:FA_inst|cout~0_combout\ = ( !\B[26]~input_o\ & ( \A[26]~input_o\ & ( (!\A[25]~input_o\ & ((!\B[25]~input_o\) # ((!\gen_adders:24:FA_inst|cout~0_combout\ & !\gen_adders:24:FA_inst|cout~2_combout\)))) # (\A[25]~input_o\ & 
-- (!\gen_adders:24:FA_inst|cout~0_combout\ & (!\gen_adders:24:FA_inst|cout~2_combout\ & !\B[25]~input_o\))) ) ) ) # ( \B[26]~input_o\ & ( !\A[26]~input_o\ & ( (!\A[25]~input_o\ & ((!\B[25]~input_o\) # ((!\gen_adders:24:FA_inst|cout~0_combout\ & 
-- !\gen_adders:24:FA_inst|cout~2_combout\)))) # (\A[25]~input_o\ & (!\gen_adders:24:FA_inst|cout~0_combout\ & (!\gen_adders:24:FA_inst|cout~2_combout\ & !\B[25]~input_o\))) ) ) ) # ( !\B[26]~input_o\ & ( !\A[26]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111011001000000011101100100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:24:FA_inst|ALT_INV_cout~0_combout\,
	datab => \ALT_INV_A[25]~input_o\,
	datac => \gen_adders:24:FA_inst|ALT_INV_cout~2_combout\,
	datad => \ALT_INV_B[25]~input_o\,
	datae => \ALT_INV_B[26]~input_o\,
	dataf => \ALT_INV_A[26]~input_o\,
	combout => \gen_adders:26:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X51_Y56_N94
\B[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: IOIBUF_X55_Y56_N1
\A[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: MLABCELL_X52_Y52_N4
\gen_adders:27:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:27:FA_inst|sum~combout\ = ( \A[27]~input_o\ & ( !\gen_adders:26:FA_inst|cout~0_combout\ $ (!\B[27]~input_o\) ) ) # ( !\A[27]~input_o\ & ( !\gen_adders:26:FA_inst|cout~0_combout\ $ (\B[27]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100101100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:26:FA_inst|ALT_INV_cout~0_combout\,
	datab => \ALT_INV_B[27]~input_o\,
	dataf => \ALT_INV_A[27]~input_o\,
	combout => \gen_adders:27:FA_inst|sum~combout\);

-- Location: IOIBUF_X49_Y56_N63
\A[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: IOIBUF_X55_Y56_N94
\B[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: MLABCELL_X52_Y52_N6
\gen_adders:27:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:27:FA_inst|cout~0_combout\ = ( \A[27]~input_o\ & ( (!\gen_adders:26:FA_inst|cout~0_combout\) # (\B[27]~input_o\) ) ) # ( !\A[27]~input_o\ & ( (!\gen_adders:26:FA_inst|cout~0_combout\ & \B[27]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001010111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:26:FA_inst|ALT_INV_cout~0_combout\,
	datab => \ALT_INV_B[27]~input_o\,
	dataf => \ALT_INV_A[27]~input_o\,
	combout => \gen_adders:27:FA_inst|cout~0_combout\);

-- Location: MLABCELL_X52_Y52_N10
\gen_adders:28:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:28:FA_inst|sum~combout\ = !\A[28]~input_o\ $ (!\B[28]~input_o\ $ (\gen_adders:27:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100101100110100110010110011010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[28]~input_o\,
	datab => \ALT_INV_B[28]~input_o\,
	datad => \gen_adders:27:FA_inst|ALT_INV_cout~0_combout\,
	combout => \gen_adders:28:FA_inst|sum~combout\);

-- Location: IOIBUF_X49_Y56_N94
\A[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: IOIBUF_X51_Y56_N1
\B[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: MLABCELL_X52_Y52_N8
\gen_adders:29:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:29:FA_inst|sum~combout\ = ( \B[29]~input_o\ & ( !\A[29]~input_o\ $ (((!\A[28]~input_o\ & (\B[28]~input_o\ & \gen_adders:27:FA_inst|cout~0_combout\)) # (\A[28]~input_o\ & ((\gen_adders:27:FA_inst|cout~0_combout\) # (\B[28]~input_o\))))) ) ) # ( 
-- !\B[29]~input_o\ & ( !\A[29]~input_o\ $ (((!\A[28]~input_o\ & ((!\B[28]~input_o\) # (!\gen_adders:27:FA_inst|cout~0_combout\))) # (\A[28]~input_o\ & (!\B[28]~input_o\ & !\gen_adders:27:FA_inst|cout~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111001111000000111100111100011100001100001111110000110000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[28]~input_o\,
	datab => \ALT_INV_B[28]~input_o\,
	datac => \ALT_INV_A[29]~input_o\,
	datad => \gen_adders:27:FA_inst|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_B[29]~input_o\,
	combout => \gen_adders:29:FA_inst|sum~combout\);

-- Location: MLABCELL_X52_Y52_N14
\gen_adders:29:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:29:FA_inst|cout~0_combout\ = (\A[29]~input_o\ & \B[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[29]~input_o\,
	datab => \ALT_INV_B[29]~input_o\,
	combout => \gen_adders:29:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X59_Y12_N63
\B[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: MLABCELL_X52_Y52_N12
\gen_adders:29:FA_inst|cout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:29:FA_inst|cout~1_combout\ = (!\A[29]~input_o\ & !\B[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[29]~input_o\,
	datab => \ALT_INV_B[29]~input_o\,
	combout => \gen_adders:29:FA_inst|cout~1_combout\);

-- Location: MLABCELL_X52_Y52_N36
\gen_adders:29:FA_inst|cout~2\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:29:FA_inst|cout~2_combout\ = ( !\gen_adders:29:FA_inst|cout~1_combout\ & ( \B[28]~input_o\ & ( ((!\A[27]~input_o\ & (!\gen_adders:26:FA_inst|cout~0_combout\ & \B[27]~input_o\)) # (\A[27]~input_o\ & ((!\gen_adders:26:FA_inst|cout~0_combout\) # 
-- (\B[27]~input_o\)))) # (\A[28]~input_o\) ) ) ) # ( !\gen_adders:29:FA_inst|cout~1_combout\ & ( !\B[28]~input_o\ & ( (\A[28]~input_o\ & ((!\A[27]~input_o\ & (!\gen_adders:26:FA_inst|cout~0_combout\ & \B[27]~input_o\)) # (\A[27]~input_o\ & 
-- ((!\gen_adders:26:FA_inst|cout~0_combout\) # (\B[27]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000110001000000000000000001110011111101110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[27]~input_o\,
	datab => \ALT_INV_A[28]~input_o\,
	datac => \gen_adders:26:FA_inst|ALT_INV_cout~0_combout\,
	datad => \ALT_INV_B[27]~input_o\,
	datae => \gen_adders:29:FA_inst|ALT_INV_cout~1_combout\,
	dataf => \ALT_INV_B[28]~input_o\,
	combout => \gen_adders:29:FA_inst|cout~2_combout\);

-- Location: IOIBUF_X59_Y13_N94
\A[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: LABCELL_X58_Y13_N22
\gen_adders:30:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:30:FA_inst|sum~combout\ = ( \A[30]~input_o\ & ( !\B[30]~input_o\ $ (((\gen_adders:29:FA_inst|cout~2_combout\) # (\gen_adders:29:FA_inst|cout~0_combout\))) ) ) # ( !\A[30]~input_o\ & ( !\B[30]~input_o\ $ 
-- (((!\gen_adders:29:FA_inst|cout~0_combout\ & !\gen_adders:29:FA_inst|cout~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110110001101100011011000110110010010011100100111001001110010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:29:FA_inst|ALT_INV_cout~0_combout\,
	datab => \ALT_INV_B[30]~input_o\,
	datac => \gen_adders:29:FA_inst|ALT_INV_cout~2_combout\,
	dataf => \ALT_INV_A[30]~input_o\,
	combout => \gen_adders:30:FA_inst|sum~combout\);

-- Location: IOIBUF_X59_Y10_N1
\A[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: IOIBUF_X59_Y9_N63
\B[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: LABCELL_X58_Y13_N6
\gen_adders:31:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:31:FA_inst|sum~combout\ = ( \gen_adders:29:FA_inst|cout~0_combout\ & ( \A[30]~input_o\ & ( !\A[31]~input_o\ $ (\B[31]~input_o\) ) ) ) # ( !\gen_adders:29:FA_inst|cout~0_combout\ & ( \A[30]~input_o\ & ( !\A[31]~input_o\ $ (!\B[31]~input_o\ $ 
-- (((\B[30]~input_o\) # (\gen_adders:29:FA_inst|cout~2_combout\)))) ) ) ) # ( \gen_adders:29:FA_inst|cout~0_combout\ & ( !\A[30]~input_o\ & ( !\A[31]~input_o\ $ (!\B[30]~input_o\ $ (\B[31]~input_o\)) ) ) ) # ( !\gen_adders:29:FA_inst|cout~0_combout\ & ( 
-- !\A[30]~input_o\ & ( !\A[31]~input_o\ $ (!\B[31]~input_o\ $ (((\gen_adders:29:FA_inst|cout~2_combout\ & \B[30]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011010101001010110101010010101101010100101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datab => \gen_adders:29:FA_inst|ALT_INV_cout~2_combout\,
	datac => \ALT_INV_B[30]~input_o\,
	datad => \ALT_INV_B[31]~input_o\,
	datae => \gen_adders:29:FA_inst|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_A[30]~input_o\,
	combout => \gen_adders:31:FA_inst|sum~combout\);

-- Location: LABCELL_X58_Y13_N28
\gen_adders:31:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:31:FA_inst|cout~0_combout\ = ( \gen_adders:29:FA_inst|cout~0_combout\ & ( \A[30]~input_o\ & ( (!\A[31]~input_o\ & !\B[31]~input_o\) ) ) ) # ( !\gen_adders:29:FA_inst|cout~0_combout\ & ( \A[30]~input_o\ & ( (!\A[31]~input_o\ & 
-- ((!\B[31]~input_o\) # ((!\gen_adders:29:FA_inst|cout~2_combout\ & !\B[30]~input_o\)))) # (\A[31]~input_o\ & (!\gen_adders:29:FA_inst|cout~2_combout\ & (!\B[31]~input_o\ & !\B[30]~input_o\))) ) ) ) # ( \gen_adders:29:FA_inst|cout~0_combout\ & ( 
-- !\A[30]~input_o\ & ( (!\A[31]~input_o\ & ((!\B[31]~input_o\) # (!\B[30]~input_o\))) # (\A[31]~input_o\ & (!\B[31]~input_o\ & !\B[30]~input_o\)) ) ) ) # ( !\gen_adders:29:FA_inst|cout~0_combout\ & ( !\A[30]~input_o\ & ( (!\A[31]~input_o\ & 
-- ((!\gen_adders:29:FA_inst|cout~2_combout\) # ((!\B[31]~input_o\) # (!\B[30]~input_o\)))) # (\A[31]~input_o\ & (!\B[31]~input_o\ & ((!\gen_adders:29:FA_inst|cout~2_combout\) # (!\B[30]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011101000111110101010000011101000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datab => \gen_adders:29:FA_inst|ALT_INV_cout~2_combout\,
	datac => \ALT_INV_B[31]~input_o\,
	datad => \ALT_INV_B[30]~input_o\,
	datae => \gen_adders:29:FA_inst|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_A[30]~input_o\,
	combout => \gen_adders:31:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X59_Y10_N32
\B[32]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(32),
	o => \B[32]~input_o\);

-- Location: IOIBUF_X59_Y12_N32
\A[32]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(32),
	o => \A[32]~input_o\);

-- Location: LABCELL_X58_Y13_N20
\gen_adders:32:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:32:FA_inst|sum~combout\ = ( \A[32]~input_o\ & ( !\gen_adders:31:FA_inst|cout~0_combout\ $ (!\B[32]~input_o\) ) ) # ( !\A[32]~input_o\ & ( !\gen_adders:31:FA_inst|cout~0_combout\ $ (\B[32]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \gen_adders:31:FA_inst|ALT_INV_cout~0_combout\,
	datad => \ALT_INV_B[32]~input_o\,
	dataf => \ALT_INV_A[32]~input_o\,
	combout => \gen_adders:32:FA_inst|sum~combout\);

-- Location: IOIBUF_X59_Y15_N32
\A[33]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(33),
	o => \A[33]~input_o\);

-- Location: LABCELL_X58_Y13_N12
\gen_adders:32:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:32:FA_inst|cout~0_combout\ = ( \A[32]~input_o\ & ( (!\gen_adders:31:FA_inst|cout~0_combout\) # (\B[32]~input_o\) ) ) # ( !\A[32]~input_o\ & ( (\B[32]~input_o\ & !\gen_adders:31:FA_inst|cout~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000011110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[32]~input_o\,
	datac => \gen_adders:31:FA_inst|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_A[32]~input_o\,
	combout => \gen_adders:32:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X59_Y16_N1
\B[33]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(33),
	o => \B[33]~input_o\);

-- Location: LABCELL_X58_Y13_N14
\gen_adders:33:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:33:FA_inst|sum~combout\ = ( \B[33]~input_o\ & ( !\A[33]~input_o\ $ (\gen_adders:32:FA_inst|cout~0_combout\) ) ) # ( !\B[33]~input_o\ & ( !\A[33]~input_o\ $ (!\gen_adders:32:FA_inst|cout~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110011001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[33]~input_o\,
	datad => \gen_adders:32:FA_inst|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_B[33]~input_o\,
	combout => \gen_adders:33:FA_inst|sum~combout\);

-- Location: IOIBUF_X59_Y12_N94
\A[34]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(34),
	o => \A[34]~input_o\);

-- Location: IOIBUF_X59_Y9_N94
\B[34]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(34),
	o => \B[34]~input_o\);

-- Location: LABCELL_X58_Y13_N38
\gen_adders:34:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:34:FA_inst|sum~combout\ = ( \B[33]~input_o\ & ( !\A[34]~input_o\ $ (!\B[34]~input_o\ $ (((\A[33]~input_o\) # (\gen_adders:32:FA_inst|cout~0_combout\)))) ) ) # ( !\B[33]~input_o\ & ( !\A[34]~input_o\ $ (!\B[34]~input_o\ $ 
-- (((\gen_adders:32:FA_inst|cout~0_combout\ & \A[33]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110001101001001111000110100101101001110000110110100111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:32:FA_inst|ALT_INV_cout~0_combout\,
	datab => \ALT_INV_A[34]~input_o\,
	datac => \ALT_INV_B[34]~input_o\,
	datad => \ALT_INV_A[33]~input_o\,
	dataf => \ALT_INV_B[33]~input_o\,
	combout => \gen_adders:34:FA_inst|sum~combout\);

-- Location: IOIBUF_X59_Y15_N63
\B[35]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(35),
	o => \B[35]~input_o\);

-- Location: IOIBUF_X59_Y13_N32
\A[35]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(35),
	o => \A[35]~input_o\);

-- Location: LABCELL_X58_Y13_N36
\gen_adders:34:FA_inst|cout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:34:FA_inst|cout~1_combout\ = (!\A[34]~input_o\ & !\B[34]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[34]~input_o\,
	datad => \ALT_INV_B[34]~input_o\,
	combout => \gen_adders:34:FA_inst|cout~1_combout\);

-- Location: LABCELL_X58_Y13_N24
\gen_adders:34:FA_inst|cout~2\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:34:FA_inst|cout~2_combout\ = ( \A[33]~input_o\ & ( \A[32]~input_o\ & ( (!\gen_adders:34:FA_inst|cout~1_combout\ & (((!\gen_adders:31:FA_inst|cout~0_combout\) # (\B[33]~input_o\)) # (\B[32]~input_o\))) ) ) ) # ( !\A[33]~input_o\ & ( 
-- \A[32]~input_o\ & ( (!\gen_adders:34:FA_inst|cout~1_combout\ & (\B[33]~input_o\ & ((!\gen_adders:31:FA_inst|cout~0_combout\) # (\B[32]~input_o\)))) ) ) ) # ( \A[33]~input_o\ & ( !\A[32]~input_o\ & ( (!\gen_adders:34:FA_inst|cout~1_combout\ & 
-- (((\B[32]~input_o\ & !\gen_adders:31:FA_inst|cout~0_combout\)) # (\B[33]~input_o\))) ) ) ) # ( !\A[33]~input_o\ & ( !\A[32]~input_o\ & ( (\B[32]~input_o\ & (!\gen_adders:34:FA_inst|cout~1_combout\ & (!\gen_adders:31:FA_inst|cout~0_combout\ & 
-- \B[33]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000010000001100110000000000110001001100010011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[32]~input_o\,
	datab => \gen_adders:34:FA_inst|ALT_INV_cout~1_combout\,
	datac => \gen_adders:31:FA_inst|ALT_INV_cout~0_combout\,
	datad => \ALT_INV_B[33]~input_o\,
	datae => \ALT_INV_A[33]~input_o\,
	dataf => \ALT_INV_A[32]~input_o\,
	combout => \gen_adders:34:FA_inst|cout~2_combout\);

-- Location: LABCELL_X58_Y13_N2
\gen_adders:34:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:34:FA_inst|cout~0_combout\ = (\A[34]~input_o\ & \B[34]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[34]~input_o\,
	datac => \ALT_INV_B[34]~input_o\,
	combout => \gen_adders:34:FA_inst|cout~0_combout\);

-- Location: LABCELL_X58_Y13_N0
\gen_adders:34:FA_inst|cout~3\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:34:FA_inst|cout~3_combout\ = ( !\gen_adders:34:FA_inst|cout~0_combout\ & ( !\gen_adders:34:FA_inst|cout~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \gen_adders:34:FA_inst|ALT_INV_cout~2_combout\,
	dataf => \gen_adders:34:FA_inst|ALT_INV_cout~0_combout\,
	combout => \gen_adders:34:FA_inst|cout~3_combout\);

-- Location: LABCELL_X58_Y13_N8
\gen_adders:35:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:35:FA_inst|sum~combout\ = !\B[35]~input_o\ $ (!\A[35]~input_o\ $ (!\gen_adders:34:FA_inst|cout~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100111100110000110011110011000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[35]~input_o\,
	datac => \ALT_INV_A[35]~input_o\,
	datad => \gen_adders:34:FA_inst|ALT_INV_cout~3_combout\,
	combout => \gen_adders:35:FA_inst|sum~combout\);

-- Location: IOIBUF_X59_Y13_N1
\A[36]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(36),
	o => \A[36]~input_o\);

-- Location: IOIBUF_X59_Y16_N63
\B[36]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(36),
	o => \B[36]~input_o\);

-- Location: LABCELL_X58_Y13_N10
\gen_adders:36:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:36:FA_inst|sum~combout\ = ( \B[36]~input_o\ & ( !\A[36]~input_o\ $ (((!\A[35]~input_o\ & (\B[35]~input_o\ & !\gen_adders:34:FA_inst|cout~3_combout\)) # (\A[35]~input_o\ & ((!\gen_adders:34:FA_inst|cout~3_combout\) # (\B[35]~input_o\))))) ) ) # 
-- ( !\B[36]~input_o\ & ( !\A[36]~input_o\ $ (((!\A[35]~input_o\ & ((!\B[35]~input_o\) # (\gen_adders:34:FA_inst|cout~3_combout\))) # (\A[35]~input_o\ & (!\B[35]~input_o\ & \gen_adders:34:FA_inst|cout~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000110001110011100011000111010001110011100011000111001110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[35]~input_o\,
	datab => \ALT_INV_B[35]~input_o\,
	datac => \gen_adders:34:FA_inst|ALT_INV_cout~3_combout\,
	datad => \ALT_INV_A[36]~input_o\,
	dataf => \ALT_INV_B[36]~input_o\,
	combout => \gen_adders:36:FA_inst|sum~combout\);

-- Location: LABCELL_X58_Y13_N32
\gen_adders:36:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:36:FA_inst|cout~0_combout\ = ( \A[35]~input_o\ & ( \B[36]~input_o\ & ( (!\A[36]~input_o\ & (!\gen_adders:34:FA_inst|cout~0_combout\ & (!\gen_adders:34:FA_inst|cout~2_combout\ & !\B[35]~input_o\))) ) ) ) # ( !\A[35]~input_o\ & ( \B[36]~input_o\ 
-- & ( (!\A[36]~input_o\ & ((!\B[35]~input_o\) # ((!\gen_adders:34:FA_inst|cout~0_combout\ & !\gen_adders:34:FA_inst|cout~2_combout\)))) ) ) ) # ( \A[35]~input_o\ & ( !\B[36]~input_o\ & ( (!\A[36]~input_o\) # ((!\gen_adders:34:FA_inst|cout~0_combout\ & 
-- (!\gen_adders:34:FA_inst|cout~2_combout\ & !\B[35]~input_o\))) ) ) ) # ( !\A[35]~input_o\ & ( !\B[36]~input_o\ & ( (!\A[36]~input_o\) # ((!\B[35]~input_o\) # ((!\gen_adders:34:FA_inst|cout~0_combout\ & !\gen_adders:34:FA_inst|cout~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101010111010101010101010101010100000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[36]~input_o\,
	datab => \gen_adders:34:FA_inst|ALT_INV_cout~0_combout\,
	datac => \gen_adders:34:FA_inst|ALT_INV_cout~2_combout\,
	datad => \ALT_INV_B[35]~input_o\,
	datae => \ALT_INV_A[35]~input_o\,
	dataf => \ALT_INV_B[36]~input_o\,
	combout => \gen_adders:36:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X59_Y19_N94
\A[37]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(37),
	o => \A[37]~input_o\);

-- Location: IOIBUF_X59_Y25_N94
\B[37]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(37),
	o => \B[37]~input_o\);

-- Location: LABCELL_X58_Y13_N18
\gen_adders:37:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:37:FA_inst|sum~combout\ = ( \B[37]~input_o\ & ( !\gen_adders:36:FA_inst|cout~0_combout\ $ (!\A[37]~input_o\) ) ) # ( !\B[37]~input_o\ & ( !\gen_adders:36:FA_inst|cout~0_combout\ $ (\A[37]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100101100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:36:FA_inst|ALT_INV_cout~0_combout\,
	datab => \ALT_INV_A[37]~input_o\,
	dataf => \ALT_INV_B[37]~input_o\,
	combout => \gen_adders:37:FA_inst|sum~combout\);

-- Location: IOIBUF_X59_Y31_N63
\B[38]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(38),
	o => \B[38]~input_o\);

-- Location: IOIBUF_X59_Y28_N94
\A[38]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(38),
	o => \A[38]~input_o\);

-- Location: LABCELL_X58_Y13_N16
\gen_adders:37:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:37:FA_inst|cout~0_combout\ = ( \B[37]~input_o\ & ( (!\gen_adders:36:FA_inst|cout~0_combout\) # (\A[37]~input_o\) ) ) # ( !\B[37]~input_o\ & ( (!\gen_adders:36:FA_inst|cout~0_combout\ & \A[37]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001010111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:36:FA_inst|ALT_INV_cout~0_combout\,
	datab => \ALT_INV_A[37]~input_o\,
	dataf => \ALT_INV_B[37]~input_o\,
	combout => \gen_adders:37:FA_inst|cout~0_combout\);

-- Location: LABCELL_X58_Y30_N2
\gen_adders:38:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:38:FA_inst|sum~combout\ = ( \gen_adders:37:FA_inst|cout~0_combout\ & ( !\B[38]~input_o\ $ (\A[38]~input_o\) ) ) # ( !\gen_adders:37:FA_inst|cout~0_combout\ & ( !\B[38]~input_o\ $ (!\A[38]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[38]~input_o\,
	datab => \ALT_INV_A[38]~input_o\,
	dataf => \gen_adders:37:FA_inst|ALT_INV_cout~0_combout\,
	combout => \gen_adders:38:FA_inst|sum~combout\);

-- Location: IOIBUF_X59_Y30_N63
\B[39]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(39),
	o => \B[39]~input_o\);

-- Location: IOIBUF_X59_Y34_N32
\A[39]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(39),
	o => \A[39]~input_o\);

-- Location: LABCELL_X58_Y30_N0
\gen_adders:39:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:39:FA_inst|sum~combout\ = ( \gen_adders:37:FA_inst|cout~0_combout\ & ( !\B[39]~input_o\ $ (!\A[39]~input_o\ $ (((\A[38]~input_o\) # (\B[38]~input_o\)))) ) ) # ( !\gen_adders:37:FA_inst|cout~0_combout\ & ( !\B[39]~input_o\ $ (!\A[39]~input_o\ $ 
-- (((\B[38]~input_o\ & \A[38]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111011100001000111101110000101111000100001110111100010000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[38]~input_o\,
	datab => \ALT_INV_A[38]~input_o\,
	datac => \ALT_INV_B[39]~input_o\,
	datad => \ALT_INV_A[39]~input_o\,
	dataf => \gen_adders:37:FA_inst|ALT_INV_cout~0_combout\,
	combout => \gen_adders:39:FA_inst|sum~combout\);

-- Location: LABCELL_X58_Y30_N6
\gen_adders:39:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:39:FA_inst|cout~0_combout\ = (\B[39]~input_o\ & \A[39]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[39]~input_o\,
	datab => \ALT_INV_A[39]~input_o\,
	combout => \gen_adders:39:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X59_Y30_N32
\A[40]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(40),
	o => \A[40]~input_o\);

-- Location: IOIBUF_X59_Y28_N1
\B[40]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(40),
	o => \B[40]~input_o\);

-- Location: LABCELL_X58_Y30_N4
\gen_adders:39:FA_inst|cout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:39:FA_inst|cout~1_combout\ = (!\B[39]~input_o\ & !\A[39]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[39]~input_o\,
	datab => \ALT_INV_A[39]~input_o\,
	combout => \gen_adders:39:FA_inst|cout~1_combout\);

-- Location: LABCELL_X58_Y30_N28
\gen_adders:39:FA_inst|cout~2\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:39:FA_inst|cout~2_combout\ = ( \B[38]~input_o\ & ( \gen_adders:36:FA_inst|cout~0_combout\ & ( (!\gen_adders:39:FA_inst|cout~1_combout\ & (((\A[37]~input_o\ & \B[37]~input_o\)) # (\A[38]~input_o\))) ) ) ) # ( !\B[38]~input_o\ & ( 
-- \gen_adders:36:FA_inst|cout~0_combout\ & ( (\A[37]~input_o\ & (\A[38]~input_o\ & (!\gen_adders:39:FA_inst|cout~1_combout\ & \B[37]~input_o\))) ) ) ) # ( \B[38]~input_o\ & ( !\gen_adders:36:FA_inst|cout~0_combout\ & ( 
-- (!\gen_adders:39:FA_inst|cout~1_combout\ & (((\B[37]~input_o\) # (\A[38]~input_o\)) # (\A[37]~input_o\))) ) ) ) # ( !\B[38]~input_o\ & ( !\gen_adders:36:FA_inst|cout~0_combout\ & ( (\A[38]~input_o\ & (!\gen_adders:39:FA_inst|cout~1_combout\ & 
-- ((\B[37]~input_o\) # (\A[37]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000110000011100001111000000000000000100000011000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[37]~input_o\,
	datab => \ALT_INV_A[38]~input_o\,
	datac => \gen_adders:39:FA_inst|ALT_INV_cout~1_combout\,
	datad => \ALT_INV_B[37]~input_o\,
	datae => \ALT_INV_B[38]~input_o\,
	dataf => \gen_adders:36:FA_inst|ALT_INV_cout~0_combout\,
	combout => \gen_adders:39:FA_inst|cout~2_combout\);

-- Location: LABCELL_X58_Y30_N12
\gen_adders:40:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:40:FA_inst|sum~combout\ = ( \gen_adders:39:FA_inst|cout~2_combout\ & ( !\A[40]~input_o\ $ (\B[40]~input_o\) ) ) # ( !\gen_adders:39:FA_inst|cout~2_combout\ & ( !\gen_adders:39:FA_inst|cout~0_combout\ $ (!\A[40]~input_o\ $ (\B[40]~input_o\)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \gen_adders:39:FA_inst|ALT_INV_cout~0_combout\,
	datac => \ALT_INV_A[40]~input_o\,
	datad => \ALT_INV_B[40]~input_o\,
	dataf => \gen_adders:39:FA_inst|ALT_INV_cout~2_combout\,
	combout => \gen_adders:40:FA_inst|sum~combout\);

-- Location: IOIBUF_X59_Y28_N32
\A[41]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(41),
	o => \A[41]~input_o\);

-- Location: IOIBUF_X59_Y31_N1
\B[41]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(41),
	o => \B[41]~input_o\);

-- Location: LABCELL_X58_Y30_N38
\gen_adders:41:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:41:FA_inst|sum~combout\ = ( \A[40]~input_o\ & ( \B[41]~input_o\ & ( !\A[41]~input_o\ $ ((((\gen_adders:39:FA_inst|cout~2_combout\) # (\gen_adders:39:FA_inst|cout~0_combout\)) # (\B[40]~input_o\))) ) ) ) # ( !\A[40]~input_o\ & ( \B[41]~input_o\ 
-- & ( !\A[41]~input_o\ $ (((\B[40]~input_o\ & ((\gen_adders:39:FA_inst|cout~2_combout\) # (\gen_adders:39:FA_inst|cout~0_combout\))))) ) ) ) # ( \A[40]~input_o\ & ( !\B[41]~input_o\ & ( !\A[41]~input_o\ $ (((!\B[40]~input_o\ & 
-- (!\gen_adders:39:FA_inst|cout~0_combout\ & !\gen_adders:39:FA_inst|cout~2_combout\)))) ) ) ) # ( !\A[40]~input_o\ & ( !\B[41]~input_o\ & ( !\A[41]~input_o\ $ (((!\B[40]~input_o\) # ((!\gen_adders:39:FA_inst|cout~0_combout\ & 
-- !\gen_adders:39:FA_inst|cout~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111001011010011110001111000011100001101001011000011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[40]~input_o\,
	datab => \gen_adders:39:FA_inst|ALT_INV_cout~0_combout\,
	datac => \ALT_INV_A[41]~input_o\,
	datad => \gen_adders:39:FA_inst|ALT_INV_cout~2_combout\,
	datae => \ALT_INV_A[40]~input_o\,
	dataf => \ALT_INV_B[41]~input_o\,
	combout => \gen_adders:41:FA_inst|sum~combout\);

-- Location: IOIBUF_X59_Y28_N63
\B[42]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(42),
	o => \B[42]~input_o\);

-- Location: IOIBUF_X59_Y31_N94
\A[42]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(42),
	o => \A[42]~input_o\);

-- Location: LABCELL_X58_Y30_N20
\gen_adders:41:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:41:FA_inst|cout~0_combout\ = ( \A[40]~input_o\ & ( \B[41]~input_o\ & ( (!\B[40]~input_o\ & (!\gen_adders:39:FA_inst|cout~0_combout\ & (!\gen_adders:39:FA_inst|cout~2_combout\ & !\A[41]~input_o\))) ) ) ) # ( !\A[40]~input_o\ & ( \B[41]~input_o\ 
-- & ( (!\A[41]~input_o\ & ((!\B[40]~input_o\) # ((!\gen_adders:39:FA_inst|cout~0_combout\ & !\gen_adders:39:FA_inst|cout~2_combout\)))) ) ) ) # ( \A[40]~input_o\ & ( !\B[41]~input_o\ & ( (!\A[41]~input_o\) # ((!\B[40]~input_o\ & 
-- (!\gen_adders:39:FA_inst|cout~0_combout\ & !\gen_adders:39:FA_inst|cout~2_combout\))) ) ) ) # ( !\A[40]~input_o\ & ( !\B[41]~input_o\ & ( (!\B[40]~input_o\) # ((!\A[41]~input_o\) # ((!\gen_adders:39:FA_inst|cout~0_combout\ & 
-- !\gen_adders:39:FA_inst|cout~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101010111111111000000011101010000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[40]~input_o\,
	datab => \gen_adders:39:FA_inst|ALT_INV_cout~0_combout\,
	datac => \gen_adders:39:FA_inst|ALT_INV_cout~2_combout\,
	datad => \ALT_INV_A[41]~input_o\,
	datae => \ALT_INV_A[40]~input_o\,
	dataf => \ALT_INV_B[41]~input_o\,
	combout => \gen_adders:41:FA_inst|cout~0_combout\);

-- Location: LABCELL_X58_Y30_N14
\gen_adders:42:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:42:FA_inst|sum~combout\ = ( \gen_adders:41:FA_inst|cout~0_combout\ & ( !\B[42]~input_o\ $ (!\A[42]~input_o\) ) ) # ( !\gen_adders:41:FA_inst|cout~0_combout\ & ( !\B[42]~input_o\ $ (\A[42]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[42]~input_o\,
	datad => \ALT_INV_A[42]~input_o\,
	dataf => \gen_adders:41:FA_inst|ALT_INV_cout~0_combout\,
	combout => \gen_adders:42:FA_inst|sum~combout\);

-- Location: IOIBUF_X59_Y33_N94
\A[43]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(43),
	o => \A[43]~input_o\);

-- Location: IOIBUF_X59_Y26_N94
\B[43]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(43),
	o => \B[43]~input_o\);

-- Location: LABCELL_X58_Y30_N26
\gen_adders:42:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:42:FA_inst|cout~0_combout\ = ( \gen_adders:41:FA_inst|cout~0_combout\ & ( (\B[42]~input_o\ & \A[42]~input_o\) ) ) # ( !\gen_adders:41:FA_inst|cout~0_combout\ & ( (\A[42]~input_o\) # (\B[42]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[42]~input_o\,
	datad => \ALT_INV_A[42]~input_o\,
	dataf => \gen_adders:41:FA_inst|ALT_INV_cout~0_combout\,
	combout => \gen_adders:42:FA_inst|cout~0_combout\);

-- Location: LABCELL_X58_Y30_N8
\gen_adders:43:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:43:FA_inst|sum~combout\ = !\A[43]~input_o\ $ (!\B[43]~input_o\ $ (\gen_adders:42:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100101100110100110010110011010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[43]~input_o\,
	datab => \ALT_INV_B[43]~input_o\,
	datad => \gen_adders:42:FA_inst|ALT_INV_cout~0_combout\,
	combout => \gen_adders:43:FA_inst|sum~combout\);

-- Location: IOIBUF_X59_Y26_N1
\B[44]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(44),
	o => \B[44]~input_o\);

-- Location: IOIBUF_X59_Y30_N94
\A[44]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(44),
	o => \A[44]~input_o\);

-- Location: LABCELL_X58_Y30_N10
\gen_adders:44:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:44:FA_inst|sum~combout\ = ( \gen_adders:42:FA_inst|cout~0_combout\ & ( !\B[44]~input_o\ $ (!\A[44]~input_o\ $ (((\B[43]~input_o\) # (\A[43]~input_o\)))) ) ) # ( !\gen_adders:42:FA_inst|cout~0_combout\ & ( !\B[44]~input_o\ $ (!\A[44]~input_o\ $ 
-- (((\A[43]~input_o\ & \B[43]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111011100001000111101110000101111000100001110111100010000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[43]~input_o\,
	datab => \ALT_INV_B[43]~input_o\,
	datac => \ALT_INV_B[44]~input_o\,
	datad => \ALT_INV_A[44]~input_o\,
	dataf => \gen_adders:42:FA_inst|ALT_INV_cout~0_combout\,
	combout => \gen_adders:44:FA_inst|sum~combout\);

-- Location: IOIBUF_X59_Y36_N94
\B[45]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(45),
	o => \B[45]~input_o\);

-- Location: LABCELL_X58_Y30_N24
\gen_adders:44:FA_inst|cout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:44:FA_inst|cout~1_combout\ = ( !\B[44]~input_o\ & ( !\A[44]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[44]~input_o\,
	dataf => \ALT_INV_B[44]~input_o\,
	combout => \gen_adders:44:FA_inst|cout~1_combout\);

-- Location: LABCELL_X58_Y30_N18
\gen_adders:44:FA_inst|cout~2\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:44:FA_inst|cout~2_combout\ = ( \B[43]~input_o\ & ( \A[43]~input_o\ & ( !\gen_adders:44:FA_inst|cout~1_combout\ ) ) ) # ( !\B[43]~input_o\ & ( \A[43]~input_o\ & ( (!\gen_adders:44:FA_inst|cout~1_combout\ & 
-- ((!\gen_adders:41:FA_inst|cout~0_combout\ & ((\A[42]~input_o\) # (\B[42]~input_o\))) # (\gen_adders:41:FA_inst|cout~0_combout\ & (\B[42]~input_o\ & \A[42]~input_o\)))) ) ) ) # ( \B[43]~input_o\ & ( !\A[43]~input_o\ & ( 
-- (!\gen_adders:44:FA_inst|cout~1_combout\ & ((!\gen_adders:41:FA_inst|cout~0_combout\ & ((\A[42]~input_o\) # (\B[42]~input_o\))) # (\gen_adders:41:FA_inst|cout~0_combout\ & (\B[42]~input_o\ & \A[42]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001010110000000000101011000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:41:FA_inst|ALT_INV_cout~0_combout\,
	datab => \ALT_INV_B[42]~input_o\,
	datac => \ALT_INV_A[42]~input_o\,
	datad => \gen_adders:44:FA_inst|ALT_INV_cout~1_combout\,
	datae => \ALT_INV_B[43]~input_o\,
	dataf => \ALT_INV_A[43]~input_o\,
	combout => \gen_adders:44:FA_inst|cout~2_combout\);

-- Location: LABCELL_X58_Y30_N32
\gen_adders:44:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:44:FA_inst|cout~0_combout\ = (\B[44]~input_o\ & \A[44]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[44]~input_o\,
	datad => \ALT_INV_A[44]~input_o\,
	combout => \gen_adders:44:FA_inst|cout~0_combout\);

-- Location: LABCELL_X58_Y30_N34
\gen_adders:44:FA_inst|cout~3\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:44:FA_inst|cout~3_combout\ = (!\gen_adders:44:FA_inst|cout~2_combout\ & !\gen_adders:44:FA_inst|cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:44:FA_inst|ALT_INV_cout~2_combout\,
	datad => \gen_adders:44:FA_inst|ALT_INV_cout~0_combout\,
	combout => \gen_adders:44:FA_inst|cout~3_combout\);

-- Location: IOIBUF_X59_Y48_N1
\A[45]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(45),
	o => \A[45]~input_o\);

-- Location: LABCELL_X58_Y37_N22
\gen_adders:45:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:45:FA_inst|sum~combout\ = ( \gen_adders:44:FA_inst|cout~3_combout\ & ( \A[45]~input_o\ & ( !\B[45]~input_o\ ) ) ) # ( !\gen_adders:44:FA_inst|cout~3_combout\ & ( \A[45]~input_o\ & ( \B[45]~input_o\ ) ) ) # ( 
-- \gen_adders:44:FA_inst|cout~3_combout\ & ( !\A[45]~input_o\ & ( \B[45]~input_o\ ) ) ) # ( !\gen_adders:44:FA_inst|cout~3_combout\ & ( !\A[45]~input_o\ & ( !\B[45]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100001100110011001100110011001100111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[45]~input_o\,
	datae => \gen_adders:44:FA_inst|ALT_INV_cout~3_combout\,
	dataf => \ALT_INV_A[45]~input_o\,
	combout => \gen_adders:45:FA_inst|sum~combout\);

-- Location: IOIBUF_X59_Y36_N1
\B[46]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(46),
	o => \B[46]~input_o\);

-- Location: IOIBUF_X59_Y37_N32
\A[46]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(46),
	o => \A[46]~input_o\);

-- Location: LABCELL_X58_Y37_N26
\gen_adders:46:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:46:FA_inst|sum~combout\ = ( \A[46]~input_o\ & ( \A[45]~input_o\ & ( !\B[46]~input_o\ $ (((!\gen_adders:44:FA_inst|cout~3_combout\) # (\B[45]~input_o\))) ) ) ) # ( !\A[46]~input_o\ & ( \A[45]~input_o\ & ( !\B[46]~input_o\ $ (((!\B[45]~input_o\ 
-- & \gen_adders:44:FA_inst|cout~3_combout\))) ) ) ) # ( \A[46]~input_o\ & ( !\A[45]~input_o\ & ( !\B[46]~input_o\ $ (((\B[45]~input_o\ & !\gen_adders:44:FA_inst|cout~3_combout\))) ) ) ) # ( !\A[46]~input_o\ & ( !\A[45]~input_o\ & ( !\B[46]~input_o\ $ 
-- (((!\B[45]~input_o\) # (\gen_adders:44:FA_inst|cout~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010101100101100110101001101010100110101001100101100101011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[46]~input_o\,
	datab => \ALT_INV_B[45]~input_o\,
	datac => \gen_adders:44:FA_inst|ALT_INV_cout~3_combout\,
	datae => \ALT_INV_A[46]~input_o\,
	dataf => \ALT_INV_A[45]~input_o\,
	combout => \gen_adders:46:FA_inst|sum~combout\);

-- Location: IOIBUF_X59_Y37_N63
\A[47]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(47),
	o => \A[47]~input_o\);

-- Location: LABCELL_X58_Y37_N10
\gen_adders:46:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:46:FA_inst|cout~0_combout\ = ( \A[46]~input_o\ & ( \A[45]~input_o\ & ( (!\B[46]~input_o\ & (!\gen_adders:44:FA_inst|cout~2_combout\ & (!\B[45]~input_o\ & !\gen_adders:44:FA_inst|cout~0_combout\))) ) ) ) # ( !\A[46]~input_o\ & ( \A[45]~input_o\ 
-- & ( (!\B[46]~input_o\) # ((!\gen_adders:44:FA_inst|cout~2_combout\ & (!\B[45]~input_o\ & !\gen_adders:44:FA_inst|cout~0_combout\))) ) ) ) # ( \A[46]~input_o\ & ( !\A[45]~input_o\ & ( (!\B[46]~input_o\ & ((!\B[45]~input_o\) # 
-- ((!\gen_adders:44:FA_inst|cout~2_combout\ & !\gen_adders:44:FA_inst|cout~0_combout\)))) ) ) ) # ( !\A[46]~input_o\ & ( !\A[45]~input_o\ & ( (!\B[46]~input_o\) # ((!\B[45]~input_o\) # ((!\gen_adders:44:FA_inst|cout~2_combout\ & 
-- !\gen_adders:44:FA_inst|cout~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011111010101010001010000011101010101010101000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[46]~input_o\,
	datab => \gen_adders:44:FA_inst|ALT_INV_cout~2_combout\,
	datac => \ALT_INV_B[45]~input_o\,
	datad => \gen_adders:44:FA_inst|ALT_INV_cout~0_combout\,
	datae => \ALT_INV_A[46]~input_o\,
	dataf => \ALT_INV_A[45]~input_o\,
	combout => \gen_adders:46:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X59_Y39_N63
\B[47]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(47),
	o => \B[47]~input_o\);

-- Location: LABCELL_X58_Y37_N12
\gen_adders:47:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:47:FA_inst|sum~combout\ = !\A[47]~input_o\ $ (!\gen_adders:46:FA_inst|cout~0_combout\ $ (!\B[47]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100101100110100110010110011010011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[47]~input_o\,
	datab => \gen_adders:46:FA_inst|ALT_INV_cout~0_combout\,
	datad => \ALT_INV_B[47]~input_o\,
	combout => \gen_adders:47:FA_inst|sum~combout\);

-- Location: IOIBUF_X59_Y39_N94
\A[48]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(48),
	o => \A[48]~input_o\);

-- Location: IOIBUF_X59_Y34_N63
\B[48]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(48),
	o => \B[48]~input_o\);

-- Location: LABCELL_X58_Y37_N14
\gen_adders:48:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:48:FA_inst|sum~combout\ = ( \B[48]~input_o\ & ( !\A[48]~input_o\ $ (((!\A[47]~input_o\ & (!\gen_adders:46:FA_inst|cout~0_combout\ & \B[47]~input_o\)) # (\A[47]~input_o\ & ((!\gen_adders:46:FA_inst|cout~0_combout\) # (\B[47]~input_o\))))) ) ) # 
-- ( !\B[48]~input_o\ & ( !\A[48]~input_o\ $ (((!\A[47]~input_o\ & ((!\B[47]~input_o\) # (\gen_adders:46:FA_inst|cout~0_combout\))) # (\A[47]~input_o\ & (\gen_adders:46:FA_inst|cout~0_combout\ & !\B[47]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110110110010010011011011001010110010010011011011001001001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[47]~input_o\,
	datab => \gen_adders:46:FA_inst|ALT_INV_cout~0_combout\,
	datac => \ALT_INV_B[47]~input_o\,
	datad => \ALT_INV_A[48]~input_o\,
	dataf => \ALT_INV_B[48]~input_o\,
	combout => \gen_adders:48:FA_inst|sum~combout\);

-- Location: IOIBUF_X59_Y34_N94
\A[49]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(49),
	o => \A[49]~input_o\);

-- Location: IOIBUF_X59_Y39_N1
\B[49]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(49),
	o => \B[49]~input_o\);

-- Location: LABCELL_X58_Y37_N38
\gen_adders:49:FA_inst|sum~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:49:FA_inst|sum~0_combout\ = ( \B[49]~input_o\ & ( !\A[49]~input_o\ ) ) # ( !\B[49]~input_o\ & ( \A[49]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[49]~input_o\,
	dataf => \ALT_INV_B[49]~input_o\,
	combout => \gen_adders:49:FA_inst|sum~0_combout\);

-- Location: LABCELL_X58_Y37_N2
\gen_adders:49:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:49:FA_inst|sum~combout\ = ( \A[47]~input_o\ & ( \A[48]~input_o\ & ( !\gen_adders:49:FA_inst|sum~0_combout\ $ (((!\B[48]~input_o\ & (\gen_adders:46:FA_inst|cout~0_combout\ & !\B[47]~input_o\)))) ) ) ) # ( !\A[47]~input_o\ & ( \A[48]~input_o\ & 
-- ( !\gen_adders:49:FA_inst|sum~0_combout\ $ (((!\B[48]~input_o\ & ((!\B[47]~input_o\) # (\gen_adders:46:FA_inst|cout~0_combout\))))) ) ) ) # ( \A[47]~input_o\ & ( !\A[48]~input_o\ & ( !\gen_adders:49:FA_inst|sum~0_combout\ $ (((!\B[48]~input_o\) # 
-- ((\gen_adders:46:FA_inst|cout~0_combout\ & !\B[47]~input_o\)))) ) ) ) # ( !\A[47]~input_o\ & ( !\A[48]~input_o\ & ( !\gen_adders:49:FA_inst|sum~0_combout\ $ (((!\B[48]~input_o\) # ((!\B[47]~input_o\) # (\gen_adders:46:FA_inst|cout~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011111011010001011011101001011101101000101101111100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[48]~input_o\,
	datab => \gen_adders:46:FA_inst|ALT_INV_cout~0_combout\,
	datac => \ALT_INV_B[47]~input_o\,
	datad => \gen_adders:49:FA_inst|ALT_INV_sum~0_combout\,
	datae => \ALT_INV_A[47]~input_o\,
	dataf => \ALT_INV_A[48]~input_o\,
	combout => \gen_adders:49:FA_inst|sum~combout\);

-- Location: LABCELL_X58_Y37_N36
\gen_adders:49:FA_inst|cout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:49:FA_inst|cout~1_combout\ = ( !\B[49]~input_o\ & ( !\A[49]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[49]~input_o\,
	dataf => \ALT_INV_B[49]~input_o\,
	combout => \gen_adders:49:FA_inst|cout~1_combout\);

-- Location: LABCELL_X58_Y37_N28
\gen_adders:49:FA_inst|cout~2\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:49:FA_inst|cout~2_combout\ = ( !\gen_adders:49:FA_inst|cout~1_combout\ & ( \A[48]~input_o\ & ( ((!\A[47]~input_o\ & (!\gen_adders:46:FA_inst|cout~0_combout\ & \B[47]~input_o\)) # (\A[47]~input_o\ & ((!\gen_adders:46:FA_inst|cout~0_combout\) # 
-- (\B[47]~input_o\)))) # (\B[48]~input_o\) ) ) ) # ( !\gen_adders:49:FA_inst|cout~1_combout\ & ( !\A[48]~input_o\ & ( (\B[48]~input_o\ & ((!\A[47]~input_o\ & (!\gen_adders:46:FA_inst|cout~0_combout\ & \B[47]~input_o\)) # (\A[47]~input_o\ & 
-- ((!\gen_adders:46:FA_inst|cout~0_combout\) # (\B[47]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000001101000000000000000001001111110111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[47]~input_o\,
	datab => \gen_adders:46:FA_inst|ALT_INV_cout~0_combout\,
	datac => \ALT_INV_B[48]~input_o\,
	datad => \ALT_INV_B[47]~input_o\,
	datae => \gen_adders:49:FA_inst|ALT_INV_cout~1_combout\,
	dataf => \ALT_INV_A[48]~input_o\,
	combout => \gen_adders:49:FA_inst|cout~2_combout\);

-- Location: LABCELL_X58_Y37_N6
\gen_adders:49:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:49:FA_inst|cout~0_combout\ = ( \B[49]~input_o\ & ( \A[49]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[49]~input_o\,
	dataf => \ALT_INV_B[49]~input_o\,
	combout => \gen_adders:49:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X59_Y37_N1
\B[50]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(50),
	o => \B[50]~input_o\);

-- Location: IOIBUF_X59_Y37_N94
\A[50]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(50),
	o => \A[50]~input_o\);

-- Location: LABCELL_X58_Y37_N4
\gen_adders:50:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:50:FA_inst|sum~combout\ = ( \A[50]~input_o\ & ( !\B[50]~input_o\ $ (((\gen_adders:49:FA_inst|cout~0_combout\) # (\gen_adders:49:FA_inst|cout~2_combout\))) ) ) # ( !\A[50]~input_o\ & ( !\B[50]~input_o\ $ 
-- (((!\gen_adders:49:FA_inst|cout~2_combout\ & !\gen_adders:49:FA_inst|cout~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100001111000011110000111100010000111100001111000011110000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:49:FA_inst|ALT_INV_cout~2_combout\,
	datab => \gen_adders:49:FA_inst|ALT_INV_cout~0_combout\,
	datac => \ALT_INV_B[50]~input_o\,
	dataf => \ALT_INV_A[50]~input_o\,
	combout => \gen_adders:50:FA_inst|sum~combout\);

-- Location: IOIBUF_X59_Y46_N1
\A[51]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(51),
	o => \A[51]~input_o\);

-- Location: IOIBUF_X59_Y46_N94
\B[51]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(51),
	o => \B[51]~input_o\);

-- Location: LABCELL_X58_Y37_N34
\gen_adders:51:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:51:FA_inst|sum~combout\ = ( \B[51]~input_o\ & ( \gen_adders:49:FA_inst|cout~2_combout\ & ( !\A[51]~input_o\ $ (((\B[50]~input_o\) # (\A[50]~input_o\))) ) ) ) # ( !\B[51]~input_o\ & ( \gen_adders:49:FA_inst|cout~2_combout\ & ( !\A[51]~input_o\ 
-- $ (((!\A[50]~input_o\ & !\B[50]~input_o\))) ) ) ) # ( \B[51]~input_o\ & ( !\gen_adders:49:FA_inst|cout~2_combout\ & ( !\A[51]~input_o\ $ (((!\A[50]~input_o\ & (\gen_adders:49:FA_inst|cout~0_combout\ & \B[50]~input_o\)) # (\A[50]~input_o\ & 
-- ((\B[50]~input_o\) # (\gen_adders:49:FA_inst|cout~0_combout\))))) ) ) ) # ( !\B[51]~input_o\ & ( !\gen_adders:49:FA_inst|cout~2_combout\ & ( !\A[51]~input_o\ $ (((!\A[50]~input_o\ & ((!\gen_adders:49:FA_inst|cout~0_combout\) # (!\B[50]~input_o\))) # 
-- (\A[50]~input_o\ & (!\gen_adders:49:FA_inst|cout~0_combout\ & !\B[50]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111001111000111000011000011101011010111100001010010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[50]~input_o\,
	datab => \gen_adders:49:FA_inst|ALT_INV_cout~0_combout\,
	datac => \ALT_INV_A[51]~input_o\,
	datad => \ALT_INV_B[50]~input_o\,
	datae => \ALT_INV_B[51]~input_o\,
	dataf => \gen_adders:49:FA_inst|ALT_INV_cout~2_combout\,
	combout => \gen_adders:51:FA_inst|sum~combout\);

-- Location: IOIBUF_X38_Y56_N63
\B[52]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(52),
	o => \B[52]~input_o\);

-- Location: IOIBUF_X35_Y56_N94
\A[52]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(52),
	o => \A[52]~input_o\);

-- Location: LABCELL_X58_Y37_N16
\gen_adders:51:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:51:FA_inst|cout~0_combout\ = ( \B[51]~input_o\ & ( \gen_adders:49:FA_inst|cout~2_combout\ & ( (!\A[50]~input_o\ & (!\B[50]~input_o\ & !\A[51]~input_o\)) ) ) ) # ( !\B[51]~input_o\ & ( \gen_adders:49:FA_inst|cout~2_combout\ & ( 
-- (!\A[51]~input_o\) # ((!\A[50]~input_o\ & !\B[50]~input_o\)) ) ) ) # ( \B[51]~input_o\ & ( !\gen_adders:49:FA_inst|cout~2_combout\ & ( (!\A[51]~input_o\ & ((!\A[50]~input_o\ & ((!\gen_adders:49:FA_inst|cout~0_combout\) # (!\B[50]~input_o\))) # 
-- (\A[50]~input_o\ & (!\gen_adders:49:FA_inst|cout~0_combout\ & !\B[50]~input_o\)))) ) ) ) # ( !\B[51]~input_o\ & ( !\gen_adders:49:FA_inst|cout~2_combout\ & ( (!\A[51]~input_o\) # ((!\A[50]~input_o\ & ((!\gen_adders:49:FA_inst|cout~0_combout\) # 
-- (!\B[50]~input_o\))) # (\A[50]~input_o\ & (!\gen_adders:49:FA_inst|cout~0_combout\ & !\B[50]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101000111010000000000011111111101000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[50]~input_o\,
	datab => \gen_adders:49:FA_inst|ALT_INV_cout~0_combout\,
	datac => \ALT_INV_B[50]~input_o\,
	datad => \ALT_INV_A[51]~input_o\,
	datae => \ALT_INV_B[51]~input_o\,
	dataf => \gen_adders:49:FA_inst|ALT_INV_cout~2_combout\,
	combout => \gen_adders:51:FA_inst|cout~0_combout\);

-- Location: MLABCELL_X39_Y52_N20
\gen_adders:52:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:52:FA_inst|sum~combout\ = ( \A[52]~input_o\ & ( \gen_adders:51:FA_inst|cout~0_combout\ & ( !\B[52]~input_o\ ) ) ) # ( !\A[52]~input_o\ & ( \gen_adders:51:FA_inst|cout~0_combout\ & ( \B[52]~input_o\ ) ) ) # ( \A[52]~input_o\ & ( 
-- !\gen_adders:51:FA_inst|cout~0_combout\ & ( \B[52]~input_o\ ) ) ) # ( !\A[52]~input_o\ & ( !\gen_adders:51:FA_inst|cout~0_combout\ & ( !\B[52]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000011110000111100001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[52]~input_o\,
	datae => \ALT_INV_A[52]~input_o\,
	dataf => \gen_adders:51:FA_inst|ALT_INV_cout~0_combout\,
	combout => \gen_adders:52:FA_inst|sum~combout\);

-- Location: IOIBUF_X38_Y56_N1
\A[53]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(53),
	o => \A[53]~input_o\);

-- Location: IOIBUF_X36_Y56_N1
\B[53]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(53),
	o => \B[53]~input_o\);

-- Location: MLABCELL_X39_Y52_N4
\gen_adders:53:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:53:FA_inst|sum~combout\ = ( \B[53]~input_o\ & ( \gen_adders:51:FA_inst|cout~0_combout\ & ( !\A[53]~input_o\ $ (((\A[52]~input_o\ & \B[52]~input_o\))) ) ) ) # ( !\B[53]~input_o\ & ( \gen_adders:51:FA_inst|cout~0_combout\ & ( !\A[53]~input_o\ $ 
-- (((!\A[52]~input_o\) # (!\B[52]~input_o\))) ) ) ) # ( \B[53]~input_o\ & ( !\gen_adders:51:FA_inst|cout~0_combout\ & ( !\A[53]~input_o\ $ (((\B[52]~input_o\) # (\A[52]~input_o\))) ) ) ) # ( !\B[53]~input_o\ & ( !\gen_adders:51:FA_inst|cout~0_combout\ & ( 
-- !\A[53]~input_o\ $ (((!\A[52]~input_o\ & !\B[52]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111110100000101000000101111100000101111110101111101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[52]~input_o\,
	datac => \ALT_INV_B[52]~input_o\,
	datad => \ALT_INV_A[53]~input_o\,
	datae => \ALT_INV_B[53]~input_o\,
	dataf => \gen_adders:51:FA_inst|ALT_INV_cout~0_combout\,
	combout => \gen_adders:53:FA_inst|sum~combout\);

-- Location: IOIBUF_X33_Y56_N94
\B[54]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(54),
	o => \B[54]~input_o\);

-- Location: IOIBUF_X36_Y56_N32
\A[54]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(54),
	o => \A[54]~input_o\);

-- Location: MLABCELL_X39_Y52_N10
\gen_adders:54:FA_inst|sum~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:54:FA_inst|sum~0_combout\ = ( \A[54]~input_o\ & ( !\B[54]~input_o\ ) ) # ( !\A[54]~input_o\ & ( \B[54]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_B[54]~input_o\,
	dataf => \ALT_INV_A[54]~input_o\,
	combout => \gen_adders:54:FA_inst|sum~0_combout\);

-- Location: MLABCELL_X39_Y52_N34
\gen_adders:54:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:54:FA_inst|sum~combout\ = ( \B[53]~input_o\ & ( \gen_adders:51:FA_inst|cout~0_combout\ & ( !\gen_adders:54:FA_inst|sum~0_combout\ $ (((!\A[53]~input_o\ & ((!\B[52]~input_o\) # (!\A[52]~input_o\))))) ) ) ) # ( !\B[53]~input_o\ & ( 
-- \gen_adders:51:FA_inst|cout~0_combout\ & ( !\gen_adders:54:FA_inst|sum~0_combout\ $ (((!\B[52]~input_o\) # ((!\A[53]~input_o\) # (!\A[52]~input_o\)))) ) ) ) # ( \B[53]~input_o\ & ( !\gen_adders:51:FA_inst|cout~0_combout\ & ( 
-- !\gen_adders:54:FA_inst|sum~0_combout\ $ (((!\B[52]~input_o\ & (!\A[53]~input_o\ & !\A[52]~input_o\)))) ) ) ) # ( !\B[53]~input_o\ & ( !\gen_adders:51:FA_inst|cout~0_combout\ & ( !\gen_adders:54:FA_inst|sum~0_combout\ $ (((!\A[53]~input_o\) # 
-- ((!\B[52]~input_o\ & !\A[52]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111000111100011110001111000000001111000111100011110001111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[52]~input_o\,
	datab => \ALT_INV_A[53]~input_o\,
	datac => \gen_adders:54:FA_inst|ALT_INV_sum~0_combout\,
	datad => \ALT_INV_A[52]~input_o\,
	datae => \ALT_INV_B[53]~input_o\,
	dataf => \gen_adders:51:FA_inst|ALT_INV_cout~0_combout\,
	combout => \gen_adders:54:FA_inst|sum~combout\);

-- Location: MLABCELL_X39_Y52_N16
\gen_adders:54:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:54:FA_inst|cout~0_combout\ = ( \A[54]~input_o\ & ( \B[54]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[54]~input_o\,
	dataf => \ALT_INV_A[54]~input_o\,
	combout => \gen_adders:54:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X33_Y56_N63
\B[55]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(55),
	o => \B[55]~input_o\);

-- Location: IOIBUF_X36_Y56_N63
\A[55]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(55),
	o => \A[55]~input_o\);

-- Location: MLABCELL_X39_Y52_N2
\gen_adders:54:FA_inst|cout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:54:FA_inst|cout~1_combout\ = ( !\A[54]~input_o\ & ( !\B[54]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[54]~input_o\,
	dataf => \ALT_INV_A[54]~input_o\,
	combout => \gen_adders:54:FA_inst|cout~1_combout\);

-- Location: MLABCELL_X39_Y52_N24
\gen_adders:54:FA_inst|cout~2\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:54:FA_inst|cout~2_combout\ = ( \B[53]~input_o\ & ( \gen_adders:51:FA_inst|cout~0_combout\ & ( (!\gen_adders:54:FA_inst|cout~1_combout\ & (((\B[52]~input_o\ & \A[52]~input_o\)) # (\A[53]~input_o\))) ) ) ) # ( !\B[53]~input_o\ & ( 
-- \gen_adders:51:FA_inst|cout~0_combout\ & ( (\B[52]~input_o\ & (\A[53]~input_o\ & (\A[52]~input_o\ & !\gen_adders:54:FA_inst|cout~1_combout\))) ) ) ) # ( \B[53]~input_o\ & ( !\gen_adders:51:FA_inst|cout~0_combout\ & ( 
-- (!\gen_adders:54:FA_inst|cout~1_combout\ & (((\A[52]~input_o\) # (\A[53]~input_o\)) # (\B[52]~input_o\))) ) ) ) # ( !\B[53]~input_o\ & ( !\gen_adders:51:FA_inst|cout~0_combout\ & ( (\A[53]~input_o\ & (!\gen_adders:54:FA_inst|cout~1_combout\ & 
-- ((\A[52]~input_o\) # (\B[52]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100000000011111110000000000000001000000000011011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[52]~input_o\,
	datab => \ALT_INV_A[53]~input_o\,
	datac => \ALT_INV_A[52]~input_o\,
	datad => \gen_adders:54:FA_inst|ALT_INV_cout~1_combout\,
	datae => \ALT_INV_B[53]~input_o\,
	dataf => \gen_adders:51:FA_inst|ALT_INV_cout~0_combout\,
	combout => \gen_adders:54:FA_inst|cout~2_combout\);

-- Location: LABCELL_X40_Y52_N2
\gen_adders:55:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:55:FA_inst|sum~combout\ = ( \A[55]~input_o\ & ( \gen_adders:54:FA_inst|cout~2_combout\ & ( \B[55]~input_o\ ) ) ) # ( !\A[55]~input_o\ & ( \gen_adders:54:FA_inst|cout~2_combout\ & ( !\B[55]~input_o\ ) ) ) # ( \A[55]~input_o\ & ( 
-- !\gen_adders:54:FA_inst|cout~2_combout\ & ( !\gen_adders:54:FA_inst|cout~0_combout\ $ (\B[55]~input_o\) ) ) ) # ( !\A[55]~input_o\ & ( !\gen_adders:54:FA_inst|cout~2_combout\ & ( !\gen_adders:54:FA_inst|cout~0_combout\ $ (!\B[55]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100110011000011001111111111000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \gen_adders:54:FA_inst|ALT_INV_cout~0_combout\,
	datad => \ALT_INV_B[55]~input_o\,
	datae => \ALT_INV_A[55]~input_o\,
	dataf => \gen_adders:54:FA_inst|ALT_INV_cout~2_combout\,
	combout => \gen_adders:55:FA_inst|sum~combout\);

-- Location: IOIBUF_X40_Y56_N1
\A[56]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(56),
	o => \A[56]~input_o\);

-- Location: IOIBUF_X46_Y56_N94
\B[56]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(56),
	o => \B[56]~input_o\);

-- Location: LABCELL_X40_Y52_N24
\gen_adders:56:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:56:FA_inst|sum~combout\ = ( \A[55]~input_o\ & ( \B[56]~input_o\ & ( !\A[56]~input_o\ $ ((((\B[55]~input_o\) # (\gen_adders:54:FA_inst|cout~0_combout\)) # (\gen_adders:54:FA_inst|cout~2_combout\))) ) ) ) # ( !\A[55]~input_o\ & ( \B[56]~input_o\ 
-- & ( !\A[56]~input_o\ $ (((\B[55]~input_o\ & ((\gen_adders:54:FA_inst|cout~0_combout\) # (\gen_adders:54:FA_inst|cout~2_combout\))))) ) ) ) # ( \A[55]~input_o\ & ( !\B[56]~input_o\ & ( !\A[56]~input_o\ $ (((!\gen_adders:54:FA_inst|cout~2_combout\ & 
-- (!\gen_adders:54:FA_inst|cout~0_combout\ & !\B[55]~input_o\)))) ) ) ) # ( !\A[55]~input_o\ & ( !\B[56]~input_o\ & ( !\A[56]~input_o\ $ (((!\B[55]~input_o\) # ((!\gen_adders:54:FA_inst|cout~2_combout\ & !\gen_adders:54:FA_inst|cout~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011111111000011111111000000011111000000001111000000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:54:FA_inst|ALT_INV_cout~2_combout\,
	datab => \gen_adders:54:FA_inst|ALT_INV_cout~0_combout\,
	datac => \ALT_INV_B[55]~input_o\,
	datad => \ALT_INV_A[56]~input_o\,
	datae => \ALT_INV_A[55]~input_o\,
	dataf => \ALT_INV_B[56]~input_o\,
	combout => \gen_adders:56:FA_inst|sum~combout\);

-- Location: LABCELL_X40_Y52_N28
\gen_adders:56:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:56:FA_inst|cout~0_combout\ = ( \A[55]~input_o\ & ( \B[56]~input_o\ & ( (!\gen_adders:54:FA_inst|cout~2_combout\ & (!\gen_adders:54:FA_inst|cout~0_combout\ & (!\B[55]~input_o\ & !\A[56]~input_o\))) ) ) ) # ( !\A[55]~input_o\ & ( \B[56]~input_o\ 
-- & ( (!\A[56]~input_o\ & ((!\B[55]~input_o\) # ((!\gen_adders:54:FA_inst|cout~2_combout\ & !\gen_adders:54:FA_inst|cout~0_combout\)))) ) ) ) # ( \A[55]~input_o\ & ( !\B[56]~input_o\ & ( (!\A[56]~input_o\) # ((!\gen_adders:54:FA_inst|cout~2_combout\ & 
-- (!\gen_adders:54:FA_inst|cout~0_combout\ & !\B[55]~input_o\))) ) ) ) # ( !\A[55]~input_o\ & ( !\B[56]~input_o\ & ( (!\B[55]~input_o\) # ((!\A[56]~input_o\) # ((!\gen_adders:54:FA_inst|cout~2_combout\ & !\gen_adders:54:FA_inst|cout~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111000111111111000000011111000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:54:FA_inst|ALT_INV_cout~2_combout\,
	datab => \gen_adders:54:FA_inst|ALT_INV_cout~0_combout\,
	datac => \ALT_INV_B[55]~input_o\,
	datad => \ALT_INV_A[56]~input_o\,
	datae => \ALT_INV_A[55]~input_o\,
	dataf => \ALT_INV_B[56]~input_o\,
	combout => \gen_adders:56:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X44_Y56_N1
\B[57]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(57),
	o => \B[57]~input_o\);

-- Location: IOIBUF_X46_Y56_N63
\A[57]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(57),
	o => \A[57]~input_o\);

-- Location: LABCELL_X40_Y52_N32
\gen_adders:57:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:57:FA_inst|sum~combout\ = ( \A[57]~input_o\ & ( !\gen_adders:56:FA_inst|cout~0_combout\ $ (!\B[57]~input_o\) ) ) # ( !\A[57]~input_o\ & ( !\gen_adders:56:FA_inst|cout~0_combout\ $ (\B[57]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001010101101010100101010101010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:56:FA_inst|ALT_INV_cout~0_combout\,
	datad => \ALT_INV_B[57]~input_o\,
	dataf => \ALT_INV_A[57]~input_o\,
	combout => \gen_adders:57:FA_inst|sum~combout\);

-- Location: IOIBUF_X35_Y56_N63
\A[58]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(58),
	o => \A[58]~input_o\);

-- Location: IOIBUF_X40_Y56_N94
\B[58]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(58),
	o => \B[58]~input_o\);

-- Location: LABCELL_X40_Y52_N34
\gen_adders:58:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:58:FA_inst|sum~combout\ = ( \B[58]~input_o\ & ( !\A[58]~input_o\ $ (((!\gen_adders:56:FA_inst|cout~0_combout\ & ((\B[57]~input_o\) # (\A[57]~input_o\))) # (\gen_adders:56:FA_inst|cout~0_combout\ & (\A[57]~input_o\ & \B[57]~input_o\)))) ) ) # ( 
-- !\B[58]~input_o\ & ( !\A[58]~input_o\ $ (((!\gen_adders:56:FA_inst|cout~0_combout\ & (!\A[57]~input_o\ & !\B[57]~input_o\)) # (\gen_adders:56:FA_inst|cout~0_combout\ & ((!\A[57]~input_o\) # (!\B[57]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010110110110100001011011011010011010010010010111101001001001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:56:FA_inst|ALT_INV_cout~0_combout\,
	datab => \ALT_INV_A[57]~input_o\,
	datac => \ALT_INV_A[58]~input_o\,
	datad => \ALT_INV_B[57]~input_o\,
	dataf => \ALT_INV_B[58]~input_o\,
	combout => \gen_adders:58:FA_inst|sum~combout\);

-- Location: IOIBUF_X44_Y56_N63
\B[59]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(59),
	o => \B[59]~input_o\);

-- Location: IOIBUF_X42_Y56_N63
\A[59]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(59),
	o => \A[59]~input_o\);

-- Location: LABCELL_X40_Y52_N18
\gen_adders:59:FA_inst|sum~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:59:FA_inst|sum~0_combout\ = !\B[59]~input_o\ $ (!\A[59]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[59]~input_o\,
	datab => \ALT_INV_A[59]~input_o\,
	combout => \gen_adders:59:FA_inst|sum~0_combout\);

-- Location: LABCELL_X40_Y52_N22
\gen_adders:59:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:59:FA_inst|sum~combout\ = ( \gen_adders:59:FA_inst|sum~0_combout\ & ( \A[57]~input_o\ & ( (!\B[58]~input_o\ & ((!\A[58]~input_o\) # ((!\B[57]~input_o\ & \gen_adders:56:FA_inst|cout~0_combout\)))) # (\B[58]~input_o\ & (!\A[58]~input_o\ & 
-- (!\B[57]~input_o\ & \gen_adders:56:FA_inst|cout~0_combout\))) ) ) ) # ( !\gen_adders:59:FA_inst|sum~0_combout\ & ( \A[57]~input_o\ & ( (!\B[58]~input_o\ & (\A[58]~input_o\ & ((!\gen_adders:56:FA_inst|cout~0_combout\) # (\B[57]~input_o\)))) # 
-- (\B[58]~input_o\ & (((!\gen_adders:56:FA_inst|cout~0_combout\) # (\B[57]~input_o\)) # (\A[58]~input_o\))) ) ) ) # ( \gen_adders:59:FA_inst|sum~0_combout\ & ( !\A[57]~input_o\ & ( (!\B[58]~input_o\ & ((!\A[58]~input_o\) # ((!\B[57]~input_o\) # 
-- (\gen_adders:56:FA_inst|cout~0_combout\)))) # (\B[58]~input_o\ & (!\A[58]~input_o\ & ((!\B[57]~input_o\) # (\gen_adders:56:FA_inst|cout~0_combout\)))) ) ) ) # ( !\gen_adders:59:FA_inst|sum~0_combout\ & ( !\A[57]~input_o\ & ( (!\B[58]~input_o\ & 
-- (\A[58]~input_o\ & (\B[57]~input_o\ & !\gen_adders:56:FA_inst|cout~0_combout\))) # (\B[58]~input_o\ & (((\B[57]~input_o\ & !\gen_adders:56:FA_inst|cout~0_combout\)) # (\A[58]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010001111010001110111001110111000101111000100011101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[58]~input_o\,
	datab => \ALT_INV_A[58]~input_o\,
	datac => \ALT_INV_B[57]~input_o\,
	datad => \gen_adders:56:FA_inst|ALT_INV_cout~0_combout\,
	datae => \gen_adders:59:FA_inst|ALT_INV_sum~0_combout\,
	dataf => \ALT_INV_A[57]~input_o\,
	combout => \gen_adders:59:FA_inst|sum~combout\);

-- Location: IOIBUF_X40_Y56_N63
\B[60]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(60),
	o => \B[60]~input_o\);

-- Location: LABCELL_X40_Y52_N4
\gen_adders:59:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:59:FA_inst|cout~0_combout\ = ( \A[59]~input_o\ & ( \B[59]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[59]~input_o\,
	dataf => \ALT_INV_A[59]~input_o\,
	combout => \gen_adders:59:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X44_Y56_N32
\A[60]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(60),
	o => \A[60]~input_o\);

-- Location: LABCELL_X40_Y52_N16
\gen_adders:59:FA_inst|cout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:59:FA_inst|cout~1_combout\ = (!\B[59]~input_o\ & !\A[59]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[59]~input_o\,
	datab => \ALT_INV_A[59]~input_o\,
	combout => \gen_adders:59:FA_inst|cout~1_combout\);

-- Location: LABCELL_X40_Y52_N10
\gen_adders:59:FA_inst|cout~2\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:59:FA_inst|cout~2_combout\ = ( \B[57]~input_o\ & ( \A[57]~input_o\ & ( (!\gen_adders:59:FA_inst|cout~1_combout\ & ((\A[58]~input_o\) # (\B[58]~input_o\))) ) ) ) # ( !\B[57]~input_o\ & ( \A[57]~input_o\ & ( 
-- (!\gen_adders:59:FA_inst|cout~1_combout\ & ((!\B[58]~input_o\ & (\A[58]~input_o\ & !\gen_adders:56:FA_inst|cout~0_combout\)) # (\B[58]~input_o\ & ((!\gen_adders:56:FA_inst|cout~0_combout\) # (\A[58]~input_o\))))) ) ) ) # ( \B[57]~input_o\ & ( 
-- !\A[57]~input_o\ & ( (!\gen_adders:59:FA_inst|cout~1_combout\ & ((!\B[58]~input_o\ & (\A[58]~input_o\ & !\gen_adders:56:FA_inst|cout~0_combout\)) # (\B[58]~input_o\ & ((!\gen_adders:56:FA_inst|cout~0_combout\) # (\A[58]~input_o\))))) ) ) ) # ( 
-- !\B[57]~input_o\ & ( !\A[57]~input_o\ & ( (\B[58]~input_o\ & (\A[58]~input_o\ & !\gen_adders:59:FA_inst|cout~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000011100000001000001110000000100000111000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[58]~input_o\,
	datab => \ALT_INV_A[58]~input_o\,
	datac => \gen_adders:59:FA_inst|ALT_INV_cout~1_combout\,
	datad => \gen_adders:56:FA_inst|ALT_INV_cout~0_combout\,
	datae => \ALT_INV_B[57]~input_o\,
	dataf => \ALT_INV_A[57]~input_o\,
	combout => \gen_adders:59:FA_inst|cout~2_combout\);

-- Location: LABCELL_X40_Y52_N6
\gen_adders:60:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:60:FA_inst|sum~combout\ = ( \gen_adders:59:FA_inst|cout~2_combout\ & ( !\B[60]~input_o\ $ (\A[60]~input_o\) ) ) # ( !\gen_adders:59:FA_inst|cout~2_combout\ & ( !\B[60]~input_o\ $ (!\gen_adders:59:FA_inst|cout~0_combout\ $ (\A[60]~input_o\)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110101010010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[60]~input_o\,
	datac => \gen_adders:59:FA_inst|ALT_INV_cout~0_combout\,
	datad => \ALT_INV_A[60]~input_o\,
	dataf => \gen_adders:59:FA_inst|ALT_INV_cout~2_combout\,
	combout => \gen_adders:60:FA_inst|sum~combout\);

-- Location: IOIBUF_X40_Y56_N32
\A[61]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(61),
	o => \A[61]~input_o\);

-- Location: IOIBUF_X42_Y56_N32
\B[61]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(61),
	o => \B[61]~input_o\);

-- Location: LABCELL_X40_Y52_N12
\gen_adders:61:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:61:FA_inst|sum~combout\ = ( \A[60]~input_o\ & ( \gen_adders:59:FA_inst|cout~2_combout\ & ( !\A[61]~input_o\ $ (\B[61]~input_o\) ) ) ) # ( !\A[60]~input_o\ & ( \gen_adders:59:FA_inst|cout~2_combout\ & ( !\B[60]~input_o\ $ (!\A[61]~input_o\ $ 
-- (\B[61]~input_o\)) ) ) ) # ( \A[60]~input_o\ & ( !\gen_adders:59:FA_inst|cout~2_combout\ & ( !\A[61]~input_o\ $ (!\B[61]~input_o\ $ (((\gen_adders:59:FA_inst|cout~0_combout\) # (\B[60]~input_o\)))) ) ) ) # ( !\A[60]~input_o\ & ( 
-- !\gen_adders:59:FA_inst|cout~2_combout\ & ( !\A[61]~input_o\ $ (!\B[61]~input_o\ $ (((\B[60]~input_o\ & \gen_adders:59:FA_inst|cout~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111011100001011110001000011101011010101001011111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[60]~input_o\,
	datab => \gen_adders:59:FA_inst|ALT_INV_cout~0_combout\,
	datac => \ALT_INV_A[61]~input_o\,
	datad => \ALT_INV_B[61]~input_o\,
	datae => \ALT_INV_A[60]~input_o\,
	dataf => \gen_adders:59:FA_inst|ALT_INV_cout~2_combout\,
	combout => \gen_adders:61:FA_inst|sum~combout\);

-- Location: IOIBUF_X59_Y22_N94
\B[62]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(62),
	o => \B[62]~input_o\);

-- Location: LABCELL_X40_Y52_N38
\gen_adders:61:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:61:FA_inst|cout~0_combout\ = ( \A[60]~input_o\ & ( \gen_adders:59:FA_inst|cout~2_combout\ & ( (!\B[61]~input_o\ & !\A[61]~input_o\) ) ) ) # ( !\A[60]~input_o\ & ( \gen_adders:59:FA_inst|cout~2_combout\ & ( (!\B[60]~input_o\ & 
-- ((!\B[61]~input_o\) # (!\A[61]~input_o\))) # (\B[60]~input_o\ & (!\B[61]~input_o\ & !\A[61]~input_o\)) ) ) ) # ( \A[60]~input_o\ & ( !\gen_adders:59:FA_inst|cout~2_combout\ & ( (!\B[61]~input_o\ & ((!\A[61]~input_o\) # ((!\B[60]~input_o\ & 
-- !\gen_adders:59:FA_inst|cout~0_combout\)))) # (\B[61]~input_o\ & (!\B[60]~input_o\ & (!\gen_adders:59:FA_inst|cout~0_combout\ & !\A[61]~input_o\))) ) ) ) # ( !\A[60]~input_o\ & ( !\gen_adders:59:FA_inst|cout~2_combout\ & ( (!\B[61]~input_o\ & 
-- ((!\B[60]~input_o\) # ((!\gen_adders:59:FA_inst|cout~0_combout\) # (!\A[61]~input_o\)))) # (\B[61]~input_o\ & (!\A[61]~input_o\ & ((!\B[60]~input_o\) # (!\gen_adders:59:FA_inst|cout~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011100000111110001000000011111010101000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[60]~input_o\,
	datab => \gen_adders:59:FA_inst|ALT_INV_cout~0_combout\,
	datac => \ALT_INV_B[61]~input_o\,
	datad => \ALT_INV_A[61]~input_o\,
	datae => \ALT_INV_A[60]~input_o\,
	dataf => \gen_adders:59:FA_inst|ALT_INV_cout~2_combout\,
	combout => \gen_adders:61:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X59_Y25_N1
\A[62]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(62),
	o => \A[62]~input_o\);

-- Location: LABCELL_X58_Y23_N2
\gen_adders:62:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:62:FA_inst|sum~combout\ = ( \gen_adders:61:FA_inst|cout~0_combout\ & ( \A[62]~input_o\ & ( !\B[62]~input_o\ ) ) ) # ( !\gen_adders:61:FA_inst|cout~0_combout\ & ( \A[62]~input_o\ & ( \B[62]~input_o\ ) ) ) # ( 
-- \gen_adders:61:FA_inst|cout~0_combout\ & ( !\A[62]~input_o\ & ( \B[62]~input_o\ ) ) ) # ( !\gen_adders:61:FA_inst|cout~0_combout\ & ( !\A[62]~input_o\ & ( !\B[62]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100001100110011001100110011001100111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[62]~input_o\,
	datae => \gen_adders:61:FA_inst|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_A[62]~input_o\,
	combout => \gen_adders:62:FA_inst|sum~combout\);

-- Location: IOIBUF_X59_Y23_N63
\B[63]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(63),
	o => \B[63]~input_o\);

-- Location: IOIBUF_X59_Y21_N1
\A[63]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(63),
	o => \A[63]~input_o\);

-- Location: LABCELL_X58_Y23_N6
\gen_adders:63:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:63:FA_inst|sum~combout\ = ( \gen_adders:61:FA_inst|cout~0_combout\ & ( \A[62]~input_o\ & ( !\B[63]~input_o\ $ (!\B[62]~input_o\ $ (\A[63]~input_o\)) ) ) ) # ( !\gen_adders:61:FA_inst|cout~0_combout\ & ( \A[62]~input_o\ & ( !\B[63]~input_o\ $ 
-- (\A[63]~input_o\) ) ) ) # ( \gen_adders:61:FA_inst|cout~0_combout\ & ( !\A[62]~input_o\ & ( !\B[63]~input_o\ $ (!\A[63]~input_o\) ) ) ) # ( !\gen_adders:61:FA_inst|cout~0_combout\ & ( !\A[62]~input_o\ & ( !\B[63]~input_o\ $ (!\B[62]~input_o\ $ 
-- (\A[63]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001010110100101101010100101101001010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[63]~input_o\,
	datab => \ALT_INV_B[62]~input_o\,
	datac => \ALT_INV_A[63]~input_o\,
	datae => \gen_adders:61:FA_inst|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_A[62]~input_o\,
	combout => \gen_adders:63:FA_inst|sum~combout\);

-- Location: LABCELL_X58_Y23_N10
\gen_adders:63:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \gen_adders:63:FA_inst|cout~0_combout\ = ( \gen_adders:61:FA_inst|cout~0_combout\ & ( \A[62]~input_o\ & ( (!\A[63]~input_o\ & (\B[62]~input_o\ & \B[63]~input_o\)) # (\A[63]~input_o\ & ((\B[63]~input_o\) # (\B[62]~input_o\))) ) ) ) # ( 
-- !\gen_adders:61:FA_inst|cout~0_combout\ & ( \A[62]~input_o\ & ( (\B[63]~input_o\) # (\A[63]~input_o\) ) ) ) # ( \gen_adders:61:FA_inst|cout~0_combout\ & ( !\A[62]~input_o\ & ( (\A[63]~input_o\ & \B[63]~input_o\) ) ) ) # ( 
-- !\gen_adders:61:FA_inst|cout~0_combout\ & ( !\A[62]~input_o\ & ( (!\A[63]~input_o\ & (\B[62]~input_o\ & \B[63]~input_o\)) # (\A[63]~input_o\ & ((\B[63]~input_o\) # (\B[62]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000000011001100110011111111110000001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[63]~input_o\,
	datac => \ALT_INV_B[62]~input_o\,
	datad => \ALT_INV_B[63]~input_o\,
	datae => \gen_adders:61:FA_inst|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_A[62]~input_o\,
	combout => \gen_adders:63:FA_inst|cout~0_combout\);

-- Location: LABCELL_X58_Y23_N34
\Ovfl~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = ( \gen_adders:61:FA_inst|cout~0_combout\ & ( \A[62]~input_o\ & ( (!\B[63]~input_o\ & (\B[62]~input_o\ & !\A[63]~input_o\)) # (\B[63]~input_o\ & (!\B[62]~input_o\ & \A[63]~input_o\)) ) ) ) # ( !\gen_adders:61:FA_inst|cout~0_combout\ & ( 
-- \A[62]~input_o\ & ( (!\B[63]~input_o\ & !\A[63]~input_o\) ) ) ) # ( \gen_adders:61:FA_inst|cout~0_combout\ & ( !\A[62]~input_o\ & ( (\B[63]~input_o\ & \A[63]~input_o\) ) ) ) # ( !\gen_adders:61:FA_inst|cout~0_combout\ & ( !\A[62]~input_o\ & ( 
-- (!\B[63]~input_o\ & (\B[62]~input_o\ & !\A[63]~input_o\)) # (\B[63]~input_o\ & (!\B[62]~input_o\ & \A[63]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010000100100000001010000010110100000101000000010010000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[63]~input_o\,
	datab => \ALT_INV_B[62]~input_o\,
	datac => \ALT_INV_A[63]~input_o\,
	datae => \gen_adders:61:FA_inst|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_A[62]~input_o\,
	combout => \Ovfl~0_combout\);

ww_Sum(0) <= \Sum[0]~output_o\;

ww_Sum(1) <= \Sum[1]~output_o\;

ww_Sum(2) <= \Sum[2]~output_o\;

ww_Sum(3) <= \Sum[3]~output_o\;

ww_Sum(4) <= \Sum[4]~output_o\;

ww_Sum(5) <= \Sum[5]~output_o\;

ww_Sum(6) <= \Sum[6]~output_o\;

ww_Sum(7) <= \Sum[7]~output_o\;

ww_Sum(8) <= \Sum[8]~output_o\;

ww_Sum(9) <= \Sum[9]~output_o\;

ww_Sum(10) <= \Sum[10]~output_o\;

ww_Sum(11) <= \Sum[11]~output_o\;

ww_Sum(12) <= \Sum[12]~output_o\;

ww_Sum(13) <= \Sum[13]~output_o\;

ww_Sum(14) <= \Sum[14]~output_o\;

ww_Sum(15) <= \Sum[15]~output_o\;

ww_Sum(16) <= \Sum[16]~output_o\;

ww_Sum(17) <= \Sum[17]~output_o\;

ww_Sum(18) <= \Sum[18]~output_o\;

ww_Sum(19) <= \Sum[19]~output_o\;

ww_Sum(20) <= \Sum[20]~output_o\;

ww_Sum(21) <= \Sum[21]~output_o\;

ww_Sum(22) <= \Sum[22]~output_o\;

ww_Sum(23) <= \Sum[23]~output_o\;

ww_Sum(24) <= \Sum[24]~output_o\;

ww_Sum(25) <= \Sum[25]~output_o\;

ww_Sum(26) <= \Sum[26]~output_o\;

ww_Sum(27) <= \Sum[27]~output_o\;

ww_Sum(28) <= \Sum[28]~output_o\;

ww_Sum(29) <= \Sum[29]~output_o\;

ww_Sum(30) <= \Sum[30]~output_o\;

ww_Sum(31) <= \Sum[31]~output_o\;

ww_Sum(32) <= \Sum[32]~output_o\;

ww_Sum(33) <= \Sum[33]~output_o\;

ww_Sum(34) <= \Sum[34]~output_o\;

ww_Sum(35) <= \Sum[35]~output_o\;

ww_Sum(36) <= \Sum[36]~output_o\;

ww_Sum(37) <= \Sum[37]~output_o\;

ww_Sum(38) <= \Sum[38]~output_o\;

ww_Sum(39) <= \Sum[39]~output_o\;

ww_Sum(40) <= \Sum[40]~output_o\;

ww_Sum(41) <= \Sum[41]~output_o\;

ww_Sum(42) <= \Sum[42]~output_o\;

ww_Sum(43) <= \Sum[43]~output_o\;

ww_Sum(44) <= \Sum[44]~output_o\;

ww_Sum(45) <= \Sum[45]~output_o\;

ww_Sum(46) <= \Sum[46]~output_o\;

ww_Sum(47) <= \Sum[47]~output_o\;

ww_Sum(48) <= \Sum[48]~output_o\;

ww_Sum(49) <= \Sum[49]~output_o\;

ww_Sum(50) <= \Sum[50]~output_o\;

ww_Sum(51) <= \Sum[51]~output_o\;

ww_Sum(52) <= \Sum[52]~output_o\;

ww_Sum(53) <= \Sum[53]~output_o\;

ww_Sum(54) <= \Sum[54]~output_o\;

ww_Sum(55) <= \Sum[55]~output_o\;

ww_Sum(56) <= \Sum[56]~output_o\;

ww_Sum(57) <= \Sum[57]~output_o\;

ww_Sum(58) <= \Sum[58]~output_o\;

ww_Sum(59) <= \Sum[59]~output_o\;

ww_Sum(60) <= \Sum[60]~output_o\;

ww_Sum(61) <= \Sum[61]~output_o\;

ww_Sum(62) <= \Sum[62]~output_o\;

ww_Sum(63) <= \Sum[63]~output_o\;

ww_Cout <= \Cout~output_o\;

ww_Ovfl <= \Ovfl~output_o\;
END structure;


