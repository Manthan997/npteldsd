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

-- DATE "06/15/2023 11:18:31"

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
	input_vector : IN std_logic_vector(6 DOWNTO 0);
	output_vector : BUFFER std_logic_vector(0 DOWNTO 0)
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
SIGNAL ww_input_vector : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_output_vector : std_logic_vector(0 DOWNTO 0);
SIGNAL add_instance_aEqual0_a0_combout : std_logic;
SIGNAL add_instance_ay_present_a10_combout : std_logic;
SIGNAL add_instance_ay_present_a13_combout : std_logic;
SIGNAL add_instance_aEqual4_a0_combout : std_logic;
SIGNAL add_instance_aEqual4_a1_combout : std_logic;
SIGNAL add_instance_aEqual3_a0_combout : std_logic;
SIGNAL add_instance_aEqual2_a0_combout : std_logic;
SIGNAL add_instance_aEqual1_a5_combout : std_logic;
SIGNAL add_instance_aEqual1_a4_combout : std_logic;
SIGNAL add_instance_aEqual5_a0_combout : std_logic;
SIGNAL add_instance_ay_present_arst_aregout : std_logic;
SIGNAL add_instance_ay_present_a14_combout : std_logic;
SIGNAL add_instance_ay_present_as1_aregout : std_logic;
SIGNAL add_instance_ay_present_as2_aregout : std_logic;
SIGNAL add_instance_ay_present_a23_combout : std_logic;
SIGNAL add_instance_ay_present_as3_aregout : std_logic;
SIGNAL add_instance_ay_present_a21_combout : std_logic;
SIGNAL add_instance_ay_present_as4_aregout : std_logic;
SIGNAL add_instance_ay_present_a19_combout : std_logic;
SIGNAL add_instance_ay_present_as5_aregout : std_logic;
SIGNAL add_instance_ay_present_a17_combout : std_logic;
SIGNAL add_instance_ay_present_as6_aregout : std_logic;
SIGNAL add_instance_ay_present_a11_combout : std_logic;
SIGNAL add_instance_ay_present_as7_aregout : std_logic;
SIGNAL add_instance_aSelector0_a0_combout : std_logic;
SIGNAL add_instance_aoutp_acombout : std_logic;
SIGNAL input_vector_acombout : std_logic_vector(6 DOWNTO 0);

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
input_vector_a0_a_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(0),
	combout => input_vector_acombout(0));

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
input_vector_a1_a_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(1),
	combout => input_vector_acombout(1));

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
input_vector_a2_a_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(2),
	combout => input_vector_acombout(2));

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
input_vector_a3_a_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(3),
	combout => input_vector_acombout(3));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
input_vector_a5_a_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(5),
	combout => input_vector_acombout(5));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
input_vector_a4_a_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(4),
	combout => input_vector_acombout(4));

