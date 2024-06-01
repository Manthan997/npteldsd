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

-- DATE "06/12/2023 16:59:24"

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
	input_vector : IN std_logic_vector(7 DOWNTO 0);
	output_vector : BUFFER std_logic_vector(4 DOWNTO 0)
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
SIGNAL ww_input_vector : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_output_vector : std_logic_vector(4 DOWNTO 0);
SIGNAL add_instance_aY_a0_a_a0_combout : std_logic;
SIGNAL add_instance_aY_a0_a_a2 : std_logic;
SIGNAL add_instance_aY_a0_a_a2COUT1_10 : std_logic;
SIGNAL add_instance_atemp_a1_a_a10_combout : std_logic;
SIGNAL add_instance_atemp_a1_a_a12 : std_logic;
SIGNAL add_instance_atemp_a1_a_a12COUT1_16 : std_logic;
SIGNAL add_instance_atemp_a2_a_a2 : std_logic;
SIGNAL add_instance_atemp_a2_a_a2COUT1_17 : std_logic;
SIGNAL add_instance_atemp_a3_a_a7 : std_logic;
SIGNAL add_instance_atemp_a3_a_a7COUT1_18 : std_logic;
SIGNAL add_instance_aAdd0_a0_combout : std_logic;
SIGNAL add_instance_atemp_a2_a_a0_combout : std_logic;
SIGNAL add_instance_atemp_a3_a_a5_combout : std_logic;
SIGNAL add_instance_aY_a1_a_a5_combout : std_logic;
SIGNAL add_instance_aY_a2_a_a6_combout : std_logic;
SIGNAL add_instance_aY_a3_a_a7_combout : std_logic;
SIGNAL add_instance_aY_a4_a_a8_combout : std_logic;
SIGNAL input_vector_acombout : std_logic_vector(7 DOWNTO 0);
SIGNAL ALT_INV_add_instance_aY_a4_a_a8_combout : std_logic;

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
ALT_INV_add_instance_aY_a4_a_a8_combout <= NOT add_instance_aY_a4_a_a8_combout;

-- Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
input_vector_a4_a_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(4),
	combout => input_vector_acombout(4));

-- Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
input_vector_a0_a_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(0),
	combout => input_vector_acombout(0));

-- Location: LC_X12_Y1_N5
add_instance_aY_a0_a_a0 : maxv_lcell
-- Equation(s):
-- add_instance_aY_a0_a_a0_combout = input_vector_acombout(4) $ ((input_vector_acombout(0)))
-- add_instance_aY_a0_a_a2 = CARRY((input_vector_acombout(4) & (input_vector_acombout(0))))
-- add_instance_aY_a0_a_a2COUT1_10 = CARRY((input_vector_acombout(4) & (input_vector_acombout(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => input_vector_acombout(4),
	datab => input_vector_acombout(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_aY_a0_a_a0_combout,
	cout0 => add_instance_aY_a0_a_a2,
	cout1 => add_instance_aY_a0_a_a2COUT1_10);

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
input_vector_a1_a_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(1),
	combout => input_vector_acombout(1));

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
input_vector_a5_a_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(5),
	combout => input_vector_acombout(5));

-- Location: LC_X12_Y1_N6
add_instance_atemp_a1_a_a10 : maxv_lcell
-- Equation(s):
-- add_instance_atemp_a1_a_a10_combout = input_vector_acombout(1) $ (input_vector_acombout(5) $ ((add_instance_aY_a0_a_a2)))
-- add_instance_atemp_a1_a_a12 = CARRY((input_vector_acombout(1) & (!input_vector_acombout(5) & !add_instance_aY_a0_a_a2)) # (!input_vector_acombout(1) & ((!add_instance_aY_a0_a_a2) # (!input_vector_acombout(5)))))
-- add_instance_atemp_a1_a_a12COUT1_16 = CARRY((input_vector_acombout(1) & (!input_vector_acombout(5) & !add_instance_aY_a0_a_a2COUT1_10)) # (!input_vector_acombout(1) & ((!add_instance_aY_a0_a_a2COUT1_10) # (!input_vector_acombout(5)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => input_vector_acombout(1),
	datab => input_vector_acombout(5),
	cin0 => add_instance_aY_a0_a_a2,
	cin1 => add_instance_aY_a0_a_a2COUT1_10,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_atemp_a1_a_a10_combout,
	cout0 => add_instance_atemp_a1_a_a12,
	cout1 => add_instance_atemp_a1_a_a12COUT1_16);

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
input_vector_a7_a_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(7),
	combout => input_vector_acombout(7));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
input_vector_a3_a_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(3),
	combout => input_vector_acombout(3));

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
input_vector_a2_a_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(2),
	combout => input_vector_acombout(2));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
