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

-- DATE "06/16/2023 06:32:58"

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
	input_vector : IN std_logic_vector(1 DOWNTO 0);
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
SIGNAL ww_input_vector : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_output_vector : std_logic_vector(0 DOWNTO 0);
SIGNAL add_instance_acnt_a1_a_a3 : std_logic;
SIGNAL add_instance_acnt_a1_a_a3COUT1_32 : std_logic;
SIGNAL add_instance_acnt_a2_a_a5 : std_logic;
SIGNAL add_instance_acnt_a3_a_a1 : std_logic;
SIGNAL add_instance_acnt_a3_a_a1COUT1_33 : std_logic;
SIGNAL add_instance_acnt_a4_a_a9 : std_logic;
SIGNAL add_instance_acnt_a4_a_a9COUT1_34 : std_logic;
SIGNAL add_instance_acnt_a5_a_a11 : std_logic;
SIGNAL add_instance_acnt_a5_a_a11COUT1_35 : std_logic;
SIGNAL add_instance_acnt_a6_a_a13 : std_logic;
SIGNAL add_instance_acnt_a6_a_a13COUT1_36 : std_logic;
SIGNAL add_instance_acnt_a7_a_a7 : std_logic;
SIGNAL add_instance_acnt_a8_a_a15 : std_logic;
SIGNAL add_instance_acnt_a8_a_a15COUT1_37 : std_logic;
SIGNAL add_instance_acnt_a9_a_a17 : std_logic;
SIGNAL add_instance_acnt_a9_a_a17COUT1_38 : std_logic;
SIGNAL add_instance_acnt_a10_a_a19 : std_logic;
SIGNAL add_instance_acnt_a10_a_a19COUT1_39 : std_logic;
SIGNAL add_instance_acnt_a11_a_a21 : std_logic;
SIGNAL add_instance_acnt_a11_a_a21COUT1_40 : std_logic;
SIGNAL add_instance_acnt_a12_a_a23 : std_logic;
SIGNAL add_instance_acnt_a13_a_a25 : std_logic;
SIGNAL add_instance_acnt_a13_a_a25COUT1_41 : std_logic;
SIGNAL add_instance_acnt_a14_a_a27 : std_logic;
SIGNAL add_instance_acnt_a14_a_a27COUT1_42 : std_logic;
SIGNAL add_instance_aEqual0_a3_combout : std_logic;
SIGNAL add_instance_aEqual0_a1_combout : std_logic;
SIGNAL add_instance_aEqual0_a0_combout : std_logic;
SIGNAL add_instance_aEqual0_a2_combout : std_logic;
SIGNAL add_instance_aEqual0_a4_combout : std_logic;
SIGNAL add_instance_acnt : std_logic_vector(15 DOWNTO 0);
SIGNAL input_vector_acombout : std_logic_vector(1 DOWNTO 0);

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
input_vector_a1_a_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(1),
	combout => input_vector_acombout(1));