-- Location: LC_X15_Y5_N5
add_instance_aEqual0_a0 : maxv_lcell
-- Equation(s):
-- add_instance_aEqual0_a0_combout = ((!input_vector_acombout(3) & (!input_vector_acombout(5) & input_vector_acombout(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => input_vector_acombout(3),
	datac => input_vector_acombout(5),
	datad => input_vector_acombout(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_aEqual0_a0_combout);

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
input_vector_a6_a_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(6),
	combout => input_vector_acombout(6));

-- Location: LC_X16_Y6_N3
add_instance_ay_present_a10 : maxv_lcell
-- Equation(s):
-- add_instance_ay_present_a10_combout = (!input_vector_acombout(1) & (!input_vector_acombout(2) & (add_instance_aEqual0_a0_combout & input_vector_acombout(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => input_vector_acombout(1),
	datab => input_vector_acombout(2),
	datac => add_instance_aEqual0_a0_combout,
	datad => input_vector_acombout(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_ay_present_a10_combout);

-- Location: LC_X16_Y5_N7
add_instance_ay_present_a13 : maxv_lcell
-- Equation(s):
-- add_instance_ay_present_a13_combout = (!input_vector_acombout(1) & ((input_vector_acombout(2)) # ((!input_vector_acombout(6)) # (!add_instance_aEqual0_a0_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4555",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => input_vector_acombout(1),
	datab => input_vector_acombout(2),
	datac => add_instance_aEqual0_a0_combout,
	datad => input_vector_acombout(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_ay_present_a13_combout);

-- Location: LC_X16_Y5_N8
add_instance_aEqual4_a0 : maxv_lcell
-- Equation(s):
-- add_instance_aEqual4_a0_combout = (((!input_vector_acombout(2) & input_vector_acombout(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => input_vector_acombout(2),
	datad => input_vector_acombout(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_aEqual4_a0_combout);

-- Location: LC_X16_Y5_N5
add_instance_aEqual4_a1 : maxv_lcell
-- Equation(s):
-- add_instance_aEqual4_a1_combout = (!input_vector_acombout(6) & (input_vector_acombout(4) & (input_vector_acombout(5) & add_instance_aEqual4_a0_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => input_vector_acombout(6),
	datab => input_vector_acombout(4),
	datac => input_vector_acombout(5),
	datad => add_instance_aEqual4_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_aEqual4_a1_combout);

-- Location: LC_X16_Y5_N6
add_instance_aEqual3_a0 : maxv_lcell
-- Equation(s):
-- add_instance_aEqual3_a0_combout = (add_instance_aEqual0_a0_combout & (input_vector_acombout(2) & ((!input_vector_acombout(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0088",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => add_instance_aEqual0_a0_combout,
	datab => input_vector_acombout(2),
	datad => input_vector_acombout(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_aEqual3_a0_combout);

-- Location: LC_X16_Y5_N4
add_instance_aEqual2_a0 : maxv_lcell
-- Equation(s):
-- add_instance_aEqual2_a0_combout = (add_instance_aEqual0_a0_combout & (!input_vector_acombout(2) & ((!input_vector_acombout(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0022",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => add_instance_aEqual0_a0_combout,
	datab => input_vector_acombout(2),
	datad => input_vector_acombout(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_aEqual2_a0_combout);

-- Location: LC_X15_Y5_N7
add_instance_aEqual1_a5 : maxv_lcell
-- Equation(s):
-- add_instance_aEqual1_a5_combout = (input_vector_acombout(6) & (input_vector_acombout(2) & (add_instance_aEqual0_a0_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => input_vector_acombout(6),
	datab => input_vector_acombout(2),
	datac => add_instance_aEqual0_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_aEqual1_a5_combout);

-- Location: LC_X16_Y6_N2
add_instance_aEqual1_a4 : maxv_lcell
-- Equation(s):
-- add_instance_aEqual1_a4_combout = (input_vector_acombout(2) & (((input_vector_acombout(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => input_vector_acombout(2),
	datad => input_vector_acombout(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_aEqual1_a4_combout);

-- Location: LC_X16_Y6_N5
add_instance_aEqual5_a0 : maxv_lcell
-- Equation(s):
-- add_instance_aEqual5_a0_combout = (input_vector_acombout(4)) # (((input_vector_acombout(5)) # (!add_instance_aEqual1_a4_combout)) # (!input_vector_acombout(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => input_vector_acombout(4),
	datab => input_vector_acombout(3),
	datac => input_vector_acombout(5),
	datad => add_instance_aEqual1_a4_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_aEqual5_a0_combout);

-- Location: LC_X16_Y6_N0
add_instance_ay_present_arst : maxv_lcell
-- Equation(s):
-- add_instance_ay_present_arst_aregout = DFFEAS((!input_vector_acombout(1) & (((add_instance_ay_present_arst_aregout) # (!add_instance_aEqual5_a0_combout)))), GLOBAL(input_vector_acombout(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5505",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => input_vector_acombout(0),
	dataa => input_vector_acombout(1),
	datac => add_instance_aEqual5_a0_combout,
	datad => add_instance_ay_present_arst_aregout,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => add_instance_ay_present_arst_aregout);

-- Location: LC_X16_Y6_N8
add_instance_ay_present_a14 : maxv_lcell
-- Equation(s):
-- add_instance_ay_present_a14_combout = (!input_vector_acombout(1) & (((add_instance_ay_present_as7_aregout) # (!add_instance_ay_present_arst_aregout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5505",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => input_vector_acombout(1),
	datac => add_instance_ay_present_arst_aregout,
	datad => add_instance_ay_present_as7_aregout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_ay_present_a14_combout);

-- Location: LC_X16_Y6_N9
add_instance_ay_present_as1 : maxv_lcell
-- Equation(s):
-- add_instance_ay_present_as1_aregout = DFFEAS((add_instance_aEqual5_a0_combout & (add_instance_ay_present_as1_aregout & (add_instance_ay_present_a13_combout))) # (!add_instance_aEqual5_a0_combout & ((add_instance_ay_present_a14_combout) # 
-- ((add_instance_ay_present_as1_aregout & add_instance_ay_present_a13_combout)))), GLOBAL(input_vector_acombout(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d5c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => input_vector_acombout(0),
	dataa => add_instance_aEqual5_a0_combout,
	datab => add_instance_ay_present_as1_aregout,
	datac => add_instance_ay_present_a13_combout,
	datad => add_instance_ay_present_a14_combout,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => add_instance_ay_present_as1_aregout);

-- Location: LC_X15_Y5_N8
add_instance_ay_present_as2 : maxv_lcell
-- Equation(s):
-- add_instance_ay_present_as2_aregout = DFFEAS((add_instance_aEqual1_a5_combout & (add_instance_ay_present_as1_aregout & (add_instance_ay_present_a10_combout))) # (!add_instance_aEqual1_a5_combout & ((add_instance_ay_present_a23_combout) # 
-- ((add_instance_ay_present_as1_aregout & add_instance_ay_present_a10_combout)))), GLOBAL(input_vector_acombout(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d5c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => input_vector_acombout(0),
	dataa => add_instance_aEqual1_a5_combout,
	datab => add_instance_ay_present_as1_aregout,
	datac => add_instance_ay_present_a10_combout,
	datad => add_instance_ay_present_a23_combout,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => add_instance_ay_present_as2_aregout);

-- Location: LC_X15_Y5_N2
add_instance_ay_present_a23 : maxv_lcell
-- Equation(s):
-- add_instance_ay_present_a23_combout = (((!input_vector_acombout(1) & add_instance_ay_present_as2_aregout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => input_vector_acombout(1),
	datad => add_instance_ay_present_as2_aregout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_ay_present_a23_combout);

-- Location: LC_X15_Y5_N9
add_instance_ay_present_as3 : maxv_lcell
-- Equation(s):
-- add_instance_ay_present_as3_aregout = DFFEAS((add_instance_ay_present_a21_combout & (((add_instance_aEqual1_a5_combout & add_instance_ay_present_a23_combout)) # (!add_instance_aEqual2_a0_combout))) # (!add_instance_ay_present_a21_combout & 
-- (((add_instance_aEqual1_a5_combout & add_instance_ay_present_a23_combout)))), GLOBAL(input_vector_acombout(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f222",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => input_vector_acombout(0),
	dataa => add_instance_ay_present_a21_combout,
	datab => add_instance_aEqual2_a0_combout,
	datac => add_instance_aEqual1_a5_combout,
	datad => add_instance_ay_present_a23_combout,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => add_instance_ay_present_as3_aregout);

-- Location: LC_X15_Y5_N4
add_instance_ay_present_a21 : maxv_lcell
-- Equation(s):
-- add_instance_ay_present_a21_combout = (((!input_vector_acombout(1) & add_instance_ay_present_as3_aregout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => input_vector_acombout(1),
	datad => add_instance_ay_present_as3_aregout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_ay_present_a21_combout);

-- Location: LC_X16_Y5_N3
add_instance_ay_present_as4 : maxv_lcell
-- Equation(s):
-- add_instance_ay_present_as4_aregout = DFFEAS((add_instance_aEqual2_a0_combout & ((add_instance_ay_present_a21_combout) # ((add_instance_ay_present_a19_combout & !add_instance_aEqual3_a0_combout)))) # (!add_instance_aEqual2_a0_combout & 
-- (add_instance_ay_present_a19_combout & (!add_instance_aEqual3_a0_combout))), GLOBAL(input_vector_acombout(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ae0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => input_vector_acombout(0),
	dataa => add_instance_aEqual2_a0_combout,
	datab => add_instance_ay_present_a19_combout,
	datac => add_instance_aEqual3_a0_combout,
	datad => add_instance_ay_present_a21_combout,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => add_instance_ay_present_as4_aregout);

-- Location: LC_X16_Y5_N9
add_instance_ay_present_a19 : maxv_lcell
-- Equation(s):
-- add_instance_ay_present_a19_combout = (((!input_vector_acombout(1) & add_instance_ay_present_as4_aregout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => input_vector_acombout(1),
	datad => add_instance_ay_present_as4_aregout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_ay_present_a19_combout);

-- Location: LC_X16_Y5_N2
add_instance_ay_present_as5 : maxv_lcell
-- Equation(s):
-- add_instance_ay_present_as5_aregout = DFFEAS((add_instance_aEqual3_a0_combout & ((add_instance_ay_present_a19_combout) # ((!add_instance_aEqual4_a1_combout & add_instance_ay_present_a17_combout)))) # (!add_instance_aEqual3_a0_combout & 
-- (((!add_instance_aEqual4_a1_combout & add_instance_ay_present_a17_combout)))), GLOBAL(input_vector_acombout(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8f88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => input_vector_acombout(0),
	dataa => add_instance_aEqual3_a0_combout,
	datab => add_instance_ay_present_a19_combout,
	datac => add_instance_aEqual4_a1_combout,
	datad => add_instance_ay_present_a17_combout,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => add_instance_ay_present_as5_aregout);

-- Location: LC_X16_Y5_N0
add_instance_ay_present_a17 : maxv_lcell
-- Equation(s):
-- add_instance_ay_present_a17_combout = (((!input_vector_acombout(1) & add_instance_ay_present_as5_aregout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => input_vector_acombout(1),
	datad => add_instance_ay_present_as5_aregout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_ay_present_a17_combout);

-- Location: LC_X16_Y5_N1
add_instance_ay_present_as6 : maxv_lcell
-- Equation(s):
-- add_instance_ay_present_as6_aregout = DFFEAS((add_instance_ay_present_as6_aregout & ((add_instance_ay_present_a13_combout) # ((add_instance_aEqual4_a1_combout & add_instance_ay_present_a17_combout)))) # (!add_instance_ay_present_as6_aregout & 
-- (((add_instance_aEqual4_a1_combout & add_instance_ay_present_a17_combout)))), GLOBAL(input_vector_acombout(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => input_vector_acombout(0),
	dataa => add_instance_ay_present_as6_aregout,
	datab => add_instance_ay_present_a13_combout,
	datac => add_instance_aEqual4_a1_combout,
	datad => add_instance_ay_present_a17_combout,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => add_instance_ay_present_as6_aregout);

-- Location: LC_X16_Y6_N1
add_instance_ay_present_a11 : maxv_lcell
-- Equation(s):
-- add_instance_ay_present_a11_combout = (!input_vector_acombout(1) & (((add_instance_ay_present_as7_aregout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => input_vector_acombout(1),
	datac => add_instance_ay_present_as7_aregout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_ay_present_a11_combout);

-- Location: LC_X16_Y6_N4
add_instance_ay_present_as7 : maxv_lcell
-- Equation(s):
-- add_instance_ay_present_as7_aregout = DFFEAS((add_instance_ay_present_a10_combout & ((add_instance_ay_present_as6_aregout) # ((add_instance_aEqual5_a0_combout & add_instance_ay_present_a11_combout)))) # (!add_instance_ay_present_a10_combout & 
-- (((add_instance_aEqual5_a0_combout & add_instance_ay_present_a11_combout)))), GLOBAL(input_vector_acombout(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => input_vector_acombout(0),
	dataa => add_instance_ay_present_a10_combout,
	datab => add_instance_ay_present_as6_aregout,
	datac => add_instance_aEqual5_a0_combout,
	datad => add_instance_ay_present_a11_combout,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => add_instance_ay_present_as7_aregout);

-- Location: LC_X16_Y6_N6
add_instance_aSelector0_a0 : maxv_lcell
-- Equation(s):
-- add_instance_aSelector0_a0_combout = (add_instance_ay_present_as1_aregout) # (((add_instance_ay_present_as7_aregout & !add_instance_aEqual5_a0_combout)) # (!add_instance_ay_present_arst_aregout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfef",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => add_instance_ay_present_as7_aregout,
	datab => add_instance_ay_present_as1_aregout,
	datac => add_instance_ay_present_arst_aregout,
	datad => add_instance_aEqual5_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_aSelector0_a0_combout);

-- Location: LC_X16_Y6_N7
add_instance_aoutp : maxv_lcell
-- Equation(s):
-- add_instance_aoutp_acombout = ((add_instance_aSelector0_a0_combout & ((add_instance_ay_present_as7_aregout))) # (!add_instance_aSelector0_a0_combout & (add_instance_aoutp_acombout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => add_instance_aoutp_acombout,
	datac => add_instance_ay_present_as7_aregout,
	datad => add_instance_aSelector0_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_aoutp_acombout);

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
output_vector_a0_a_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => add_instance_aoutp_acombout,
	oe => VCC,
	padio => ww_output_vector(0));
END structure;