input_vector_a6_a_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(6),
	combout => input_vector_acombout(6));

-- Location: LC_X12_Y1_N7
add_instance_atemp_a2_a_a0 : maxv_lcell
-- Equation(s):
-- add_instance_atemp_a2_a_a0_combout = input_vector_acombout(2) $ (input_vector_acombout(6) $ ((!add_instance_atemp_a1_a_a12)))
-- add_instance_atemp_a2_a_a2 = CARRY((input_vector_acombout(2) & ((input_vector_acombout(6)) # (!add_instance_atemp_a1_a_a12))) # (!input_vector_acombout(2) & (input_vector_acombout(6) & !add_instance_atemp_a1_a_a12)))
-- add_instance_atemp_a2_a_a2COUT1_17 = CARRY((input_vector_acombout(2) & ((input_vector_acombout(6)) # (!add_instance_atemp_a1_a_a12COUT1_16))) # (!input_vector_acombout(2) & (input_vector_acombout(6) & !add_instance_atemp_a1_a_a12COUT1_16)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => input_vector_acombout(2),
	datab => input_vector_acombout(6),
	cin0 => add_instance_atemp_a1_a_a12,
	cin1 => add_instance_atemp_a1_a_a12COUT1_16,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_atemp_a2_a_a0_combout,
	cout0 => add_instance_atemp_a2_a_a2,
	cout1 => add_instance_atemp_a2_a_a2COUT1_17);

-- Location: LC_X12_Y1_N8
add_instance_atemp_a3_a_a5 : maxv_lcell
-- Equation(s):
-- add_instance_atemp_a3_a_a5_combout = input_vector_acombout(7) $ (input_vector_acombout(3) $ ((add_instance_atemp_a2_a_a2)))
-- add_instance_atemp_a3_a_a7 = CARRY((input_vector_acombout(7) & (!input_vector_acombout(3) & !add_instance_atemp_a2_a_a2)) # (!input_vector_acombout(7) & ((!add_instance_atemp_a2_a_a2) # (!input_vector_acombout(3)))))
-- add_instance_atemp_a3_a_a7COUT1_18 = CARRY((input_vector_acombout(7) & (!input_vector_acombout(3) & !add_instance_atemp_a2_a_a2COUT1_17)) # (!input_vector_acombout(7) & ((!add_instance_atemp_a2_a_a2COUT1_17) # (!input_vector_acombout(3)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => input_vector_acombout(7),
	datab => input_vector_acombout(3),
	cin0 => add_instance_atemp_a2_a_a2,
	cin1 => add_instance_atemp_a2_a_a2COUT1_17,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_atemp_a3_a_a5_combout,
	cout0 => add_instance_atemp_a3_a_a7,
	cout1 => add_instance_atemp_a3_a_a7COUT1_18);

-- Location: LC_X12_Y1_N9
add_instance_aAdd0_a0 : maxv_lcell
-- Equation(s):
-- add_instance_aAdd0_a0_combout = (((!add_instance_atemp_a3_a_a7)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => add_instance_atemp_a3_a_a7,
	cin1 => add_instance_atemp_a3_a_a7COUT1_18,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_aAdd0_a0_combout);

-- Location: LC_X12_Y1_N1
add_instance_aY_a1_a_a5 : maxv_lcell
-- Equation(s):
-- add_instance_aY_a1_a_a5_combout = (add_instance_atemp_a1_a_a10_combout & (!add_instance_aAdd0_a0_combout & ((!add_instance_atemp_a3_a_a5_combout)))) # (!add_instance_atemp_a1_a_a10_combout & ((add_instance_aAdd0_a0_combout) # 
-- ((add_instance_atemp_a2_a_a0_combout & add_instance_atemp_a3_a_a5_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5466",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => add_instance_atemp_a1_a_a10_combout,
	datab => add_instance_aAdd0_a0_combout,
	datac => add_instance_atemp_a2_a_a0_combout,
	datad => add_instance_atemp_a3_a_a5_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_aY_a1_a_a5_combout);

-- Location: LC_X12_Y1_N3
add_instance_aY_a2_a_a6 : maxv_lcell
-- Equation(s):
-- add_instance_aY_a2_a_a6_combout = (add_instance_atemp_a1_a_a10_combout & (((add_instance_atemp_a2_a_a0_combout)))) # (!add_instance_atemp_a1_a_a10_combout & ((add_instance_aAdd0_a0_combout & (!add_instance_atemp_a2_a_a0_combout)) # 
-- (!add_instance_aAdd0_a0_combout & (add_instance_atemp_a2_a_a0_combout & !add_instance_atemp_a3_a_a5_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a4b4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => add_instance_atemp_a1_a_a10_combout,
	datab => add_instance_aAdd0_a0_combout,
	datac => add_instance_atemp_a2_a_a0_combout,
	datad => add_instance_atemp_a3_a_a5_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_aY_a2_a_a6_combout);

-- Location: LC_X12_Y1_N2
add_instance_aY_a3_a_a7 : maxv_lcell
-- Equation(s):
-- add_instance_aY_a3_a_a7_combout = (add_instance_atemp_a3_a_a5_combout & (!add_instance_atemp_a1_a_a10_combout & ((!add_instance_atemp_a2_a_a0_combout)))) # (!add_instance_atemp_a3_a_a5_combout & (add_instance_aAdd0_a0_combout & 
-- ((add_instance_atemp_a1_a_a10_combout) # (add_instance_atemp_a2_a_a0_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "05c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => add_instance_atemp_a1_a_a10_combout,
	datab => add_instance_aAdd0_a0_combout,
	datac => add_instance_atemp_a2_a_a0_combout,
	datad => add_instance_atemp_a3_a_a5_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_aY_a3_a_a7_combout);

-- Location: LC_X12_Y1_N4
add_instance_aY_a4_a_a8 : maxv_lcell
-- Equation(s):
-- add_instance_aY_a4_a_a8_combout = add_instance_aAdd0_a0_combout $ ((((!add_instance_atemp_a1_a_a10_combout & !add_instance_atemp_a2_a_a0_combout)) # (!add_instance_atemp_a3_a_a5_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c933",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => add_instance_atemp_a1_a_a10_combout,
	datab => add_instance_aAdd0_a0_combout,
	datac => add_instance_atemp_a2_a_a0_combout,
	datad => add_instance_atemp_a3_a_a5_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_aY_a4_a_a8_combout);

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
output_vector_a0_a_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => add_instance_aY_a0_a_a0_combout,
	oe => VCC,
	padio => ww_output_vector(0));

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
output_vector_a1_a_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => add_instance_aY_a1_a_a5_combout,
	oe => VCC,
	padio => ww_output_vector(1));

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
output_vector_a2_a_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => add_instance_aY_a2_a_a6_combout,
	oe => VCC,
	padio => ww_output_vector(2));

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
output_vector_a3_a_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => add_instance_aY_a3_a_a7_combout,
	oe => VCC,
	padio => ww_output_vector(3));

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
output_vector_a4_a_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_add_instance_aY_a4_a_a8_combout,
	oe => VCC,
	padio => ww_output_vector(4));
END structure;


