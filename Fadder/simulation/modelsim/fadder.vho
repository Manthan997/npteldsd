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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "06/08/2023 17:17:22"

-- 
-- Device: Altera 5M1270ZT144C5 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	DUT IS
    PORT (
	input_vector : IN std_logic_vector(2 DOWNTO 0);
	output_vector : BUFFER std_logic_vector(1 DOWNTO 0)
	);
END DUT;

-- Design Ports Information


ARCHITECTURE structure OF DUT IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input_vector : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_output_vector : std_logic_vector(1 DOWNTO 0);
SIGNAL add_instance_ainst6_aY_a0_combout : std_logic;
SIGNAL add_instance_ainst2_aY_a0_combout : std_logic;
SIGNAL input_vector_acombout : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
input_vector_a1_a_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(1),
	combout => input_vector_acombout(1));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
input_vector_a2_a_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(2),
	combout => input_vector_acombout(2));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
input_vector_a0_a_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(0),
	combout => input_vector_acombout(0));

-- Location: LC_X7_Y4_N2
add_instance_ainst6_aY_a0 : maxv_lcell
-- Equation(s):
-- add_instance_ainst6_aY_a0_combout = (input_vector_acombout(1) & ((input_vector_acombout(2)) # ((input_vector_acombout(0))))) # (!input_vector_acombout(1) & (input_vector_acombout(2) & (input_vector_acombout(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e8e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => input_vector_acombout(1),
	datab => input_vector_acombout(2),
	datac => input_vector_acombout(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_ainst6_aY_a0_combout);

-- Location: LC_X7_Y4_N4
add_instance_ainst2_aY_a0 : maxv_lcell
-- Equation(s):
-- add_instance_ainst2_aY_a0_combout = input_vector_acombout(1) $ (input_vector_acombout(2) $ ((input_vector_acombout(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9696",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => input_vector_acombout(1),
	datab => input_vector_acombout(2),
	datac => input_vector_acombout(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_ainst2_aY_a0_combout);

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
output_vector_a0_a_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => add_instance_ainst6_aY_a0_combout,
	oe => VCC,
	padio => ww_output_vector(0));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
output_vector_a1_a_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => add_instance_ainst2_aY_a0_combout,
	oe => VCC,
	padio => ww_output_vector(1));
END structure;


