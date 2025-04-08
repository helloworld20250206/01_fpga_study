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

-- DATE "03/24/2025 01:05:40"

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
	rst_n : IN std_logic;
	key_n : IN std_logic;
	led : BUFFER std_logic
	);
END top_fpga;

-- Design Ports Information
-- led	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_n	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_rst_n : std_logic;
SIGNAL ww_key_n : std_logic;
SIGNAL ww_led : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \led~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \key_n~input_o\ : std_logic;
SIGNAL \key_jitter_inst|key_down_check[0]~0_combout\ : std_logic;
SIGNAL \key_jitter_inst|cnt0[0]~57_combout\ : std_logic;
SIGNAL \key_jitter_inst|cnt0[1]~19_combout\ : std_logic;
SIGNAL \key_jitter_inst|cnt0[1]~20\ : std_logic;
SIGNAL \key_jitter_inst|cnt0[2]~21_combout\ : std_logic;
SIGNAL \key_jitter_inst|cnt0[2]~22\ : std_logic;
SIGNAL \key_jitter_inst|cnt0[3]~23_combout\ : std_logic;
SIGNAL \key_jitter_inst|cnt0[3]~24\ : std_logic;
SIGNAL \key_jitter_inst|cnt0[4]~25_combout\ : std_logic;
SIGNAL \key_jitter_inst|cnt0[4]~26\ : std_logic;
SIGNAL \key_jitter_inst|cnt0[5]~27_combout\ : std_logic;
SIGNAL \key_jitter_inst|cnt0[5]~28\ : std_logic;
SIGNAL \key_jitter_inst|cnt0[6]~29_combout\ : std_logic;
SIGNAL \key_jitter_inst|cnt0[6]~30\ : std_logic;
SIGNAL \key_jitter_inst|cnt0[7]~31_combout\ : std_logic;
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
SIGNAL \key_jitter_inst|Equal0~1_combout\ : std_logic;
SIGNAL \key_jitter_inst|Equal0~2_combout\ : std_logic;
SIGNAL \key_jitter_inst|Equal0~3_combout\ : std_logic;
SIGNAL \key_jitter_inst|Equal0~4_combout\ : std_logic;
SIGNAL \key_jitter_inst|Equal0~5_combout\ : std_logic;
SIGNAL \key_jitter_inst|Equal0~6_combout\ : std_logic;
SIGNAL \key_jitter_inst|key_down_check[2]~feeder_combout\ : std_logic;
SIGNAL \key_jitter_inst|key_down_check[3]~feeder_combout\ : std_logic;
SIGNAL \key_jitter_inst|Equal1~0_combout\ : std_logic;
SIGNAL \key_jitter_inst|key_valid_r0~q\ : std_logic;
SIGNAL \key_jitter_inst|key_valid_r1~feeder_combout\ : std_logic;
SIGNAL \key_jitter_inst|key_valid_r1~q\ : std_logic;
SIGNAL \key_jitter_inst|key_valid_r2~feeder_combout\ : std_logic;
SIGNAL \key_jitter_inst|key_valid_r2~q\ : std_logic;
SIGNAL \key_jitter_inst|Equal2~0_combout\ : std_logic;
SIGNAL \key_jitter_inst|key_valid~q\ : std_logic;
SIGNAL \led_en~0_combout\ : std_logic;
SIGNAL \led_en~q\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \timer~9_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \timer~10_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \timer~11_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \timer~3_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \timer~6_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \timer~0_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \timer~4_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \timer~5_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \timer~7_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \timer~1_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \timer~2_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \timer~8_combout\ : std_logic;
SIGNAL \Equal1~7_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \led_r~0_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \led_r~1_combout\ : std_logic;
SIGNAL \led_r~2_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \led_r~q\ : std_logic;
SIGNAL timer : std_logic_vector(31 DOWNTO 0);
SIGNAL \key_jitter_inst|key_down_check\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \key_jitter_inst|cnt0\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \ALT_INV_led_en~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst_n <= rst_n;
ww_key_n <= key_n;
led <= ww_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_led_en~q\ <= NOT \led_en~q\;

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

