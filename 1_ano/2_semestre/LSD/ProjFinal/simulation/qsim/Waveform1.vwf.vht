-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/29/2023 15:29:57"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          TimerTSM
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY TimerTSM_vhd_vec_tst IS
END TimerTSM_vhd_vec_tst;
ARCHITECTURE TimerTSM_arch OF TimerTSM_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL newTime : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL timeExp : STD_LOGIC;
SIGNAL timerEnable : STD_LOGIC;
SIGNAL timeVal : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT TimerTSM
	PORT (
	clk : IN STD_LOGIC;
	newTime : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	timeExp : OUT STD_LOGIC;
	timerEnable : IN STD_LOGIC;
	timeVal : IN STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : TimerTSM
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	newTime => newTime,
	reset => reset,
	timeExp => timeExp,
	timerEnable => timerEnable,
	timeVal => timeVal
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- newTime
t_prcs_newTime: PROCESS
BEGIN
	newTime <= '0';
WAIT;
END PROCESS t_prcs_newTime;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
	WAIT FOR 580000 ps;
	reset <= '1';
	WAIT FOR 50000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- timerEnable
t_prcs_timerEnable: PROCESS
BEGIN
	timerEnable <= '1';
	WAIT FOR 840000 ps;
	timerEnable <= '0';
WAIT;
END PROCESS t_prcs_timerEnable;
-- timeVal[7]
t_prcs_timeVal_7: PROCESS
BEGIN
	timeVal(7) <= '0';
WAIT;
END PROCESS t_prcs_timeVal_7;
-- timeVal[6]
t_prcs_timeVal_6: PROCESS
BEGIN
	timeVal(6) <= '0';
WAIT;
END PROCESS t_prcs_timeVal_6;
-- timeVal[5]
t_prcs_timeVal_5: PROCESS
BEGIN
	timeVal(5) <= '0';
WAIT;
END PROCESS t_prcs_timeVal_5;
-- timeVal[4]
t_prcs_timeVal_4: PROCESS
BEGIN
	timeVal(4) <= '0';
WAIT;
END PROCESS t_prcs_timeVal_4;
-- timeVal[3]
t_prcs_timeVal_3: PROCESS
BEGIN
	timeVal(3) <= '0';
WAIT;
END PROCESS t_prcs_timeVal_3;
-- timeVal[2]
t_prcs_timeVal_2: PROCESS
BEGIN
	timeVal(2) <= '0';
WAIT;
END PROCESS t_prcs_timeVal_2;
-- timeVal[1]
t_prcs_timeVal_1: PROCESS
BEGIN
	timeVal(1) <= '0';
WAIT;
END PROCESS t_prcs_timeVal_1;
-- timeVal[0]
t_prcs_timeVal_0: PROCESS
BEGIN
	timeVal(0) <= '0';
WAIT;
END PROCESS t_prcs_timeVal_0;
END TimerTSM_arch;
