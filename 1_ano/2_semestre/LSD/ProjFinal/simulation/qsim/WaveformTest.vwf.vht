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
-- Generated on "05/30/2023 19:08:46"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Schematic
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Schematic_vhd_vec_tst IS
END Schematic_vhd_vec_tst;
ARCHITECTURE Schematic_arch OF Schematic_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL HEX0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL LEDR : STD_LOGIC_VECTOR(0 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL start_stop : STD_LOGIC;
SIGNAL SW : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL time_repouso : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT Schematic
	PORT (
	clk : IN STD_LOGIC;
	HEX0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	LEDR : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
	reset : IN STD_LOGIC;
	start_stop : IN STD_LOGIC;
	SW : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	time_repouso : IN STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Schematic
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	HEX0 => HEX0,
	HEX1 => HEX1,
	LEDR => LEDR,
	reset => reset,
	start_stop => start_stop,
	SW => SW,
	time_repouso => time_repouso
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

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- start_stop
t_prcs_start_stop: PROCESS
BEGIN
	start_stop <= '1';
WAIT;
END PROCESS t_prcs_start_stop;
-- SW[3]
t_prcs_SW_3: PROCESS
BEGIN
	SW(3) <= '0';
WAIT;
END PROCESS t_prcs_SW_3;
-- SW[2]
t_prcs_SW_2: PROCESS
BEGIN
	SW(2) <= '0';
WAIT;
END PROCESS t_prcs_SW_2;
-- SW[1]
t_prcs_SW_1: PROCESS
BEGIN
	SW(1) <= '0';
WAIT;
END PROCESS t_prcs_SW_1;
-- SW[0]
t_prcs_SW_0: PROCESS
BEGIN
	SW(0) <= '1';
WAIT;
END PROCESS t_prcs_SW_0;
-- time_repouso[7]
t_prcs_time_repouso_7: PROCESS
BEGIN
	time_repouso(7) <= '0';
WAIT;
END PROCESS t_prcs_time_repouso_7;
-- time_repouso[6]
t_prcs_time_repouso_6: PROCESS
BEGIN
	time_repouso(6) <= '0';
WAIT;
END PROCESS t_prcs_time_repouso_6;
-- time_repouso[5]
t_prcs_time_repouso_5: PROCESS
BEGIN
	time_repouso(5) <= '0';
WAIT;
END PROCESS t_prcs_time_repouso_5;
-- time_repouso[4]
t_prcs_time_repouso_4: PROCESS
BEGIN
	time_repouso(4) <= '0';
WAIT;
END PROCESS t_prcs_time_repouso_4;
-- time_repouso[3]
t_prcs_time_repouso_3: PROCESS
BEGIN
	time_repouso(3) <= '0';
WAIT;
END PROCESS t_prcs_time_repouso_3;
-- time_repouso[2]
t_prcs_time_repouso_2: PROCESS
BEGIN
	time_repouso(2) <= '0';
WAIT;
END PROCESS t_prcs_time_repouso_2;
-- time_repouso[1]
t_prcs_time_repouso_1: PROCESS
BEGIN
	time_repouso(1) <= '1';
WAIT;
END PROCESS t_prcs_time_repouso_1;
-- time_repouso[0]
t_prcs_time_repouso_0: PROCESS
BEGIN
	time_repouso(0) <= '0';
WAIT;
END PROCESS t_prcs_time_repouso_0;
END Schematic_arch;