-- Location: LCCOMB_X23_Y14_N0
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = timer(0) $ (VCC)
-- \Add0~1\ = CARRY(timer(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => timer(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

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

-- Location: LCCOMB_X33_Y14_N8
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

-- Location: LCCOMB_X32_Y14_N10
\key_jitter_inst|cnt0[0]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \key_jitter_inst|cnt0[0]~57_combout\ = !\key_jitter_inst|cnt0\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key_jitter_inst|cnt0\(0),
	combout => \key_jitter_inst|cnt0[0]~57_combout\);

-- Location: FF_X32_Y14_N11
\key_jitter_inst|cnt0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \key_jitter_inst|cnt0[0]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_jitter_inst|cnt0\(0));

-- Location: LCCOMB_X32_Y14_N14
\key_jitter_inst|cnt0[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \key_jitter_inst|cnt0[1]~19_combout\ = (\key_jitter_inst|cnt0\(0) & (\key_jitter_inst|cnt0\(1) $ (VCC))) # (!\key_jitter_inst|cnt0\(0) & (\key_jitter_inst|cnt0\(1) & VCC))
-- \key_jitter_inst|cnt0[1]~20\ = CARRY((\key_jitter_inst|cnt0\(0) & \key_jitter_inst|cnt0\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_jitter_inst|cnt0\(0),
	datab => \key_jitter_inst|cnt0\(1),
	datad => VCC,
	combout => \key_jitter_inst|cnt0[1]~19_combout\,
	cout => \key_jitter_inst|cnt0[1]~20\);

-- Location: FF_X32_Y14_N15
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

-- Location: LCCOMB_X32_Y14_N16
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

-- Location: FF_X32_Y14_N17
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

-- Location: LCCOMB_X32_Y14_N18
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

-- Location: FF_X32_Y14_N19
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

-- Location: LCCOMB_X32_Y14_N20
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

-- Location: FF_X32_Y14_N21
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

-- Location: LCCOMB_X32_Y14_N22
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

-- Location: FF_X32_Y14_N23
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

-- Location: LCCOMB_X32_Y14_N24
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

-- Location: FF_X32_Y14_N25
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

-- Location: LCCOMB_X32_Y14_N26
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

-- Location: FF_X32_Y14_N27
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

-- Location: LCCOMB_X32_Y14_N28
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

-- Location: FF_X32_Y14_N29
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

-- Location: LCCOMB_X32_Y14_N30
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

-- Location: FF_X32_Y14_N31
\key_jitter_inst|cnt0[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \key_jitter_inst|cnt0[9]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_jitter_inst|cnt0\(9));

-- Location: LCCOMB_X32_Y13_N0
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

-- Location: FF_X32_Y13_N1
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

-- Location: LCCOMB_X32_Y13_N2
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

-- Location: FF_X32_Y13_N3
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

-- Location: LCCOMB_X32_Y13_N4
\key_jitter_inst|cnt0[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \key_jitter_inst|cnt0[12]~41_combout\ = (\key_jitter_inst|cnt0\(12) & (!\key_jitter_inst|cnt0[11]~40\)) # (!\key_jitter_inst|cnt0\(12) & ((\key_jitter_inst|cnt0[11]~40\) # (GND)))
-- \key_jitter_inst|cnt0[12]~42\ = CARRY((!\key_jitter_inst|cnt0[11]~40\) # (!\key_jitter_inst|cnt0\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key_jitter_inst|cnt0\(12),
	datad => VCC,
	cin => \key_jitter_inst|cnt0[11]~40\,
	combout => \key_jitter_inst|cnt0[12]~41_combout\,
	cout => \key_jitter_inst|cnt0[12]~42\);

-- Location: FF_X32_Y13_N5
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

-- Location: LCCOMB_X32_Y13_N6
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

-- Location: FF_X32_Y13_N7
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

-- Location: LCCOMB_X32_Y13_N8
\key_jitter_inst|cnt0[14]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \key_jitter_inst|cnt0[14]~45_combout\ = (\key_jitter_inst|cnt0\(14) & (!\key_jitter_inst|cnt0[13]~44\)) # (!\key_jitter_inst|cnt0\(14) & ((\key_jitter_inst|cnt0[13]~44\) # (GND)))
-- \key_jitter_inst|cnt0[14]~46\ = CARRY((!\key_jitter_inst|cnt0[13]~44\) # (!\key_jitter_inst|cnt0\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key_jitter_inst|cnt0\(14),
	datad => VCC,
	cin => \key_jitter_inst|cnt0[13]~44\,
	combout => \key_jitter_inst|cnt0[14]~45_combout\,
	cout => \key_jitter_inst|cnt0[14]~46\);

-- Location: FF_X32_Y13_N9
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

-- Location: LCCOMB_X32_Y13_N10
\key_jitter_inst|cnt0[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \key_jitter_inst|cnt0[15]~47_combout\ = (\key_jitter_inst|cnt0\(15) & (\key_jitter_inst|cnt0[14]~46\ $ (GND))) # (!\key_jitter_inst|cnt0\(15) & (!\key_jitter_inst|cnt0[14]~46\ & VCC))
-- \key_jitter_inst|cnt0[15]~48\ = CARRY((\key_jitter_inst|cnt0\(15) & !\key_jitter_inst|cnt0[14]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key_jitter_inst|cnt0\(15),
	datad => VCC,
	cin => \key_jitter_inst|cnt0[14]~46\,
	combout => \key_jitter_inst|cnt0[15]~47_combout\,
	cout => \key_jitter_inst|cnt0[15]~48\);

-- Location: FF_X32_Y13_N11
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

-- Location: LCCOMB_X32_Y13_N12
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

-- Location: FF_X32_Y13_N13
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

-- Location: LCCOMB_X32_Y13_N14
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

-- Location: FF_X32_Y13_N15
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

-- Location: LCCOMB_X32_Y13_N16
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

-- Location: FF_X32_Y13_N17
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

-- Location: LCCOMB_X32_Y13_N18
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

-- Location: FF_X32_Y13_N19
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

-- Location: LCCOMB_X32_Y13_N28
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

-- Location: LCCOMB_X32_Y14_N8
\key_jitter_inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \key_jitter_inst|Equal0~1_combout\ = (\key_jitter_inst|cnt0\(0) & (\key_jitter_inst|cnt0\(3) & (\key_jitter_inst|cnt0\(1) & \key_jitter_inst|cnt0\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_jitter_inst|cnt0\(0),
	datab => \key_jitter_inst|cnt0\(3),
	datac => \key_jitter_inst|cnt0\(1),
	datad => \key_jitter_inst|cnt0\(2),
	combout => \key_jitter_inst|Equal0~1_combout\);

-- Location: LCCOMB_X32_Y14_N6
\key_jitter_inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \key_jitter_inst|Equal0~2_combout\ = (\key_jitter_inst|cnt0\(7) & (\key_jitter_inst|cnt0\(6) & (\key_jitter_inst|cnt0\(5) & \key_jitter_inst|cnt0\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_jitter_inst|cnt0\(7),
	datab => \key_jitter_inst|cnt0\(6),
	datac => \key_jitter_inst|cnt0\(5),
	datad => \key_jitter_inst|cnt0\(4),
	combout => \key_jitter_inst|Equal0~2_combout\);

-- Location: LCCOMB_X33_Y14_N22
\key_jitter_inst|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \key_jitter_inst|Equal0~3_combout\ = (\key_jitter_inst|cnt0\(10) & (\key_jitter_inst|cnt0\(8) & (\key_jitter_inst|cnt0\(9) & \key_jitter_inst|cnt0\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_jitter_inst|cnt0\(10),
	datab => \key_jitter_inst|cnt0\(8),
	datac => \key_jitter_inst|cnt0\(9),
	datad => \key_jitter_inst|cnt0\(11),
	combout => \key_jitter_inst|Equal0~3_combout\);

-- Location: LCCOMB_X32_Y13_N26
\key_jitter_inst|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \key_jitter_inst|Equal0~4_combout\ = (\key_jitter_inst|cnt0\(15) & (\key_jitter_inst|cnt0\(14) & (\key_jitter_inst|cnt0\(12) & \key_jitter_inst|cnt0\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_jitter_inst|cnt0\(15),
	datab => \key_jitter_inst|cnt0\(14),
	datac => \key_jitter_inst|cnt0\(12),
	datad => \key_jitter_inst|cnt0\(13),
	combout => \key_jitter_inst|Equal0~4_combout\);

-- Location: LCCOMB_X33_Y14_N24
\key_jitter_inst|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \key_jitter_inst|Equal0~5_combout\ = (\key_jitter_inst|Equal0~1_combout\ & (\key_jitter_inst|Equal0~2_combout\ & (\key_jitter_inst|Equal0~3_combout\ & \key_jitter_inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_jitter_inst|Equal0~1_combout\,
	datab => \key_jitter_inst|Equal0~2_combout\,
	datac => \key_jitter_inst|Equal0~3_combout\,
	datad => \key_jitter_inst|Equal0~4_combout\,
	combout => \key_jitter_inst|Equal0~5_combout\);

-- Location: LCCOMB_X33_Y14_N26
\key_jitter_inst|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \key_jitter_inst|Equal0~6_combout\ = (\key_jitter_inst|Equal0~0_combout\ & \key_jitter_inst|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_jitter_inst|Equal0~0_combout\,
	datad => \key_jitter_inst|Equal0~5_combout\,
	combout => \key_jitter_inst|Equal0~6_combout\);

-- Location: FF_X33_Y14_N9
\key_jitter_inst|key_down_check[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \key_jitter_inst|key_down_check[0]~0_combout\,
	ena => \key_jitter_inst|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_jitter_inst|key_down_check\(0));

-- Location: FF_X33_Y14_N27
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

-- Location: LCCOMB_X33_Y14_N16
\key_jitter_inst|key_down_check[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \key_jitter_inst|key_down_check[2]~feeder_combout\ = \key_jitter_inst|key_down_check\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key_jitter_inst|key_down_check\(1),
	combout => \key_jitter_inst|key_down_check[2]~feeder_combout\);

-- Location: FF_X33_Y14_N17
\key_jitter_inst|key_down_check[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \key_jitter_inst|key_down_check[2]~feeder_combout\,
	ena => \key_jitter_inst|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_jitter_inst|key_down_check\(2));

-- Location: LCCOMB_X33_Y14_N18
\key_jitter_inst|key_down_check[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \key_jitter_inst|key_down_check[3]~feeder_combout\ = \key_jitter_inst|key_down_check\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key_jitter_inst|key_down_check\(2),
	combout => \key_jitter_inst|key_down_check[3]~feeder_combout\);

-- Location: FF_X33_Y14_N19
\key_jitter_inst|key_down_check[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \key_jitter_inst|key_down_check[3]~feeder_combout\,
	ena => \key_jitter_inst|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_jitter_inst|key_down_check\(3));

-- Location: LCCOMB_X33_Y14_N4
\key_jitter_inst|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \key_jitter_inst|Equal1~0_combout\ = (!\key_jitter_inst|key_down_check\(2) & (!\key_jitter_inst|key_down_check\(3) & (\key_jitter_inst|key_down_check\(0) & \key_jitter_inst|key_down_check\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_jitter_inst|key_down_check\(2),
	datab => \key_jitter_inst|key_down_check\(3),
	datac => \key_jitter_inst|key_down_check\(0),
	datad => \key_jitter_inst|key_down_check\(1),
	combout => \key_jitter_inst|Equal1~0_combout\);

-- Location: FF_X33_Y14_N5
\key_jitter_inst|key_valid_r0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \key_jitter_inst|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_jitter_inst|key_valid_r0~q\);

-- Location: LCCOMB_X32_Y14_N2
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

-- Location: FF_X32_Y14_N3
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

-- Location: LCCOMB_X32_Y14_N12
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

-- Location: FF_X32_Y14_N13
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

-- Location: LCCOMB_X32_Y14_N0
\key_jitter_inst|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \key_jitter_inst|Equal2~0_combout\ = (\key_jitter_inst|key_valid_r1~q\ & !\key_jitter_inst|key_valid_r2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key_jitter_inst|key_valid_r1~q\,
	datad => \key_jitter_inst|key_valid_r2~q\,
	combout => \key_jitter_inst|Equal2~0_combout\);

-- Location: FF_X32_Y14_N1
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

-- Location: LCCOMB_X25_Y14_N8
\led_en~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \led_en~0_combout\ = \led_en~q\ $ (\key_jitter_inst|key_valid~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \led_en~q\,
	datad => \key_jitter_inst|key_valid~q\,
	combout => \led_en~0_combout\);

-- Location: FF_X25_Y14_N9
led_en : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_en~q\);

-- Location: FF_X23_Y14_N1
\timer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	ena => \ALT_INV_led_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(0));

-- Location: LCCOMB_X23_Y14_N2
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (timer(1) & (!\Add0~1\)) # (!timer(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!timer(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X23_Y14_N3
\timer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	ena => \ALT_INV_led_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(1));

-- Location: LCCOMB_X23_Y14_N4
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (timer(2) & (\Add0~3\ $ (GND))) # (!timer(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((timer(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X23_Y14_N5
\timer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	ena => \ALT_INV_led_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(2));

-- Location: LCCOMB_X23_Y14_N6
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (timer(3) & (!\Add0~5\)) # (!timer(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!timer(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X23_Y14_N7
\timer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	ena => \ALT_INV_led_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(3));

-- Location: LCCOMB_X23_Y14_N8
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (timer(4) & (\Add0~7\ $ (GND))) # (!timer(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((timer(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X23_Y14_N9
\timer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	ena => \ALT_INV_led_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(4));

-- Location: LCCOMB_X23_Y14_N10
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (timer(5) & (!\Add0~9\)) # (!timer(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!timer(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X23_Y14_N11
\timer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	ena => \ALT_INV_led_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(5));

-- Location: LCCOMB_X23_Y14_N12
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (timer(6) & (\Add0~11\ $ (GND))) # (!timer(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((timer(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X23_Y14_N13
\timer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	ena => \ALT_INV_led_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(6));

-- Location: LCCOMB_X23_Y14_N14
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (timer(7) & (!\Add0~13\)) # (!timer(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!timer(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X23_Y13_N6
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (timer(19) & (!\Add0~37\)) # (!timer(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!timer(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X23_Y13_N8
\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (timer(20) & (\Add0~39\ $ (GND))) # (!timer(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((timer(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X24_Y13_N2
\timer~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer~9_combout\ = (!\Equal0~7_combout\ & \Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~7_combout\,
	datad => \Add0~40_combout\,
	combout => \timer~9_combout\);

-- Location: FF_X24_Y13_N3
\timer[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer~9_combout\,
	ena => \ALT_INV_led_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(20));

-- Location: LCCOMB_X23_Y13_N10
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (timer(21) & (!\Add0~41\)) # (!timer(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!timer(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X24_Y13_N20
\timer~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer~10_combout\ = (!\Equal0~7_combout\ & \Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~7_combout\,
	datad => \Add0~42_combout\,
	combout => \timer~10_combout\);

-- Location: FF_X24_Y13_N21
\timer[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer~10_combout\,
	ena => \ALT_INV_led_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(21));

-- Location: LCCOMB_X23_Y13_N12
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (timer(22) & (\Add0~43\ $ (GND))) # (!timer(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((timer(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X24_Y13_N4
\timer~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer~11_combout\ = (!\Equal0~7_combout\ & \Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~7_combout\,
	datad => \Add0~44_combout\,
	combout => \timer~11_combout\);

-- Location: FF_X24_Y13_N5
\timer[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer~11_combout\,
	ena => \ALT_INV_led_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(22));

-- Location: LCCOMB_X23_Y13_N14
\Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (timer(23) & (!\Add0~45\)) # (!timer(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!timer(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X22_Y13_N16
\timer~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer~3_combout\ = (\Add0~46_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~46_combout\,
	datad => \Equal0~7_combout\,
	combout => \timer~3_combout\);

-- Location: FF_X22_Y13_N17
\timer[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer~3_combout\,
	ena => \ALT_INV_led_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(23));

-- Location: LCCOMB_X23_Y13_N16
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (timer(24) & (\Add0~47\ $ (GND))) # (!timer(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((timer(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: FF_X23_Y13_N17
\timer[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~48_combout\,
	ena => \ALT_INV_led_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(24));

-- Location: LCCOMB_X23_Y13_N18
\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (timer(25) & (!\Add0~49\)) # (!timer(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!timer(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCCOMB_X24_Y13_N10
\timer~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer~6_combout\ = (!\Equal0~7_combout\ & \Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~7_combout\,
	datad => \Add0~50_combout\,
	combout => \timer~6_combout\);

-- Location: FF_X24_Y13_N11
\timer[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer~6_combout\,
	ena => \ALT_INV_led_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(25));

-- Location: LCCOMB_X22_Y13_N24
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (timer(17) & (timer(23) & (timer(15) & timer(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(17),
	datab => timer(23),
	datac => timer(15),
	datad => timer(6),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X22_Y13_N22
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!timer(24) & (!timer(16) & (!timer(18) & !timer(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(24),
	datab => timer(16),
	datac => timer(18),
	datad => timer(11),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X24_Y14_N30
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (timer(4) & (timer(2) & (timer(3) & timer(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(4),
	datab => timer(2),
	datac => timer(3),
	datad => timer(5),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X24_Y13_N24
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (timer(21) & timer(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => timer(21),
	datad => timer(20),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X24_Y13_N18
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (timer(19) & (timer(14) & (timer(22) & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(19),
	datab => timer(14),
	datac => timer(22),
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X22_Y13_N28
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (timer(13) & (timer(12) & (timer(0) & timer(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(13),
	datab => timer(12),
	datac => timer(0),
	datad => timer(1),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X23_Y13_N20
\Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (timer(26) & (\Add0~51\ $ (GND))) # (!timer(26) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((timer(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: FF_X23_Y13_N21
\timer[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~52_combout\,
	ena => \ALT_INV_led_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(26));

-- Location: LCCOMB_X23_Y13_N22
\Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (timer(27) & (!\Add0~53\)) # (!timer(27) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!timer(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: FF_X23_Y13_N23
\timer[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~54_combout\,
	ena => \ALT_INV_led_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(27));

-- Location: LCCOMB_X23_Y13_N24
\Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (timer(28) & (\Add0~55\ $ (GND))) # (!timer(28) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((timer(28) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: FF_X23_Y13_N25
\timer[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~56_combout\,
	ena => \ALT_INV_led_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(28));

-- Location: LCCOMB_X23_Y13_N26
\Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (timer(29) & (!\Add0~57\)) # (!timer(29) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!timer(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: FF_X23_Y13_N27
\timer[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~58_combout\,
	ena => \ALT_INV_led_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(29));

-- Location: LCCOMB_X23_Y13_N28
\Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (timer(30) & (\Add0~59\ $ (GND))) # (!timer(30) & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((timer(30) & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: FF_X23_Y13_N29
\timer[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~60_combout\,
	ena => \ALT_INV_led_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(30));

-- Location: LCCOMB_X23_Y13_N30
\Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = timer(31) $ (\Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: FF_X23_Y13_N31
\timer[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~62_combout\,
	ena => \ALT_INV_led_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(31));

-- Location: LCCOMB_X22_Y13_N4
\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!timer(26) & (!timer(29) & (!timer(28) & !timer(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(26),
	datab => timer(29),
	datac => timer(28),
	datad => timer(27),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X22_Y13_N18
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!timer(7) & (!timer(10) & (!timer(9) & !timer(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(7),
	datab => timer(10),
	datac => timer(9),
	datad => timer(8),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X22_Y13_N14
\Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!timer(31) & (!timer(30) & (\Equal1~1_combout\ & \Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(31),
	datab => timer(30),
	datac => \Equal1~1_combout\,
	datad => \Equal1~0_combout\,
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X24_Y13_N28
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (\Equal0~1_combout\ & (\Equal0~4_combout\ & (\Equal0~2_combout\ & \Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal1~2_combout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X24_Y13_N16
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (timer(25) & (\Equal0~6_combout\ & (\Equal0~0_combout\ & \Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(25),
	datab => \Equal0~6_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~5_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X22_Y13_N0
\timer~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer~0_combout\ = (\Add0~14_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~14_combout\,
	datad => \Equal0~7_combout\,
	combout => \timer~0_combout\);

-- Location: FF_X22_Y13_N1
\timer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer~0_combout\,
	ena => \ALT_INV_led_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(7));

-- Location: LCCOMB_X23_Y14_N16
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (timer(8) & (\Add0~15\ $ (GND))) # (!timer(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((timer(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X23_Y14_N17
\timer[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	ena => \ALT_INV_led_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(8));

-- Location: LCCOMB_X23_Y14_N18
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (timer(9) & (!\Add0~17\)) # (!timer(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!timer(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X23_Y14_N19
\timer[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~18_combout\,
	ena => \ALT_INV_led_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(9));

-- Location: LCCOMB_X23_Y14_N20
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (timer(10) & (\Add0~19\ $ (GND))) # (!timer(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((timer(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X23_Y14_N21
\timer[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	ena => \ALT_INV_led_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(10));

-- Location: LCCOMB_X23_Y14_N22
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (timer(11) & (!\Add0~21\)) # (!timer(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!timer(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: FF_X23_Y14_N23
\timer[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~22_combout\,
	ena => \ALT_INV_led_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(11));

-- Location: LCCOMB_X23_Y14_N24
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (timer(12) & (\Add0~23\ $ (GND))) # (!timer(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((timer(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X22_Y13_N20
\timer~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer~4_combout\ = (\Add0~24_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~24_combout\,
	datad => \Equal0~7_combout\,
	combout => \timer~4_combout\);

-- Location: FF_X22_Y13_N21
\timer[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer~4_combout\,
	ena => \ALT_INV_led_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(12));

-- Location: LCCOMB_X23_Y14_N26
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (timer(13) & (!\Add0~25\)) # (!timer(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!timer(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X22_Y13_N26
\timer~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer~5_combout\ = (\Add0~26_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~26_combout\,
	datad => \Equal0~7_combout\,
	combout => \timer~5_combout\);

-- Location: FF_X22_Y13_N27
\timer[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer~5_combout\,
	ena => \ALT_INV_led_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(13));

-- Location: LCCOMB_X23_Y14_N28
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (timer(14) & (\Add0~27\ $ (GND))) # (!timer(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((timer(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X24_Y13_N14
\timer~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer~7_combout\ = (\Add0~28_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~28_combout\,
	datad => \Equal0~7_combout\,
	combout => \timer~7_combout\);

-- Location: FF_X24_Y13_N15
\timer[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer~7_combout\,
	ena => \ALT_INV_led_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(14));

-- Location: LCCOMB_X23_Y14_N30
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (timer(15) & (!\Add0~29\)) # (!timer(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!timer(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X22_Y13_N12
\timer~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer~1_combout\ = (\Add0~30_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~30_combout\,
	datad => \Equal0~7_combout\,
	combout => \timer~1_combout\);

-- Location: FF_X22_Y13_N13
\timer[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer~1_combout\,
	ena => \ALT_INV_led_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(15));

-- Location: LCCOMB_X23_Y13_N0
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (timer(16) & (\Add0~31\ $ (GND))) # (!timer(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((timer(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: FF_X23_Y13_N1
\timer[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~32_combout\,
	ena => \ALT_INV_led_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(16));

-- Location: LCCOMB_X23_Y13_N2
\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (timer(17) & (!\Add0~33\)) # (!timer(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!timer(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X22_Y13_N10
\timer~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer~2_combout\ = (\Add0~34_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~34_combout\,
	datad => \Equal0~7_combout\,
	combout => \timer~2_combout\);

-- Location: FF_X22_Y13_N11
\timer[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer~2_combout\,
	ena => \ALT_INV_led_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(17));

-- Location: LCCOMB_X23_Y13_N4
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (timer(18) & (\Add0~35\ $ (GND))) # (!timer(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((timer(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: FF_X23_Y13_N5
\timer[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~36_combout\,
	ena => \ALT_INV_led_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(18));

-- Location: LCCOMB_X24_Y13_N12
\timer~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer~8_combout\ = (\Add0~38_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~38_combout\,
	datad => \Equal0~7_combout\,
	combout => \timer~8_combout\);

-- Location: FF_X24_Y13_N13
\timer[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer~8_combout\,
	ena => \ALT_INV_led_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(19));

-- Location: LCCOMB_X24_Y13_N26
\Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~7_combout\ = (!timer(19) & (!timer(21) & (!timer(14) & !timer(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(19),
	datab => timer(21),
	datac => timer(14),
	datad => timer(20),
	combout => \Equal1~7_combout\);

-- Location: LCCOMB_X22_Y13_N2
\Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (!timer(17) & (!timer(23) & (!timer(15) & !timer(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(17),
	datab => timer(23),
	datac => timer(15),
	datad => timer(6),
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X24_Y14_N12
\Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (!timer(4) & (!timer(2) & (!timer(3) & !timer(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(4),
	datab => timer(2),
	datac => timer(3),
	datad => timer(5),
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X22_Y13_N8
\Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (!timer(13) & (!timer(12) & (!timer(0) & !timer(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(13),
	datab => timer(12),
	datac => timer(0),
	datad => timer(1),
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X24_Y13_N0
\Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (!timer(25) & (\Equal1~3_combout\ & (\Equal1~4_combout\ & \Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(25),
	datab => \Equal1~3_combout\,
	datac => \Equal1~4_combout\,
	datad => \Equal1~5_combout\,
	combout => \Equal1~6_combout\);

-- Location: LCCOMB_X24_Y13_N30
\led_r~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \led_r~0_combout\ = (\Equal1~7_combout\ & (!timer(22) & (\Equal0~0_combout\ & \Equal1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~7_combout\,
	datab => timer(22),
	datac => \Equal0~0_combout\,
	datad => \Equal1~6_combout\,
	combout => \led_r~0_combout\);

-- Location: LCCOMB_X22_Y13_N6
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (timer(24) & (timer(18) & (timer(16) & timer(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(24),
	datab => timer(18),
	datac => timer(16),
	datad => timer(11),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X24_Y13_N6
\led_r~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \led_r~1_combout\ = (!timer(25) & (\Equal2~0_combout\ & (\Equal1~3_combout\ & \Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(25),
	datab => \Equal2~0_combout\,
	datac => \Equal1~3_combout\,
	datad => \Equal0~5_combout\,
	combout => \led_r~1_combout\);

-- Location: LCCOMB_X24_Y13_N8
\led_r~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \led_r~2_combout\ = (\led_r~0_combout\ & ((\Equal1~2_combout\) # ((\led_r~q\ & !\led_r~1_combout\)))) # (!\led_r~0_combout\ & (((\led_r~q\ & !\led_r~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_r~0_combout\,
	datab => \Equal1~2_combout\,
	datac => \led_r~q\,
	datad => \led_r~1_combout\,
	combout => \led_r~2_combout\);

-- Location: IOIBUF_X34_Y12_N1
\rst_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_n,
	o => \rst_n~input_o\);

-- Location: FF_X24_Y13_N9
led_r : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_r~2_combout\,
	clrn => \rst_n~input_o\,
	ena => \ALT_INV_led_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_r~q\);

ww_led <= \led~output_o\;
END structure;


