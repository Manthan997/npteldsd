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

-- DATE "06/15/2023 11:27:34"

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
	input_vector : IN std_logic_vector(9 DOWNTO 0);
	output_vector : OUT std_logic_vector(7 DOWNTO 0)
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
SIGNAL ww_input_vector : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_output_vector : std_logic_vector(7 DOWNTO 0);
SIGNAL add_instance_aMux7_a0_combout : std_logic;
SIGNAL add_instance_aMux6_a0_combout : std_logic;
SIGNAL add_instance_adiff_a0_combout : std_logic;
SIGNAL add_instance_aMux6_a1_combout : std_logic;
SIGNAL add_instance_acarry_a0_combout : std_logic;
SIGNAL add_instance_aMux5_a0_combout : std_logic;
SIGNAL add_instance_aMux5_a1_combout : std_logic;
SIGNAL add_instance_aMux5_a2_combout : std_logic;
SIGNAL add_instance_aMux4_a0_combout : std_logic;
SIGNAL add_instance_acarry_a1_combout : std_logic;
SIGNAL add_instance_adiff_a1_combout : std_logic;
SIGNAL add_instance_aMux4_a1_combout : std_logic;
SIGNAL add_instance_acarry_a2_combout : std_logic;
SIGNAL add_instance_aMux3_a0_combout : std_logic;
SIGNAL add_instance_aMux3_a1_combout : std_logic;
SIGNAL add_instance_aMux2_a0_combout : std_logic;
SIGNAL add_instance_aMux1_a0_combout : std_logic;
SIGNAL add_instance_aMux0_a0_combout : std_logic;
SIGNAL input_vector_acombout : std_logic_vector(9 DOWNTO 0);

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
input_vector_a4_a_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(4),
	combout => input_vector_acombout(4));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
input_vector_a8_a_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(8),
	combout => input_vector_acombout(8));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
input_vector_a0_a_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(0),
	combout => input_vector_acombout(0));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
input_vector_a9_a_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(9),
	combout => input_vector_acombout(9));

-- Location: LC_X8_Y4_N7
add_instance_aMux7_a0 : maxv_lcell
-- Equation(s):
-- add_instance_aMux7_a0_combout = (input_vector_acombout(8) & (!input_vector_acombout(9) & (input_vector_acombout(4) $ (input_vector_acombout(0))))) # (!input_vector_acombout(8) & (input_vector_acombout(0) $ (((input_vector_acombout(4) & 
-- input_vector_acombout(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1278",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => input_vector_acombout(4),
	datab => input_vector_acombout(8),
	datac => input_vector_acombout(0),
	datad => input_vector_acombout(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_aMux7_a0_combout);

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
input_vector_a5_a_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(5),
	combout => input_vector_acombout(5));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
input_vector_a1_a_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(1),
	combout => input_vector_acombout(1));

-- Location: LC_X8_Y4_N4
add_instance_aMux6_a0 : maxv_lcell
-- Equation(s):
-- add_instance_aMux6_a0_combout = (input_vector_acombout(8) & (input_vector_acombout(9))) # (!input_vector_acombout(8) & (input_vector_acombout(1) $ (((input_vector_acombout(9) & input_vector_acombout(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a7a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => input_vector_acombout(9),
	datab => input_vector_acombout(5),
	datac => input_vector_acombout(8),
	datad => input_vector_acombout(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_aMux6_a0_combout);

