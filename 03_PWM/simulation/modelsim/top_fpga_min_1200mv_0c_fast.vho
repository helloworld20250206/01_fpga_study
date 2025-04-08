-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Full Version"

-- DATE "03/24/2025 21:40:47"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top_fpga IS
    PORT (
	clk : IN std_logic;
	key_n : IN std_logic;
	led : BUFFER std_logic
	);
END top_fpga;

-- Design Ports Information
-- led	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_n	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top_fpga IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_key_n : std_logic;
SIGNAL ww_led : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \led~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \cnt_8[0]~2_combout\ : std_logic;
SIGNAL \cnt_8[1]~0_combout\ : std_logic;
SIGNAL \cnt_8[2]~1_combout\ : std_logic;
SIGNAL \key_n~input_o\ : std_logic;
SIGNAL \key_jitter_inst|key_down_check[0]~0_combout\ : std_logic;
SIGNAL \key_jitter_inst|key_down_check[0]~feeder_combout\ : std_logic;
SIGNAL \key_jitter_inst|cnt0[1]~19_combout\ : std_logic;
SIGNAL \key_jitter_inst|cnt0[1]~20\ : std_logic;
SIGNAL \key_jitter_inst|cnt0[2]~21_combout\ : std_logic;
SIGNAL \key_jitter_inst|cnt0[2]~22\ : std_logic;
SIGNAL \key_jitter_inst|cnt0[3]~23_combout\ : std_logic;
SIGNAL \key_jitter_inst|Equal0~1_combout\ : std_logic;
SIGNAL \key_jitter_inst|cnt0[3]~24\ : std_logic;
SIGNAL \key_jitter_inst|cnt0[4]~25_combout\ : std_logic;
SIGNAL \key_jitter_inst|cnt0[4]~26\ : std_logic;
SIGNAL \key_jitter_inst|cnt0[5]~27_combout\ : std_logic;
SIGNAL \key_jitter_inst|cnt0[5]~28\ : std_logic;
SIGNAL \key_jitter_inst|cnt0[6]~29_combout\ : std_logic;
SIGNAL \key_jitter_inst|cnt0[6]~30\ : std_logic;
SIGNAL \key_jitter_inst|cnt0[7]~31_combout\ : std_logic;
SIGNAL \key_jitter_inst|Equal0~2_combout\ : std_logic;
SIGNAL \key_jitter_inst|Equal0~3_combout\ : std_logic;
SIGNAL \key_jitter_inst|cnt0[7]~32\ : std_logic;
SIGNAL \key_jitter_inst|cnt0[8]~33_combout\ : std_logic;
SIGNAL \key_jitter_inst|cnt0[8]~34\ : std_logic;
SIGNAL \key_jitter_inst|cnt0[9]~35_combout\ : std_logic;
SIGNAL \key_jitter_inst|cnt0[9]~36\ : std_logic;
SIGNAL \key_jitter_inst|cnt0[10]~37_combout\ : std_logic;
SIGNAL \key_jitter_inst|cnt0[10]~38\ : std_logic;
SIGNAL \key_jitter_inst|cnt0[11]~39_combout\ : std_logic;
SIGNAL \key_jitter_inst|cnt0[11]~40\ : std_logic;
SIGNAL \key_jitter_inst|cnt0[12]~41_combout\ : std_logic;
SIGNAL \key_jitter_inst|cnt0[12]~42\ : std_logic;
SIGNAL \key_jitter_inst|cnt0[13]~43_combout\ : std_logic;
SIGNAL \key_jitter_inst|cnt0[13]~44\ : std_logic;
SIGNAL \key_jitter_inst|cnt0[14]~45_combout\ : std_logic;
SIGNAL \key_jitter_inst|cnt0[14]~46\ : std_logic;
SIGNAL \key_jitter_inst|cnt0[15]~47_combout\ : std_logic;
SIGNAL \key_jitter_inst|cnt0[15]~48\ : std_logic;
SIGNAL \key_jitter_inst|cnt0[16]~49_combout\ : std_logic;
SIGNAL \key_jitter_inst|cnt0[16]~50\ : std_logic;
SIGNAL \key_jitter_inst|cnt0[17]~51_combout\ : std_logic;
SIGNAL \key_jitter_inst|cnt0[17]~52\ : std_logic;
SIGNAL \key_jitter_inst|cnt0[18]~53_combout\ : std_logic;
SIGNAL \key_jitter_inst|cnt0[18]~54\ : std_logic;
SIGNAL \key_jitter_inst|cnt0[19]~55_combout\ : std_logic;
SIGNAL \key_jitter_inst|Equal0~0_combout\ : std_logic;
SIGNAL \key_jitter_inst|Equal0~4_combout\ : std_logic;
SIGNAL \key_jitter_inst|Equal0~5_combout\ : std_logic;
SIGNAL \key_jitter_inst|Equal0~6_combout\ : std_logic;
SIGNAL \key_jitter_inst|Equal1~0_combout\ : std_logic;
SIGNAL \key_jitter_inst|key_valid_r0~feeder_combout\ : std_logic;
SIGNAL \key_jitter_inst|key_valid_r0~q\ : std_logic;
SIGNAL \key_jitter_inst|key_valid_r1~feeder_combout\ : std_logic;
SIGNAL \key_jitter_inst|key_valid_r1~q\ : std_logic;
SIGNAL \key_jitter_inst|key_valid_r2~feeder_combout\ : std_logic;
SIGNAL \key_jitter_inst|key_valid_r2~q\ : std_logic;
SIGNAL \key_jitter_inst|Equal2~0_combout\ : std_logic;
SIGNAL \key_jitter_inst|key_valid~q\ : std_logic;
SIGNAL \cnt_pwm[0]~1_combout\ : std_logic;
SIGNAL \cnt_pwm[1]~2_combout\ : std_logic;
SIGNAL \cnt_pwm[2]~0_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \led_r~0_combout\ : std_logic;
SIGNAL \led_r~1_combout\ : std_logic;
SIGNAL \led_r~q\ : std_logic;
SIGNAL cnt_pwm : std_logic_vector(2 DOWNTO 0);
SIGNAL cnt_8 : std_logic_vector(2 DOWNTO 0);
SIGNAL \key_jitter_inst|key_down_check\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \key_jitter_inst|cnt0\ : std_logic_vector(19 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_key_n <= key_n;
led <= ww_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X3_Y0_N2
\led~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_r~q\,
	devoe => ww_devoe,
	o => \led~output_o\);