-- Location: LC_X14_Y9_N2
add_instance_acnt_a0_a : maxv_lcell
-- Equation(s):
-- add_instance_acnt(0) = DFFEAS((((!add_instance_acnt(0)))), GLOBAL(input_vector_acombout(1)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => input_vector_acombout(1),
	datad => add_instance_acnt(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => add_instance_acnt(0));

-- Location: LC_X14_Y9_N3
add_instance_acnt_a1_a : maxv_lcell
-- Equation(s):
-- add_instance_acnt(1) = DFFEAS(add_instance_acnt(1) $ ((add_instance_acnt(0))), GLOBAL(input_vector_acombout(1)), VCC, , , , , , )
-- add_instance_acnt_a1_a_a3 = CARRY((add_instance_acnt(1) & (add_instance_acnt(0))))
-- add_instance_acnt_a1_a_a3COUT1_32 = CARRY((add_instance_acnt(1) & (add_instance_acnt(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => input_vector_acombout(1),
	dataa => add_instance_acnt(1),
	datab => add_instance_acnt(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => add_instance_acnt(1),
	cout0 => add_instance_acnt_a1_a_a3,
	cout1 => add_instance_acnt_a1_a_a3COUT1_32);

-- Location: LC_X14_Y9_N4
add_instance_acnt_a2_a : maxv_lcell
-- Equation(s):
-- add_instance_acnt(2) = DFFEAS(add_instance_acnt(2) $ ((((add_instance_acnt_a1_a_a3)))), GLOBAL(input_vector_acombout(1)), VCC, , , , , , )
-- add_instance_acnt_a2_a_a5 = CARRY(((!add_instance_acnt_a1_a_a3COUT1_32)) # (!add_instance_acnt(2)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => input_vector_acombout(1),
	dataa => add_instance_acnt(2),
	aclr => GND,
	cin0 => add_instance_acnt_a1_a_a3,
	cin1 => add_instance_acnt_a1_a_a3COUT1_32,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => add_instance_acnt(2),
	cout => add_instance_acnt_a2_a_a5);

-- Location: LC_X14_Y9_N5
add_instance_acnt_a3_a : maxv_lcell
-- Equation(s):
-- add_instance_acnt(3) = DFFEAS(add_instance_acnt(3) $ ((((!add_instance_acnt_a2_a_a5)))), GLOBAL(input_vector_acombout(1)), VCC, , , , , , )
-- add_instance_acnt_a3_a_a1 = CARRY((add_instance_acnt(3) & ((!add_instance_acnt_a2_a_a5))))
-- add_instance_acnt_a3_a_a1COUT1_33 = CARRY((add_instance_acnt(3) & ((!add_instance_acnt_a2_a_a5))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => input_vector_acombout(1),
	dataa => add_instance_acnt(3),
	aclr => GND,
	cin => add_instance_acnt_a2_a_a5,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => add_instance_acnt(3),
	cout0 => add_instance_acnt_a3_a_a1,
	cout1 => add_instance_acnt_a3_a_a1COUT1_33);

-- Location: LC_X14_Y9_N6
add_instance_acnt_a4_a : maxv_lcell
-- Equation(s):
-- add_instance_acnt(4) = DFFEAS(add_instance_acnt(4) $ (((((!add_instance_acnt_a2_a_a5 & add_instance_acnt_a3_a_a1) # (add_instance_acnt_a2_a_a5 & add_instance_acnt_a3_a_a1COUT1_33))))), GLOBAL(input_vector_acombout(1)), VCC, , , , , , )
-- add_instance_acnt_a4_a_a9 = CARRY(((!add_instance_acnt_a3_a_a1)) # (!add_instance_acnt(4)))
-- add_instance_acnt_a4_a_a9COUT1_34 = CARRY(((!add_instance_acnt_a3_a_a1COUT1_33)) # (!add_instance_acnt(4)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => input_vector_acombout(1),
	dataa => add_instance_acnt(4),
	aclr => GND,
	cin => add_instance_acnt_a2_a_a5,
	cin0 => add_instance_acnt_a3_a_a1,
	cin1 => add_instance_acnt_a3_a_a1COUT1_33,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => add_instance_acnt(4),
	cout0 => add_instance_acnt_a4_a_a9,
	cout1 => add_instance_acnt_a4_a_a9COUT1_34);

-- Location: LC_X14_Y9_N7
add_instance_acnt_a5_a : maxv_lcell
-- Equation(s):
-- add_instance_acnt(5) = DFFEAS((add_instance_acnt(5) $ ((!(!add_instance_acnt_a2_a_a5 & add_instance_acnt_a4_a_a9) # (add_instance_acnt_a2_a_a5 & add_instance_acnt_a4_a_a9COUT1_34)))), GLOBAL(input_vector_acombout(1)), VCC, , , , , , )
-- add_instance_acnt_a5_a_a11 = CARRY(((add_instance_acnt(5) & !add_instance_acnt_a4_a_a9)))
-- add_instance_acnt_a5_a_a11COUT1_35 = CARRY(((add_instance_acnt(5) & !add_instance_acnt_a4_a_a9COUT1_34)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => input_vector_acombout(1),
	datab => add_instance_acnt(5),
	aclr => GND,
	cin => add_instance_acnt_a2_a_a5,
	cin0 => add_instance_acnt_a4_a_a9,
	cin1 => add_instance_acnt_a4_a_a9COUT1_34,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => add_instance_acnt(5),
	cout0 => add_instance_acnt_a5_a_a11,
	cout1 => add_instance_acnt_a5_a_a11COUT1_35);

-- Location: LC_X14_Y9_N8
add_instance_acnt_a6_a : maxv_lcell
-- Equation(s):
-- add_instance_acnt(6) = DFFEAS(add_instance_acnt(6) $ (((((!add_instance_acnt_a2_a_a5 & add_instance_acnt_a5_a_a11) # (add_instance_acnt_a2_a_a5 & add_instance_acnt_a5_a_a11COUT1_35))))), GLOBAL(input_vector_acombout(1)), VCC, , , , , , )
-- add_instance_acnt_a6_a_a13 = CARRY(((!add_instance_acnt_a5_a_a11)) # (!add_instance_acnt(6)))
-- add_instance_acnt_a6_a_a13COUT1_36 = CARRY(((!add_instance_acnt_a5_a_a11COUT1_35)) # (!add_instance_acnt(6)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => input_vector_acombout(1),
	dataa => add_instance_acnt(6),
	aclr => GND,
	cin => add_instance_acnt_a2_a_a5,
	cin0 => add_instance_acnt_a5_a_a11,
	cin1 => add_instance_acnt_a5_a_a11COUT1_35,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => add_instance_acnt(6),
	cout0 => add_instance_acnt_a6_a_a13,
	cout1 => add_instance_acnt_a6_a_a13COUT1_36);

-- Location: LC_X14_Y9_N9
add_instance_acnt_a7_a : maxv_lcell
-- Equation(s):
-- add_instance_acnt(7) = DFFEAS((add_instance_acnt(7) $ ((!(!add_instance_acnt_a2_a_a5 & add_instance_acnt_a6_a_a13) # (add_instance_acnt_a2_a_a5 & add_instance_acnt_a6_a_a13COUT1_36)))), GLOBAL(input_vector_acombout(1)), VCC, , , , , , )
-- add_instance_acnt_a7_a_a7 = CARRY(((add_instance_acnt(7) & !add_instance_acnt_a6_a_a13COUT1_36)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => input_vector_acombout(1),
	datab => add_instance_acnt(7),
	aclr => GND,
	cin => add_instance_acnt_a2_a_a5,
	cin0 => add_instance_acnt_a6_a_a13,
	cin1 => add_instance_acnt_a6_a_a13COUT1_36,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => add_instance_acnt(7),
	cout => add_instance_acnt_a7_a_a7);

-- Location: LC_X15_Y9_N0
add_instance_acnt_a8_a : maxv_lcell
-- Equation(s):
-- add_instance_acnt(8) = DFFEAS((add_instance_acnt(8) $ ((add_instance_acnt_a7_a_a7))), GLOBAL(input_vector_acombout(1)), VCC, , , , , , )
-- add_instance_acnt_a8_a_a15 = CARRY(((!add_instance_acnt_a7_a_a7) # (!add_instance_acnt(8))))
-- add_instance_acnt_a8_a_a15COUT1_37 = CARRY(((!add_instance_acnt_a7_a_a7) # (!add_instance_acnt(8))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => input_vector_acombout(1),
	datab => add_instance_acnt(8),
	aclr => GND,
	cin => add_instance_acnt_a7_a_a7,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => add_instance_acnt(8),
	cout0 => add_instance_acnt_a8_a_a15,
	cout1 => add_instance_acnt_a8_a_a15COUT1_37);

-- Location: LC_X15_Y9_N1
add_instance_acnt_a9_a : maxv_lcell
-- Equation(s):
-- add_instance_acnt(9) = DFFEAS((add_instance_acnt(9) $ ((!(!add_instance_acnt_a7_a_a7 & add_instance_acnt_a8_a_a15) # (add_instance_acnt_a7_a_a7 & add_instance_acnt_a8_a_a15COUT1_37)))), GLOBAL(input_vector_acombout(1)), VCC, , , , , , )
-- add_instance_acnt_a9_a_a17 = CARRY(((add_instance_acnt(9) & !add_instance_acnt_a8_a_a15)))
-- add_instance_acnt_a9_a_a17COUT1_38 = CARRY(((add_instance_acnt(9) & !add_instance_acnt_a8_a_a15COUT1_37)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => input_vector_acombout(1),
	datab => add_instance_acnt(9),
	aclr => GND,
	cin => add_instance_acnt_a7_a_a7,
	cin0 => add_instance_acnt_a8_a_a15,
	cin1 => add_instance_acnt_a8_a_a15COUT1_37,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => add_instance_acnt(9),
	cout0 => add_instance_acnt_a9_a_a17,
	cout1 => add_instance_acnt_a9_a_a17COUT1_38);

-- Location: LC_X15_Y9_N2
add_instance_acnt_a10_a : maxv_lcell
-- Equation(s):
-- add_instance_acnt(10) = DFFEAS((add_instance_acnt(10) $ (((!add_instance_acnt_a7_a_a7 & add_instance_acnt_a9_a_a17) # (add_instance_acnt_a7_a_a7 & add_instance_acnt_a9_a_a17COUT1_38)))), GLOBAL(input_vector_acombout(1)), VCC, , , , , , )
-- add_instance_acnt_a10_a_a19 = CARRY(((!add_instance_acnt_a9_a_a17) # (!add_instance_acnt(10))))
-- add_instance_acnt_a10_a_a19COUT1_39 = CARRY(((!add_instance_acnt_a9_a_a17COUT1_38) # (!add_instance_acnt(10))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => input_vector_acombout(1),
	datab => add_instance_acnt(10),
	aclr => GND,
	cin => add_instance_acnt_a7_a_a7,
	cin0 => add_instance_acnt_a9_a_a17,
	cin1 => add_instance_acnt_a9_a_a17COUT1_38,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => add_instance_acnt(10),
	cout0 => add_instance_acnt_a10_a_a19,
	cout1 => add_instance_acnt_a10_a_a19COUT1_39);

-- Location: LC_X15_Y9_N3
add_instance_acnt_a11_a : maxv_lcell
-- Equation(s):
-- add_instance_acnt(11) = DFFEAS(add_instance_acnt(11) $ ((((!(!add_instance_acnt_a7_a_a7 & add_instance_acnt_a10_a_a19) # (add_instance_acnt_a7_a_a7 & add_instance_acnt_a10_a_a19COUT1_39))))), GLOBAL(input_vector_acombout(1)), VCC, , , , , , )
-- add_instance_acnt_a11_a_a21 = CARRY((add_instance_acnt(11) & ((!add_instance_acnt_a10_a_a19))))
-- add_instance_acnt_a11_a_a21COUT1_40 = CARRY((add_instance_acnt(11) & ((!add_instance_acnt_a10_a_a19COUT1_39))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => input_vector_acombout(1),
	dataa => add_instance_acnt(11),
	aclr => GND,
	cin => add_instance_acnt_a7_a_a7,
	cin0 => add_instance_acnt_a10_a_a19,
	cin1 => add_instance_acnt_a10_a_a19COUT1_39,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => add_instance_acnt(11),
	cout0 => add_instance_acnt_a11_a_a21,
	cout1 => add_instance_acnt_a11_a_a21COUT1_40);

-- Location: LC_X15_Y9_N4
add_instance_acnt_a12_a : maxv_lcell
-- Equation(s):
-- add_instance_acnt(12) = DFFEAS(add_instance_acnt(12) $ (((((!add_instance_acnt_a7_a_a7 & add_instance_acnt_a11_a_a21) # (add_instance_acnt_a7_a_a7 & add_instance_acnt_a11_a_a21COUT1_40))))), GLOBAL(input_vector_acombout(1)), VCC, , , , , , )
-- add_instance_acnt_a12_a_a23 = CARRY(((!add_instance_acnt_a11_a_a21COUT1_40)) # (!add_instance_acnt(12)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => input_vector_acombout(1),
	dataa => add_instance_acnt(12),
	aclr => GND,
	cin => add_instance_acnt_a7_a_a7,
	cin0 => add_instance_acnt_a11_a_a21,
	cin1 => add_instance_acnt_a11_a_a21COUT1_40,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => add_instance_acnt(12),
	cout => add_instance_acnt_a12_a_a23);

-- Location: LC_X15_Y9_N5
add_instance_acnt_a13_a : maxv_lcell
-- Equation(s):
-- add_instance_acnt(13) = DFFEAS(add_instance_acnt(13) $ ((((!add_instance_acnt_a12_a_a23)))), GLOBAL(input_vector_acombout(1)), VCC, , , , , , )
-- add_instance_acnt_a13_a_a25 = CARRY((add_instance_acnt(13) & ((!add_instance_acnt_a12_a_a23))))
-- add_instance_acnt_a13_a_a25COUT1_41 = CARRY((add_instance_acnt(13) & ((!add_instance_acnt_a12_a_a23))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => input_vector_acombout(1),
	dataa => add_instance_acnt(13),
	aclr => GND,
	cin => add_instance_acnt_a12_a_a23,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => add_instance_acnt(13),
	cout0 => add_instance_acnt_a13_a_a25,
	cout1 => add_instance_acnt_a13_a_a25COUT1_41);

-- Location: LC_X15_Y9_N6
add_instance_acnt_a14_a : maxv_lcell
-- Equation(s):
-- add_instance_acnt(14) = DFFEAS(add_instance_acnt(14) $ (((((!add_instance_acnt_a12_a_a23 & add_instance_acnt_a13_a_a25) # (add_instance_acnt_a12_a_a23 & add_instance_acnt_a13_a_a25COUT1_41))))), GLOBAL(input_vector_acombout(1)), VCC, , , , , , )
-- add_instance_acnt_a14_a_a27 = CARRY(((!add_instance_acnt_a13_a_a25)) # (!add_instance_acnt(14)))
-- add_instance_acnt_a14_a_a27COUT1_42 = CARRY(((!add_instance_acnt_a13_a_a25COUT1_41)) # (!add_instance_acnt(14)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => input_vector_acombout(1),
	dataa => add_instance_acnt(14),
	aclr => GND,
	cin => add_instance_acnt_a12_a_a23,
	cin0 => add_instance_acnt_a13_a_a25,
	cin1 => add_instance_acnt_a13_a_a25COUT1_41,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => add_instance_acnt(14),
	cout0 => add_instance_acnt_a14_a_a27,
	cout1 => add_instance_acnt_a14_a_a27COUT1_42);

-- Location: LC_X15_Y9_N7
add_instance_acnt_a15_a : maxv_lcell
-- Equation(s):
-- add_instance_acnt(15) = DFFEAS((add_instance_acnt(15) $ ((!(!add_instance_acnt_a12_a_a23 & add_instance_acnt_a14_a_a27) # (add_instance_acnt_a12_a_a23 & add_instance_acnt_a14_a_a27COUT1_42)))), GLOBAL(input_vector_acombout(1)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c3c3",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => input_vector_acombout(1),
	datab => add_instance_acnt(15),
	aclr => GND,
	cin => add_instance_acnt_a12_a_a23,
	cin0 => add_instance_acnt_a14_a_a27,
	cin1 => add_instance_acnt_a14_a_a27COUT1_42,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => add_instance_acnt(15));

-- Location: LC_X15_Y9_N9
add_instance_aEqual0_a3 : maxv_lcell
-- Equation(s):
-- add_instance_aEqual0_a3_combout = (!add_instance_acnt(13) & (!add_instance_acnt(15) & (add_instance_acnt(12) & !add_instance_acnt(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => add_instance_acnt(13),
	datab => add_instance_acnt(15),
	datac => add_instance_acnt(12),
	datad => add_instance_acnt(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_aEqual0_a3_combout);

-- Location: LC_X14_Y9_N1
add_instance_aEqual0_a1 : maxv_lcell
-- Equation(s):
-- add_instance_aEqual0_a1_combout = (!add_instance_acnt(6) & (add_instance_acnt(7) & (!add_instance_acnt(5) & !add_instance_acnt(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => add_instance_acnt(6),
	datab => add_instance_acnt(7),
	datac => add_instance_acnt(5),
	datad => add_instance_acnt(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_aEqual0_a1_combout);

-- Location: LC_X14_Y9_N0
add_instance_aEqual0_a0 : maxv_lcell
-- Equation(s):
-- add_instance_aEqual0_a0_combout = (add_instance_acnt(3) & (!add_instance_acnt(0) & (!add_instance_acnt(2) & !add_instance_acnt(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => add_instance_acnt(3),
	datab => add_instance_acnt(0),
	datac => add_instance_acnt(2),
	datad => add_instance_acnt(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_aEqual0_a0_combout);

-- Location: LC_X15_Y9_N8
add_instance_aEqual0_a2 : maxv_lcell
-- Equation(s):
-- add_instance_aEqual0_a2_combout = (!add_instance_acnt(11) & (add_instance_acnt(9) & (add_instance_acnt(8) & !add_instance_acnt(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => add_instance_acnt(11),
	datab => add_instance_acnt(9),
	datac => add_instance_acnt(8),
	datad => add_instance_acnt(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_aEqual0_a2_combout);

-- Location: LC_X16_Y9_N9
add_instance_aEqual0_a4 : maxv_lcell
-- Equation(s):
-- add_instance_aEqual0_a4_combout = (add_instance_aEqual0_a3_combout & (add_instance_aEqual0_a1_combout & (add_instance_aEqual0_a0_combout & add_instance_aEqual0_a2_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => add_instance_aEqual0_a3_combout,
	datab => add_instance_aEqual0_a1_combout,
	datac => add_instance_aEqual0_a0_combout,
	datad => add_instance_aEqual0_a2_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_aEqual0_a4_combout);

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
input_vector_a0_a_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(0));

-- Location: PIN_106,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
output_vector_a0_a_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => add_instance_aEqual0_a4_combout,
	oe => VCC,
	padio => ww_output_vector(0));
END structure;