-- Location: LC_X8_Y4_N3
add_instance_adiff_a0 : maxv_lcell
-- Equation(s):
-- add_instance_adiff_a0_combout = input_vector_acombout(5) $ (input_vector_acombout(1) $ (((!input_vector_acombout(4) & input_vector_acombout(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "639c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => input_vector_acombout(4),
	datab => input_vector_acombout(5),
	datac => input_vector_acombout(0),
	datad => input_vector_acombout(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_adiff_a0_combout);

-- Location: LC_X8_Y4_N5
add_instance_aMux6_a1 : maxv_lcell
-- Equation(s):
-- add_instance_aMux6_a1_combout = (add_instance_aMux6_a0_combout & (((input_vector_acombout(4))) # (!input_vector_acombout(8)))) # (!add_instance_aMux6_a0_combout & (input_vector_acombout(8) & ((add_instance_adiff_a0_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6a2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => add_instance_aMux6_a0_combout,
	datab => input_vector_acombout(8),
	datac => input_vector_acombout(4),
	datad => add_instance_adiff_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_aMux6_a1_combout);

-- Location: LC_X8_Y4_N2
add_instance_acarry_a0 : maxv_lcell
-- Equation(s):
-- add_instance_acarry_a0_combout = (input_vector_acombout(5) & (!input_vector_acombout(4) & (input_vector_acombout(0) & input_vector_acombout(1)))) # (!input_vector_acombout(5) & ((input_vector_acombout(1)) # ((!input_vector_acombout(4) & 
-- input_vector_acombout(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7310",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => input_vector_acombout(4),
	datab => input_vector_acombout(5),
	datac => input_vector_acombout(0),
	datad => input_vector_acombout(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_acarry_a0_combout);

-- Location: LC_X8_Y4_N6
add_instance_aMux5_a0 : maxv_lcell
-- Equation(s):
-- add_instance_aMux5_a0_combout = (input_vector_acombout(9) & (input_vector_acombout(5))) # (!input_vector_acombout(9) & (((add_instance_acarry_a0_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => input_vector_acombout(9),
	datab => input_vector_acombout(5),
	datad => add_instance_acarry_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_aMux5_a0_combout);

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
input_vector_a6_a_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(6),
	combout => input_vector_acombout(6));

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
input_vector_a2_a_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(2),
	combout => input_vector_acombout(2));

-- Location: LC_X7_Y4_N1
add_instance_aMux5_a1 : maxv_lcell
-- Equation(s):
-- add_instance_aMux5_a1_combout = (input_vector_acombout(9) & (!input_vector_acombout(8) & (input_vector_acombout(6) $ (input_vector_acombout(2))))) # (!input_vector_acombout(9) & (input_vector_acombout(2) $ (((input_vector_acombout(6) & 
-- input_vector_acombout(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "066c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => input_vector_acombout(6),
	datab => input_vector_acombout(2),
	datac => input_vector_acombout(9),
	datad => input_vector_acombout(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_aMux5_a1_combout);

-- Location: LC_X7_Y4_N7
add_instance_aMux5_a2 : maxv_lcell
-- Equation(s):
-- add_instance_aMux5_a2_combout = (add_instance_aMux5_a1_combout $ (((input_vector_acombout(8) & add_instance_aMux5_a0_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5fa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => input_vector_acombout(8),
	datac => add_instance_aMux5_a0_combout,
	datad => add_instance_aMux5_a1_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_aMux5_a2_combout);

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
input_vector_a7_a_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(7),
	combout => input_vector_acombout(7));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
input_vector_a3_a_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(3),
	combout => input_vector_acombout(3));

-- Location: LC_X7_Y4_N4
add_instance_aMux4_a0 : maxv_lcell
-- Equation(s):
-- add_instance_aMux4_a0_combout = (input_vector_acombout(8) & (((input_vector_acombout(9))))) # (!input_vector_acombout(8) & (input_vector_acombout(3) $ (((input_vector_acombout(7) & input_vector_acombout(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b5e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => input_vector_acombout(8),
	datab => input_vector_acombout(7),
	datac => input_vector_acombout(9),
	datad => input_vector_acombout(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_aMux4_a0_combout);

-- Location: LC_X7_Y4_N3
add_instance_acarry_a1 : maxv_lcell
-- Equation(s):
-- add_instance_acarry_a1_combout = (input_vector_acombout(6) & (input_vector_acombout(2) & (add_instance_acarry_a0_combout))) # (!input_vector_acombout(6) & ((input_vector_acombout(2)) # ((add_instance_acarry_a0_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d4d4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => input_vector_acombout(6),
	datab => input_vector_acombout(2),
	datac => add_instance_acarry_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_acarry_a1_combout);

-- Location: LC_X7_Y4_N9
add_instance_adiff_a1 : maxv_lcell
-- Equation(s):
-- add_instance_adiff_a1_combout = (input_vector_acombout(3) $ (input_vector_acombout(7) $ (add_instance_acarry_a1_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => input_vector_acombout(3),
	datac => input_vector_acombout(7),
	datad => add_instance_acarry_a1_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_adiff_a1_combout);

-- Location: LC_X7_Y4_N6
add_instance_aMux4_a1 : maxv_lcell
-- Equation(s):
-- add_instance_aMux4_a1_combout = (input_vector_acombout(8) & ((add_instance_aMux4_a0_combout & (input_vector_acombout(6))) # (!add_instance_aMux4_a0_combout & ((add_instance_adiff_a1_combout))))) # (!input_vector_acombout(8) & 
-- (((add_instance_aMux4_a0_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dad0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => input_vector_acombout(8),
	datab => input_vector_acombout(6),
	datac => add_instance_aMux4_a0_combout,
	datad => add_instance_adiff_a1_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_aMux4_a1_combout);

-- Location: LC_X7_Y4_N2
add_instance_acarry_a2 : maxv_lcell
-- Equation(s):
-- add_instance_acarry_a2_combout = ((input_vector_acombout(3) & ((add_instance_acarry_a1_combout) # (!input_vector_acombout(7)))) # (!input_vector_acombout(3) & (!input_vector_acombout(7) & add_instance_acarry_a1_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => input_vector_acombout(3),
	datac => input_vector_acombout(7),
	datad => add_instance_acarry_a1_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_acarry_a2_combout);

-- Location: LC_X8_Y4_N9
add_instance_aMux3_a0 : maxv_lcell
-- Equation(s):
-- add_instance_aMux3_a0_combout = ((input_vector_acombout(8) & ((add_instance_acarry_a2_combout))) # (!input_vector_acombout(8) & (input_vector_acombout(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => input_vector_acombout(8),
	datac => input_vector_acombout(4),
	datad => add_instance_acarry_a2_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_aMux3_a0_combout);

-- Location: LC_X7_Y4_N5
add_instance_aMux3_a1 : maxv_lcell
-- Equation(s):
-- add_instance_aMux3_a1_combout = (input_vector_acombout(9) & (input_vector_acombout(8) & (input_vector_acombout(7)))) # (!input_vector_acombout(9) & (((add_instance_aMux3_a0_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8f80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => input_vector_acombout(8),
	datab => input_vector_acombout(7),
	datac => input_vector_acombout(9),
	datad => add_instance_aMux3_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_aMux3_a1_combout);

-- Location: LC_X8_Y4_N8
add_instance_aMux2_a0 : maxv_lcell
-- Equation(s):
-- add_instance_aMux2_a0_combout = (!input_vector_acombout(9) & ((input_vector_acombout(8) & ((add_instance_acarry_a2_combout))) # (!input_vector_acombout(8) & (input_vector_acombout(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5404",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => input_vector_acombout(9),
	datab => input_vector_acombout(5),
	datac => input_vector_acombout(8),
	datad => add_instance_acarry_a2_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_aMux2_a0_combout);

-- Location: LC_X7_Y4_N8
add_instance_aMux1_a0 : maxv_lcell
-- Equation(s):
-- add_instance_aMux1_a0_combout = (!input_vector_acombout(9) & ((input_vector_acombout(8) & ((add_instance_acarry_a2_combout))) # (!input_vector_acombout(8) & (input_vector_acombout(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e04",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => input_vector_acombout(8),
	datab => input_vector_acombout(6),
	datac => input_vector_acombout(9),
	datad => add_instance_acarry_a2_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_aMux1_a0_combout);

-- Location: LC_X7_Y4_N0
add_instance_aMux0_a0 : maxv_lcell
-- Equation(s):
-- add_instance_aMux0_a0_combout = (!input_vector_acombout(9) & ((input_vector_acombout(8) & ((add_instance_acarry_a2_combout))) # (!input_vector_acombout(8) & (input_vector_acombout(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e04",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => input_vector_acombout(8),
	datab => input_vector_acombout(7),
	datac => input_vector_acombout(9),
	datad => add_instance_acarry_a2_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_aMux0_a0_combout);

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
output_vector_a0_a_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => add_instance_aMux7_a0_combout,
	oe => VCC,
	padio => ww_output_vector(0));

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
output_vector_a1_a_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => add_instance_aMux6_a1_combout,
	oe => VCC,
	padio => ww_output_vector(1));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
output_vector_a2_a_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => add_instance_aMux5_a2_combout,
	oe => VCC,
	padio => ww_output_vector(2));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
output_vector_a3_a_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => add_instance_aMux4_a1_combout,
	oe => VCC,
	padio => ww_output_vector(3));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
output_vector_a4_a_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => add_instance_aMux3_a1_combout,
	oe => VCC,
	padio => ww_output_vector(4));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
output_vector_a5_a_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => add_instance_aMux2_a0_combout,
	oe => VCC,
	padio => ww_output_vector(5));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
output_vector_a6_a_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => add_instance_aMux1_a0_combout,
	oe => VCC,
	padio => ww_output_vector(6));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
output_vector_a7_a_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => add_instance_aMux0_a0_combout,
	oe => VCC,
	padio => ww_output_vector(7));
END structure;