-- Location: IOIBUF_X0_Y11_N22
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G3
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X32_Y13_N10
\cnt_8[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt_8[0]~2_combout\ = !cnt_8(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => cnt_8(0),
	combout => \cnt_8[0]~2_combout\);

-- Location: FF_X32_Y13_N11
\cnt_8[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_8[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_8(0));

-- Location: LCCOMB_X33_Y13_N28
\cnt_8[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt_8[1]~0_combout\ = cnt_8(1) $ (cnt_8(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => cnt_8(1),
	datad => cnt_8(0),
	combout => \cnt_8[1]~0_combout\);

-- Location: FF_X33_Y13_N29
\cnt_8[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_8[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_8(1));

-- Location: LCCOMB_X33_Y13_N26
\cnt_8[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt_8[2]~1_combout\ = cnt_8(2) $ (((cnt_8(0) & cnt_8(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_8(0),
	datac => cnt_8(2),
	datad => cnt_8(1),
	combout => \cnt_8[2]~1_combout\);

-- Location: FF_X33_Y13_N27
\cnt_8[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_8[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_8(2));

-- Location: IOIBUF_X34_Y12_N8
\key_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_n,
	o => \key_n~input_o\);

-- Location: LCCOMB_X33_Y12_N0
\key_jitter_inst|key_down_check[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \key_jitter_inst|key_down_check[0]~0_combout\ = !\key_n~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key_n~input_o\,
	combout => \key_jitter_inst|key_down_check[0]~0_combout\);

-- Location: LCCOMB_X33_Y13_N12
\key_jitter_inst|key_down_check[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \key_jitter_inst|key_down_check[0]~feeder_combout\ = \key_jitter_inst|key_down_check[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key_jitter_inst|key_down_check[0]~0_combout\,
	combout => \key_jitter_inst|key_down_check[0]~feeder_combout\);

-- Location: LCCOMB_X32_Y13_N14
\key_jitter_inst|cnt0[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \key_jitter_inst|cnt0[1]~19_combout\ = (cnt_8(0) & (\key_jitter_inst|cnt0\(1) $ (VCC))) # (!cnt_8(0) & (\key_jitter_inst|cnt0\(1) & VCC))
-- \key_jitter_inst|cnt0[1]~20\ = CARRY((cnt_8(0) & \key_jitter_inst|cnt0\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_8(0),
	datab => \key_jitter_inst|cnt0\(1),
	datad => VCC,
	combout => \key_jitter_inst|cnt0[1]~19_combout\,
	cout => \key_jitter_inst|cnt0[1]~20\);

-- Location: FF_X32_Y13_N15
\key_jitter_inst|cnt0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \key_jitter_inst|cnt0[1]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_jitter_inst|cnt0\(1));

-- Location: LCCOMB_X32_Y13_N16
\key_jitter_inst|cnt0[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \key_jitter_inst|cnt0[2]~21_combout\ = (\key_jitter_inst|cnt0\(2) & (!\key_jitter_inst|cnt0[1]~20\)) # (!\key_jitter_inst|cnt0\(2) & ((\key_jitter_inst|cnt0[1]~20\) # (GND)))
-- \key_jitter_inst|cnt0[2]~22\ = CARRY((!\key_jitter_inst|cnt0[1]~20\) # (!\key_jitter_inst|cnt0\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key_jitter_inst|cnt0\(2),
	datad => VCC,
	cin => \key_jitter_inst|cnt0[1]~20\,
	combout => \key_jitter_inst|cnt0[2]~21_combout\,
	cout => \key_jitter_inst|cnt0[2]~22\);

-- Location: FF_X32_Y13_N17
\key_jitter_inst|cnt0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \key_jitter_inst|cnt0[2]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_jitter_inst|cnt0\(2));

-- Location: LCCOMB_X32_Y13_N18
\key_jitter_inst|cnt0[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \key_jitter_inst|cnt0[3]~23_combout\ = (\key_jitter_inst|cnt0\(3) & (\key_jitter_inst|cnt0[2]~22\ $ (GND))) # (!\key_jitter_inst|cnt0\(3) & (!\key_jitter_inst|cnt0[2]~22\ & VCC))
-- \key_jitter_inst|cnt0[3]~24\ = CARRY((\key_jitter_inst|cnt0\(3) & !\key_jitter_inst|cnt0[2]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key_jitter_inst|cnt0\(3),
	datad => VCC,
	cin => \key_jitter_inst|cnt0[2]~22\,
	combout => \key_jitter_inst|cnt0[3]~23_combout\,
	cout => \key_jitter_inst|cnt0[3]~24\);

-- Location: FF_X32_Y13_N19
\key_jitter_inst|cnt0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \key_jitter_inst|cnt0[3]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_jitter_inst|cnt0\(3));

-- Location: LCCOMB_X32_Y13_N0
\key_jitter_inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \key_jitter_inst|Equal0~1_combout\ = (cnt_8(0) & (\key_jitter_inst|cnt0\(2) & (\key_jitter_inst|cnt0\(1) & \key_jitter_inst|cnt0\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_8(0),
	datab => \key_jitter_inst|cnt0\(2),
	datac => \key_jitter_inst|cnt0\(1),
	datad => \key_jitter_inst|cnt0\(3),
	combout => \key_jitter_inst|Equal0~1_combout\);

-- Location: LCCOMB_X32_Y13_N20
\key_jitter_inst|cnt0[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \key_jitter_inst|cnt0[4]~25_combout\ = (\key_jitter_inst|cnt0\(4) & (!\key_jitter_inst|cnt0[3]~24\)) # (!\key_jitter_inst|cnt0\(4) & ((\key_jitter_inst|cnt0[3]~24\) # (GND)))
-- \key_jitter_inst|cnt0[4]~26\ = CARRY((!\key_jitter_inst|cnt0[3]~24\) # (!\key_jitter_inst|cnt0\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key_jitter_inst|cnt0\(4),
	datad => VCC,
	cin => \key_jitter_inst|cnt0[3]~24\,
	combout => \key_jitter_inst|cnt0[4]~25_combout\,
	cout => \key_jitter_inst|cnt0[4]~26\);

-- Location: FF_X32_Y13_N21
\key_jitter_inst|cnt0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \key_jitter_inst|cnt0[4]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_jitter_inst|cnt0\(4));

-- Location: LCCOMB_X32_Y13_N22
\key_jitter_inst|cnt0[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \key_jitter_inst|cnt0[5]~27_combout\ = (\key_jitter_inst|cnt0\(5) & (\key_jitter_inst|cnt0[4]~26\ $ (GND))) # (!\key_jitter_inst|cnt0\(5) & (!\key_jitter_inst|cnt0[4]~26\ & VCC))
-- \key_jitter_inst|cnt0[5]~28\ = CARRY((\key_jitter_inst|cnt0\(5) & !\key_jitter_inst|cnt0[4]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key_jitter_inst|cnt0\(5),
	datad => VCC,
	cin => \key_jitter_inst|cnt0[4]~26\,
	combout => \key_jitter_inst|cnt0[5]~27_combout\,
	cout => \key_jitter_inst|cnt0[5]~28\);

-- Location: FF_X32_Y13_N23
\key_jitter_inst|cnt0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \key_jitter_inst|cnt0[5]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_jitter_inst|cnt0\(5));

-- Location: LCCOMB_X32_Y13_N24
\key_jitter_inst|cnt0[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \key_jitter_inst|cnt0[6]~29_combout\ = (\key_jitter_inst|cnt0\(6) & (!\key_jitter_inst|cnt0[5]~28\)) # (!\key_jitter_inst|cnt0\(6) & ((\key_jitter_inst|cnt0[5]~28\) # (GND)))
-- \key_jitter_inst|cnt0[6]~30\ = CARRY((!\key_jitter_inst|cnt0[5]~28\) # (!\key_jitter_inst|cnt0\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key_jitter_inst|cnt0\(6),
	datad => VCC,
	cin => \key_jitter_inst|cnt0[5]~28\,
	combout => \key_jitter_inst|cnt0[6]~29_combout\,
	cout => \key_jitter_inst|cnt0[6]~30\);

-- Location: FF_X32_Y13_N25
\key_jitter_inst|cnt0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \key_jitter_inst|cnt0[6]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_jitter_inst|cnt0\(6));

-- Location: LCCOMB_X32_Y13_N26
\key_jitter_inst|cnt0[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \key_jitter_inst|cnt0[7]~31_combout\ = (\key_jitter_inst|cnt0\(7) & (\key_jitter_inst|cnt0[6]~30\ $ (GND))) # (!\key_jitter_inst|cnt0\(7) & (!\key_jitter_inst|cnt0[6]~30\ & VCC))
-- \key_jitter_inst|cnt0[7]~32\ = CARRY((\key_jitter_inst|cnt0\(7) & !\key_jitter_inst|cnt0[6]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key_jitter_inst|cnt0\(7),
	datad => VCC,
	cin => \key_jitter_inst|cnt0[6]~30\,
	combout => \key_jitter_inst|cnt0[7]~31_combout\,
	cout => \key_jitter_inst|cnt0[7]~32\);

-- Location: FF_X32_Y13_N27
\key_jitter_inst|cnt0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \key_jitter_inst|cnt0[7]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_jitter_inst|cnt0\(7));

-- Location: LCCOMB_X32_Y13_N2
\key_jitter_inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \key_jitter_inst|Equal0~2_combout\ = (\key_jitter_inst|cnt0\(5) & (\key_jitter_inst|cnt0\(4) & (\key_jitter_inst|cnt0\(7) & \key_jitter_inst|cnt0\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_jitter_inst|cnt0\(5),
	datab => \key_jitter_inst|cnt0\(4),
	datac => \key_jitter_inst|cnt0\(7),
	datad => \key_jitter_inst|cnt0\(6),
	combout => \key_jitter_inst|Equal0~2_combout\);

-- Location: LCCOMB_X32_Y13_N12
\key_jitter_inst|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \key_jitter_inst|Equal0~3_combout\ = (\key_jitter_inst|Equal0~1_combout\ & \key_jitter_inst|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key_jitter_inst|Equal0~1_combout\,
	datad => \key_jitter_inst|Equal0~2_combout\,
	combout => \key_jitter_inst|Equal0~3_combout\);

-- Location: LCCOMB_X32_Y13_N28
\key_jitter_inst|cnt0[8]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \key_jitter_inst|cnt0[8]~33_combout\ = (\key_jitter_inst|cnt0\(8) & (!\key_jitter_inst|cnt0[7]~32\)) # (!\key_jitter_inst|cnt0\(8) & ((\key_jitter_inst|cnt0[7]~32\) # (GND)))
-- \key_jitter_inst|cnt0[8]~34\ = CARRY((!\key_jitter_inst|cnt0[7]~32\) # (!\key_jitter_inst|cnt0\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key_jitter_inst|cnt0\(8),
	datad => VCC,
	cin => \key_jitter_inst|cnt0[7]~32\,
	combout => \key_jitter_inst|cnt0[8]~33_combout\,
	cout => \key_jitter_inst|cnt0[8]~34\);

-- Location: FF_X32_Y13_N29
\key_jitter_inst|cnt0[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \key_jitter_inst|cnt0[8]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_jitter_inst|cnt0\(8));

-- Location: LCCOMB_X32_Y13_N30
\key_jitter_inst|cnt0[9]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \key_jitter_inst|cnt0[9]~35_combout\ = (\key_jitter_inst|cnt0\(9) & (\key_jitter_inst|cnt0[8]~34\ $ (GND))) # (!\key_jitter_inst|cnt0\(9) & (!\key_jitter_inst|cnt0[8]~34\ & VCC))
-- \key_jitter_inst|cnt0[9]~36\ = CARRY((\key_jitter_inst|cnt0\(9) & !\key_jitter_inst|cnt0[8]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key_jitter_inst|cnt0\(9),
	datad => VCC,
	cin => \key_jitter_inst|cnt0[8]~34\,
	combout => \key_jitter_inst|cnt0[9]~35_combout\,
	cout => \key_jitter_inst|cnt0[9]~36\);

-- Location: FF_X32_Y13_N5
\key_jitter_inst|cnt0[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \key_jitter_inst|cnt0[9]~35_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_jitter_inst|cnt0\(9));

-- Location: LCCOMB_X32_Y12_N0
\key_jitter_inst|cnt0[10]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \key_jitter_inst|cnt0[10]~37_combout\ = (\key_jitter_inst|cnt0\(10) & (!\key_jitter_inst|cnt0[9]~36\)) # (!\key_jitter_inst|cnt0\(10) & ((\key_jitter_inst|cnt0[9]~36\) # (GND)))
-- \key_jitter_inst|cnt0[10]~38\ = CARRY((!\key_jitter_inst|cnt0[9]~36\) # (!\key_jitter_inst|cnt0\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key_jitter_inst|cnt0\(10),
	datad => VCC,
	cin => \key_jitter_inst|cnt0[9]~36\,
	combout => \key_jitter_inst|cnt0[10]~37_combout\,
	cout => \key_jitter_inst|cnt0[10]~38\);

-- Location: FF_X32_Y12_N1
\key_jitter_inst|cnt0[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \key_jitter_inst|cnt0[10]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_jitter_inst|cnt0\(10));

-- Location: LCCOMB_X32_Y12_N2
\key_jitter_inst|cnt0[11]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \key_jitter_inst|cnt0[11]~39_combout\ = (\key_jitter_inst|cnt0\(11) & (\key_jitter_inst|cnt0[10]~38\ $ (GND))) # (!\key_jitter_inst|cnt0\(11) & (!\key_jitter_inst|cnt0[10]~38\ & VCC))
-- \key_jitter_inst|cnt0[11]~40\ = CARRY((\key_jitter_inst|cnt0\(11) & !\key_jitter_inst|cnt0[10]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key_jitter_inst|cnt0\(11),
	datad => VCC,
	cin => \key_jitter_inst|cnt0[10]~38\,
	combout => \key_jitter_inst|cnt0[11]~39_combout\,
	cout => \key_jitter_inst|cnt0[11]~40\);

-- Location: FF_X32_Y12_N3
\key_jitter_inst|cnt0[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \key_jitter_inst|cnt0[11]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_jitter_inst|cnt0\(11));

-- Location: LCCOMB_X32_Y12_N4
\key_jitter_inst|cnt0[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \key_jitter_inst|cnt0[12]~41_combout\ = (\key_jitter_inst|cnt0\(12) & (!\key_jitter_inst|cnt0[11]~40\)) # (!\key_jitter_inst|cnt0\(12) & ((\key_jitter_inst|cnt0[11]~40\) # (GND)))
-- \key_jitter_inst|cnt0[12]~42\ = CARRY((!\key_jitter_inst|cnt0[11]~40\) # (!\key_jitter_inst|cnt0\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key_jitter_inst|cnt0\(12),
	datad => VCC,
	cin => \key_jitter_inst|cnt0[11]~40\,
	combout => \key_jitter_inst|cnt0[12]~41_combout\,
	cout => \key_jitter_inst|cnt0[12]~42\);

-- Location: FF_X32_Y12_N5
\key_jitter_inst|cnt0[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \key_jitter_inst|cnt0[12]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_jitter_inst|cnt0\(12));

-- Location: LCCOMB_X32_Y12_N6
\key_jitter_inst|cnt0[13]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \key_jitter_inst|cnt0[13]~43_combout\ = (\key_jitter_inst|cnt0\(13) & (\key_jitter_inst|cnt0[12]~42\ $ (GND))) # (!\key_jitter_inst|cnt0\(13) & (!\key_jitter_inst|cnt0[12]~42\ & VCC))
-- \key_jitter_inst|cnt0[13]~44\ = CARRY((\key_jitter_inst|cnt0\(13) & !\key_jitter_inst|cnt0[12]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key_jitter_inst|cnt0\(13),
	datad => VCC,
	cin => \key_jitter_inst|cnt0[12]~42\,
	combout => \key_jitter_inst|cnt0[13]~43_combout\,
	cout => \key_jitter_inst|cnt0[13]~44\);

-- Location: FF_X32_Y12_N7
\key_jitter_inst|cnt0[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \key_jitter_inst|cnt0[13]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_jitter_inst|cnt0\(13));

-- Location: LCCOMB_X32_Y12_N8
\key_jitter_inst|cnt0[14]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \key_jitter_inst|cnt0[14]~45_combout\ = (\key_jitter_inst|cnt0\(14) & (!\key_jitter_inst|cnt0[13]~44\)) # (!\key_jitter_inst|cnt0\(14) & ((\key_jitter_inst|cnt0[13]~44\) # (GND)))
-- \key_jitter_inst|cnt0[14]~46\ = CARRY((!\key_jitter_inst|cnt0[13]~44\) # (!\key_jitter_inst|cnt0\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key_jitter_inst|cnt0\(14),
	datad => VCC,
	cin => \key_jitter_inst|cnt0[13]~44\,
	combout => \key_jitter_inst|cnt0[14]~45_combout\,
	cout => \key_jitter_inst|cnt0[14]~46\);

-- Location: FF_X32_Y12_N9
\key_jitter_inst|cnt0[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \key_jitter_inst|cnt0[14]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_jitter_inst|cnt0\(14));

-- Location: LCCOMB_X32_Y12_N10
\key_jitter_inst|cnt0[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \key_jitter_inst|cnt0[15]~47_combout\ = (\key_jitter_inst|cnt0\(15) & (\key_jitter_inst|cnt0[14]~46\ $ (GND))) # (!\key_jitter_inst|cnt0\(15) & (!\key_jitter_inst|cnt0[14]~46\ & VCC))
-- \key_jitter_inst|cnt0[15]~48\ = CARRY((\key_jitter_inst|cnt0\(15) & !\key_jitter_inst|cnt0[14]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key_jitter_inst|cnt0\(15),
	datad => VCC,
	cin => \key_jitter_inst|cnt0[14]~46\,
	combout => \key_jitter_inst|cnt0[15]~47_combout\,
	cout => \key_jitter_inst|cnt0[15]~48\);

-- Location: FF_X32_Y12_N11
\key_jitter_inst|cnt0[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \key_jitter_inst|cnt0[15]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_jitter_inst|cnt0\(15));

-- Location: LCCOMB_X32_Y12_N12
\key_jitter_inst|cnt0[16]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \key_jitter_inst|cnt0[16]~49_combout\ = (\key_jitter_inst|cnt0\(16) & (!\key_jitter_inst|cnt0[15]~48\)) # (!\key_jitter_inst|cnt0\(16) & ((\key_jitter_inst|cnt0[15]~48\) # (GND)))
-- \key_jitter_inst|cnt0[16]~50\ = CARRY((!\key_jitter_inst|cnt0[15]~48\) # (!\key_jitter_inst|cnt0\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key_jitter_inst|cnt0\(16),
	datad => VCC,
	cin => \key_jitter_inst|cnt0[15]~48\,
	combout => \key_jitter_inst|cnt0[16]~49_combout\,
	cout => \key_jitter_inst|cnt0[16]~50\);

-- Location: FF_X32_Y12_N13
\key_jitter_inst|cnt0[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \key_jitter_inst|cnt0[16]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_jitter_inst|cnt0\(16));

-- Location: LCCOMB_X32_Y12_N14
\key_jitter_inst|cnt0[17]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \key_jitter_inst|cnt0[17]~51_combout\ = (\key_jitter_inst|cnt0\(17) & (\key_jitter_inst|cnt0[16]~50\ $ (GND))) # (!\key_jitter_inst|cnt0\(17) & (!\key_jitter_inst|cnt0[16]~50\ & VCC))
-- \key_jitter_inst|cnt0[17]~52\ = CARRY((\key_jitter_inst|cnt0\(17) & !\key_jitter_inst|cnt0[16]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key_jitter_inst|cnt0\(17),
	datad => VCC,
	cin => \key_jitter_inst|cnt0[16]~50\,
	combout => \key_jitter_inst|cnt0[17]~51_combout\,
	cout => \key_jitter_inst|cnt0[17]~52\);

-- Location: FF_X32_Y12_N15
\key_jitter_inst|cnt0[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \key_jitter_inst|cnt0[17]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_jitter_inst|cnt0\(17));

-- Location: LCCOMB_X32_Y12_N16
\key_jitter_inst|cnt0[18]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \key_jitter_inst|cnt0[18]~53_combout\ = (\key_jitter_inst|cnt0\(18) & (!\key_jitter_inst|cnt0[17]~52\)) # (!\key_jitter_inst|cnt0\(18) & ((\key_jitter_inst|cnt0[17]~52\) # (GND)))
-- \key_jitter_inst|cnt0[18]~54\ = CARRY((!\key_jitter_inst|cnt0[17]~52\) # (!\key_jitter_inst|cnt0\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key_jitter_inst|cnt0\(18),
	datad => VCC,
	cin => \key_jitter_inst|cnt0[17]~52\,
	combout => \key_jitter_inst|cnt0[18]~53_combout\,
	cout => \key_jitter_inst|cnt0[18]~54\);

-- Location: FF_X32_Y12_N17
\key_jitter_inst|cnt0[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \key_jitter_inst|cnt0[18]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_jitter_inst|cnt0\(18));

-- Location: LCCOMB_X32_Y12_N18
\key_jitter_inst|cnt0[19]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \key_jitter_inst|cnt0[19]~55_combout\ = \key_jitter_inst|cnt0[18]~54\ $ (!\key_jitter_inst|cnt0\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \key_jitter_inst|cnt0\(19),
	cin => \key_jitter_inst|cnt0[18]~54\,
	combout => \key_jitter_inst|cnt0[19]~55_combout\);

-- Location: FF_X32_Y12_N19
\key_jitter_inst|cnt0[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \key_jitter_inst|cnt0[19]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_jitter_inst|cnt0\(19));

-- Location: LCCOMB_X32_Y12_N24
\key_jitter_inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \key_jitter_inst|Equal0~0_combout\ = (\key_jitter_inst|cnt0\(16) & (\key_jitter_inst|cnt0\(19) & (\key_jitter_inst|cnt0\(17) & \key_jitter_inst|cnt0\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_jitter_inst|cnt0\(16),
	datab => \key_jitter_inst|cnt0\(19),
	datac => \key_jitter_inst|cnt0\(17),
	datad => \key_jitter_inst|cnt0\(18),
	combout => \key_jitter_inst|Equal0~0_combout\);

-- Location: LCCOMB_X32_Y13_N4
\key_jitter_inst|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \key_jitter_inst|Equal0~4_combout\ = (\key_jitter_inst|cnt0\(8) & (\key_jitter_inst|cnt0\(10) & (\key_jitter_inst|cnt0\(9) & \key_jitter_inst|cnt0\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_jitter_inst|cnt0\(8),
	datab => \key_jitter_inst|cnt0\(10),
	datac => \key_jitter_inst|cnt0\(9),
	datad => \key_jitter_inst|cnt0\(11),
	combout => \key_jitter_inst|Equal0~4_combout\);

-- Location: LCCOMB_X32_Y12_N26
\key_jitter_inst|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \key_jitter_inst|Equal0~5_combout\ = (\key_jitter_inst|cnt0\(13) & (\key_jitter_inst|cnt0\(12) & (\key_jitter_inst|cnt0\(14) & \key_jitter_inst|cnt0\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_jitter_inst|cnt0\(13),
	datab => \key_jitter_inst|cnt0\(12),
	datac => \key_jitter_inst|cnt0\(14),
	datad => \key_jitter_inst|cnt0\(15),
	combout => \key_jitter_inst|Equal0~5_combout\);

-- Location: LCCOMB_X32_Y13_N6
\key_jitter_inst|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \key_jitter_inst|Equal0~6_combout\ = (\key_jitter_inst|Equal0~3_combout\ & (\key_jitter_inst|Equal0~0_combout\ & (\key_jitter_inst|Equal0~4_combout\ & \key_jitter_inst|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_jitter_inst|Equal0~3_combout\,
	datab => \key_jitter_inst|Equal0~0_combout\,
	datac => \key_jitter_inst|Equal0~4_combout\,
	datad => \key_jitter_inst|Equal0~5_combout\,
	combout => \key_jitter_inst|Equal0~6_combout\);

-- Location: FF_X33_Y13_N13
\key_jitter_inst|key_down_check[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \key_jitter_inst|key_down_check[0]~feeder_combout\,
	ena => \key_jitter_inst|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_jitter_inst|key_down_check\(0));

-- Location: FF_X32_Y13_N9
\key_jitter_inst|key_down_check[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \key_jitter_inst|key_down_check\(0),
	sload => VCC,
	ena => \key_jitter_inst|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_jitter_inst|key_down_check\(1));

-- Location: FF_X32_Y13_N31
\key_jitter_inst|key_down_check[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \key_jitter_inst|key_down_check\(1),
	sload => VCC,
	ena => \key_jitter_inst|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_jitter_inst|key_down_check\(2));

-- Location: FF_X32_Y13_N13
\key_jitter_inst|key_down_check[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \key_jitter_inst|key_down_check\(2),
	sload => VCC,
	ena => \key_jitter_inst|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_jitter_inst|key_down_check\(3));

-- Location: LCCOMB_X32_Y13_N8
\key_jitter_inst|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \key_jitter_inst|Equal1~0_combout\ = (!\key_jitter_inst|key_down_check\(2) & (\key_jitter_inst|key_down_check\(0) & (\key_jitter_inst|key_down_check\(1) & !\key_jitter_inst|key_down_check\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_jitter_inst|key_down_check\(2),
	datab => \key_jitter_inst|key_down_check\(0),
	datac => \key_jitter_inst|key_down_check\(1),
	datad => \key_jitter_inst|key_down_check\(3),
	combout => \key_jitter_inst|Equal1~0_combout\);

-- Location: LCCOMB_X33_Y13_N10
\key_jitter_inst|key_valid_r0~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \key_jitter_inst|key_valid_r0~feeder_combout\ = \key_jitter_inst|Equal1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key_jitter_inst|Equal1~0_combout\,
	combout => \key_jitter_inst|key_valid_r0~feeder_combout\);

-- Location: FF_X33_Y13_N11
\key_jitter_inst|key_valid_r0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \key_jitter_inst|key_valid_r0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_jitter_inst|key_valid_r0~q\);

-- Location: LCCOMB_X33_Y13_N18
\key_jitter_inst|key_valid_r1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \key_jitter_inst|key_valid_r1~feeder_combout\ = \key_jitter_inst|key_valid_r0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key_jitter_inst|key_valid_r0~q\,
	combout => \key_jitter_inst|key_valid_r1~feeder_combout\);

-- Location: FF_X33_Y13_N19
\key_jitter_inst|key_valid_r1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \key_jitter_inst|key_valid_r1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_jitter_inst|key_valid_r1~q\);

-- Location: LCCOMB_X33_Y13_N8
\key_jitter_inst|key_valid_r2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \key_jitter_inst|key_valid_r2~feeder_combout\ = \key_jitter_inst|key_valid_r1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key_jitter_inst|key_valid_r1~q\,
	combout => \key_jitter_inst|key_valid_r2~feeder_combout\);

-- Location: FF_X33_Y13_N9
\key_jitter_inst|key_valid_r2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \key_jitter_inst|key_valid_r2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_jitter_inst|key_valid_r2~q\);

-- Location: LCCOMB_X33_Y13_N24
\key_jitter_inst|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \key_jitter_inst|Equal2~0_combout\ = (!\key_jitter_inst|key_valid_r2~q\ & \key_jitter_inst|key_valid_r1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key_jitter_inst|key_valid_r2~q\,
	datad => \key_jitter_inst|key_valid_r1~q\,
	combout => \key_jitter_inst|Equal2~0_combout\);

-- Location: FF_X33_Y13_N25
\key_jitter_inst|key_valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \key_jitter_inst|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_jitter_inst|key_valid~q\);

-- Location: LCCOMB_X33_Y13_N30
\cnt_pwm[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt_pwm[0]~1_combout\ = cnt_pwm(0) $ (\key_jitter_inst|key_valid~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => cnt_pwm(0),
	datad => \key_jitter_inst|key_valid~q\,
	combout => \cnt_pwm[0]~1_combout\);

-- Location: FF_X33_Y13_N31
\cnt_pwm[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_pwm[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_pwm(0));

-- Location: LCCOMB_X33_Y13_N20
\cnt_pwm[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt_pwm[1]~2_combout\ = cnt_pwm(1) $ (((cnt_pwm(0) & \key_jitter_inst|key_valid~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_pwm(0),
	datab => \key_jitter_inst|key_valid~q\,
	datac => cnt_pwm(1),
	combout => \cnt_pwm[1]~2_combout\);

-- Location: FF_X33_Y13_N21
\cnt_pwm[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_pwm[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_pwm(1));

-- Location: LCCOMB_X33_Y13_N2
\cnt_pwm[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt_pwm[2]~0_combout\ = cnt_pwm(2) $ (((cnt_pwm(0) & (\key_jitter_inst|key_valid~q\ & cnt_pwm(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_pwm(0),
	datab => \key_jitter_inst|key_valid~q\,
	datac => cnt_pwm(2),
	datad => cnt_pwm(1),
	combout => \cnt_pwm[2]~0_combout\);

-- Location: FF_X33_Y13_N3
\cnt_pwm[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_pwm[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_pwm(2));

-- Location: LCCOMB_X33_Y13_N22
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (cnt_pwm(1) & (cnt_8(0) & (!cnt_pwm(0) & cnt_8(1)))) # (!cnt_pwm(1) & ((cnt_8(1)) # ((cnt_8(0) & !cnt_pwm(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_8(0),
	datab => cnt_pwm(1),
	datac => cnt_pwm(0),
	datad => cnt_8(1),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X33_Y13_N16
\led_r~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \led_r~0_combout\ = (cnt_8(2) & (((cnt_pwm(2))))) # (!cnt_8(2) & ((cnt_8(0)) # ((cnt_8(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_8(0),
	datab => cnt_pwm(2),
	datac => cnt_8(2),
	datad => cnt_8(1),
	combout => \led_r~0_combout\);

-- Location: LCCOMB_X33_Y13_N0
\led_r~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \led_r~1_combout\ = (\led_r~0_combout\ & ((cnt_8(2) $ (cnt_pwm(2))) # (!\LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_8(2),
	datab => cnt_pwm(2),
	datac => \LessThan0~0_combout\,
	datad => \led_r~0_combout\,
	combout => \led_r~1_combout\);

-- Location: FF_X33_Y13_N1
led_r : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_r~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_r~q\);

ww_led <= \led~output_o\;
END structure;


