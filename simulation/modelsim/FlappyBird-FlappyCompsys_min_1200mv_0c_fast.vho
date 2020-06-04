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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "06/05/2020 00:55:20"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	\FlappyBird-FlappyCompsys\ IS
    PORT (
	red_out : OUT std_logic;
	clk : IN std_logic;
	vert_sync_out : OUT std_logic;
	mouse_data : INOUT std_logic;
	mouse_clk : INOUT std_logic;
	sw0 : IN std_logic;
	sw2 : IN std_logic;
	sw1 : IN std_logic;
	green_out : OUT std_logic;
	blue_out : OUT std_logic;
	horiz_sync_out : OUT std_logic
	);
END \FlappyBird-FlappyCompsys\;

-- Design Ports Information
-- red_out	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vert_sync_out	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_out	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue_out	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horiz_sync_out	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mouse_data	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mouse_clk	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw2	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw0	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw1	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF \FlappyBird-FlappyCompsys\ IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_red_out : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_vert_sync_out : std_logic;
SIGNAL ww_sw0 : std_logic;
SIGNAL ww_sw2 : std_logic;
SIGNAL ww_sw1 : std_logic;
SIGNAL ww_green_out : std_logic;
SIGNAL ww_blue_out : std_logic;
SIGNAL ww_horiz_sync_out : std_logic;
SIGNAL \inst15|display|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst15|display|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst11|display|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst11|display|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst1|vert_sync_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|MOUSE_CLK_FILTER~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst14|Clk1hz_temp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|Move_Bird~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst6|pipe_speed[30]~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|Add3~6_combout\ : std_logic;
SIGNAL \inst5|Add3~9\ : std_logic;
SIGNAL \inst5|Add3~10_combout\ : std_logic;
SIGNAL \inst5|Add0~4_combout\ : std_logic;
SIGNAL \inst5|Add0~6_combout\ : std_logic;
SIGNAL \inst5|Add0~8_combout\ : std_logic;
SIGNAL \inst5|Add0~10_combout\ : std_logic;
SIGNAL \inst6|Add6~1\ : std_logic;
SIGNAL \inst6|Add6~0_combout\ : std_logic;
SIGNAL \inst6|Add6~3\ : std_logic;
SIGNAL \inst6|Add6~2_combout\ : std_logic;
SIGNAL \inst6|Add6~5\ : std_logic;
SIGNAL \inst6|Add6~4_combout\ : std_logic;
SIGNAL \inst6|Add6~7\ : std_logic;
SIGNAL \inst6|Add6~6_combout\ : std_logic;
SIGNAL \inst6|Add6~9\ : std_logic;
SIGNAL \inst6|Add6~8_combout\ : std_logic;
SIGNAL \inst6|Add6~11\ : std_logic;
SIGNAL \inst6|Add6~10_combout\ : std_logic;
SIGNAL \inst6|Add6~13\ : std_logic;
SIGNAL \inst6|Add6~12_combout\ : std_logic;
SIGNAL \inst6|Add6~14_combout\ : std_logic;
SIGNAL \inst6|LessThan11~1_cout\ : std_logic;
SIGNAL \inst6|LessThan11~3_cout\ : std_logic;
SIGNAL \inst6|LessThan11~5_cout\ : std_logic;
SIGNAL \inst6|LessThan11~7_cout\ : std_logic;
SIGNAL \inst6|LessThan11~9_cout\ : std_logic;
SIGNAL \inst6|LessThan11~11_cout\ : std_logic;
SIGNAL \inst6|LessThan11~13_cout\ : std_logic;
SIGNAL \inst6|LessThan11~15_cout\ : std_logic;
SIGNAL \inst6|LessThan11~17_cout\ : std_logic;
SIGNAL \inst6|LessThan11~18_combout\ : std_logic;
SIGNAL \inst6|Add7~1\ : std_logic;
SIGNAL \inst6|Add7~0_combout\ : std_logic;
SIGNAL \inst6|Add7~3\ : std_logic;
SIGNAL \inst6|Add7~2_combout\ : std_logic;
SIGNAL \inst6|Add7~5\ : std_logic;
SIGNAL \inst6|Add7~4_combout\ : std_logic;
SIGNAL \inst6|Add7~7\ : std_logic;
SIGNAL \inst6|Add7~6_combout\ : std_logic;
SIGNAL \inst6|Add7~9\ : std_logic;
SIGNAL \inst6|Add7~8_combout\ : std_logic;
SIGNAL \inst6|Add7~11\ : std_logic;
SIGNAL \inst6|Add7~10_combout\ : std_logic;
SIGNAL \inst6|Add7~12_combout\ : std_logic;
SIGNAL \inst6|LessThan12~1_cout\ : std_logic;
SIGNAL \inst6|LessThan12~3_cout\ : std_logic;
SIGNAL \inst6|LessThan12~5_cout\ : std_logic;
SIGNAL \inst6|LessThan12~7_cout\ : std_logic;
SIGNAL \inst6|LessThan12~9_cout\ : std_logic;
SIGNAL \inst6|LessThan12~11_cout\ : std_logic;
SIGNAL \inst6|LessThan12~13_cout\ : std_logic;
SIGNAL \inst6|LessThan12~15_cout\ : std_logic;
SIGNAL \inst6|LessThan12~17_cout\ : std_logic;
SIGNAL \inst6|LessThan12~18_combout\ : std_logic;
SIGNAL \inst6|Add17~1\ : std_logic;
SIGNAL \inst6|Add17~0_combout\ : std_logic;
SIGNAL \inst6|Add17~3\ : std_logic;
SIGNAL \inst6|Add17~2_combout\ : std_logic;
SIGNAL \inst6|Add17~5\ : std_logic;
SIGNAL \inst6|Add17~4_combout\ : std_logic;
SIGNAL \inst6|Add17~7\ : std_logic;
SIGNAL \inst6|Add17~6_combout\ : std_logic;
SIGNAL \inst6|Add17~9\ : std_logic;
SIGNAL \inst6|Add17~8_combout\ : std_logic;
SIGNAL \inst6|Add17~11\ : std_logic;
SIGNAL \inst6|Add17~10_combout\ : std_logic;
SIGNAL \inst6|Add17~13\ : std_logic;
SIGNAL \inst6|Add17~12_combout\ : std_logic;
SIGNAL \inst6|LessThan26~1_cout\ : std_logic;
SIGNAL \inst6|LessThan26~3_cout\ : std_logic;
SIGNAL \inst6|LessThan26~5_cout\ : std_logic;
SIGNAL \inst6|LessThan26~7_cout\ : std_logic;
SIGNAL \inst6|LessThan26~9_cout\ : std_logic;
SIGNAL \inst6|LessThan26~11_cout\ : std_logic;
SIGNAL \inst6|LessThan26~13_cout\ : std_logic;
SIGNAL \inst6|LessThan26~14_combout\ : std_logic;
SIGNAL \inst6|Add8~1\ : std_logic;
SIGNAL \inst6|Add8~0_combout\ : std_logic;
SIGNAL \inst6|Add8~3\ : std_logic;
SIGNAL \inst6|Add8~2_combout\ : std_logic;
SIGNAL \inst6|Add8~5\ : std_logic;
SIGNAL \inst6|Add8~4_combout\ : std_logic;
SIGNAL \inst6|Add8~7\ : std_logic;
SIGNAL \inst6|Add8~6_combout\ : std_logic;
SIGNAL \inst6|Add8~9\ : std_logic;
SIGNAL \inst6|Add8~8_combout\ : std_logic;
SIGNAL \inst6|Add8~11\ : std_logic;
SIGNAL \inst6|Add8~10_combout\ : std_logic;
SIGNAL \inst6|LessThan13~1_cout\ : std_logic;
SIGNAL \inst6|LessThan13~3_cout\ : std_logic;
SIGNAL \inst6|LessThan13~5_cout\ : std_logic;
SIGNAL \inst6|LessThan13~7_cout\ : std_logic;
SIGNAL \inst6|LessThan13~9_cout\ : std_logic;
SIGNAL \inst6|LessThan13~11_cout\ : std_logic;
SIGNAL \inst6|LessThan13~13_cout\ : std_logic;
SIGNAL \inst6|LessThan13~15_cout\ : std_logic;
SIGNAL \inst6|LessThan13~16_combout\ : std_logic;
SIGNAL \inst6|Add17~14_combout\ : std_logic;
SIGNAL \inst6|Add8~12_combout\ : std_logic;
SIGNAL \inst6|LessThan14~1_cout\ : std_logic;
SIGNAL \inst6|LessThan14~3_cout\ : std_logic;
SIGNAL \inst6|LessThan14~5_cout\ : std_logic;
SIGNAL \inst6|LessThan14~7_cout\ : std_logic;
SIGNAL \inst6|LessThan14~9_cout\ : std_logic;
SIGNAL \inst6|LessThan14~11_cout\ : std_logic;
SIGNAL \inst6|LessThan14~13_cout\ : std_logic;
SIGNAL \inst6|LessThan14~15_cout\ : std_logic;
SIGNAL \inst6|LessThan14~17_cout\ : std_logic;
SIGNAL \inst6|LessThan14~18_combout\ : std_logic;
SIGNAL \inst6|Add9~1\ : std_logic;
SIGNAL \inst6|Add9~0_combout\ : std_logic;
SIGNAL \inst6|Add9~3\ : std_logic;
SIGNAL \inst6|Add9~2_combout\ : std_logic;
SIGNAL \inst6|Add9~5\ : std_logic;
SIGNAL \inst6|Add9~4_combout\ : std_logic;
SIGNAL \inst6|Add9~7\ : std_logic;
SIGNAL \inst6|Add9~6_combout\ : std_logic;
SIGNAL \inst6|Add9~9\ : std_logic;
SIGNAL \inst6|Add9~8_combout\ : std_logic;
SIGNAL \inst6|Add9~11\ : std_logic;
SIGNAL \inst6|Add9~10_combout\ : std_logic;
SIGNAL \inst6|Add9~12_combout\ : std_logic;
SIGNAL \inst6|LessThan15~1_cout\ : std_logic;
SIGNAL \inst6|LessThan15~3_cout\ : std_logic;
SIGNAL \inst6|LessThan15~5_cout\ : std_logic;
SIGNAL \inst6|LessThan15~7_cout\ : std_logic;
SIGNAL \inst6|LessThan15~9_cout\ : std_logic;
SIGNAL \inst6|LessThan15~11_cout\ : std_logic;
SIGNAL \inst6|LessThan15~13_cout\ : std_logic;
SIGNAL \inst6|LessThan15~15_cout\ : std_logic;
SIGNAL \inst6|LessThan15~17_cout\ : std_logic;
SIGNAL \inst6|LessThan15~18_combout\ : std_logic;
SIGNAL \inst6|LessThan27~1_cout\ : std_logic;
SIGNAL \inst6|LessThan27~3_cout\ : std_logic;
SIGNAL \inst6|LessThan27~5_cout\ : std_logic;
SIGNAL \inst6|LessThan27~7_cout\ : std_logic;
SIGNAL \inst6|LessThan27~9_cout\ : std_logic;
SIGNAL \inst6|LessThan27~11_cout\ : std_logic;
SIGNAL \inst6|LessThan27~13_cout\ : std_logic;
SIGNAL \inst6|LessThan27~14_combout\ : std_logic;
SIGNAL \inst6|Add10~1\ : std_logic;
SIGNAL \inst6|Add10~0_combout\ : std_logic;
SIGNAL \inst6|Add10~3\ : std_logic;
SIGNAL \inst6|Add10~2_combout\ : std_logic;
SIGNAL \inst6|Add10~5\ : std_logic;
SIGNAL \inst6|Add10~4_combout\ : std_logic;
SIGNAL \inst6|Add10~7\ : std_logic;
SIGNAL \inst6|Add10~6_combout\ : std_logic;
SIGNAL \inst6|Add10~9\ : std_logic;
SIGNAL \inst6|Add10~8_combout\ : std_logic;
SIGNAL \inst6|Add10~11\ : std_logic;
SIGNAL \inst6|Add10~10_combout\ : std_logic;
SIGNAL \inst6|LessThan16~1_cout\ : std_logic;
SIGNAL \inst6|LessThan16~3_cout\ : std_logic;
SIGNAL \inst6|LessThan16~5_cout\ : std_logic;
SIGNAL \inst6|LessThan16~7_cout\ : std_logic;
SIGNAL \inst6|LessThan16~9_cout\ : std_logic;
SIGNAL \inst6|LessThan16~11_cout\ : std_logic;
SIGNAL \inst6|LessThan16~13_cout\ : std_logic;
SIGNAL \inst6|LessThan16~15_cout\ : std_logic;
SIGNAL \inst6|LessThan16~16_combout\ : std_logic;
SIGNAL \inst6|Add10~12_combout\ : std_logic;
SIGNAL \inst6|LessThan17~1_cout\ : std_logic;
SIGNAL \inst6|LessThan17~3_cout\ : std_logic;
SIGNAL \inst6|LessThan17~5_cout\ : std_logic;
SIGNAL \inst6|LessThan17~7_cout\ : std_logic;
SIGNAL \inst6|LessThan17~9_cout\ : std_logic;
SIGNAL \inst6|LessThan17~11_cout\ : std_logic;
SIGNAL \inst6|LessThan17~13_cout\ : std_logic;
SIGNAL \inst6|LessThan17~15_cout\ : std_logic;
SIGNAL \inst6|LessThan17~17_cout\ : std_logic;
SIGNAL \inst6|LessThan17~18_combout\ : std_logic;
SIGNAL \inst6|Add11~1\ : std_logic;
SIGNAL \inst6|Add11~0_combout\ : std_logic;
SIGNAL \inst6|Add11~3\ : std_logic;
SIGNAL \inst6|Add11~2_combout\ : std_logic;
SIGNAL \inst6|Add11~5\ : std_logic;
SIGNAL \inst6|Add11~4_combout\ : std_logic;
SIGNAL \inst6|Add11~7\ : std_logic;
SIGNAL \inst6|Add11~6_combout\ : std_logic;
SIGNAL \inst6|Add11~9\ : std_logic;
SIGNAL \inst6|Add11~8_combout\ : std_logic;
SIGNAL \inst6|Add11~11\ : std_logic;
SIGNAL \inst6|Add11~10_combout\ : std_logic;
SIGNAL \inst6|Add11~12_combout\ : std_logic;
SIGNAL \inst6|LessThan18~1_cout\ : std_logic;
SIGNAL \inst6|LessThan18~3_cout\ : std_logic;
SIGNAL \inst6|LessThan18~5_cout\ : std_logic;
SIGNAL \inst6|LessThan18~7_cout\ : std_logic;
SIGNAL \inst6|LessThan18~9_cout\ : std_logic;
SIGNAL \inst6|LessThan18~11_cout\ : std_logic;
SIGNAL \inst6|LessThan18~13_cout\ : std_logic;
SIGNAL \inst6|LessThan18~15_cout\ : std_logic;
SIGNAL \inst6|LessThan18~17_cout\ : std_logic;
SIGNAL \inst6|LessThan18~18_combout\ : std_logic;
SIGNAL \inst6|LessThan28~1_cout\ : std_logic;
SIGNAL \inst6|LessThan28~3_cout\ : std_logic;
SIGNAL \inst6|LessThan28~5_cout\ : std_logic;
SIGNAL \inst6|LessThan28~7_cout\ : std_logic;
SIGNAL \inst6|LessThan28~9_cout\ : std_logic;
SIGNAL \inst6|LessThan28~11_cout\ : std_logic;
SIGNAL \inst6|LessThan28~13_cout\ : std_logic;
SIGNAL \inst6|LessThan28~14_combout\ : std_logic;
SIGNAL \inst6|Add12~1\ : std_logic;
SIGNAL \inst6|Add12~0_combout\ : std_logic;
SIGNAL \inst6|Add12~3\ : std_logic;
SIGNAL \inst6|Add12~2_combout\ : std_logic;
SIGNAL \inst6|Add12~5\ : std_logic;
SIGNAL \inst6|Add12~4_combout\ : std_logic;
SIGNAL \inst6|Add12~7\ : std_logic;
SIGNAL \inst6|Add12~6_combout\ : std_logic;
SIGNAL \inst6|Add12~9\ : std_logic;
SIGNAL \inst6|Add12~8_combout\ : std_logic;
SIGNAL \inst6|Add12~11\ : std_logic;
SIGNAL \inst6|Add12~10_combout\ : std_logic;
SIGNAL \inst6|LessThan19~1_cout\ : std_logic;
SIGNAL \inst6|LessThan19~3_cout\ : std_logic;
SIGNAL \inst6|LessThan19~5_cout\ : std_logic;
SIGNAL \inst6|LessThan19~7_cout\ : std_logic;
SIGNAL \inst6|LessThan19~9_cout\ : std_logic;
SIGNAL \inst6|LessThan19~11_cout\ : std_logic;
SIGNAL \inst6|LessThan19~13_cout\ : std_logic;
SIGNAL \inst6|LessThan19~15_cout\ : std_logic;
SIGNAL \inst6|LessThan19~16_combout\ : std_logic;
SIGNAL \inst6|Add12~12_combout\ : std_logic;
SIGNAL \inst6|LessThan20~1_cout\ : std_logic;
SIGNAL \inst6|LessThan20~3_cout\ : std_logic;
SIGNAL \inst6|LessThan20~5_cout\ : std_logic;
SIGNAL \inst6|LessThan20~7_cout\ : std_logic;
SIGNAL \inst6|LessThan20~9_cout\ : std_logic;
SIGNAL \inst6|LessThan20~11_cout\ : std_logic;
SIGNAL \inst6|LessThan20~13_cout\ : std_logic;
SIGNAL \inst6|LessThan20~15_cout\ : std_logic;
SIGNAL \inst6|LessThan20~17_cout\ : std_logic;
SIGNAL \inst6|LessThan20~18_combout\ : std_logic;
SIGNAL \inst6|Add13~1\ : std_logic;
SIGNAL \inst6|Add13~0_combout\ : std_logic;
SIGNAL \inst6|Add13~3\ : std_logic;
SIGNAL \inst6|Add13~2_combout\ : std_logic;
SIGNAL \inst6|Add13~5\ : std_logic;
SIGNAL \inst6|Add13~4_combout\ : std_logic;
SIGNAL \inst6|Add13~7\ : std_logic;
SIGNAL \inst6|Add13~6_combout\ : std_logic;
SIGNAL \inst6|Add13~9\ : std_logic;
SIGNAL \inst6|Add13~8_combout\ : std_logic;
SIGNAL \inst6|Add13~11\ : std_logic;
SIGNAL \inst6|Add13~10_combout\ : std_logic;
SIGNAL \inst6|Add13~12_combout\ : std_logic;
SIGNAL \inst6|LessThan21~1_cout\ : std_logic;
SIGNAL \inst6|LessThan21~3_cout\ : std_logic;
SIGNAL \inst6|LessThan21~5_cout\ : std_logic;
SIGNAL \inst6|LessThan21~7_cout\ : std_logic;
SIGNAL \inst6|LessThan21~9_cout\ : std_logic;
SIGNAL \inst6|LessThan21~11_cout\ : std_logic;
SIGNAL \inst6|LessThan21~13_cout\ : std_logic;
SIGNAL \inst6|LessThan21~15_cout\ : std_logic;
SIGNAL \inst6|LessThan21~17_cout\ : std_logic;
SIGNAL \inst6|LessThan21~18_combout\ : std_logic;
SIGNAL \inst6|LessThan29~1_cout\ : std_logic;
SIGNAL \inst6|LessThan29~3_cout\ : std_logic;
SIGNAL \inst6|LessThan29~5_cout\ : std_logic;
SIGNAL \inst6|LessThan29~7_cout\ : std_logic;
SIGNAL \inst6|LessThan29~9_cout\ : std_logic;
SIGNAL \inst6|LessThan29~11_cout\ : std_logic;
SIGNAL \inst6|LessThan29~13_cout\ : std_logic;
SIGNAL \inst6|LessThan29~14_combout\ : std_logic;
SIGNAL \inst6|Add14~1\ : std_logic;
SIGNAL \inst6|Add14~0_combout\ : std_logic;
SIGNAL \inst6|Add14~3\ : std_logic;
SIGNAL \inst6|Add14~2_combout\ : std_logic;
SIGNAL \inst6|Add14~5\ : std_logic;
SIGNAL \inst6|Add14~4_combout\ : std_logic;
SIGNAL \inst6|Add14~7\ : std_logic;
SIGNAL \inst6|Add14~6_combout\ : std_logic;
SIGNAL \inst6|Add14~9\ : std_logic;
SIGNAL \inst6|Add14~8_combout\ : std_logic;
SIGNAL \inst6|Add14~11\ : std_logic;
SIGNAL \inst6|Add14~10_combout\ : std_logic;
SIGNAL \inst6|LessThan22~1_cout\ : std_logic;
SIGNAL \inst6|LessThan22~3_cout\ : std_logic;
SIGNAL \inst6|LessThan22~5_cout\ : std_logic;
SIGNAL \inst6|LessThan22~7_cout\ : std_logic;
SIGNAL \inst6|LessThan22~9_cout\ : std_logic;
SIGNAL \inst6|LessThan22~11_cout\ : std_logic;
SIGNAL \inst6|LessThan22~13_cout\ : std_logic;
SIGNAL \inst6|LessThan22~15_cout\ : std_logic;
SIGNAL \inst6|LessThan22~16_combout\ : std_logic;
SIGNAL \inst6|Add14~12_combout\ : std_logic;
SIGNAL \inst6|LessThan23~1_cout\ : std_logic;
SIGNAL \inst6|LessThan23~3_cout\ : std_logic;
SIGNAL \inst6|LessThan23~5_cout\ : std_logic;
SIGNAL \inst6|LessThan23~7_cout\ : std_logic;
SIGNAL \inst6|LessThan23~9_cout\ : std_logic;
SIGNAL \inst6|LessThan23~11_cout\ : std_logic;
SIGNAL \inst6|LessThan23~13_cout\ : std_logic;
SIGNAL \inst6|LessThan23~15_cout\ : std_logic;
SIGNAL \inst6|LessThan23~17_cout\ : std_logic;
SIGNAL \inst6|LessThan23~18_combout\ : std_logic;
SIGNAL \inst6|Add15~1\ : std_logic;
SIGNAL \inst6|Add15~0_combout\ : std_logic;
SIGNAL \inst6|Add15~3\ : std_logic;
SIGNAL \inst6|Add15~2_combout\ : std_logic;
SIGNAL \inst6|Add15~5\ : std_logic;
SIGNAL \inst6|Add15~4_combout\ : std_logic;
SIGNAL \inst6|Add15~7\ : std_logic;
SIGNAL \inst6|Add15~6_combout\ : std_logic;
SIGNAL \inst6|Add15~9\ : std_logic;
SIGNAL \inst6|Add15~8_combout\ : std_logic;
SIGNAL \inst6|Add15~11\ : std_logic;
SIGNAL \inst6|Add15~10_combout\ : std_logic;
SIGNAL \inst6|Add15~12_combout\ : std_logic;
SIGNAL \inst6|LessThan24~1_cout\ : std_logic;
SIGNAL \inst6|LessThan24~3_cout\ : std_logic;
SIGNAL \inst6|LessThan24~5_cout\ : std_logic;
SIGNAL \inst6|LessThan24~7_cout\ : std_logic;
SIGNAL \inst6|LessThan24~9_cout\ : std_logic;
SIGNAL \inst6|LessThan24~11_cout\ : std_logic;
SIGNAL \inst6|LessThan24~13_cout\ : std_logic;
SIGNAL \inst6|LessThan24~15_cout\ : std_logic;
SIGNAL \inst6|LessThan24~17_cout\ : std_logic;
SIGNAL \inst6|LessThan24~18_combout\ : std_logic;
SIGNAL \inst6|LessThan30~1_cout\ : std_logic;
SIGNAL \inst6|LessThan30~3_cout\ : std_logic;
SIGNAL \inst6|LessThan30~5_cout\ : std_logic;
SIGNAL \inst6|LessThan30~7_cout\ : std_logic;
SIGNAL \inst6|LessThan30~9_cout\ : std_logic;
SIGNAL \inst6|LessThan30~11_cout\ : std_logic;
SIGNAL \inst6|LessThan30~13_cout\ : std_logic;
SIGNAL \inst6|LessThan30~14_combout\ : std_logic;
SIGNAL \inst6|Add16~1\ : std_logic;
SIGNAL \inst6|Add16~0_combout\ : std_logic;
SIGNAL \inst6|Add16~3\ : std_logic;
SIGNAL \inst6|Add16~2_combout\ : std_logic;
SIGNAL \inst6|Add16~5\ : std_logic;
SIGNAL \inst6|Add16~4_combout\ : std_logic;
SIGNAL \inst6|Add16~7\ : std_logic;
SIGNAL \inst6|Add16~6_combout\ : std_logic;
SIGNAL \inst6|Add16~9\ : std_logic;
SIGNAL \inst6|Add16~8_combout\ : std_logic;
SIGNAL \inst6|Add16~11\ : std_logic;
SIGNAL \inst6|Add16~10_combout\ : std_logic;
SIGNAL \inst6|LessThan25~1_cout\ : std_logic;
SIGNAL \inst6|LessThan25~3_cout\ : std_logic;
SIGNAL \inst6|LessThan25~5_cout\ : std_logic;
SIGNAL \inst6|LessThan25~7_cout\ : std_logic;
SIGNAL \inst6|LessThan25~9_cout\ : std_logic;
SIGNAL \inst6|LessThan25~11_cout\ : std_logic;
SIGNAL \inst6|LessThan25~13_cout\ : std_logic;
SIGNAL \inst6|LessThan25~15_cout\ : std_logic;
SIGNAL \inst6|LessThan25~16_combout\ : std_logic;
SIGNAL \inst6|Add16~12_combout\ : std_logic;
SIGNAL \inst11|Add4~2_combout\ : std_logic;
SIGNAL \inst6|Add1~0_combout\ : std_logic;
SIGNAL \inst6|Add1~4_combout\ : std_logic;
SIGNAL \inst6|Add1~10_combout\ : std_logic;
SIGNAL \inst6|Add0~0_combout\ : std_logic;
SIGNAL \inst6|Add0~10_combout\ : std_logic;
SIGNAL \inst6|Add0~14_combout\ : std_logic;
SIGNAL \inst6|Add0~22_combout\ : std_logic;
SIGNAL \inst6|Add0~36_combout\ : std_logic;
SIGNAL \inst6|Add0~38_combout\ : std_logic;
SIGNAL \inst6|Add0~49\ : std_logic;
SIGNAL \inst6|Add0~51\ : std_logic;
SIGNAL \inst6|Add0~50_combout\ : std_logic;
SIGNAL \inst6|Add0~53\ : std_logic;
SIGNAL \inst6|Add0~52_combout\ : std_logic;
SIGNAL \inst6|Add0~55\ : std_logic;
SIGNAL \inst6|Add0~54_combout\ : std_logic;
SIGNAL \inst6|Add0~57\ : std_logic;
SIGNAL \inst6|Add0~56_combout\ : std_logic;
SIGNAL \inst6|Add0~59\ : std_logic;
SIGNAL \inst6|Add0~58_combout\ : std_logic;
SIGNAL \inst6|Add0~61\ : std_logic;
SIGNAL \inst6|Add0~60_combout\ : std_logic;
SIGNAL \inst6|Add0~62_combout\ : std_logic;
SIGNAL \inst6|Add2~2_combout\ : std_logic;
SIGNAL \inst6|Add2~8_combout\ : std_logic;
SIGNAL \inst6|Add2~10_combout\ : std_logic;
SIGNAL \inst6|Add2~12_combout\ : std_logic;
SIGNAL \inst6|Add2~16_combout\ : std_logic;
SIGNAL \inst6|Add3~8_combout\ : std_logic;
SIGNAL \inst6|Add4~0_combout\ : std_logic;
SIGNAL \inst6|Add4~2_combout\ : std_logic;
SIGNAL \inst6|Add4~6_combout\ : std_logic;
SIGNAL \inst6|Add4~17\ : std_logic;
SIGNAL \inst6|Add4~18_combout\ : std_logic;
SIGNAL \inst6|Add5~1\ : std_logic;
SIGNAL \inst6|Add5~0_combout\ : std_logic;
SIGNAL \inst6|Add5~3\ : std_logic;
SIGNAL \inst6|Add5~2_combout\ : std_logic;
SIGNAL \inst6|Add5~5\ : std_logic;
SIGNAL \inst6|Add5~4_combout\ : std_logic;
SIGNAL \inst6|Add5~7\ : std_logic;
SIGNAL \inst6|Add5~6_combout\ : std_logic;
SIGNAL \inst6|Add5~9\ : std_logic;
SIGNAL \inst6|Add5~8_combout\ : std_logic;
SIGNAL \inst6|Add5~11\ : std_logic;
SIGNAL \inst6|Add5~10_combout\ : std_logic;
SIGNAL \inst6|Add5~13\ : std_logic;
SIGNAL \inst6|Add5~12_combout\ : std_logic;
SIGNAL \inst6|Add5~15\ : std_logic;
SIGNAL \inst6|Add5~14_combout\ : std_logic;
SIGNAL \inst6|Add5~17\ : std_logic;
SIGNAL \inst6|Add5~16_combout\ : std_logic;
SIGNAL \inst6|Add5~18_combout\ : std_logic;
SIGNAL \inst1|Add1~4_combout\ : std_logic;
SIGNAL \inst1|Add1~6_combout\ : std_logic;
SIGNAL \inst1|Add1~8_combout\ : std_logic;
SIGNAL \inst1|Add1~10_combout\ : std_logic;
SIGNAL \inst1|Add1~12_combout\ : std_logic;
SIGNAL \inst1|Add1~17\ : std_logic;
SIGNAL \inst1|Add1~18_combout\ : std_logic;
SIGNAL \inst5|Add4~14_combout\ : std_logic;
SIGNAL \inst5|Add4~16_combout\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[3]~15_combout\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[5]~19_combout\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[6]~21_combout\ : std_logic;
SIGNAL \inst14|count[0]~33\ : std_logic;
SIGNAL \inst14|count[0]~32_combout\ : std_logic;
SIGNAL \inst14|count[1]~35\ : std_logic;
SIGNAL \inst14|count[1]~34_combout\ : std_logic;
SIGNAL \inst14|count[2]~37\ : std_logic;
SIGNAL \inst14|count[2]~36_combout\ : std_logic;
SIGNAL \inst14|count[3]~39\ : std_logic;
SIGNAL \inst14|count[3]~38_combout\ : std_logic;
SIGNAL \inst14|count[4]~41\ : std_logic;
SIGNAL \inst14|count[4]~40_combout\ : std_logic;
SIGNAL \inst14|count[5]~43\ : std_logic;
SIGNAL \inst14|count[5]~42_combout\ : std_logic;
SIGNAL \inst14|count[6]~45\ : std_logic;
SIGNAL \inst14|count[6]~44_combout\ : std_logic;
SIGNAL \inst14|count[7]~47\ : std_logic;
SIGNAL \inst14|count[7]~46_combout\ : std_logic;
SIGNAL \inst14|count[8]~49\ : std_logic;
SIGNAL \inst14|count[8]~48_combout\ : std_logic;
SIGNAL \inst14|count[9]~51\ : std_logic;
SIGNAL \inst14|count[9]~50_combout\ : std_logic;
SIGNAL \inst14|count[10]~53\ : std_logic;
SIGNAL \inst14|count[10]~52_combout\ : std_logic;
SIGNAL \inst14|count[11]~55\ : std_logic;
SIGNAL \inst14|count[11]~54_combout\ : std_logic;
SIGNAL \inst14|count[12]~57\ : std_logic;
SIGNAL \inst14|count[12]~56_combout\ : std_logic;
SIGNAL \inst14|count[13]~59\ : std_logic;
SIGNAL \inst14|count[13]~58_combout\ : std_logic;
SIGNAL \inst14|count[14]~61\ : std_logic;
SIGNAL \inst14|count[14]~60_combout\ : std_logic;
SIGNAL \inst14|count[15]~63\ : std_logic;
SIGNAL \inst14|count[15]~62_combout\ : std_logic;
SIGNAL \inst14|count[16]~65\ : std_logic;
SIGNAL \inst14|count[16]~64_combout\ : std_logic;
SIGNAL \inst14|count[17]~67\ : std_logic;
SIGNAL \inst14|count[17]~66_combout\ : std_logic;
SIGNAL \inst14|count[18]~69\ : std_logic;
SIGNAL \inst14|count[18]~68_combout\ : std_logic;
SIGNAL \inst14|count[19]~71\ : std_logic;
SIGNAL \inst14|count[19]~70_combout\ : std_logic;
SIGNAL \inst14|count[20]~73\ : std_logic;
SIGNAL \inst14|count[20]~72_combout\ : std_logic;
SIGNAL \inst14|count[21]~75\ : std_logic;
SIGNAL \inst14|count[21]~74_combout\ : std_logic;
SIGNAL \inst14|count[22]~77\ : std_logic;
SIGNAL \inst14|count[22]~76_combout\ : std_logic;
SIGNAL \inst14|count[23]~79\ : std_logic;
SIGNAL \inst14|count[23]~78_combout\ : std_logic;
SIGNAL \inst14|count[24]~81\ : std_logic;
SIGNAL \inst14|count[24]~80_combout\ : std_logic;
SIGNAL \inst14|count[25]~83\ : std_logic;
SIGNAL \inst14|count[25]~82_combout\ : std_logic;
SIGNAL \inst14|count[26]~85\ : std_logic;
SIGNAL \inst14|count[26]~84_combout\ : std_logic;
SIGNAL \inst14|count[27]~87\ : std_logic;
SIGNAL \inst14|count[27]~86_combout\ : std_logic;
SIGNAL \inst14|count[28]~89\ : std_logic;
SIGNAL \inst14|count[28]~88_combout\ : std_logic;
SIGNAL \inst14|count[29]~91\ : std_logic;
SIGNAL \inst14|count[29]~90_combout\ : std_logic;
SIGNAL \inst14|count[30]~93\ : std_logic;
SIGNAL \inst14|count[30]~92_combout\ : std_logic;
SIGNAL \inst14|count[31]~94_combout\ : std_logic;
SIGNAL \inst15|display|Mux0~0_combout\ : std_logic;
SIGNAL \inst5|bird_on~0_combout\ : std_logic;
SIGNAL \inst5|bird_on~1_combout\ : std_logic;
SIGNAL \inst5|bird_on~3_combout\ : std_logic;
SIGNAL \inst5|Add2~1_combout\ : std_logic;
SIGNAL \inst5|bird_on~4_combout\ : std_logic;
SIGNAL \inst5|Add2~2_combout\ : std_logic;
SIGNAL \inst5|Add2~6_combout\ : std_logic;
SIGNAL \inst1|green_out~2_combout\ : std_logic;
SIGNAL \inst1|green_out~3_combout\ : std_logic;
SIGNAL \inst1|green_out~4_combout\ : std_logic;
SIGNAL \inst1|green_out~5_combout\ : std_logic;
SIGNAL \inst1|green_out~6_combout\ : std_logic;
SIGNAL \inst1|green_out~7_combout\ : std_logic;
SIGNAL \inst1|green_out~8_combout\ : std_logic;
SIGNAL \inst1|green_out~9_combout\ : std_logic;
SIGNAL \inst1|green_out~10_combout\ : std_logic;
SIGNAL \inst1|green_out~11_combout\ : std_logic;
SIGNAL \inst1|green_out~12_combout\ : std_logic;
SIGNAL \inst1|green_out~13_combout\ : std_logic;
SIGNAL \inst1|green_out~14_combout\ : std_logic;
SIGNAL \inst11|LessThan8~0_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~17_combout\ : std_logic;
SIGNAL \inst11|LessThan17~0_combout\ : std_logic;
SIGNAL \inst15|LessThan23~1_combout\ : std_logic;
SIGNAL \inst15|LessThan45~0_combout\ : std_logic;
SIGNAL \inst11|LessThan24~0_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[5]~44_combout\ : std_logic;
SIGNAL \inst15|LessThan64~0_combout\ : std_logic;
SIGNAL \inst15|LessThan56~0_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~54_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~56_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~57_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[2]~58_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~59_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~61_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[3]~62_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[3]~64_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[3]~65_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~67_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~68_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~69_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~73_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[1]~76_combout\ : std_logic;
SIGNAL \inst15|LessThan2~2_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~78_combout\ : std_logic;
SIGNAL \inst11|LessThan25~0_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~80_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[0]~82_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~84_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[0]~86_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[0]~87_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~89_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[0]~90_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[0]~91_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[0]~101_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[1]~102_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[2]~103_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[1]~104_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~105_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[1]~106_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[5]~107_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[1]~118_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[2]~119_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[1]~124_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[1]~135_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[1]~136_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[1]~137_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[1]~138_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[1]~139_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[1]~140_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[1]~141_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~142_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[1]~143_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[1]~144_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[1]~145_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[1]~146_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[2]~151_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[2]~152_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[2]~153_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[2]~154_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[2]~155_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[2]~156_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[2]~157_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[2]~158_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[2]~159_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[2]~160_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[2]~161_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[2]~162_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[2]~164_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[3]~167_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[3]~168_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[3]~169_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[3]~170_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[3]~171_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[3]~172_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[3]~175_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[3]~176_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[3]~178_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[3]~179_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[4]~182_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[4]~183_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[4]~184_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[4]~185_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[4]~186_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[4]~187_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[4]~188_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[4]~189_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[4]~190_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[4]~191_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[5]~193_combout\ : std_logic;
SIGNAL \inst11|temp_char_address~38_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[0]~52_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[0]~55_combout\ : std_logic;
SIGNAL \inst11|temp_char_address~56_combout\ : std_logic;
SIGNAL \inst11|temp_char_address~61_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[1]~65_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[1]~66_combout\ : std_logic;
SIGNAL \inst11|temp_char_address~76_combout\ : std_logic;
SIGNAL \inst11|temp_char_address~78_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[4]~84_combout\ : std_logic;
SIGNAL \inst5|bird_y_pos[8]~_emulated_q\ : std_logic;
SIGNAL \inst5|bird_y_pos[7]~_emulated_q\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[5]~q\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[3]~q\ : std_logic;
SIGNAL \inst6|Equal0~0_combout\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[8]~q\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[12]~q\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[15]~q\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[18]~q\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[19]~q\ : std_logic;
SIGNAL \inst6|Equal0~8_combout\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[21]~q\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[22]~q\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[25]~q\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[26]~q\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[27]~q\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[28]~q\ : std_logic;
SIGNAL \inst6|Equal0~11_combout\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[29]~q\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[30]~q\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[31]~q\ : std_logic;
SIGNAL \inst6|Equal0~12_combout\ : std_logic;
SIGNAL \inst6|Add1~24_combout\ : std_logic;
SIGNAL \inst6|Add1~27_combout\ : std_logic;
SIGNAL \inst6|LessThan2~0_combout\ : std_logic;
SIGNAL \inst6|pipe1_top_y_pos[1]~0_combout\ : std_logic;
SIGNAL \inst6|pipe_move~1_combout\ : std_logic;
SIGNAL \inst6|next_pipe_top~0_combout\ : std_logic;
SIGNAL \inst6|next_pipe_top~1_combout\ : std_logic;
SIGNAL \inst6|Add2~21_combout\ : std_logic;
SIGNAL \inst6|Add2~24_combout\ : std_logic;
SIGNAL \inst6|Add2~28_combout\ : std_logic;
SIGNAL \inst6|pipe2_top_y_pos[1]~0_combout\ : std_logic;
SIGNAL \inst6|Add3~25_combout\ : std_logic;
SIGNAL \inst6|pipe3_top_y_pos[1]~0_combout\ : std_logic;
SIGNAL \inst6|Equal4~1_combout\ : std_logic;
SIGNAL \inst6|Add4~20_combout\ : std_logic;
SIGNAL \inst6|Add4~26_combout\ : std_logic;
SIGNAL \inst6|Add4~28_combout\ : std_logic;
SIGNAL \inst6|Add4~29_combout\ : std_logic;
SIGNAL \inst6|pipe4_top_y_pos[1]~0_combout\ : std_logic;
SIGNAL \inst6|Equal5~0_combout\ : std_logic;
SIGNAL \inst6|Equal5~1_combout\ : std_logic;
SIGNAL \inst6|LessThan10~0_combout\ : std_logic;
SIGNAL \inst6|Add5~20_combout\ : std_logic;
SIGNAL \inst6|Add5~21_combout\ : std_logic;
SIGNAL \inst6|Add5~22_combout\ : std_logic;
SIGNAL \inst6|Add5~23_combout\ : std_logic;
SIGNAL \inst6|Add5~24_combout\ : std_logic;
SIGNAL \inst6|Add5~25_combout\ : std_logic;
SIGNAL \inst6|Add5~26_combout\ : std_logic;
SIGNAL \inst6|Add5~27_combout\ : std_logic;
SIGNAL \inst6|Add5~28_combout\ : std_logic;
SIGNAL \inst6|Add5~29_combout\ : std_logic;
SIGNAL \inst6|pipe5_top_y_pos[1]~0_combout\ : std_logic;
SIGNAL \inst1|process_0~6_combout\ : std_logic;
SIGNAL \inst1|process_0~9_combout\ : std_logic;
SIGNAL \inst1|process_0~10_combout\ : std_logic;
SIGNAL \inst1|Equal1~0_combout\ : std_logic;
SIGNAL \inst14|Clk1hz_temp~q\ : std_logic;
SIGNAL \inst5|bird_y_pos[8]~7_combout\ : std_logic;
SIGNAL \inst5|bird_y_pos[7]~11_combout\ : std_logic;
SIGNAL \inst6|pipe_move~4_combout\ : std_logic;
SIGNAL \inst6|clk_cnt~1_combout\ : std_logic;
SIGNAL \inst6|clk_cnt~4_combout\ : std_logic;
SIGNAL \inst6|clk_cnt~8_combout\ : std_logic;
SIGNAL \inst6|clk_cnt~10_combout\ : std_logic;
SIGNAL \inst6|clk_cnt~12_combout\ : std_logic;
SIGNAL \inst14|LessThan0~0_combout\ : std_logic;
SIGNAL \inst14|LessThan0~1_combout\ : std_logic;
SIGNAL \inst14|LessThan0~2_combout\ : std_logic;
SIGNAL \inst14|LessThan0~3_combout\ : std_logic;
SIGNAL \inst14|LessThan0~4_combout\ : std_logic;
SIGNAL \inst14|LessThan0~5_combout\ : std_logic;
SIGNAL \inst14|LessThan0~6_combout\ : std_logic;
SIGNAL \inst14|LessThan0~7_combout\ : std_logic;
SIGNAL \inst14|LessThan0~8_combout\ : std_logic;
SIGNAL \inst14|Clk1hz_temp~0_combout\ : std_logic;
SIGNAL \inst6|Equal5~2_combout\ : std_logic;
SIGNAL \inst6|Equal2~2_combout\ : std_logic;
SIGNAL \inst5|Move_Bird~2_combout\ : std_logic;
SIGNAL \inst5|bird_y_motion~0_combout\ : std_logic;
SIGNAL \inst2|MOUSE_CLK_FILTER~0_combout\ : std_logic;
SIGNAL \inst2|mouse_state.INPUT_PACKETS~q\ : std_logic;
SIGNAL \inst2|Selector6~0_combout\ : std_logic;
SIGNAL \inst8|n3~0_combout\ : std_logic;
SIGNAL \inst2|iready_set~q\ : std_logic;
SIGNAL \inst2|mouse_state.WAIT_CMD_ACK~q\ : std_logic;
SIGNAL \inst2|mouse_state.INPUT_PACKETS~0_combout\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[0]~33_combout\ : std_logic;
SIGNAL \inst2|PACKET_COUNT[0]~3_combout\ : std_logic;
SIGNAL \inst2|iready_set~0_combout\ : std_logic;
SIGNAL \inst2|Selector4~0_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[1]~200_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[2]~201_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[2]~90_combout\ : std_logic;
SIGNAL \inst2|PACKET_COUNT[1]~4_combout\ : std_logic;
SIGNAL \inst2|left_button~1_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[0]~100_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[1]~202_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[1]~203_combout\ : std_logic;
SIGNAL \inst6|pipe1_bottom_y_pos[3]~1_combout\ : std_logic;
SIGNAL \inst6|pipe1_bottom_y_pos[2]~2_combout\ : std_logic;
SIGNAL \inst6|pipe1_top_y_pos[7]~2_combout\ : std_logic;
SIGNAL \inst6|pipe2_bottom_y_pos[3]~1_combout\ : std_logic;
SIGNAL \inst6|pipe2_bottom_y_pos[2]~2_combout\ : std_logic;
SIGNAL \inst6|pipe2_top_y_pos[7]~2_combout\ : std_logic;
SIGNAL \inst6|pipe3_bottom_y_pos[3]~1_combout\ : std_logic;
SIGNAL \inst6|pipe3_bottom_y_pos[2]~2_combout\ : std_logic;
SIGNAL \inst6|pipe3_top_y_pos[7]~2_combout\ : std_logic;
SIGNAL \inst6|pipe4_bottom_y_pos[3]~1_combout\ : std_logic;
SIGNAL \inst6|pipe4_bottom_y_pos[2]~2_combout\ : std_logic;
SIGNAL \inst6|pipe4_top_y_pos[7]~2_combout\ : std_logic;
SIGNAL \inst6|pipe5_bottom_y_pos[3]~1_combout\ : std_logic;
SIGNAL \inst6|pipe5_bottom_y_pos[2]~2_combout\ : std_logic;
SIGNAL \inst6|pipe5_top_y_pos[7]~2_combout\ : std_logic;
SIGNAL \inst8|q[2]~0_combout\ : std_logic;
SIGNAL \inst8|q[3]~1_combout\ : std_logic;
SIGNAL \inst8|q[1]~2_combout\ : std_logic;
SIGNAL \inst8|q[10]~3_combout\ : std_logic;
SIGNAL \inst8|q[11]~4_combout\ : std_logic;
SIGNAL \inst8|q[13]~5_combout\ : std_logic;
SIGNAL \inst8|q[15]~6_combout\ : std_logic;
SIGNAL \inst8|q[9]~7_combout\ : std_logic;
SIGNAL \inst8|q[7]~8_combout\ : std_logic;
SIGNAL \inst8|q[5]~9_combout\ : std_logic;
SIGNAL \inst8|q[4]~10_combout\ : std_logic;
SIGNAL \sw1~input_o\ : std_logic;
SIGNAL \inst1|vert_sync_out~clkctrl_outclk\ : std_logic;
SIGNAL \inst14|Clk1hz_temp~clkctrl_outclk\ : std_logic;
SIGNAL \inst6|pipe3_bottom_y_pos[4]~feeder_combout\ : std_logic;
SIGNAL \inst8|q[14]~feeder_combout\ : std_logic;
SIGNAL \inst8|q[6]~feeder_combout\ : std_logic;
SIGNAL \inst6|pipe1_bottom_y_pos[1]~feeder_combout\ : std_logic;
SIGNAL \inst6|pipe2_bottom_y_pos[1]~feeder_combout\ : std_logic;
SIGNAL \inst6|pipe3_bottom_y_pos[1]~feeder_combout\ : std_logic;
SIGNAL \inst6|pipe4_bottom_y_pos[1]~feeder_combout\ : std_logic;
SIGNAL \inst6|pipe5_bottom_y_pos[1]~feeder_combout\ : std_logic;
SIGNAL \mouse_clk~input_o\ : std_logic;
SIGNAL \inst2|filter[0]~feeder_combout\ : std_logic;
SIGNAL \inst2|filter[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|filter[2]~feeder_combout\ : std_logic;
SIGNAL \inst2|MOUSE_CLK_FILTER~1_combout\ : std_logic;
SIGNAL \inst2|filter[5]~feeder_combout\ : std_logic;
SIGNAL \inst2|MOUSE_CLK_FILTER~2_combout\ : std_logic;
SIGNAL \inst2|MOUSE_CLK_FILTER~3_combout\ : std_logic;
SIGNAL \inst2|MOUSE_CLK_FILTER~q\ : std_logic;
SIGNAL \inst2|MOUSE_CLK_FILTER~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|SHIFTOUT[9]~feeder_combout\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[1]~11_combout\ : std_logic;
SIGNAL \inst2|Selector0~0_combout\ : std_logic;
SIGNAL \inst2|mouse_state.INHIBIT_TRANS~q\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[1]~12\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[2]~13_combout\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[2]~14\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[3]~16\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[4]~17_combout\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[4]~18\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[5]~20\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[6]~22\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[7]~23_combout\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[7]~24\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[8]~25_combout\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[8]~26\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[9]~27_combout\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[9]~28\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[10]~29_combout\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[10]~30\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[11]~31_combout\ : std_logic;
SIGNAL \inst2|Selector1~0_combout\ : std_logic;
SIGNAL \inst2|mouse_state.LOAD_COMMAND~q\ : std_logic;
SIGNAL \inst2|mouse_state.LOAD_COMMAND2~feeder_combout\ : std_logic;
SIGNAL \inst2|mouse_state.LOAD_COMMAND2~q\ : std_logic;
SIGNAL \inst2|Selector6~1_combout\ : std_logic;
SIGNAL \inst2|send_data~q\ : std_logic;
SIGNAL \inst2|OUTCNT~3_combout\ : std_logic;
SIGNAL \inst2|output_ready~0_combout\ : std_logic;
SIGNAL \inst2|OUTCNT~1_combout\ : std_logic;
SIGNAL \inst2|OUTCNT~0_combout\ : std_logic;
SIGNAL \inst2|OUTCNT~2_combout\ : std_logic;
SIGNAL \inst2|LessThan0~0_combout\ : std_logic;
SIGNAL \inst2|output_ready~q\ : std_logic;
SIGNAL \inst2|Selector3~0_combout\ : std_logic;
SIGNAL \inst2|mouse_state.WAIT_OUTPUT_READY~q\ : std_logic;
SIGNAL \inst2|send_char~0_combout\ : std_logic;
SIGNAL \inst2|send_char~q\ : std_logic;
SIGNAL \inst2|MOUSE_DATA_BUF~0_combout\ : std_logic;
SIGNAL \inst2|SHIFTOUT[8]~3_combout\ : std_logic;
SIGNAL \inst2|SHIFTOUT[7]~feeder_combout\ : std_logic;
SIGNAL \inst2|SHIFTOUT[6]~feeder_combout\ : std_logic;
SIGNAL \inst2|SHIFTOUT[5]~feeder_combout\ : std_logic;
SIGNAL \inst2|SHIFTOUT[4]~2_combout\ : std_logic;
SIGNAL \inst2|SHIFTOUT[3]~1_combout\ : std_logic;
SIGNAL \inst2|SHIFTOUT[2]~0_combout\ : std_logic;
SIGNAL \inst2|SHIFTOUT[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|MOUSE_DATA_BUF~q\ : std_logic;
SIGNAL \inst2|WideOr4~combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|Add0~0_combout\ : std_logic;
SIGNAL \inst1|Add0~1\ : std_logic;
SIGNAL \inst1|Add0~3\ : std_logic;
SIGNAL \inst1|Add0~4_combout\ : std_logic;
SIGNAL \inst1|Add0~5\ : std_logic;
SIGNAL \inst1|Add0~7\ : std_logic;
SIGNAL \inst1|Add0~9\ : std_logic;
SIGNAL \inst1|Add0~10_combout\ : std_logic;
SIGNAL \inst1|Add0~13\ : std_logic;
SIGNAL \inst1|Add0~15\ : std_logic;
SIGNAL \inst1|Add0~16_combout\ : std_logic;
SIGNAL \inst1|Add0~6_combout\ : std_logic;
SIGNAL \inst1|Add0~2_combout\ : std_logic;
SIGNAL \inst1|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|h_count~1_combout\ : std_logic;
SIGNAL \inst1|Equal0~2_combout\ : std_logic;
SIGNAL \inst1|h_count~2_combout\ : std_logic;
SIGNAL \inst1|Add0~11\ : std_logic;
SIGNAL \inst1|Add0~12_combout\ : std_logic;
SIGNAL \inst1|h_count[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|Add0~17\ : std_logic;
SIGNAL \inst1|Add0~18_combout\ : std_logic;
SIGNAL \inst1|h_count~0_combout\ : std_logic;
SIGNAL \inst1|Equal0~1_combout\ : std_logic;
SIGNAL \inst1|Add0~14_combout\ : std_logic;
SIGNAL \inst1|v_count[2]~0_combout\ : std_logic;
SIGNAL \inst1|v_count[6]~4_combout\ : std_logic;
SIGNAL \inst1|v_count[5]~3_combout\ : std_logic;
SIGNAL \inst1|v_count[4]~8_combout\ : std_logic;
SIGNAL \inst1|Add1~1\ : std_logic;
SIGNAL \inst1|Add1~3\ : std_logic;
SIGNAL \inst1|Add1~5\ : std_logic;
SIGNAL \inst1|Add1~7\ : std_logic;
SIGNAL \inst1|Add1~9\ : std_logic;
SIGNAL \inst1|Add1~11\ : std_logic;
SIGNAL \inst1|Add1~13\ : std_logic;
SIGNAL \inst1|Add1~14_combout\ : std_logic;
SIGNAL \inst1|v_count[7]~5_combout\ : std_logic;
SIGNAL \inst1|Add1~15\ : std_logic;
SIGNAL \inst1|Add1~16_combout\ : std_logic;
SIGNAL \inst1|v_count[8]~6_combout\ : std_logic;
SIGNAL \inst1|process_0~7_combout\ : std_logic;
SIGNAL \inst1|process_0~8_combout\ : std_logic;
SIGNAL \inst1|process_0~11_combout\ : std_logic;
SIGNAL \inst1|v_count[5]~1_combout\ : std_logic;
SIGNAL \inst1|v_count[9]~2_combout\ : std_logic;
SIGNAL \inst1|LessThan7~0_combout\ : std_logic;
SIGNAL \inst1|LessThan7~1_combout\ : std_logic;
SIGNAL \inst1|video_on_v~q\ : std_logic;
SIGNAL \inst1|LessThan6~0_combout\ : std_logic;
SIGNAL \inst1|video_on_h~q\ : std_logic;
SIGNAL \inst1|video_on~combout\ : std_logic;
SIGNAL \inst1|pixel_column[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|Add1~2_combout\ : std_logic;
SIGNAL \inst1|v_count~10_combout\ : std_logic;
SIGNAL \inst1|v_count[2]~9_combout\ : std_logic;
SIGNAL \inst1|v_count[3]~7_combout\ : std_logic;
SIGNAL \inst5|Add2~0_combout\ : std_logic;
SIGNAL \inst15|LessThan22~1_combout\ : std_logic;
SIGNAL \sw2~input_o\ : std_logic;
SIGNAL \inst15|temp_char_address~77_combout\ : std_logic;
SIGNAL \inst11|Add4~1\ : std_logic;
SIGNAL \inst11|Add4~3\ : std_logic;
SIGNAL \inst11|Add4~5\ : std_logic;
SIGNAL \inst11|Add4~7\ : std_logic;
SIGNAL \inst11|Add4~8_combout\ : std_logic;
SIGNAL \inst11|LessThan13~0_combout\ : std_logic;
SIGNAL \inst11|Add4~9\ : std_logic;
SIGNAL \inst11|Add4~10_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~72_combout\ : std_logic;
SIGNAL \inst11|Add4~6_combout\ : std_logic;
SIGNAL \inst11|LessThan24~1_combout\ : std_logic;
SIGNAL \inst1|pixel_column[1]~feeder_combout\ : std_logic;
SIGNAL \inst11|LessThan4~0_combout\ : std_logic;
SIGNAL \inst11|Add4~0_combout\ : std_logic;
SIGNAL \inst11|LessThan4~1_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~74_combout\ : std_logic;
SIGNAL \inst15|LessThan140~0_combout\ : std_logic;
SIGNAL \inst11|Add4~4_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~55_combout\ : std_logic;
SIGNAL \inst1|Add0~8_combout\ : std_logic;
SIGNAL \inst1|pixel_column[4]~feeder_combout\ : std_logic;
SIGNAL \inst15|LessThan1~0_combout\ : std_logic;
SIGNAL \inst15|LessThan52~0_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~63_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[1]~112_combout\ : std_logic;
SIGNAL \inst15|LessThan146~0_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~14_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~110_combout\ : std_logic;
SIGNAL \inst15|LessThan0~0_combout\ : std_logic;
SIGNAL \inst15|LessThan1~1_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~75_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~109_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~15_combout\ : std_logic;
SIGNAL \inst11|LessThan5~1_combout\ : std_logic;
SIGNAL \inst15|LessThan60~0_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~60_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[4]~108_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[5]~111_combout\ : std_logic;
SIGNAL \inst15|LessThan84~0_combout\ : std_logic;
SIGNAL \inst11|LessThan16~0_combout\ : std_logic;
SIGNAL \inst11|LessThan16~1_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~22_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~24_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~25_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[5]~113_combout\ : std_logic;
SIGNAL \inst1|Add1~0_combout\ : std_logic;
SIGNAL \inst1|v_count~11_combout\ : std_logic;
SIGNAL \inst11|LessThan55~0_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~42_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~43_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~53_combout\ : std_logic;
SIGNAL \inst11|LessThan1~0_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~40_combout\ : std_logic;
SIGNAL \inst15|LessThan68~0_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~41_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[2]~114_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~45_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~46_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~116_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~38_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~39_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~115_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[3]~117_combout\ : std_logic;
SIGNAL \inst15|LessThan48~0_combout\ : std_logic;
SIGNAL \inst15|LessThan48~1_combout\ : std_logic;
SIGNAL \inst15|LessThan2~0_combout\ : std_logic;
SIGNAL \inst15|LessThan2~1_combout\ : std_logic;
SIGNAL \inst5|Add2~3_combout\ : std_logic;
SIGNAL \inst5|Add2~4_combout\ : std_logic;
SIGNAL \inst15|LessThan22~0_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~30_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~37_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~33_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[0]~83_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~120_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~196_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~70_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~71_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[3]~121_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~34_combout\ : std_logic;
SIGNAL \inst11|LessThan21~0_combout\ : std_logic;
SIGNAL \inst11|LessThan20~0_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~79_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[0]~81_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[5]~122_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[1]~125_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[4]~198_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[0]~130_combout\ : std_logic;
SIGNAL \inst11|LessThan5~0_combout\ : std_logic;
SIGNAL \inst15|LessThan76~0_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~27_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~28_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[0]~29_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~32_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~36_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~49_combout\ : std_logic;
SIGNAL \inst11|LessThan33~0_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~50_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~195_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~47_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~48_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[0]~51_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[0]~52_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[0]~66_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~18_combout\ : std_logic;
SIGNAL \inst15|LessThan23~0_combout\ : std_logic;
SIGNAL \inst15|LessThan99~0_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~19_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~20_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~21_combout\ : std_logic;
SIGNAL \inst11|LessThan9~0_combout\ : std_logic;
SIGNAL \inst11|LessThan9~1_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~16_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[0]~26_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[0]~88_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~23_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~92_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[0]~93_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~95_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~96_combout\ : std_logic;
SIGNAL \inst11|LessThan12~0_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~97_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[4]~98_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[0]~99_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[0]~100_combout\ : std_logic;
SIGNAL \inst15|LessThan53~0_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~31_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~126_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[4]~127_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[0]~128_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[0]~131_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~133_combout\ : std_logic;
SIGNAL \inst15|LessThan44~0_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~35_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~129_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[1]~134_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~132_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[1]~147_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[2]~199_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[2]~148_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[2]~163_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[2]~165_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[2]~166_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~94_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[3]~173_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~149_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[2]~150_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[3]~174_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[3]~177_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[3]~180_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[4]~181_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~85_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[4]~123_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[4]~192_combout\ : std_logic;
SIGNAL \inst15|temp_char_address[5]~194_combout\ : std_logic;
SIGNAL \inst15|display|Mux0~2_combout\ : std_logic;
SIGNAL \inst15|display|Mux0~3_combout\ : std_logic;
SIGNAL \inst15|display|Mux0~1_combout\ : std_logic;
SIGNAL \inst7|red~0_combout\ : std_logic;
SIGNAL \sw0~input_o\ : std_logic;
SIGNAL \inst5|bird_dead~1_combout\ : std_logic;
SIGNAL \inst5|Move_Bird~0_combout\ : std_logic;
SIGNAL \inst5|Move_Bird~0clkctrl_outclk\ : std_logic;
SIGNAL \inst5|bird_y_pos~61_combout\ : std_logic;
SIGNAL \inst5|bird_y_pos[9]~1_combout\ : std_logic;
SIGNAL \mouse_data~input_o\ : std_logic;
SIGNAL \inst2|SHIFTIN[8]~feeder_combout\ : std_logic;
SIGNAL \inst2|INCNT~2_combout\ : std_logic;
SIGNAL \inst2|INCNT[3]~1_combout\ : std_logic;
SIGNAL \inst2|INCNT~0_combout\ : std_logic;
SIGNAL \inst2|INCNT~4_combout\ : std_logic;
SIGNAL \inst2|INCNT~3_combout\ : std_logic;
SIGNAL \inst2|LessThan1~0_combout\ : std_logic;
SIGNAL \inst2|READ_CHAR~0_combout\ : std_logic;
SIGNAL \inst2|READ_CHAR~q\ : std_logic;
SIGNAL \inst2|SHIFTIN[0]~2_combout\ : std_logic;
SIGNAL \inst2|SHIFTIN[7]~feeder_combout\ : std_logic;
SIGNAL \inst2|SHIFTIN[6]~feeder_combout\ : std_logic;
SIGNAL \inst2|SHIFTIN[5]~feeder_combout\ : std_logic;
SIGNAL \inst2|SHIFTIN[4]~feeder_combout\ : std_logic;
SIGNAL \inst2|SHIFTIN[3]~feeder_combout\ : std_logic;
SIGNAL \inst2|SHIFTIN[2]~feeder_combout\ : std_logic;
SIGNAL \inst2|SHIFTIN[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|PACKET_COUNT[1]~2_combout\ : std_logic;
SIGNAL \inst2|PACKET_CHAR1[0]~0_combout\ : std_logic;
SIGNAL \inst2|left_button~0_combout\ : std_logic;
SIGNAL \inst2|left_button~q\ : std_logic;
SIGNAL \inst5|bird_y_pos~62_combout\ : std_logic;
SIGNAL \inst5|bird_y_pos[8]~5_combout\ : std_logic;
SIGNAL \inst5|bird_y_pos[8]~6_combout\ : std_logic;
SIGNAL \inst5|bird_y_pos~67_combout\ : std_logic;
SIGNAL \inst5|bird_y_pos[4]~21_combout\ : std_logic;
SIGNAL \inst5|bird_y_pos~68_combout\ : std_logic;
SIGNAL \inst5|bird_y_pos[2]~29_combout\ : std_logic;
SIGNAL \inst5|bird_y_pos~69_combout\ : std_logic;
SIGNAL \inst5|bird_y_pos[1]~33_combout\ : std_logic;
SIGNAL \inst5|Add4~9\ : std_logic;
SIGNAL \inst5|Add4~10_combout\ : std_logic;
SIGNAL \inst5|bird_y_pos[5]~19_combout\ : std_logic;
SIGNAL \inst5|bird_y_pos[5]~_emulated_q\ : std_logic;
SIGNAL \inst5|bird_y_pos~65_combout\ : std_logic;
SIGNAL \inst5|bird_y_pos[5]~17_combout\ : std_logic;
SIGNAL \inst5|bird_y_pos[5]~18_combout\ : std_logic;
SIGNAL \inst5|LessThan5~1_combout\ : std_logic;
SIGNAL \inst5|bird_y_pos~63_combout\ : std_logic;
SIGNAL \inst5|bird_y_pos[7]~9_combout\ : std_logic;
SIGNAL \inst5|bird_y_pos[7]~10_combout\ : std_logic;
SIGNAL \inst5|LessThan5~0_combout\ : std_logic;
SIGNAL \inst5|LessThan5~2_combout\ : std_logic;
SIGNAL \inst5|bird_y_motion~1_combout\ : std_logic;
SIGNAL \inst5|Add4~1\ : std_logic;
SIGNAL \inst5|Add4~2_combout\ : std_logic;
SIGNAL \inst5|bird_y_pos[1]~35_combout\ : std_logic;
SIGNAL \inst5|bird_y_pos[1]~_emulated_q\ : std_logic;
SIGNAL \inst5|bird_y_pos[1]~34_combout\ : std_logic;
SIGNAL \inst5|Add4~3\ : std_logic;
SIGNAL \inst5|Add4~4_combout\ : std_logic;
SIGNAL \inst5|bird_y_pos[2]~31_combout\ : std_logic;
SIGNAL \inst5|bird_y_pos[2]~_emulated_q\ : std_logic;
SIGNAL \inst5|bird_y_pos[2]~30_combout\ : std_logic;
SIGNAL \inst5|Add4~5\ : std_logic;
SIGNAL \inst5|Add4~6_combout\ : std_logic;
SIGNAL \inst5|bird_y_pos~66_combout\ : std_logic;
SIGNAL \inst5|bird_y_pos[3]~25_combout\ : std_logic;
SIGNAL \inst5|bird_y_pos[3]~27_combout\ : std_logic;
SIGNAL \inst5|bird_y_pos[3]~_emulated_q\ : std_logic;
SIGNAL \inst5|bird_y_pos[3]~26_combout\ : std_logic;
SIGNAL \inst5|Add4~7\ : std_logic;
SIGNAL \inst5|Add4~8_combout\ : std_logic;
SIGNAL \inst5|bird_y_pos[4]~23_combout\ : std_logic;
SIGNAL \inst5|bird_y_pos[4]~_emulated_q\ : std_logic;
SIGNAL \inst5|bird_y_pos[4]~22_combout\ : std_logic;
SIGNAL \inst5|Move_Bird~3_combout\ : std_logic;
SIGNAL \inst5|Move_Bird~4_combout\ : std_logic;
SIGNAL \inst5|Move_Bird~5_combout\ : std_logic;
SIGNAL \inst5|bird_y_pos~64_combout\ : std_logic;
SIGNAL \inst5|bird_y_pos[6]~13_combout\ : std_logic;
SIGNAL \inst5|Add4~11\ : std_logic;
SIGNAL \inst5|Add4~12_combout\ : std_logic;
SIGNAL \inst5|bird_y_pos[6]~15_combout\ : std_logic;
SIGNAL \inst5|bird_y_pos[6]~_emulated_q\ : std_logic;
SIGNAL \inst5|bird_y_pos[6]~14_combout\ : std_logic;
SIGNAL \inst5|Add4~13\ : std_logic;
SIGNAL \inst5|Add4~15\ : std_logic;
SIGNAL \inst5|Add4~17\ : std_logic;
SIGNAL \inst5|Add4~18_combout\ : std_logic;
SIGNAL \inst5|bird_y_pos[9]~3_combout\ : std_logic;
SIGNAL \inst5|bird_y_pos[9]~_emulated_q\ : std_logic;
SIGNAL \inst5|bird_y_pos[9]~2_combout\ : std_logic;
SIGNAL \inst5|bird_dead~0_combout\ : std_logic;
SIGNAL \inst5|temp_bird_dead~combout\ : std_logic;
SIGNAL \inst5|Move_Bird~1_combout\ : std_logic;
SIGNAL \inst5|reset_score~combout\ : std_logic;
SIGNAL \inst9|BCD_ones|temp_QOut1~6_combout\ : std_logic;
SIGNAL \inst6|Add4~1\ : std_logic;
SIGNAL \inst6|Add4~3\ : std_logic;
SIGNAL \inst6|Add4~4_combout\ : std_logic;
SIGNAL \inst6|Add4~27_combout\ : std_logic;
SIGNAL \inst6|clk_cnt~5_combout\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[11]~q\ : std_logic;
SIGNAL \inst6|clk_cnt~6_combout\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[9]~q\ : std_logic;
SIGNAL \inst6|clk_cnt~3_combout\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[7]~q\ : std_logic;
SIGNAL \inst6|clk_cnt~2_combout\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[0]~q\ : std_logic;
SIGNAL \inst6|Add0~1\ : std_logic;
SIGNAL \inst6|Add0~2_combout\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[1]~q\ : std_logic;
SIGNAL \inst6|Add0~3\ : std_logic;
SIGNAL \inst6|Add0~4_combout\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[2]~q\ : std_logic;
SIGNAL \inst6|Add0~5\ : std_logic;
SIGNAL \inst6|Add0~7\ : std_logic;
SIGNAL \inst6|Add0~8_combout\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[4]~q\ : std_logic;
SIGNAL \inst6|Add0~9\ : std_logic;
SIGNAL \inst6|Add0~11\ : std_logic;
SIGNAL \inst6|Add0~12_combout\ : std_logic;
SIGNAL \inst6|clk_cnt~0_combout\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[6]~q\ : std_logic;
SIGNAL \inst6|Add0~13\ : std_logic;
SIGNAL \inst6|Add0~15\ : std_logic;
SIGNAL \inst6|Add0~17\ : std_logic;
SIGNAL \inst6|Add0~19\ : std_logic;
SIGNAL \inst6|Add0~20_combout\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[10]~q\ : std_logic;
SIGNAL \inst6|Add0~21\ : std_logic;
SIGNAL \inst6|Add0~23\ : std_logic;
SIGNAL \inst6|Add0~25\ : std_logic;
SIGNAL \inst6|Add0~26_combout\ : std_logic;
SIGNAL \inst6|clk_cnt~7_combout\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[13]~q\ : std_logic;
SIGNAL \inst6|Add0~27\ : std_logic;
SIGNAL \inst6|Add0~28_combout\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[14]~q\ : std_logic;
SIGNAL \inst6|Add0~29\ : std_logic;
SIGNAL \inst6|Add0~31\ : std_logic;
SIGNAL \inst6|Add0~32_combout\ : std_logic;
SIGNAL \inst6|clk_cnt~9_combout\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[16]~q\ : std_logic;
SIGNAL \inst6|Add0~33\ : std_logic;
SIGNAL \inst6|Add0~34_combout\ : std_logic;
SIGNAL \inst6|clk_cnt~11_combout\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[17]~q\ : std_logic;
SIGNAL \inst6|Add0~35\ : std_logic;
SIGNAL \inst6|Add0~37\ : std_logic;
SIGNAL \inst6|Add0~39\ : std_logic;
SIGNAL \inst6|Add0~40_combout\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[20]~q\ : std_logic;
SIGNAL \inst6|Add0~41\ : std_logic;
SIGNAL \inst6|Add0~42_combout\ : std_logic;
SIGNAL \inst6|Add0~43\ : std_logic;
SIGNAL \inst6|Add0~44_combout\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[24]~q\ : std_logic;
SIGNAL \inst6|Add0~45\ : std_logic;
SIGNAL \inst6|Add0~46_combout\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[23]~q\ : std_logic;
SIGNAL \inst6|Add0~47\ : std_logic;
SIGNAL \inst6|Add0~48_combout\ : std_logic;
SIGNAL \inst6|Equal0~10_combout\ : std_logic;
SIGNAL \inst9|BCD_tens|temp_QOut1~4_combout\ : std_logic;
SIGNAL \inst9|BCD_ones|Add0~0_combout\ : std_logic;
SIGNAL \inst9|BCD_ones|temp_QOut1~4_combout\ : std_logic;
SIGNAL \inst9|BCD_ones|temp_QOut1~3_combout\ : std_logic;
SIGNAL \inst9|BCD_ones|Q_Out[0]~0_combout\ : std_logic;
SIGNAL \inst9|BCD_ones|temp_QOut1~1_combout\ : std_logic;
SIGNAL \inst9|BCD_ones|temp_QOut1~0_combout\ : std_logic;
SIGNAL \inst6|pipe_move~0_combout\ : std_logic;
SIGNAL \inst9|BCD_tens|temp_QOut1[0]~5_combout\ : std_logic;
SIGNAL \inst9|BCD_tens|LessThan0~0_combout\ : std_logic;
SIGNAL \inst9|BCD_tens|temp_QOut1~7_combout\ : std_logic;
SIGNAL \inst9|BCD_tens|Add0~1_combout\ : std_logic;
SIGNAL \inst9|BCD_tens|temp_QOut1~8_combout\ : std_logic;
SIGNAL \inst9|BCD_tens|Add0~0_combout\ : std_logic;
SIGNAL \inst9|BCD_tens|temp_QOut1~6_combout\ : std_logic;
SIGNAL \inst9|BCD_tens|temp_QOut1~1_combout\ : std_logic;
SIGNAL \inst9|BCD_tens|Q_Out[0]~0_combout\ : std_logic;
SIGNAL \inst9|BCD_tens|temp_QOut1~3_combout\ : std_logic;
SIGNAL \inst6|pipe_move~2_combout\ : std_logic;
SIGNAL \inst6|pipe_move~3_combout\ : std_logic;
SIGNAL \inst9|BCD_tens|temp_QOut1~0_combout\ : std_logic;
SIGNAL \inst9|BCD_tens|temp_QOut1~2_combout\ : std_logic;
SIGNAL \inst6|pipe_speed[30]~0_combout\ : std_logic;
SIGNAL \inst6|pipe_speed[30]~1_combout\ : std_logic;
SIGNAL \inst6|pipe_speed[30]~1clkctrl_outclk\ : std_logic;
SIGNAL \inst6|Add0~24_combout\ : std_logic;
SIGNAL \inst6|pipe_move~7_combout\ : std_logic;
SIGNAL \inst6|pipe_move~6_combout\ : std_logic;
SIGNAL \inst6|pipe_move~8_combout\ : std_logic;
SIGNAL \inst6|Equal0~3_combout\ : std_logic;
SIGNAL \inst6|Add0~16_combout\ : std_logic;
SIGNAL \inst6|Equal0~1_combout\ : std_logic;
SIGNAL \inst6|Add0~18_combout\ : std_logic;
SIGNAL \inst6|Equal0~2_combout\ : std_logic;
SIGNAL \inst6|Equal0~4_combout\ : std_logic;
SIGNAL \inst6|Add0~6_combout\ : std_logic;
SIGNAL \inst6|Equal0~7_combout\ : std_logic;
SIGNAL \inst6|Add0~30_combout\ : std_logic;
SIGNAL \inst6|Equal0~5_combout\ : std_logic;
SIGNAL \inst6|pipe_move~5_combout\ : std_logic;
SIGNAL \inst6|pipe_speed[17]~2_combout\ : std_logic;
SIGNAL \inst6|Equal0~6_combout\ : std_logic;
SIGNAL \inst6|Equal0~9_combout\ : std_logic;
SIGNAL \inst6|Equal0~13_combout\ : std_logic;
SIGNAL \inst6|pipe1_x_pos[9]~0_combout\ : std_logic;
SIGNAL \inst6|Add4~5\ : std_logic;
SIGNAL \inst6|Add4~7\ : std_logic;
SIGNAL \inst6|Add4~8_combout\ : std_logic;
SIGNAL \inst6|Add4~25_combout\ : std_logic;
SIGNAL \inst6|Add4~9\ : std_logic;
SIGNAL \inst6|Add4~10_combout\ : std_logic;
SIGNAL \inst6|Add4~24_combout\ : std_logic;
SIGNAL \inst6|Add4~11\ : std_logic;
SIGNAL \inst6|Add4~13\ : std_logic;
SIGNAL \inst6|Add4~14_combout\ : std_logic;
SIGNAL \inst6|Add4~22_combout\ : std_logic;
SIGNAL \inst6|Equal4~0_combout\ : std_logic;
SIGNAL \inst6|Add4~15\ : std_logic;
SIGNAL \inst6|Add4~16_combout\ : std_logic;
SIGNAL \inst6|Add4~21_combout\ : std_logic;
SIGNAL \inst6|LessThan9~0_combout\ : std_logic;
SIGNAL \inst6|Add4~12_combout\ : std_logic;
SIGNAL \inst6|Add4~23_combout\ : std_logic;
SIGNAL \inst6|Equal4~2_combout\ : std_logic;
SIGNAL \inst6|Add3~0_combout\ : std_logic;
SIGNAL \inst6|Add3~29_combout\ : std_logic;
SIGNAL \inst6|Add3~1\ : std_logic;
SIGNAL \inst6|Add3~2_combout\ : std_logic;
SIGNAL \inst6|Add3~28_combout\ : std_logic;
SIGNAL \inst6|Add3~3\ : std_logic;
SIGNAL \inst6|Add3~4_combout\ : std_logic;
SIGNAL \inst6|Add3~27_combout\ : std_logic;
SIGNAL \inst6|Add3~5\ : std_logic;
SIGNAL \inst6|Add3~6_combout\ : std_logic;
SIGNAL \inst6|Add3~26_combout\ : std_logic;
SIGNAL \inst6|Add3~7\ : std_logic;
SIGNAL \inst6|Add3~9\ : std_logic;
SIGNAL \inst6|Add3~10_combout\ : std_logic;
SIGNAL \inst6|Add3~24_combout\ : std_logic;
SIGNAL \inst6|Add3~11\ : std_logic;
SIGNAL \inst6|Add3~12_combout\ : std_logic;
SIGNAL \inst6|Add3~23_combout\ : std_logic;
SIGNAL \inst6|Add3~13\ : std_logic;
SIGNAL \inst6|Add3~15\ : std_logic;
SIGNAL \inst6|Add3~17\ : std_logic;
SIGNAL \inst6|Add3~18_combout\ : std_logic;
SIGNAL \inst6|Add3~20_combout\ : std_logic;
SIGNAL \inst6|Add3~14_combout\ : std_logic;
SIGNAL \inst6|Add3~22_combout\ : std_logic;
SIGNAL \inst6|Equal3~0_combout\ : std_logic;
SIGNAL \inst6|Equal3~1_combout\ : std_logic;
SIGNAL \inst6|LessThan8~0_combout\ : std_logic;
SIGNAL \inst6|Add3~16_combout\ : std_logic;
SIGNAL \inst6|Add3~21_combout\ : std_logic;
SIGNAL \inst6|Equal3~2_combout\ : std_logic;
SIGNAL \inst6|Add2~0_combout\ : std_logic;
SIGNAL \inst6|Add2~1\ : std_logic;
SIGNAL \inst6|Add2~3\ : std_logic;
SIGNAL \inst6|Add2~4_combout\ : std_logic;
SIGNAL \inst6|Add2~27_combout\ : std_logic;
SIGNAL \inst6|Add2~5\ : std_logic;
SIGNAL \inst6|Add2~6_combout\ : std_logic;
SIGNAL \inst6|Add2~26_combout\ : std_logic;
SIGNAL \inst6|Add2~7\ : std_logic;
SIGNAL \inst6|Add2~9\ : std_logic;
SIGNAL \inst6|Add2~11\ : std_logic;
SIGNAL \inst6|Add2~13\ : std_logic;
SIGNAL \inst6|Add2~14_combout\ : std_logic;
SIGNAL \inst6|Add2~22_combout\ : std_logic;
SIGNAL \inst6|Add2~15\ : std_logic;
SIGNAL \inst6|Add2~17\ : std_logic;
SIGNAL \inst6|Add2~18_combout\ : std_logic;
SIGNAL \inst6|Add2~20_combout\ : std_logic;
SIGNAL \inst6|Add2~25_combout\ : std_logic;
SIGNAL \inst6|Equal2~0_combout\ : std_logic;
SIGNAL \inst6|Add2~23_combout\ : std_logic;
SIGNAL \inst6|LessThan7~0_combout\ : std_logic;
SIGNAL \inst6|Add2~29_combout\ : std_logic;
SIGNAL \inst6|Equal2~1_combout\ : std_logic;
SIGNAL \inst6|Add1~1\ : std_logic;
SIGNAL \inst6|Add1~2_combout\ : std_logic;
SIGNAL \inst6|Add1~14_combout\ : std_logic;
SIGNAL \inst6|Add1~22_combout\ : std_logic;
SIGNAL \inst6|Add1~8_combout\ : std_logic;
SIGNAL \inst6|Add1~25_combout\ : std_logic;
SIGNAL \inst6|Add1~17\ : std_logic;
SIGNAL \inst6|Add1~18_combout\ : std_logic;
SIGNAL \inst6|Add1~20_combout\ : std_logic;
SIGNAL \inst6|Equal1~0_combout\ : std_logic;
SIGNAL \inst6|Add1~29_combout\ : std_logic;
SIGNAL \inst6|Equal1~1_combout\ : std_logic;
SIGNAL \inst6|LessThan6~0_combout\ : std_logic;
SIGNAL \inst6|Add1~28_combout\ : std_logic;
SIGNAL \inst6|Add1~3\ : std_logic;
SIGNAL \inst6|Add1~5\ : std_logic;
SIGNAL \inst6|Add1~6_combout\ : std_logic;
SIGNAL \inst6|Add1~26_combout\ : std_logic;
SIGNAL \inst6|Add1~7\ : std_logic;
SIGNAL \inst6|Add1~9\ : std_logic;
SIGNAL \inst6|Add1~11\ : std_logic;
SIGNAL \inst6|Add1~12_combout\ : std_logic;
SIGNAL \inst6|Add1~23_combout\ : std_logic;
SIGNAL \inst6|Add1~13\ : std_logic;
SIGNAL \inst6|Add1~15\ : std_logic;
SIGNAL \inst6|Add1~16_combout\ : std_logic;
SIGNAL \inst6|Add1~21_combout\ : std_logic;
SIGNAL \inst6|Equal1~2_combout\ : std_logic;
SIGNAL \inst6|pipe_move~9_combout\ : std_logic;
SIGNAL \inst6|pipe_move~10_combout\ : std_logic;
SIGNAL \inst6|score_incr~q\ : std_logic;
SIGNAL \inst9|BCD_ones|temp_QOut1[1]~5_combout\ : std_logic;
SIGNAL \inst9|BCD_ones|LessThan0~0_combout\ : std_logic;
SIGNAL \inst9|BCD_ones|temp_QOut1~7_combout\ : std_logic;
SIGNAL \inst9|BCD_ones|Add0~1_combout\ : std_logic;
SIGNAL \inst9|BCD_ones|temp_QOut1~8_combout\ : std_logic;
SIGNAL \inst9|BCD_ones|temp_QOut1~2_combout\ : std_logic;
SIGNAL \inst15|temp_char_address~197_combout\ : std_logic;
SIGNAL \inst11|LessThan7~0_combout\ : std_logic;
SIGNAL \inst11|temp_char_address~24_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[0]~88_combout\ : std_logic;
SIGNAL \inst11|temp_char_address~26_combout\ : std_logic;
SIGNAL \inst11|temp_char_address~29_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[2]~30_combout\ : std_logic;
SIGNAL \inst11|temp_char_address~31_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[0]~32_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[0]~33_combout\ : std_logic;
SIGNAL \inst11|temp_char_address~27_combout\ : std_logic;
SIGNAL \inst11|temp_char_address~25_combout\ : std_logic;
SIGNAL \inst11|temp_char_address~28_combout\ : std_logic;
SIGNAL \inst11|temp_char_address~34_combout\ : std_logic;
SIGNAL \inst11|temp_char_address~36_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[0]~48_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[0]~91_combout\ : std_logic;
SIGNAL \inst11|temp_char_address~37_combout\ : std_logic;
SIGNAL \inst11|temp_char_address~89_combout\ : std_logic;
SIGNAL \inst11|temp_char_address~35_combout\ : std_logic;
SIGNAL \inst11|temp_char_address~40_combout\ : std_logic;
SIGNAL \inst11|temp_char_address~39_combout\ : std_logic;
SIGNAL \inst11|temp_char_address~42_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[0]~43_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[0]~44_combout\ : std_logic;
SIGNAL \inst11|temp_char_address~45_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[2]~46_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[2]~47_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[0]~49_combout\ : std_logic;
SIGNAL \inst11|temp_char_address~41_combout\ : std_logic;
SIGNAL \inst11|temp_char_address~53_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[0]~57_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[0]~58_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[0]~51_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[0]~54_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[2]~50_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[0]~59_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[0]~101_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[1]~93_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[4]~60_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[1]~62_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[1]~63_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[4]~69_combout\ : std_logic;
SIGNAL \inst11|temp_char_address~96_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[2]~97_combout\ : std_logic;
SIGNAL \inst11|temp_char_address~94_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[2]~64_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[1]~67_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[1]~95_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[1]~68_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[1]~70_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[1]~71_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[2]~72_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[2]~73_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[2]~74_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[2]~98_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[2]~99_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[2]~75_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[2]~77_combout\ : std_logic;
SIGNAL \inst11|temp_char_address~79_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[3]~80_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[4]~82_combout\ : std_logic;
SIGNAL \inst11|temp_char_address~92_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[5]~81_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[4]~83_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[4]~85_combout\ : std_logic;
SIGNAL \inst11|temp_char_address~86_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[5]~87_combout\ : std_logic;
SIGNAL \inst11|display|Mux0~0_combout\ : std_logic;
SIGNAL \inst11|display|Mux0~1_combout\ : std_logic;
SIGNAL \inst5|bird_on~2_combout\ : std_logic;
SIGNAL \inst5|Add0~1_cout\ : std_logic;
SIGNAL \inst5|Add0~3_cout\ : std_logic;
SIGNAL \inst5|Add0~5\ : std_logic;
SIGNAL \inst5|Add0~7\ : std_logic;
SIGNAL \inst5|Add0~9\ : std_logic;
SIGNAL \inst5|Add0~11\ : std_logic;
SIGNAL \inst5|Add0~12_combout\ : std_logic;
SIGNAL \inst1|red_out~0_combout\ : std_logic;
SIGNAL \inst5|Add2~5_combout\ : std_logic;
SIGNAL \inst5|bird_y_pos~70_combout\ : std_logic;
SIGNAL \inst5|bird_y_pos[0]~37_combout\ : std_logic;
SIGNAL \inst5|Add4~0_combout\ : std_logic;
SIGNAL \inst5|bird_y_pos[0]~39_combout\ : std_logic;
SIGNAL \inst5|bird_y_pos[0]~_emulated_q\ : std_logic;
SIGNAL \inst5|bird_y_pos[0]~38_combout\ : std_logic;
SIGNAL \inst5|LessThan2~1_cout\ : std_logic;
SIGNAL \inst5|LessThan2~3_cout\ : std_logic;
SIGNAL \inst5|LessThan2~5_cout\ : std_logic;
SIGNAL \inst5|LessThan2~7_cout\ : std_logic;
SIGNAL \inst5|LessThan2~9_cout\ : std_logic;
SIGNAL \inst5|LessThan2~11_cout\ : std_logic;
SIGNAL \inst5|LessThan2~13_cout\ : std_logic;
SIGNAL \inst5|LessThan2~15_cout\ : std_logic;
SIGNAL \inst5|LessThan2~17_cout\ : std_logic;
SIGNAL \inst5|LessThan2~18_combout\ : std_logic;
SIGNAL \inst5|Add3~1\ : std_logic;
SIGNAL \inst5|Add3~3\ : std_logic;
SIGNAL \inst5|Add3~5\ : std_logic;
SIGNAL \inst5|Add3~7\ : std_logic;
SIGNAL \inst5|Add3~8_combout\ : std_logic;
SIGNAL \inst5|Add3~4_combout\ : std_logic;
SIGNAL \inst5|Add3~2_combout\ : std_logic;
SIGNAL \inst5|Add3~0_combout\ : std_logic;
SIGNAL \inst5|LessThan3~1_cout\ : std_logic;
SIGNAL \inst5|LessThan3~3_cout\ : std_logic;
SIGNAL \inst5|LessThan3~5_cout\ : std_logic;
SIGNAL \inst5|LessThan3~7_cout\ : std_logic;
SIGNAL \inst5|LessThan3~9_cout\ : std_logic;
SIGNAL \inst5|LessThan3~11_cout\ : std_logic;
SIGNAL \inst5|LessThan3~13_cout\ : std_logic;
SIGNAL \inst5|LessThan3~15_cout\ : std_logic;
SIGNAL \inst5|LessThan3~16_combout\ : std_logic;
SIGNAL \inst1|red_out~1_combout\ : std_logic;
SIGNAL \inst1|red_out~2_combout\ : std_logic;
SIGNAL \inst1|red_out~3_combout\ : std_logic;
SIGNAL \inst1|red_out~q\ : std_logic;
SIGNAL \inst1|process_0~0_combout\ : std_logic;
SIGNAL \inst1|process_0~1_combout\ : std_logic;
SIGNAL \inst1|vert_sync~q\ : std_logic;
SIGNAL \inst1|vert_sync_out~q\ : std_logic;
SIGNAL \inst11|display|Mux0~2_combout\ : std_logic;
SIGNAL \inst11|display|Mux0~3_combout\ : std_logic;
SIGNAL \inst1|green_out~0_combout\ : std_logic;
SIGNAL \inst1|green_out~1_combout\ : std_logic;
SIGNAL \inst5|bird_on~5_combout\ : std_logic;
SIGNAL \inst1|green_out~15_combout\ : std_logic;
SIGNAL \inst1|green_out~feeder_combout\ : std_logic;
SIGNAL \inst1|green_out~q\ : std_logic;
SIGNAL \inst1|blue_out~q\ : std_logic;
SIGNAL \inst1|process_0~3_combout\ : std_logic;
SIGNAL \inst1|process_0~4_combout\ : std_logic;
SIGNAL \inst1|process_0~2_combout\ : std_logic;
SIGNAL \inst1|process_0~5_combout\ : std_logic;
SIGNAL \inst1|horiz_sync~q\ : std_logic;
SIGNAL \inst1|horiz_sync_out~q\ : std_logic;
SIGNAL \inst6|pipe5_top_y_pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst6|pipe2_bottom_y_pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst9|BCD_ones|temp_QOut1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst6|pipe1_x_pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst9|BCD_ones|Q_Out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst6|pipe3_top_y_pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst6|pipe2_x_pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst8|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst6|pipe3_x_pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst6|pipe4_top_y_pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst6|pipe1_top_y_pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst6|pipe1_bottom_y_pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst6|pipe5_x_pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst14|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst6|pipe_speed\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst11|display|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst6|pipe4_bottom_y_pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst6|pipe2_top_y_pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst6|pipe5_bottom_y_pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst6|pipe4_x_pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst6|pipe3_bottom_y_pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst9|BCD_tens|Q_Out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst9|BCD_tens|temp_QOut1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst15|display|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|pixel_row\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|pixel_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst5|bird_y_motion\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|inhibit_wait_count\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst2|filter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|SHIFTOUT\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst2|SHIFTIN\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst2|PACKET_COUNT\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst2|PACKET_CHAR1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|OUTCNT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|INCNT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|ALT_INV_send_data~q\ : std_logic;
SIGNAL \inst2|ALT_INV_mouse_state.INHIBIT_TRANS~q\ : std_logic;
SIGNAL \inst2|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\ : std_logic;

BEGIN

red_out <= ww_red_out;
ww_clk <= clk;
vert_sync_out <= ww_vert_sync_out;
ww_sw0 <= sw0;
ww_sw2 <= sw2;
ww_sw1 <= sw1;
green_out <= ww_green_out;
blue_out <= ww_blue_out;
horiz_sync_out <= ww_horiz_sync_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst15|display|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst15|temp_char_address[5]~194_combout\ & \inst15|temp_char_address[4]~192_combout\ & \inst15|temp_char_address[3]~180_combout\ & 
\inst15|temp_char_address[2]~166_combout\ & \inst15|temp_char_address[1]~147_combout\ & \inst15|temp_char_address[0]~131_combout\ & \inst1|pixel_row\(3) & \inst1|pixel_row\(2) & \inst1|pixel_row\(1));

\inst15|display|altsyncram_component|auto_generated|q_a\(0) <= \inst15|display|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst15|display|altsyncram_component|auto_generated|q_a\(1) <= \inst15|display|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst15|display|altsyncram_component|auto_generated|q_a\(2) <= \inst15|display|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst15|display|altsyncram_component|auto_generated|q_a\(3) <= \inst15|display|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst15|display|altsyncram_component|auto_generated|q_a\(4) <= \inst15|display|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst15|display|altsyncram_component|auto_generated|q_a\(5) <= \inst15|display|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst15|display|altsyncram_component|auto_generated|q_a\(6) <= \inst15|display|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst15|display|altsyncram_component|auto_generated|q_a\(7) <= \inst15|display|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\inst11|display|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst11|temp_char_address[5]~87_combout\ & \inst11|temp_char_address[4]~85_combout\ & \inst11|temp_char_address[3]~80_combout\ & \inst11|temp_char_address[2]~77_combout\
& \inst11|temp_char_address[1]~71_combout\ & \inst11|temp_char_address[0]~101_combout\ & \inst1|pixel_row\(3) & \inst1|pixel_row\(2) & \inst1|pixel_row\(1));

\inst11|display|altsyncram_component|auto_generated|q_a\(0) <= \inst11|display|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst11|display|altsyncram_component|auto_generated|q_a\(1) <= \inst11|display|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst11|display|altsyncram_component|auto_generated|q_a\(2) <= \inst11|display|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst11|display|altsyncram_component|auto_generated|q_a\(3) <= \inst11|display|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst11|display|altsyncram_component|auto_generated|q_a\(4) <= \inst11|display|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst11|display|altsyncram_component|auto_generated|q_a\(5) <= \inst11|display|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst11|display|altsyncram_component|auto_generated|q_a\(6) <= \inst11|display|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst11|display|altsyncram_component|auto_generated|q_a\(7) <= \inst11|display|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\inst|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clk~input_o\);

\inst|altpll_component|auto_generated|wire_pll1_clk\(0) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(0);
\inst|altpll_component|auto_generated|wire_pll1_clk\(1) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(1);
\inst|altpll_component|auto_generated|wire_pll1_clk\(2) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(2);
\inst|altpll_component|auto_generated|wire_pll1_clk\(3) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(3);
\inst|altpll_component|auto_generated|wire_pll1_clk\(4) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(4);

\inst1|vert_sync_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|vert_sync_out~q\);

\inst2|MOUSE_CLK_FILTER~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|MOUSE_CLK_FILTER~q\);

\inst14|Clk1hz_temp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst14|Clk1hz_temp~q\);

\inst5|Move_Bird~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst5|Move_Bird~0_combout\);

\inst6|pipe_speed[30]~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst6|pipe_speed[30]~1_combout\);

\inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|altpll_component|auto_generated|wire_pll1_clk\(0));
\inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\ <= NOT \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\;
\inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\ <= NOT \inst2|MOUSE_CLK_FILTER~clkctrl_outclk\;
\inst2|ALT_INV_send_data~q\ <= NOT \inst2|send_data~q\;
\inst2|ALT_INV_mouse_state.INHIBIT_TRANS~q\ <= NOT \inst2|mouse_state.INHIBIT_TRANS~q\;
\inst2|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\ <= NOT \inst2|mouse_state.WAIT_OUTPUT_READY~q\;

-- Location: M9K_X25_Y20_N0
\inst15|display|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"000000060001800060001E0006000180007E00000007E001800060001E0006000180007E000000078001B00066001980066001B0007800000003C00198006000180006000198003C00000007C001980066001F0006600198007C000000066001980066001F80066000F0001800000003C001980006000F8006600198003C0000",
	mem_init3 => X"0003C001980066000F0006600198003C00000001800060001800060000C00198007E00000003C001980066001F0006000198003C00000003C00198000600018007C00180007E00000000600018007F00198001E00038000600000003C00198000600070000600198003C00000007E00180003000030000600198003C00000007E00060001800060003800060001800000003C001980066001D8006E00198003C000000060000C000180003000060000C0000000000018000600000000000000000000000000000000000000000001F80000000000000000C00018000600000000000000000000000000000000000600018001F80018000600000000000000001",
	mem_init2 => X"98003C003FC003C00198000000000003000060000C00030000C00060003000000000C000600030000C0003000060000C00000000000000000000000001800030000600000003F001980067000E0003C00198003C00000004600198003000060000C001980062000000018001F00006000F00060000F800180000000660019800FF0019800FF001980066000000000000000000000000066001980066000000018000000000000600018000600018000000000000000000000000000000000000000000010000C0007F001FC0030000400000000600018000600018001F8003C00060000000000003C00030000C00030000C00030003C000000018000F0007E00",
	mem_init1 => X"060001800060001800000003C000C00030000C00030000C0003C00000007E00180003000060000C00018007E000000018000600018000F0006600198006600000006600198003C00060003C001980066000000063001DC007F001AC00630018C0063000000018000F0006600198006600198006600000003C00198006600198006600198006600000001800060001800060001800060007E00000003C001980006000F0006000198003C000000066001B00078001F0006600198007C00000000E000F0006600198006600198003C000000060001800060001F0006600198007C00000003C00198006600198006600198003C00000006600198006E001F8007E0",
	mem_init0 => X"01D800660000000630018C0063001AC007F001DC006300000007E001800060001800060001800060000000066001B00078001C00078001B00066000000038001B0000C00030000C00030001E00000003C00060001800060001800060003C000000066001980066001F8006600198006600000003C001980066001B8006000198003C000000060001800060001E0006000180007E00000007E001800060001E0006000180007E000000078001B00066001980066001B0007800000003C00198006000180006000198003C00000007C001980066001F0006600198007C000000066001980066001F80066000F0001800000003C001880060001B8006E00198003C",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "TCGROM.mif",
	init_file_layout => "port_a",
	logical_ram_name => "text_display_main_menu:inst15|char_rom:display|altsyncram:altsyncram_component|altsyncram_kt91:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 9,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portaaddr => \inst15|display|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst15|display|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: M9K_X13_Y19_N0
\inst11|display|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"000000060001800060001E0006000180007E00000007E001800060001E0006000180007E000000078001B00066001980066001B0007800000003C00198006000180006000198003C00000007C001980066001F0006600198007C000000066001980066001F80066000F0001800000003C001980006000F8006600198003C0000",
	mem_init3 => X"0003C001980066000F0006600198003C00000001800060001800060000C00198007E00000003C001980066001F0006000198003C00000003C00198000600018007C00180007E00000000600018007F00198001E00038000600000003C00198000600070000600198003C00000007E00180003000030000600198003C00000007E00060001800060003800060001800000003C001980066001D8006E00198003C000000060000C000180003000060000C0000000000018000600000000000000000000000000000000000000000001F80000000000000000C00018000600000000000000000000000000000000000600018001F80018000600000000000000001",
	mem_init2 => X"98003C003FC003C00198000000000003000060000C00030000C00060003000000000C000600030000C0003000060000C00000000000000000000000001800030000600000003F001980067000E0003C00198003C00000004600198003000060000C001980062000000018001F00006000F00060000F800180000000660019800FF0019800FF001980066000000000000000000000000066001980066000000018000000000000600018000600018000000000000000000000000000000000000000000010000C0007F001FC0030000400000000600018000600018001F8003C00060000000000003C00030000C00030000C00030003C000000018000F0007E00",
	mem_init1 => X"060001800060001800000003C000C00030000C00030000C0003C00000007E00180003000060000C00018007E000000018000600018000F0006600198006600000006600198003C00060003C001980066000000063001DC007F001AC00630018C0063000000018000F0006600198006600198006600000003C00198006600198006600198006600000001800060001800060001800060007E00000003C001980006000F0006000198003C000000066001B00078001F0006600198007C00000000E000F0006600198006600198003C000000060001800060001F0006600198007C00000003C00198006600198006600198003C00000006600198006E001F8007E0",
	mem_init0 => X"01D800660000000630018C0063001AC007F001DC006300000007E001800060001800060001800060000000066001B00078001C00078001B00066000000038001B0000C00030000C00030001E00000003C00060001800060001800060003C000000066001980066001F8006600198006600000003C001980066001B8006000198003C000000060001800060001E0006000180007E00000007E001800060001E0006000180007E000000078001B00066001980066001B0007800000003C00198006000180006000198003C00000007C001980066001F0006600198007C000000066001980066001F80066000F0001800000003C001880060001B8006E00198003C",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "TCGROM.mif",
	init_file_layout => "port_a",
	logical_ram_name => "text_display_general:inst11|char_rom:display|altsyncram:altsyncram_component|altsyncram_kt91:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 9,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portaaddr => \inst11|display|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst11|display|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X16_Y24_N6
\inst5|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add3~6_combout\ = (\inst5|bird_y_pos[7]~10_combout\ & (!\inst5|Add3~5\)) # (!\inst5|bird_y_pos[7]~10_combout\ & ((\inst5|Add3~5\) # (GND)))
-- \inst5|Add3~7\ = CARRY((!\inst5|Add3~5\) # (!\inst5|bird_y_pos[7]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|bird_y_pos[7]~10_combout\,
	datad => VCC,
	cin => \inst5|Add3~5\,
	combout => \inst5|Add3~6_combout\,
	cout => \inst5|Add3~7\);

-- Location: LCCOMB_X16_Y24_N8
\inst5|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add3~8_combout\ = (\inst5|bird_y_pos[8]~6_combout\ & (\inst5|Add3~7\ $ (GND))) # (!\inst5|bird_y_pos[8]~6_combout\ & (!\inst5|Add3~7\ & VCC))
-- \inst5|Add3~9\ = CARRY((\inst5|bird_y_pos[8]~6_combout\ & !\inst5|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|bird_y_pos[8]~6_combout\,
	datad => VCC,
	cin => \inst5|Add3~7\,
	combout => \inst5|Add3~8_combout\,
	cout => \inst5|Add3~9\);

-- Location: LCCOMB_X16_Y24_N10
\inst5|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add3~10_combout\ = \inst5|bird_y_pos[9]~2_combout\ $ (\inst5|Add3~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|bird_y_pos[9]~2_combout\,
	cin => \inst5|Add3~9\,
	combout => \inst5|Add3~10_combout\);

-- Location: LCCOMB_X20_Y19_N14
\inst5|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add0~4_combout\ = (\inst1|pixel_column\(6) & (\inst5|Add0~3_cout\ $ (GND))) # (!\inst1|pixel_column\(6) & (!\inst5|Add0~3_cout\ & VCC))
-- \inst5|Add0~5\ = CARRY((\inst1|pixel_column\(6) & !\inst5|Add0~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(6),
	datad => VCC,
	cin => \inst5|Add0~3_cout\,
	combout => \inst5|Add0~4_combout\,
	cout => \inst5|Add0~5\);

-- Location: LCCOMB_X20_Y19_N16
\inst5|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add0~6_combout\ = (\inst1|pixel_column\(7) & (!\inst5|Add0~5\)) # (!\inst1|pixel_column\(7) & ((\inst5|Add0~5\) # (GND)))
-- \inst5|Add0~7\ = CARRY((!\inst5|Add0~5\) # (!\inst1|pixel_column\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(7),
	datad => VCC,
	cin => \inst5|Add0~5\,
	combout => \inst5|Add0~6_combout\,
	cout => \inst5|Add0~7\);

-- Location: LCCOMB_X20_Y19_N18
\inst5|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add0~8_combout\ = (\inst1|pixel_column\(8) & (\inst5|Add0~7\ $ (GND))) # (!\inst1|pixel_column\(8) & (!\inst5|Add0~7\ & VCC))
-- \inst5|Add0~9\ = CARRY((\inst1|pixel_column\(8) & !\inst5|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pixel_column\(8),
	datad => VCC,
	cin => \inst5|Add0~7\,
	combout => \inst5|Add0~8_combout\,
	cout => \inst5|Add0~9\);

-- Location: LCCOMB_X20_Y19_N20
\inst5|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add0~10_combout\ = (\inst1|pixel_column\(9) & (!\inst5|Add0~9\)) # (!\inst1|pixel_column\(9) & ((\inst5|Add0~9\) # (GND)))
-- \inst5|Add0~11\ = CARRY((!\inst5|Add0~9\) # (!\inst1|pixel_column\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pixel_column\(9),
	datad => VCC,
	cin => \inst5|Add0~9\,
	combout => \inst5|Add0~10_combout\,
	cout => \inst5|Add0~11\);

-- Location: LCCOMB_X19_Y21_N12
\inst6|Add6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add6~0_combout\ = \inst1|pixel_column\(2) $ (VCC)
-- \inst6|Add6~1\ = CARRY(\inst1|pixel_column\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(2),
	datad => VCC,
	combout => \inst6|Add6~0_combout\,
	cout => \inst6|Add6~1\);

-- Location: LCCOMB_X19_Y21_N14
\inst6|Add6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add6~2_combout\ = (\inst1|pixel_column\(3) & (!\inst6|Add6~1\)) # (!\inst1|pixel_column\(3) & ((\inst6|Add6~1\) # (GND)))
-- \inst6|Add6~3\ = CARRY((!\inst6|Add6~1\) # (!\inst1|pixel_column\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(3),
	datad => VCC,
	cin => \inst6|Add6~1\,
	combout => \inst6|Add6~2_combout\,
	cout => \inst6|Add6~3\);

-- Location: LCCOMB_X19_Y21_N16
\inst6|Add6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add6~4_combout\ = (\inst1|pixel_column\(4) & ((GND) # (!\inst6|Add6~3\))) # (!\inst1|pixel_column\(4) & (\inst6|Add6~3\ $ (GND)))
-- \inst6|Add6~5\ = CARRY((\inst1|pixel_column\(4)) # (!\inst6|Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(4),
	datad => VCC,
	cin => \inst6|Add6~3\,
	combout => \inst6|Add6~4_combout\,
	cout => \inst6|Add6~5\);

-- Location: LCCOMB_X19_Y21_N18
\inst6|Add6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add6~6_combout\ = (\inst1|pixel_column\(5) & (!\inst6|Add6~5\)) # (!\inst1|pixel_column\(5) & ((\inst6|Add6~5\) # (GND)))
-- \inst6|Add6~7\ = CARRY((!\inst6|Add6~5\) # (!\inst1|pixel_column\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(5),
	datad => VCC,
	cin => \inst6|Add6~5\,
	combout => \inst6|Add6~6_combout\,
	cout => \inst6|Add6~7\);

-- Location: LCCOMB_X19_Y21_N20
\inst6|Add6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add6~8_combout\ = (\inst1|pixel_column\(6) & (\inst6|Add6~7\ $ (GND))) # (!\inst1|pixel_column\(6) & (!\inst6|Add6~7\ & VCC))
-- \inst6|Add6~9\ = CARRY((\inst1|pixel_column\(6) & !\inst6|Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pixel_column\(6),
	datad => VCC,
	cin => \inst6|Add6~7\,
	combout => \inst6|Add6~8_combout\,
	cout => \inst6|Add6~9\);

-- Location: LCCOMB_X19_Y21_N22
\inst6|Add6~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add6~10_combout\ = (\inst1|pixel_column\(7) & (!\inst6|Add6~9\)) # (!\inst1|pixel_column\(7) & ((\inst6|Add6~9\) # (GND)))
-- \inst6|Add6~11\ = CARRY((!\inst6|Add6~9\) # (!\inst1|pixel_column\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pixel_column\(7),
	datad => VCC,
	cin => \inst6|Add6~9\,
	combout => \inst6|Add6~10_combout\,
	cout => \inst6|Add6~11\);

-- Location: LCCOMB_X19_Y21_N24
\inst6|Add6~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add6~12_combout\ = (\inst1|pixel_column\(8) & (\inst6|Add6~11\ $ (GND))) # (!\inst1|pixel_column\(8) & (!\inst6|Add6~11\ & VCC))
-- \inst6|Add6~13\ = CARRY((\inst1|pixel_column\(8) & !\inst6|Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(8),
	datad => VCC,
	cin => \inst6|Add6~11\,
	combout => \inst6|Add6~12_combout\,
	cout => \inst6|Add6~13\);

-- Location: LCCOMB_X19_Y21_N26
\inst6|Add6~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add6~14_combout\ = \inst6|Add6~13\ $ (\inst1|pixel_column\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|pixel_column\(9),
	cin => \inst6|Add6~13\,
	combout => \inst6|Add6~14_combout\);

-- Location: LCCOMB_X21_Y17_N6
\inst6|LessThan11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan11~1_cout\ = CARRY((\inst6|pipe1_x_pos\(0) & !\inst1|pixel_column\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe1_x_pos\(0),
	datab => \inst1|pixel_column\(0),
	datad => VCC,
	cout => \inst6|LessThan11~1_cout\);

-- Location: LCCOMB_X21_Y17_N8
\inst6|LessThan11~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan11~3_cout\ = CARRY((\inst1|pixel_column\(1) & ((!\inst6|LessThan11~1_cout\) # (!\inst6|pipe1_x_pos\(1)))) # (!\inst1|pixel_column\(1) & (!\inst6|pipe1_x_pos\(1) & !\inst6|LessThan11~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(1),
	datab => \inst6|pipe1_x_pos\(1),
	datad => VCC,
	cin => \inst6|LessThan11~1_cout\,
	cout => \inst6|LessThan11~3_cout\);

-- Location: LCCOMB_X21_Y17_N10
\inst6|LessThan11~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan11~5_cout\ = CARRY((\inst6|Add6~0_combout\ & (\inst6|pipe1_x_pos\(2) & !\inst6|LessThan11~3_cout\)) # (!\inst6|Add6~0_combout\ & ((\inst6|pipe1_x_pos\(2)) # (!\inst6|LessThan11~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add6~0_combout\,
	datab => \inst6|pipe1_x_pos\(2),
	datad => VCC,
	cin => \inst6|LessThan11~3_cout\,
	cout => \inst6|LessThan11~5_cout\);

-- Location: LCCOMB_X21_Y17_N12
\inst6|LessThan11~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan11~7_cout\ = CARRY((\inst6|pipe1_x_pos\(3) & (\inst6|Add6~2_combout\ & !\inst6|LessThan11~5_cout\)) # (!\inst6|pipe1_x_pos\(3) & ((\inst6|Add6~2_combout\) # (!\inst6|LessThan11~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe1_x_pos\(3),
	datab => \inst6|Add6~2_combout\,
	datad => VCC,
	cin => \inst6|LessThan11~5_cout\,
	cout => \inst6|LessThan11~7_cout\);

-- Location: LCCOMB_X21_Y17_N14
\inst6|LessThan11~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan11~9_cout\ = CARRY((\inst6|Add6~4_combout\ & (\inst6|pipe1_x_pos\(4) & !\inst6|LessThan11~7_cout\)) # (!\inst6|Add6~4_combout\ & ((\inst6|pipe1_x_pos\(4)) # (!\inst6|LessThan11~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add6~4_combout\,
	datab => \inst6|pipe1_x_pos\(4),
	datad => VCC,
	cin => \inst6|LessThan11~7_cout\,
	cout => \inst6|LessThan11~9_cout\);

-- Location: LCCOMB_X21_Y17_N16
\inst6|LessThan11~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan11~11_cout\ = CARRY((\inst6|pipe1_x_pos\(5) & (\inst6|Add6~6_combout\ & !\inst6|LessThan11~9_cout\)) # (!\inst6|pipe1_x_pos\(5) & ((\inst6|Add6~6_combout\) # (!\inst6|LessThan11~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe1_x_pos\(5),
	datab => \inst6|Add6~6_combout\,
	datad => VCC,
	cin => \inst6|LessThan11~9_cout\,
	cout => \inst6|LessThan11~11_cout\);

-- Location: LCCOMB_X21_Y17_N18
\inst6|LessThan11~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan11~13_cout\ = CARRY((\inst6|Add6~8_combout\ & (\inst6|pipe1_x_pos\(6) & !\inst6|LessThan11~11_cout\)) # (!\inst6|Add6~8_combout\ & ((\inst6|pipe1_x_pos\(6)) # (!\inst6|LessThan11~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add6~8_combout\,
	datab => \inst6|pipe1_x_pos\(6),
	datad => VCC,
	cin => \inst6|LessThan11~11_cout\,
	cout => \inst6|LessThan11~13_cout\);

-- Location: LCCOMB_X21_Y17_N20
\inst6|LessThan11~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan11~15_cout\ = CARRY((\inst6|Add6~10_combout\ & ((\inst6|pipe1_x_pos\(7)) # (!\inst6|LessThan11~13_cout\))) # (!\inst6|Add6~10_combout\ & (\inst6|pipe1_x_pos\(7) & !\inst6|LessThan11~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add6~10_combout\,
	datab => \inst6|pipe1_x_pos\(7),
	datad => VCC,
	cin => \inst6|LessThan11~13_cout\,
	cout => \inst6|LessThan11~15_cout\);

-- Location: LCCOMB_X21_Y17_N22
\inst6|LessThan11~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan11~17_cout\ = CARRY((\inst6|pipe1_x_pos\(8) & ((!\inst6|LessThan11~15_cout\) # (!\inst6|Add6~12_combout\))) # (!\inst6|pipe1_x_pos\(8) & (!\inst6|Add6~12_combout\ & !\inst6|LessThan11~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe1_x_pos\(8),
	datab => \inst6|Add6~12_combout\,
	datad => VCC,
	cin => \inst6|LessThan11~15_cout\,
	cout => \inst6|LessThan11~17_cout\);

-- Location: LCCOMB_X21_Y17_N24
\inst6|LessThan11~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan11~18_combout\ = (\inst6|Add6~14_combout\ & (\inst6|LessThan11~17_cout\ & !\inst6|pipe1_x_pos\(9))) # (!\inst6|Add6~14_combout\ & ((\inst6|LessThan11~17_cout\) # (!\inst6|pipe1_x_pos\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add6~14_combout\,
	datad => \inst6|pipe1_x_pos\(9),
	cin => \inst6|LessThan11~17_cout\,
	combout => \inst6|LessThan11~18_combout\);

-- Location: LCCOMB_X21_Y20_N14
\inst6|Add7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add7~0_combout\ = (\inst6|pipe1_x_pos\(2) & (\inst6|pipe1_x_pos\(3) $ (VCC))) # (!\inst6|pipe1_x_pos\(2) & (\inst6|pipe1_x_pos\(3) & VCC))
-- \inst6|Add7~1\ = CARRY((\inst6|pipe1_x_pos\(2) & \inst6|pipe1_x_pos\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe1_x_pos\(2),
	datab => \inst6|pipe1_x_pos\(3),
	datad => VCC,
	combout => \inst6|Add7~0_combout\,
	cout => \inst6|Add7~1\);

-- Location: LCCOMB_X21_Y20_N16
\inst6|Add7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add7~2_combout\ = (\inst6|pipe1_x_pos\(4) & (\inst6|Add7~1\ & VCC)) # (!\inst6|pipe1_x_pos\(4) & (!\inst6|Add7~1\))
-- \inst6|Add7~3\ = CARRY((!\inst6|pipe1_x_pos\(4) & !\inst6|Add7~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe1_x_pos\(4),
	datad => VCC,
	cin => \inst6|Add7~1\,
	combout => \inst6|Add7~2_combout\,
	cout => \inst6|Add7~3\);

-- Location: LCCOMB_X21_Y20_N18
\inst6|Add7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add7~4_combout\ = (\inst6|pipe1_x_pos\(5) & (\inst6|Add7~3\ $ (GND))) # (!\inst6|pipe1_x_pos\(5) & (!\inst6|Add7~3\ & VCC))
-- \inst6|Add7~5\ = CARRY((\inst6|pipe1_x_pos\(5) & !\inst6|Add7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe1_x_pos\(5),
	datad => VCC,
	cin => \inst6|Add7~3\,
	combout => \inst6|Add7~4_combout\,
	cout => \inst6|Add7~5\);

-- Location: LCCOMB_X21_Y20_N20
\inst6|Add7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add7~6_combout\ = (\inst6|pipe1_x_pos\(6) & (!\inst6|Add7~5\)) # (!\inst6|pipe1_x_pos\(6) & ((\inst6|Add7~5\) # (GND)))
-- \inst6|Add7~7\ = CARRY((!\inst6|Add7~5\) # (!\inst6|pipe1_x_pos\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe1_x_pos\(6),
	datad => VCC,
	cin => \inst6|Add7~5\,
	combout => \inst6|Add7~6_combout\,
	cout => \inst6|Add7~7\);

-- Location: LCCOMB_X21_Y20_N22
\inst6|Add7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add7~8_combout\ = (\inst6|pipe1_x_pos\(7) & (!\inst6|Add7~7\ & VCC)) # (!\inst6|pipe1_x_pos\(7) & (\inst6|Add7~7\ $ (GND)))
-- \inst6|Add7~9\ = CARRY((!\inst6|pipe1_x_pos\(7) & !\inst6|Add7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe1_x_pos\(7),
	datad => VCC,
	cin => \inst6|Add7~7\,
	combout => \inst6|Add7~8_combout\,
	cout => \inst6|Add7~9\);

-- Location: LCCOMB_X21_Y20_N24
\inst6|Add7~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add7~10_combout\ = (\inst6|pipe1_x_pos\(8) & (!\inst6|Add7~9\)) # (!\inst6|pipe1_x_pos\(8) & ((\inst6|Add7~9\) # (GND)))
-- \inst6|Add7~11\ = CARRY((!\inst6|Add7~9\) # (!\inst6|pipe1_x_pos\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe1_x_pos\(8),
	datad => VCC,
	cin => \inst6|Add7~9\,
	combout => \inst6|Add7~10_combout\,
	cout => \inst6|Add7~11\);

-- Location: LCCOMB_X21_Y20_N26
\inst6|Add7~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add7~12_combout\ = \inst6|Add7~11\ $ (\inst6|pipe1_x_pos\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst6|pipe1_x_pos\(9),
	cin => \inst6|Add7~11\,
	combout => \inst6|Add7~12_combout\);

-- Location: LCCOMB_X21_Y22_N6
\inst6|LessThan12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan12~1_cout\ = CARRY((!\inst6|pipe1_x_pos\(0) & \inst1|pixel_column\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe1_x_pos\(0),
	datab => \inst1|pixel_column\(0),
	datad => VCC,
	cout => \inst6|LessThan12~1_cout\);

-- Location: LCCOMB_X21_Y22_N8
\inst6|LessThan12~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan12~3_cout\ = CARRY((\inst6|pipe1_x_pos\(1) & ((!\inst6|LessThan12~1_cout\) # (!\inst1|pixel_column\(1)))) # (!\inst6|pipe1_x_pos\(1) & (!\inst1|pixel_column\(1) & !\inst6|LessThan12~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe1_x_pos\(1),
	datab => \inst1|pixel_column\(1),
	datad => VCC,
	cin => \inst6|LessThan12~1_cout\,
	cout => \inst6|LessThan12~3_cout\);

-- Location: LCCOMB_X21_Y22_N10
\inst6|LessThan12~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan12~5_cout\ = CARRY((\inst6|pipe1_x_pos\(2) & ((\inst1|pixel_column\(2)) # (!\inst6|LessThan12~3_cout\))) # (!\inst6|pipe1_x_pos\(2) & (\inst1|pixel_column\(2) & !\inst6|LessThan12~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe1_x_pos\(2),
	datab => \inst1|pixel_column\(2),
	datad => VCC,
	cin => \inst6|LessThan12~3_cout\,
	cout => \inst6|LessThan12~5_cout\);

-- Location: LCCOMB_X21_Y22_N12
\inst6|LessThan12~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan12~7_cout\ = CARRY((\inst1|pixel_column\(3) & (\inst6|Add7~0_combout\ & !\inst6|LessThan12~5_cout\)) # (!\inst1|pixel_column\(3) & ((\inst6|Add7~0_combout\) # (!\inst6|LessThan12~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(3),
	datab => \inst6|Add7~0_combout\,
	datad => VCC,
	cin => \inst6|LessThan12~5_cout\,
	cout => \inst6|LessThan12~7_cout\);

-- Location: LCCOMB_X21_Y22_N14
\inst6|LessThan12~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan12~9_cout\ = CARRY((\inst1|pixel_column\(4) & ((!\inst6|LessThan12~7_cout\) # (!\inst6|Add7~2_combout\))) # (!\inst1|pixel_column\(4) & (!\inst6|Add7~2_combout\ & !\inst6|LessThan12~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(4),
	datab => \inst6|Add7~2_combout\,
	datad => VCC,
	cin => \inst6|LessThan12~7_cout\,
	cout => \inst6|LessThan12~9_cout\);

-- Location: LCCOMB_X21_Y22_N16
\inst6|LessThan12~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan12~11_cout\ = CARRY((\inst1|pixel_column\(5) & (\inst6|Add7~4_combout\ & !\inst6|LessThan12~9_cout\)) # (!\inst1|pixel_column\(5) & ((\inst6|Add7~4_combout\) # (!\inst6|LessThan12~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(5),
	datab => \inst6|Add7~4_combout\,
	datad => VCC,
	cin => \inst6|LessThan12~9_cout\,
	cout => \inst6|LessThan12~11_cout\);

-- Location: LCCOMB_X21_Y22_N18
\inst6|LessThan12~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan12~13_cout\ = CARRY((\inst6|Add7~6_combout\ & (\inst1|pixel_column\(6) & !\inst6|LessThan12~11_cout\)) # (!\inst6|Add7~6_combout\ & ((\inst1|pixel_column\(6)) # (!\inst6|LessThan12~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add7~6_combout\,
	datab => \inst1|pixel_column\(6),
	datad => VCC,
	cin => \inst6|LessThan12~11_cout\,
	cout => \inst6|LessThan12~13_cout\);

-- Location: LCCOMB_X21_Y22_N20
\inst6|LessThan12~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan12~15_cout\ = CARRY((\inst1|pixel_column\(7) & (\inst6|Add7~8_combout\ & !\inst6|LessThan12~13_cout\)) # (!\inst1|pixel_column\(7) & ((\inst6|Add7~8_combout\) # (!\inst6|LessThan12~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(7),
	datab => \inst6|Add7~8_combout\,
	datad => VCC,
	cin => \inst6|LessThan12~13_cout\,
	cout => \inst6|LessThan12~15_cout\);

-- Location: LCCOMB_X21_Y22_N22
\inst6|LessThan12~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan12~17_cout\ = CARRY((\inst6|Add7~10_combout\ & (\inst1|pixel_column\(8) & !\inst6|LessThan12~15_cout\)) # (!\inst6|Add7~10_combout\ & ((\inst1|pixel_column\(8)) # (!\inst6|LessThan12~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add7~10_combout\,
	datab => \inst1|pixel_column\(8),
	datad => VCC,
	cin => \inst6|LessThan12~15_cout\,
	cout => \inst6|LessThan12~17_cout\);

-- Location: LCCOMB_X21_Y22_N24
\inst6|LessThan12~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan12~18_combout\ = (\inst1|pixel_column\(9) & ((\inst6|LessThan12~17_cout\) # (!\inst6|Add7~12_combout\))) # (!\inst1|pixel_column\(9) & (\inst6|LessThan12~17_cout\ & !\inst6|Add7~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(9),
	datad => \inst6|Add7~12_combout\,
	cin => \inst6|LessThan12~17_cout\,
	combout => \inst6|LessThan12~18_combout\);

-- Location: LCCOMB_X14_Y21_N0
\inst6|Add17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add17~0_combout\ = \inst1|pixel_row\(2) $ (VCC)
-- \inst6|Add17~1\ = CARRY(\inst1|pixel_row\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(2),
	datad => VCC,
	combout => \inst6|Add17~0_combout\,
	cout => \inst6|Add17~1\);

-- Location: LCCOMB_X14_Y21_N2
\inst6|Add17~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add17~2_combout\ = (\inst1|pixel_row\(3) & (!\inst6|Add17~1\)) # (!\inst1|pixel_row\(3) & ((\inst6|Add17~1\) # (GND)))
-- \inst6|Add17~3\ = CARRY((!\inst6|Add17~1\) # (!\inst1|pixel_row\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pixel_row\(3),
	datad => VCC,
	cin => \inst6|Add17~1\,
	combout => \inst6|Add17~2_combout\,
	cout => \inst6|Add17~3\);

-- Location: LCCOMB_X14_Y21_N4
\inst6|Add17~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add17~4_combout\ = (\inst1|pixel_row\(4) & ((GND) # (!\inst6|Add17~3\))) # (!\inst1|pixel_row\(4) & (\inst6|Add17~3\ $ (GND)))
-- \inst6|Add17~5\ = CARRY((\inst1|pixel_row\(4)) # (!\inst6|Add17~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(4),
	datad => VCC,
	cin => \inst6|Add17~3\,
	combout => \inst6|Add17~4_combout\,
	cout => \inst6|Add17~5\);

-- Location: LCCOMB_X14_Y21_N6
\inst6|Add17~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add17~6_combout\ = (\inst1|pixel_row\(5) & (!\inst6|Add17~5\)) # (!\inst1|pixel_row\(5) & ((\inst6|Add17~5\) # (GND)))
-- \inst6|Add17~7\ = CARRY((!\inst6|Add17~5\) # (!\inst1|pixel_row\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pixel_row\(5),
	datad => VCC,
	cin => \inst6|Add17~5\,
	combout => \inst6|Add17~6_combout\,
	cout => \inst6|Add17~7\);

-- Location: LCCOMB_X14_Y21_N8
\inst6|Add17~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add17~8_combout\ = (\inst1|pixel_row\(6) & (\inst6|Add17~7\ $ (GND))) # (!\inst1|pixel_row\(6) & (!\inst6|Add17~7\ & VCC))
-- \inst6|Add17~9\ = CARRY((\inst1|pixel_row\(6) & !\inst6|Add17~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pixel_row\(6),
	datad => VCC,
	cin => \inst6|Add17~7\,
	combout => \inst6|Add17~8_combout\,
	cout => \inst6|Add17~9\);

-- Location: LCCOMB_X14_Y21_N10
\inst6|Add17~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add17~10_combout\ = (\inst1|pixel_row\(7) & (!\inst6|Add17~9\)) # (!\inst1|pixel_row\(7) & ((\inst6|Add17~9\) # (GND)))
-- \inst6|Add17~11\ = CARRY((!\inst6|Add17~9\) # (!\inst1|pixel_row\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(7),
	datad => VCC,
	cin => \inst6|Add17~9\,
	combout => \inst6|Add17~10_combout\,
	cout => \inst6|Add17~11\);

-- Location: LCCOMB_X14_Y21_N12
\inst6|Add17~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add17~12_combout\ = (\inst1|pixel_row\(8) & (\inst6|Add17~11\ $ (GND))) # (!\inst1|pixel_row\(8) & (!\inst6|Add17~11\ & VCC))
-- \inst6|Add17~13\ = CARRY((\inst1|pixel_row\(8) & !\inst6|Add17~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(8),
	datad => VCC,
	cin => \inst6|Add17~11\,
	combout => \inst6|Add17~12_combout\,
	cout => \inst6|Add17~13\);

-- Location: LCCOMB_X15_Y21_N8
\inst6|LessThan26~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan26~1_cout\ = CARRY((!\inst6|pipe1_bottom_y_pos\(1) & !\inst1|pixel_row\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe1_bottom_y_pos\(1),
	datab => \inst1|pixel_row\(1),
	datad => VCC,
	cout => \inst6|LessThan26~1_cout\);

-- Location: LCCOMB_X15_Y21_N10
\inst6|LessThan26~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan26~3_cout\ = CARRY((\inst6|Add17~0_combout\ & ((\inst6|pipe1_bottom_y_pos\(2)) # (!\inst6|LessThan26~1_cout\))) # (!\inst6|Add17~0_combout\ & (\inst6|pipe1_bottom_y_pos\(2) & !\inst6|LessThan26~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add17~0_combout\,
	datab => \inst6|pipe1_bottom_y_pos\(2),
	datad => VCC,
	cin => \inst6|LessThan26~1_cout\,
	cout => \inst6|LessThan26~3_cout\);

-- Location: LCCOMB_X15_Y21_N12
\inst6|LessThan26~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan26~5_cout\ = CARRY((\inst6|Add17~2_combout\ & (!\inst6|pipe1_bottom_y_pos\(3) & !\inst6|LessThan26~3_cout\)) # (!\inst6|Add17~2_combout\ & ((!\inst6|LessThan26~3_cout\) # (!\inst6|pipe1_bottom_y_pos\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add17~2_combout\,
	datab => \inst6|pipe1_bottom_y_pos\(3),
	datad => VCC,
	cin => \inst6|LessThan26~3_cout\,
	cout => \inst6|LessThan26~5_cout\);

-- Location: LCCOMB_X15_Y21_N14
\inst6|LessThan26~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan26~7_cout\ = CARRY((\inst6|Add17~4_combout\ & ((\inst6|pipe1_bottom_y_pos\(4)) # (!\inst6|LessThan26~5_cout\))) # (!\inst6|Add17~4_combout\ & (\inst6|pipe1_bottom_y_pos\(4) & !\inst6|LessThan26~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add17~4_combout\,
	datab => \inst6|pipe1_bottom_y_pos\(4),
	datad => VCC,
	cin => \inst6|LessThan26~5_cout\,
	cout => \inst6|LessThan26~7_cout\);

-- Location: LCCOMB_X15_Y21_N16
\inst6|LessThan26~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan26~9_cout\ = CARRY((\inst6|Add17~6_combout\ & (\inst6|pipe1_bottom_y_pos\(5) & !\inst6|LessThan26~7_cout\)) # (!\inst6|Add17~6_combout\ & ((\inst6|pipe1_bottom_y_pos\(5)) # (!\inst6|LessThan26~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add17~6_combout\,
	datab => \inst6|pipe1_bottom_y_pos\(5),
	datad => VCC,
	cin => \inst6|LessThan26~7_cout\,
	cout => \inst6|LessThan26~9_cout\);

-- Location: LCCOMB_X15_Y21_N18
\inst6|LessThan26~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan26~11_cout\ = CARRY((\inst6|Add17~8_combout\ & ((\inst6|pipe1_bottom_y_pos\(6)) # (!\inst6|LessThan26~9_cout\))) # (!\inst6|Add17~8_combout\ & (\inst6|pipe1_bottom_y_pos\(6) & !\inst6|LessThan26~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add17~8_combout\,
	datab => \inst6|pipe1_bottom_y_pos\(6),
	datad => VCC,
	cin => \inst6|LessThan26~9_cout\,
	cout => \inst6|LessThan26~11_cout\);

-- Location: LCCOMB_X15_Y21_N20
\inst6|LessThan26~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan26~13_cout\ = CARRY((\inst6|Add17~10_combout\ & (\inst6|pipe1_bottom_y_pos\(7) & !\inst6|LessThan26~11_cout\)) # (!\inst6|Add17~10_combout\ & ((\inst6|pipe1_bottom_y_pos\(7)) # (!\inst6|LessThan26~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add17~10_combout\,
	datab => \inst6|pipe1_bottom_y_pos\(7),
	datad => VCC,
	cin => \inst6|LessThan26~11_cout\,
	cout => \inst6|LessThan26~13_cout\);

-- Location: LCCOMB_X15_Y21_N22
\inst6|LessThan26~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan26~14_combout\ = (\inst6|Add17~12_combout\ & (\inst6|LessThan26~13_cout\ & !\inst6|pipe1_bottom_y_pos\(8))) # (!\inst6|Add17~12_combout\ & ((\inst6|LessThan26~13_cout\) # (!\inst6|pipe1_bottom_y_pos\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add17~12_combout\,
	datad => \inst6|pipe1_bottom_y_pos\(8),
	cin => \inst6|LessThan26~13_cout\,
	combout => \inst6|LessThan26~14_combout\);

-- Location: LCCOMB_X15_Y22_N0
\inst6|Add8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add8~0_combout\ = (\inst6|pipe1_bottom_y_pos\(4) & (\inst6|pipe1_bottom_y_pos\(5) & VCC)) # (!\inst6|pipe1_bottom_y_pos\(4) & (\inst6|pipe1_bottom_y_pos\(5) $ (VCC)))
-- \inst6|Add8~1\ = CARRY((!\inst6|pipe1_bottom_y_pos\(4) & \inst6|pipe1_bottom_y_pos\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe1_bottom_y_pos\(4),
	datab => \inst6|pipe1_bottom_y_pos\(5),
	datad => VCC,
	combout => \inst6|Add8~0_combout\,
	cout => \inst6|Add8~1\);

-- Location: LCCOMB_X15_Y22_N2
\inst6|Add8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add8~2_combout\ = (\inst6|pipe1_bottom_y_pos\(1) & (\inst6|Add8~1\ & VCC)) # (!\inst6|pipe1_bottom_y_pos\(1) & (!\inst6|Add8~1\))
-- \inst6|Add8~3\ = CARRY((!\inst6|pipe1_bottom_y_pos\(1) & !\inst6|Add8~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe1_bottom_y_pos\(1),
	datad => VCC,
	cin => \inst6|Add8~1\,
	combout => \inst6|Add8~2_combout\,
	cout => \inst6|Add8~3\);

-- Location: LCCOMB_X15_Y22_N4
\inst6|Add8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add8~4_combout\ = (\inst6|pipe1_bottom_y_pos\(2) & (\inst6|Add8~3\ $ (GND))) # (!\inst6|pipe1_bottom_y_pos\(2) & (!\inst6|Add8~3\ & VCC))
-- \inst6|Add8~5\ = CARRY((\inst6|pipe1_bottom_y_pos\(2) & !\inst6|Add8~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe1_bottom_y_pos\(2),
	datad => VCC,
	cin => \inst6|Add8~3\,
	combout => \inst6|Add8~4_combout\,
	cout => \inst6|Add8~5\);

-- Location: LCCOMB_X15_Y22_N6
\inst6|Add8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add8~6_combout\ = (\inst6|pipe1_bottom_y_pos\(4) & ((\inst6|Add8~5\) # (GND))) # (!\inst6|pipe1_bottom_y_pos\(4) & (!\inst6|Add8~5\))
-- \inst6|Add8~7\ = CARRY((\inst6|pipe1_bottom_y_pos\(4)) # (!\inst6|Add8~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe1_bottom_y_pos\(4),
	datad => VCC,
	cin => \inst6|Add8~5\,
	combout => \inst6|Add8~6_combout\,
	cout => \inst6|Add8~7\);

-- Location: LCCOMB_X15_Y22_N8
\inst6|Add8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add8~8_combout\ = (\inst6|pipe1_top_y_pos\(7) & (!\inst6|Add8~7\ & VCC)) # (!\inst6|pipe1_top_y_pos\(7) & (\inst6|Add8~7\ $ (GND)))
-- \inst6|Add8~9\ = CARRY((!\inst6|pipe1_top_y_pos\(7) & !\inst6|Add8~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe1_top_y_pos\(7),
	datad => VCC,
	cin => \inst6|Add8~7\,
	combout => \inst6|Add8~8_combout\,
	cout => \inst6|Add8~9\);

-- Location: LCCOMB_X15_Y22_N10
\inst6|Add8~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add8~10_combout\ = (\inst6|pipe1_top_y_pos\(8) & (!\inst6|Add8~9\)) # (!\inst6|pipe1_top_y_pos\(8) & ((\inst6|Add8~9\) # (GND)))
-- \inst6|Add8~11\ = CARRY((!\inst6|Add8~9\) # (!\inst6|pipe1_top_y_pos\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe1_top_y_pos\(8),
	datad => VCC,
	cin => \inst6|Add8~9\,
	combout => \inst6|Add8~10_combout\,
	cout => \inst6|Add8~11\);

-- Location: LCCOMB_X15_Y22_N14
\inst6|LessThan13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan13~1_cout\ = CARRY(\inst1|pixel_row\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(0),
	datad => VCC,
	cout => \inst6|LessThan13~1_cout\);

-- Location: LCCOMB_X15_Y22_N16
\inst6|LessThan13~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan13~3_cout\ = CARRY((\inst6|pipe1_bottom_y_pos\(1) & ((!\inst6|LessThan13~1_cout\) # (!\inst1|pixel_row\(1)))) # (!\inst6|pipe1_bottom_y_pos\(1) & (!\inst1|pixel_row\(1) & !\inst6|LessThan13~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe1_bottom_y_pos\(1),
	datab => \inst1|pixel_row\(1),
	datad => VCC,
	cin => \inst6|LessThan13~1_cout\,
	cout => \inst6|LessThan13~3_cout\);

-- Location: LCCOMB_X15_Y22_N18
\inst6|LessThan13~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan13~5_cout\ = CARRY((\inst1|pixel_row\(2) & ((\inst6|pipe1_bottom_y_pos\(5)) # (!\inst6|LessThan13~3_cout\))) # (!\inst1|pixel_row\(2) & (\inst6|pipe1_bottom_y_pos\(5) & !\inst6|LessThan13~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(2),
	datab => \inst6|pipe1_bottom_y_pos\(5),
	datad => VCC,
	cin => \inst6|LessThan13~3_cout\,
	cout => \inst6|LessThan13~5_cout\);

-- Location: LCCOMB_X15_Y22_N20
\inst6|LessThan13~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan13~7_cout\ = CARRY((\inst1|pixel_row\(3) & (\inst6|Add8~0_combout\ & !\inst6|LessThan13~5_cout\)) # (!\inst1|pixel_row\(3) & ((\inst6|Add8~0_combout\) # (!\inst6|LessThan13~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(3),
	datab => \inst6|Add8~0_combout\,
	datad => VCC,
	cin => \inst6|LessThan13~5_cout\,
	cout => \inst6|LessThan13~7_cout\);

-- Location: LCCOMB_X15_Y22_N22
\inst6|LessThan13~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan13~9_cout\ = CARRY((\inst1|pixel_row\(4) & ((!\inst6|LessThan13~7_cout\) # (!\inst6|Add8~2_combout\))) # (!\inst1|pixel_row\(4) & (!\inst6|Add8~2_combout\ & !\inst6|LessThan13~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(4),
	datab => \inst6|Add8~2_combout\,
	datad => VCC,
	cin => \inst6|LessThan13~7_cout\,
	cout => \inst6|LessThan13~9_cout\);

-- Location: LCCOMB_X15_Y22_N24
\inst6|LessThan13~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan13~11_cout\ = CARRY((\inst1|pixel_row\(5) & (\inst6|Add8~4_combout\ & !\inst6|LessThan13~9_cout\)) # (!\inst1|pixel_row\(5) & ((\inst6|Add8~4_combout\) # (!\inst6|LessThan13~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(5),
	datab => \inst6|Add8~4_combout\,
	datad => VCC,
	cin => \inst6|LessThan13~9_cout\,
	cout => \inst6|LessThan13~11_cout\);

-- Location: LCCOMB_X15_Y22_N26
\inst6|LessThan13~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan13~13_cout\ = CARRY((\inst6|Add8~6_combout\ & (\inst1|pixel_row\(6) & !\inst6|LessThan13~11_cout\)) # (!\inst6|Add8~6_combout\ & ((\inst1|pixel_row\(6)) # (!\inst6|LessThan13~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add8~6_combout\,
	datab => \inst1|pixel_row\(6),
	datad => VCC,
	cin => \inst6|LessThan13~11_cout\,
	cout => \inst6|LessThan13~13_cout\);

-- Location: LCCOMB_X15_Y22_N28
\inst6|LessThan13~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan13~15_cout\ = CARRY((\inst1|pixel_row\(7) & (\inst6|Add8~8_combout\ & !\inst6|LessThan13~13_cout\)) # (!\inst1|pixel_row\(7) & ((\inst6|Add8~8_combout\) # (!\inst6|LessThan13~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(7),
	datab => \inst6|Add8~8_combout\,
	datad => VCC,
	cin => \inst6|LessThan13~13_cout\,
	cout => \inst6|LessThan13~15_cout\);

-- Location: LCCOMB_X15_Y22_N30
\inst6|LessThan13~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan13~16_combout\ = (\inst1|pixel_row\(8) & ((!\inst6|Add8~10_combout\) # (!\inst6|LessThan13~15_cout\))) # (!\inst1|pixel_row\(8) & (!\inst6|LessThan13~15_cout\ & !\inst6|Add8~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pixel_row\(8),
	datad => \inst6|Add8~10_combout\,
	cin => \inst6|LessThan13~15_cout\,
	combout => \inst6|LessThan13~16_combout\);

-- Location: LCCOMB_X14_Y21_N14
\inst6|Add17~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add17~14_combout\ = \inst6|Add17~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst6|Add17~13\,
	combout => \inst6|Add17~14_combout\);

-- Location: LCCOMB_X15_Y22_N12
\inst6|Add8~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add8~12_combout\ = !\inst6|Add8~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst6|Add8~11\,
	combout => \inst6|Add8~12_combout\);

-- Location: LCCOMB_X17_Y17_N8
\inst6|LessThan14~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan14~1_cout\ = CARRY((\inst6|pipe2_x_pos\(0) & !\inst1|pixel_column\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe2_x_pos\(0),
	datab => \inst1|pixel_column\(0),
	datad => VCC,
	cout => \inst6|LessThan14~1_cout\);

-- Location: LCCOMB_X17_Y17_N10
\inst6|LessThan14~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan14~3_cout\ = CARRY((\inst6|pipe2_x_pos\(1) & (\inst1|pixel_column\(1) & !\inst6|LessThan14~1_cout\)) # (!\inst6|pipe2_x_pos\(1) & ((\inst1|pixel_column\(1)) # (!\inst6|LessThan14~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe2_x_pos\(1),
	datab => \inst1|pixel_column\(1),
	datad => VCC,
	cin => \inst6|LessThan14~1_cout\,
	cout => \inst6|LessThan14~3_cout\);

-- Location: LCCOMB_X17_Y17_N12
\inst6|LessThan14~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan14~5_cout\ = CARRY((\inst6|Add6~0_combout\ & (\inst6|pipe2_x_pos\(2) & !\inst6|LessThan14~3_cout\)) # (!\inst6|Add6~0_combout\ & ((\inst6|pipe2_x_pos\(2)) # (!\inst6|LessThan14~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add6~0_combout\,
	datab => \inst6|pipe2_x_pos\(2),
	datad => VCC,
	cin => \inst6|LessThan14~3_cout\,
	cout => \inst6|LessThan14~5_cout\);

-- Location: LCCOMB_X17_Y17_N14
\inst6|LessThan14~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan14~7_cout\ = CARRY((\inst6|Add6~2_combout\ & ((\inst6|pipe2_x_pos\(3)) # (!\inst6|LessThan14~5_cout\))) # (!\inst6|Add6~2_combout\ & (\inst6|pipe2_x_pos\(3) & !\inst6|LessThan14~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add6~2_combout\,
	datab => \inst6|pipe2_x_pos\(3),
	datad => VCC,
	cin => \inst6|LessThan14~5_cout\,
	cout => \inst6|LessThan14~7_cout\);

-- Location: LCCOMB_X17_Y17_N16
\inst6|LessThan14~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan14~9_cout\ = CARRY((\inst6|pipe2_x_pos\(4) & ((!\inst6|LessThan14~7_cout\) # (!\inst6|Add6~4_combout\))) # (!\inst6|pipe2_x_pos\(4) & (!\inst6|Add6~4_combout\ & !\inst6|LessThan14~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe2_x_pos\(4),
	datab => \inst6|Add6~4_combout\,
	datad => VCC,
	cin => \inst6|LessThan14~7_cout\,
	cout => \inst6|LessThan14~9_cout\);

-- Location: LCCOMB_X17_Y17_N18
\inst6|LessThan14~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan14~11_cout\ = CARRY((\inst6|pipe2_x_pos\(5) & (\inst6|Add6~6_combout\ & !\inst6|LessThan14~9_cout\)) # (!\inst6|pipe2_x_pos\(5) & ((\inst6|Add6~6_combout\) # (!\inst6|LessThan14~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe2_x_pos\(5),
	datab => \inst6|Add6~6_combout\,
	datad => VCC,
	cin => \inst6|LessThan14~9_cout\,
	cout => \inst6|LessThan14~11_cout\);

-- Location: LCCOMB_X17_Y17_N20
\inst6|LessThan14~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan14~13_cout\ = CARRY((\inst6|Add6~8_combout\ & (!\inst6|pipe2_x_pos\(6) & !\inst6|LessThan14~11_cout\)) # (!\inst6|Add6~8_combout\ & ((!\inst6|LessThan14~11_cout\) # (!\inst6|pipe2_x_pos\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add6~8_combout\,
	datab => \inst6|pipe2_x_pos\(6),
	datad => VCC,
	cin => \inst6|LessThan14~11_cout\,
	cout => \inst6|LessThan14~13_cout\);

-- Location: LCCOMB_X17_Y17_N22
\inst6|LessThan14~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan14~15_cout\ = CARRY((\inst6|pipe2_x_pos\(7) & (\inst6|Add6~10_combout\ & !\inst6|LessThan14~13_cout\)) # (!\inst6|pipe2_x_pos\(7) & ((\inst6|Add6~10_combout\) # (!\inst6|LessThan14~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe2_x_pos\(7),
	datab => \inst6|Add6~10_combout\,
	datad => VCC,
	cin => \inst6|LessThan14~13_cout\,
	cout => \inst6|LessThan14~15_cout\);

-- Location: LCCOMB_X17_Y17_N24
\inst6|LessThan14~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan14~17_cout\ = CARRY((\inst6|pipe2_x_pos\(8) & (!\inst6|Add6~12_combout\ & !\inst6|LessThan14~15_cout\)) # (!\inst6|pipe2_x_pos\(8) & ((!\inst6|LessThan14~15_cout\) # (!\inst6|Add6~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe2_x_pos\(8),
	datab => \inst6|Add6~12_combout\,
	datad => VCC,
	cin => \inst6|LessThan14~15_cout\,
	cout => \inst6|LessThan14~17_cout\);

-- Location: LCCOMB_X17_Y17_N26
\inst6|LessThan14~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan14~18_combout\ = (\inst6|pipe2_x_pos\(9) & (\inst6|LessThan14~17_cout\ & !\inst6|Add6~14_combout\)) # (!\inst6|pipe2_x_pos\(9) & ((\inst6|LessThan14~17_cout\) # (!\inst6|Add6~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe2_x_pos\(9),
	datad => \inst6|Add6~14_combout\,
	cin => \inst6|LessThan14~17_cout\,
	combout => \inst6|LessThan14~18_combout\);

-- Location: LCCOMB_X19_Y17_N14
\inst6|Add9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add9~0_combout\ = (\inst6|pipe2_x_pos\(3) & (\inst6|pipe2_x_pos\(2) & VCC)) # (!\inst6|pipe2_x_pos\(3) & (\inst6|pipe2_x_pos\(2) $ (VCC)))
-- \inst6|Add9~1\ = CARRY((!\inst6|pipe2_x_pos\(3) & \inst6|pipe2_x_pos\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe2_x_pos\(3),
	datab => \inst6|pipe2_x_pos\(2),
	datad => VCC,
	combout => \inst6|Add9~0_combout\,
	cout => \inst6|Add9~1\);

-- Location: LCCOMB_X19_Y17_N16
\inst6|Add9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add9~2_combout\ = (\inst6|pipe2_x_pos\(4) & (\inst6|Add9~1\ & VCC)) # (!\inst6|pipe2_x_pos\(4) & (!\inst6|Add9~1\))
-- \inst6|Add9~3\ = CARRY((!\inst6|pipe2_x_pos\(4) & !\inst6|Add9~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe2_x_pos\(4),
	datad => VCC,
	cin => \inst6|Add9~1\,
	combout => \inst6|Add9~2_combout\,
	cout => \inst6|Add9~3\);

-- Location: LCCOMB_X19_Y17_N18
\inst6|Add9~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add9~4_combout\ = (\inst6|pipe2_x_pos\(5) & (\inst6|Add9~3\ $ (GND))) # (!\inst6|pipe2_x_pos\(5) & (!\inst6|Add9~3\ & VCC))
-- \inst6|Add9~5\ = CARRY((\inst6|pipe2_x_pos\(5) & !\inst6|Add9~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe2_x_pos\(5),
	datad => VCC,
	cin => \inst6|Add9~3\,
	combout => \inst6|Add9~4_combout\,
	cout => \inst6|Add9~5\);

-- Location: LCCOMB_X19_Y17_N20
\inst6|Add9~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add9~6_combout\ = (\inst6|pipe2_x_pos\(6) & ((\inst6|Add9~5\) # (GND))) # (!\inst6|pipe2_x_pos\(6) & (!\inst6|Add9~5\))
-- \inst6|Add9~7\ = CARRY((\inst6|pipe2_x_pos\(6)) # (!\inst6|Add9~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe2_x_pos\(6),
	datad => VCC,
	cin => \inst6|Add9~5\,
	combout => \inst6|Add9~6_combout\,
	cout => \inst6|Add9~7\);

-- Location: LCCOMB_X19_Y17_N22
\inst6|Add9~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add9~8_combout\ = (\inst6|pipe2_x_pos\(7) & (\inst6|Add9~7\ $ (GND))) # (!\inst6|pipe2_x_pos\(7) & (!\inst6|Add9~7\ & VCC))
-- \inst6|Add9~9\ = CARRY((\inst6|pipe2_x_pos\(7) & !\inst6|Add9~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe2_x_pos\(7),
	datad => VCC,
	cin => \inst6|Add9~7\,
	combout => \inst6|Add9~8_combout\,
	cout => \inst6|Add9~9\);

-- Location: LCCOMB_X19_Y17_N24
\inst6|Add9~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add9~10_combout\ = (\inst6|pipe2_x_pos\(8) & ((\inst6|Add9~9\) # (GND))) # (!\inst6|pipe2_x_pos\(8) & (!\inst6|Add9~9\))
-- \inst6|Add9~11\ = CARRY((\inst6|pipe2_x_pos\(8)) # (!\inst6|Add9~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe2_x_pos\(8),
	datad => VCC,
	cin => \inst6|Add9~9\,
	combout => \inst6|Add9~10_combout\,
	cout => \inst6|Add9~11\);

-- Location: LCCOMB_X19_Y17_N26
\inst6|Add9~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add9~12_combout\ = \inst6|Add9~11\ $ (\inst6|pipe2_x_pos\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst6|pipe2_x_pos\(9),
	cin => \inst6|Add9~11\,
	combout => \inst6|Add9~12_combout\);

-- Location: LCCOMB_X20_Y17_N4
\inst6|LessThan15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan15~1_cout\ = CARRY((!\inst6|pipe2_x_pos\(0) & \inst1|pixel_column\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe2_x_pos\(0),
	datab => \inst1|pixel_column\(0),
	datad => VCC,
	cout => \inst6|LessThan15~1_cout\);

-- Location: LCCOMB_X20_Y17_N6
\inst6|LessThan15~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan15~3_cout\ = CARRY((\inst6|pipe2_x_pos\(1) & ((!\inst6|LessThan15~1_cout\) # (!\inst1|pixel_column\(1)))) # (!\inst6|pipe2_x_pos\(1) & (!\inst1|pixel_column\(1) & !\inst6|LessThan15~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe2_x_pos\(1),
	datab => \inst1|pixel_column\(1),
	datad => VCC,
	cin => \inst6|LessThan15~1_cout\,
	cout => \inst6|LessThan15~3_cout\);

-- Location: LCCOMB_X20_Y17_N8
\inst6|LessThan15~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan15~5_cout\ = CARRY((\inst1|pixel_column\(2) & ((\inst6|pipe2_x_pos\(2)) # (!\inst6|LessThan15~3_cout\))) # (!\inst1|pixel_column\(2) & (\inst6|pipe2_x_pos\(2) & !\inst6|LessThan15~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(2),
	datab => \inst6|pipe2_x_pos\(2),
	datad => VCC,
	cin => \inst6|LessThan15~3_cout\,
	cout => \inst6|LessThan15~5_cout\);

-- Location: LCCOMB_X20_Y17_N10
\inst6|LessThan15~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan15~7_cout\ = CARRY((\inst6|Add9~0_combout\ & ((!\inst6|LessThan15~5_cout\) # (!\inst1|pixel_column\(3)))) # (!\inst6|Add9~0_combout\ & (!\inst1|pixel_column\(3) & !\inst6|LessThan15~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add9~0_combout\,
	datab => \inst1|pixel_column\(3),
	datad => VCC,
	cin => \inst6|LessThan15~5_cout\,
	cout => \inst6|LessThan15~7_cout\);

-- Location: LCCOMB_X20_Y17_N12
\inst6|LessThan15~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan15~9_cout\ = CARRY((\inst6|Add9~2_combout\ & (\inst1|pixel_column\(4) & !\inst6|LessThan15~7_cout\)) # (!\inst6|Add9~2_combout\ & ((\inst1|pixel_column\(4)) # (!\inst6|LessThan15~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add9~2_combout\,
	datab => \inst1|pixel_column\(4),
	datad => VCC,
	cin => \inst6|LessThan15~7_cout\,
	cout => \inst6|LessThan15~9_cout\);

-- Location: LCCOMB_X20_Y17_N14
\inst6|LessThan15~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan15~11_cout\ = CARRY((\inst1|pixel_column\(5) & (\inst6|Add9~4_combout\ & !\inst6|LessThan15~9_cout\)) # (!\inst1|pixel_column\(5) & ((\inst6|Add9~4_combout\) # (!\inst6|LessThan15~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(5),
	datab => \inst6|Add9~4_combout\,
	datad => VCC,
	cin => \inst6|LessThan15~9_cout\,
	cout => \inst6|LessThan15~11_cout\);

-- Location: LCCOMB_X20_Y17_N16
\inst6|LessThan15~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan15~13_cout\ = CARRY((\inst1|pixel_column\(6) & ((!\inst6|LessThan15~11_cout\) # (!\inst6|Add9~6_combout\))) # (!\inst1|pixel_column\(6) & (!\inst6|Add9~6_combout\ & !\inst6|LessThan15~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(6),
	datab => \inst6|Add9~6_combout\,
	datad => VCC,
	cin => \inst6|LessThan15~11_cout\,
	cout => \inst6|LessThan15~13_cout\);

-- Location: LCCOMB_X20_Y17_N18
\inst6|LessThan15~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan15~15_cout\ = CARRY((\inst1|pixel_column\(7) & (\inst6|Add9~8_combout\ & !\inst6|LessThan15~13_cout\)) # (!\inst1|pixel_column\(7) & ((\inst6|Add9~8_combout\) # (!\inst6|LessThan15~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(7),
	datab => \inst6|Add9~8_combout\,
	datad => VCC,
	cin => \inst6|LessThan15~13_cout\,
	cout => \inst6|LessThan15~15_cout\);

-- Location: LCCOMB_X20_Y17_N20
\inst6|LessThan15~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan15~17_cout\ = CARRY((\inst6|Add9~10_combout\ & (\inst1|pixel_column\(8) & !\inst6|LessThan15~15_cout\)) # (!\inst6|Add9~10_combout\ & ((\inst1|pixel_column\(8)) # (!\inst6|LessThan15~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add9~10_combout\,
	datab => \inst1|pixel_column\(8),
	datad => VCC,
	cin => \inst6|LessThan15~15_cout\,
	cout => \inst6|LessThan15~17_cout\);

-- Location: LCCOMB_X20_Y17_N22
\inst6|LessThan15~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan15~18_combout\ = (\inst1|pixel_column\(9) & ((\inst6|LessThan15~17_cout\) # (!\inst6|Add9~12_combout\))) # (!\inst1|pixel_column\(9) & (\inst6|LessThan15~17_cout\ & !\inst6|Add9~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pixel_column\(9),
	datad => \inst6|Add9~12_combout\,
	cin => \inst6|LessThan15~17_cout\,
	combout => \inst6|LessThan15~18_combout\);

-- Location: LCCOMB_X14_Y20_N0
\inst6|LessThan27~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan27~1_cout\ = CARRY((!\inst1|pixel_row\(1) & !\inst6|pipe2_bottom_y_pos\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(1),
	datab => \inst6|pipe2_bottom_y_pos\(1),
	datad => VCC,
	cout => \inst6|LessThan27~1_cout\);

-- Location: LCCOMB_X14_Y20_N2
\inst6|LessThan27~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan27~3_cout\ = CARRY((\inst6|Add17~0_combout\ & ((\inst6|pipe2_bottom_y_pos\(2)) # (!\inst6|LessThan27~1_cout\))) # (!\inst6|Add17~0_combout\ & (\inst6|pipe2_bottom_y_pos\(2) & !\inst6|LessThan27~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add17~0_combout\,
	datab => \inst6|pipe2_bottom_y_pos\(2),
	datad => VCC,
	cin => \inst6|LessThan27~1_cout\,
	cout => \inst6|LessThan27~3_cout\);

-- Location: LCCOMB_X14_Y20_N4
\inst6|LessThan27~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan27~5_cout\ = CARRY((\inst6|pipe2_bottom_y_pos\(3) & (!\inst6|Add17~2_combout\ & !\inst6|LessThan27~3_cout\)) # (!\inst6|pipe2_bottom_y_pos\(3) & ((!\inst6|LessThan27~3_cout\) # (!\inst6|Add17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe2_bottom_y_pos\(3),
	datab => \inst6|Add17~2_combout\,
	datad => VCC,
	cin => \inst6|LessThan27~3_cout\,
	cout => \inst6|LessThan27~5_cout\);

-- Location: LCCOMB_X14_Y20_N6
\inst6|LessThan27~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan27~7_cout\ = CARRY((\inst6|Add17~4_combout\ & ((\inst6|pipe2_bottom_y_pos\(4)) # (!\inst6|LessThan27~5_cout\))) # (!\inst6|Add17~4_combout\ & (\inst6|pipe2_bottom_y_pos\(4) & !\inst6|LessThan27~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add17~4_combout\,
	datab => \inst6|pipe2_bottom_y_pos\(4),
	datad => VCC,
	cin => \inst6|LessThan27~5_cout\,
	cout => \inst6|LessThan27~7_cout\);

-- Location: LCCOMB_X14_Y20_N8
\inst6|LessThan27~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan27~9_cout\ = CARRY((\inst6|Add17~6_combout\ & (\inst6|pipe2_bottom_y_pos\(5) & !\inst6|LessThan27~7_cout\)) # (!\inst6|Add17~6_combout\ & ((\inst6|pipe2_bottom_y_pos\(5)) # (!\inst6|LessThan27~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add17~6_combout\,
	datab => \inst6|pipe2_bottom_y_pos\(5),
	datad => VCC,
	cin => \inst6|LessThan27~7_cout\,
	cout => \inst6|LessThan27~9_cout\);

-- Location: LCCOMB_X14_Y20_N10
\inst6|LessThan27~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan27~11_cout\ = CARRY((\inst6|Add17~8_combout\ & ((\inst6|pipe2_bottom_y_pos\(6)) # (!\inst6|LessThan27~9_cout\))) # (!\inst6|Add17~8_combout\ & (\inst6|pipe2_bottom_y_pos\(6) & !\inst6|LessThan27~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add17~8_combout\,
	datab => \inst6|pipe2_bottom_y_pos\(6),
	datad => VCC,
	cin => \inst6|LessThan27~9_cout\,
	cout => \inst6|LessThan27~11_cout\);

-- Location: LCCOMB_X14_Y20_N12
\inst6|LessThan27~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan27~13_cout\ = CARRY((\inst6|pipe2_bottom_y_pos\(7) & ((!\inst6|LessThan27~11_cout\) # (!\inst6|Add17~10_combout\))) # (!\inst6|pipe2_bottom_y_pos\(7) & (!\inst6|Add17~10_combout\ & !\inst6|LessThan27~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe2_bottom_y_pos\(7),
	datab => \inst6|Add17~10_combout\,
	datad => VCC,
	cin => \inst6|LessThan27~11_cout\,
	cout => \inst6|LessThan27~13_cout\);

-- Location: LCCOMB_X14_Y20_N14
\inst6|LessThan27~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan27~14_combout\ = (\inst6|Add17~12_combout\ & (!\inst6|pipe2_bottom_y_pos\(8) & \inst6|LessThan27~13_cout\)) # (!\inst6|Add17~12_combout\ & ((\inst6|LessThan27~13_cout\) # (!\inst6|pipe2_bottom_y_pos\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101110001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add17~12_combout\,
	datab => \inst6|pipe2_bottom_y_pos\(8),
	cin => \inst6|LessThan27~13_cout\,
	combout => \inst6|LessThan27~14_combout\);

-- Location: LCCOMB_X15_Y24_N0
\inst6|Add10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add10~0_combout\ = (\inst6|pipe2_bottom_y_pos\(4) & (\inst6|pipe2_bottom_y_pos\(5) & VCC)) # (!\inst6|pipe2_bottom_y_pos\(4) & (\inst6|pipe2_bottom_y_pos\(5) $ (VCC)))
-- \inst6|Add10~1\ = CARRY((!\inst6|pipe2_bottom_y_pos\(4) & \inst6|pipe2_bottom_y_pos\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe2_bottom_y_pos\(4),
	datab => \inst6|pipe2_bottom_y_pos\(5),
	datad => VCC,
	combout => \inst6|Add10~0_combout\,
	cout => \inst6|Add10~1\);

-- Location: LCCOMB_X15_Y24_N2
\inst6|Add10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add10~2_combout\ = (\inst6|pipe2_bottom_y_pos\(1) & (\inst6|Add10~1\ & VCC)) # (!\inst6|pipe2_bottom_y_pos\(1) & (!\inst6|Add10~1\))
-- \inst6|Add10~3\ = CARRY((!\inst6|pipe2_bottom_y_pos\(1) & !\inst6|Add10~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe2_bottom_y_pos\(1),
	datad => VCC,
	cin => \inst6|Add10~1\,
	combout => \inst6|Add10~2_combout\,
	cout => \inst6|Add10~3\);

-- Location: LCCOMB_X15_Y24_N4
\inst6|Add10~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add10~4_combout\ = (\inst6|pipe2_bottom_y_pos\(2) & (\inst6|Add10~3\ $ (GND))) # (!\inst6|pipe2_bottom_y_pos\(2) & (!\inst6|Add10~3\ & VCC))
-- \inst6|Add10~5\ = CARRY((\inst6|pipe2_bottom_y_pos\(2) & !\inst6|Add10~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe2_bottom_y_pos\(2),
	datad => VCC,
	cin => \inst6|Add10~3\,
	combout => \inst6|Add10~4_combout\,
	cout => \inst6|Add10~5\);

-- Location: LCCOMB_X15_Y24_N6
\inst6|Add10~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add10~6_combout\ = (\inst6|pipe2_bottom_y_pos\(4) & ((\inst6|Add10~5\) # (GND))) # (!\inst6|pipe2_bottom_y_pos\(4) & (!\inst6|Add10~5\))
-- \inst6|Add10~7\ = CARRY((\inst6|pipe2_bottom_y_pos\(4)) # (!\inst6|Add10~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe2_bottom_y_pos\(4),
	datad => VCC,
	cin => \inst6|Add10~5\,
	combout => \inst6|Add10~6_combout\,
	cout => \inst6|Add10~7\);

-- Location: LCCOMB_X15_Y24_N8
\inst6|Add10~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add10~8_combout\ = (\inst6|pipe2_top_y_pos\(7) & (!\inst6|Add10~7\ & VCC)) # (!\inst6|pipe2_top_y_pos\(7) & (\inst6|Add10~7\ $ (GND)))
-- \inst6|Add10~9\ = CARRY((!\inst6|pipe2_top_y_pos\(7) & !\inst6|Add10~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe2_top_y_pos\(7),
	datad => VCC,
	cin => \inst6|Add10~7\,
	combout => \inst6|Add10~8_combout\,
	cout => \inst6|Add10~9\);

-- Location: LCCOMB_X15_Y24_N10
\inst6|Add10~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add10~10_combout\ = (\inst6|pipe2_top_y_pos\(8) & (!\inst6|Add10~9\)) # (!\inst6|pipe2_top_y_pos\(8) & ((\inst6|Add10~9\) # (GND)))
-- \inst6|Add10~11\ = CARRY((!\inst6|Add10~9\) # (!\inst6|pipe2_top_y_pos\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe2_top_y_pos\(8),
	datad => VCC,
	cin => \inst6|Add10~9\,
	combout => \inst6|Add10~10_combout\,
	cout => \inst6|Add10~11\);

-- Location: LCCOMB_X15_Y24_N14
\inst6|LessThan16~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan16~1_cout\ = CARRY(\inst1|pixel_row\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pixel_row\(0),
	datad => VCC,
	cout => \inst6|LessThan16~1_cout\);

-- Location: LCCOMB_X15_Y24_N16
\inst6|LessThan16~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan16~3_cout\ = CARRY((\inst1|pixel_row\(1) & (\inst6|pipe2_bottom_y_pos\(1) & !\inst6|LessThan16~1_cout\)) # (!\inst1|pixel_row\(1) & ((\inst6|pipe2_bottom_y_pos\(1)) # (!\inst6|LessThan16~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(1),
	datab => \inst6|pipe2_bottom_y_pos\(1),
	datad => VCC,
	cin => \inst6|LessThan16~1_cout\,
	cout => \inst6|LessThan16~3_cout\);

-- Location: LCCOMB_X15_Y24_N18
\inst6|LessThan16~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan16~5_cout\ = CARRY((\inst1|pixel_row\(2) & ((\inst6|pipe2_bottom_y_pos\(5)) # (!\inst6|LessThan16~3_cout\))) # (!\inst1|pixel_row\(2) & (\inst6|pipe2_bottom_y_pos\(5) & !\inst6|LessThan16~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(2),
	datab => \inst6|pipe2_bottom_y_pos\(5),
	datad => VCC,
	cin => \inst6|LessThan16~3_cout\,
	cout => \inst6|LessThan16~5_cout\);

-- Location: LCCOMB_X15_Y24_N20
\inst6|LessThan16~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan16~7_cout\ = CARRY((\inst1|pixel_row\(3) & (\inst6|Add10~0_combout\ & !\inst6|LessThan16~5_cout\)) # (!\inst1|pixel_row\(3) & ((\inst6|Add10~0_combout\) # (!\inst6|LessThan16~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(3),
	datab => \inst6|Add10~0_combout\,
	datad => VCC,
	cin => \inst6|LessThan16~5_cout\,
	cout => \inst6|LessThan16~7_cout\);

-- Location: LCCOMB_X15_Y24_N22
\inst6|LessThan16~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan16~9_cout\ = CARRY((\inst1|pixel_row\(4) & ((!\inst6|LessThan16~7_cout\) # (!\inst6|Add10~2_combout\))) # (!\inst1|pixel_row\(4) & (!\inst6|Add10~2_combout\ & !\inst6|LessThan16~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(4),
	datab => \inst6|Add10~2_combout\,
	datad => VCC,
	cin => \inst6|LessThan16~7_cout\,
	cout => \inst6|LessThan16~9_cout\);

-- Location: LCCOMB_X15_Y24_N24
\inst6|LessThan16~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan16~11_cout\ = CARRY((\inst6|Add10~4_combout\ & ((!\inst6|LessThan16~9_cout\) # (!\inst1|pixel_row\(5)))) # (!\inst6|Add10~4_combout\ & (!\inst1|pixel_row\(5) & !\inst6|LessThan16~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add10~4_combout\,
	datab => \inst1|pixel_row\(5),
	datad => VCC,
	cin => \inst6|LessThan16~9_cout\,
	cout => \inst6|LessThan16~11_cout\);

-- Location: LCCOMB_X15_Y24_N26
\inst6|LessThan16~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan16~13_cout\ = CARRY((\inst6|Add10~6_combout\ & (\inst1|pixel_row\(6) & !\inst6|LessThan16~11_cout\)) # (!\inst6|Add10~6_combout\ & ((\inst1|pixel_row\(6)) # (!\inst6|LessThan16~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add10~6_combout\,
	datab => \inst1|pixel_row\(6),
	datad => VCC,
	cin => \inst6|LessThan16~11_cout\,
	cout => \inst6|LessThan16~13_cout\);

-- Location: LCCOMB_X15_Y24_N28
\inst6|LessThan16~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan16~15_cout\ = CARRY((\inst1|pixel_row\(7) & (\inst6|Add10~8_combout\ & !\inst6|LessThan16~13_cout\)) # (!\inst1|pixel_row\(7) & ((\inst6|Add10~8_combout\) # (!\inst6|LessThan16~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(7),
	datab => \inst6|Add10~8_combout\,
	datad => VCC,
	cin => \inst6|LessThan16~13_cout\,
	cout => \inst6|LessThan16~15_cout\);

-- Location: LCCOMB_X15_Y24_N30
\inst6|LessThan16~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan16~16_combout\ = (\inst1|pixel_row\(8) & ((!\inst6|Add10~10_combout\) # (!\inst6|LessThan16~15_cout\))) # (!\inst1|pixel_row\(8) & (!\inst6|LessThan16~15_cout\ & !\inst6|Add10~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(8),
	datad => \inst6|Add10~10_combout\,
	cin => \inst6|LessThan16~15_cout\,
	combout => \inst6|LessThan16~16_combout\);

-- Location: LCCOMB_X15_Y24_N12
\inst6|Add10~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add10~12_combout\ = !\inst6|Add10~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst6|Add10~11\,
	combout => \inst6|Add10~12_combout\);

-- Location: LCCOMB_X20_Y24_N12
\inst6|LessThan17~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan17~1_cout\ = CARRY((!\inst1|pixel_column\(0) & \inst6|pipe3_x_pos\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(0),
	datab => \inst6|pipe3_x_pos\(0),
	datad => VCC,
	cout => \inst6|LessThan17~1_cout\);

-- Location: LCCOMB_X20_Y24_N14
\inst6|LessThan17~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan17~3_cout\ = CARRY((\inst6|pipe3_x_pos\(1) & (\inst1|pixel_column\(1) & !\inst6|LessThan17~1_cout\)) # (!\inst6|pipe3_x_pos\(1) & ((\inst1|pixel_column\(1)) # (!\inst6|LessThan17~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe3_x_pos\(1),
	datab => \inst1|pixel_column\(1),
	datad => VCC,
	cin => \inst6|LessThan17~1_cout\,
	cout => \inst6|LessThan17~3_cout\);

-- Location: LCCOMB_X20_Y24_N16
\inst6|LessThan17~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan17~5_cout\ = CARRY((\inst6|pipe3_x_pos\(2) & ((!\inst6|LessThan17~3_cout\) # (!\inst6|Add6~0_combout\))) # (!\inst6|pipe3_x_pos\(2) & (!\inst6|Add6~0_combout\ & !\inst6|LessThan17~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe3_x_pos\(2),
	datab => \inst6|Add6~0_combout\,
	datad => VCC,
	cin => \inst6|LessThan17~3_cout\,
	cout => \inst6|LessThan17~5_cout\);

-- Location: LCCOMB_X20_Y24_N18
\inst6|LessThan17~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan17~7_cout\ = CARRY((\inst6|Add6~2_combout\ & ((!\inst6|LessThan17~5_cout\) # (!\inst6|pipe3_x_pos\(3)))) # (!\inst6|Add6~2_combout\ & (!\inst6|pipe3_x_pos\(3) & !\inst6|LessThan17~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add6~2_combout\,
	datab => \inst6|pipe3_x_pos\(3),
	datad => VCC,
	cin => \inst6|LessThan17~5_cout\,
	cout => \inst6|LessThan17~7_cout\);

-- Location: LCCOMB_X20_Y24_N20
\inst6|LessThan17~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan17~9_cout\ = CARRY((\inst6|pipe3_x_pos\(4) & (!\inst6|Add6~4_combout\ & !\inst6|LessThan17~7_cout\)) # (!\inst6|pipe3_x_pos\(4) & ((!\inst6|LessThan17~7_cout\) # (!\inst6|Add6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe3_x_pos\(4),
	datab => \inst6|Add6~4_combout\,
	datad => VCC,
	cin => \inst6|LessThan17~7_cout\,
	cout => \inst6|LessThan17~9_cout\);

-- Location: LCCOMB_X20_Y24_N22
\inst6|LessThan17~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan17~11_cout\ = CARRY((\inst6|Add6~6_combout\ & ((!\inst6|LessThan17~9_cout\) # (!\inst6|pipe3_x_pos\(5)))) # (!\inst6|Add6~6_combout\ & (!\inst6|pipe3_x_pos\(5) & !\inst6|LessThan17~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add6~6_combout\,
	datab => \inst6|pipe3_x_pos\(5),
	datad => VCC,
	cin => \inst6|LessThan17~9_cout\,
	cout => \inst6|LessThan17~11_cout\);

-- Location: LCCOMB_X20_Y24_N24
\inst6|LessThan17~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan17~13_cout\ = CARRY((\inst6|pipe3_x_pos\(6) & ((!\inst6|LessThan17~11_cout\) # (!\inst6|Add6~8_combout\))) # (!\inst6|pipe3_x_pos\(6) & (!\inst6|Add6~8_combout\ & !\inst6|LessThan17~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe3_x_pos\(6),
	datab => \inst6|Add6~8_combout\,
	datad => VCC,
	cin => \inst6|LessThan17~11_cout\,
	cout => \inst6|LessThan17~13_cout\);

-- Location: LCCOMB_X20_Y24_N26
\inst6|LessThan17~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan17~15_cout\ = CARRY((\inst6|Add6~10_combout\ & ((!\inst6|LessThan17~13_cout\) # (!\inst6|pipe3_x_pos\(7)))) # (!\inst6|Add6~10_combout\ & (!\inst6|pipe3_x_pos\(7) & !\inst6|LessThan17~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add6~10_combout\,
	datab => \inst6|pipe3_x_pos\(7),
	datad => VCC,
	cin => \inst6|LessThan17~13_cout\,
	cout => \inst6|LessThan17~15_cout\);

-- Location: LCCOMB_X20_Y24_N28
\inst6|LessThan17~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan17~17_cout\ = CARRY((\inst6|Add6~12_combout\ & (\inst6|pipe3_x_pos\(8) & !\inst6|LessThan17~15_cout\)) # (!\inst6|Add6~12_combout\ & ((\inst6|pipe3_x_pos\(8)) # (!\inst6|LessThan17~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add6~12_combout\,
	datab => \inst6|pipe3_x_pos\(8),
	datad => VCC,
	cin => \inst6|LessThan17~15_cout\,
	cout => \inst6|LessThan17~17_cout\);

-- Location: LCCOMB_X20_Y24_N30
\inst6|LessThan17~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan17~18_combout\ = (\inst6|pipe3_x_pos\(9) & ((\inst6|LessThan17~17_cout\) # (!\inst6|Add6~14_combout\))) # (!\inst6|pipe3_x_pos\(9) & (\inst6|LessThan17~17_cout\ & !\inst6|Add6~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe3_x_pos\(9),
	datad => \inst6|Add6~14_combout\,
	cin => \inst6|LessThan17~17_cout\,
	combout => \inst6|LessThan17~18_combout\);

-- Location: LCCOMB_X19_Y23_N6
\inst6|Add11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add11~0_combout\ = (\inst6|pipe3_x_pos\(3) & (\inst6|pipe3_x_pos\(2) $ (VCC))) # (!\inst6|pipe3_x_pos\(3) & (\inst6|pipe3_x_pos\(2) & VCC))
-- \inst6|Add11~1\ = CARRY((\inst6|pipe3_x_pos\(3) & \inst6|pipe3_x_pos\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe3_x_pos\(3),
	datab => \inst6|pipe3_x_pos\(2),
	datad => VCC,
	combout => \inst6|Add11~0_combout\,
	cout => \inst6|Add11~1\);

-- Location: LCCOMB_X19_Y23_N8
\inst6|Add11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add11~2_combout\ = (\inst6|pipe3_x_pos\(4) & (!\inst6|Add11~1\)) # (!\inst6|pipe3_x_pos\(4) & (\inst6|Add11~1\ & VCC))
-- \inst6|Add11~3\ = CARRY((\inst6|pipe3_x_pos\(4) & !\inst6|Add11~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe3_x_pos\(4),
	datad => VCC,
	cin => \inst6|Add11~1\,
	combout => \inst6|Add11~2_combout\,
	cout => \inst6|Add11~3\);

-- Location: LCCOMB_X19_Y23_N10
\inst6|Add11~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add11~4_combout\ = (\inst6|pipe3_x_pos\(5) & (\inst6|Add11~3\ $ (GND))) # (!\inst6|pipe3_x_pos\(5) & (!\inst6|Add11~3\ & VCC))
-- \inst6|Add11~5\ = CARRY((\inst6|pipe3_x_pos\(5) & !\inst6|Add11~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe3_x_pos\(5),
	datad => VCC,
	cin => \inst6|Add11~3\,
	combout => \inst6|Add11~4_combout\,
	cout => \inst6|Add11~5\);

-- Location: LCCOMB_X19_Y23_N12
\inst6|Add11~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add11~6_combout\ = (\inst6|pipe3_x_pos\(6) & (!\inst6|Add11~5\)) # (!\inst6|pipe3_x_pos\(6) & ((\inst6|Add11~5\) # (GND)))
-- \inst6|Add11~7\ = CARRY((!\inst6|Add11~5\) # (!\inst6|pipe3_x_pos\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe3_x_pos\(6),
	datad => VCC,
	cin => \inst6|Add11~5\,
	combout => \inst6|Add11~6_combout\,
	cout => \inst6|Add11~7\);

-- Location: LCCOMB_X19_Y23_N14
\inst6|Add11~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add11~8_combout\ = (\inst6|pipe3_x_pos\(7) & (\inst6|Add11~7\ $ (GND))) # (!\inst6|pipe3_x_pos\(7) & (!\inst6|Add11~7\ & VCC))
-- \inst6|Add11~9\ = CARRY((\inst6|pipe3_x_pos\(7) & !\inst6|Add11~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe3_x_pos\(7),
	datad => VCC,
	cin => \inst6|Add11~7\,
	combout => \inst6|Add11~8_combout\,
	cout => \inst6|Add11~9\);

-- Location: LCCOMB_X19_Y23_N16
\inst6|Add11~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add11~10_combout\ = (\inst6|pipe3_x_pos\(8) & (!\inst6|Add11~9\)) # (!\inst6|pipe3_x_pos\(8) & ((\inst6|Add11~9\) # (GND)))
-- \inst6|Add11~11\ = CARRY((!\inst6|Add11~9\) # (!\inst6|pipe3_x_pos\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe3_x_pos\(8),
	datad => VCC,
	cin => \inst6|Add11~9\,
	combout => \inst6|Add11~10_combout\,
	cout => \inst6|Add11~11\);

-- Location: LCCOMB_X19_Y23_N18
\inst6|Add11~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add11~12_combout\ = \inst6|Add11~11\ $ (!\inst6|pipe3_x_pos\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst6|pipe3_x_pos\(9),
	cin => \inst6|Add11~11\,
	combout => \inst6|Add11~12_combout\);

-- Location: LCCOMB_X20_Y23_N0
\inst6|LessThan18~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan18~1_cout\ = CARRY((\inst1|pixel_column\(0) & !\inst6|pipe3_x_pos\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(0),
	datab => \inst6|pipe3_x_pos\(0),
	datad => VCC,
	cout => \inst6|LessThan18~1_cout\);

-- Location: LCCOMB_X20_Y23_N2
\inst6|LessThan18~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan18~3_cout\ = CARRY((\inst6|pipe3_x_pos\(1) & ((!\inst6|LessThan18~1_cout\) # (!\inst1|pixel_column\(1)))) # (!\inst6|pipe3_x_pos\(1) & (!\inst1|pixel_column\(1) & !\inst6|LessThan18~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe3_x_pos\(1),
	datab => \inst1|pixel_column\(1),
	datad => VCC,
	cin => \inst6|LessThan18~1_cout\,
	cout => \inst6|LessThan18~3_cout\);

-- Location: LCCOMB_X20_Y23_N4
\inst6|LessThan18~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan18~5_cout\ = CARRY((\inst6|pipe3_x_pos\(2) & ((\inst1|pixel_column\(2)) # (!\inst6|LessThan18~3_cout\))) # (!\inst6|pipe3_x_pos\(2) & (\inst1|pixel_column\(2) & !\inst6|LessThan18~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe3_x_pos\(2),
	datab => \inst1|pixel_column\(2),
	datad => VCC,
	cin => \inst6|LessThan18~3_cout\,
	cout => \inst6|LessThan18~5_cout\);

-- Location: LCCOMB_X20_Y23_N6
\inst6|LessThan18~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan18~7_cout\ = CARRY((\inst6|Add11~0_combout\ & ((!\inst6|LessThan18~5_cout\) # (!\inst1|pixel_column\(3)))) # (!\inst6|Add11~0_combout\ & (!\inst1|pixel_column\(3) & !\inst6|LessThan18~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add11~0_combout\,
	datab => \inst1|pixel_column\(3),
	datad => VCC,
	cin => \inst6|LessThan18~5_cout\,
	cout => \inst6|LessThan18~7_cout\);

-- Location: LCCOMB_X20_Y23_N8
\inst6|LessThan18~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan18~9_cout\ = CARRY((\inst6|Add11~2_combout\ & (\inst1|pixel_column\(4) & !\inst6|LessThan18~7_cout\)) # (!\inst6|Add11~2_combout\ & ((\inst1|pixel_column\(4)) # (!\inst6|LessThan18~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add11~2_combout\,
	datab => \inst1|pixel_column\(4),
	datad => VCC,
	cin => \inst6|LessThan18~7_cout\,
	cout => \inst6|LessThan18~9_cout\);

-- Location: LCCOMB_X20_Y23_N10
\inst6|LessThan18~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan18~11_cout\ = CARRY((\inst6|Add11~4_combout\ & ((!\inst6|LessThan18~9_cout\) # (!\inst1|pixel_column\(5)))) # (!\inst6|Add11~4_combout\ & (!\inst1|pixel_column\(5) & !\inst6|LessThan18~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add11~4_combout\,
	datab => \inst1|pixel_column\(5),
	datad => VCC,
	cin => \inst6|LessThan18~9_cout\,
	cout => \inst6|LessThan18~11_cout\);

-- Location: LCCOMB_X20_Y23_N12
\inst6|LessThan18~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan18~13_cout\ = CARRY((\inst6|Add11~6_combout\ & (\inst1|pixel_column\(6) & !\inst6|LessThan18~11_cout\)) # (!\inst6|Add11~6_combout\ & ((\inst1|pixel_column\(6)) # (!\inst6|LessThan18~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add11~6_combout\,
	datab => \inst1|pixel_column\(6),
	datad => VCC,
	cin => \inst6|LessThan18~11_cout\,
	cout => \inst6|LessThan18~13_cout\);

-- Location: LCCOMB_X20_Y23_N14
\inst6|LessThan18~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan18~15_cout\ = CARRY((\inst6|Add11~8_combout\ & ((!\inst6|LessThan18~13_cout\) # (!\inst1|pixel_column\(7)))) # (!\inst6|Add11~8_combout\ & (!\inst1|pixel_column\(7) & !\inst6|LessThan18~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add11~8_combout\,
	datab => \inst1|pixel_column\(7),
	datad => VCC,
	cin => \inst6|LessThan18~13_cout\,
	cout => \inst6|LessThan18~15_cout\);

-- Location: LCCOMB_X20_Y23_N16
\inst6|LessThan18~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan18~17_cout\ = CARRY((\inst6|Add11~10_combout\ & (\inst1|pixel_column\(8) & !\inst6|LessThan18~15_cout\)) # (!\inst6|Add11~10_combout\ & ((\inst1|pixel_column\(8)) # (!\inst6|LessThan18~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add11~10_combout\,
	datab => \inst1|pixel_column\(8),
	datad => VCC,
	cin => \inst6|LessThan18~15_cout\,
	cout => \inst6|LessThan18~17_cout\);

-- Location: LCCOMB_X20_Y23_N18
\inst6|LessThan18~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan18~18_combout\ = (\inst1|pixel_column\(9) & ((\inst6|LessThan18~17_cout\) # (!\inst6|Add11~12_combout\))) # (!\inst1|pixel_column\(9) & (!\inst6|Add11~12_combout\ & \inst6|LessThan18~17_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(9),
	datab => \inst6|Add11~12_combout\,
	cin => \inst6|LessThan18~17_cout\,
	combout => \inst6|LessThan18~18_combout\);

-- Location: LCCOMB_X14_Y20_N16
\inst6|LessThan28~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan28~1_cout\ = CARRY((!\inst1|pixel_row\(1) & !\inst6|pipe3_bottom_y_pos\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(1),
	datab => \inst6|pipe3_bottom_y_pos\(1),
	datad => VCC,
	cout => \inst6|LessThan28~1_cout\);

-- Location: LCCOMB_X14_Y20_N18
\inst6|LessThan28~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan28~3_cout\ = CARRY((\inst6|Add17~0_combout\ & ((\inst6|pipe3_bottom_y_pos\(2)) # (!\inst6|LessThan28~1_cout\))) # (!\inst6|Add17~0_combout\ & (\inst6|pipe3_bottom_y_pos\(2) & !\inst6|LessThan28~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add17~0_combout\,
	datab => \inst6|pipe3_bottom_y_pos\(2),
	datad => VCC,
	cin => \inst6|LessThan28~1_cout\,
	cout => \inst6|LessThan28~3_cout\);

-- Location: LCCOMB_X14_Y20_N20
\inst6|LessThan28~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan28~5_cout\ = CARRY((\inst6|pipe3_bottom_y_pos\(3) & (!\inst6|Add17~2_combout\ & !\inst6|LessThan28~3_cout\)) # (!\inst6|pipe3_bottom_y_pos\(3) & ((!\inst6|LessThan28~3_cout\) # (!\inst6|Add17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe3_bottom_y_pos\(3),
	datab => \inst6|Add17~2_combout\,
	datad => VCC,
	cin => \inst6|LessThan28~3_cout\,
	cout => \inst6|LessThan28~5_cout\);

-- Location: LCCOMB_X14_Y20_N22
\inst6|LessThan28~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan28~7_cout\ = CARRY((\inst6|Add17~4_combout\ & ((\inst6|pipe3_bottom_y_pos\(4)) # (!\inst6|LessThan28~5_cout\))) # (!\inst6|Add17~4_combout\ & (\inst6|pipe3_bottom_y_pos\(4) & !\inst6|LessThan28~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add17~4_combout\,
	datab => \inst6|pipe3_bottom_y_pos\(4),
	datad => VCC,
	cin => \inst6|LessThan28~5_cout\,
	cout => \inst6|LessThan28~7_cout\);

-- Location: LCCOMB_X14_Y20_N24
\inst6|LessThan28~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan28~9_cout\ = CARRY((\inst6|Add17~6_combout\ & (\inst6|pipe3_bottom_y_pos\(5) & !\inst6|LessThan28~7_cout\)) # (!\inst6|Add17~6_combout\ & ((\inst6|pipe3_bottom_y_pos\(5)) # (!\inst6|LessThan28~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add17~6_combout\,
	datab => \inst6|pipe3_bottom_y_pos\(5),
	datad => VCC,
	cin => \inst6|LessThan28~7_cout\,
	cout => \inst6|LessThan28~9_cout\);

-- Location: LCCOMB_X14_Y20_N26
\inst6|LessThan28~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan28~11_cout\ = CARRY((\inst6|Add17~8_combout\ & ((\inst6|pipe3_bottom_y_pos\(6)) # (!\inst6|LessThan28~9_cout\))) # (!\inst6|Add17~8_combout\ & (\inst6|pipe3_bottom_y_pos\(6) & !\inst6|LessThan28~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add17~8_combout\,
	datab => \inst6|pipe3_bottom_y_pos\(6),
	datad => VCC,
	cin => \inst6|LessThan28~9_cout\,
	cout => \inst6|LessThan28~11_cout\);

-- Location: LCCOMB_X14_Y20_N28
\inst6|LessThan28~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan28~13_cout\ = CARRY((\inst6|pipe3_bottom_y_pos\(7) & ((!\inst6|LessThan28~11_cout\) # (!\inst6|Add17~10_combout\))) # (!\inst6|pipe3_bottom_y_pos\(7) & (!\inst6|Add17~10_combout\ & !\inst6|LessThan28~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe3_bottom_y_pos\(7),
	datab => \inst6|Add17~10_combout\,
	datad => VCC,
	cin => \inst6|LessThan28~11_cout\,
	cout => \inst6|LessThan28~13_cout\);

-- Location: LCCOMB_X14_Y20_N30
\inst6|LessThan28~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan28~14_combout\ = (\inst6|Add17~12_combout\ & (\inst6|LessThan28~13_cout\ & !\inst6|pipe3_bottom_y_pos\(8))) # (!\inst6|Add17~12_combout\ & ((\inst6|LessThan28~13_cout\) # (!\inst6|pipe3_bottom_y_pos\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add17~12_combout\,
	datad => \inst6|pipe3_bottom_y_pos\(8),
	cin => \inst6|LessThan28~13_cout\,
	combout => \inst6|LessThan28~14_combout\);

-- Location: LCCOMB_X16_Y23_N0
\inst6|Add12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add12~0_combout\ = (\inst6|pipe3_bottom_y_pos\(5) & (\inst6|pipe3_bottom_y_pos\(4) $ (GND))) # (!\inst6|pipe3_bottom_y_pos\(5) & (!\inst6|pipe3_bottom_y_pos\(4) & VCC))
-- \inst6|Add12~1\ = CARRY((\inst6|pipe3_bottom_y_pos\(5) & !\inst6|pipe3_bottom_y_pos\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe3_bottom_y_pos\(5),
	datab => \inst6|pipe3_bottom_y_pos\(4),
	datad => VCC,
	combout => \inst6|Add12~0_combout\,
	cout => \inst6|Add12~1\);

-- Location: LCCOMB_X16_Y23_N2
\inst6|Add12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add12~2_combout\ = (\inst6|pipe3_bottom_y_pos\(1) & (\inst6|Add12~1\ & VCC)) # (!\inst6|pipe3_bottom_y_pos\(1) & (!\inst6|Add12~1\))
-- \inst6|Add12~3\ = CARRY((!\inst6|pipe3_bottom_y_pos\(1) & !\inst6|Add12~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe3_bottom_y_pos\(1),
	datad => VCC,
	cin => \inst6|Add12~1\,
	combout => \inst6|Add12~2_combout\,
	cout => \inst6|Add12~3\);

-- Location: LCCOMB_X16_Y23_N4
\inst6|Add12~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add12~4_combout\ = (\inst6|pipe3_bottom_y_pos\(2) & (\inst6|Add12~3\ $ (GND))) # (!\inst6|pipe3_bottom_y_pos\(2) & (!\inst6|Add12~3\ & VCC))
-- \inst6|Add12~5\ = CARRY((\inst6|pipe3_bottom_y_pos\(2) & !\inst6|Add12~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe3_bottom_y_pos\(2),
	datad => VCC,
	cin => \inst6|Add12~3\,
	combout => \inst6|Add12~4_combout\,
	cout => \inst6|Add12~5\);

-- Location: LCCOMB_X16_Y23_N6
\inst6|Add12~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add12~6_combout\ = (\inst6|pipe3_bottom_y_pos\(4) & ((\inst6|Add12~5\) # (GND))) # (!\inst6|pipe3_bottom_y_pos\(4) & (!\inst6|Add12~5\))
-- \inst6|Add12~7\ = CARRY((\inst6|pipe3_bottom_y_pos\(4)) # (!\inst6|Add12~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe3_bottom_y_pos\(4),
	datad => VCC,
	cin => \inst6|Add12~5\,
	combout => \inst6|Add12~6_combout\,
	cout => \inst6|Add12~7\);

-- Location: LCCOMB_X16_Y23_N8
\inst6|Add12~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add12~8_combout\ = (\inst6|pipe3_top_y_pos\(7) & (!\inst6|Add12~7\ & VCC)) # (!\inst6|pipe3_top_y_pos\(7) & (\inst6|Add12~7\ $ (GND)))
-- \inst6|Add12~9\ = CARRY((!\inst6|pipe3_top_y_pos\(7) & !\inst6|Add12~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe3_top_y_pos\(7),
	datad => VCC,
	cin => \inst6|Add12~7\,
	combout => \inst6|Add12~8_combout\,
	cout => \inst6|Add12~9\);

-- Location: LCCOMB_X16_Y23_N10
\inst6|Add12~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add12~10_combout\ = (\inst6|pipe3_top_y_pos\(8) & (!\inst6|Add12~9\)) # (!\inst6|pipe3_top_y_pos\(8) & ((\inst6|Add12~9\) # (GND)))
-- \inst6|Add12~11\ = CARRY((!\inst6|Add12~9\) # (!\inst6|pipe3_top_y_pos\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe3_top_y_pos\(8),
	datad => VCC,
	cin => \inst6|Add12~9\,
	combout => \inst6|Add12~10_combout\,
	cout => \inst6|Add12~11\);

-- Location: LCCOMB_X16_Y23_N14
\inst6|LessThan19~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan19~1_cout\ = CARRY(\inst1|pixel_row\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pixel_row\(0),
	datad => VCC,
	cout => \inst6|LessThan19~1_cout\);

-- Location: LCCOMB_X16_Y23_N16
\inst6|LessThan19~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan19~3_cout\ = CARRY((\inst1|pixel_row\(1) & (\inst6|pipe3_bottom_y_pos\(1) & !\inst6|LessThan19~1_cout\)) # (!\inst1|pixel_row\(1) & ((\inst6|pipe3_bottom_y_pos\(1)) # (!\inst6|LessThan19~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(1),
	datab => \inst6|pipe3_bottom_y_pos\(1),
	datad => VCC,
	cin => \inst6|LessThan19~1_cout\,
	cout => \inst6|LessThan19~3_cout\);

-- Location: LCCOMB_X16_Y23_N18
\inst6|LessThan19~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan19~5_cout\ = CARRY((\inst6|pipe3_bottom_y_pos\(5) & ((\inst1|pixel_row\(2)) # (!\inst6|LessThan19~3_cout\))) # (!\inst6|pipe3_bottom_y_pos\(5) & (\inst1|pixel_row\(2) & !\inst6|LessThan19~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe3_bottom_y_pos\(5),
	datab => \inst1|pixel_row\(2),
	datad => VCC,
	cin => \inst6|LessThan19~3_cout\,
	cout => \inst6|LessThan19~5_cout\);

-- Location: LCCOMB_X16_Y23_N20
\inst6|LessThan19~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan19~7_cout\ = CARRY((\inst1|pixel_row\(3) & (\inst6|Add12~0_combout\ & !\inst6|LessThan19~5_cout\)) # (!\inst1|pixel_row\(3) & ((\inst6|Add12~0_combout\) # (!\inst6|LessThan19~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(3),
	datab => \inst6|Add12~0_combout\,
	datad => VCC,
	cin => \inst6|LessThan19~5_cout\,
	cout => \inst6|LessThan19~7_cout\);

-- Location: LCCOMB_X16_Y23_N22
\inst6|LessThan19~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan19~9_cout\ = CARRY((\inst1|pixel_row\(4) & ((!\inst6|LessThan19~7_cout\) # (!\inst6|Add12~2_combout\))) # (!\inst1|pixel_row\(4) & (!\inst6|Add12~2_combout\ & !\inst6|LessThan19~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(4),
	datab => \inst6|Add12~2_combout\,
	datad => VCC,
	cin => \inst6|LessThan19~7_cout\,
	cout => \inst6|LessThan19~9_cout\);

-- Location: LCCOMB_X16_Y23_N24
\inst6|LessThan19~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan19~11_cout\ = CARRY((\inst1|pixel_row\(5) & (\inst6|Add12~4_combout\ & !\inst6|LessThan19~9_cout\)) # (!\inst1|pixel_row\(5) & ((\inst6|Add12~4_combout\) # (!\inst6|LessThan19~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(5),
	datab => \inst6|Add12~4_combout\,
	datad => VCC,
	cin => \inst6|LessThan19~9_cout\,
	cout => \inst6|LessThan19~11_cout\);

-- Location: LCCOMB_X16_Y23_N26
\inst6|LessThan19~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan19~13_cout\ = CARRY((\inst6|Add12~6_combout\ & (\inst1|pixel_row\(6) & !\inst6|LessThan19~11_cout\)) # (!\inst6|Add12~6_combout\ & ((\inst1|pixel_row\(6)) # (!\inst6|LessThan19~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add12~6_combout\,
	datab => \inst1|pixel_row\(6),
	datad => VCC,
	cin => \inst6|LessThan19~11_cout\,
	cout => \inst6|LessThan19~13_cout\);

-- Location: LCCOMB_X16_Y23_N28
\inst6|LessThan19~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan19~15_cout\ = CARRY((\inst1|pixel_row\(7) & (\inst6|Add12~8_combout\ & !\inst6|LessThan19~13_cout\)) # (!\inst1|pixel_row\(7) & ((\inst6|Add12~8_combout\) # (!\inst6|LessThan19~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(7),
	datab => \inst6|Add12~8_combout\,
	datad => VCC,
	cin => \inst6|LessThan19~13_cout\,
	cout => \inst6|LessThan19~15_cout\);

-- Location: LCCOMB_X16_Y23_N30
\inst6|LessThan19~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan19~16_combout\ = (\inst1|pixel_row\(8) & ((!\inst6|Add12~10_combout\) # (!\inst6|LessThan19~15_cout\))) # (!\inst1|pixel_row\(8) & (!\inst6|LessThan19~15_cout\ & !\inst6|Add12~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(8),
	datad => \inst6|Add12~10_combout\,
	cin => \inst6|LessThan19~15_cout\,
	combout => \inst6|LessThan19~16_combout\);

-- Location: LCCOMB_X16_Y23_N12
\inst6|Add12~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add12~12_combout\ = !\inst6|Add12~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst6|Add12~11\,
	combout => \inst6|Add12~12_combout\);

-- Location: LCCOMB_X19_Y18_N6
\inst6|LessThan20~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan20~1_cout\ = CARRY((\inst6|pipe4_x_pos\(0) & !\inst1|pixel_column\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe4_x_pos\(0),
	datab => \inst1|pixel_column\(0),
	datad => VCC,
	cout => \inst6|LessThan20~1_cout\);

-- Location: LCCOMB_X19_Y18_N8
\inst6|LessThan20~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan20~3_cout\ = CARRY((\inst6|pipe4_x_pos\(1) & (\inst1|pixel_column\(1) & !\inst6|LessThan20~1_cout\)) # (!\inst6|pipe4_x_pos\(1) & ((\inst1|pixel_column\(1)) # (!\inst6|LessThan20~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe4_x_pos\(1),
	datab => \inst1|pixel_column\(1),
	datad => VCC,
	cin => \inst6|LessThan20~1_cout\,
	cout => \inst6|LessThan20~3_cout\);

-- Location: LCCOMB_X19_Y18_N10
\inst6|LessThan20~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan20~5_cout\ = CARRY((\inst6|Add6~0_combout\ & (\inst6|pipe4_x_pos\(2) & !\inst6|LessThan20~3_cout\)) # (!\inst6|Add6~0_combout\ & ((\inst6|pipe4_x_pos\(2)) # (!\inst6|LessThan20~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add6~0_combout\,
	datab => \inst6|pipe4_x_pos\(2),
	datad => VCC,
	cin => \inst6|LessThan20~3_cout\,
	cout => \inst6|LessThan20~5_cout\);

-- Location: LCCOMB_X19_Y18_N12
\inst6|LessThan20~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan20~7_cout\ = CARRY((\inst6|Add6~2_combout\ & ((\inst6|pipe4_x_pos\(3)) # (!\inst6|LessThan20~5_cout\))) # (!\inst6|Add6~2_combout\ & (\inst6|pipe4_x_pos\(3) & !\inst6|LessThan20~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add6~2_combout\,
	datab => \inst6|pipe4_x_pos\(3),
	datad => VCC,
	cin => \inst6|LessThan20~5_cout\,
	cout => \inst6|LessThan20~7_cout\);

-- Location: LCCOMB_X19_Y18_N14
\inst6|LessThan20~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan20~9_cout\ = CARRY((\inst6|Add6~4_combout\ & (!\inst6|pipe4_x_pos\(4) & !\inst6|LessThan20~7_cout\)) # (!\inst6|Add6~4_combout\ & ((!\inst6|LessThan20~7_cout\) # (!\inst6|pipe4_x_pos\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add6~4_combout\,
	datab => \inst6|pipe4_x_pos\(4),
	datad => VCC,
	cin => \inst6|LessThan20~7_cout\,
	cout => \inst6|LessThan20~9_cout\);

-- Location: LCCOMB_X19_Y18_N16
\inst6|LessThan20~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan20~11_cout\ = CARRY((\inst6|pipe4_x_pos\(5) & (\inst6|Add6~6_combout\ & !\inst6|LessThan20~9_cout\)) # (!\inst6|pipe4_x_pos\(5) & ((\inst6|Add6~6_combout\) # (!\inst6|LessThan20~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe4_x_pos\(5),
	datab => \inst6|Add6~6_combout\,
	datad => VCC,
	cin => \inst6|LessThan20~9_cout\,
	cout => \inst6|LessThan20~11_cout\);

-- Location: LCCOMB_X19_Y18_N18
\inst6|LessThan20~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan20~13_cout\ = CARRY((\inst6|pipe4_x_pos\(6) & (!\inst6|Add6~8_combout\ & !\inst6|LessThan20~11_cout\)) # (!\inst6|pipe4_x_pos\(6) & ((!\inst6|LessThan20~11_cout\) # (!\inst6|Add6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe4_x_pos\(6),
	datab => \inst6|Add6~8_combout\,
	datad => VCC,
	cin => \inst6|LessThan20~11_cout\,
	cout => \inst6|LessThan20~13_cout\);

-- Location: LCCOMB_X19_Y18_N20
\inst6|LessThan20~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan20~15_cout\ = CARRY((\inst6|Add6~10_combout\ & ((\inst6|pipe4_x_pos\(7)) # (!\inst6|LessThan20~13_cout\))) # (!\inst6|Add6~10_combout\ & (\inst6|pipe4_x_pos\(7) & !\inst6|LessThan20~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add6~10_combout\,
	datab => \inst6|pipe4_x_pos\(7),
	datad => VCC,
	cin => \inst6|LessThan20~13_cout\,
	cout => \inst6|LessThan20~15_cout\);

-- Location: LCCOMB_X19_Y18_N22
\inst6|LessThan20~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan20~17_cout\ = CARRY((\inst6|pipe4_x_pos\(8) & ((!\inst6|LessThan20~15_cout\) # (!\inst6|Add6~12_combout\))) # (!\inst6|pipe4_x_pos\(8) & (!\inst6|Add6~12_combout\ & !\inst6|LessThan20~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe4_x_pos\(8),
	datab => \inst6|Add6~12_combout\,
	datad => VCC,
	cin => \inst6|LessThan20~15_cout\,
	cout => \inst6|LessThan20~17_cout\);

-- Location: LCCOMB_X19_Y18_N24
\inst6|LessThan20~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan20~18_combout\ = (\inst6|pipe4_x_pos\(9) & ((\inst6|LessThan20~17_cout\) # (!\inst6|Add6~14_combout\))) # (!\inst6|pipe4_x_pos\(9) & (\inst6|LessThan20~17_cout\ & !\inst6|Add6~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe4_x_pos\(9),
	datad => \inst6|Add6~14_combout\,
	cin => \inst6|LessThan20~17_cout\,
	combout => \inst6|LessThan20~18_combout\);

-- Location: LCCOMB_X16_Y18_N0
\inst6|Add13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add13~0_combout\ = (\inst6|pipe4_x_pos\(3) & (\inst6|pipe4_x_pos\(2) & VCC)) # (!\inst6|pipe4_x_pos\(3) & (\inst6|pipe4_x_pos\(2) $ (VCC)))
-- \inst6|Add13~1\ = CARRY((!\inst6|pipe4_x_pos\(3) & \inst6|pipe4_x_pos\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe4_x_pos\(3),
	datab => \inst6|pipe4_x_pos\(2),
	datad => VCC,
	combout => \inst6|Add13~0_combout\,
	cout => \inst6|Add13~1\);

-- Location: LCCOMB_X16_Y18_N2
\inst6|Add13~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add13~2_combout\ = (\inst6|pipe4_x_pos\(4) & (!\inst6|Add13~1\)) # (!\inst6|pipe4_x_pos\(4) & (\inst6|Add13~1\ & VCC))
-- \inst6|Add13~3\ = CARRY((\inst6|pipe4_x_pos\(4) & !\inst6|Add13~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe4_x_pos\(4),
	datad => VCC,
	cin => \inst6|Add13~1\,
	combout => \inst6|Add13~2_combout\,
	cout => \inst6|Add13~3\);

-- Location: LCCOMB_X16_Y18_N4
\inst6|Add13~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add13~4_combout\ = (\inst6|pipe4_x_pos\(5) & (\inst6|Add13~3\ $ (GND))) # (!\inst6|pipe4_x_pos\(5) & (!\inst6|Add13~3\ & VCC))
-- \inst6|Add13~5\ = CARRY((\inst6|pipe4_x_pos\(5) & !\inst6|Add13~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe4_x_pos\(5),
	datad => VCC,
	cin => \inst6|Add13~3\,
	combout => \inst6|Add13~4_combout\,
	cout => \inst6|Add13~5\);

-- Location: LCCOMB_X16_Y18_N6
\inst6|Add13~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add13~6_combout\ = (\inst6|pipe4_x_pos\(6) & ((\inst6|Add13~5\) # (GND))) # (!\inst6|pipe4_x_pos\(6) & (!\inst6|Add13~5\))
-- \inst6|Add13~7\ = CARRY((\inst6|pipe4_x_pos\(6)) # (!\inst6|Add13~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe4_x_pos\(6),
	datad => VCC,
	cin => \inst6|Add13~5\,
	combout => \inst6|Add13~6_combout\,
	cout => \inst6|Add13~7\);

-- Location: LCCOMB_X16_Y18_N8
\inst6|Add13~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add13~8_combout\ = (\inst6|pipe4_x_pos\(7) & (!\inst6|Add13~7\ & VCC)) # (!\inst6|pipe4_x_pos\(7) & (\inst6|Add13~7\ $ (GND)))
-- \inst6|Add13~9\ = CARRY((!\inst6|pipe4_x_pos\(7) & !\inst6|Add13~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe4_x_pos\(7),
	datad => VCC,
	cin => \inst6|Add13~7\,
	combout => \inst6|Add13~8_combout\,
	cout => \inst6|Add13~9\);

-- Location: LCCOMB_X16_Y18_N10
\inst6|Add13~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add13~10_combout\ = (\inst6|pipe4_x_pos\(8) & (!\inst6|Add13~9\)) # (!\inst6|pipe4_x_pos\(8) & ((\inst6|Add13~9\) # (GND)))
-- \inst6|Add13~11\ = CARRY((!\inst6|Add13~9\) # (!\inst6|pipe4_x_pos\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe4_x_pos\(8),
	datad => VCC,
	cin => \inst6|Add13~9\,
	combout => \inst6|Add13~10_combout\,
	cout => \inst6|Add13~11\);

-- Location: LCCOMB_X16_Y18_N12
\inst6|Add13~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add13~12_combout\ = \inst6|pipe4_x_pos\(9) $ (!\inst6|Add13~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe4_x_pos\(9),
	cin => \inst6|Add13~11\,
	combout => \inst6|Add13~12_combout\);

-- Location: LCCOMB_X19_Y19_N0
\inst6|LessThan21~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan21~1_cout\ = CARRY((\inst1|pixel_column\(0) & !\inst6|pipe4_x_pos\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(0),
	datab => \inst6|pipe4_x_pos\(0),
	datad => VCC,
	cout => \inst6|LessThan21~1_cout\);

-- Location: LCCOMB_X19_Y19_N2
\inst6|LessThan21~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan21~3_cout\ = CARRY((\inst6|pipe4_x_pos\(1) & ((!\inst6|LessThan21~1_cout\) # (!\inst1|pixel_column\(1)))) # (!\inst6|pipe4_x_pos\(1) & (!\inst1|pixel_column\(1) & !\inst6|LessThan21~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe4_x_pos\(1),
	datab => \inst1|pixel_column\(1),
	datad => VCC,
	cin => \inst6|LessThan21~1_cout\,
	cout => \inst6|LessThan21~3_cout\);

-- Location: LCCOMB_X19_Y19_N4
\inst6|LessThan21~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan21~5_cout\ = CARRY((\inst6|pipe4_x_pos\(2) & ((\inst1|pixel_column\(2)) # (!\inst6|LessThan21~3_cout\))) # (!\inst6|pipe4_x_pos\(2) & (\inst1|pixel_column\(2) & !\inst6|LessThan21~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe4_x_pos\(2),
	datab => \inst1|pixel_column\(2),
	datad => VCC,
	cin => \inst6|LessThan21~3_cout\,
	cout => \inst6|LessThan21~5_cout\);

-- Location: LCCOMB_X19_Y19_N6
\inst6|LessThan21~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan21~7_cout\ = CARRY((\inst1|pixel_column\(3) & (\inst6|Add13~0_combout\ & !\inst6|LessThan21~5_cout\)) # (!\inst1|pixel_column\(3) & ((\inst6|Add13~0_combout\) # (!\inst6|LessThan21~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(3),
	datab => \inst6|Add13~0_combout\,
	datad => VCC,
	cin => \inst6|LessThan21~5_cout\,
	cout => \inst6|LessThan21~7_cout\);

-- Location: LCCOMB_X19_Y19_N8
\inst6|LessThan21~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan21~9_cout\ = CARRY((\inst6|Add13~2_combout\ & (\inst1|pixel_column\(4) & !\inst6|LessThan21~7_cout\)) # (!\inst6|Add13~2_combout\ & ((\inst1|pixel_column\(4)) # (!\inst6|LessThan21~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add13~2_combout\,
	datab => \inst1|pixel_column\(4),
	datad => VCC,
	cin => \inst6|LessThan21~7_cout\,
	cout => \inst6|LessThan21~9_cout\);

-- Location: LCCOMB_X19_Y19_N10
\inst6|LessThan21~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan21~11_cout\ = CARRY((\inst6|Add13~4_combout\ & ((!\inst6|LessThan21~9_cout\) # (!\inst1|pixel_column\(5)))) # (!\inst6|Add13~4_combout\ & (!\inst1|pixel_column\(5) & !\inst6|LessThan21~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add13~4_combout\,
	datab => \inst1|pixel_column\(5),
	datad => VCC,
	cin => \inst6|LessThan21~9_cout\,
	cout => \inst6|LessThan21~11_cout\);

-- Location: LCCOMB_X19_Y19_N12
\inst6|LessThan21~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan21~13_cout\ = CARRY((\inst6|Add13~6_combout\ & (\inst1|pixel_column\(6) & !\inst6|LessThan21~11_cout\)) # (!\inst6|Add13~6_combout\ & ((\inst1|pixel_column\(6)) # (!\inst6|LessThan21~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add13~6_combout\,
	datab => \inst1|pixel_column\(6),
	datad => VCC,
	cin => \inst6|LessThan21~11_cout\,
	cout => \inst6|LessThan21~13_cout\);

-- Location: LCCOMB_X19_Y19_N14
\inst6|LessThan21~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan21~15_cout\ = CARRY((\inst1|pixel_column\(7) & (\inst6|Add13~8_combout\ & !\inst6|LessThan21~13_cout\)) # (!\inst1|pixel_column\(7) & ((\inst6|Add13~8_combout\) # (!\inst6|LessThan21~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(7),
	datab => \inst6|Add13~8_combout\,
	datad => VCC,
	cin => \inst6|LessThan21~13_cout\,
	cout => \inst6|LessThan21~15_cout\);

-- Location: LCCOMB_X19_Y19_N16
\inst6|LessThan21~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan21~17_cout\ = CARRY((\inst6|Add13~10_combout\ & (\inst1|pixel_column\(8) & !\inst6|LessThan21~15_cout\)) # (!\inst6|Add13~10_combout\ & ((\inst1|pixel_column\(8)) # (!\inst6|LessThan21~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add13~10_combout\,
	datab => \inst1|pixel_column\(8),
	datad => VCC,
	cin => \inst6|LessThan21~15_cout\,
	cout => \inst6|LessThan21~17_cout\);

-- Location: LCCOMB_X19_Y19_N18
\inst6|LessThan21~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan21~18_combout\ = (\inst1|pixel_column\(9) & ((\inst6|LessThan21~17_cout\) # (!\inst6|Add13~12_combout\))) # (!\inst1|pixel_column\(9) & (\inst6|LessThan21~17_cout\ & !\inst6|Add13~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pixel_column\(9),
	datad => \inst6|Add13~12_combout\,
	cin => \inst6|LessThan21~17_cout\,
	combout => \inst6|LessThan21~18_combout\);

-- Location: LCCOMB_X17_Y20_N12
\inst6|LessThan29~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan29~1_cout\ = CARRY((!\inst1|pixel_row\(1) & !\inst6|pipe4_bottom_y_pos\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(1),
	datab => \inst6|pipe4_bottom_y_pos\(1),
	datad => VCC,
	cout => \inst6|LessThan29~1_cout\);

-- Location: LCCOMB_X17_Y20_N14
\inst6|LessThan29~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan29~3_cout\ = CARRY((\inst6|pipe4_bottom_y_pos\(2) & ((\inst6|Add17~0_combout\) # (!\inst6|LessThan29~1_cout\))) # (!\inst6|pipe4_bottom_y_pos\(2) & (\inst6|Add17~0_combout\ & !\inst6|LessThan29~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe4_bottom_y_pos\(2),
	datab => \inst6|Add17~0_combout\,
	datad => VCC,
	cin => \inst6|LessThan29~1_cout\,
	cout => \inst6|LessThan29~3_cout\);

-- Location: LCCOMB_X17_Y20_N16
\inst6|LessThan29~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan29~5_cout\ = CARRY((\inst6|Add17~2_combout\ & (!\inst6|pipe4_bottom_y_pos\(3) & !\inst6|LessThan29~3_cout\)) # (!\inst6|Add17~2_combout\ & ((!\inst6|LessThan29~3_cout\) # (!\inst6|pipe4_bottom_y_pos\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add17~2_combout\,
	datab => \inst6|pipe4_bottom_y_pos\(3),
	datad => VCC,
	cin => \inst6|LessThan29~3_cout\,
	cout => \inst6|LessThan29~5_cout\);

-- Location: LCCOMB_X17_Y20_N18
\inst6|LessThan29~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan29~7_cout\ = CARRY((\inst6|pipe4_bottom_y_pos\(4) & ((\inst6|Add17~4_combout\) # (!\inst6|LessThan29~5_cout\))) # (!\inst6|pipe4_bottom_y_pos\(4) & (\inst6|Add17~4_combout\ & !\inst6|LessThan29~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe4_bottom_y_pos\(4),
	datab => \inst6|Add17~4_combout\,
	datad => VCC,
	cin => \inst6|LessThan29~5_cout\,
	cout => \inst6|LessThan29~7_cout\);

-- Location: LCCOMB_X17_Y20_N20
\inst6|LessThan29~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan29~9_cout\ = CARRY((\inst6|pipe4_bottom_y_pos\(5) & ((!\inst6|LessThan29~7_cout\) # (!\inst6|Add17~6_combout\))) # (!\inst6|pipe4_bottom_y_pos\(5) & (!\inst6|Add17~6_combout\ & !\inst6|LessThan29~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe4_bottom_y_pos\(5),
	datab => \inst6|Add17~6_combout\,
	datad => VCC,
	cin => \inst6|LessThan29~7_cout\,
	cout => \inst6|LessThan29~9_cout\);

-- Location: LCCOMB_X17_Y20_N22
\inst6|LessThan29~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan29~11_cout\ = CARRY((\inst6|pipe4_bottom_y_pos\(6) & ((\inst6|Add17~8_combout\) # (!\inst6|LessThan29~9_cout\))) # (!\inst6|pipe4_bottom_y_pos\(6) & (\inst6|Add17~8_combout\ & !\inst6|LessThan29~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe4_bottom_y_pos\(6),
	datab => \inst6|Add17~8_combout\,
	datad => VCC,
	cin => \inst6|LessThan29~9_cout\,
	cout => \inst6|LessThan29~11_cout\);

-- Location: LCCOMB_X17_Y20_N24
\inst6|LessThan29~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan29~13_cout\ = CARRY((\inst6|Add17~10_combout\ & (\inst6|pipe4_bottom_y_pos\(7) & !\inst6|LessThan29~11_cout\)) # (!\inst6|Add17~10_combout\ & ((\inst6|pipe4_bottom_y_pos\(7)) # (!\inst6|LessThan29~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add17~10_combout\,
	datab => \inst6|pipe4_bottom_y_pos\(7),
	datad => VCC,
	cin => \inst6|LessThan29~11_cout\,
	cout => \inst6|LessThan29~13_cout\);

-- Location: LCCOMB_X17_Y20_N26
\inst6|LessThan29~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan29~14_combout\ = (\inst6|pipe4_bottom_y_pos\(8) & (\inst6|LessThan29~13_cout\ & !\inst6|Add17~12_combout\)) # (!\inst6|pipe4_bottom_y_pos\(8) & ((\inst6|LessThan29~13_cout\) # (!\inst6|Add17~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe4_bottom_y_pos\(8),
	datad => \inst6|Add17~12_combout\,
	cin => \inst6|LessThan29~13_cout\,
	combout => \inst6|LessThan29~14_combout\);

-- Location: LCCOMB_X17_Y21_N2
\inst6|Add14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add14~0_combout\ = (\inst6|pipe4_bottom_y_pos\(4) & (\inst6|pipe4_bottom_y_pos\(5) & VCC)) # (!\inst6|pipe4_bottom_y_pos\(4) & (\inst6|pipe4_bottom_y_pos\(5) $ (VCC)))
-- \inst6|Add14~1\ = CARRY((!\inst6|pipe4_bottom_y_pos\(4) & \inst6|pipe4_bottom_y_pos\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe4_bottom_y_pos\(4),
	datab => \inst6|pipe4_bottom_y_pos\(5),
	datad => VCC,
	combout => \inst6|Add14~0_combout\,
	cout => \inst6|Add14~1\);

-- Location: LCCOMB_X17_Y21_N4
\inst6|Add14~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add14~2_combout\ = (\inst6|pipe4_bottom_y_pos\(1) & (\inst6|Add14~1\ & VCC)) # (!\inst6|pipe4_bottom_y_pos\(1) & (!\inst6|Add14~1\))
-- \inst6|Add14~3\ = CARRY((!\inst6|pipe4_bottom_y_pos\(1) & !\inst6|Add14~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe4_bottom_y_pos\(1),
	datad => VCC,
	cin => \inst6|Add14~1\,
	combout => \inst6|Add14~2_combout\,
	cout => \inst6|Add14~3\);

-- Location: LCCOMB_X17_Y21_N6
\inst6|Add14~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add14~4_combout\ = (\inst6|pipe4_bottom_y_pos\(2) & (\inst6|Add14~3\ $ (GND))) # (!\inst6|pipe4_bottom_y_pos\(2) & (!\inst6|Add14~3\ & VCC))
-- \inst6|Add14~5\ = CARRY((\inst6|pipe4_bottom_y_pos\(2) & !\inst6|Add14~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe4_bottom_y_pos\(2),
	datad => VCC,
	cin => \inst6|Add14~3\,
	combout => \inst6|Add14~4_combout\,
	cout => \inst6|Add14~5\);

-- Location: LCCOMB_X17_Y21_N8
\inst6|Add14~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add14~6_combout\ = (\inst6|pipe4_bottom_y_pos\(4) & ((\inst6|Add14~5\) # (GND))) # (!\inst6|pipe4_bottom_y_pos\(4) & (!\inst6|Add14~5\))
-- \inst6|Add14~7\ = CARRY((\inst6|pipe4_bottom_y_pos\(4)) # (!\inst6|Add14~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe4_bottom_y_pos\(4),
	datad => VCC,
	cin => \inst6|Add14~5\,
	combout => \inst6|Add14~6_combout\,
	cout => \inst6|Add14~7\);

-- Location: LCCOMB_X17_Y21_N10
\inst6|Add14~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add14~8_combout\ = (\inst6|pipe4_top_y_pos\(7) & (!\inst6|Add14~7\ & VCC)) # (!\inst6|pipe4_top_y_pos\(7) & (\inst6|Add14~7\ $ (GND)))
-- \inst6|Add14~9\ = CARRY((!\inst6|pipe4_top_y_pos\(7) & !\inst6|Add14~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe4_top_y_pos\(7),
	datad => VCC,
	cin => \inst6|Add14~7\,
	combout => \inst6|Add14~8_combout\,
	cout => \inst6|Add14~9\);

-- Location: LCCOMB_X17_Y21_N12
\inst6|Add14~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add14~10_combout\ = (\inst6|pipe4_top_y_pos\(8) & (!\inst6|Add14~9\)) # (!\inst6|pipe4_top_y_pos\(8) & ((\inst6|Add14~9\) # (GND)))
-- \inst6|Add14~11\ = CARRY((!\inst6|Add14~9\) # (!\inst6|pipe4_top_y_pos\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe4_top_y_pos\(8),
	datad => VCC,
	cin => \inst6|Add14~9\,
	combout => \inst6|Add14~10_combout\,
	cout => \inst6|Add14~11\);

-- Location: LCCOMB_X17_Y23_N10
\inst6|LessThan22~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan22~1_cout\ = CARRY(\inst1|pixel_row\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(0),
	datad => VCC,
	cout => \inst6|LessThan22~1_cout\);

-- Location: LCCOMB_X17_Y23_N12
\inst6|LessThan22~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan22~3_cout\ = CARRY((\inst6|pipe4_bottom_y_pos\(1) & ((!\inst6|LessThan22~1_cout\) # (!\inst1|pixel_row\(1)))) # (!\inst6|pipe4_bottom_y_pos\(1) & (!\inst1|pixel_row\(1) & !\inst6|LessThan22~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe4_bottom_y_pos\(1),
	datab => \inst1|pixel_row\(1),
	datad => VCC,
	cin => \inst6|LessThan22~1_cout\,
	cout => \inst6|LessThan22~3_cout\);

-- Location: LCCOMB_X17_Y23_N14
\inst6|LessThan22~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan22~5_cout\ = CARRY((\inst1|pixel_row\(2) & ((\inst6|pipe4_bottom_y_pos\(5)) # (!\inst6|LessThan22~3_cout\))) # (!\inst1|pixel_row\(2) & (\inst6|pipe4_bottom_y_pos\(5) & !\inst6|LessThan22~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(2),
	datab => \inst6|pipe4_bottom_y_pos\(5),
	datad => VCC,
	cin => \inst6|LessThan22~3_cout\,
	cout => \inst6|LessThan22~5_cout\);

-- Location: LCCOMB_X17_Y23_N16
\inst6|LessThan22~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan22~7_cout\ = CARRY((\inst1|pixel_row\(3) & (\inst6|Add14~0_combout\ & !\inst6|LessThan22~5_cout\)) # (!\inst1|pixel_row\(3) & ((\inst6|Add14~0_combout\) # (!\inst6|LessThan22~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(3),
	datab => \inst6|Add14~0_combout\,
	datad => VCC,
	cin => \inst6|LessThan22~5_cout\,
	cout => \inst6|LessThan22~7_cout\);

-- Location: LCCOMB_X17_Y23_N18
\inst6|LessThan22~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan22~9_cout\ = CARRY((\inst6|Add14~2_combout\ & (\inst1|pixel_row\(4) & !\inst6|LessThan22~7_cout\)) # (!\inst6|Add14~2_combout\ & ((\inst1|pixel_row\(4)) # (!\inst6|LessThan22~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add14~2_combout\,
	datab => \inst1|pixel_row\(4),
	datad => VCC,
	cin => \inst6|LessThan22~7_cout\,
	cout => \inst6|LessThan22~9_cout\);

-- Location: LCCOMB_X17_Y23_N20
\inst6|LessThan22~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan22~11_cout\ = CARRY((\inst1|pixel_row\(5) & (\inst6|Add14~4_combout\ & !\inst6|LessThan22~9_cout\)) # (!\inst1|pixel_row\(5) & ((\inst6|Add14~4_combout\) # (!\inst6|LessThan22~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(5),
	datab => \inst6|Add14~4_combout\,
	datad => VCC,
	cin => \inst6|LessThan22~9_cout\,
	cout => \inst6|LessThan22~11_cout\);

-- Location: LCCOMB_X17_Y23_N22
\inst6|LessThan22~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan22~13_cout\ = CARRY((\inst6|Add14~6_combout\ & (\inst1|pixel_row\(6) & !\inst6|LessThan22~11_cout\)) # (!\inst6|Add14~6_combout\ & ((\inst1|pixel_row\(6)) # (!\inst6|LessThan22~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add14~6_combout\,
	datab => \inst1|pixel_row\(6),
	datad => VCC,
	cin => \inst6|LessThan22~11_cout\,
	cout => \inst6|LessThan22~13_cout\);

-- Location: LCCOMB_X17_Y23_N24
\inst6|LessThan22~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan22~15_cout\ = CARRY((\inst6|Add14~8_combout\ & ((!\inst6|LessThan22~13_cout\) # (!\inst1|pixel_row\(7)))) # (!\inst6|Add14~8_combout\ & (!\inst1|pixel_row\(7) & !\inst6|LessThan22~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add14~8_combout\,
	datab => \inst1|pixel_row\(7),
	datad => VCC,
	cin => \inst6|LessThan22~13_cout\,
	cout => \inst6|LessThan22~15_cout\);

-- Location: LCCOMB_X17_Y23_N26
\inst6|LessThan22~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan22~16_combout\ = (\inst1|pixel_row\(8) & ((!\inst6|Add14~10_combout\) # (!\inst6|LessThan22~15_cout\))) # (!\inst1|pixel_row\(8) & (!\inst6|LessThan22~15_cout\ & !\inst6|Add14~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(8),
	datad => \inst6|Add14~10_combout\,
	cin => \inst6|LessThan22~15_cout\,
	combout => \inst6|LessThan22~16_combout\);

-- Location: LCCOMB_X17_Y21_N14
\inst6|Add14~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add14~12_combout\ = !\inst6|Add14~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst6|Add14~11\,
	combout => \inst6|Add14~12_combout\);

-- Location: LCCOMB_X17_Y22_N12
\inst6|LessThan23~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan23~1_cout\ = CARRY((!\inst1|pixel_column\(0) & \inst6|pipe5_x_pos\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(0),
	datab => \inst6|pipe5_x_pos\(0),
	datad => VCC,
	cout => \inst6|LessThan23~1_cout\);

-- Location: LCCOMB_X17_Y22_N14
\inst6|LessThan23~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan23~3_cout\ = CARRY((\inst6|pipe5_x_pos\(1) & (\inst1|pixel_column\(1) & !\inst6|LessThan23~1_cout\)) # (!\inst6|pipe5_x_pos\(1) & ((\inst1|pixel_column\(1)) # (!\inst6|LessThan23~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe5_x_pos\(1),
	datab => \inst1|pixel_column\(1),
	datad => VCC,
	cin => \inst6|LessThan23~1_cout\,
	cout => \inst6|LessThan23~3_cout\);

-- Location: LCCOMB_X17_Y22_N16
\inst6|LessThan23~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan23~5_cout\ = CARRY((\inst6|Add6~0_combout\ & (\inst6|pipe5_x_pos\(2) & !\inst6|LessThan23~3_cout\)) # (!\inst6|Add6~0_combout\ & ((\inst6|pipe5_x_pos\(2)) # (!\inst6|LessThan23~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add6~0_combout\,
	datab => \inst6|pipe5_x_pos\(2),
	datad => VCC,
	cin => \inst6|LessThan23~3_cout\,
	cout => \inst6|LessThan23~5_cout\);

-- Location: LCCOMB_X17_Y22_N18
\inst6|LessThan23~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan23~7_cout\ = CARRY((\inst6|pipe5_x_pos\(3) & (\inst6|Add6~2_combout\ & !\inst6|LessThan23~5_cout\)) # (!\inst6|pipe5_x_pos\(3) & ((\inst6|Add6~2_combout\) # (!\inst6|LessThan23~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe5_x_pos\(3),
	datab => \inst6|Add6~2_combout\,
	datad => VCC,
	cin => \inst6|LessThan23~5_cout\,
	cout => \inst6|LessThan23~7_cout\);

-- Location: LCCOMB_X17_Y22_N20
\inst6|LessThan23~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan23~9_cout\ = CARRY((\inst6|pipe5_x_pos\(4) & ((!\inst6|LessThan23~7_cout\) # (!\inst6|Add6~4_combout\))) # (!\inst6|pipe5_x_pos\(4) & (!\inst6|Add6~4_combout\ & !\inst6|LessThan23~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe5_x_pos\(4),
	datab => \inst6|Add6~4_combout\,
	datad => VCC,
	cin => \inst6|LessThan23~7_cout\,
	cout => \inst6|LessThan23~9_cout\);

-- Location: LCCOMB_X17_Y22_N22
\inst6|LessThan23~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan23~11_cout\ = CARRY((\inst6|pipe5_x_pos\(5) & ((\inst6|Add6~6_combout\) # (!\inst6|LessThan23~9_cout\))) # (!\inst6|pipe5_x_pos\(5) & (\inst6|Add6~6_combout\ & !\inst6|LessThan23~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe5_x_pos\(5),
	datab => \inst6|Add6~6_combout\,
	datad => VCC,
	cin => \inst6|LessThan23~9_cout\,
	cout => \inst6|LessThan23~11_cout\);

-- Location: LCCOMB_X17_Y22_N24
\inst6|LessThan23~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan23~13_cout\ = CARRY((\inst6|Add6~8_combout\ & (\inst6|pipe5_x_pos\(6) & !\inst6|LessThan23~11_cout\)) # (!\inst6|Add6~8_combout\ & ((\inst6|pipe5_x_pos\(6)) # (!\inst6|LessThan23~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add6~8_combout\,
	datab => \inst6|pipe5_x_pos\(6),
	datad => VCC,
	cin => \inst6|LessThan23~11_cout\,
	cout => \inst6|LessThan23~13_cout\);

-- Location: LCCOMB_X17_Y22_N26
\inst6|LessThan23~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan23~15_cout\ = CARRY((\inst6|pipe5_x_pos\(7) & ((\inst6|Add6~10_combout\) # (!\inst6|LessThan23~13_cout\))) # (!\inst6|pipe5_x_pos\(7) & (\inst6|Add6~10_combout\ & !\inst6|LessThan23~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe5_x_pos\(7),
	datab => \inst6|Add6~10_combout\,
	datad => VCC,
	cin => \inst6|LessThan23~13_cout\,
	cout => \inst6|LessThan23~15_cout\);

-- Location: LCCOMB_X17_Y22_N28
\inst6|LessThan23~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan23~17_cout\ = CARRY((\inst6|Add6~12_combout\ & (!\inst6|pipe5_x_pos\(8) & !\inst6|LessThan23~15_cout\)) # (!\inst6|Add6~12_combout\ & ((!\inst6|LessThan23~15_cout\) # (!\inst6|pipe5_x_pos\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add6~12_combout\,
	datab => \inst6|pipe5_x_pos\(8),
	datad => VCC,
	cin => \inst6|LessThan23~15_cout\,
	cout => \inst6|LessThan23~17_cout\);

-- Location: LCCOMB_X17_Y22_N30
\inst6|LessThan23~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan23~18_combout\ = (\inst6|pipe5_x_pos\(9) & ((\inst6|LessThan23~17_cout\) # (!\inst6|Add6~14_combout\))) # (!\inst6|pipe5_x_pos\(9) & (\inst6|LessThan23~17_cout\ & !\inst6|Add6~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe5_x_pos\(9),
	datad => \inst6|Add6~14_combout\,
	cin => \inst6|LessThan23~17_cout\,
	combout => \inst6|LessThan23~18_combout\);

-- Location: LCCOMB_X19_Y22_N16
\inst6|Add15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add15~0_combout\ = (\inst6|pipe5_x_pos\(2) & (\inst6|pipe5_x_pos\(3) $ (VCC))) # (!\inst6|pipe5_x_pos\(2) & (\inst6|pipe5_x_pos\(3) & VCC))
-- \inst6|Add15~1\ = CARRY((\inst6|pipe5_x_pos\(2) & \inst6|pipe5_x_pos\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe5_x_pos\(2),
	datab => \inst6|pipe5_x_pos\(3),
	datad => VCC,
	combout => \inst6|Add15~0_combout\,
	cout => \inst6|Add15~1\);

-- Location: LCCOMB_X19_Y22_N18
\inst6|Add15~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add15~2_combout\ = (\inst6|pipe5_x_pos\(4) & (\inst6|Add15~1\ & VCC)) # (!\inst6|pipe5_x_pos\(4) & (!\inst6|Add15~1\))
-- \inst6|Add15~3\ = CARRY((!\inst6|pipe5_x_pos\(4) & !\inst6|Add15~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe5_x_pos\(4),
	datad => VCC,
	cin => \inst6|Add15~1\,
	combout => \inst6|Add15~2_combout\,
	cout => \inst6|Add15~3\);

-- Location: LCCOMB_X19_Y22_N20
\inst6|Add15~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add15~4_combout\ = (\inst6|pipe5_x_pos\(5) & (!\inst6|Add15~3\ & VCC)) # (!\inst6|pipe5_x_pos\(5) & (\inst6|Add15~3\ $ (GND)))
-- \inst6|Add15~5\ = CARRY((!\inst6|pipe5_x_pos\(5) & !\inst6|Add15~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe5_x_pos\(5),
	datad => VCC,
	cin => \inst6|Add15~3\,
	combout => \inst6|Add15~4_combout\,
	cout => \inst6|Add15~5\);

-- Location: LCCOMB_X19_Y22_N22
\inst6|Add15~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add15~6_combout\ = (\inst6|pipe5_x_pos\(6) & (!\inst6|Add15~5\)) # (!\inst6|pipe5_x_pos\(6) & ((\inst6|Add15~5\) # (GND)))
-- \inst6|Add15~7\ = CARRY((!\inst6|Add15~5\) # (!\inst6|pipe5_x_pos\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe5_x_pos\(6),
	datad => VCC,
	cin => \inst6|Add15~5\,
	combout => \inst6|Add15~6_combout\,
	cout => \inst6|Add15~7\);

-- Location: LCCOMB_X19_Y22_N24
\inst6|Add15~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add15~8_combout\ = (\inst6|pipe5_x_pos\(7) & (!\inst6|Add15~7\ & VCC)) # (!\inst6|pipe5_x_pos\(7) & (\inst6|Add15~7\ $ (GND)))
-- \inst6|Add15~9\ = CARRY((!\inst6|pipe5_x_pos\(7) & !\inst6|Add15~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe5_x_pos\(7),
	datad => VCC,
	cin => \inst6|Add15~7\,
	combout => \inst6|Add15~8_combout\,
	cout => \inst6|Add15~9\);

-- Location: LCCOMB_X19_Y22_N26
\inst6|Add15~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add15~10_combout\ = (\inst6|pipe5_x_pos\(8) & ((\inst6|Add15~9\) # (GND))) # (!\inst6|pipe5_x_pos\(8) & (!\inst6|Add15~9\))
-- \inst6|Add15~11\ = CARRY((\inst6|pipe5_x_pos\(8)) # (!\inst6|Add15~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe5_x_pos\(8),
	datad => VCC,
	cin => \inst6|Add15~9\,
	combout => \inst6|Add15~10_combout\,
	cout => \inst6|Add15~11\);

-- Location: LCCOMB_X19_Y22_N28
\inst6|Add15~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add15~12_combout\ = \inst6|Add15~11\ $ (!\inst6|pipe5_x_pos\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst6|pipe5_x_pos\(9),
	cin => \inst6|Add15~11\,
	combout => \inst6|Add15~12_combout\);

-- Location: LCCOMB_X20_Y22_N4
\inst6|LessThan24~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan24~1_cout\ = CARRY((!\inst6|pipe5_x_pos\(0) & \inst1|pixel_column\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe5_x_pos\(0),
	datab => \inst1|pixel_column\(0),
	datad => VCC,
	cout => \inst6|LessThan24~1_cout\);

-- Location: LCCOMB_X20_Y22_N6
\inst6|LessThan24~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan24~3_cout\ = CARRY((\inst6|pipe5_x_pos\(1) & ((!\inst6|LessThan24~1_cout\) # (!\inst1|pixel_column\(1)))) # (!\inst6|pipe5_x_pos\(1) & (!\inst1|pixel_column\(1) & !\inst6|LessThan24~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe5_x_pos\(1),
	datab => \inst1|pixel_column\(1),
	datad => VCC,
	cin => \inst6|LessThan24~1_cout\,
	cout => \inst6|LessThan24~3_cout\);

-- Location: LCCOMB_X20_Y22_N8
\inst6|LessThan24~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan24~5_cout\ = CARRY((\inst6|pipe5_x_pos\(2) & ((\inst1|pixel_column\(2)) # (!\inst6|LessThan24~3_cout\))) # (!\inst6|pipe5_x_pos\(2) & (\inst1|pixel_column\(2) & !\inst6|LessThan24~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe5_x_pos\(2),
	datab => \inst1|pixel_column\(2),
	datad => VCC,
	cin => \inst6|LessThan24~3_cout\,
	cout => \inst6|LessThan24~5_cout\);

-- Location: LCCOMB_X20_Y22_N10
\inst6|LessThan24~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan24~7_cout\ = CARRY((\inst6|Add15~0_combout\ & ((!\inst6|LessThan24~5_cout\) # (!\inst1|pixel_column\(3)))) # (!\inst6|Add15~0_combout\ & (!\inst1|pixel_column\(3) & !\inst6|LessThan24~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add15~0_combout\,
	datab => \inst1|pixel_column\(3),
	datad => VCC,
	cin => \inst6|LessThan24~5_cout\,
	cout => \inst6|LessThan24~7_cout\);

-- Location: LCCOMB_X20_Y22_N12
\inst6|LessThan24~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan24~9_cout\ = CARRY((\inst1|pixel_column\(4) & ((!\inst6|LessThan24~7_cout\) # (!\inst6|Add15~2_combout\))) # (!\inst1|pixel_column\(4) & (!\inst6|Add15~2_combout\ & !\inst6|LessThan24~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(4),
	datab => \inst6|Add15~2_combout\,
	datad => VCC,
	cin => \inst6|LessThan24~7_cout\,
	cout => \inst6|LessThan24~9_cout\);

-- Location: LCCOMB_X20_Y22_N14
\inst6|LessThan24~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan24~11_cout\ = CARRY((\inst1|pixel_column\(5) & (\inst6|Add15~4_combout\ & !\inst6|LessThan24~9_cout\)) # (!\inst1|pixel_column\(5) & ((\inst6|Add15~4_combout\) # (!\inst6|LessThan24~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(5),
	datab => \inst6|Add15~4_combout\,
	datad => VCC,
	cin => \inst6|LessThan24~9_cout\,
	cout => \inst6|LessThan24~11_cout\);

-- Location: LCCOMB_X20_Y22_N16
\inst6|LessThan24~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan24~13_cout\ = CARRY((\inst1|pixel_column\(6) & ((!\inst6|LessThan24~11_cout\) # (!\inst6|Add15~6_combout\))) # (!\inst1|pixel_column\(6) & (!\inst6|Add15~6_combout\ & !\inst6|LessThan24~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(6),
	datab => \inst6|Add15~6_combout\,
	datad => VCC,
	cin => \inst6|LessThan24~11_cout\,
	cout => \inst6|LessThan24~13_cout\);

-- Location: LCCOMB_X20_Y22_N18
\inst6|LessThan24~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan24~15_cout\ = CARRY((\inst1|pixel_column\(7) & (\inst6|Add15~8_combout\ & !\inst6|LessThan24~13_cout\)) # (!\inst1|pixel_column\(7) & ((\inst6|Add15~8_combout\) # (!\inst6|LessThan24~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(7),
	datab => \inst6|Add15~8_combout\,
	datad => VCC,
	cin => \inst6|LessThan24~13_cout\,
	cout => \inst6|LessThan24~15_cout\);

-- Location: LCCOMB_X20_Y22_N20
\inst6|LessThan24~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan24~17_cout\ = CARRY((\inst6|Add15~10_combout\ & (\inst1|pixel_column\(8) & !\inst6|LessThan24~15_cout\)) # (!\inst6|Add15~10_combout\ & ((\inst1|pixel_column\(8)) # (!\inst6|LessThan24~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add15~10_combout\,
	datab => \inst1|pixel_column\(8),
	datad => VCC,
	cin => \inst6|LessThan24~15_cout\,
	cout => \inst6|LessThan24~17_cout\);

-- Location: LCCOMB_X20_Y22_N22
\inst6|LessThan24~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan24~18_combout\ = (\inst1|pixel_column\(9) & ((\inst6|LessThan24~17_cout\) # (!\inst6|Add15~12_combout\))) # (!\inst1|pixel_column\(9) & (\inst6|LessThan24~17_cout\ & !\inst6|Add15~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(9),
	datad => \inst6|Add15~12_combout\,
	cin => \inst6|LessThan24~17_cout\,
	combout => \inst6|LessThan24~18_combout\);

-- Location: LCCOMB_X17_Y21_N16
\inst6|LessThan30~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan30~1_cout\ = CARRY((!\inst1|pixel_row\(1) & !\inst6|pipe5_bottom_y_pos\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(1),
	datab => \inst6|pipe5_bottom_y_pos\(1),
	datad => VCC,
	cout => \inst6|LessThan30~1_cout\);

-- Location: LCCOMB_X17_Y21_N18
\inst6|LessThan30~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan30~3_cout\ = CARRY((\inst6|pipe5_bottom_y_pos\(2) & ((\inst6|Add17~0_combout\) # (!\inst6|LessThan30~1_cout\))) # (!\inst6|pipe5_bottom_y_pos\(2) & (\inst6|Add17~0_combout\ & !\inst6|LessThan30~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe5_bottom_y_pos\(2),
	datab => \inst6|Add17~0_combout\,
	datad => VCC,
	cin => \inst6|LessThan30~1_cout\,
	cout => \inst6|LessThan30~3_cout\);

-- Location: LCCOMB_X17_Y21_N20
\inst6|LessThan30~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan30~5_cout\ = CARRY((\inst6|pipe5_bottom_y_pos\(3) & (!\inst6|Add17~2_combout\ & !\inst6|LessThan30~3_cout\)) # (!\inst6|pipe5_bottom_y_pos\(3) & ((!\inst6|LessThan30~3_cout\) # (!\inst6|Add17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe5_bottom_y_pos\(3),
	datab => \inst6|Add17~2_combout\,
	datad => VCC,
	cin => \inst6|LessThan30~3_cout\,
	cout => \inst6|LessThan30~5_cout\);

-- Location: LCCOMB_X17_Y21_N22
\inst6|LessThan30~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan30~7_cout\ = CARRY((\inst6|Add17~4_combout\ & ((\inst6|pipe5_bottom_y_pos\(4)) # (!\inst6|LessThan30~5_cout\))) # (!\inst6|Add17~4_combout\ & (\inst6|pipe5_bottom_y_pos\(4) & !\inst6|LessThan30~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add17~4_combout\,
	datab => \inst6|pipe5_bottom_y_pos\(4),
	datad => VCC,
	cin => \inst6|LessThan30~5_cout\,
	cout => \inst6|LessThan30~7_cout\);

-- Location: LCCOMB_X17_Y21_N24
\inst6|LessThan30~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan30~9_cout\ = CARRY((\inst6|pipe5_bottom_y_pos\(5) & ((!\inst6|LessThan30~7_cout\) # (!\inst6|Add17~6_combout\))) # (!\inst6|pipe5_bottom_y_pos\(5) & (!\inst6|Add17~6_combout\ & !\inst6|LessThan30~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe5_bottom_y_pos\(5),
	datab => \inst6|Add17~6_combout\,
	datad => VCC,
	cin => \inst6|LessThan30~7_cout\,
	cout => \inst6|LessThan30~9_cout\);

-- Location: LCCOMB_X17_Y21_N26
\inst6|LessThan30~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan30~11_cout\ = CARRY((\inst6|pipe5_bottom_y_pos\(6) & ((\inst6|Add17~8_combout\) # (!\inst6|LessThan30~9_cout\))) # (!\inst6|pipe5_bottom_y_pos\(6) & (\inst6|Add17~8_combout\ & !\inst6|LessThan30~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe5_bottom_y_pos\(6),
	datab => \inst6|Add17~8_combout\,
	datad => VCC,
	cin => \inst6|LessThan30~9_cout\,
	cout => \inst6|LessThan30~11_cout\);

-- Location: LCCOMB_X17_Y21_N28
\inst6|LessThan30~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan30~13_cout\ = CARRY((\inst6|pipe5_bottom_y_pos\(7) & ((!\inst6|LessThan30~11_cout\) # (!\inst6|Add17~10_combout\))) # (!\inst6|pipe5_bottom_y_pos\(7) & (!\inst6|Add17~10_combout\ & !\inst6|LessThan30~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe5_bottom_y_pos\(7),
	datab => \inst6|Add17~10_combout\,
	datad => VCC,
	cin => \inst6|LessThan30~11_cout\,
	cout => \inst6|LessThan30~13_cout\);

-- Location: LCCOMB_X17_Y21_N30
\inst6|LessThan30~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan30~14_combout\ = (\inst6|pipe5_bottom_y_pos\(8) & (\inst6|LessThan30~13_cout\ & !\inst6|Add17~12_combout\)) # (!\inst6|pipe5_bottom_y_pos\(8) & ((\inst6|LessThan30~13_cout\) # (!\inst6|Add17~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe5_bottom_y_pos\(8),
	datad => \inst6|Add17~12_combout\,
	cin => \inst6|LessThan30~13_cout\,
	combout => \inst6|LessThan30~14_combout\);

-- Location: LCCOMB_X16_Y21_N18
\inst6|Add16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add16~0_combout\ = (\inst6|pipe5_bottom_y_pos\(5) & (\inst6|pipe5_bottom_y_pos\(4) $ (GND))) # (!\inst6|pipe5_bottom_y_pos\(5) & (!\inst6|pipe5_bottom_y_pos\(4) & VCC))
-- \inst6|Add16~1\ = CARRY((\inst6|pipe5_bottom_y_pos\(5) & !\inst6|pipe5_bottom_y_pos\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe5_bottom_y_pos\(5),
	datab => \inst6|pipe5_bottom_y_pos\(4),
	datad => VCC,
	combout => \inst6|Add16~0_combout\,
	cout => \inst6|Add16~1\);

-- Location: LCCOMB_X16_Y21_N20
\inst6|Add16~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add16~2_combout\ = (\inst6|pipe5_bottom_y_pos\(1) & (\inst6|Add16~1\ & VCC)) # (!\inst6|pipe5_bottom_y_pos\(1) & (!\inst6|Add16~1\))
-- \inst6|Add16~3\ = CARRY((!\inst6|pipe5_bottom_y_pos\(1) & !\inst6|Add16~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe5_bottom_y_pos\(1),
	datad => VCC,
	cin => \inst6|Add16~1\,
	combout => \inst6|Add16~2_combout\,
	cout => \inst6|Add16~3\);

-- Location: LCCOMB_X16_Y21_N22
\inst6|Add16~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add16~4_combout\ = (\inst6|pipe5_bottom_y_pos\(2) & (\inst6|Add16~3\ $ (GND))) # (!\inst6|pipe5_bottom_y_pos\(2) & (!\inst6|Add16~3\ & VCC))
-- \inst6|Add16~5\ = CARRY((\inst6|pipe5_bottom_y_pos\(2) & !\inst6|Add16~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe5_bottom_y_pos\(2),
	datad => VCC,
	cin => \inst6|Add16~3\,
	combout => \inst6|Add16~4_combout\,
	cout => \inst6|Add16~5\);

-- Location: LCCOMB_X16_Y21_N24
\inst6|Add16~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add16~6_combout\ = (\inst6|pipe5_bottom_y_pos\(4) & ((\inst6|Add16~5\) # (GND))) # (!\inst6|pipe5_bottom_y_pos\(4) & (!\inst6|Add16~5\))
-- \inst6|Add16~7\ = CARRY((\inst6|pipe5_bottom_y_pos\(4)) # (!\inst6|Add16~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe5_bottom_y_pos\(4),
	datad => VCC,
	cin => \inst6|Add16~5\,
	combout => \inst6|Add16~6_combout\,
	cout => \inst6|Add16~7\);

-- Location: LCCOMB_X16_Y21_N26
\inst6|Add16~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add16~8_combout\ = (\inst6|pipe5_top_y_pos\(7) & (!\inst6|Add16~7\ & VCC)) # (!\inst6|pipe5_top_y_pos\(7) & (\inst6|Add16~7\ $ (GND)))
-- \inst6|Add16~9\ = CARRY((!\inst6|pipe5_top_y_pos\(7) & !\inst6|Add16~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe5_top_y_pos\(7),
	datad => VCC,
	cin => \inst6|Add16~7\,
	combout => \inst6|Add16~8_combout\,
	cout => \inst6|Add16~9\);

-- Location: LCCOMB_X16_Y21_N28
\inst6|Add16~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add16~10_combout\ = (\inst6|pipe5_top_y_pos\(8) & (!\inst6|Add16~9\)) # (!\inst6|pipe5_top_y_pos\(8) & ((\inst6|Add16~9\) # (GND)))
-- \inst6|Add16~11\ = CARRY((!\inst6|Add16~9\) # (!\inst6|pipe5_top_y_pos\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe5_top_y_pos\(8),
	datad => VCC,
	cin => \inst6|Add16~9\,
	combout => \inst6|Add16~10_combout\,
	cout => \inst6|Add16~11\);

-- Location: LCCOMB_X16_Y21_N0
\inst6|LessThan25~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan25~1_cout\ = CARRY(\inst1|pixel_row\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(0),
	datad => VCC,
	cout => \inst6|LessThan25~1_cout\);

-- Location: LCCOMB_X16_Y21_N2
\inst6|LessThan25~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan25~3_cout\ = CARRY((\inst1|pixel_row\(1) & (\inst6|pipe5_bottom_y_pos\(1) & !\inst6|LessThan25~1_cout\)) # (!\inst1|pixel_row\(1) & ((\inst6|pipe5_bottom_y_pos\(1)) # (!\inst6|LessThan25~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(1),
	datab => \inst6|pipe5_bottom_y_pos\(1),
	datad => VCC,
	cin => \inst6|LessThan25~1_cout\,
	cout => \inst6|LessThan25~3_cout\);

-- Location: LCCOMB_X16_Y21_N4
\inst6|LessThan25~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan25~5_cout\ = CARRY((\inst6|pipe5_bottom_y_pos\(5) & ((\inst1|pixel_row\(2)) # (!\inst6|LessThan25~3_cout\))) # (!\inst6|pipe5_bottom_y_pos\(5) & (\inst1|pixel_row\(2) & !\inst6|LessThan25~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe5_bottom_y_pos\(5),
	datab => \inst1|pixel_row\(2),
	datad => VCC,
	cin => \inst6|LessThan25~3_cout\,
	cout => \inst6|LessThan25~5_cout\);

-- Location: LCCOMB_X16_Y21_N6
\inst6|LessThan25~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan25~7_cout\ = CARRY((\inst1|pixel_row\(3) & (\inst6|Add16~0_combout\ & !\inst6|LessThan25~5_cout\)) # (!\inst1|pixel_row\(3) & ((\inst6|Add16~0_combout\) # (!\inst6|LessThan25~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(3),
	datab => \inst6|Add16~0_combout\,
	datad => VCC,
	cin => \inst6|LessThan25~5_cout\,
	cout => \inst6|LessThan25~7_cout\);

-- Location: LCCOMB_X16_Y21_N8
\inst6|LessThan25~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan25~9_cout\ = CARRY((\inst6|Add16~2_combout\ & (\inst1|pixel_row\(4) & !\inst6|LessThan25~7_cout\)) # (!\inst6|Add16~2_combout\ & ((\inst1|pixel_row\(4)) # (!\inst6|LessThan25~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add16~2_combout\,
	datab => \inst1|pixel_row\(4),
	datad => VCC,
	cin => \inst6|LessThan25~7_cout\,
	cout => \inst6|LessThan25~9_cout\);

-- Location: LCCOMB_X16_Y21_N10
\inst6|LessThan25~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan25~11_cout\ = CARRY((\inst6|Add16~4_combout\ & ((!\inst6|LessThan25~9_cout\) # (!\inst1|pixel_row\(5)))) # (!\inst6|Add16~4_combout\ & (!\inst1|pixel_row\(5) & !\inst6|LessThan25~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add16~4_combout\,
	datab => \inst1|pixel_row\(5),
	datad => VCC,
	cin => \inst6|LessThan25~9_cout\,
	cout => \inst6|LessThan25~11_cout\);

-- Location: LCCOMB_X16_Y21_N12
\inst6|LessThan25~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan25~13_cout\ = CARRY((\inst1|pixel_row\(6) & ((!\inst6|LessThan25~11_cout\) # (!\inst6|Add16~6_combout\))) # (!\inst1|pixel_row\(6) & (!\inst6|Add16~6_combout\ & !\inst6|LessThan25~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(6),
	datab => \inst6|Add16~6_combout\,
	datad => VCC,
	cin => \inst6|LessThan25~11_cout\,
	cout => \inst6|LessThan25~13_cout\);

-- Location: LCCOMB_X16_Y21_N14
\inst6|LessThan25~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan25~15_cout\ = CARRY((\inst6|Add16~8_combout\ & ((!\inst6|LessThan25~13_cout\) # (!\inst1|pixel_row\(7)))) # (!\inst6|Add16~8_combout\ & (!\inst1|pixel_row\(7) & !\inst6|LessThan25~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add16~8_combout\,
	datab => \inst1|pixel_row\(7),
	datad => VCC,
	cin => \inst6|LessThan25~13_cout\,
	cout => \inst6|LessThan25~15_cout\);

-- Location: LCCOMB_X16_Y21_N16
\inst6|LessThan25~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan25~16_combout\ = (\inst1|pixel_row\(8) & ((!\inst6|Add16~10_combout\) # (!\inst6|LessThan25~15_cout\))) # (!\inst1|pixel_row\(8) & (!\inst6|LessThan25~15_cout\ & !\inst6|Add16~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pixel_row\(8),
	datad => \inst6|Add16~10_combout\,
	cin => \inst6|LessThan25~15_cout\,
	combout => \inst6|LessThan25~16_combout\);

-- Location: LCCOMB_X16_Y21_N30
\inst6|Add16~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add16~12_combout\ = !\inst6|Add16~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst6|Add16~11\,
	combout => \inst6|Add16~12_combout\);

-- Location: LCCOMB_X21_Y19_N18
\inst11|Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add4~2_combout\ = (\inst1|pixel_column\(5) & (!\inst11|Add4~1\)) # (!\inst1|pixel_column\(5) & ((\inst11|Add4~1\) # (GND)))
-- \inst11|Add4~3\ = CARRY((!\inst11|Add4~1\) # (!\inst1|pixel_column\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pixel_column\(5),
	datad => VCC,
	cin => \inst11|Add4~1\,
	combout => \inst11|Add4~2_combout\,
	cout => \inst11|Add4~3\);

-- Location: LCCOMB_X20_Y20_N12
\inst6|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add1~0_combout\ = \inst6|pipe1_x_pos\(0) $ (VCC)
-- \inst6|Add1~1\ = CARRY(\inst6|pipe1_x_pos\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe1_x_pos\(0),
	datad => VCC,
	combout => \inst6|Add1~0_combout\,
	cout => \inst6|Add1~1\);

-- Location: LCCOMB_X20_Y20_N16
\inst6|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add1~4_combout\ = (\inst6|pipe1_x_pos\(2) & ((GND) # (!\inst6|Add1~3\))) # (!\inst6|pipe1_x_pos\(2) & (\inst6|Add1~3\ $ (GND)))
-- \inst6|Add1~5\ = CARRY((\inst6|pipe1_x_pos\(2)) # (!\inst6|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe1_x_pos\(2),
	datad => VCC,
	cin => \inst6|Add1~3\,
	combout => \inst6|Add1~4_combout\,
	cout => \inst6|Add1~5\);

-- Location: LCCOMB_X20_Y20_N22
\inst6|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add1~10_combout\ = (\inst6|pipe1_x_pos\(5) & (\inst6|Add1~9\ & VCC)) # (!\inst6|pipe1_x_pos\(5) & (!\inst6|Add1~9\))
-- \inst6|Add1~11\ = CARRY((!\inst6|pipe1_x_pos\(5) & !\inst6|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe1_x_pos\(5),
	datad => VCC,
	cin => \inst6|Add1~9\,
	combout => \inst6|Add1~10_combout\,
	cout => \inst6|Add1~11\);

-- Location: LCCOMB_X14_Y24_N0
\inst6|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add0~0_combout\ = \inst6|pipe_move:clk_cnt[0]~q\ $ (GND)
-- \inst6|Add0~1\ = CARRY(!\inst6|pipe_move:clk_cnt[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe_move:clk_cnt[0]~q\,
	datad => VCC,
	combout => \inst6|Add0~0_combout\,
	cout => \inst6|Add0~1\);

-- Location: LCCOMB_X14_Y24_N10
\inst6|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add0~10_combout\ = (\inst6|pipe_move:clk_cnt[5]~q\ & (!\inst6|Add0~9\)) # (!\inst6|pipe_move:clk_cnt[5]~q\ & ((\inst6|Add0~9\) # (GND)))
-- \inst6|Add0~11\ = CARRY((!\inst6|Add0~9\) # (!\inst6|pipe_move:clk_cnt[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe_move:clk_cnt[5]~q\,
	datad => VCC,
	cin => \inst6|Add0~9\,
	combout => \inst6|Add0~10_combout\,
	cout => \inst6|Add0~11\);

-- Location: LCCOMB_X14_Y24_N14
\inst6|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add0~14_combout\ = (\inst6|pipe_move:clk_cnt[7]~q\ & (!\inst6|Add0~13\)) # (!\inst6|pipe_move:clk_cnt[7]~q\ & ((\inst6|Add0~13\) # (GND)))
-- \inst6|Add0~15\ = CARRY((!\inst6|Add0~13\) # (!\inst6|pipe_move:clk_cnt[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe_move:clk_cnt[7]~q\,
	datad => VCC,
	cin => \inst6|Add0~13\,
	combout => \inst6|Add0~14_combout\,
	cout => \inst6|Add0~15\);

-- Location: LCCOMB_X14_Y24_N22
\inst6|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add0~22_combout\ = (\inst6|pipe_move:clk_cnt[11]~q\ & (!\inst6|Add0~21\)) # (!\inst6|pipe_move:clk_cnt[11]~q\ & ((\inst6|Add0~21\) # (GND)))
-- \inst6|Add0~23\ = CARRY((!\inst6|Add0~21\) # (!\inst6|pipe_move:clk_cnt[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe_move:clk_cnt[11]~q\,
	datad => VCC,
	cin => \inst6|Add0~21\,
	combout => \inst6|Add0~22_combout\,
	cout => \inst6|Add0~23\);

-- Location: LCCOMB_X14_Y23_N4
\inst6|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add0~36_combout\ = (\inst6|pipe_move:clk_cnt[18]~q\ & (\inst6|Add0~35\ $ (GND))) # (!\inst6|pipe_move:clk_cnt[18]~q\ & (!\inst6|Add0~35\ & VCC))
-- \inst6|Add0~37\ = CARRY((\inst6|pipe_move:clk_cnt[18]~q\ & !\inst6|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe_move:clk_cnt[18]~q\,
	datad => VCC,
	cin => \inst6|Add0~35\,
	combout => \inst6|Add0~36_combout\,
	cout => \inst6|Add0~37\);

-- Location: LCCOMB_X14_Y23_N6
\inst6|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add0~38_combout\ = (\inst6|pipe_move:clk_cnt[19]~q\ & (!\inst6|Add0~37\)) # (!\inst6|pipe_move:clk_cnt[19]~q\ & ((\inst6|Add0~37\) # (GND)))
-- \inst6|Add0~39\ = CARRY((!\inst6|Add0~37\) # (!\inst6|pipe_move:clk_cnt[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe_move:clk_cnt[19]~q\,
	datad => VCC,
	cin => \inst6|Add0~37\,
	combout => \inst6|Add0~38_combout\,
	cout => \inst6|Add0~39\);

-- Location: LCCOMB_X14_Y23_N16
\inst6|Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add0~48_combout\ = (\inst6|pipe_move:clk_cnt[24]~q\ & (\inst6|Add0~47\ $ (GND))) # (!\inst6|pipe_move:clk_cnt[24]~q\ & (!\inst6|Add0~47\ & VCC))
-- \inst6|Add0~49\ = CARRY((\inst6|pipe_move:clk_cnt[24]~q\ & !\inst6|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe_move:clk_cnt[24]~q\,
	datad => VCC,
	cin => \inst6|Add0~47\,
	combout => \inst6|Add0~48_combout\,
	cout => \inst6|Add0~49\);

-- Location: LCCOMB_X14_Y23_N18
\inst6|Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add0~50_combout\ = (\inst6|pipe_move:clk_cnt[25]~q\ & (!\inst6|Add0~49\)) # (!\inst6|pipe_move:clk_cnt[25]~q\ & ((\inst6|Add0~49\) # (GND)))
-- \inst6|Add0~51\ = CARRY((!\inst6|Add0~49\) # (!\inst6|pipe_move:clk_cnt[25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe_move:clk_cnt[25]~q\,
	datad => VCC,
	cin => \inst6|Add0~49\,
	combout => \inst6|Add0~50_combout\,
	cout => \inst6|Add0~51\);

-- Location: LCCOMB_X14_Y23_N20
\inst6|Add0~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add0~52_combout\ = (\inst6|pipe_move:clk_cnt[26]~q\ & (\inst6|Add0~51\ $ (GND))) # (!\inst6|pipe_move:clk_cnt[26]~q\ & (!\inst6|Add0~51\ & VCC))
-- \inst6|Add0~53\ = CARRY((\inst6|pipe_move:clk_cnt[26]~q\ & !\inst6|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe_move:clk_cnt[26]~q\,
	datad => VCC,
	cin => \inst6|Add0~51\,
	combout => \inst6|Add0~52_combout\,
	cout => \inst6|Add0~53\);

-- Location: LCCOMB_X14_Y23_N22
\inst6|Add0~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add0~54_combout\ = (\inst6|pipe_move:clk_cnt[27]~q\ & (!\inst6|Add0~53\)) # (!\inst6|pipe_move:clk_cnt[27]~q\ & ((\inst6|Add0~53\) # (GND)))
-- \inst6|Add0~55\ = CARRY((!\inst6|Add0~53\) # (!\inst6|pipe_move:clk_cnt[27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe_move:clk_cnt[27]~q\,
	datad => VCC,
	cin => \inst6|Add0~53\,
	combout => \inst6|Add0~54_combout\,
	cout => \inst6|Add0~55\);

-- Location: LCCOMB_X14_Y23_N24
\inst6|Add0~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add0~56_combout\ = (\inst6|pipe_move:clk_cnt[28]~q\ & (\inst6|Add0~55\ $ (GND))) # (!\inst6|pipe_move:clk_cnt[28]~q\ & (!\inst6|Add0~55\ & VCC))
-- \inst6|Add0~57\ = CARRY((\inst6|pipe_move:clk_cnt[28]~q\ & !\inst6|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe_move:clk_cnt[28]~q\,
	datad => VCC,
	cin => \inst6|Add0~55\,
	combout => \inst6|Add0~56_combout\,
	cout => \inst6|Add0~57\);

-- Location: LCCOMB_X14_Y23_N26
\inst6|Add0~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add0~58_combout\ = (\inst6|pipe_move:clk_cnt[29]~q\ & (!\inst6|Add0~57\)) # (!\inst6|pipe_move:clk_cnt[29]~q\ & ((\inst6|Add0~57\) # (GND)))
-- \inst6|Add0~59\ = CARRY((!\inst6|Add0~57\) # (!\inst6|pipe_move:clk_cnt[29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe_move:clk_cnt[29]~q\,
	datad => VCC,
	cin => \inst6|Add0~57\,
	combout => \inst6|Add0~58_combout\,
	cout => \inst6|Add0~59\);

-- Location: LCCOMB_X14_Y23_N28
\inst6|Add0~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add0~60_combout\ = (\inst6|pipe_move:clk_cnt[30]~q\ & (\inst6|Add0~59\ $ (GND))) # (!\inst6|pipe_move:clk_cnt[30]~q\ & (!\inst6|Add0~59\ & VCC))
-- \inst6|Add0~61\ = CARRY((\inst6|pipe_move:clk_cnt[30]~q\ & !\inst6|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe_move:clk_cnt[30]~q\,
	datad => VCC,
	cin => \inst6|Add0~59\,
	combout => \inst6|Add0~60_combout\,
	cout => \inst6|Add0~61\);

-- Location: LCCOMB_X14_Y23_N30
\inst6|Add0~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add0~62_combout\ = \inst6|pipe_move:clk_cnt[31]~q\ $ (\inst6|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe_move:clk_cnt[31]~q\,
	cin => \inst6|Add0~61\,
	combout => \inst6|Add0~62_combout\);

-- Location: LCCOMB_X16_Y17_N2
\inst6|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add2~2_combout\ = (\inst6|pipe2_x_pos\(1) & (\inst6|Add2~1\ & VCC)) # (!\inst6|pipe2_x_pos\(1) & (!\inst6|Add2~1\))
-- \inst6|Add2~3\ = CARRY((!\inst6|pipe2_x_pos\(1) & !\inst6|Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe2_x_pos\(1),
	datad => VCC,
	cin => \inst6|Add2~1\,
	combout => \inst6|Add2~2_combout\,
	cout => \inst6|Add2~3\);

-- Location: LCCOMB_X16_Y17_N8
\inst6|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add2~8_combout\ = (\inst6|pipe2_x_pos\(4) & ((GND) # (!\inst6|Add2~7\))) # (!\inst6|pipe2_x_pos\(4) & (\inst6|Add2~7\ $ (GND)))
-- \inst6|Add2~9\ = CARRY((\inst6|pipe2_x_pos\(4)) # (!\inst6|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe2_x_pos\(4),
	datad => VCC,
	cin => \inst6|Add2~7\,
	combout => \inst6|Add2~8_combout\,
	cout => \inst6|Add2~9\);

-- Location: LCCOMB_X16_Y17_N10
\inst6|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add2~10_combout\ = (\inst6|pipe2_x_pos\(5) & (\inst6|Add2~9\ & VCC)) # (!\inst6|pipe2_x_pos\(5) & (!\inst6|Add2~9\))
-- \inst6|Add2~11\ = CARRY((!\inst6|pipe2_x_pos\(5) & !\inst6|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe2_x_pos\(5),
	datad => VCC,
	cin => \inst6|Add2~9\,
	combout => \inst6|Add2~10_combout\,
	cout => \inst6|Add2~11\);

-- Location: LCCOMB_X16_Y17_N12
\inst6|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add2~12_combout\ = (\inst6|pipe2_x_pos\(6) & (\inst6|Add2~11\ $ (GND))) # (!\inst6|pipe2_x_pos\(6) & ((GND) # (!\inst6|Add2~11\)))
-- \inst6|Add2~13\ = CARRY((!\inst6|Add2~11\) # (!\inst6|pipe2_x_pos\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe2_x_pos\(6),
	datad => VCC,
	cin => \inst6|Add2~11\,
	combout => \inst6|Add2~12_combout\,
	cout => \inst6|Add2~13\);

-- Location: LCCOMB_X16_Y17_N16
\inst6|Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add2~16_combout\ = (\inst6|pipe2_x_pos\(8) & (\inst6|Add2~15\ $ (GND))) # (!\inst6|pipe2_x_pos\(8) & ((GND) # (!\inst6|Add2~15\)))
-- \inst6|Add2~17\ = CARRY((!\inst6|Add2~15\) # (!\inst6|pipe2_x_pos\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe2_x_pos\(8),
	datad => VCC,
	cin => \inst6|Add2~15\,
	combout => \inst6|Add2~16_combout\,
	cout => \inst6|Add2~17\);

-- Location: LCCOMB_X19_Y20_N8
\inst6|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add3~8_combout\ = (\inst6|pipe3_x_pos\(4) & (\inst6|Add3~7\ $ (GND))) # (!\inst6|pipe3_x_pos\(4) & ((GND) # (!\inst6|Add3~7\)))
-- \inst6|Add3~9\ = CARRY((!\inst6|Add3~7\) # (!\inst6|pipe3_x_pos\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe3_x_pos\(4),
	datad => VCC,
	cin => \inst6|Add3~7\,
	combout => \inst6|Add3~8_combout\,
	cout => \inst6|Add3~9\);

-- Location: LCCOMB_X17_Y18_N2
\inst6|Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add4~0_combout\ = \inst6|pipe4_x_pos\(0) $ (VCC)
-- \inst6|Add4~1\ = CARRY(\inst6|pipe4_x_pos\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe4_x_pos\(0),
	datad => VCC,
	combout => \inst6|Add4~0_combout\,
	cout => \inst6|Add4~1\);

-- Location: LCCOMB_X17_Y18_N4
\inst6|Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add4~2_combout\ = (\inst6|pipe4_x_pos\(1) & (\inst6|Add4~1\ & VCC)) # (!\inst6|pipe4_x_pos\(1) & (!\inst6|Add4~1\))
-- \inst6|Add4~3\ = CARRY((!\inst6|pipe4_x_pos\(1) & !\inst6|Add4~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe4_x_pos\(1),
	datad => VCC,
	cin => \inst6|Add4~1\,
	combout => \inst6|Add4~2_combout\,
	cout => \inst6|Add4~3\);

-- Location: LCCOMB_X17_Y18_N8
\inst6|Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add4~6_combout\ = (\inst6|pipe4_x_pos\(3) & (!\inst6|Add4~5\)) # (!\inst6|pipe4_x_pos\(3) & (\inst6|Add4~5\ & VCC))
-- \inst6|Add4~7\ = CARRY((\inst6|pipe4_x_pos\(3) & !\inst6|Add4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe4_x_pos\(3),
	datad => VCC,
	cin => \inst6|Add4~5\,
	combout => \inst6|Add4~6_combout\,
	cout => \inst6|Add4~7\);

-- Location: LCCOMB_X17_Y18_N18
\inst6|Add4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add4~16_combout\ = (\inst6|pipe4_x_pos\(8) & ((GND) # (!\inst6|Add4~15\))) # (!\inst6|pipe4_x_pos\(8) & (\inst6|Add4~15\ $ (GND)))
-- \inst6|Add4~17\ = CARRY((\inst6|pipe4_x_pos\(8)) # (!\inst6|Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe4_x_pos\(8),
	datad => VCC,
	cin => \inst6|Add4~15\,
	combout => \inst6|Add4~16_combout\,
	cout => \inst6|Add4~17\);

-- Location: LCCOMB_X17_Y18_N20
\inst6|Add4~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add4~18_combout\ = \inst6|Add4~17\ $ (!\inst6|pipe4_x_pos\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst6|pipe4_x_pos\(9),
	cin => \inst6|Add4~17\,
	combout => \inst6|Add4~18_combout\);

-- Location: LCCOMB_X16_Y22_N12
\inst6|Add5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add5~0_combout\ = \inst6|pipe5_x_pos\(0) $ (VCC)
-- \inst6|Add5~1\ = CARRY(\inst6|pipe5_x_pos\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe5_x_pos\(0),
	datad => VCC,
	combout => \inst6|Add5~0_combout\,
	cout => \inst6|Add5~1\);

-- Location: LCCOMB_X16_Y22_N14
\inst6|Add5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add5~2_combout\ = (\inst6|pipe5_x_pos\(1) & (\inst6|Add5~1\ & VCC)) # (!\inst6|pipe5_x_pos\(1) & (!\inst6|Add5~1\))
-- \inst6|Add5~3\ = CARRY((!\inst6|pipe5_x_pos\(1) & !\inst6|Add5~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe5_x_pos\(1),
	datad => VCC,
	cin => \inst6|Add5~1\,
	combout => \inst6|Add5~2_combout\,
	cout => \inst6|Add5~3\);

-- Location: LCCOMB_X16_Y22_N16
\inst6|Add5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add5~4_combout\ = (\inst6|pipe5_x_pos\(2) & ((GND) # (!\inst6|Add5~3\))) # (!\inst6|pipe5_x_pos\(2) & (\inst6|Add5~3\ $ (GND)))
-- \inst6|Add5~5\ = CARRY((\inst6|pipe5_x_pos\(2)) # (!\inst6|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe5_x_pos\(2),
	datad => VCC,
	cin => \inst6|Add5~3\,
	combout => \inst6|Add5~4_combout\,
	cout => \inst6|Add5~5\);

-- Location: LCCOMB_X16_Y22_N18
\inst6|Add5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add5~6_combout\ = (\inst6|pipe5_x_pos\(3) & (\inst6|Add5~5\ & VCC)) # (!\inst6|pipe5_x_pos\(3) & (!\inst6|Add5~5\))
-- \inst6|Add5~7\ = CARRY((!\inst6|pipe5_x_pos\(3) & !\inst6|Add5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe5_x_pos\(3),
	datad => VCC,
	cin => \inst6|Add5~5\,
	combout => \inst6|Add5~6_combout\,
	cout => \inst6|Add5~7\);

-- Location: LCCOMB_X16_Y22_N20
\inst6|Add5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add5~8_combout\ = (\inst6|pipe5_x_pos\(4) & ((GND) # (!\inst6|Add5~7\))) # (!\inst6|pipe5_x_pos\(4) & (\inst6|Add5~7\ $ (GND)))
-- \inst6|Add5~9\ = CARRY((\inst6|pipe5_x_pos\(4)) # (!\inst6|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe5_x_pos\(4),
	datad => VCC,
	cin => \inst6|Add5~7\,
	combout => \inst6|Add5~8_combout\,
	cout => \inst6|Add5~9\);

-- Location: LCCOMB_X16_Y22_N22
\inst6|Add5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add5~10_combout\ = (\inst6|pipe5_x_pos\(5) & (!\inst6|Add5~9\)) # (!\inst6|pipe5_x_pos\(5) & (\inst6|Add5~9\ & VCC))
-- \inst6|Add5~11\ = CARRY((\inst6|pipe5_x_pos\(5) & !\inst6|Add5~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe5_x_pos\(5),
	datad => VCC,
	cin => \inst6|Add5~9\,
	combout => \inst6|Add5~10_combout\,
	cout => \inst6|Add5~11\);

-- Location: LCCOMB_X16_Y22_N24
\inst6|Add5~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add5~12_combout\ = (\inst6|pipe5_x_pos\(6) & ((GND) # (!\inst6|Add5~11\))) # (!\inst6|pipe5_x_pos\(6) & (\inst6|Add5~11\ $ (GND)))
-- \inst6|Add5~13\ = CARRY((\inst6|pipe5_x_pos\(6)) # (!\inst6|Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe5_x_pos\(6),
	datad => VCC,
	cin => \inst6|Add5~11\,
	combout => \inst6|Add5~12_combout\,
	cout => \inst6|Add5~13\);

-- Location: LCCOMB_X16_Y22_N26
\inst6|Add5~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add5~14_combout\ = (\inst6|pipe5_x_pos\(7) & (!\inst6|Add5~13\)) # (!\inst6|pipe5_x_pos\(7) & (\inst6|Add5~13\ & VCC))
-- \inst6|Add5~15\ = CARRY((\inst6|pipe5_x_pos\(7) & !\inst6|Add5~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe5_x_pos\(7),
	datad => VCC,
	cin => \inst6|Add5~13\,
	combout => \inst6|Add5~14_combout\,
	cout => \inst6|Add5~15\);

-- Location: LCCOMB_X16_Y22_N28
\inst6|Add5~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add5~16_combout\ = (\inst6|pipe5_x_pos\(8) & (\inst6|Add5~15\ $ (GND))) # (!\inst6|pipe5_x_pos\(8) & ((GND) # (!\inst6|Add5~15\)))
-- \inst6|Add5~17\ = CARRY((!\inst6|Add5~15\) # (!\inst6|pipe5_x_pos\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe5_x_pos\(8),
	datad => VCC,
	cin => \inst6|Add5~15\,
	combout => \inst6|Add5~16_combout\,
	cout => \inst6|Add5~17\);

-- Location: LCCOMB_X16_Y22_N30
\inst6|Add5~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add5~18_combout\ = \inst6|pipe5_x_pos\(9) $ (!\inst6|Add5~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe5_x_pos\(9),
	cin => \inst6|Add5~17\,
	combout => \inst6|Add5~18_combout\);

-- Location: LCCOMB_X22_Y21_N8
\inst1|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add1~4_combout\ = (\inst1|v_count\(2) & (\inst1|Add1~3\ $ (GND))) # (!\inst1|v_count\(2) & (!\inst1|Add1~3\ & VCC))
-- \inst1|Add1~5\ = CARRY((\inst1|v_count\(2) & !\inst1|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(2),
	datad => VCC,
	cin => \inst1|Add1~3\,
	combout => \inst1|Add1~4_combout\,
	cout => \inst1|Add1~5\);

-- Location: LCCOMB_X22_Y21_N10
\inst1|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add1~6_combout\ = (\inst1|v_count\(3) & (!\inst1|Add1~5\)) # (!\inst1|v_count\(3) & ((\inst1|Add1~5\) # (GND)))
-- \inst1|Add1~7\ = CARRY((!\inst1|Add1~5\) # (!\inst1|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(3),
	datad => VCC,
	cin => \inst1|Add1~5\,
	combout => \inst1|Add1~6_combout\,
	cout => \inst1|Add1~7\);

-- Location: LCCOMB_X22_Y21_N12
\inst1|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add1~8_combout\ = (\inst1|v_count\(4) & (\inst1|Add1~7\ $ (GND))) # (!\inst1|v_count\(4) & (!\inst1|Add1~7\ & VCC))
-- \inst1|Add1~9\ = CARRY((\inst1|v_count\(4) & !\inst1|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|v_count\(4),
	datad => VCC,
	cin => \inst1|Add1~7\,
	combout => \inst1|Add1~8_combout\,
	cout => \inst1|Add1~9\);

-- Location: LCCOMB_X22_Y21_N14
\inst1|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add1~10_combout\ = (\inst1|v_count\(5) & (!\inst1|Add1~9\)) # (!\inst1|v_count\(5) & ((\inst1|Add1~9\) # (GND)))
-- \inst1|Add1~11\ = CARRY((!\inst1|Add1~9\) # (!\inst1|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|v_count\(5),
	datad => VCC,
	cin => \inst1|Add1~9\,
	combout => \inst1|Add1~10_combout\,
	cout => \inst1|Add1~11\);

-- Location: LCCOMB_X22_Y21_N16
\inst1|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add1~12_combout\ = (\inst1|v_count\(6) & (\inst1|Add1~11\ $ (GND))) # (!\inst1|v_count\(6) & (!\inst1|Add1~11\ & VCC))
-- \inst1|Add1~13\ = CARRY((\inst1|v_count\(6) & !\inst1|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|v_count\(6),
	datad => VCC,
	cin => \inst1|Add1~11\,
	combout => \inst1|Add1~12_combout\,
	cout => \inst1|Add1~13\);

-- Location: LCCOMB_X22_Y21_N20
\inst1|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add1~16_combout\ = (\inst1|v_count\(8) & (\inst1|Add1~15\ $ (GND))) # (!\inst1|v_count\(8) & (!\inst1|Add1~15\ & VCC))
-- \inst1|Add1~17\ = CARRY((\inst1|v_count\(8) & !\inst1|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(8),
	datad => VCC,
	cin => \inst1|Add1~15\,
	combout => \inst1|Add1~16_combout\,
	cout => \inst1|Add1~17\);

-- Location: LCCOMB_X22_Y21_N22
\inst1|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add1~18_combout\ = \inst1|Add1~17\ $ (\inst1|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|v_count\(9),
	cin => \inst1|Add1~17\,
	combout => \inst1|Add1~18_combout\);

-- Location: LCCOMB_X16_Y25_N14
\inst5|Add4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add4~14_combout\ = (\inst5|bird_y_pos[7]~10_combout\ & ((\inst5|bird_y_motion\(3) & (\inst5|Add4~13\ & VCC)) # (!\inst5|bird_y_motion\(3) & (!\inst5|Add4~13\)))) # (!\inst5|bird_y_pos[7]~10_combout\ & ((\inst5|bird_y_motion\(3) & 
-- (!\inst5|Add4~13\)) # (!\inst5|bird_y_motion\(3) & ((\inst5|Add4~13\) # (GND)))))
-- \inst5|Add4~15\ = CARRY((\inst5|bird_y_pos[7]~10_combout\ & (!\inst5|bird_y_motion\(3) & !\inst5|Add4~13\)) # (!\inst5|bird_y_pos[7]~10_combout\ & ((!\inst5|Add4~13\) # (!\inst5|bird_y_motion\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_pos[7]~10_combout\,
	datab => \inst5|bird_y_motion\(3),
	datad => VCC,
	cin => \inst5|Add4~13\,
	combout => \inst5|Add4~14_combout\,
	cout => \inst5|Add4~15\);

-- Location: LCCOMB_X16_Y25_N16
\inst5|Add4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add4~16_combout\ = ((\inst5|bird_y_motion\(3) $ (\inst5|bird_y_pos[8]~6_combout\ $ (!\inst5|Add4~15\)))) # (GND)
-- \inst5|Add4~17\ = CARRY((\inst5|bird_y_motion\(3) & ((\inst5|bird_y_pos[8]~6_combout\) # (!\inst5|Add4~15\))) # (!\inst5|bird_y_motion\(3) & (\inst5|bird_y_pos[8]~6_combout\ & !\inst5|Add4~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_motion\(3),
	datab => \inst5|bird_y_pos[8]~6_combout\,
	datad => VCC,
	cin => \inst5|Add4~15\,
	combout => \inst5|Add4~16_combout\,
	cout => \inst5|Add4~17\);

-- Location: FF_X10_Y19_N7
\inst14|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst14|count[19]~70_combout\,
	sclr => \inst14|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|count\(19));

-- Location: FF_X10_Y19_N9
\inst14|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst14|count[20]~72_combout\,
	sclr => \inst14|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|count\(20));

-- Location: FF_X10_Y19_N11
\inst14|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst14|count[21]~74_combout\,
	sclr => \inst14|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|count\(21));

-- Location: FF_X10_Y19_N13
\inst14|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst14|count[22]~76_combout\,
	sclr => \inst14|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|count\(22));

-- Location: FF_X10_Y19_N15
\inst14|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst14|count[23]~78_combout\,
	sclr => \inst14|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|count\(23));

-- Location: FF_X10_Y19_N17
\inst14|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst14|count[24]~80_combout\,
	sclr => \inst14|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|count\(24));

-- Location: FF_X10_Y19_N19
\inst14|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst14|count[25]~82_combout\,
	sclr => \inst14|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|count\(25));

-- Location: FF_X10_Y19_N21
\inst14|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst14|count[26]~84_combout\,
	sclr => \inst14|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|count\(26));

-- Location: FF_X10_Y19_N23
\inst14|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst14|count[27]~86_combout\,
	sclr => \inst14|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|count\(27));

-- Location: FF_X10_Y19_N25
\inst14|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst14|count[28]~88_combout\,
	sclr => \inst14|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|count\(28));

-- Location: FF_X10_Y19_N27
\inst14|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst14|count[29]~90_combout\,
	sclr => \inst14|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|count\(29));

-- Location: FF_X10_Y19_N29
\inst14|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst14|count[30]~92_combout\,
	sclr => \inst14|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|count\(30));

-- Location: FF_X10_Y20_N29
\inst14|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst14|count[14]~60_combout\,
	sclr => \inst14|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|count\(14));

-- Location: FF_X10_Y20_N27
\inst14|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst14|count[13]~58_combout\,
	sclr => \inst14|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|count\(13));

-- Location: FF_X10_Y20_N17
\inst14|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst14|count[8]~48_combout\,
	sclr => \inst14|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|count\(8));

-- Location: FF_X10_Y20_N11
\inst14|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst14|count[5]~42_combout\,
	sclr => \inst14|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|count\(5));

-- Location: FF_X10_Y20_N13
\inst14|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst14|count[6]~44_combout\,
	sclr => \inst14|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|count\(6));

-- Location: FF_X10_Y20_N15
\inst14|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst14|count[7]~46_combout\,
	sclr => \inst14|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|count\(7));

-- Location: FF_X10_Y20_N19
\inst14|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst14|count[9]~50_combout\,
	sclr => \inst14|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|count\(9));

-- Location: FF_X10_Y20_N21
\inst14|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst14|count[10]~52_combout\,
	sclr => \inst14|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|count\(10));

-- Location: FF_X10_Y20_N23
\inst14|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst14|count[11]~54_combout\,
	sclr => \inst14|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|count\(11));

-- Location: FF_X10_Y20_N25
\inst14|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst14|count[12]~56_combout\,
	sclr => \inst14|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|count\(12));

-- Location: FF_X10_Y20_N31
\inst14|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst14|count[15]~62_combout\,
	sclr => \inst14|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|count\(15));

-- Location: FF_X10_Y19_N1
\inst14|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst14|count[16]~64_combout\,
	sclr => \inst14|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|count\(16));

-- Location: FF_X10_Y19_N3
\inst14|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst14|count[17]~66_combout\,
	sclr => \inst14|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|count\(17));

-- Location: FF_X10_Y19_N5
\inst14|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst14|count[18]~68_combout\,
	sclr => \inst14|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|count\(18));

-- Location: FF_X10_Y19_N31
\inst14|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst14|count[31]~94_combout\,
	sclr => \inst14|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|count\(31));

-- Location: FF_X35_Y13_N13
\inst2|inhibit_wait_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|inhibit_wait_count[6]~21_combout\,
	ena => \inst2|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inhibit_wait_count\(6));

-- Location: FF_X35_Y13_N11
\inst2|inhibit_wait_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|inhibit_wait_count[5]~19_combout\,
	ena => \inst2|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inhibit_wait_count\(5));

-- Location: FF_X35_Y13_N7
\inst2|inhibit_wait_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|inhibit_wait_count[3]~15_combout\,
	ena => \inst2|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inhibit_wait_count\(3));

-- Location: LCCOMB_X35_Y13_N6
\inst2|inhibit_wait_count[3]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inhibit_wait_count[3]~15_combout\ = (\inst2|inhibit_wait_count\(3) & (\inst2|inhibit_wait_count[2]~14\ $ (GND))) # (!\inst2|inhibit_wait_count\(3) & (!\inst2|inhibit_wait_count[2]~14\ & VCC))
-- \inst2|inhibit_wait_count[3]~16\ = CARRY((\inst2|inhibit_wait_count\(3) & !\inst2|inhibit_wait_count[2]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inhibit_wait_count\(3),
	datad => VCC,
	cin => \inst2|inhibit_wait_count[2]~14\,
	combout => \inst2|inhibit_wait_count[3]~15_combout\,
	cout => \inst2|inhibit_wait_count[3]~16\);

-- Location: LCCOMB_X35_Y13_N10
\inst2|inhibit_wait_count[5]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inhibit_wait_count[5]~19_combout\ = (\inst2|inhibit_wait_count\(5) & (\inst2|inhibit_wait_count[4]~18\ $ (GND))) # (!\inst2|inhibit_wait_count\(5) & (!\inst2|inhibit_wait_count[4]~18\ & VCC))
-- \inst2|inhibit_wait_count[5]~20\ = CARRY((\inst2|inhibit_wait_count\(5) & !\inst2|inhibit_wait_count[4]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inhibit_wait_count\(5),
	datad => VCC,
	cin => \inst2|inhibit_wait_count[4]~18\,
	combout => \inst2|inhibit_wait_count[5]~19_combout\,
	cout => \inst2|inhibit_wait_count[5]~20\);

-- Location: LCCOMB_X35_Y13_N12
\inst2|inhibit_wait_count[6]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inhibit_wait_count[6]~21_combout\ = (\inst2|inhibit_wait_count\(6) & (!\inst2|inhibit_wait_count[5]~20\)) # (!\inst2|inhibit_wait_count\(6) & ((\inst2|inhibit_wait_count[5]~20\) # (GND)))
-- \inst2|inhibit_wait_count[6]~22\ = CARRY((!\inst2|inhibit_wait_count[5]~20\) # (!\inst2|inhibit_wait_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inhibit_wait_count\(6),
	datad => VCC,
	cin => \inst2|inhibit_wait_count[5]~20\,
	combout => \inst2|inhibit_wait_count[6]~21_combout\,
	cout => \inst2|inhibit_wait_count[6]~22\);

-- Location: FF_X10_Y20_N9
\inst14|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst14|count[4]~40_combout\,
	sclr => \inst14|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|count\(4));

-- Location: FF_X10_Y20_N7
\inst14|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst14|count[3]~38_combout\,
	sclr => \inst14|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|count\(3));

-- Location: FF_X10_Y20_N5
\inst14|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst14|count[2]~36_combout\,
	sclr => \inst14|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|count\(2));

-- Location: FF_X10_Y20_N3
\inst14|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst14|count[1]~34_combout\,
	sclr => \inst14|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|count\(1));

-- Location: FF_X10_Y20_N1
\inst14|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst14|count[0]~32_combout\,
	sclr => \inst14|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|count\(0));

-- Location: LCCOMB_X10_Y20_N0
\inst14|count[0]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|count[0]~32_combout\ = \inst14|count\(0) $ (VCC)
-- \inst14|count[0]~33\ = CARRY(\inst14|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|count\(0),
	datad => VCC,
	combout => \inst14|count[0]~32_combout\,
	cout => \inst14|count[0]~33\);

-- Location: LCCOMB_X10_Y20_N2
\inst14|count[1]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|count[1]~34_combout\ = (\inst14|count\(1) & (!\inst14|count[0]~33\)) # (!\inst14|count\(1) & ((\inst14|count[0]~33\) # (GND)))
-- \inst14|count[1]~35\ = CARRY((!\inst14|count[0]~33\) # (!\inst14|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|count\(1),
	datad => VCC,
	cin => \inst14|count[0]~33\,
	combout => \inst14|count[1]~34_combout\,
	cout => \inst14|count[1]~35\);

-- Location: LCCOMB_X10_Y20_N4
\inst14|count[2]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|count[2]~36_combout\ = (\inst14|count\(2) & (\inst14|count[1]~35\ $ (GND))) # (!\inst14|count\(2) & (!\inst14|count[1]~35\ & VCC))
-- \inst14|count[2]~37\ = CARRY((\inst14|count\(2) & !\inst14|count[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|count\(2),
	datad => VCC,
	cin => \inst14|count[1]~35\,
	combout => \inst14|count[2]~36_combout\,
	cout => \inst14|count[2]~37\);

-- Location: LCCOMB_X10_Y20_N6
\inst14|count[3]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|count[3]~38_combout\ = (\inst14|count\(3) & (!\inst14|count[2]~37\)) # (!\inst14|count\(3) & ((\inst14|count[2]~37\) # (GND)))
-- \inst14|count[3]~39\ = CARRY((!\inst14|count[2]~37\) # (!\inst14|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|count\(3),
	datad => VCC,
	cin => \inst14|count[2]~37\,
	combout => \inst14|count[3]~38_combout\,
	cout => \inst14|count[3]~39\);

-- Location: LCCOMB_X10_Y20_N8
\inst14|count[4]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|count[4]~40_combout\ = (\inst14|count\(4) & (\inst14|count[3]~39\ $ (GND))) # (!\inst14|count\(4) & (!\inst14|count[3]~39\ & VCC))
-- \inst14|count[4]~41\ = CARRY((\inst14|count\(4) & !\inst14|count[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|count\(4),
	datad => VCC,
	cin => \inst14|count[3]~39\,
	combout => \inst14|count[4]~40_combout\,
	cout => \inst14|count[4]~41\);

-- Location: LCCOMB_X10_Y20_N10
\inst14|count[5]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|count[5]~42_combout\ = (\inst14|count\(5) & (!\inst14|count[4]~41\)) # (!\inst14|count\(5) & ((\inst14|count[4]~41\) # (GND)))
-- \inst14|count[5]~43\ = CARRY((!\inst14|count[4]~41\) # (!\inst14|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|count\(5),
	datad => VCC,
	cin => \inst14|count[4]~41\,
	combout => \inst14|count[5]~42_combout\,
	cout => \inst14|count[5]~43\);

-- Location: LCCOMB_X10_Y20_N12
\inst14|count[6]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|count[6]~44_combout\ = (\inst14|count\(6) & (\inst14|count[5]~43\ $ (GND))) # (!\inst14|count\(6) & (!\inst14|count[5]~43\ & VCC))
-- \inst14|count[6]~45\ = CARRY((\inst14|count\(6) & !\inst14|count[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|count\(6),
	datad => VCC,
	cin => \inst14|count[5]~43\,
	combout => \inst14|count[6]~44_combout\,
	cout => \inst14|count[6]~45\);

-- Location: LCCOMB_X10_Y20_N14
\inst14|count[7]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|count[7]~46_combout\ = (\inst14|count\(7) & (!\inst14|count[6]~45\)) # (!\inst14|count\(7) & ((\inst14|count[6]~45\) # (GND)))
-- \inst14|count[7]~47\ = CARRY((!\inst14|count[6]~45\) # (!\inst14|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|count\(7),
	datad => VCC,
	cin => \inst14|count[6]~45\,
	combout => \inst14|count[7]~46_combout\,
	cout => \inst14|count[7]~47\);

-- Location: LCCOMB_X10_Y20_N16
\inst14|count[8]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|count[8]~48_combout\ = (\inst14|count\(8) & (\inst14|count[7]~47\ $ (GND))) # (!\inst14|count\(8) & (!\inst14|count[7]~47\ & VCC))
-- \inst14|count[8]~49\ = CARRY((\inst14|count\(8) & !\inst14|count[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|count\(8),
	datad => VCC,
	cin => \inst14|count[7]~47\,
	combout => \inst14|count[8]~48_combout\,
	cout => \inst14|count[8]~49\);

-- Location: LCCOMB_X10_Y20_N18
\inst14|count[9]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|count[9]~50_combout\ = (\inst14|count\(9) & (!\inst14|count[8]~49\)) # (!\inst14|count\(9) & ((\inst14|count[8]~49\) # (GND)))
-- \inst14|count[9]~51\ = CARRY((!\inst14|count[8]~49\) # (!\inst14|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|count\(9),
	datad => VCC,
	cin => \inst14|count[8]~49\,
	combout => \inst14|count[9]~50_combout\,
	cout => \inst14|count[9]~51\);

-- Location: LCCOMB_X10_Y20_N20
\inst14|count[10]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|count[10]~52_combout\ = (\inst14|count\(10) & (\inst14|count[9]~51\ $ (GND))) # (!\inst14|count\(10) & (!\inst14|count[9]~51\ & VCC))
-- \inst14|count[10]~53\ = CARRY((\inst14|count\(10) & !\inst14|count[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|count\(10),
	datad => VCC,
	cin => \inst14|count[9]~51\,
	combout => \inst14|count[10]~52_combout\,
	cout => \inst14|count[10]~53\);

-- Location: LCCOMB_X10_Y20_N22
\inst14|count[11]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|count[11]~54_combout\ = (\inst14|count\(11) & (!\inst14|count[10]~53\)) # (!\inst14|count\(11) & ((\inst14|count[10]~53\) # (GND)))
-- \inst14|count[11]~55\ = CARRY((!\inst14|count[10]~53\) # (!\inst14|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|count\(11),
	datad => VCC,
	cin => \inst14|count[10]~53\,
	combout => \inst14|count[11]~54_combout\,
	cout => \inst14|count[11]~55\);

-- Location: LCCOMB_X10_Y20_N24
\inst14|count[12]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|count[12]~56_combout\ = (\inst14|count\(12) & (\inst14|count[11]~55\ $ (GND))) # (!\inst14|count\(12) & (!\inst14|count[11]~55\ & VCC))
-- \inst14|count[12]~57\ = CARRY((\inst14|count\(12) & !\inst14|count[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|count\(12),
	datad => VCC,
	cin => \inst14|count[11]~55\,
	combout => \inst14|count[12]~56_combout\,
	cout => \inst14|count[12]~57\);

-- Location: LCCOMB_X10_Y20_N26
\inst14|count[13]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|count[13]~58_combout\ = (\inst14|count\(13) & (!\inst14|count[12]~57\)) # (!\inst14|count\(13) & ((\inst14|count[12]~57\) # (GND)))
-- \inst14|count[13]~59\ = CARRY((!\inst14|count[12]~57\) # (!\inst14|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|count\(13),
	datad => VCC,
	cin => \inst14|count[12]~57\,
	combout => \inst14|count[13]~58_combout\,
	cout => \inst14|count[13]~59\);

-- Location: LCCOMB_X10_Y20_N28
\inst14|count[14]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|count[14]~60_combout\ = (\inst14|count\(14) & (\inst14|count[13]~59\ $ (GND))) # (!\inst14|count\(14) & (!\inst14|count[13]~59\ & VCC))
-- \inst14|count[14]~61\ = CARRY((\inst14|count\(14) & !\inst14|count[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|count\(14),
	datad => VCC,
	cin => \inst14|count[13]~59\,
	combout => \inst14|count[14]~60_combout\,
	cout => \inst14|count[14]~61\);

-- Location: LCCOMB_X10_Y20_N30
\inst14|count[15]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|count[15]~62_combout\ = (\inst14|count\(15) & (!\inst14|count[14]~61\)) # (!\inst14|count\(15) & ((\inst14|count[14]~61\) # (GND)))
-- \inst14|count[15]~63\ = CARRY((!\inst14|count[14]~61\) # (!\inst14|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|count\(15),
	datad => VCC,
	cin => \inst14|count[14]~61\,
	combout => \inst14|count[15]~62_combout\,
	cout => \inst14|count[15]~63\);

-- Location: LCCOMB_X10_Y19_N0
\inst14|count[16]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|count[16]~64_combout\ = (\inst14|count\(16) & (\inst14|count[15]~63\ $ (GND))) # (!\inst14|count\(16) & (!\inst14|count[15]~63\ & VCC))
-- \inst14|count[16]~65\ = CARRY((\inst14|count\(16) & !\inst14|count[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|count\(16),
	datad => VCC,
	cin => \inst14|count[15]~63\,
	combout => \inst14|count[16]~64_combout\,
	cout => \inst14|count[16]~65\);

-- Location: LCCOMB_X10_Y19_N2
\inst14|count[17]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|count[17]~66_combout\ = (\inst14|count\(17) & (!\inst14|count[16]~65\)) # (!\inst14|count\(17) & ((\inst14|count[16]~65\) # (GND)))
-- \inst14|count[17]~67\ = CARRY((!\inst14|count[16]~65\) # (!\inst14|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|count\(17),
	datad => VCC,
	cin => \inst14|count[16]~65\,
	combout => \inst14|count[17]~66_combout\,
	cout => \inst14|count[17]~67\);

-- Location: LCCOMB_X10_Y19_N4
\inst14|count[18]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|count[18]~68_combout\ = (\inst14|count\(18) & (\inst14|count[17]~67\ $ (GND))) # (!\inst14|count\(18) & (!\inst14|count[17]~67\ & VCC))
-- \inst14|count[18]~69\ = CARRY((\inst14|count\(18) & !\inst14|count[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|count\(18),
	datad => VCC,
	cin => \inst14|count[17]~67\,
	combout => \inst14|count[18]~68_combout\,
	cout => \inst14|count[18]~69\);

-- Location: LCCOMB_X10_Y19_N6
\inst14|count[19]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|count[19]~70_combout\ = (\inst14|count\(19) & (!\inst14|count[18]~69\)) # (!\inst14|count\(19) & ((\inst14|count[18]~69\) # (GND)))
-- \inst14|count[19]~71\ = CARRY((!\inst14|count[18]~69\) # (!\inst14|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|count\(19),
	datad => VCC,
	cin => \inst14|count[18]~69\,
	combout => \inst14|count[19]~70_combout\,
	cout => \inst14|count[19]~71\);

-- Location: LCCOMB_X10_Y19_N8
\inst14|count[20]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|count[20]~72_combout\ = (\inst14|count\(20) & (\inst14|count[19]~71\ $ (GND))) # (!\inst14|count\(20) & (!\inst14|count[19]~71\ & VCC))
-- \inst14|count[20]~73\ = CARRY((\inst14|count\(20) & !\inst14|count[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|count\(20),
	datad => VCC,
	cin => \inst14|count[19]~71\,
	combout => \inst14|count[20]~72_combout\,
	cout => \inst14|count[20]~73\);

-- Location: LCCOMB_X10_Y19_N10
\inst14|count[21]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|count[21]~74_combout\ = (\inst14|count\(21) & (!\inst14|count[20]~73\)) # (!\inst14|count\(21) & ((\inst14|count[20]~73\) # (GND)))
-- \inst14|count[21]~75\ = CARRY((!\inst14|count[20]~73\) # (!\inst14|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|count\(21),
	datad => VCC,
	cin => \inst14|count[20]~73\,
	combout => \inst14|count[21]~74_combout\,
	cout => \inst14|count[21]~75\);

-- Location: LCCOMB_X10_Y19_N12
\inst14|count[22]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|count[22]~76_combout\ = (\inst14|count\(22) & (\inst14|count[21]~75\ $ (GND))) # (!\inst14|count\(22) & (!\inst14|count[21]~75\ & VCC))
-- \inst14|count[22]~77\ = CARRY((\inst14|count\(22) & !\inst14|count[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|count\(22),
	datad => VCC,
	cin => \inst14|count[21]~75\,
	combout => \inst14|count[22]~76_combout\,
	cout => \inst14|count[22]~77\);

-- Location: LCCOMB_X10_Y19_N14
\inst14|count[23]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|count[23]~78_combout\ = (\inst14|count\(23) & (!\inst14|count[22]~77\)) # (!\inst14|count\(23) & ((\inst14|count[22]~77\) # (GND)))
-- \inst14|count[23]~79\ = CARRY((!\inst14|count[22]~77\) # (!\inst14|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|count\(23),
	datad => VCC,
	cin => \inst14|count[22]~77\,
	combout => \inst14|count[23]~78_combout\,
	cout => \inst14|count[23]~79\);

-- Location: LCCOMB_X10_Y19_N16
\inst14|count[24]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|count[24]~80_combout\ = (\inst14|count\(24) & (\inst14|count[23]~79\ $ (GND))) # (!\inst14|count\(24) & (!\inst14|count[23]~79\ & VCC))
-- \inst14|count[24]~81\ = CARRY((\inst14|count\(24) & !\inst14|count[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|count\(24),
	datad => VCC,
	cin => \inst14|count[23]~79\,
	combout => \inst14|count[24]~80_combout\,
	cout => \inst14|count[24]~81\);

-- Location: LCCOMB_X10_Y19_N18
\inst14|count[25]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|count[25]~82_combout\ = (\inst14|count\(25) & (!\inst14|count[24]~81\)) # (!\inst14|count\(25) & ((\inst14|count[24]~81\) # (GND)))
-- \inst14|count[25]~83\ = CARRY((!\inst14|count[24]~81\) # (!\inst14|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|count\(25),
	datad => VCC,
	cin => \inst14|count[24]~81\,
	combout => \inst14|count[25]~82_combout\,
	cout => \inst14|count[25]~83\);

-- Location: LCCOMB_X10_Y19_N20
\inst14|count[26]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|count[26]~84_combout\ = (\inst14|count\(26) & (\inst14|count[25]~83\ $ (GND))) # (!\inst14|count\(26) & (!\inst14|count[25]~83\ & VCC))
-- \inst14|count[26]~85\ = CARRY((\inst14|count\(26) & !\inst14|count[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|count\(26),
	datad => VCC,
	cin => \inst14|count[25]~83\,
	combout => \inst14|count[26]~84_combout\,
	cout => \inst14|count[26]~85\);

-- Location: LCCOMB_X10_Y19_N22
\inst14|count[27]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|count[27]~86_combout\ = (\inst14|count\(27) & (!\inst14|count[26]~85\)) # (!\inst14|count\(27) & ((\inst14|count[26]~85\) # (GND)))
-- \inst14|count[27]~87\ = CARRY((!\inst14|count[26]~85\) # (!\inst14|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|count\(27),
	datad => VCC,
	cin => \inst14|count[26]~85\,
	combout => \inst14|count[27]~86_combout\,
	cout => \inst14|count[27]~87\);

-- Location: LCCOMB_X10_Y19_N24
\inst14|count[28]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|count[28]~88_combout\ = (\inst14|count\(28) & (\inst14|count[27]~87\ $ (GND))) # (!\inst14|count\(28) & (!\inst14|count[27]~87\ & VCC))
-- \inst14|count[28]~89\ = CARRY((\inst14|count\(28) & !\inst14|count[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|count\(28),
	datad => VCC,
	cin => \inst14|count[27]~87\,
	combout => \inst14|count[28]~88_combout\,
	cout => \inst14|count[28]~89\);

-- Location: LCCOMB_X10_Y19_N26
\inst14|count[29]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|count[29]~90_combout\ = (\inst14|count\(29) & (!\inst14|count[28]~89\)) # (!\inst14|count\(29) & ((\inst14|count[28]~89\) # (GND)))
-- \inst14|count[29]~91\ = CARRY((!\inst14|count[28]~89\) # (!\inst14|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|count\(29),
	datad => VCC,
	cin => \inst14|count[28]~89\,
	combout => \inst14|count[29]~90_combout\,
	cout => \inst14|count[29]~91\);

-- Location: LCCOMB_X10_Y19_N28
\inst14|count[30]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|count[30]~92_combout\ = (\inst14|count\(30) & (\inst14|count[29]~91\ $ (GND))) # (!\inst14|count\(30) & (!\inst14|count[29]~91\ & VCC))
-- \inst14|count[30]~93\ = CARRY((\inst14|count\(30) & !\inst14|count[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|count\(30),
	datad => VCC,
	cin => \inst14|count[29]~91\,
	combout => \inst14|count[30]~92_combout\,
	cout => \inst14|count[30]~93\);

-- Location: LCCOMB_X10_Y19_N30
\inst14|count[31]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|count[31]~94_combout\ = \inst14|count\(31) $ (\inst14|count[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|count\(31),
	cin => \inst14|count[30]~93\,
	combout => \inst14|count[31]~94_combout\);

-- Location: LCCOMB_X24_Y23_N12
\inst15|display|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|display|Mux0~0_combout\ = (\inst1|pixel_column\(1) & ((\inst1|pixel_column\(2)) # ((\inst15|display|altsyncram_component|auto_generated|q_a\(2))))) # (!\inst1|pixel_column\(1) & (!\inst1|pixel_column\(2) & 
-- ((\inst15|display|altsyncram_component|auto_generated|q_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(1),
	datab => \inst1|pixel_column\(2),
	datac => \inst15|display|altsyncram_component|auto_generated|q_a\(2),
	datad => \inst15|display|altsyncram_component|auto_generated|q_a\(3),
	combout => \inst15|display|Mux0~0_combout\);

-- Location: LCCOMB_X20_Y17_N24
\inst5|bird_on~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_on~0_combout\ = ((!\inst1|pixel_column\(2) & (!\inst1|pixel_column\(0) & !\inst1|pixel_column\(1)))) # (!\inst1|pixel_column\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(2),
	datab => \inst1|pixel_column\(0),
	datac => \inst1|pixel_column\(1),
	datad => \inst1|pixel_column\(3),
	combout => \inst5|bird_on~0_combout\);

-- Location: LCCOMB_X20_Y17_N26
\inst5|bird_on~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_on~1_combout\ = ((!\inst1|pixel_column\(4) & (!\inst1|pixel_column\(5) & \inst5|bird_on~0_combout\))) # (!\inst1|pixel_column\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(6),
	datab => \inst1|pixel_column\(4),
	datac => \inst1|pixel_column\(5),
	datad => \inst5|bird_on~0_combout\,
	combout => \inst5|bird_on~1_combout\);

-- Location: LCCOMB_X20_Y19_N24
\inst5|bird_on~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_on~3_combout\ = (\inst5|Add0~4_combout\) # (\inst5|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Add0~4_combout\,
	datad => \inst5|Add0~6_combout\,
	combout => \inst5|bird_on~3_combout\);

-- Location: LCCOMB_X20_Y21_N2
\inst5|Add2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add2~1_combout\ = (\inst1|pixel_row\(7) & (\inst5|Add2~0_combout\ & \inst1|pixel_row\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(7),
	datac => \inst5|Add2~0_combout\,
	datad => \inst1|pixel_row\(8),
	combout => \inst5|Add2~1_combout\);

-- Location: LCCOMB_X20_Y19_N26
\inst5|bird_on~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_on~4_combout\ = (!\inst5|Add2~1_combout\ & ((\inst5|Add0~10_combout\) # ((\inst5|bird_on~3_combout\ & \inst5|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_on~3_combout\,
	datab => \inst5|Add0~8_combout\,
	datac => \inst5|Add2~1_combout\,
	datad => \inst5|Add0~10_combout\,
	combout => \inst5|bird_on~4_combout\);

-- Location: LCCOMB_X20_Y21_N0
\inst5|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add2~2_combout\ = \inst1|pixel_row\(8) $ (((\inst1|pixel_row\(7) & \inst5|Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(7),
	datac => \inst5|Add2~0_combout\,
	datad => \inst1|pixel_row\(8),
	combout => \inst5|Add2~2_combout\);

-- Location: LCCOMB_X19_Y24_N0
\inst5|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add2~6_combout\ = \inst1|pixel_row\(4) $ (\inst1|pixel_row\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pixel_row\(4),
	datad => \inst1|pixel_row\(3),
	combout => \inst5|Add2~6_combout\);

-- Location: FF_X21_Y20_N7
\inst6|pipe1_x_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add1~24_combout\,
	ena => \inst6|pipe1_x_pos[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe1_x_pos\(5));

-- Location: FF_X21_Y20_N31
\inst6|pipe1_x_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add1~27_combout\,
	ena => \inst6|pipe1_x_pos[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe1_x_pos\(2));

-- Location: FF_X15_Y21_N25
\inst6|pipe1_bottom_y_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst6|LessThan2~0_combout\,
	sload => VCC,
	ena => \inst6|pipe1_top_y_pos[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe1_bottom_y_pos\(8));

-- Location: FF_X15_Y21_N21
\inst6|pipe1_bottom_y_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst6|pipe_move~1_combout\,
	sload => VCC,
	ena => \inst6|pipe1_top_y_pos[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe1_bottom_y_pos\(7));

-- Location: FF_X15_Y21_N9
\inst6|pipe1_bottom_y_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst6|next_pipe_top~0_combout\,
	sload => VCC,
	ena => \inst6|pipe1_top_y_pos[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe1_bottom_y_pos\(6));

-- Location: FF_X15_Y21_N15
\inst6|pipe1_bottom_y_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst8|q\(2),
	sload => VCC,
	ena => \inst6|pipe1_top_y_pos[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe1_bottom_y_pos\(5));

-- Location: FF_X15_Y21_N13
\inst6|pipe1_bottom_y_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst8|q\(3),
	sload => VCC,
	ena => \inst6|pipe1_top_y_pos[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe1_bottom_y_pos\(4));

-- Location: FF_X15_Y21_N3
\inst6|pipe1_bottom_y_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|pipe1_bottom_y_pos[3]~1_combout\,
	ena => \inst6|pipe1_top_y_pos[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe1_bottom_y_pos\(3));

-- Location: FF_X15_Y21_N1
\inst6|pipe1_bottom_y_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|pipe1_bottom_y_pos[2]~2_combout\,
	ena => \inst6|pipe1_top_y_pos[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe1_bottom_y_pos\(2));

-- Location: FF_X15_Y21_N27
\inst6|pipe1_bottom_y_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|pipe1_bottom_y_pos[1]~feeder_combout\,
	ena => \inst6|pipe1_top_y_pos[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe1_bottom_y_pos\(1));

-- Location: FF_X15_Y21_N11
\inst6|pipe1_top_y_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst6|next_pipe_top~1_combout\,
	sload => VCC,
	ena => \inst6|pipe1_top_y_pos[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe1_top_y_pos\(8));

-- Location: FF_X15_Y21_N5
\inst6|pipe1_top_y_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|pipe1_top_y_pos[7]~2_combout\,
	ena => \inst6|pipe1_top_y_pos[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe1_top_y_pos\(7));

-- Location: LCCOMB_X19_Y17_N0
\inst1|green_out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|green_out~2_combout\ = (\inst6|LessThan11~18_combout\) # ((\inst6|LessThan12~18_combout\) # ((\inst6|LessThan26~14_combout\ & \inst6|LessThan13~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan11~18_combout\,
	datab => \inst6|LessThan26~14_combout\,
	datac => \inst6|LessThan12~18_combout\,
	datad => \inst6|LessThan13~16_combout\,
	combout => \inst1|green_out~2_combout\);

-- Location: LCCOMB_X19_Y17_N6
\inst1|green_out~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|green_out~3_combout\ = (\inst6|LessThan11~18_combout\) # ((\inst6|LessThan12~18_combout\) # ((!\inst6|Add17~14_combout\ & !\inst6|Add8~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan11~18_combout\,
	datab => \inst6|LessThan12~18_combout\,
	datac => \inst6|Add17~14_combout\,
	datad => \inst6|Add8~12_combout\,
	combout => \inst1|green_out~3_combout\);

-- Location: FF_X16_Y17_N23
\inst6|pipe2_x_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add2~21_combout\,
	ena => \inst6|pipe1_x_pos[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe2_x_pos\(8));

-- Location: FF_X16_Y17_N31
\inst6|pipe2_x_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add2~24_combout\,
	ena => \inst6|pipe1_x_pos[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe2_x_pos\(5));

-- Location: FF_X17_Y17_N7
\inst6|pipe2_x_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add2~28_combout\,
	ena => \inst6|pipe1_x_pos[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe2_x_pos\(1));

-- Location: FF_X14_Y20_N9
\inst6|pipe2_bottom_y_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst6|LessThan2~0_combout\,
	sload => VCC,
	ena => \inst6|pipe2_top_y_pos[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe2_bottom_y_pos\(8));

-- Location: FF_X14_Y20_N13
\inst6|pipe2_bottom_y_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst6|pipe_move~1_combout\,
	sload => VCC,
	ena => \inst6|pipe2_top_y_pos[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe2_bottom_y_pos\(7));

-- Location: FF_X15_Y20_N3
\inst6|pipe2_bottom_y_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst6|next_pipe_top~0_combout\,
	sload => VCC,
	ena => \inst6|pipe2_top_y_pos[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe2_bottom_y_pos\(6));

-- Location: FF_X15_Y20_N31
\inst6|pipe2_bottom_y_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst8|q\(2),
	sload => VCC,
	ena => \inst6|pipe2_top_y_pos[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe2_bottom_y_pos\(5));

-- Location: FF_X15_Y20_N17
\inst6|pipe2_bottom_y_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst8|q\(3),
	sload => VCC,
	ena => \inst6|pipe2_top_y_pos[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe2_bottom_y_pos\(4));

-- Location: FF_X15_Y20_N11
\inst6|pipe2_bottom_y_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|pipe2_bottom_y_pos[3]~1_combout\,
	ena => \inst6|pipe2_top_y_pos[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe2_bottom_y_pos\(3));

-- Location: FF_X15_Y20_N29
\inst6|pipe2_bottom_y_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|pipe2_bottom_y_pos[2]~2_combout\,
	ena => \inst6|pipe2_top_y_pos[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe2_bottom_y_pos\(2));

-- Location: FF_X15_Y20_N5
\inst6|pipe2_bottom_y_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|pipe2_bottom_y_pos[1]~feeder_combout\,
	ena => \inst6|pipe2_top_y_pos[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe2_bottom_y_pos\(1));

-- Location: LCCOMB_X19_Y17_N4
\inst1|green_out~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|green_out~4_combout\ = (\inst6|LessThan15~18_combout\) # ((\inst6|LessThan14~18_combout\) # ((!\inst6|Add17~14_combout\ & \inst6|LessThan27~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add17~14_combout\,
	datab => \inst6|LessThan15~18_combout\,
	datac => \inst6|LessThan14~18_combout\,
	datad => \inst6|LessThan27~14_combout\,
	combout => \inst1|green_out~4_combout\);

-- Location: FF_X15_Y20_N19
\inst6|pipe2_top_y_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst6|next_pipe_top~1_combout\,
	sload => VCC,
	ena => \inst6|pipe2_top_y_pos[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe2_top_y_pos\(8));

-- Location: FF_X15_Y20_N9
\inst6|pipe2_top_y_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst6|pipe2_top_y_pos[7]~2_combout\,
	sload => VCC,
	ena => \inst6|pipe2_top_y_pos[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe2_top_y_pos\(7));

-- Location: LCCOMB_X19_Y17_N30
\inst1|green_out~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|green_out~5_combout\ = (\inst6|LessThan15~18_combout\) # ((\inst6|LessThan14~18_combout\) # ((!\inst6|Add10~12_combout\ & \inst6|LessThan16~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add10~12_combout\,
	datab => \inst6|LessThan15~18_combout\,
	datac => \inst6|LessThan14~18_combout\,
	datad => \inst6|LessThan16~16_combout\,
	combout => \inst1|green_out~5_combout\);

-- Location: LCCOMB_X19_Y17_N8
\inst1|green_out~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|green_out~6_combout\ = (\inst1|green_out~3_combout\ & (\inst1|green_out~4_combout\ & (\inst1|green_out~5_combout\ & \inst1|green_out~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|green_out~3_combout\,
	datab => \inst1|green_out~4_combout\,
	datac => \inst1|green_out~5_combout\,
	datad => \inst1|green_out~2_combout\,
	combout => \inst1|green_out~6_combout\);

-- Location: FF_X19_Y20_N31
\inst6|pipe3_x_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add3~25_combout\,
	ena => \inst6|pipe1_x_pos[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe3_x_pos\(4));

-- Location: FF_X17_Y20_N19
\inst6|pipe3_bottom_y_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst6|LessThan2~0_combout\,
	sload => VCC,
	ena => \inst6|pipe3_top_y_pos[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe3_bottom_y_pos\(8));

-- Location: FF_X17_Y20_N17
\inst6|pipe3_bottom_y_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst6|pipe_move~1_combout\,
	sload => VCC,
	ena => \inst6|pipe3_top_y_pos[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe3_bottom_y_pos\(7));

-- Location: FF_X16_Y20_N13
\inst6|pipe3_bottom_y_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst6|next_pipe_top~0_combout\,
	sload => VCC,
	ena => \inst6|pipe3_top_y_pos[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe3_bottom_y_pos\(6));

-- Location: FF_X14_Y20_N17
\inst6|pipe3_bottom_y_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst8|q\(2),
	sload => VCC,
	ena => \inst6|pipe3_top_y_pos[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe3_bottom_y_pos\(5));

-- Location: FF_X17_Y20_N5
\inst6|pipe3_bottom_y_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|pipe3_bottom_y_pos[4]~feeder_combout\,
	ena => \inst6|pipe3_top_y_pos[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe3_bottom_y_pos\(4));

-- Location: FF_X17_Y20_N15
\inst6|pipe3_bottom_y_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst6|pipe3_bottom_y_pos[3]~1_combout\,
	sload => VCC,
	ena => \inst6|pipe3_top_y_pos[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe3_bottom_y_pos\(3));

-- Location: FF_X16_Y20_N23
\inst6|pipe3_bottom_y_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst6|pipe3_bottom_y_pos[2]~2_combout\,
	sload => VCC,
	ena => \inst6|pipe3_top_y_pos[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe3_bottom_y_pos\(2));

-- Location: FF_X17_Y20_N7
\inst6|pipe3_bottom_y_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|pipe3_bottom_y_pos[1]~feeder_combout\,
	ena => \inst6|pipe3_top_y_pos[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe3_bottom_y_pos\(1));

-- Location: LCCOMB_X17_Y24_N2
\inst1|green_out~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|green_out~7_combout\ = (\inst6|LessThan18~18_combout\) # ((\inst6|LessThan17~18_combout\) # ((\inst6|LessThan28~14_combout\ & !\inst6|Add17~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan18~18_combout\,
	datab => \inst6|LessThan17~18_combout\,
	datac => \inst6|LessThan28~14_combout\,
	datad => \inst6|Add17~14_combout\,
	combout => \inst1|green_out~7_combout\);

-- Location: FF_X17_Y21_N29
\inst6|pipe3_top_y_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst6|next_pipe_top~1_combout\,
	sload => VCC,
	ena => \inst6|pipe3_top_y_pos[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe3_top_y_pos\(8));

-- Location: FF_X17_Y20_N9
\inst6|pipe3_top_y_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|pipe3_top_y_pos[7]~2_combout\,
	ena => \inst6|pipe3_top_y_pos[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe3_top_y_pos\(7));

-- Location: LCCOMB_X17_Y24_N24
\inst1|green_out~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|green_out~8_combout\ = (\inst6|LessThan18~18_combout\) # ((\inst6|LessThan17~18_combout\) # ((!\inst6|Add12~12_combout\ & \inst6|LessThan19~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan18~18_combout\,
	datab => \inst6|Add12~12_combout\,
	datac => \inst6|LessThan19~16_combout\,
	datad => \inst6|LessThan17~18_combout\,
	combout => \inst1|green_out~8_combout\);

-- Location: FF_X17_Y18_N29
\inst6|pipe4_x_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add4~20_combout\,
	ena => \inst6|pipe1_x_pos[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe4_x_pos\(9));

-- Location: FF_X16_Y18_N31
\inst6|pipe4_x_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add4~26_combout\,
	ena => \inst6|pipe1_x_pos[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe4_x_pos\(3));

-- Location: FF_X17_Y18_N1
\inst6|pipe4_x_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add4~28_combout\,
	ena => \inst6|pipe1_x_pos[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe4_x_pos\(1));

-- Location: FF_X17_Y18_N31
\inst6|pipe4_x_pos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add4~29_combout\,
	ena => \inst6|pipe1_x_pos[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe4_x_pos\(0));

-- Location: FF_X17_Y20_N27
\inst6|pipe4_bottom_y_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst6|LessThan2~0_combout\,
	sload => VCC,
	ena => \inst6|pipe4_top_y_pos[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe4_bottom_y_pos\(8));

-- Location: FF_X17_Y20_N25
\inst6|pipe4_bottom_y_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst6|pipe_move~1_combout\,
	sload => VCC,
	ena => \inst6|pipe4_top_y_pos[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe4_bottom_y_pos\(7));

-- Location: FF_X17_Y20_N23
\inst6|pipe4_bottom_y_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst6|next_pipe_top~0_combout\,
	sload => VCC,
	ena => \inst6|pipe4_top_y_pos[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe4_bottom_y_pos\(6));

-- Location: FF_X17_Y20_N3
\inst6|pipe4_bottom_y_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst8|q\(2),
	sload => VCC,
	ena => \inst6|pipe4_top_y_pos[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe4_bottom_y_pos\(5));

-- Location: FF_X17_Y20_N13
\inst6|pipe4_bottom_y_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst8|q\(3),
	sload => VCC,
	ena => \inst6|pipe4_top_y_pos[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe4_bottom_y_pos\(4));

-- Location: FF_X17_Y20_N29
\inst6|pipe4_bottom_y_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|pipe4_bottom_y_pos[3]~1_combout\,
	ena => \inst6|pipe4_top_y_pos[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe4_bottom_y_pos\(3));

-- Location: FF_X17_Y20_N11
\inst6|pipe4_bottom_y_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|pipe4_bottom_y_pos[2]~2_combout\,
	ena => \inst6|pipe4_top_y_pos[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe4_bottom_y_pos\(2));

-- Location: FF_X17_Y20_N1
\inst6|pipe4_bottom_y_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|pipe4_bottom_y_pos[1]~feeder_combout\,
	ena => \inst6|pipe4_top_y_pos[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe4_bottom_y_pos\(1));

-- Location: LCCOMB_X17_Y24_N6
\inst1|green_out~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|green_out~9_combout\ = (\inst6|LessThan21~18_combout\) # ((\inst6|LessThan20~18_combout\) # ((\inst6|LessThan29~14_combout\ & !\inst6|Add17~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan21~18_combout\,
	datab => \inst6|LessThan20~18_combout\,
	datac => \inst6|LessThan29~14_combout\,
	datad => \inst6|Add17~14_combout\,
	combout => \inst1|green_out~9_combout\);

-- Location: FF_X17_Y20_N21
\inst6|pipe4_top_y_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst6|next_pipe_top~1_combout\,
	sload => VCC,
	ena => \inst6|pipe4_top_y_pos[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe4_top_y_pos\(8));

-- Location: FF_X17_Y20_N31
\inst6|pipe4_top_y_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|pipe4_top_y_pos[7]~2_combout\,
	ena => \inst6|pipe4_top_y_pos[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe4_top_y_pos\(7));

-- Location: LCCOMB_X17_Y24_N4
\inst1|green_out~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|green_out~10_combout\ = (\inst6|LessThan20~18_combout\) # ((\inst6|LessThan21~18_combout\) # ((\inst6|LessThan22~16_combout\ & !\inst6|Add14~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan22~16_combout\,
	datab => \inst6|LessThan20~18_combout\,
	datac => \inst6|Add14~12_combout\,
	datad => \inst6|LessThan21~18_combout\,
	combout => \inst1|green_out~10_combout\);

-- Location: LCCOMB_X17_Y24_N26
\inst1|green_out~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|green_out~11_combout\ = (\inst1|green_out~9_combout\ & (\inst1|green_out~8_combout\ & (\inst1|green_out~10_combout\ & \inst1|green_out~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|green_out~9_combout\,
	datab => \inst1|green_out~8_combout\,
	datac => \inst1|green_out~10_combout\,
	datad => \inst1|green_out~7_combout\,
	combout => \inst1|green_out~11_combout\);

-- Location: FF_X19_Y20_N1
\inst6|pipe5_x_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst6|Add5~20_combout\,
	sload => VCC,
	ena => \inst6|pipe1_x_pos[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe5_x_pos\(9));

-- Location: FF_X17_Y22_N5
\inst6|pipe5_x_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add5~21_combout\,
	ena => \inst6|pipe1_x_pos[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe5_x_pos\(8));

-- Location: FF_X16_Y22_N9
\inst6|pipe5_x_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add5~22_combout\,
	ena => \inst6|pipe1_x_pos[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe5_x_pos\(7));

-- Location: FF_X16_Y22_N7
\inst6|pipe5_x_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add5~23_combout\,
	ena => \inst6|pipe1_x_pos[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe5_x_pos\(6));

-- Location: FF_X16_Y22_N1
\inst6|pipe5_x_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add5~24_combout\,
	ena => \inst6|pipe1_x_pos[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe5_x_pos\(5));

-- Location: FF_X17_Y22_N7
\inst6|pipe5_x_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add5~25_combout\,
	ena => \inst6|pipe1_x_pos[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe5_x_pos\(4));

-- Location: FF_X16_Y22_N11
\inst6|pipe5_x_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add5~26_combout\,
	ena => \inst6|pipe1_x_pos[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe5_x_pos\(3));

-- Location: FF_X16_Y22_N5
\inst6|pipe5_x_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add5~27_combout\,
	ena => \inst6|pipe1_x_pos[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe5_x_pos\(2));

-- Location: FF_X16_Y22_N3
\inst6|pipe5_x_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add5~28_combout\,
	ena => \inst6|pipe1_x_pos[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe5_x_pos\(1));

-- Location: FF_X17_Y22_N9
\inst6|pipe5_x_pos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add5~29_combout\,
	ena => \inst6|pipe1_x_pos[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe5_x_pos\(0));

-- Location: FF_X17_Y21_N31
\inst6|pipe5_bottom_y_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst6|LessThan2~0_combout\,
	sload => VCC,
	ena => \inst6|pipe5_top_y_pos[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe5_bottom_y_pos\(8));

-- Location: FF_X16_Y20_N1
\inst6|pipe5_bottom_y_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst6|pipe_move~1_combout\,
	sload => VCC,
	ena => \inst6|pipe5_top_y_pos[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe5_bottom_y_pos\(7));

-- Location: FF_X16_Y20_N27
\inst6|pipe5_bottom_y_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst6|next_pipe_top~0_combout\,
	sload => VCC,
	ena => \inst6|pipe5_top_y_pos[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe5_bottom_y_pos\(6));

-- Location: FF_X16_Y20_N21
\inst6|pipe5_bottom_y_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst8|q\(2),
	sload => VCC,
	ena => \inst6|pipe5_top_y_pos[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe5_bottom_y_pos\(5));

-- Location: FF_X16_Y20_N3
\inst6|pipe5_bottom_y_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst8|q\(3),
	sload => VCC,
	ena => \inst6|pipe5_top_y_pos[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe5_bottom_y_pos\(4));

-- Location: FF_X16_Y20_N17
\inst6|pipe5_bottom_y_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst6|pipe5_bottom_y_pos[3]~1_combout\,
	sload => VCC,
	ena => \inst6|pipe5_top_y_pos[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe5_bottom_y_pos\(3));

-- Location: FF_X17_Y21_N7
\inst6|pipe5_bottom_y_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst6|pipe5_bottom_y_pos[2]~2_combout\,
	sload => VCC,
	ena => \inst6|pipe5_top_y_pos[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe5_bottom_y_pos\(2));

-- Location: FF_X17_Y21_N1
\inst6|pipe5_bottom_y_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|pipe5_bottom_y_pos[1]~feeder_combout\,
	ena => \inst6|pipe5_top_y_pos[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe5_bottom_y_pos\(1));

-- Location: FF_X17_Y21_N17
\inst6|pipe5_top_y_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst6|next_pipe_top~1_combout\,
	sload => VCC,
	ena => \inst6|pipe5_top_y_pos[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe5_top_y_pos\(8));

-- Location: FF_X17_Y21_N25
\inst6|pipe5_top_y_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst6|pipe5_top_y_pos[7]~2_combout\,
	sload => VCC,
	ena => \inst6|pipe5_top_y_pos[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe5_top_y_pos\(7));

-- Location: LCCOMB_X17_Y24_N20
\inst1|green_out~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|green_out~12_combout\ = (\inst6|LessThan25~16_combout\ & (!\inst6|Add17~14_combout\ & (!\inst6|Add16~12_combout\ & \inst6|LessThan30~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan25~16_combout\,
	datab => \inst6|Add17~14_combout\,
	datac => \inst6|Add16~12_combout\,
	datad => \inst6|LessThan30~14_combout\,
	combout => \inst1|green_out~12_combout\);

-- Location: LCCOMB_X17_Y24_N30
\inst1|green_out~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|green_out~13_combout\ = (\sw2~input_o\ & ((\inst6|LessThan23~18_combout\) # ((\inst6|LessThan24~18_combout\) # (\inst1|green_out~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw2~input_o\,
	datab => \inst6|LessThan23~18_combout\,
	datac => \inst6|LessThan24~18_combout\,
	datad => \inst1|green_out~12_combout\,
	combout => \inst1|green_out~13_combout\);

-- Location: LCCOMB_X17_Y24_N12
\inst1|green_out~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|green_out~14_combout\ = (\inst1|green_out~13_combout\ & (\inst1|green_out~11_combout\ & \inst1|green_out~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|green_out~13_combout\,
	datac => \inst1|green_out~11_combout\,
	datad => \inst1|green_out~6_combout\,
	combout => \inst1|green_out~14_combout\);

-- Location: LCCOMB_X21_Y19_N4
\inst11|LessThan8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan8~0_combout\ = (!\inst11|Add4~2_combout\ & (!\inst11|Add4~4_combout\ & (\inst11|LessThan4~0_combout\ & !\inst11|Add4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add4~2_combout\,
	datab => \inst11|Add4~4_combout\,
	datac => \inst11|LessThan4~0_combout\,
	datad => \inst11|Add4~0_combout\,
	combout => \inst11|LessThan8~0_combout\);

-- Location: LCCOMB_X21_Y18_N20
\inst15|temp_char_address~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~17_combout\ = (!\inst1|pixel_column\(7) & !\inst1|pixel_column\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pixel_column\(7),
	datac => \inst1|pixel_column\(6),
	combout => \inst15|temp_char_address~17_combout\);

-- Location: LCCOMB_X20_Y18_N26
\inst11|LessThan17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan17~0_combout\ = (\inst1|pixel_column\(6) & ((\inst1|pixel_column\(4)) # (\inst1|pixel_column\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pixel_column\(4),
	datac => \inst1|pixel_column\(6),
	datad => \inst1|pixel_column\(5),
	combout => \inst11|LessThan17~0_combout\);

-- Location: LCCOMB_X20_Y21_N10
\inst15|LessThan23~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|LessThan23~1_combout\ = (\inst1|pixel_row\(8)) # ((\inst1|pixel_row\(7) & (\inst1|pixel_row\(6) & \inst1|pixel_row\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(7),
	datab => \inst1|pixel_row\(6),
	datac => \inst1|pixel_row\(8),
	datad => \inst1|pixel_row\(5),
	combout => \inst15|LessThan23~1_combout\);

-- Location: LCCOMB_X21_Y19_N14
\inst15|LessThan45~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|LessThan45~0_combout\ = (\inst1|pixel_column\(4)) # ((\inst1|pixel_column\(5)) # ((\inst1|pixel_column\(7)) # (\inst1|pixel_column\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(4),
	datab => \inst1|pixel_column\(5),
	datac => \inst1|pixel_column\(7),
	datad => \inst1|pixel_column\(6),
	combout => \inst15|LessThan45~0_combout\);

-- Location: LCCOMB_X22_Y18_N2
\inst11|LessThan24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan24~0_combout\ = (!\inst11|Add4~4_combout\ & (((!\inst11|Add4~0_combout\ & \inst11|LessThan4~0_combout\)) # (!\inst11|Add4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add4~2_combout\,
	datab => \inst11|Add4~4_combout\,
	datac => \inst11|Add4~0_combout\,
	datad => \inst11|LessThan4~0_combout\,
	combout => \inst11|LessThan24~0_combout\);

-- Location: LCCOMB_X24_Y21_N12
\inst15|temp_char_address[5]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[5]~44_combout\ = (\sw2~input_o\) # (((!\inst15|temp_char_address~39_combout\ & !\inst15|temp_char_address~41_combout\)) # (!\inst15|temp_char_address~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw2~input_o\,
	datab => \inst15|temp_char_address~39_combout\,
	datac => \inst15|temp_char_address~43_combout\,
	datad => \inst15|temp_char_address~41_combout\,
	combout => \inst15|temp_char_address[5]~44_combout\);

-- Location: LCCOMB_X24_Y18_N22
\inst15|LessThan64~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|LessThan64~0_combout\ = ((!\inst11|Add4~8_combout\) # (!\inst11|Add4~6_combout\)) # (!\inst11|Add4~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|Add4~4_combout\,
	datac => \inst11|Add4~6_combout\,
	datad => \inst11|Add4~8_combout\,
	combout => \inst15|LessThan64~0_combout\);

-- Location: LCCOMB_X23_Y18_N12
\inst15|LessThan56~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|LessThan56~0_combout\ = (!\inst11|Add4~10_combout\ & (((!\inst15|LessThan52~0_combout\) # (!\inst11|Add4~8_combout\)) # (!\inst11|Add4~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add4~10_combout\,
	datab => \inst11|Add4~6_combout\,
	datac => \inst11|Add4~8_combout\,
	datad => \inst15|LessThan52~0_combout\,
	combout => \inst15|LessThan56~0_combout\);

-- Location: LCCOMB_X21_Y21_N18
\inst15|temp_char_address~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~54_combout\ = (\inst15|temp_char_address~43_combout\ & (!\inst1|pixel_column\(7) & \inst15|temp_char_address~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|temp_char_address~43_combout\,
	datac => \inst1|pixel_column\(7),
	datad => \inst15|temp_char_address~18_combout\,
	combout => \inst15|temp_char_address~54_combout\);

-- Location: LCCOMB_X23_Y20_N16
\inst15|temp_char_address~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~56_combout\ = (!\sw2~input_o\ & (\inst15|temp_char_address~41_combout\ & \inst15|temp_char_address~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw2~input_o\,
	datac => \inst15|temp_char_address~41_combout\,
	datad => \inst15|temp_char_address~23_combout\,
	combout => \inst15|temp_char_address~56_combout\);

-- Location: LCCOMB_X23_Y18_N16
\inst15|temp_char_address~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~57_combout\ = (\inst15|temp_char_address~54_combout\ & (((\inst11|Add4~6_combout\) # (\inst15|LessThan48~0_combout\)) # (!\inst15|LessThan84~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|LessThan84~0_combout\,
	datab => \inst15|temp_char_address~54_combout\,
	datac => \inst11|Add4~6_combout\,
	datad => \inst15|LessThan48~0_combout\,
	combout => \inst15|temp_char_address~57_combout\);

-- Location: LCCOMB_X23_Y20_N10
\inst15|temp_char_address[2]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[2]~58_combout\ = (!\inst15|temp_char_address~57_combout\ & (!\inst15|temp_char_address~56_combout\ & ((!\inst15|temp_char_address~55_combout\) # (!\inst15|temp_char_address~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~54_combout\,
	datab => \inst15|temp_char_address~57_combout\,
	datac => \inst15|temp_char_address~55_combout\,
	datad => \inst15|temp_char_address~56_combout\,
	combout => \inst15|temp_char_address[2]~58_combout\);

-- Location: LCCOMB_X24_Y18_N26
\inst15|temp_char_address~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~59_combout\ = (\inst11|Add4~10_combout\) # ((\inst11|Add4~8_combout\) # ((!\inst11|LessThan24~0_combout\ & \inst11|Add4~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan24~0_combout\,
	datab => \inst11|Add4~6_combout\,
	datac => \inst11|Add4~10_combout\,
	datad => \inst11|Add4~8_combout\,
	combout => \inst15|temp_char_address~59_combout\);

-- Location: LCCOMB_X24_Y18_N24
\inst15|temp_char_address~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~61_combout\ = (\inst15|temp_char_address~60_combout\ & (!\sw2~input_o\ & \inst15|temp_char_address~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|temp_char_address~60_combout\,
	datac => \sw2~input_o\,
	datad => \inst15|temp_char_address~23_combout\,
	combout => \inst15|temp_char_address~61_combout\);

-- Location: LCCOMB_X24_Y18_N6
\inst15|temp_char_address[3]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[3]~62_combout\ = (!\inst15|temp_char_address~61_combout\ & (((\inst11|LessThan1~0_combout\) # (!\inst15|temp_char_address~20_combout\)) # (!\inst15|temp_char_address~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~59_combout\,
	datab => \inst11|LessThan1~0_combout\,
	datac => \inst15|temp_char_address~20_combout\,
	datad => \inst15|temp_char_address~61_combout\,
	combout => \inst15|temp_char_address[3]~62_combout\);

-- Location: LCCOMB_X23_Y20_N4
\inst15|temp_char_address[3]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[3]~64_combout\ = (\inst15|temp_char_address~63_combout\ & (!\inst15|temp_char_address~54_combout\ & ((!\inst15|temp_char_address~23_combout\) # (!\inst15|temp_char_address~46_combout\)))) # (!\inst15|temp_char_address~63_combout\ 
-- & (((!\inst15|temp_char_address~23_combout\)) # (!\inst15|temp_char_address~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~63_combout\,
	datab => \inst15|temp_char_address~46_combout\,
	datac => \inst15|temp_char_address~54_combout\,
	datad => \inst15|temp_char_address~23_combout\,
	combout => \inst15|temp_char_address[3]~64_combout\);

-- Location: LCCOMB_X23_Y20_N18
\inst15|temp_char_address[3]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[3]~65_combout\ = (\inst15|temp_char_address[2]~58_combout\ & (\inst15|temp_char_address[3]~64_combout\ & \inst15|temp_char_address[3]~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address[2]~58_combout\,
	datac => \inst15|temp_char_address[3]~64_combout\,
	datad => \inst15|temp_char_address[3]~62_combout\,
	combout => \inst15|temp_char_address[3]~65_combout\);

-- Location: LCCOMB_X24_Y19_N10
\inst15|temp_char_address~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~67_combout\ = (\inst15|temp_char_address~23_combout\ & (\inst15|temp_char_address~39_combout\ & !\sw2~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~23_combout\,
	datac => \inst15|temp_char_address~39_combout\,
	datad => \sw2~input_o\,
	combout => \inst15|temp_char_address~67_combout\);

-- Location: LCCOMB_X19_Y19_N20
\inst15|temp_char_address~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~68_combout\ = (!\inst11|LessThan9~0_combout\ & (((!\inst11|LessThan8~0_combout\ & \inst11|Add4~6_combout\)) # (!\inst15|LessThan84~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan8~0_combout\,
	datab => \inst15|LessThan84~0_combout\,
	datac => \inst11|LessThan9~0_combout\,
	datad => \inst11|Add4~6_combout\,
	combout => \inst15|temp_char_address~68_combout\);

-- Location: LCCOMB_X24_Y19_N24
\inst15|temp_char_address~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~69_combout\ = (!\inst1|pixel_column\(8) & (\inst15|temp_char_address~43_combout\ & (\inst15|temp_char_address~68_combout\ & \inst15|temp_char_address~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(8),
	datab => \inst15|temp_char_address~43_combout\,
	datac => \inst15|temp_char_address~68_combout\,
	datad => \inst15|temp_char_address~22_combout\,
	combout => \inst15|temp_char_address~69_combout\);

-- Location: LCCOMB_X20_Y18_N22
\inst15|temp_char_address~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~73_combout\ = (\inst1|pixel_column\(8) & (!\inst11|LessThan33~0_combout\ & ((\inst11|Add4~4_combout\) # (!\inst11|LessThan24~1_combout\)))) # (!\inst1|pixel_column\(8) & ((\inst11|Add4~4_combout\) # 
-- ((!\inst11|LessThan24~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(8),
	datab => \inst11|Add4~4_combout\,
	datac => \inst11|LessThan24~1_combout\,
	datad => \inst11|LessThan33~0_combout\,
	combout => \inst15|temp_char_address~73_combout\);

-- Location: LCCOMB_X23_Y17_N28
\inst15|temp_char_address[1]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[1]~76_combout\ = ((!\inst15|temp_char_address~74_combout\ & (!\inst15|temp_char_address~197_combout\ & !\inst15|temp_char_address~75_combout\))) # (!\inst15|temp_char_address~33_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~74_combout\,
	datab => \inst15|temp_char_address~197_combout\,
	datac => \inst15|temp_char_address~75_combout\,
	datad => \inst15|temp_char_address~33_combout\,
	combout => \inst15|temp_char_address[1]~76_combout\);

-- Location: LCCOMB_X20_Y21_N20
\inst15|LessThan2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|LessThan2~2_combout\ = ((\inst15|LessThan2~1_combout\) # ((!\inst5|Add2~4_combout\) # (!\inst5|Add2~3_combout\))) # (!\inst5|Add2~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add2~5_combout\,
	datab => \inst15|LessThan2~1_combout\,
	datac => \inst5|Add2~3_combout\,
	datad => \inst5|Add2~4_combout\,
	combout => \inst15|LessThan2~2_combout\);

-- Location: LCCOMB_X22_Y17_N24
\inst15|temp_char_address~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~78_combout\ = (\inst15|temp_char_address~77_combout\ & \inst15|temp_char_address~70_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|temp_char_address~77_combout\,
	datad => \inst15|temp_char_address~70_combout\,
	combout => \inst15|temp_char_address~78_combout\);

-- Location: LCCOMB_X20_Y18_N6
\inst11|LessThan25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan25~0_combout\ = (\inst1|pixel_column\(8) & (((\inst1|pixel_column\(5) & \inst1|pixel_column\(4))) # (!\inst15|temp_char_address~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(8),
	datab => \inst1|pixel_column\(5),
	datac => \inst15|temp_char_address~17_combout\,
	datad => \inst1|pixel_column\(4),
	combout => \inst11|LessThan25~0_combout\);

-- Location: LCCOMB_X21_Y18_N12
\inst15|temp_char_address~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~80_combout\ = (\inst15|temp_char_address~34_combout\ & (!\inst11|LessThan25~0_combout\ & ((!\inst11|LessThan24~0_combout\) # (!\inst11|LessThan24~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan24~1_combout\,
	datab => \inst15|temp_char_address~34_combout\,
	datac => \inst11|LessThan25~0_combout\,
	datad => \inst11|LessThan24~0_combout\,
	combout => \inst15|temp_char_address~80_combout\);

-- Location: LCCOMB_X23_Y17_N26
\inst15|temp_char_address[0]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[0]~82_combout\ = (((\inst15|temp_char_address~71_combout\) # (!\inst15|temp_char_address~78_combout\)) # (!\inst15|temp_char_address[1]~76_combout\)) # (!\inst15|temp_char_address[0]~81_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address[0]~81_combout\,
	datab => \inst15|temp_char_address[1]~76_combout\,
	datac => \inst15|temp_char_address~78_combout\,
	datad => \inst15|temp_char_address~71_combout\,
	combout => \inst15|temp_char_address[0]~82_combout\);

-- Location: LCCOMB_X20_Y18_N12
\inst15|temp_char_address~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~84_combout\ = (\inst15|temp_char_address~72_combout\ & (((!\inst1|pixel_column\(5) & !\inst1|pixel_column\(6))) # (!\inst1|pixel_column\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(8),
	datab => \inst1|pixel_column\(5),
	datac => \inst1|pixel_column\(6),
	datad => \inst15|temp_char_address~72_combout\,
	combout => \inst15|temp_char_address~84_combout\);

-- Location: LCCOMB_X23_Y17_N10
\inst15|temp_char_address[0]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[0]~86_combout\ = (!\inst15|temp_char_address~53_combout\ & (\inst15|temp_char_address[0]~83_combout\ & ((!\inst15|temp_char_address~33_combout\) # (!\inst15|temp_char_address~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~85_combout\,
	datab => \inst15|temp_char_address~33_combout\,
	datac => \inst15|temp_char_address~53_combout\,
	datad => \inst15|temp_char_address[0]~83_combout\,
	combout => \inst15|temp_char_address[0]~86_combout\);

-- Location: LCCOMB_X24_Y19_N6
\inst15|temp_char_address[0]~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[0]~87_combout\ = (\inst15|temp_char_address~67_combout\) # ((\inst15|temp_char_address~69_combout\) # ((\inst15|temp_char_address[0]~82_combout\ & \inst15|temp_char_address[0]~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~67_combout\,
	datab => \inst15|temp_char_address[0]~82_combout\,
	datac => \inst15|temp_char_address[0]~86_combout\,
	datad => \inst15|temp_char_address~69_combout\,
	combout => \inst15|temp_char_address[0]~87_combout\);

-- Location: LCCOMB_X24_Y19_N22
\inst15|temp_char_address~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~89_combout\ = (\inst15|temp_char_address~20_combout\ & (!\inst1|pixel_column\(7) & \inst15|temp_char_address~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~20_combout\,
	datac => \inst1|pixel_column\(7),
	datad => \inst15|temp_char_address~63_combout\,
	combout => \inst15|temp_char_address~89_combout\);

-- Location: LCCOMB_X24_Y19_N12
\inst15|temp_char_address[0]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[0]~90_combout\ = (\inst15|temp_char_address[0]~26_combout\ & ((\inst15|temp_char_address~89_combout\) # ((\inst15|temp_char_address~55_combout\ & \inst15|temp_char_address~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address[0]~26_combout\,
	datab => \inst15|temp_char_address~55_combout\,
	datac => \inst15|temp_char_address~89_combout\,
	datad => \inst15|temp_char_address~24_combout\,
	combout => \inst15|temp_char_address[0]~90_combout\);

-- Location: LCCOMB_X23_Y19_N14
\inst15|temp_char_address[0]~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[0]~91_combout\ = (!\inst15|temp_char_address~16_combout\ & (\inst15|temp_char_address~14_combout\ & ((\inst15|temp_char_address~60_combout\) # (\inst15|temp_char_address~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~60_combout\,
	datab => \inst15|temp_char_address~16_combout\,
	datac => \inst15|temp_char_address~14_combout\,
	datad => \inst15|temp_char_address~39_combout\,
	combout => \inst15|temp_char_address[0]~91_combout\);

-- Location: LCCOMB_X22_Y17_N10
\inst15|temp_char_address[0]~101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[0]~101_combout\ = ((!\inst15|temp_char_address~80_combout\ & !\inst15|temp_char_address~85_combout\)) # (!\inst15|temp_char_address~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~80_combout\,
	datab => \inst15|temp_char_address~14_combout\,
	datac => \inst15|temp_char_address~85_combout\,
	combout => \inst15|temp_char_address[0]~101_combout\);

-- Location: LCCOMB_X23_Y20_N8
\inst15|temp_char_address[1]~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[1]~102_combout\ = (\inst1|pixel_column\(7)) # (((!\inst15|temp_char_address~55_combout\ & !\inst15|temp_char_address~63_combout\)) # (!\inst15|temp_char_address~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~55_combout\,
	datab => \inst1|pixel_column\(7),
	datac => \inst15|temp_char_address~20_combout\,
	datad => \inst15|temp_char_address~63_combout\,
	combout => \inst15|temp_char_address[1]~102_combout\);

-- Location: LCCOMB_X23_Y20_N6
\inst15|temp_char_address[2]~103\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[2]~103_combout\ = ((!\inst15|temp_char_address~46_combout\ & ((\sw2~input_o\) # (!\inst15|temp_char_address~39_combout\)))) # (!\inst15|temp_char_address~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw2~input_o\,
	datab => \inst15|temp_char_address~23_combout\,
	datac => \inst15|temp_char_address~46_combout\,
	datad => \inst15|temp_char_address~39_combout\,
	combout => \inst15|temp_char_address[2]~103_combout\);

-- Location: LCCOMB_X23_Y20_N12
\inst15|temp_char_address[1]~104\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[1]~104_combout\ = (\inst15|temp_char_address[2]~103_combout\ & (!\inst15|temp_char_address~56_combout\ & (\inst15|temp_char_address[1]~102_combout\ & !\inst15|temp_char_address~92_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address[2]~103_combout\,
	datab => \inst15|temp_char_address~56_combout\,
	datac => \inst15|temp_char_address[1]~102_combout\,
	datad => \inst15|temp_char_address~92_combout\,
	combout => \inst15|temp_char_address[1]~104_combout\);

-- Location: LCCOMB_X24_Y19_N0
\inst15|temp_char_address~105\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~105_combout\ = (!\inst1|pixel_column\(8) & (\inst15|temp_char_address~22_combout\ & (\inst15|temp_char_address~23_combout\ & \inst15|temp_char_address~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(8),
	datab => \inst15|temp_char_address~22_combout\,
	datac => \inst15|temp_char_address~23_combout\,
	datad => \inst15|temp_char_address~27_combout\,
	combout => \inst15|temp_char_address~105_combout\);

-- Location: LCCOMB_X23_Y20_N14
\inst15|temp_char_address[1]~106\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[1]~106_combout\ = (\inst15|temp_char_address[1]~104_combout\ & (\inst15|temp_char_address[3]~62_combout\ & (!\inst15|temp_char_address~28_combout\ & !\inst15|temp_char_address~105_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address[1]~104_combout\,
	datab => \inst15|temp_char_address[3]~62_combout\,
	datac => \inst15|temp_char_address~28_combout\,
	datad => \inst15|temp_char_address~105_combout\,
	combout => \inst15|temp_char_address[1]~106_combout\);

-- Location: LCCOMB_X23_Y19_N22
\inst15|temp_char_address[5]~107\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[5]~107_combout\ = (!\inst15|temp_char_address~96_combout\ & (!\inst15|temp_char_address~97_combout\ & (!\inst15|temp_char_address~21_combout\ & !\inst15|temp_char_address~95_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~96_combout\,
	datab => \inst15|temp_char_address~97_combout\,
	datac => \inst15|temp_char_address~21_combout\,
	datad => \inst15|temp_char_address~95_combout\,
	combout => \inst15|temp_char_address[5]~107_combout\);

-- Location: LCCOMB_X23_Y18_N28
\inst15|temp_char_address[1]~118\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[1]~118_combout\ = ((!\inst15|temp_char_address~197_combout\ & !\inst15|temp_char_address~75_combout\)) # (!\inst15|temp_char_address~33_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|temp_char_address~197_combout\,
	datac => \inst15|temp_char_address~33_combout\,
	datad => \inst15|temp_char_address~75_combout\,
	combout => \inst15|temp_char_address[1]~118_combout\);

-- Location: LCCOMB_X23_Y17_N6
\inst15|temp_char_address[2]~119\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[2]~119_combout\ = (!\inst15|temp_char_address~32_combout\ & (((!\inst15|temp_char_address~85_combout\ & !\inst15|temp_char_address~35_combout\)) # (!\inst15|temp_char_address~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~85_combout\,
	datab => \inst15|temp_char_address~33_combout\,
	datac => \inst15|temp_char_address~35_combout\,
	datad => \inst15|temp_char_address~32_combout\,
	combout => \inst15|temp_char_address[2]~119_combout\);

-- Location: LCCOMB_X24_Y20_N30
\inst15|temp_char_address[1]~124\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[1]~124_combout\ = (!\inst15|temp_char_address~69_combout\ & (\inst15|temp_char_address[4]~123_combout\ & (!\inst15|temp_char_address~57_combout\ & !\inst15|temp_char_address~195_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~69_combout\,
	datab => \inst15|temp_char_address[4]~123_combout\,
	datac => \inst15|temp_char_address~57_combout\,
	datad => \inst15|temp_char_address~195_combout\,
	combout => \inst15|temp_char_address[1]~124_combout\);

-- Location: LCCOMB_X24_Y17_N0
\inst15|temp_char_address[1]~135\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[1]~135_combout\ = (\inst15|temp_char_address[2]~199_combout\ & (((\inst15|LessThan48~1_combout\) # (!\inst15|temp_char_address~126_combout\)) # (!\inst15|temp_char_address~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~18_combout\,
	datab => \inst15|temp_char_address~126_combout\,
	datac => \inst15|LessThan48~1_combout\,
	datad => \inst15|temp_char_address[2]~199_combout\,
	combout => \inst15|temp_char_address[1]~135_combout\);

-- Location: LCCOMB_X24_Y20_N6
\inst15|temp_char_address[1]~136\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[1]~136_combout\ = (\inst15|temp_char_address[5]~107_combout\ & ((\inst15|temp_char_address~25_combout\) # ((\inst15|temp_char_address[1]~102_combout\ & \inst15|temp_char_address~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address[1]~102_combout\,
	datab => \inst15|temp_char_address~25_combout\,
	datac => \inst15|temp_char_address~28_combout\,
	datad => \inst15|temp_char_address[5]~107_combout\,
	combout => \inst15|temp_char_address[1]~136_combout\);

-- Location: LCCOMB_X23_Y19_N10
\inst15|temp_char_address[1]~137\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[1]~137_combout\ = (\inst15|temp_char_address~14_combout\ & ((\inst15|temp_char_address~60_combout\) # ((!\inst15|temp_char_address~41_combout\ & \inst15|temp_char_address~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~14_combout\,
	datab => \inst15|temp_char_address~60_combout\,
	datac => \inst15|temp_char_address~41_combout\,
	datad => \inst15|temp_char_address~39_combout\,
	combout => \inst15|temp_char_address[1]~137_combout\);

-- Location: LCCOMB_X24_Y17_N22
\inst15|temp_char_address[1]~138\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[1]~138_combout\ = (\inst15|temp_char_address[1]~136_combout\) # ((\inst15|temp_char_address~109_combout\) # ((\inst15|temp_char_address~110_combout\) # (\inst15|temp_char_address[1]~200_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address[1]~136_combout\,
	datab => \inst15|temp_char_address~109_combout\,
	datac => \inst15|temp_char_address~110_combout\,
	datad => \inst15|temp_char_address[1]~200_combout\,
	combout => \inst15|temp_char_address[1]~138_combout\);

-- Location: LCCOMB_X24_Y20_N12
\inst15|temp_char_address[1]~139\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[1]~139_combout\ = (!\inst15|temp_char_address~69_combout\ & (!\inst15|temp_char_address~53_combout\ & !\inst15|temp_char_address~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~69_combout\,
	datab => \inst15|temp_char_address~53_combout\,
	datac => \inst15|temp_char_address~57_combout\,
	combout => \inst15|temp_char_address[1]~139_combout\);

-- Location: LCCOMB_X24_Y20_N14
\inst15|temp_char_address[1]~140\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[1]~140_combout\ = (\inst15|temp_char_address[1]~112_combout\ & ((\inst15|temp_char_address[5]~44_combout\) # (!\inst15|temp_char_address[1]~139_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address[1]~139_combout\,
	datac => \inst15|temp_char_address[5]~44_combout\,
	datad => \inst15|temp_char_address[1]~112_combout\,
	combout => \inst15|temp_char_address[1]~140_combout\);

-- Location: LCCOMB_X23_Y20_N22
\inst15|temp_char_address[1]~141\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[1]~141_combout\ = (!\inst15|temp_char_address~92_combout\ & (\inst15|temp_char_address[1]~102_combout\ & ((\inst15|temp_char_address~105_combout\) # (!\inst15|temp_char_address[3]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~92_combout\,
	datab => \inst15|temp_char_address[3]~62_combout\,
	datac => \inst15|temp_char_address[1]~102_combout\,
	datad => \inst15|temp_char_address~105_combout\,
	combout => \inst15|temp_char_address[1]~141_combout\);

-- Location: LCCOMB_X23_Y17_N14
\inst15|temp_char_address~142\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~142_combout\ = (\inst15|temp_char_address~33_combout\ & \inst15|temp_char_address~85_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|temp_char_address~33_combout\,
	datad => \inst15|temp_char_address~85_combout\,
	combout => \inst15|temp_char_address~142_combout\);

-- Location: LCCOMB_X23_Y17_N12
\inst15|temp_char_address[1]~143\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[1]~143_combout\ = (\inst15|temp_char_address~32_combout\) # ((!\inst15|temp_char_address~36_combout\ & (\inst15|temp_char_address~142_combout\ & !\inst15|temp_char_address~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~36_combout\,
	datab => \inst15|temp_char_address~142_combout\,
	datac => \inst15|temp_char_address~37_combout\,
	datad => \inst15|temp_char_address~32_combout\,
	combout => \inst15|temp_char_address[1]~143_combout\);

-- Location: LCCOMB_X23_Y17_N22
\inst15|temp_char_address[1]~144\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[1]~144_combout\ = (!\inst15|temp_char_address~37_combout\ & (((!\inst15|temp_char_address~80_combout\ & !\inst15|temp_char_address~35_combout\)) # (!\inst15|temp_char_address~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~80_combout\,
	datab => \inst15|temp_char_address~37_combout\,
	datac => \inst15|temp_char_address~35_combout\,
	datad => \inst15|temp_char_address~33_combout\,
	combout => \inst15|temp_char_address[1]~144_combout\);

-- Location: LCCOMB_X23_Y17_N16
\inst15|temp_char_address[1]~145\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[1]~145_combout\ = (\inst15|temp_char_address[1]~143_combout\) # ((\inst15|temp_char_address[1]~144_combout\ & ((\inst15|temp_char_address[1]~76_combout\) # (\inst15|temp_char_address~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address[1]~143_combout\,
	datab => \inst15|temp_char_address[1]~76_combout\,
	datac => \inst15|temp_char_address[1]~144_combout\,
	datad => \inst15|temp_char_address~71_combout\,
	combout => \inst15|temp_char_address[1]~145_combout\);

-- Location: LCCOMB_X24_Y17_N12
\inst15|temp_char_address[1]~146\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[1]~146_combout\ = (\inst15|temp_char_address[1]~135_combout\ & (!\inst15|temp_char_address[1]~125_combout\ & ((\inst15|temp_char_address[1]~203_combout\) # (\inst15|temp_char_address[1]~138_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address[1]~203_combout\,
	datab => \inst15|temp_char_address[1]~135_combout\,
	datac => \inst15|temp_char_address[1]~138_combout\,
	datad => \inst15|temp_char_address[1]~125_combout\,
	combout => \inst15|temp_char_address[1]~146_combout\);

-- Location: LCCOMB_X23_Y20_N0
\inst15|temp_char_address[2]~151\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[2]~151_combout\ = (\inst15|temp_char_address~28_combout\) # ((!\inst15|temp_char_address~92_combout\ & ((\inst15|temp_char_address~105_combout\) # (!\inst15|temp_char_address[3]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~92_combout\,
	datab => \inst15|temp_char_address[3]~62_combout\,
	datac => \inst15|temp_char_address~28_combout\,
	datad => \inst15|temp_char_address~105_combout\,
	combout => \inst15|temp_char_address[2]~151_combout\);

-- Location: LCCOMB_X23_Y20_N2
\inst15|temp_char_address[2]~152\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[2]~152_combout\ = (\inst15|temp_char_address~54_combout\ & (!\inst15|temp_char_address~55_combout\ & \inst15|temp_char_address~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~54_combout\,
	datac => \inst15|temp_char_address~55_combout\,
	datad => \inst15|temp_char_address~63_combout\,
	combout => \inst15|temp_char_address[2]~152_combout\);

-- Location: LCCOMB_X23_Y20_N20
\inst15|temp_char_address[2]~153\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[2]~153_combout\ = (\inst15|temp_char_address~56_combout\) # ((\inst15|temp_char_address[2]~103_combout\ & !\inst15|temp_char_address[2]~152_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address[2]~103_combout\,
	datab => \inst15|temp_char_address[2]~152_combout\,
	datad => \inst15|temp_char_address~56_combout\,
	combout => \inst15|temp_char_address[2]~153_combout\);

-- Location: LCCOMB_X24_Y21_N20
\inst15|temp_char_address[2]~154\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[2]~154_combout\ = (\inst15|temp_char_address~69_combout\) # ((\inst15|temp_char_address~115_combout\ & \inst15|temp_char_address[2]~114_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~115_combout\,
	datab => \inst15|temp_char_address~69_combout\,
	datad => \inst15|temp_char_address[2]~114_combout\,
	combout => \inst15|temp_char_address[2]~154_combout\);

-- Location: LCCOMB_X14_Y17_N10
\inst15|temp_char_address[2]~155\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[2]~155_combout\ = (!\inst15|temp_char_address~120_combout\ & (((!\inst15|temp_char_address~77_combout\) # (!\inst15|temp_char_address[1]~118_combout\)) # (!\inst15|temp_char_address~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~80_combout\,
	datab => \inst15|temp_char_address~120_combout\,
	datac => \inst15|temp_char_address[1]~118_combout\,
	datad => \inst15|temp_char_address~77_combout\,
	combout => \inst15|temp_char_address[2]~155_combout\);

-- Location: LCCOMB_X14_Y17_N28
\inst15|temp_char_address[2]~156\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[2]~156_combout\ = (\inst15|temp_char_address[2]~155_combout\) # ((\inst15|temp_char_address~33_combout\ & ((\inst15|temp_char_address~80_combout\) # (\inst15|temp_char_address~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~80_combout\,
	datab => \inst15|temp_char_address~33_combout\,
	datac => \inst15|temp_char_address~70_combout\,
	datad => \inst15|temp_char_address[2]~155_combout\,
	combout => \inst15|temp_char_address[2]~156_combout\);

-- Location: LCCOMB_X24_Y21_N14
\inst15|temp_char_address[2]~157\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[2]~157_combout\ = (\inst15|temp_char_address~37_combout\) # ((!\inst15|temp_char_address~142_combout\ & (!\inst15|temp_char_address~36_combout\ & \inst15|temp_char_address[2]~156_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~142_combout\,
	datab => \inst15|temp_char_address~36_combout\,
	datac => \inst15|temp_char_address~37_combout\,
	datad => \inst15|temp_char_address[2]~156_combout\,
	combout => \inst15|temp_char_address[2]~157_combout\);

-- Location: LCCOMB_X24_Y21_N4
\inst15|temp_char_address[2]~158\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[2]~158_combout\ = (\inst15|temp_char_address~195_combout\) # ((!\inst15|temp_char_address~48_combout\ & (\inst15|temp_char_address[2]~157_combout\ & !\inst15|temp_char_address~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~48_combout\,
	datab => \inst15|temp_char_address[2]~157_combout\,
	datac => \inst15|temp_char_address~32_combout\,
	datad => \inst15|temp_char_address~195_combout\,
	combout => \inst15|temp_char_address[2]~158_combout\);

-- Location: LCCOMB_X23_Y20_N26
\inst15|temp_char_address[2]~159\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[2]~159_combout\ = (\inst15|temp_char_address[2]~58_combout\ & ((\inst15|temp_char_address[2]~201_combout\) # (\inst15|temp_char_address[2]~154_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address[2]~58_combout\,
	datac => \inst15|temp_char_address[2]~201_combout\,
	datad => \inst15|temp_char_address[2]~154_combout\,
	combout => \inst15|temp_char_address[2]~159_combout\);

-- Location: LCCOMB_X23_Y20_N24
\inst15|temp_char_address[2]~160\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[2]~160_combout\ = (\inst15|temp_char_address[2]~151_combout\) # ((!\inst15|temp_char_address~92_combout\ & ((\inst15|temp_char_address[2]~159_combout\) # (!\inst15|temp_char_address[2]~153_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~92_combout\,
	datab => \inst15|temp_char_address[2]~153_combout\,
	datac => \inst15|temp_char_address[2]~159_combout\,
	datad => \inst15|temp_char_address[2]~151_combout\,
	combout => \inst15|temp_char_address[2]~160_combout\);

-- Location: LCCOMB_X23_Y18_N8
\inst15|temp_char_address[2]~161\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[2]~161_combout\ = (\inst15|temp_char_address~14_combout\ & (!\inst15|temp_char_address~41_combout\ & ((!\inst15|temp_char_address~24_combout\) # (!\inst15|temp_char_address~63_combout\)))) # 
-- (!\inst15|temp_char_address~14_combout\ & (((!\inst15|temp_char_address~24_combout\)) # (!\inst15|temp_char_address~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~14_combout\,
	datab => \inst15|temp_char_address~63_combout\,
	datac => \inst15|temp_char_address~41_combout\,
	datad => \inst15|temp_char_address~24_combout\,
	combout => \inst15|temp_char_address[2]~161_combout\);

-- Location: LCCOMB_X22_Y17_N0
\inst15|temp_char_address[2]~162\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[2]~162_combout\ = (!\inst15|temp_char_address[1]~125_combout\ & (\inst15|temp_char_address[2]~160_combout\ & (\inst15|temp_char_address[2]~150_combout\ & \inst15|temp_char_address[2]~161_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address[1]~125_combout\,
	datab => \inst15|temp_char_address[2]~160_combout\,
	datac => \inst15|temp_char_address[2]~150_combout\,
	datad => \inst15|temp_char_address[2]~161_combout\,
	combout => \inst15|temp_char_address[2]~162_combout\);

-- Location: LCCOMB_X23_Y19_N8
\inst15|temp_char_address[2]~164\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[2]~164_combout\ = (!\inst15|temp_char_address~96_combout\ & (\inst15|temp_char_address[4]~108_combout\ & (\inst15|temp_char_address~21_combout\ & !\inst15|temp_char_address~95_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~96_combout\,
	datab => \inst15|temp_char_address[4]~108_combout\,
	datac => \inst15|temp_char_address~21_combout\,
	datad => \inst15|temp_char_address~95_combout\,
	combout => \inst15|temp_char_address[2]~164_combout\);

-- Location: LCCOMB_X24_Y19_N14
\inst15|temp_char_address[3]~167\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[3]~167_combout\ = (\inst15|temp_char_address~92_combout\) # ((\inst15|temp_char_address~28_combout\) # ((\inst15|temp_char_address~89_combout\) # (\inst15|temp_char_address~105_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~92_combout\,
	datab => \inst15|temp_char_address~28_combout\,
	datac => \inst15|temp_char_address~89_combout\,
	datad => \inst15|temp_char_address~105_combout\,
	combout => \inst15|temp_char_address[3]~167_combout\);

-- Location: LCCOMB_X24_Y19_N28
\inst15|temp_char_address[3]~168\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[3]~168_combout\ = (\inst15|temp_char_address[3]~167_combout\) # ((\inst15|temp_char_address[3]~62_combout\ & (!\inst15|temp_char_address~56_combout\ & \inst15|temp_char_address~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address[3]~62_combout\,
	datab => \inst15|temp_char_address[3]~167_combout\,
	datac => \inst15|temp_char_address~56_combout\,
	datad => \inst15|temp_char_address~67_combout\,
	combout => \inst15|temp_char_address[3]~168_combout\);

-- Location: LCCOMB_X21_Y20_N12
\inst15|temp_char_address[3]~169\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[3]~169_combout\ = (\inst15|temp_char_address[3]~121_combout\ & (\inst15|temp_char_address~33_combout\ & (\inst15|temp_char_address[3]~117_combout\ & \inst15|temp_char_address~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address[3]~121_combout\,
	datab => \inst15|temp_char_address~33_combout\,
	datac => \inst15|temp_char_address[3]~117_combout\,
	datad => \inst15|temp_char_address~75_combout\,
	combout => \inst15|temp_char_address[3]~169_combout\);

-- Location: LCCOMB_X24_Y21_N26
\inst15|temp_char_address[3]~170\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[3]~170_combout\ = (!\inst15|temp_char_address~115_combout\ & (\inst15|temp_char_address[2]~114_combout\ & ((!\inst15|temp_char_address~46_combout\) # (!\inst15|temp_char_address~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~115_combout\,
	datab => \inst15|temp_char_address[2]~114_combout\,
	datac => \inst15|temp_char_address~43_combout\,
	datad => \inst15|temp_char_address~46_combout\,
	combout => \inst15|temp_char_address[3]~170_combout\);

-- Location: LCCOMB_X24_Y20_N24
\inst15|temp_char_address[3]~171\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[3]~171_combout\ = (\inst15|temp_char_address~69_combout\) # ((\inst15|temp_char_address[3]~170_combout\ & \inst15|temp_char_address~195_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~69_combout\,
	datac => \inst15|temp_char_address[3]~170_combout\,
	datad => \inst15|temp_char_address~195_combout\,
	combout => \inst15|temp_char_address[3]~171_combout\);

-- Location: LCCOMB_X21_Y18_N26
\inst15|temp_char_address[3]~172\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[3]~172_combout\ = (\inst15|temp_char_address[3]~168_combout\) # ((\inst15|temp_char_address[3]~65_combout\ & ((\inst15|temp_char_address[3]~169_combout\) # (\inst15|temp_char_address[3]~171_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address[3]~168_combout\,
	datab => \inst15|temp_char_address[3]~169_combout\,
	datac => \inst15|temp_char_address[3]~65_combout\,
	datad => \inst15|temp_char_address[3]~171_combout\,
	combout => \inst15|temp_char_address[3]~172_combout\);

-- Location: LCCOMB_X23_Y19_N2
\inst15|temp_char_address[3]~175\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[3]~175_combout\ = (\inst15|temp_char_address~41_combout\ & (!\inst15|temp_char_address~16_combout\ & (\inst15|temp_char_address~14_combout\ & !\inst15|temp_char_address~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~41_combout\,
	datab => \inst15|temp_char_address~16_combout\,
	datac => \inst15|temp_char_address~14_combout\,
	datad => \inst15|temp_char_address~60_combout\,
	combout => \inst15|temp_char_address[3]~175_combout\);

-- Location: LCCOMB_X24_Y17_N6
\inst15|temp_char_address[3]~176\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[3]~176_combout\ = (!\inst15|temp_char_address~110_combout\ & ((\inst15|temp_char_address~97_combout\) # ((\inst15|temp_char_address~109_combout\) # (\inst15|temp_char_address[3]~175_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~97_combout\,
	datab => \inst15|temp_char_address~109_combout\,
	datac => \inst15|temp_char_address~110_combout\,
	datad => \inst15|temp_char_address[3]~175_combout\,
	combout => \inst15|temp_char_address[3]~176_combout\);

-- Location: LCCOMB_X22_Y17_N28
\inst15|temp_char_address[3]~178\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[3]~178_combout\ = ((!\inst15|temp_char_address~80_combout\ & (!\inst15|temp_char_address~85_combout\ & !\inst15|temp_char_address~35_combout\))) # (!\inst15|temp_char_address~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~80_combout\,
	datab => \inst15|temp_char_address~14_combout\,
	datac => \inst15|temp_char_address~85_combout\,
	datad => \inst15|temp_char_address~35_combout\,
	combout => \inst15|temp_char_address[3]~178_combout\);

-- Location: LCCOMB_X24_Y17_N30
\inst15|temp_char_address[3]~179\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[3]~179_combout\ = (!\inst15|temp_char_address~132_combout\ & (\inst15|temp_char_address[3]~178_combout\ & ((!\inst15|temp_char_address[1]~125_combout\) # (!\inst15|temp_char_address~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~78_combout\,
	datab => \inst15|temp_char_address~132_combout\,
	datac => \inst15|temp_char_address[3]~178_combout\,
	datad => \inst15|temp_char_address[1]~125_combout\,
	combout => \inst15|temp_char_address[3]~179_combout\);

-- Location: LCCOMB_X24_Y20_N2
\inst15|temp_char_address[4]~182\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[4]~182_combout\ = (\inst15|temp_char_address[1]~106_combout\ & (!\inst15|temp_char_address~69_combout\ & !\inst15|temp_char_address~195_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address[1]~106_combout\,
	datac => \inst15|temp_char_address~69_combout\,
	datad => \inst15|temp_char_address~195_combout\,
	combout => \inst15|temp_char_address[4]~182_combout\);

-- Location: LCCOMB_X23_Y17_N30
\inst15|temp_char_address[4]~183\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[4]~183_combout\ = (\inst15|temp_char_address~33_combout\ & ((\inst15|temp_char_address~80_combout\) # (\inst15|temp_char_address~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~80_combout\,
	datab => \inst15|temp_char_address~33_combout\,
	datad => \inst15|temp_char_address~85_combout\,
	combout => \inst15|temp_char_address[4]~183_combout\);

-- Location: LCCOMB_X23_Y17_N4
\inst15|temp_char_address[4]~184\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[4]~184_combout\ = (\inst15|temp_char_address[1]~76_combout\ & (!\inst15|temp_char_address~71_combout\ & ((\inst15|temp_char_address~78_combout\) # (!\inst15|temp_char_address[0]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address[0]~81_combout\,
	datab => \inst15|temp_char_address[1]~76_combout\,
	datac => \inst15|temp_char_address~78_combout\,
	datad => \inst15|temp_char_address~71_combout\,
	combout => \inst15|temp_char_address[4]~184_combout\);

-- Location: LCCOMB_X23_Y17_N2
\inst15|temp_char_address[4]~185\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[4]~185_combout\ = (!\inst15|temp_char_address~36_combout\ & (\inst15|temp_char_address[4]~182_combout\ & ((\inst15|temp_char_address[4]~183_combout\) # (\inst15|temp_char_address[4]~184_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address[4]~183_combout\,
	datab => \inst15|temp_char_address~36_combout\,
	datac => \inst15|temp_char_address[4]~184_combout\,
	datad => \inst15|temp_char_address[4]~182_combout\,
	combout => \inst15|temp_char_address[4]~185_combout\);

-- Location: LCCOMB_X24_Y21_N16
\inst15|temp_char_address[4]~186\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[4]~186_combout\ = (\inst15|temp_char_address[4]~182_combout\ & ((\inst15|temp_char_address~48_combout\) # ((\inst15|temp_char_address~32_combout\) # (\inst15|temp_char_address~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~48_combout\,
	datab => \inst15|temp_char_address~32_combout\,
	datac => \inst15|temp_char_address~37_combout\,
	datad => \inst15|temp_char_address[4]~182_combout\,
	combout => \inst15|temp_char_address[4]~186_combout\);

-- Location: LCCOMB_X23_Y20_N30
\inst15|temp_char_address[4]~187\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[4]~187_combout\ = (\inst15|temp_char_address[1]~106_combout\ & ((\inst15|temp_char_address~57_combout\) # (!\inst15|temp_char_address[1]~112_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|temp_char_address~57_combout\,
	datac => \inst15|temp_char_address[1]~106_combout\,
	datad => \inst15|temp_char_address[1]~112_combout\,
	combout => \inst15|temp_char_address[4]~187_combout\);

-- Location: LCCOMB_X23_Y19_N28
\inst15|temp_char_address[4]~188\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[4]~188_combout\ = (((\inst15|temp_char_address[4]~187_combout\) # (\inst15|temp_char_address~95_combout\)) # (!\inst15|temp_char_address[0]~26_combout\)) # (!\inst15|temp_char_address[4]~108_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address[4]~108_combout\,
	datab => \inst15|temp_char_address[0]~26_combout\,
	datac => \inst15|temp_char_address[4]~187_combout\,
	datad => \inst15|temp_char_address~95_combout\,
	combout => \inst15|temp_char_address[4]~188_combout\);

-- Location: LCCOMB_X24_Y20_N0
\inst15|temp_char_address[4]~189\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[4]~189_combout\ = (\inst15|temp_char_address[3]~62_combout\ & (\inst15|temp_char_address[0]~29_combout\ & (!\inst15|temp_char_address~69_combout\ & \inst15|temp_char_address[1]~104_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address[3]~62_combout\,
	datab => \inst15|temp_char_address[0]~29_combout\,
	datac => \inst15|temp_char_address~69_combout\,
	datad => \inst15|temp_char_address[1]~104_combout\,
	combout => \inst15|temp_char_address[4]~189_combout\);

-- Location: LCCOMB_X24_Y21_N22
\inst15|temp_char_address[4]~190\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[4]~190_combout\ = (\inst15|temp_char_address[4]~188_combout\) # ((\inst15|temp_char_address[4]~186_combout\) # ((!\inst15|temp_char_address[3]~170_combout\ & \inst15|temp_char_address[4]~189_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address[3]~170_combout\,
	datab => \inst15|temp_char_address[4]~189_combout\,
	datac => \inst15|temp_char_address[4]~188_combout\,
	datad => \inst15|temp_char_address[4]~186_combout\,
	combout => \inst15|temp_char_address[4]~190_combout\);

-- Location: LCCOMB_X22_Y17_N12
\inst15|temp_char_address[4]~191\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[4]~191_combout\ = (\inst15|temp_char_address[4]~198_combout\ & (\inst15|temp_char_address[4]~98_combout\ & ((\inst15|temp_char_address[4]~185_combout\) # (\inst15|temp_char_address[4]~190_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address[4]~185_combout\,
	datab => \inst15|temp_char_address[4]~198_combout\,
	datac => \inst15|temp_char_address[4]~98_combout\,
	datad => \inst15|temp_char_address[4]~190_combout\,
	combout => \inst15|temp_char_address[4]~191_combout\);

-- Location: LCCOMB_X24_Y20_N10
\inst15|temp_char_address[5]~193\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[5]~193_combout\ = ((\inst15|temp_char_address[5]~44_combout\ & ((\inst15|temp_char_address[5]~122_combout\) # (!\inst15|temp_char_address[0]~51_combout\)))) # (!\inst15|temp_char_address[1]~139_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address[1]~139_combout\,
	datab => \inst15|temp_char_address[0]~51_combout\,
	datac => \inst15|temp_char_address[5]~44_combout\,
	datad => \inst15|temp_char_address[5]~122_combout\,
	combout => \inst15|temp_char_address[5]~193_combout\);

-- Location: LCCOMB_X14_Y18_N18
\inst11|temp_char_address~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address~38_combout\ = (\inst11|temp_char_address~35_combout\ & \inst15|temp_char_address~70_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|temp_char_address~35_combout\,
	datad => \inst15|temp_char_address~70_combout\,
	combout => \inst11|temp_char_address~38_combout\);

-- Location: LCCOMB_X12_Y19_N30
\inst11|temp_char_address[0]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[0]~52_combout\ = (\inst9|BCD_tens|Q_Out\(2) & (\inst9|BCD_tens|Q_Out\(0) & \inst11|temp_char_address~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|BCD_tens|Q_Out\(2),
	datac => \inst9|BCD_tens|Q_Out\(0),
	datad => \inst11|temp_char_address~40_combout\,
	combout => \inst11|temp_char_address[0]~52_combout\);

-- Location: LCCOMB_X12_Y19_N22
\inst11|temp_char_address[0]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[0]~55_combout\ = (!\inst11|temp_char_address~92_combout\ & (!\inst11|temp_char_address~27_combout\ & (\inst11|temp_char_address[0]~44_combout\ & !\inst11|temp_char_address[0]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|temp_char_address~92_combout\,
	datab => \inst11|temp_char_address~27_combout\,
	datac => \inst11|temp_char_address[0]~44_combout\,
	datad => \inst11|temp_char_address[0]~33_combout\,
	combout => \inst11|temp_char_address[0]~55_combout\);

-- Location: LCCOMB_X15_Y19_N16
\inst11|temp_char_address~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address~56_combout\ = (\inst9|BCD_ones|Q_Out\(2) & (\inst9|BCD_ones|Q_Out\(1) & (\inst9|BCD_ones|Q_Out\(0) & \inst11|temp_char_address~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|BCD_ones|Q_Out\(2),
	datab => \inst9|BCD_ones|Q_Out\(1),
	datac => \inst9|BCD_ones|Q_Out\(0),
	datad => \inst11|temp_char_address~36_combout\,
	combout => \inst11|temp_char_address~56_combout\);

-- Location: LCCOMB_X23_Y19_N18
\inst11|temp_char_address~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address~61_combout\ = ((!\inst5|temp_bird_dead~combout\) # (!\inst11|temp_char_address~24_combout\)) # (!\inst15|temp_char_address~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~16_combout\,
	datab => \inst11|temp_char_address~24_combout\,
	datac => \inst5|temp_bird_dead~combout\,
	combout => \inst11|temp_char_address~61_combout\);

-- Location: LCCOMB_X15_Y18_N20
\inst11|temp_char_address[1]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[1]~65_combout\ = (\inst15|temp_char_address~85_combout\ & ((\inst11|temp_char_address~29_combout\) # ((\inst11|temp_char_address~31_combout\ & \inst11|temp_char_address[0]~88_combout\)))) # (!\inst15|temp_char_address~85_combout\ 
-- & (\inst11|temp_char_address~31_combout\ & (\inst11|temp_char_address[0]~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~85_combout\,
	datab => \inst11|temp_char_address~31_combout\,
	datac => \inst11|temp_char_address[0]~88_combout\,
	datad => \inst11|temp_char_address~29_combout\,
	combout => \inst11|temp_char_address[1]~65_combout\);

-- Location: LCCOMB_X15_Y18_N10
\inst11|temp_char_address[1]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[1]~66_combout\ = (\inst11|temp_char_address[1]~65_combout\ & (((!\inst11|temp_char_address~24_combout\) # (!\sw0~input_o\)) # (!\inst15|temp_char_address~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~74_combout\,
	datab => \sw0~input_o\,
	datac => \inst11|temp_char_address~24_combout\,
	datad => \inst11|temp_char_address[1]~65_combout\,
	combout => \inst11|temp_char_address[1]~66_combout\);

-- Location: LCCOMB_X16_Y19_N10
\inst11|temp_char_address~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address~76_combout\ = (\inst15|temp_char_address~74_combout\ & (\inst6|pipe_move~0_combout\ & (!\inst9|BCD_ones|Q_Out\(3) & \inst11|temp_char_address~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~74_combout\,
	datab => \inst6|pipe_move~0_combout\,
	datac => \inst9|BCD_ones|Q_Out\(3),
	datad => \inst11|temp_char_address~35_combout\,
	combout => \inst11|temp_char_address~76_combout\);

-- Location: LCCOMB_X14_Y18_N14
\inst11|temp_char_address~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address~78_combout\ = (\inst11|temp_char_address~29_combout\ & ((\inst15|temp_char_address~79_combout\) # ((!\inst15|temp_char_address~70_combout\ & \inst15|temp_char_address~197_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~70_combout\,
	datab => \inst15|temp_char_address~79_combout\,
	datac => \inst15|temp_char_address~197_combout\,
	datad => \inst11|temp_char_address~29_combout\,
	combout => \inst11|temp_char_address~78_combout\);

-- Location: LCCOMB_X11_Y19_N18
\inst11|temp_char_address[4]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[4]~84_combout\ = (\inst11|temp_char_address[4]~69_combout\) # ((!\inst11|temp_char_address[5]~81_combout\) # (!\inst11|temp_char_address~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|temp_char_address[4]~69_combout\,
	datac => \inst11|temp_char_address~61_combout\,
	datad => \inst11|temp_char_address[5]~81_combout\,
	combout => \inst11|temp_char_address[4]~84_combout\);

-- Location: FF_X17_Y25_N13
\inst5|bird_y_pos[8]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|vert_sync_out~clkctrl_outclk\,
	d => \inst5|bird_y_pos[8]~7_combout\,
	clrn => \inst5|Move_Bird~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|bird_y_pos[8]~_emulated_q\);

-- Location: FF_X15_Y25_N13
\inst5|bird_y_pos[7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|vert_sync_out~clkctrl_outclk\,
	d => \inst5|bird_y_pos[7]~11_combout\,
	clrn => \inst5|Move_Bird~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|bird_y_pos[7]~_emulated_q\);

-- Location: FF_X15_Y23_N15
\inst6|pipe_move:clk_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|clk_cnt~1_combout\,
	ena => \inst5|Move_Bird~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[5]~q\);

-- Location: FF_X14_Y24_N7
\inst6|pipe_move:clk_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add0~6_combout\,
	ena => \inst5|Move_Bird~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[3]~q\);

-- Location: LCCOMB_X16_Y20_N30
\inst6|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Equal0~0_combout\ = (\inst6|Add0~12_combout\ & (\inst6|pipe_speed\(6) & (\inst6|Add0~10_combout\ $ (!\inst6|pipe_speed\(5))))) # (!\inst6|Add0~12_combout\ & (!\inst6|pipe_speed\(6) & (\inst6|Add0~10_combout\ $ (!\inst6|pipe_speed\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~12_combout\,
	datab => \inst6|Add0~10_combout\,
	datac => \inst6|pipe_speed\(5),
	datad => \inst6|pipe_speed\(6),
	combout => \inst6|Equal0~0_combout\);

-- Location: FF_X15_Y23_N17
\inst6|pipe_move:clk_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|clk_cnt~4_combout\,
	ena => \inst5|Move_Bird~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[8]~q\);

-- Location: FF_X15_Y23_N29
\inst6|pipe_move:clk_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|clk_cnt~8_combout\,
	ena => \inst5|Move_Bird~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[12]~q\);

-- Location: FF_X15_Y23_N3
\inst6|pipe_move:clk_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|clk_cnt~10_combout\,
	ena => \inst5|Move_Bird~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[15]~q\);

-- Location: FF_X15_Y23_N5
\inst6|pipe_move:clk_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|clk_cnt~12_combout\,
	ena => \inst5|Move_Bird~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[18]~q\);

-- Location: FF_X14_Y23_N7
\inst6|pipe_move:clk_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add0~38_combout\,
	ena => \inst5|Move_Bird~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[19]~q\);

-- Location: LCCOMB_X15_Y23_N18
\inst6|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Equal0~8_combout\ = (!\inst6|Add0~28_combout\ & (\inst6|Add0~36_combout\ & (!\inst6|Add0~38_combout\ & !\inst6|Add0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~28_combout\,
	datab => \inst6|Add0~36_combout\,
	datac => \inst6|Add0~38_combout\,
	datad => \inst6|Add0~40_combout\,
	combout => \inst6|Equal0~8_combout\);

-- Location: FF_X14_Y23_N11
\inst6|pipe_move:clk_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add0~42_combout\,
	ena => \inst5|Move_Bird~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[21]~q\);

-- Location: FF_X14_Y23_N13
\inst6|pipe_move:clk_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add0~44_combout\,
	ena => \inst5|Move_Bird~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[22]~q\);

-- Location: FF_X14_Y23_N19
\inst6|pipe_move:clk_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add0~50_combout\,
	ena => \inst5|Move_Bird~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[25]~q\);

-- Location: FF_X14_Y23_N21
\inst6|pipe_move:clk_cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add0~52_combout\,
	ena => \inst5|Move_Bird~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[26]~q\);

-- Location: FF_X14_Y23_N23
\inst6|pipe_move:clk_cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add0~54_combout\,
	ena => \inst5|Move_Bird~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[27]~q\);

-- Location: FF_X14_Y23_N25
\inst6|pipe_move:clk_cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add0~56_combout\,
	ena => \inst5|Move_Bird~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[28]~q\);

-- Location: LCCOMB_X14_Y26_N0
\inst6|Equal0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Equal0~11_combout\ = (!\inst6|Add0~56_combout\ & (!\inst6|Add0~52_combout\ & (!\inst6|Add0~54_combout\ & !\inst6|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~56_combout\,
	datab => \inst6|Add0~52_combout\,
	datac => \inst6|Add0~54_combout\,
	datad => \inst6|Add0~50_combout\,
	combout => \inst6|Equal0~11_combout\);

-- Location: FF_X14_Y23_N27
\inst6|pipe_move:clk_cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add0~58_combout\,
	ena => \inst5|Move_Bird~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[29]~q\);

-- Location: FF_X14_Y23_N29
\inst6|pipe_move:clk_cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add0~60_combout\,
	ena => \inst5|Move_Bird~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[30]~q\);

-- Location: FF_X14_Y23_N31
\inst6|pipe_move:clk_cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add0~62_combout\,
	ena => \inst5|Move_Bird~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[31]~q\);

-- Location: LCCOMB_X14_Y26_N18
\inst6|Equal0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Equal0~12_combout\ = (!\inst6|Add0~60_combout\ & (!\inst6|Add0~58_combout\ & (!\inst6|Add0~62_combout\ & \inst6|Equal0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~60_combout\,
	datab => \inst6|Add0~58_combout\,
	datac => \inst6|Add0~62_combout\,
	datad => \inst6|Equal0~11_combout\,
	combout => \inst6|Equal0~12_combout\);

-- Location: LCCOMB_X21_Y20_N6
\inst6|Add1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add1~24_combout\ = (\inst6|Add1~10_combout\ & \inst6|LessThan6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add1~10_combout\,
	datad => \inst6|LessThan6~0_combout\,
	combout => \inst6|Add1~24_combout\);

-- Location: LCCOMB_X21_Y20_N30
\inst6|Add1~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add1~27_combout\ = (\inst6|Add1~4_combout\ & \inst6|LessThan6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Add1~4_combout\,
	datad => \inst6|LessThan6~0_combout\,
	combout => \inst6|Add1~27_combout\);

-- Location: FF_X14_Y22_N9
\inst8|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|q[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|q\(2));

-- Location: FF_X14_Y22_N1
\inst8|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|q[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|q\(3));

-- Location: LCCOMB_X15_Y21_N30
\inst6|LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan2~0_combout\ = (!\inst8|q\(2) & \inst8|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|q\(2),
	datad => \inst8|q\(3),
	combout => \inst6|LessThan2~0_combout\);

-- Location: LCCOMB_X15_Y21_N24
\inst6|pipe1_top_y_pos[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe1_top_y_pos[1]~0_combout\ = (!\inst6|LessThan6~0_combout\ & (\inst5|Move_Bird~0_combout\ & \inst6|Equal0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan6~0_combout\,
	datab => \inst5|Move_Bird~0_combout\,
	datad => \inst6|Equal0~13_combout\,
	combout => \inst6|pipe1_top_y_pos[1]~0_combout\);

-- Location: LCCOMB_X14_Y22_N12
\inst6|pipe_move~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe_move~1_combout\ = (!\inst8|q\(3)) # (!\inst8|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|q\(2),
	datad => \inst8|q\(3),
	combout => \inst6|pipe_move~1_combout\);

-- Location: LCCOMB_X15_Y20_N30
\inst6|next_pipe_top~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|next_pipe_top~0_combout\ = \inst8|q\(3) $ (!\inst8|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|q\(3),
	datac => \inst8|q\(2),
	combout => \inst6|next_pipe_top~0_combout\);

-- Location: LCCOMB_X14_Y21_N16
\inst6|next_pipe_top~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|next_pipe_top~1_combout\ = (\inst8|q\(2) & !\inst8|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|q\(2),
	datac => \inst8|q\(3),
	combout => \inst6|next_pipe_top~1_combout\);

-- Location: LCCOMB_X16_Y17_N22
\inst6|Add2~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add2~21_combout\ = (!\inst6|Add2~16_combout\ & \inst6|LessThan7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add2~16_combout\,
	datac => \inst6|LessThan7~0_combout\,
	combout => \inst6|Add2~21_combout\);

-- Location: LCCOMB_X16_Y17_N30
\inst6|Add2~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add2~24_combout\ = (\inst6|Add2~10_combout\ & \inst6|LessThan7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add2~10_combout\,
	datac => \inst6|LessThan7~0_combout\,
	combout => \inst6|Add2~24_combout\);

-- Location: LCCOMB_X17_Y17_N6
\inst6|Add2~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add2~28_combout\ = (\inst6|LessThan7~0_combout\ & \inst6|Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|LessThan7~0_combout\,
	datad => \inst6|Add2~2_combout\,
	combout => \inst6|Add2~28_combout\);

-- Location: LCCOMB_X15_Y20_N2
\inst6|pipe2_top_y_pos[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe2_top_y_pos[1]~0_combout\ = (\inst5|Move_Bird~0_combout\ & (!\inst6|LessThan7~0_combout\ & \inst6|Equal0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Move_Bird~0_combout\,
	datab => \inst6|LessThan7~0_combout\,
	datad => \inst6|Equal0~13_combout\,
	combout => \inst6|pipe2_top_y_pos[1]~0_combout\);

-- Location: LCCOMB_X19_Y20_N30
\inst6|Add3~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add3~25_combout\ = (\inst6|LessThan8~0_combout\ & !\inst6|Add3~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|LessThan8~0_combout\,
	datac => \inst6|Add3~8_combout\,
	combout => \inst6|Add3~25_combout\);

-- Location: LCCOMB_X16_Y20_N16
\inst6|pipe3_top_y_pos[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe3_top_y_pos[1]~0_combout\ = (!\inst6|LessThan8~0_combout\ & (\inst5|Move_Bird~0_combout\ & \inst6|Equal0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan8~0_combout\,
	datab => \inst5|Move_Bird~0_combout\,
	datad => \inst6|Equal0~13_combout\,
	combout => \inst6|pipe3_top_y_pos[1]~0_combout\);

-- Location: LCCOMB_X16_Y18_N20
\inst6|Equal4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Equal4~1_combout\ = (\inst6|pipe4_x_pos\(3) & (!\inst6|pipe4_x_pos\(2) & (!\inst6|pipe4_x_pos\(1) & !\inst6|pipe4_x_pos\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe4_x_pos\(3),
	datab => \inst6|pipe4_x_pos\(2),
	datac => \inst6|pipe4_x_pos\(1),
	datad => \inst6|pipe4_x_pos\(0),
	combout => \inst6|Equal4~1_combout\);

-- Location: LCCOMB_X17_Y18_N28
\inst6|Add4~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add4~20_combout\ = (\inst6|LessThan9~0_combout\ & \inst6|Add4~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|LessThan9~0_combout\,
	datad => \inst6|Add4~18_combout\,
	combout => \inst6|Add4~20_combout\);

-- Location: LCCOMB_X16_Y18_N30
\inst6|Add4~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add4~26_combout\ = (!\inst6|Add4~6_combout\ & \inst6|LessThan9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Add4~6_combout\,
	datad => \inst6|LessThan9~0_combout\,
	combout => \inst6|Add4~26_combout\);

-- Location: LCCOMB_X17_Y18_N0
\inst6|Add4~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add4~28_combout\ = (\inst6|LessThan9~0_combout\ & \inst6|Add4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|LessThan9~0_combout\,
	datac => \inst6|Add4~2_combout\,
	combout => \inst6|Add4~28_combout\);

-- Location: LCCOMB_X17_Y18_N30
\inst6|Add4~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add4~29_combout\ = (\inst6|LessThan9~0_combout\ & \inst6|Add4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|LessThan9~0_combout\,
	datad => \inst6|Add4~0_combout\,
	combout => \inst6|Add4~29_combout\);

-- Location: LCCOMB_X17_Y20_N2
\inst6|pipe4_top_y_pos[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe4_top_y_pos[1]~0_combout\ = (\inst5|Move_Bird~0_combout\ & (!\inst6|LessThan9~0_combout\ & \inst6|Equal0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Move_Bird~0_combout\,
	datab => \inst6|LessThan9~0_combout\,
	datad => \inst6|Equal0~13_combout\,
	combout => \inst6|pipe4_top_y_pos[1]~0_combout\);

-- Location: LCCOMB_X17_Y22_N10
\inst6|Equal5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Equal5~0_combout\ = (\inst6|pipe5_x_pos\(7) & (!\inst6|pipe5_x_pos\(9) & (\inst6|pipe5_x_pos\(5) & !\inst6|pipe5_x_pos\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe5_x_pos\(7),
	datab => \inst6|pipe5_x_pos\(9),
	datac => \inst6|pipe5_x_pos\(5),
	datad => \inst6|pipe5_x_pos\(4),
	combout => \inst6|Equal5~0_combout\);

-- Location: LCCOMB_X20_Y22_N28
\inst6|Equal5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Equal5~1_combout\ = (!\inst6|pipe5_x_pos\(2) & (!\inst6|pipe5_x_pos\(3) & (!\inst6|pipe5_x_pos\(1) & !\inst6|pipe5_x_pos\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe5_x_pos\(2),
	datab => \inst6|pipe5_x_pos\(3),
	datac => \inst6|pipe5_x_pos\(1),
	datad => \inst6|pipe5_x_pos\(0),
	combout => \inst6|Equal5~1_combout\);

-- Location: LCCOMB_X17_Y22_N0
\inst6|LessThan10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan10~0_combout\ = ((\inst6|pipe5_x_pos\(6)) # ((!\inst6|Equal5~0_combout\) # (!\inst6|pipe5_x_pos\(8)))) # (!\inst6|Equal5~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Equal5~1_combout\,
	datab => \inst6|pipe5_x_pos\(6),
	datac => \inst6|pipe5_x_pos\(8),
	datad => \inst6|Equal5~0_combout\,
	combout => \inst6|LessThan10~0_combout\);

-- Location: LCCOMB_X19_Y22_N12
\inst6|Add5~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add5~20_combout\ = (\inst6|Add5~18_combout\) # (!\inst6|LessThan10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|LessThan10~0_combout\,
	datad => \inst6|Add5~18_combout\,
	combout => \inst6|Add5~20_combout\);

-- Location: LCCOMB_X17_Y22_N4
\inst6|Add5~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add5~21_combout\ = (!\inst6|Add5~16_combout\) # (!\inst6|LessThan10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|LessThan10~0_combout\,
	datad => \inst6|Add5~16_combout\,
	combout => \inst6|Add5~21_combout\);

-- Location: LCCOMB_X16_Y22_N8
\inst6|Add5~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add5~22_combout\ = (\inst6|LessThan10~0_combout\ & !\inst6|Add5~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|LessThan10~0_combout\,
	datac => \inst6|Add5~14_combout\,
	combout => \inst6|Add5~22_combout\);

-- Location: LCCOMB_X16_Y22_N6
\inst6|Add5~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add5~23_combout\ = (\inst6|LessThan10~0_combout\ & \inst6|Add5~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|LessThan10~0_combout\,
	datad => \inst6|Add5~12_combout\,
	combout => \inst6|Add5~23_combout\);

-- Location: LCCOMB_X16_Y22_N0
\inst6|Add5~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add5~24_combout\ = (!\inst6|Add5~10_combout\) # (!\inst6|LessThan10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|LessThan10~0_combout\,
	datac => \inst6|Add5~10_combout\,
	combout => \inst6|Add5~24_combout\);

-- Location: LCCOMB_X17_Y22_N6
\inst6|Add5~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add5~25_combout\ = (\inst6|LessThan10~0_combout\ & \inst6|Add5~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|LessThan10~0_combout\,
	datad => \inst6|Add5~8_combout\,
	combout => \inst6|Add5~25_combout\);

-- Location: LCCOMB_X16_Y22_N10
\inst6|Add5~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add5~26_combout\ = (\inst6|LessThan10~0_combout\ & \inst6|Add5~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|LessThan10~0_combout\,
	datad => \inst6|Add5~6_combout\,
	combout => \inst6|Add5~26_combout\);

-- Location: LCCOMB_X16_Y22_N4
\inst6|Add5~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add5~27_combout\ = (\inst6|LessThan10~0_combout\ & \inst6|Add5~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|LessThan10~0_combout\,
	datad => \inst6|Add5~4_combout\,
	combout => \inst6|Add5~27_combout\);

-- Location: LCCOMB_X16_Y22_N2
\inst6|Add5~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add5~28_combout\ = (\inst6|LessThan10~0_combout\ & \inst6|Add5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|LessThan10~0_combout\,
	datac => \inst6|Add5~2_combout\,
	combout => \inst6|Add5~28_combout\);

-- Location: LCCOMB_X17_Y22_N8
\inst6|Add5~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add5~29_combout\ = (\inst6|LessThan10~0_combout\ & \inst6|Add5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|LessThan10~0_combout\,
	datad => \inst6|Add5~0_combout\,
	combout => \inst6|Add5~29_combout\);

-- Location: LCCOMB_X16_Y20_N0
\inst6|pipe5_top_y_pos[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe5_top_y_pos[1]~0_combout\ = (!\inst6|LessThan10~0_combout\ & (\inst5|Move_Bird~0_combout\ & \inst6|Equal0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan10~0_combout\,
	datab => \inst5|Move_Bird~0_combout\,
	datad => \inst6|Equal0~13_combout\,
	combout => \inst6|pipe5_top_y_pos[1]~0_combout\);

-- Location: LCCOMB_X22_Y21_N24
\inst1|process_0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~6_combout\ = (!\inst1|v_count\(5) & (!\inst1|v_count\(4) & ((!\inst1|v_count\(3)) # (!\inst1|v_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(2),
	datab => \inst1|v_count\(3),
	datac => \inst1|v_count\(5),
	datad => \inst1|v_count\(4),
	combout => \inst1|process_0~6_combout\);

-- Location: LCCOMB_X22_Y20_N10
\inst1|process_0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~9_combout\ = ((!\inst1|h_count\(2) & ((!\inst1|h_count\(1)) # (!\inst1|h_count\(0))))) # (!\inst1|h_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(2),
	datab => \inst1|h_count\(3),
	datac => \inst1|h_count\(0),
	datad => \inst1|h_count\(1),
	combout => \inst1|process_0~9_combout\);

-- Location: LCCOMB_X22_Y20_N18
\inst1|process_0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~10_combout\ = (!\inst1|h_count\(6) & (((\inst1|process_0~9_combout\) # (!\inst1|h_count\(5))) # (!\inst1|h_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(6),
	datab => \inst1|h_count\(4),
	datac => \inst1|h_count\(5),
	datad => \inst1|process_0~9_combout\,
	combout => \inst1|process_0~10_combout\);

-- Location: LCCOMB_X22_Y20_N28
\inst1|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Equal1~0_combout\ = ((\inst1|h_count\(8)) # ((\inst1|h_count\(2)) # (!\inst1|h_count\(7)))) # (!\inst1|h_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(5),
	datab => \inst1|h_count\(8),
	datac => \inst1|h_count\(7),
	datad => \inst1|h_count\(2),
	combout => \inst1|Equal1~0_combout\);

-- Location: FF_X14_Y19_N27
\inst14|Clk1hz_temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst14|Clk1hz_temp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|Clk1hz_temp~q\);

-- Location: FF_X16_Y25_N31
\inst5|bird_y_motion[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|vert_sync_out~clkctrl_outclk\,
	d => \inst5|bird_y_motion~0_combout\,
	ena => \inst5|Move_Bird~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|bird_y_motion\(1));

-- Location: LCCOMB_X17_Y25_N12
\inst5|bird_y_pos[8]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_y_pos[8]~7_combout\ = \inst5|bird_y_pos[8]~5_combout\ $ (\inst5|Add4~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_pos[8]~5_combout\,
	datac => \inst5|Add4~16_combout\,
	combout => \inst5|bird_y_pos[8]~7_combout\);

-- Location: LCCOMB_X15_Y25_N12
\inst5|bird_y_pos[7]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_y_pos[7]~11_combout\ = \inst5|Add4~14_combout\ $ (\inst5|bird_y_pos[7]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Add4~14_combout\,
	datad => \inst5|bird_y_pos[7]~9_combout\,
	combout => \inst5|bird_y_pos[7]~11_combout\);

-- Location: LCCOMB_X14_Y18_N6
\inst6|pipe_move~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe_move~4_combout\ = (!\inst9|BCD_tens|Q_Out\(3) & (\inst9|BCD_ones|Q_Out\(1) & \inst9|BCD_tens|Q_Out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|BCD_tens|Q_Out\(3),
	datac => \inst9|BCD_ones|Q_Out\(1),
	datad => \inst9|BCD_tens|Q_Out\(1),
	combout => \inst6|pipe_move~4_combout\);

-- Location: LCCOMB_X15_Y23_N14
\inst6|clk_cnt~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|clk_cnt~1_combout\ = (\inst6|Add0~10_combout\ & !\inst6|Equal0~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~10_combout\,
	datad => \inst6|Equal0~13_combout\,
	combout => \inst6|clk_cnt~1_combout\);

-- Location: LCCOMB_X15_Y23_N16
\inst6|clk_cnt~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|clk_cnt~4_combout\ = (\inst6|Add0~16_combout\ & !\inst6|Equal0~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add0~16_combout\,
	datad => \inst6|Equal0~13_combout\,
	combout => \inst6|clk_cnt~4_combout\);

-- Location: LCCOMB_X15_Y23_N28
\inst6|clk_cnt~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|clk_cnt~8_combout\ = (\inst6|Add0~24_combout\ & !\inst6|Equal0~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~24_combout\,
	datad => \inst6|Equal0~13_combout\,
	combout => \inst6|clk_cnt~8_combout\);

-- Location: LCCOMB_X15_Y23_N2
\inst6|clk_cnt~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|clk_cnt~10_combout\ = (\inst6|Add0~30_combout\ & !\inst6|Equal0~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add0~30_combout\,
	datad => \inst6|Equal0~13_combout\,
	combout => \inst6|clk_cnt~10_combout\);

-- Location: LCCOMB_X15_Y23_N4
\inst6|clk_cnt~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|clk_cnt~12_combout\ = (\inst6|Add0~36_combout\ & !\inst6|Equal0~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add0~36_combout\,
	datad => \inst6|Equal0~13_combout\,
	combout => \inst6|clk_cnt~12_combout\);

-- Location: FF_X14_Y22_N3
\inst8|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|q[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|q\(1));

-- Location: LCCOMB_X11_Y19_N28
\inst14|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|LessThan0~0_combout\ = (\inst14|count\(20)) # ((\inst14|count\(22)) # ((\inst14|count\(19)) # (\inst14|count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|count\(20),
	datab => \inst14|count\(22),
	datac => \inst14|count\(19),
	datad => \inst14|count\(21),
	combout => \inst14|LessThan0~0_combout\);

-- Location: LCCOMB_X11_Y19_N2
\inst14|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|LessThan0~1_combout\ = (\inst14|count\(23)) # ((\inst14|count\(26)) # ((\inst14|count\(24)) # (\inst14|count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|count\(23),
	datab => \inst14|count\(26),
	datac => \inst14|count\(24),
	datad => \inst14|count\(25),
	combout => \inst14|LessThan0~1_combout\);

-- Location: LCCOMB_X11_Y19_N20
\inst14|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|LessThan0~2_combout\ = (\inst14|count\(29)) # ((\inst14|count\(28)) # ((\inst14|count\(27)) # (\inst14|count\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|count\(29),
	datab => \inst14|count\(28),
	datac => \inst14|count\(27),
	datad => \inst14|count\(30),
	combout => \inst14|LessThan0~2_combout\);

-- Location: LCCOMB_X11_Y19_N22
\inst14|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|LessThan0~3_combout\ = (\inst14|LessThan0~2_combout\) # ((\inst14|LessThan0~0_combout\) # (\inst14|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|LessThan0~2_combout\,
	datac => \inst14|LessThan0~0_combout\,
	datad => \inst14|LessThan0~1_combout\,
	combout => \inst14|LessThan0~3_combout\);

-- Location: LCCOMB_X11_Y20_N0
\inst14|LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|LessThan0~4_combout\ = (\inst14|count\(8) & ((\inst14|count\(6)) # ((\inst14|count\(7)) # (\inst14|count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|count\(6),
	datab => \inst14|count\(7),
	datac => \inst14|count\(8),
	datad => \inst14|count\(5),
	combout => \inst14|LessThan0~4_combout\);

-- Location: LCCOMB_X11_Y20_N2
\inst14|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|LessThan0~5_combout\ = (\inst14|count\(11)) # ((\inst14|count\(10)) # ((\inst14|count\(12)) # (\inst14|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|count\(11),
	datab => \inst14|count\(10),
	datac => \inst14|count\(12),
	datad => \inst14|count\(9),
	combout => \inst14|LessThan0~5_combout\);

-- Location: LCCOMB_X11_Y20_N12
\inst14|LessThan0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|LessThan0~6_combout\ = (\inst14|count\(14)) # ((\inst14|count\(13) & ((\inst14|LessThan0~4_combout\) # (\inst14|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|count\(14),
	datab => \inst14|LessThan0~4_combout\,
	datac => \inst14|count\(13),
	datad => \inst14|LessThan0~5_combout\,
	combout => \inst14|LessThan0~6_combout\);

-- Location: LCCOMB_X11_Y19_N8
\inst14|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|LessThan0~7_combout\ = (\inst14|count\(17) & (\inst14|count\(18) & (\inst14|count\(16) & \inst14|count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|count\(17),
	datab => \inst14|count\(18),
	datac => \inst14|count\(16),
	datad => \inst14|count\(15),
	combout => \inst14|LessThan0~7_combout\);

-- Location: LCCOMB_X11_Y19_N26
\inst14|LessThan0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|LessThan0~8_combout\ = (!\inst14|count\(31) & ((\inst14|LessThan0~3_combout\) # ((\inst14|LessThan0~6_combout\ & \inst14|LessThan0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|LessThan0~6_combout\,
	datab => \inst14|LessThan0~7_combout\,
	datac => \inst14|LessThan0~3_combout\,
	datad => \inst14|count\(31),
	combout => \inst14|LessThan0~8_combout\);

-- Location: LCCOMB_X14_Y19_N26
\inst14|Clk1hz_temp~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|Clk1hz_temp~0_combout\ = \inst14|Clk1hz_temp~q\ $ (\inst14|LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|Clk1hz_temp~q\,
	datad => \inst14|LessThan0~8_combout\,
	combout => \inst14|Clk1hz_temp~0_combout\);

-- Location: LCCOMB_X17_Y22_N2
\inst6|Equal5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Equal5~2_combout\ = (\inst6|Equal5~1_combout\ & (\inst6|pipe5_x_pos\(6) & (!\inst6|pipe5_x_pos\(8) & \inst6|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Equal5~1_combout\,
	datab => \inst6|pipe5_x_pos\(6),
	datac => \inst6|pipe5_x_pos\(8),
	datad => \inst6|Equal5~0_combout\,
	combout => \inst6|Equal5~2_combout\);

-- Location: LCCOMB_X19_Y17_N12
\inst6|Equal2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Equal2~2_combout\ = (!\inst6|pipe2_x_pos\(8) & !\inst6|pipe2_x_pos\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe2_x_pos\(8),
	datad => \inst6|pipe2_x_pos\(6),
	combout => \inst6|Equal2~2_combout\);

-- Location: LCCOMB_X16_Y25_N22
\inst5|Move_Bird~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Move_Bird~2_combout\ = (\inst5|bird_y_pos[3]~26_combout\ & ((\inst5|bird_y_pos[0]~38_combout\) # ((\inst5|bird_y_pos[1]~34_combout\) # (\inst5|bird_y_pos[2]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_pos[0]~38_combout\,
	datab => \inst5|bird_y_pos[1]~34_combout\,
	datac => \inst5|bird_y_pos[2]~30_combout\,
	datad => \inst5|bird_y_pos[3]~26_combout\,
	combout => \inst5|Move_Bird~2_combout\);

-- Location: LCCOMB_X16_Y25_N30
\inst5|bird_y_motion~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_y_motion~0_combout\ = (\inst5|Move_Bird~5_combout\) # ((!\inst5|bird_y_pos[9]~2_combout\ & \inst5|LessThan5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_pos[9]~2_combout\,
	datac => \inst5|LessThan5~2_combout\,
	datad => \inst5|Move_Bird~5_combout\,
	combout => \inst5|bird_y_motion~0_combout\);

-- Location: FF_X14_Y22_N19
\inst8|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|n3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|q\(0));

-- Location: FF_X22_Y1_N17
\inst2|filter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|filter\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|filter\(7));

-- Location: LCCOMB_X22_Y1_N16
\inst2|MOUSE_CLK_FILTER~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|MOUSE_CLK_FILTER~0_combout\ = (\inst2|filter\(2) & (\inst2|filter\(7) & \inst2|filter\(4))) # (!\inst2|filter\(2) & ((\inst2|filter\(7)) # (\inst2|filter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|filter\(2),
	datac => \inst2|filter\(7),
	datad => \inst2|filter\(4),
	combout => \inst2|MOUSE_CLK_FILTER~0_combout\);

-- Location: FF_X37_Y12_N1
\inst2|mouse_state.INPUT_PACKETS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|mouse_state.INPUT_PACKETS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|mouse_state.INPUT_PACKETS~q\);

-- Location: LCCOMB_X37_Y13_N12
\inst2|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Selector6~0_combout\ = (\inst2|send_data~q\ & ((\inst2|mouse_state.INPUT_PACKETS~q\) # (!\inst2|mouse_state.INHIBIT_TRANS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|send_data~q\,
	datab => \inst2|mouse_state.INHIBIT_TRANS~q\,
	datad => \inst2|mouse_state.INPUT_PACKETS~q\,
	combout => \inst2|Selector6~0_combout\);

-- Location: FF_X38_Y13_N15
\inst2|inhibit_wait_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|inhibit_wait_count[0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inhibit_wait_count\(0));

-- Location: FF_X35_Y12_N23
\inst2|PACKET_COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|PACKET_COUNT[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|PACKET_COUNT\(0));

-- Location: FF_X14_Y22_N29
\inst8|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|q[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|q\(10));

-- Location: FF_X14_Y22_N15
\inst8|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|q[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|q\(11));

-- Location: FF_X14_Y22_N21
\inst8|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|q[13]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|q\(13));

-- Location: FF_X14_Y22_N31
\inst8|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|q[15]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|q\(15));

-- Location: LCCOMB_X14_Y22_N18
\inst8|n3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|n3~0_combout\ = \inst8|q\(15) $ (\inst8|q\(10) $ (\inst8|q\(11) $ (\inst8|q\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|q\(15),
	datab => \inst8|q\(10),
	datac => \inst8|q\(11),
	datad => \inst8|q\(13),
	combout => \inst8|n3~0_combout\);

-- Location: FF_X37_Y12_N11
\inst2|iready_set\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|iready_set~0_combout\,
	ena => \inst2|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|iready_set~q\);

-- Location: FF_X36_Y13_N13
\inst2|mouse_state.WAIT_CMD_ACK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|mouse_state.WAIT_CMD_ACK~q\);

-- Location: LCCOMB_X37_Y12_N0
\inst2|mouse_state.INPUT_PACKETS~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|mouse_state.INPUT_PACKETS~0_combout\ = (\inst2|mouse_state.INPUT_PACKETS~q\) # ((\inst2|mouse_state.WAIT_CMD_ACK~q\ & \inst2|iready_set~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|mouse_state.WAIT_CMD_ACK~q\,
	datac => \inst2|mouse_state.INPUT_PACKETS~q\,
	datad => \inst2|iready_set~q\,
	combout => \inst2|mouse_state.INPUT_PACKETS~0_combout\);

-- Location: LCCOMB_X38_Y13_N14
\inst2|inhibit_wait_count[0]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inhibit_wait_count[0]~33_combout\ = \inst2|inhibit_wait_count\(0) $ (!\inst2|mouse_state.INHIBIT_TRANS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inhibit_wait_count\(0),
	datad => \inst2|mouse_state.INHIBIT_TRANS~q\,
	combout => \inst2|inhibit_wait_count[0]~33_combout\);

-- Location: LCCOMB_X35_Y12_N22
\inst2|PACKET_COUNT[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|PACKET_COUNT[0]~3_combout\ = (\inst2|PACKET_COUNT[1]~4_combout\ & ((\inst2|PACKET_COUNT\(1)) # (!\inst2|PACKET_COUNT\(0)))) # (!\inst2|PACKET_COUNT[1]~4_combout\ & (\inst2|PACKET_COUNT\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|PACKET_COUNT[1]~4_combout\,
	datac => \inst2|PACKET_COUNT\(0),
	datad => \inst2|PACKET_COUNT\(1),
	combout => \inst2|PACKET_COUNT[0]~3_combout\);

-- Location: FF_X14_Y22_N7
\inst8|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|q[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|q\(9));

-- Location: FF_X14_Y22_N13
\inst8|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst8|q\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|q\(12));

-- Location: FF_X14_Y22_N5
\inst8|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|q[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|q\(14));

-- Location: LCCOMB_X37_Y12_N10
\inst2|iready_set~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|iready_set~0_combout\ = (\inst2|READ_CHAR~q\ & (((!\inst2|LessThan1~0_combout\)))) # (!\inst2|READ_CHAR~q\ & (\mouse_data~input_o\ & (\inst2|iready_set~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|READ_CHAR~q\,
	datab => \mouse_data~input_o\,
	datac => \inst2|iready_set~q\,
	datad => \inst2|LessThan1~0_combout\,
	combout => \inst2|iready_set~0_combout\);

-- Location: LCCOMB_X36_Y13_N12
\inst2|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Selector4~0_combout\ = (\inst2|output_ready~q\ & ((\inst2|mouse_state.WAIT_OUTPUT_READY~q\) # ((\inst2|mouse_state.WAIT_CMD_ACK~q\ & !\inst2|iready_set~q\)))) # (!\inst2|output_ready~q\ & (((\inst2|mouse_state.WAIT_CMD_ACK~q\ & 
-- !\inst2|iready_set~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|output_ready~q\,
	datab => \inst2|mouse_state.WAIT_OUTPUT_READY~q\,
	datac => \inst2|mouse_state.WAIT_CMD_ACK~q\,
	datad => \inst2|iready_set~q\,
	combout => \inst2|Selector4~0_combout\);

-- Location: FF_X14_Y22_N23
\inst8|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst8|q\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|q\(8));

-- Location: FF_X14_Y22_N27
\inst8|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|q[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|q\(7));

-- Location: FF_X14_Y22_N25
\inst8|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|q[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|q\(6));

-- Location: FF_X14_Y22_N17
\inst8|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|q[5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|q\(5));

-- Location: FF_X14_Y22_N11
\inst8|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|q[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|q\(4));

-- Location: LCCOMB_X23_Y19_N6
\inst15|temp_char_address[1]~200\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[1]~200_combout\ = (\inst15|temp_char_address[1]~137_combout\ & (((!\inst15|temp_char_address~197_combout\ & !\inst15|temp_char_address~16_combout\)) # (!\inst15|temp_char_address~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~14_combout\,
	datab => \inst15|temp_char_address~197_combout\,
	datac => \inst15|temp_char_address~16_combout\,
	datad => \inst15|temp_char_address[1]~137_combout\,
	combout => \inst15|temp_char_address[1]~200_combout\);

-- Location: LCCOMB_X24_Y21_N2
\inst15|temp_char_address[2]~201\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[2]~201_combout\ = (\inst15|temp_char_address[2]~158_combout\ & (\inst15|temp_char_address[2]~114_combout\ & ((!\inst15|temp_char_address~43_combout\) # (!\inst15|temp_char_address~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~46_combout\,
	datab => \inst15|temp_char_address[2]~158_combout\,
	datac => \inst15|temp_char_address~43_combout\,
	datad => \inst15|temp_char_address[2]~114_combout\,
	combout => \inst15|temp_char_address[2]~201_combout\);

-- Location: LCCOMB_X14_Y19_N22
\inst11|temp_char_address[2]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[2]~90_combout\ = (((\inst9|BCD_ones|Q_Out\(3)) # (!\inst15|temp_char_address~74_combout\)) # (!\inst11|temp_char_address~35_combout\)) # (!\inst9|BCD_ones|Q_Out\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|BCD_ones|Q_Out\(2),
	datab => \inst11|temp_char_address~35_combout\,
	datac => \inst9|BCD_ones|Q_Out\(3),
	datad => \inst15|temp_char_address~74_combout\,
	combout => \inst11|temp_char_address[2]~90_combout\);

-- Location: LCCOMB_X35_Y12_N28
\inst2|PACKET_COUNT[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|PACKET_COUNT[1]~4_combout\ = (!\inst2|mouse_state.WAIT_OUTPUT_READY~q\ & (\inst2|READ_CHAR~q\ & !\inst2|LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|mouse_state.WAIT_OUTPUT_READY~q\,
	datac => \inst2|READ_CHAR~q\,
	datad => \inst2|LessThan1~0_combout\,
	combout => \inst2|PACKET_COUNT[1]~4_combout\);

-- Location: LCCOMB_X35_Y12_N14
\inst2|left_button~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|left_button~1_combout\ = (\inst2|PACKET_COUNT\(0) & (!\inst2|mouse_state.WAIT_OUTPUT_READY~q\ & (\inst2|READ_CHAR~q\ & !\inst2|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|PACKET_COUNT\(0),
	datab => \inst2|mouse_state.WAIT_OUTPUT_READY~q\,
	datac => \inst2|READ_CHAR~q\,
	datad => \inst2|LessThan1~0_combout\,
	combout => \inst2|left_button~1_combout\);

-- Location: LCCOMB_X11_Y19_N16
\inst11|temp_char_address[0]~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[0]~100_combout\ = (\inst11|temp_char_address~36_combout\ & (((\inst9|BCD_ones|Q_Out\(0) & !\inst9|BCD_ones|Q_Out\(1))) # (!\inst9|BCD_ones|Q_Out\(2)))) # (!\inst11|temp_char_address~36_combout\ & (((!\inst9|BCD_ones|Q_Out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|temp_char_address~36_combout\,
	datab => \inst9|BCD_ones|Q_Out\(2),
	datac => \inst9|BCD_ones|Q_Out\(0),
	datad => \inst9|BCD_ones|Q_Out\(1),
	combout => \inst11|temp_char_address[0]~100_combout\);

-- Location: LCCOMB_X24_Y20_N22
\inst15|temp_char_address[1]~202\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[1]~202_combout\ = ((\inst15|temp_char_address[1]~139_combout\ & (\inst15|temp_char_address[0]~51_combout\ & \inst15|temp_char_address[1]~145_combout\))) # (!\inst15|temp_char_address[1]~140_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address[1]~139_combout\,
	datab => \inst15|temp_char_address[1]~140_combout\,
	datac => \inst15|temp_char_address[0]~51_combout\,
	datad => \inst15|temp_char_address[1]~145_combout\,
	combout => \inst15|temp_char_address[1]~202_combout\);

-- Location: LCCOMB_X24_Y20_N20
\inst15|temp_char_address[1]~203\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[1]~203_combout\ = (\inst15|temp_char_address[5]~107_combout\ & ((\inst15|temp_char_address[1]~141_combout\) # ((\inst15|temp_char_address[1]~104_combout\ & \inst15|temp_char_address[1]~202_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address[1]~104_combout\,
	datab => \inst15|temp_char_address[1]~141_combout\,
	datac => \inst15|temp_char_address[1]~202_combout\,
	datad => \inst15|temp_char_address[5]~107_combout\,
	combout => \inst15|temp_char_address[1]~203_combout\);

-- Location: LCCOMB_X15_Y21_N2
\inst6|pipe1_bottom_y_pos[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe1_bottom_y_pos[3]~1_combout\ = !\inst8|q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|q\(3),
	combout => \inst6|pipe1_bottom_y_pos[3]~1_combout\);

-- Location: LCCOMB_X15_Y21_N0
\inst6|pipe1_bottom_y_pos[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe1_bottom_y_pos[2]~2_combout\ = !\inst8|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|q\(2),
	combout => \inst6|pipe1_bottom_y_pos[2]~2_combout\);

-- Location: LCCOMB_X15_Y21_N4
\inst6|pipe1_top_y_pos[7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe1_top_y_pos[7]~2_combout\ = !\inst6|next_pipe_top~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|next_pipe_top~0_combout\,
	combout => \inst6|pipe1_top_y_pos[7]~2_combout\);

-- Location: LCCOMB_X15_Y20_N10
\inst6|pipe2_bottom_y_pos[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe2_bottom_y_pos[3]~1_combout\ = !\inst8|q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|q\(3),
	combout => \inst6|pipe2_bottom_y_pos[3]~1_combout\);

-- Location: LCCOMB_X15_Y20_N28
\inst6|pipe2_bottom_y_pos[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe2_bottom_y_pos[2]~2_combout\ = !\inst8|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|q\(2),
	combout => \inst6|pipe2_bottom_y_pos[2]~2_combout\);

-- Location: LCCOMB_X17_Y19_N8
\inst6|pipe2_top_y_pos[7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe2_top_y_pos[7]~2_combout\ = !\inst6|next_pipe_top~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|next_pipe_top~0_combout\,
	combout => \inst6|pipe2_top_y_pos[7]~2_combout\);

-- Location: LCCOMB_X17_Y19_N18
\inst6|pipe3_bottom_y_pos[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe3_bottom_y_pos[3]~1_combout\ = !\inst8|q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|q\(3),
	combout => \inst6|pipe3_bottom_y_pos[3]~1_combout\);

-- Location: LCCOMB_X15_Y17_N0
\inst6|pipe3_bottom_y_pos[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe3_bottom_y_pos[2]~2_combout\ = !\inst8|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|q\(2),
	combout => \inst6|pipe3_bottom_y_pos[2]~2_combout\);

-- Location: LCCOMB_X17_Y20_N8
\inst6|pipe3_top_y_pos[7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe3_top_y_pos[7]~2_combout\ = !\inst6|next_pipe_top~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|next_pipe_top~0_combout\,
	combout => \inst6|pipe3_top_y_pos[7]~2_combout\);

-- Location: LCCOMB_X17_Y20_N28
\inst6|pipe4_bottom_y_pos[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe4_bottom_y_pos[3]~1_combout\ = !\inst8|q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|q\(3),
	combout => \inst6|pipe4_bottom_y_pos[3]~1_combout\);

-- Location: LCCOMB_X17_Y20_N10
\inst6|pipe4_bottom_y_pos[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe4_bottom_y_pos[2]~2_combout\ = !\inst8|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|q\(2),
	combout => \inst6|pipe4_bottom_y_pos[2]~2_combout\);

-- Location: LCCOMB_X17_Y20_N30
\inst6|pipe4_top_y_pos[7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe4_top_y_pos[7]~2_combout\ = !\inst6|next_pipe_top~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|next_pipe_top~0_combout\,
	combout => \inst6|pipe4_top_y_pos[7]~2_combout\);

-- Location: LCCOMB_X17_Y23_N30
\inst6|pipe5_bottom_y_pos[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe5_bottom_y_pos[3]~1_combout\ = !\inst8|q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|q\(3),
	combout => \inst6|pipe5_bottom_y_pos[3]~1_combout\);

-- Location: LCCOMB_X17_Y19_N12
\inst6|pipe5_bottom_y_pos[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe5_bottom_y_pos[2]~2_combout\ = !\inst8|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|q\(2),
	combout => \inst6|pipe5_bottom_y_pos[2]~2_combout\);

-- Location: LCCOMB_X17_Y19_N10
\inst6|pipe5_top_y_pos[7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe5_top_y_pos[7]~2_combout\ = !\inst6|next_pipe_top~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|next_pipe_top~0_combout\,
	combout => \inst6|pipe5_top_y_pos[7]~2_combout\);

-- Location: LCCOMB_X14_Y22_N8
\inst8|q[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|q[2]~0_combout\ = !\inst8|q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|q\(1),
	combout => \inst8|q[2]~0_combout\);

-- Location: LCCOMB_X14_Y22_N0
\inst8|q[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|q[3]~1_combout\ = !\inst8|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|q\(2),
	combout => \inst8|q[3]~1_combout\);

-- Location: LCCOMB_X14_Y22_N2
\inst8|q[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|q[1]~2_combout\ = !\inst8|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|q\(0),
	combout => \inst8|q[1]~2_combout\);

-- Location: LCCOMB_X14_Y22_N28
\inst8|q[10]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|q[10]~3_combout\ = !\inst8|q\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|q\(9),
	combout => \inst8|q[10]~3_combout\);

-- Location: LCCOMB_X14_Y22_N14
\inst8|q[11]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|q[11]~4_combout\ = !\inst8|q\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|q\(10),
	combout => \inst8|q[11]~4_combout\);

-- Location: LCCOMB_X14_Y22_N20
\inst8|q[13]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|q[13]~5_combout\ = !\inst8|q\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|q\(12),
	combout => \inst8|q[13]~5_combout\);

-- Location: LCCOMB_X14_Y22_N30
\inst8|q[15]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|q[15]~6_combout\ = !\inst8|q\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|q\(14),
	combout => \inst8|q[15]~6_combout\);

-- Location: LCCOMB_X14_Y22_N6
\inst8|q[9]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|q[9]~7_combout\ = !\inst8|q\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|q\(8),
	combout => \inst8|q[9]~7_combout\);

-- Location: LCCOMB_X14_Y22_N26
\inst8|q[7]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|q[7]~8_combout\ = !\inst8|q\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|q\(6),
	combout => \inst8|q[7]~8_combout\);

-- Location: LCCOMB_X14_Y22_N16
\inst8|q[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|q[5]~9_combout\ = !\inst8|q\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|q\(4),
	combout => \inst8|q[5]~9_combout\);

-- Location: LCCOMB_X14_Y22_N10
\inst8|q[4]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|q[4]~10_combout\ = !\inst8|q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|q\(3),
	combout => \inst8|q[4]~10_combout\);

-- Location: LCCOMB_X16_Y20_N2
\inst6|pipe_speed[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe_speed\(6) = (GLOBAL(\inst6|pipe_speed[30]~1clkctrl_outclk\) & (\inst6|pipe_speed[17]~2_combout\)) # (!GLOBAL(\inst6|pipe_speed[30]~1clkctrl_outclk\) & ((\inst6|pipe_speed\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe_speed[17]~2_combout\,
	datab => \inst6|pipe_speed\(6),
	datad => \inst6|pipe_speed[30]~1clkctrl_outclk\,
	combout => \inst6|pipe_speed\(6));

-- Location: IOIBUF_X0_Y27_N1
\sw1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw1,
	o => \sw1~input_o\);

-- Location: CLKCTRL_G15
\inst1|vert_sync_out~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|vert_sync_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|vert_sync_out~clkctrl_outclk\);

-- Location: CLKCTRL_G14
\inst14|Clk1hz_temp~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst14|Clk1hz_temp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst14|Clk1hz_temp~clkctrl_outclk\);

-- Location: LCCOMB_X17_Y20_N4
\inst6|pipe3_bottom_y_pos[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe3_bottom_y_pos[4]~feeder_combout\ = \inst8|q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|q\(3),
	combout => \inst6|pipe3_bottom_y_pos[4]~feeder_combout\);

-- Location: LCCOMB_X14_Y22_N4
\inst8|q[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|q[14]~feeder_combout\ = \inst8|q\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|q\(13),
	combout => \inst8|q[14]~feeder_combout\);

-- Location: LCCOMB_X14_Y22_N24
\inst8|q[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|q[6]~feeder_combout\ = \inst8|q\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|q\(5),
	combout => \inst8|q[6]~feeder_combout\);

-- Location: LCCOMB_X15_Y21_N26
\inst6|pipe1_bottom_y_pos[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe1_bottom_y_pos[1]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst6|pipe1_bottom_y_pos[1]~feeder_combout\);

-- Location: LCCOMB_X15_Y20_N4
\inst6|pipe2_bottom_y_pos[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe2_bottom_y_pos[1]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst6|pipe2_bottom_y_pos[1]~feeder_combout\);

-- Location: LCCOMB_X17_Y20_N6
\inst6|pipe3_bottom_y_pos[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe3_bottom_y_pos[1]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst6|pipe3_bottom_y_pos[1]~feeder_combout\);

-- Location: LCCOMB_X17_Y20_N0
\inst6|pipe4_bottom_y_pos[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe4_bottom_y_pos[1]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst6|pipe4_bottom_y_pos[1]~feeder_combout\);

-- Location: LCCOMB_X17_Y21_N0
\inst6|pipe5_bottom_y_pos[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe5_bottom_y_pos[1]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst6|pipe5_bottom_y_pos[1]~feeder_combout\);

-- Location: IOOBUF_X41_Y25_N2
\red_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|red_out~q\,
	devoe => ww_devoe,
	o => ww_red_out);

-- Location: IOOBUF_X41_Y18_N23
\vert_sync_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|vert_sync_out~q\,
	devoe => ww_devoe,
	o => ww_vert_sync_out);

-- Location: IOOBUF_X41_Y24_N23
\green_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|green_out~q\,
	devoe => ww_devoe,
	o => ww_green_out);

-- Location: IOOBUF_X41_Y19_N9
\blue_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|blue_out~q\,
	devoe => ww_devoe,
	o => ww_blue_out);

-- Location: IOOBUF_X41_Y18_N16
\horiz_sync_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|horiz_sync_out~q\,
	devoe => ww_devoe,
	o => ww_horiz_sync_out);

-- Location: IOOBUF_X41_Y12_N23
\mouse_data~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|MOUSE_DATA_BUF~q\,
	oe => \inst2|mouse_state.WAIT_OUTPUT_READY~q\,
	devoe => ww_devoe,
	o => mouse_data);

-- Location: IOOBUF_X41_Y11_N2
\mouse_clk~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|mouse_state.INHIBIT_TRANS~q\,
	oe => \inst2|WideOr4~combout\,
	devoe => ww_devoe,
	o => mouse_clk);

-- Location: IOIBUF_X41_Y11_N1
\mouse_clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => mouse_clk,
	o => \mouse_clk~input_o\);

-- Location: LCCOMB_X22_Y1_N10
\inst2|filter[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|filter[0]~feeder_combout\ = \mouse_clk~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse_clk~input_o\,
	combout => \inst2|filter[0]~feeder_combout\);

-- Location: FF_X22_Y1_N11
\inst2|filter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|filter[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|filter\(0));

-- Location: LCCOMB_X22_Y1_N12
\inst2|filter[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|filter[1]~feeder_combout\ = \inst2|filter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|filter\(0),
	combout => \inst2|filter[1]~feeder_combout\);

-- Location: FF_X22_Y1_N13
\inst2|filter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|filter[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|filter\(1));

-- Location: LCCOMB_X22_Y1_N14
\inst2|filter[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|filter[2]~feeder_combout\ = \inst2|filter\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|filter\(1),
	combout => \inst2|filter[2]~feeder_combout\);

-- Location: FF_X22_Y1_N15
\inst2|filter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|filter[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|filter\(2));

-- Location: FF_X22_Y1_N31
\inst2|filter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|filter\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|filter\(3));

-- Location: LCCOMB_X22_Y1_N28
\inst2|MOUSE_CLK_FILTER~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|MOUSE_CLK_FILTER~1_combout\ = (\inst2|filter\(5) & ((\inst2|MOUSE_CLK_FILTER~q\) # ((\inst2|filter\(2) & \inst2|filter\(3))))) # (!\inst2|filter\(5) & (\inst2|MOUSE_CLK_FILTER~q\ & ((\inst2|filter\(2)) # (\inst2|filter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|filter\(5),
	datab => \inst2|filter\(2),
	datac => \inst2|filter\(3),
	datad => \inst2|MOUSE_CLK_FILTER~q\,
	combout => \inst2|MOUSE_CLK_FILTER~1_combout\);

-- Location: FF_X22_Y1_N21
\inst2|filter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|filter\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|filter\(4));

-- Location: LCCOMB_X22_Y1_N26
\inst2|filter[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|filter[5]~feeder_combout\ = \inst2|filter\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|filter\(4),
	combout => \inst2|filter[5]~feeder_combout\);

-- Location: FF_X22_Y1_N27
\inst2|filter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|filter[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|filter\(5));

-- Location: FF_X22_Y1_N23
\inst2|filter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|filter\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|filter\(6));

-- Location: LCCOMB_X22_Y1_N18
\inst2|MOUSE_CLK_FILTER~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|MOUSE_CLK_FILTER~2_combout\ = (\inst2|filter\(0) & ((\inst2|MOUSE_CLK_FILTER~q\) # ((\inst2|filter\(1) & \inst2|filter\(6))))) # (!\inst2|filter\(0) & (\inst2|MOUSE_CLK_FILTER~q\ & ((\inst2|filter\(1)) # (\inst2|filter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|filter\(0),
	datab => \inst2|filter\(1),
	datac => \inst2|filter\(6),
	datad => \inst2|MOUSE_CLK_FILTER~q\,
	combout => \inst2|MOUSE_CLK_FILTER~2_combout\);

-- Location: LCCOMB_X22_Y1_N24
\inst2|MOUSE_CLK_FILTER~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|MOUSE_CLK_FILTER~3_combout\ = (\inst2|MOUSE_CLK_FILTER~0_combout\ & ((\inst2|MOUSE_CLK_FILTER~q\) # ((\inst2|MOUSE_CLK_FILTER~1_combout\ & \inst2|MOUSE_CLK_FILTER~2_combout\)))) # (!\inst2|MOUSE_CLK_FILTER~0_combout\ & (\inst2|MOUSE_CLK_FILTER~q\ & 
-- ((\inst2|MOUSE_CLK_FILTER~1_combout\) # (\inst2|MOUSE_CLK_FILTER~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|MOUSE_CLK_FILTER~0_combout\,
	datab => \inst2|MOUSE_CLK_FILTER~1_combout\,
	datac => \inst2|MOUSE_CLK_FILTER~q\,
	datad => \inst2|MOUSE_CLK_FILTER~2_combout\,
	combout => \inst2|MOUSE_CLK_FILTER~3_combout\);

-- Location: FF_X22_Y1_N25
\inst2|MOUSE_CLK_FILTER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|MOUSE_CLK_FILTER~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|MOUSE_CLK_FILTER~q\);

-- Location: CLKCTRL_G17
\inst2|MOUSE_CLK_FILTER~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|MOUSE_CLK_FILTER~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|MOUSE_CLK_FILTER~clkctrl_outclk\);

-- Location: LCCOMB_X37_Y13_N30
\inst2|SHIFTOUT[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SHIFTOUT[9]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst2|SHIFTOUT[9]~feeder_combout\);

-- Location: LCCOMB_X35_Y13_N2
\inst2|inhibit_wait_count[1]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inhibit_wait_count[1]~11_combout\ = (\inst2|inhibit_wait_count\(0) & (\inst2|inhibit_wait_count\(1) $ (VCC))) # (!\inst2|inhibit_wait_count\(0) & (\inst2|inhibit_wait_count\(1) & VCC))
-- \inst2|inhibit_wait_count[1]~12\ = CARRY((\inst2|inhibit_wait_count\(0) & \inst2|inhibit_wait_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inhibit_wait_count\(0),
	datab => \inst2|inhibit_wait_count\(1),
	datad => VCC,
	combout => \inst2|inhibit_wait_count[1]~11_combout\,
	cout => \inst2|inhibit_wait_count[1]~12\);

-- Location: LCCOMB_X35_Y13_N24
\inst2|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Selector0~0_combout\ = (\inst2|mouse_state.INHIBIT_TRANS~q\) # ((\inst2|inhibit_wait_count\(11) & \inst2|inhibit_wait_count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inhibit_wait_count\(11),
	datac => \inst2|mouse_state.INHIBIT_TRANS~q\,
	datad => \inst2|inhibit_wait_count\(10),
	combout => \inst2|Selector0~0_combout\);

-- Location: FF_X35_Y13_N25
\inst2|mouse_state.INHIBIT_TRANS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|mouse_state.INHIBIT_TRANS~q\);

-- Location: FF_X35_Y13_N3
\inst2|inhibit_wait_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|inhibit_wait_count[1]~11_combout\,
	ena => \inst2|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inhibit_wait_count\(1));

-- Location: LCCOMB_X35_Y13_N4
\inst2|inhibit_wait_count[2]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inhibit_wait_count[2]~13_combout\ = (\inst2|inhibit_wait_count\(2) & (!\inst2|inhibit_wait_count[1]~12\)) # (!\inst2|inhibit_wait_count\(2) & ((\inst2|inhibit_wait_count[1]~12\) # (GND)))
-- \inst2|inhibit_wait_count[2]~14\ = CARRY((!\inst2|inhibit_wait_count[1]~12\) # (!\inst2|inhibit_wait_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inhibit_wait_count\(2),
	datad => VCC,
	cin => \inst2|inhibit_wait_count[1]~12\,
	combout => \inst2|inhibit_wait_count[2]~13_combout\,
	cout => \inst2|inhibit_wait_count[2]~14\);

-- Location: FF_X35_Y13_N5
\inst2|inhibit_wait_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|inhibit_wait_count[2]~13_combout\,
	ena => \inst2|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inhibit_wait_count\(2));

-- Location: LCCOMB_X35_Y13_N8
\inst2|inhibit_wait_count[4]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inhibit_wait_count[4]~17_combout\ = (\inst2|inhibit_wait_count\(4) & (!\inst2|inhibit_wait_count[3]~16\)) # (!\inst2|inhibit_wait_count\(4) & ((\inst2|inhibit_wait_count[3]~16\) # (GND)))
-- \inst2|inhibit_wait_count[4]~18\ = CARRY((!\inst2|inhibit_wait_count[3]~16\) # (!\inst2|inhibit_wait_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inhibit_wait_count\(4),
	datad => VCC,
	cin => \inst2|inhibit_wait_count[3]~16\,
	combout => \inst2|inhibit_wait_count[4]~17_combout\,
	cout => \inst2|inhibit_wait_count[4]~18\);

-- Location: FF_X35_Y13_N9
\inst2|inhibit_wait_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|inhibit_wait_count[4]~17_combout\,
	ena => \inst2|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inhibit_wait_count\(4));

-- Location: LCCOMB_X35_Y13_N14
\inst2|inhibit_wait_count[7]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inhibit_wait_count[7]~23_combout\ = (\inst2|inhibit_wait_count\(7) & (\inst2|inhibit_wait_count[6]~22\ $ (GND))) # (!\inst2|inhibit_wait_count\(7) & (!\inst2|inhibit_wait_count[6]~22\ & VCC))
-- \inst2|inhibit_wait_count[7]~24\ = CARRY((\inst2|inhibit_wait_count\(7) & !\inst2|inhibit_wait_count[6]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inhibit_wait_count\(7),
	datad => VCC,
	cin => \inst2|inhibit_wait_count[6]~22\,
	combout => \inst2|inhibit_wait_count[7]~23_combout\,
	cout => \inst2|inhibit_wait_count[7]~24\);

-- Location: FF_X35_Y13_N15
\inst2|inhibit_wait_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|inhibit_wait_count[7]~23_combout\,
	ena => \inst2|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inhibit_wait_count\(7));

-- Location: LCCOMB_X35_Y13_N16
\inst2|inhibit_wait_count[8]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inhibit_wait_count[8]~25_combout\ = (\inst2|inhibit_wait_count\(8) & (!\inst2|inhibit_wait_count[7]~24\)) # (!\inst2|inhibit_wait_count\(8) & ((\inst2|inhibit_wait_count[7]~24\) # (GND)))
-- \inst2|inhibit_wait_count[8]~26\ = CARRY((!\inst2|inhibit_wait_count[7]~24\) # (!\inst2|inhibit_wait_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inhibit_wait_count\(8),
	datad => VCC,
	cin => \inst2|inhibit_wait_count[7]~24\,
	combout => \inst2|inhibit_wait_count[8]~25_combout\,
	cout => \inst2|inhibit_wait_count[8]~26\);

-- Location: FF_X35_Y13_N17
\inst2|inhibit_wait_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|inhibit_wait_count[8]~25_combout\,
	ena => \inst2|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inhibit_wait_count\(8));

-- Location: LCCOMB_X35_Y13_N18
\inst2|inhibit_wait_count[9]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inhibit_wait_count[9]~27_combout\ = (\inst2|inhibit_wait_count\(9) & (\inst2|inhibit_wait_count[8]~26\ $ (GND))) # (!\inst2|inhibit_wait_count\(9) & (!\inst2|inhibit_wait_count[8]~26\ & VCC))
-- \inst2|inhibit_wait_count[9]~28\ = CARRY((\inst2|inhibit_wait_count\(9) & !\inst2|inhibit_wait_count[8]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inhibit_wait_count\(9),
	datad => VCC,
	cin => \inst2|inhibit_wait_count[8]~26\,
	combout => \inst2|inhibit_wait_count[9]~27_combout\,
	cout => \inst2|inhibit_wait_count[9]~28\);

-- Location: FF_X35_Y13_N19
\inst2|inhibit_wait_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|inhibit_wait_count[9]~27_combout\,
	ena => \inst2|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inhibit_wait_count\(9));

-- Location: LCCOMB_X35_Y13_N20
\inst2|inhibit_wait_count[10]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inhibit_wait_count[10]~29_combout\ = (\inst2|inhibit_wait_count\(10) & (!\inst2|inhibit_wait_count[9]~28\)) # (!\inst2|inhibit_wait_count\(10) & ((\inst2|inhibit_wait_count[9]~28\) # (GND)))
-- \inst2|inhibit_wait_count[10]~30\ = CARRY((!\inst2|inhibit_wait_count[9]~28\) # (!\inst2|inhibit_wait_count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inhibit_wait_count\(10),
	datad => VCC,
	cin => \inst2|inhibit_wait_count[9]~28\,
	combout => \inst2|inhibit_wait_count[10]~29_combout\,
	cout => \inst2|inhibit_wait_count[10]~30\);

-- Location: FF_X35_Y13_N21
\inst2|inhibit_wait_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|inhibit_wait_count[10]~29_combout\,
	ena => \inst2|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inhibit_wait_count\(10));

-- Location: LCCOMB_X35_Y13_N22
\inst2|inhibit_wait_count[11]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inhibit_wait_count[11]~31_combout\ = \inst2|inhibit_wait_count\(11) $ (!\inst2|inhibit_wait_count[10]~30\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inhibit_wait_count\(11),
	cin => \inst2|inhibit_wait_count[10]~30\,
	combout => \inst2|inhibit_wait_count[11]~31_combout\);

-- Location: FF_X35_Y13_N23
\inst2|inhibit_wait_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|inhibit_wait_count[11]~31_combout\,
	ena => \inst2|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inhibit_wait_count\(11));

-- Location: LCCOMB_X36_Y13_N26
\inst2|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Selector1~0_combout\ = (!\inst2|mouse_state.INHIBIT_TRANS~q\ & (\inst2|inhibit_wait_count\(11) & \inst2|inhibit_wait_count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|mouse_state.INHIBIT_TRANS~q\,
	datab => \inst2|inhibit_wait_count\(11),
	datad => \inst2|inhibit_wait_count\(10),
	combout => \inst2|Selector1~0_combout\);

-- Location: FF_X36_Y13_N15
\inst2|mouse_state.LOAD_COMMAND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|Selector1~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|mouse_state.LOAD_COMMAND~q\);

-- Location: LCCOMB_X37_Y13_N6
\inst2|mouse_state.LOAD_COMMAND2~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|mouse_state.LOAD_COMMAND2~feeder_combout\ = \inst2|mouse_state.LOAD_COMMAND~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|mouse_state.LOAD_COMMAND~q\,
	combout => \inst2|mouse_state.LOAD_COMMAND2~feeder_combout\);

-- Location: FF_X37_Y13_N7
\inst2|mouse_state.LOAD_COMMAND2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|mouse_state.LOAD_COMMAND2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|mouse_state.LOAD_COMMAND2~q\);

-- Location: LCCOMB_X37_Y13_N0
\inst2|Selector6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Selector6~1_combout\ = (\inst2|Selector6~0_combout\) # ((\inst2|mouse_state.LOAD_COMMAND2~q\) # (\inst2|mouse_state.LOAD_COMMAND~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector6~0_combout\,
	datac => \inst2|mouse_state.LOAD_COMMAND2~q\,
	datad => \inst2|mouse_state.LOAD_COMMAND~q\,
	combout => \inst2|Selector6~1_combout\);

-- Location: FF_X37_Y13_N1
\inst2|send_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|Selector6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|send_data~q\);

-- Location: LCCOMB_X36_Y13_N28
\inst2|OUTCNT~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|OUTCNT~3_combout\ = (!\inst2|OUTCNT\(0) & (((!\inst2|OUTCNT\(1) & !\inst2|OUTCNT\(2))) # (!\inst2|OUTCNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|OUTCNT\(1),
	datab => \inst2|OUTCNT\(2),
	datac => \inst2|OUTCNT\(0),
	datad => \inst2|OUTCNT\(3),
	combout => \inst2|OUTCNT~3_combout\);

-- Location: LCCOMB_X36_Y13_N6
\inst2|output_ready~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|output_ready~0_combout\ = (\inst2|mouse_state.WAIT_OUTPUT_READY~q\ & !\inst2|send_char~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst2|send_char~q\,
	combout => \inst2|output_ready~0_combout\);

-- Location: FF_X36_Y13_N29
\inst2|OUTCNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|OUTCNT~3_combout\,
	clrn => \inst2|ALT_INV_send_data~q\,
	ena => \inst2|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|OUTCNT\(0));

-- Location: LCCOMB_X36_Y13_N10
\inst2|OUTCNT~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|OUTCNT~1_combout\ = (!\inst2|OUTCNT\(3) & (\inst2|OUTCNT\(2) $ (((\inst2|OUTCNT\(1) & \inst2|OUTCNT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|OUTCNT\(1),
	datab => \inst2|OUTCNT\(3),
	datac => \inst2|OUTCNT\(2),
	datad => \inst2|OUTCNT\(0),
	combout => \inst2|OUTCNT~1_combout\);

-- Location: FF_X36_Y13_N11
\inst2|OUTCNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|OUTCNT~1_combout\,
	clrn => \inst2|ALT_INV_send_data~q\,
	ena => \inst2|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|OUTCNT\(2));

-- Location: LCCOMB_X36_Y13_N4
\inst2|OUTCNT~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|OUTCNT~0_combout\ = (\inst2|OUTCNT\(1) & (\inst2|OUTCNT\(2) & (!\inst2|OUTCNT\(3) & \inst2|OUTCNT\(0)))) # (!\inst2|OUTCNT\(1) & (!\inst2|OUTCNT\(2) & (\inst2|OUTCNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|OUTCNT\(1),
	datab => \inst2|OUTCNT\(2),
	datac => \inst2|OUTCNT\(3),
	datad => \inst2|OUTCNT\(0),
	combout => \inst2|OUTCNT~0_combout\);

-- Location: FF_X36_Y13_N5
\inst2|OUTCNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|OUTCNT~0_combout\,
	clrn => \inst2|ALT_INV_send_data~q\,
	ena => \inst2|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|OUTCNT\(3));

-- Location: LCCOMB_X36_Y13_N16
\inst2|OUTCNT~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|OUTCNT~2_combout\ = (\inst2|OUTCNT\(3) & (!\inst2|OUTCNT\(2) & (!\inst2|OUTCNT\(1) & \inst2|OUTCNT\(0)))) # (!\inst2|OUTCNT\(3) & ((\inst2|OUTCNT\(1) $ (\inst2|OUTCNT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|OUTCNT\(3),
	datab => \inst2|OUTCNT\(2),
	datac => \inst2|OUTCNT\(1),
	datad => \inst2|OUTCNT\(0),
	combout => \inst2|OUTCNT~2_combout\);

-- Location: FF_X36_Y13_N17
\inst2|OUTCNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|OUTCNT~2_combout\,
	clrn => \inst2|ALT_INV_send_data~q\,
	ena => \inst2|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|OUTCNT\(1));

-- Location: LCCOMB_X36_Y13_N14
\inst2|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~0_combout\ = (\inst2|OUTCNT\(3) & ((\inst2|OUTCNT\(2)) # (\inst2|OUTCNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|OUTCNT\(2),
	datab => \inst2|OUTCNT\(3),
	datad => \inst2|OUTCNT\(1),
	combout => \inst2|LessThan0~0_combout\);

-- Location: FF_X36_Y13_N27
\inst2|output_ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst2|LessThan0~0_combout\,
	clrn => \inst2|ALT_INV_send_data~q\,
	sload => VCC,
	ena => \inst2|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|output_ready~q\);

-- Location: LCCOMB_X36_Y13_N20
\inst2|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Selector3~0_combout\ = (\inst2|mouse_state.LOAD_COMMAND2~q\) # ((\inst2|mouse_state.WAIT_OUTPUT_READY~q\ & !\inst2|output_ready~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|mouse_state.LOAD_COMMAND2~q\,
	datac => \inst2|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst2|output_ready~q\,
	combout => \inst2|Selector3~0_combout\);

-- Location: FF_X36_Y13_N21
\inst2|mouse_state.WAIT_OUTPUT_READY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|mouse_state.WAIT_OUTPUT_READY~q\);

-- Location: LCCOMB_X38_Y13_N12
\inst2|send_char~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|send_char~0_combout\ = (\inst2|send_char~q\) # ((\inst2|LessThan0~0_combout\ & \inst2|mouse_state.WAIT_OUTPUT_READY~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan0~0_combout\,
	datab => \inst2|mouse_state.WAIT_OUTPUT_READY~q\,
	datac => \inst2|send_char~q\,
	combout => \inst2|send_char~0_combout\);

-- Location: FF_X38_Y13_N13
\inst2|send_char\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|send_char~0_combout\,
	clrn => \inst2|ALT_INV_send_data~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|send_char~q\);

-- Location: LCCOMB_X37_Y13_N28
\inst2|MOUSE_DATA_BUF~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|MOUSE_DATA_BUF~0_combout\ = (\inst2|mouse_state.WAIT_OUTPUT_READY~q\ & (!\inst2|send_char~q\ & !\inst2|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|mouse_state.WAIT_OUTPUT_READY~q\,
	datab => \inst2|send_char~q\,
	datad => \inst2|LessThan0~0_combout\,
	combout => \inst2|MOUSE_DATA_BUF~0_combout\);

-- Location: FF_X37_Y13_N31
\inst2|SHIFTOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|SHIFTOUT[9]~feeder_combout\,
	clrn => \inst2|ALT_INV_send_data~q\,
	ena => \inst2|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SHIFTOUT\(9));

-- Location: LCCOMB_X37_Y13_N16
\inst2|SHIFTOUT[8]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SHIFTOUT[8]~3_combout\ = !\inst2|SHIFTOUT\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|SHIFTOUT\(9),
	combout => \inst2|SHIFTOUT[8]~3_combout\);

-- Location: FF_X37_Y13_N17
\inst2|SHIFTOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|SHIFTOUT[8]~3_combout\,
	clrn => \inst2|ALT_INV_send_data~q\,
	ena => \inst2|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SHIFTOUT\(8));

-- Location: LCCOMB_X37_Y13_N10
\inst2|SHIFTOUT[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SHIFTOUT[7]~feeder_combout\ = \inst2|SHIFTOUT\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|SHIFTOUT\(8),
	combout => \inst2|SHIFTOUT[7]~feeder_combout\);

-- Location: FF_X37_Y13_N11
\inst2|SHIFTOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|SHIFTOUT[7]~feeder_combout\,
	clrn => \inst2|ALT_INV_send_data~q\,
	ena => \inst2|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SHIFTOUT\(7));

-- Location: LCCOMB_X37_Y13_N24
\inst2|SHIFTOUT[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SHIFTOUT[6]~feeder_combout\ = \inst2|SHIFTOUT\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|SHIFTOUT\(7),
	combout => \inst2|SHIFTOUT[6]~feeder_combout\);

-- Location: FF_X37_Y13_N25
\inst2|SHIFTOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|SHIFTOUT[6]~feeder_combout\,
	clrn => \inst2|ALT_INV_send_data~q\,
	ena => \inst2|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SHIFTOUT\(6));

-- Location: LCCOMB_X37_Y13_N26
\inst2|SHIFTOUT[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SHIFTOUT[5]~feeder_combout\ = \inst2|SHIFTOUT\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|SHIFTOUT\(6),
	combout => \inst2|SHIFTOUT[5]~feeder_combout\);

-- Location: FF_X37_Y13_N27
\inst2|SHIFTOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|SHIFTOUT[5]~feeder_combout\,
	clrn => \inst2|ALT_INV_send_data~q\,
	ena => \inst2|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SHIFTOUT\(5));

-- Location: LCCOMB_X37_Y13_N8
\inst2|SHIFTOUT[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SHIFTOUT[4]~2_combout\ = !\inst2|SHIFTOUT\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|SHIFTOUT\(5),
	combout => \inst2|SHIFTOUT[4]~2_combout\);

-- Location: FF_X37_Y13_N9
\inst2|SHIFTOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|SHIFTOUT[4]~2_combout\,
	clrn => \inst2|ALT_INV_send_data~q\,
	ena => \inst2|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SHIFTOUT\(4));

-- Location: LCCOMB_X37_Y13_N14
\inst2|SHIFTOUT[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SHIFTOUT[3]~1_combout\ = !\inst2|SHIFTOUT\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|SHIFTOUT\(4),
	combout => \inst2|SHIFTOUT[3]~1_combout\);

-- Location: FF_X37_Y13_N15
\inst2|SHIFTOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|SHIFTOUT[3]~1_combout\,
	clrn => \inst2|ALT_INV_send_data~q\,
	ena => \inst2|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SHIFTOUT\(3));

-- Location: LCCOMB_X37_Y13_N18
\inst2|SHIFTOUT[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SHIFTOUT[2]~0_combout\ = !\inst2|SHIFTOUT\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|SHIFTOUT\(3),
	combout => \inst2|SHIFTOUT[2]~0_combout\);

-- Location: FF_X37_Y13_N19
\inst2|SHIFTOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|SHIFTOUT[2]~0_combout\,
	clrn => \inst2|ALT_INV_send_data~q\,
	ena => \inst2|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SHIFTOUT\(2));

-- Location: LCCOMB_X37_Y13_N22
\inst2|SHIFTOUT[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SHIFTOUT[1]~feeder_combout\ = \inst2|SHIFTOUT\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|SHIFTOUT\(2),
	combout => \inst2|SHIFTOUT[1]~feeder_combout\);

-- Location: FF_X37_Y13_N23
\inst2|SHIFTOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|SHIFTOUT[1]~feeder_combout\,
	clrn => \inst2|ALT_INV_send_data~q\,
	ena => \inst2|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SHIFTOUT\(1));

-- Location: FF_X37_Y13_N29
\inst2|MOUSE_DATA_BUF\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst2|SHIFTOUT\(1),
	clrn => \inst2|ALT_INV_send_data~q\,
	sload => VCC,
	ena => \inst2|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|MOUSE_DATA_BUF~q\);

-- Location: LCCOMB_X37_Y13_N20
\inst2|WideOr4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|WideOr4~combout\ = ((\inst2|mouse_state.LOAD_COMMAND2~q\) # (\inst2|mouse_state.LOAD_COMMAND~q\)) # (!\inst2|mouse_state.INHIBIT_TRANS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|mouse_state.INHIBIT_TRANS~q\,
	datac => \inst2|mouse_state.LOAD_COMMAND2~q\,
	datad => \inst2|mouse_state.LOAD_COMMAND~q\,
	combout => \inst2|WideOr4~combout\);

-- Location: IOIBUF_X41_Y15_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: PLL_2
\inst|altpll_component|auto_generated|pll1\ : cycloneiii_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 12,
	c0_initial => 1,
	c0_low => 12,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 2,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 12,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 3403,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => GND,
	fbin => \inst|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \inst|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \inst|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \inst|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G8
\inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X22_Y19_N10
\inst1|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~0_combout\ = \inst1|h_count\(0) $ (VCC)
-- \inst1|Add0~1\ = CARRY(\inst1|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|h_count\(0),
	datad => VCC,
	combout => \inst1|Add0~0_combout\,
	cout => \inst1|Add0~1\);

-- Location: FF_X22_Y19_N11
\inst1|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(0));

-- Location: LCCOMB_X22_Y19_N12
\inst1|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~2_combout\ = (\inst1|h_count\(1) & (!\inst1|Add0~1\)) # (!\inst1|h_count\(1) & ((\inst1|Add0~1\) # (GND)))
-- \inst1|Add0~3\ = CARRY((!\inst1|Add0~1\) # (!\inst1|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(1),
	datad => VCC,
	cin => \inst1|Add0~1\,
	combout => \inst1|Add0~2_combout\,
	cout => \inst1|Add0~3\);

-- Location: LCCOMB_X22_Y19_N14
\inst1|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~4_combout\ = (\inst1|h_count\(2) & (\inst1|Add0~3\ $ (GND))) # (!\inst1|h_count\(2) & (!\inst1|Add0~3\ & VCC))
-- \inst1|Add0~5\ = CARRY((\inst1|h_count\(2) & !\inst1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|h_count\(2),
	datad => VCC,
	cin => \inst1|Add0~3\,
	combout => \inst1|Add0~4_combout\,
	cout => \inst1|Add0~5\);

-- Location: FF_X22_Y19_N15
\inst1|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(2));

-- Location: LCCOMB_X22_Y19_N16
\inst1|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~6_combout\ = (\inst1|h_count\(3) & (!\inst1|Add0~5\)) # (!\inst1|h_count\(3) & ((\inst1|Add0~5\) # (GND)))
-- \inst1|Add0~7\ = CARRY((!\inst1|Add0~5\) # (!\inst1|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(3),
	datad => VCC,
	cin => \inst1|Add0~5\,
	combout => \inst1|Add0~6_combout\,
	cout => \inst1|Add0~7\);

-- Location: LCCOMB_X22_Y19_N18
\inst1|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~8_combout\ = (\inst1|h_count\(4) & (\inst1|Add0~7\ $ (GND))) # (!\inst1|h_count\(4) & (!\inst1|Add0~7\ & VCC))
-- \inst1|Add0~9\ = CARRY((\inst1|h_count\(4) & !\inst1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(4),
	datad => VCC,
	cin => \inst1|Add0~7\,
	combout => \inst1|Add0~8_combout\,
	cout => \inst1|Add0~9\);

-- Location: LCCOMB_X22_Y19_N20
\inst1|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~10_combout\ = (\inst1|h_count\(5) & (!\inst1|Add0~9\)) # (!\inst1|h_count\(5) & ((\inst1|Add0~9\) # (GND)))
-- \inst1|Add0~11\ = CARRY((!\inst1|Add0~9\) # (!\inst1|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|h_count\(5),
	datad => VCC,
	cin => \inst1|Add0~9\,
	combout => \inst1|Add0~10_combout\,
	cout => \inst1|Add0~11\);

-- Location: LCCOMB_X22_Y19_N22
\inst1|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~12_combout\ = (\inst1|h_count\(6) & (\inst1|Add0~11\ $ (GND))) # (!\inst1|h_count\(6) & (!\inst1|Add0~11\ & VCC))
-- \inst1|Add0~13\ = CARRY((\inst1|h_count\(6) & !\inst1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(6),
	datad => VCC,
	cin => \inst1|Add0~11\,
	combout => \inst1|Add0~12_combout\,
	cout => \inst1|Add0~13\);

-- Location: LCCOMB_X22_Y19_N24
\inst1|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~14_combout\ = (\inst1|h_count\(7) & (!\inst1|Add0~13\)) # (!\inst1|h_count\(7) & ((\inst1|Add0~13\) # (GND)))
-- \inst1|Add0~15\ = CARRY((!\inst1|Add0~13\) # (!\inst1|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(7),
	datad => VCC,
	cin => \inst1|Add0~13\,
	combout => \inst1|Add0~14_combout\,
	cout => \inst1|Add0~15\);

-- Location: LCCOMB_X22_Y19_N26
\inst1|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~16_combout\ = (\inst1|h_count\(8) & (\inst1|Add0~15\ $ (GND))) # (!\inst1|h_count\(8) & (!\inst1|Add0~15\ & VCC))
-- \inst1|Add0~17\ = CARRY((\inst1|h_count\(8) & !\inst1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(8),
	datad => VCC,
	cin => \inst1|Add0~15\,
	combout => \inst1|Add0~16_combout\,
	cout => \inst1|Add0~17\);

-- Location: FF_X22_Y19_N17
\inst1|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(3));

-- Location: FF_X22_Y19_N13
\inst1|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(1));

-- Location: LCCOMB_X22_Y19_N4
\inst1|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Equal0~0_combout\ = (\inst1|h_count\(4) & (\inst1|h_count\(0) & (\inst1|h_count\(3) & \inst1|h_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(4),
	datab => \inst1|h_count\(0),
	datac => \inst1|h_count\(3),
	datad => \inst1|h_count\(1),
	combout => \inst1|Equal0~0_combout\);

-- Location: LCCOMB_X22_Y19_N0
\inst1|h_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|h_count~1_combout\ = (\inst1|Add0~16_combout\ & (((!\inst1|Equal0~0_combout\) # (!\inst1|Equal0~2_combout\)) # (!\inst1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~1_combout\,
	datab => \inst1|Add0~16_combout\,
	datac => \inst1|Equal0~2_combout\,
	datad => \inst1|Equal0~0_combout\,
	combout => \inst1|h_count~1_combout\);

-- Location: FF_X22_Y19_N1
\inst1|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|h_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(8));

-- Location: LCCOMB_X22_Y19_N30
\inst1|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Equal0~2_combout\ = (!\inst1|h_count\(7) & (!\inst1|h_count\(5) & (\inst1|h_count\(2) & \inst1|h_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(7),
	datab => \inst1|h_count\(5),
	datac => \inst1|h_count\(2),
	datad => \inst1|h_count\(8),
	combout => \inst1|Equal0~2_combout\);

-- Location: LCCOMB_X22_Y19_N2
\inst1|h_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|h_count~2_combout\ = (\inst1|Add0~10_combout\ & (((!\inst1|Equal0~0_combout\) # (!\inst1|Equal0~2_combout\)) # (!\inst1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~1_combout\,
	datab => \inst1|Add0~10_combout\,
	datac => \inst1|Equal0~2_combout\,
	datad => \inst1|Equal0~0_combout\,
	combout => \inst1|h_count~2_combout\);

-- Location: FF_X22_Y19_N3
\inst1|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|h_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(5));

-- Location: LCCOMB_X21_Y19_N0
\inst1|h_count[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|h_count[6]~feeder_combout\ = \inst1|Add0~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Add0~12_combout\,
	combout => \inst1|h_count[6]~feeder_combout\);

-- Location: FF_X21_Y19_N1
\inst1|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|h_count[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(6));

-- Location: LCCOMB_X22_Y19_N28
\inst1|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~18_combout\ = \inst1|Add0~17\ $ (\inst1|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|h_count\(9),
	cin => \inst1|Add0~17\,
	combout => \inst1|Add0~18_combout\);

-- Location: LCCOMB_X22_Y19_N6
\inst1|h_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|h_count~0_combout\ = (\inst1|Add0~18_combout\ & (((!\inst1|Equal0~0_combout\) # (!\inst1|Equal0~2_combout\)) # (!\inst1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~1_combout\,
	datab => \inst1|Add0~18_combout\,
	datac => \inst1|Equal0~2_combout\,
	datad => \inst1|Equal0~0_combout\,
	combout => \inst1|h_count~0_combout\);

-- Location: FF_X22_Y19_N7
\inst1|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|h_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(9));

-- Location: LCCOMB_X22_Y19_N8
\inst1|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Equal0~1_combout\ = (!\inst1|h_count\(6) & \inst1|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|h_count\(6),
	datad => \inst1|h_count\(9),
	combout => \inst1|Equal0~1_combout\);

-- Location: FF_X22_Y19_N25
\inst1|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(7));

-- Location: LCCOMB_X23_Y21_N28
\inst1|v_count[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|v_count[2]~0_combout\ = (!\inst1|Equal1~0_combout\ & (\inst1|Equal0~1_combout\ & (\inst1|process_0~11_combout\ & \inst1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal1~0_combout\,
	datab => \inst1|Equal0~1_combout\,
	datac => \inst1|process_0~11_combout\,
	datad => \inst1|Equal0~0_combout\,
	combout => \inst1|v_count[2]~0_combout\);

-- Location: LCCOMB_X23_Y21_N10
\inst1|v_count[6]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|v_count[6]~4_combout\ = (\inst1|Add1~12_combout\ & ((\inst1|v_count[2]~0_combout\) # ((!\inst1|v_count[5]~1_combout\ & \inst1|v_count\(6))))) # (!\inst1|Add1~12_combout\ & (!\inst1|v_count[5]~1_combout\ & (\inst1|v_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~12_combout\,
	datab => \inst1|v_count[5]~1_combout\,
	datac => \inst1|v_count\(6),
	datad => \inst1|v_count[2]~0_combout\,
	combout => \inst1|v_count[6]~4_combout\);

-- Location: FF_X23_Y21_N11
\inst1|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|v_count[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(6));

-- Location: LCCOMB_X23_Y21_N12
\inst1|v_count[5]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|v_count[5]~3_combout\ = (\inst1|Add1~10_combout\ & ((\inst1|v_count[2]~0_combout\) # ((!\inst1|v_count[5]~1_combout\ & \inst1|v_count\(5))))) # (!\inst1|Add1~10_combout\ & (!\inst1|v_count[5]~1_combout\ & (\inst1|v_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~10_combout\,
	datab => \inst1|v_count[5]~1_combout\,
	datac => \inst1|v_count\(5),
	datad => \inst1|v_count[2]~0_combout\,
	combout => \inst1|v_count[5]~3_combout\);

-- Location: FF_X23_Y21_N13
\inst1|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|v_count[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(5));

-- Location: LCCOMB_X22_Y21_N2
\inst1|v_count[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|v_count[4]~8_combout\ = (\inst1|Add1~8_combout\ & ((\inst1|v_count[2]~0_combout\) # ((!\inst1|v_count[5]~1_combout\ & \inst1|v_count\(4))))) # (!\inst1|Add1~8_combout\ & (!\inst1|v_count[5]~1_combout\ & (\inst1|v_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~8_combout\,
	datab => \inst1|v_count[5]~1_combout\,
	datac => \inst1|v_count\(4),
	datad => \inst1|v_count[2]~0_combout\,
	combout => \inst1|v_count[4]~8_combout\);

-- Location: FF_X22_Y21_N3
\inst1|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|v_count[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(4));

-- Location: LCCOMB_X22_Y21_N4
\inst1|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add1~0_combout\ = \inst1|v_count\(0) $ (VCC)
-- \inst1|Add1~1\ = CARRY(\inst1|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(0),
	datad => VCC,
	combout => \inst1|Add1~0_combout\,
	cout => \inst1|Add1~1\);

-- Location: LCCOMB_X22_Y21_N6
\inst1|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add1~2_combout\ = (\inst1|v_count\(1) & (!\inst1|Add1~1\)) # (!\inst1|v_count\(1) & ((\inst1|Add1~1\) # (GND)))
-- \inst1|Add1~3\ = CARRY((!\inst1|Add1~1\) # (!\inst1|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(1),
	datad => VCC,
	cin => \inst1|Add1~1\,
	combout => \inst1|Add1~2_combout\,
	cout => \inst1|Add1~3\);

-- Location: LCCOMB_X22_Y21_N18
\inst1|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add1~14_combout\ = (\inst1|v_count\(7) & (!\inst1|Add1~13\)) # (!\inst1|v_count\(7) & ((\inst1|Add1~13\) # (GND)))
-- \inst1|Add1~15\ = CARRY((!\inst1|Add1~13\) # (!\inst1|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|v_count\(7),
	datad => VCC,
	cin => \inst1|Add1~13\,
	combout => \inst1|Add1~14_combout\,
	cout => \inst1|Add1~15\);

-- Location: LCCOMB_X23_Y21_N8
\inst1|v_count[7]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|v_count[7]~5_combout\ = (\inst1|v_count[5]~1_combout\ & (\inst1|Add1~14_combout\ & ((\inst1|v_count[2]~0_combout\)))) # (!\inst1|v_count[5]~1_combout\ & ((\inst1|v_count\(7)) # ((\inst1|Add1~14_combout\ & \inst1|v_count[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count[5]~1_combout\,
	datab => \inst1|Add1~14_combout\,
	datac => \inst1|v_count\(7),
	datad => \inst1|v_count[2]~0_combout\,
	combout => \inst1|v_count[7]~5_combout\);

-- Location: FF_X23_Y21_N9
\inst1|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|v_count[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(7));

-- Location: LCCOMB_X23_Y21_N14
\inst1|v_count[8]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|v_count[8]~6_combout\ = (\inst1|v_count[5]~1_combout\ & (\inst1|Add1~16_combout\ & ((\inst1|v_count[2]~0_combout\)))) # (!\inst1|v_count[5]~1_combout\ & ((\inst1|v_count\(8)) # ((\inst1|Add1~16_combout\ & \inst1|v_count[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count[5]~1_combout\,
	datab => \inst1|Add1~16_combout\,
	datac => \inst1|v_count\(8),
	datad => \inst1|v_count[2]~0_combout\,
	combout => \inst1|v_count[8]~6_combout\);

-- Location: FF_X23_Y21_N15
\inst1|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|v_count[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(8));

-- Location: LCCOMB_X23_Y21_N26
\inst1|process_0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~7_combout\ = (!\inst1|v_count\(7) & (!\inst1|v_count\(8) & !\inst1|v_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|v_count\(7),
	datac => \inst1|v_count\(8),
	datad => \inst1|v_count\(6),
	combout => \inst1|process_0~7_combout\);

-- Location: LCCOMB_X22_Y20_N30
\inst1|process_0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~8_combout\ = (((\inst1|process_0~6_combout\ & \inst1|process_0~7_combout\)) # (!\inst1|v_count\(9))) # (!\inst1|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~6_combout\,
	datab => \inst1|h_count\(9),
	datac => \inst1|process_0~7_combout\,
	datad => \inst1|v_count\(9),
	combout => \inst1|process_0~8_combout\);

-- Location: LCCOMB_X22_Y20_N0
\inst1|process_0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~11_combout\ = (\inst1|process_0~8_combout\) # ((!\inst1|h_count\(8) & ((\inst1|process_0~10_combout\) # (!\inst1|h_count\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~10_combout\,
	datab => \inst1|h_count\(7),
	datac => \inst1|process_0~8_combout\,
	datad => \inst1|h_count\(8),
	combout => \inst1|process_0~11_combout\);

-- Location: LCCOMB_X23_Y21_N22
\inst1|v_count[5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|v_count[5]~1_combout\ = ((!\inst1|Equal1~0_combout\ & (\inst1|Equal0~1_combout\ & \inst1|Equal0~0_combout\))) # (!\inst1|process_0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal1~0_combout\,
	datab => \inst1|Equal0~1_combout\,
	datac => \inst1|process_0~11_combout\,
	datad => \inst1|Equal0~0_combout\,
	combout => \inst1|v_count[5]~1_combout\);

-- Location: LCCOMB_X22_Y21_N0
\inst1|v_count[9]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|v_count[9]~2_combout\ = (\inst1|Add1~18_combout\ & ((\inst1|v_count[2]~0_combout\) # ((!\inst1|v_count[5]~1_combout\ & \inst1|v_count\(9))))) # (!\inst1|Add1~18_combout\ & (!\inst1|v_count[5]~1_combout\ & (\inst1|v_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~18_combout\,
	datab => \inst1|v_count[5]~1_combout\,
	datac => \inst1|v_count\(9),
	datad => \inst1|v_count[2]~0_combout\,
	combout => \inst1|v_count[9]~2_combout\);

-- Location: FF_X22_Y21_N1
\inst1|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|v_count[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(9));

-- Location: LCCOMB_X23_Y21_N20
\inst1|LessThan7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan7~0_combout\ = (\inst1|v_count\(6) & (\inst1|v_count\(7) & (\inst1|v_count\(8) & \inst1|v_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(6),
	datab => \inst1|v_count\(7),
	datac => \inst1|v_count\(8),
	datad => \inst1|v_count\(5),
	combout => \inst1|LessThan7~0_combout\);

-- Location: LCCOMB_X22_Y20_N24
\inst1|LessThan7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan7~1_combout\ = (!\inst1|v_count\(9) & !\inst1|LessThan7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|v_count\(9),
	datad => \inst1|LessThan7~0_combout\,
	combout => \inst1|LessThan7~1_combout\);

-- Location: FF_X22_Y20_N5
\inst1|video_on_v\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|LessThan7~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|video_on_v~q\);

-- Location: LCCOMB_X22_Y20_N14
\inst1|LessThan6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan6~0_combout\ = ((!\inst1|h_count\(7) & !\inst1|h_count\(8))) # (!\inst1|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|h_count\(9),
	datac => \inst1|h_count\(7),
	datad => \inst1|h_count\(8),
	combout => \inst1|LessThan6~0_combout\);

-- Location: FF_X22_Y20_N13
\inst1|video_on_h\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|LessThan6~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|video_on_h~q\);

-- Location: LCCOMB_X22_Y20_N4
\inst1|video_on\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|video_on~combout\ = (\inst1|video_on_v~q\ & \inst1|video_on_h~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|video_on_v~q\,
	datad => \inst1|video_on_h~q\,
	combout => \inst1|video_on~combout\);

-- Location: FF_X22_Y19_N23
\inst1|pixel_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count\(3),
	sload => VCC,
	ena => \inst1|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_column\(3));

-- Location: LCCOMB_X22_Y20_N6
\inst1|pixel_column[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pixel_column[2]~feeder_combout\ = \inst1|h_count\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|h_count\(2),
	combout => \inst1|pixel_column[2]~feeder_combout\);

-- Location: FF_X22_Y20_N7
\inst1|pixel_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|pixel_column[2]~feeder_combout\,
	ena => \inst1|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_column\(2));

-- Location: LCCOMB_X23_Y21_N30
\inst1|v_count~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|v_count~10_combout\ = (\inst1|process_0~11_combout\ & \inst1|Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~11_combout\,
	datac => \inst1|Add1~2_combout\,
	combout => \inst1|v_count~10_combout\);

-- Location: FF_X23_Y21_N31
\inst1|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|v_count~10_combout\,
	ena => \inst1|v_count[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(1));

-- Location: FF_X22_Y21_N29
\inst1|pixel_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|v_count\(1),
	sload => VCC,
	ena => \inst1|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_row\(1));

-- Location: LCCOMB_X22_Y21_N30
\inst1|v_count[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|v_count[2]~9_combout\ = (\inst1|Add1~4_combout\ & ((\inst1|v_count[2]~0_combout\) # ((!\inst1|v_count[5]~1_combout\ & \inst1|v_count\(2))))) # (!\inst1|Add1~4_combout\ & (!\inst1|v_count[5]~1_combout\ & (\inst1|v_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~4_combout\,
	datab => \inst1|v_count[5]~1_combout\,
	datac => \inst1|v_count\(2),
	datad => \inst1|v_count[2]~0_combout\,
	combout => \inst1|v_count[2]~9_combout\);

-- Location: FF_X22_Y21_N31
\inst1|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|v_count[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(2));

-- Location: FF_X22_Y21_N7
\inst1|pixel_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|v_count\(2),
	sload => VCC,
	ena => \inst1|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_row\(2));

-- Location: LCCOMB_X22_Y21_N26
\inst1|v_count[3]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|v_count[3]~7_combout\ = (\inst1|Add1~6_combout\ & ((\inst1|v_count[2]~0_combout\) # ((!\inst1|v_count[5]~1_combout\ & \inst1|v_count\(3))))) # (!\inst1|Add1~6_combout\ & (!\inst1|v_count[5]~1_combout\ & (\inst1|v_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~6_combout\,
	datab => \inst1|v_count[5]~1_combout\,
	datac => \inst1|v_count\(3),
	datad => \inst1|v_count[2]~0_combout\,
	combout => \inst1|v_count[3]~7_combout\);

-- Location: FF_X22_Y21_N27
\inst1|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|v_count[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(3));

-- Location: FF_X22_Y21_N11
\inst1|pixel_row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|v_count\(3),
	sload => VCC,
	ena => \inst1|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_row\(3));

-- Location: FF_X21_Y21_N25
\inst1|pixel_row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|v_count\(8),
	sload => VCC,
	ena => \inst1|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_row\(8));

-- Location: FF_X22_Y21_N9
\inst1|pixel_row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|v_count\(6),
	sload => VCC,
	ena => \inst1|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_row\(6));

-- Location: FF_X22_Y21_N25
\inst1|pixel_row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|v_count\(5),
	sload => VCC,
	ena => \inst1|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_row\(5));

-- Location: LCCOMB_X20_Y21_N4
\inst5|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add2~0_combout\ = (\inst1|pixel_row\(4) & (\inst1|pixel_row\(3) & (\inst1|pixel_row\(6) & \inst1|pixel_row\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(4),
	datab => \inst1|pixel_row\(3),
	datac => \inst1|pixel_row\(6),
	datad => \inst1|pixel_row\(5),
	combout => \inst5|Add2~0_combout\);

-- Location: LCCOMB_X20_Y21_N8
\inst15|LessThan22~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|LessThan22~1_combout\ = (!\inst1|pixel_row\(8) & ((!\inst5|Add2~0_combout\) # (!\inst1|pixel_row\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(7),
	datac => \inst5|Add2~0_combout\,
	datad => \inst1|pixel_row\(8),
	combout => \inst15|LessThan22~1_combout\);

-- Location: IOIBUF_X0_Y25_N22
\sw2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw2,
	o => \sw2~input_o\);

-- Location: LCCOMB_X20_Y21_N30
\inst15|temp_char_address~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~77_combout\ = (!\inst1|pixel_row\(8) & (!\sw2~input_o\ & ((!\inst15|LessThan22~1_combout\) # (!\inst15|LessThan2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|LessThan2~2_combout\,
	datab => \inst1|pixel_row\(8),
	datac => \inst15|LessThan22~1_combout\,
	datad => \sw2~input_o\,
	combout => \inst15|temp_char_address~77_combout\);

-- Location: FF_X22_Y19_N21
\inst1|pixel_column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count\(8),
	sload => VCC,
	ena => \inst1|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_column\(8));

-- Location: FF_X21_Y19_N19
\inst1|pixel_column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count\(5),
	sload => VCC,
	ena => \inst1|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_column\(5));

-- Location: LCCOMB_X21_Y19_N16
\inst11|Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add4~0_combout\ = (\inst1|pixel_column\(4) & (\inst1|pixel_column\(3) $ (VCC))) # (!\inst1|pixel_column\(4) & (\inst1|pixel_column\(3) & VCC))
-- \inst11|Add4~1\ = CARRY((\inst1|pixel_column\(4) & \inst1|pixel_column\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(4),
	datab => \inst1|pixel_column\(3),
	datad => VCC,
	combout => \inst11|Add4~0_combout\,
	cout => \inst11|Add4~1\);

-- Location: LCCOMB_X21_Y19_N20
\inst11|Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add4~4_combout\ = (\inst1|pixel_column\(6) & (\inst11|Add4~3\ $ (GND))) # (!\inst1|pixel_column\(6) & (!\inst11|Add4~3\ & VCC))
-- \inst11|Add4~5\ = CARRY((\inst1|pixel_column\(6) & !\inst11|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(6),
	datad => VCC,
	cin => \inst11|Add4~3\,
	combout => \inst11|Add4~4_combout\,
	cout => \inst11|Add4~5\);

-- Location: LCCOMB_X21_Y19_N22
\inst11|Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add4~6_combout\ = (\inst1|pixel_column\(7) & (!\inst11|Add4~5\)) # (!\inst1|pixel_column\(7) & ((\inst11|Add4~5\) # (GND)))
-- \inst11|Add4~7\ = CARRY((!\inst11|Add4~5\) # (!\inst1|pixel_column\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(7),
	datad => VCC,
	cin => \inst11|Add4~5\,
	combout => \inst11|Add4~6_combout\,
	cout => \inst11|Add4~7\);

-- Location: LCCOMB_X21_Y19_N24
\inst11|Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add4~8_combout\ = (\inst1|pixel_column\(8) & (\inst11|Add4~7\ $ (GND))) # (!\inst1|pixel_column\(8) & (!\inst11|Add4~7\ & VCC))
-- \inst11|Add4~9\ = CARRY((\inst1|pixel_column\(8) & !\inst11|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pixel_column\(8),
	datad => VCC,
	cin => \inst11|Add4~7\,
	combout => \inst11|Add4~8_combout\,
	cout => \inst11|Add4~9\);

-- Location: FF_X22_Y19_N27
\inst1|pixel_column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count\(7),
	sload => VCC,
	ena => \inst1|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_column\(7));

-- Location: LCCOMB_X21_Y18_N10
\inst11|LessThan13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan13~0_combout\ = (\inst1|pixel_column\(8) & \inst1|pixel_column\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(8),
	datac => \inst1|pixel_column\(7),
	combout => \inst11|LessThan13~0_combout\);

-- Location: LCCOMB_X21_Y19_N26
\inst11|Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add4~10_combout\ = \inst1|pixel_column\(9) $ (\inst11|Add4~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(9),
	cin => \inst11|Add4~9\,
	combout => \inst11|Add4~10_combout\);

-- Location: LCCOMB_X20_Y18_N2
\inst15|temp_char_address~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~72_combout\ = (!\inst1|pixel_column\(9) & (!\inst11|LessThan13~0_combout\ & ((\inst11|Add4~8_combout\) # (\inst11|Add4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(9),
	datab => \inst11|Add4~8_combout\,
	datac => \inst11|LessThan13~0_combout\,
	datad => \inst11|Add4~10_combout\,
	combout => \inst15|temp_char_address~72_combout\);

-- Location: LCCOMB_X20_Y18_N8
\inst11|LessThan24~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan24~1_combout\ = (!\inst11|Add4~10_combout\ & !\inst11|Add4~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add4~10_combout\,
	datad => \inst11|Add4~6_combout\,
	combout => \inst11|LessThan24~1_combout\);

-- Location: FF_X22_Y19_N29
\inst1|pixel_column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count\(0),
	sload => VCC,
	ena => \inst1|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_column\(0));

-- Location: LCCOMB_X22_Y20_N8
\inst1|pixel_column[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pixel_column[1]~feeder_combout\ = \inst1|h_count\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|h_count\(1),
	combout => \inst1|pixel_column[1]~feeder_combout\);

-- Location: FF_X22_Y20_N9
\inst1|pixel_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|pixel_column[1]~feeder_combout\,
	ena => \inst1|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_column\(1));

-- Location: LCCOMB_X21_Y22_N28
\inst11|LessThan4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan4~0_combout\ = (\inst1|pixel_column\(3) & (((!\inst1|pixel_column\(2)) # (!\inst1|pixel_column\(1))) # (!\inst1|pixel_column\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(3),
	datab => \inst1|pixel_column\(0),
	datac => \inst1|pixel_column\(1),
	datad => \inst1|pixel_column\(2),
	combout => \inst11|LessThan4~0_combout\);

-- Location: LCCOMB_X21_Y19_N10
\inst11|LessThan4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan4~1_combout\ = (!\inst11|Add4~2_combout\ & ((\inst11|LessThan4~0_combout\) # (!\inst11|Add4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add4~2_combout\,
	datac => \inst11|LessThan4~0_combout\,
	datad => \inst11|Add4~0_combout\,
	combout => \inst11|LessThan4~1_combout\);

-- Location: LCCOMB_X20_Y18_N0
\inst15|temp_char_address~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~74_combout\ = (\inst15|temp_char_address~73_combout\ & (\inst15|temp_char_address~72_combout\ & ((!\inst11|LessThan4~1_combout\) # (!\inst11|LessThan24~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~73_combout\,
	datab => \inst15|temp_char_address~72_combout\,
	datac => \inst11|LessThan24~1_combout\,
	datad => \inst11|LessThan4~1_combout\,
	combout => \inst15|temp_char_address~74_combout\);

-- Location: LCCOMB_X20_Y18_N4
\inst15|LessThan140~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|LessThan140~0_combout\ = (!\inst11|Add4~10_combout\ & (!\inst11|Add4~8_combout\ & !\inst11|Add4~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add4~10_combout\,
	datac => \inst11|Add4~8_combout\,
	datad => \inst11|Add4~6_combout\,
	combout => \inst15|LessThan140~0_combout\);

-- Location: LCCOMB_X21_Y18_N2
\inst15|temp_char_address~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~55_combout\ = (!\inst11|LessThan33~0_combout\ & (((!\inst11|LessThan4~1_combout\ & \inst11|Add4~4_combout\)) # (!\inst15|LessThan140~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan33~0_combout\,
	datab => \inst15|LessThan140~0_combout\,
	datac => \inst11|LessThan4~1_combout\,
	datad => \inst11|Add4~4_combout\,
	combout => \inst15|temp_char_address~55_combout\);

-- Location: FF_X22_Y19_N19
\inst1|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(4));

-- Location: LCCOMB_X21_Y17_N0
\inst1|pixel_column[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pixel_column[4]~feeder_combout\ = \inst1|h_count\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|h_count\(4),
	combout => \inst1|pixel_column[4]~feeder_combout\);

-- Location: FF_X21_Y17_N1
\inst1|pixel_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|pixel_column[4]~feeder_combout\,
	ena => \inst1|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_column\(4));

-- Location: FF_X21_Y19_N21
\inst1|pixel_column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count\(6),
	sload => VCC,
	ena => \inst1|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_column\(6));

-- Location: LCCOMB_X20_Y18_N24
\inst15|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|LessThan1~0_combout\ = (\inst1|pixel_column\(4) & (\inst1|pixel_column\(6) & \inst1|pixel_column\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pixel_column\(4),
	datac => \inst1|pixel_column\(6),
	datad => \inst1|pixel_column\(5),
	combout => \inst15|LessThan1~0_combout\);

-- Location: LCCOMB_X22_Y18_N18
\inst15|LessThan52~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|LessThan52~0_combout\ = (\inst11|Add4~2_combout\ & (\inst11|Add4~4_combout\ & ((\inst11|Add4~0_combout\) # (!\inst11|LessThan4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add4~2_combout\,
	datab => \inst11|Add4~4_combout\,
	datac => \inst11|Add4~0_combout\,
	datad => \inst11|LessThan4~0_combout\,
	combout => \inst15|LessThan52~0_combout\);

-- Location: LCCOMB_X23_Y18_N2
\inst15|temp_char_address~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~63_combout\ = (!\inst15|LessThan1~0_combout\ & (((\inst11|Add4~6_combout\) # (\inst15|LessThan52~0_combout\)) # (!\inst15|LessThan84~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|LessThan84~0_combout\,
	datab => \inst11|Add4~6_combout\,
	datac => \inst15|LessThan1~0_combout\,
	datad => \inst15|LessThan52~0_combout\,
	combout => \inst15|temp_char_address~63_combout\);

-- Location: LCCOMB_X23_Y20_N28
\inst15|temp_char_address[1]~112\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[1]~112_combout\ = ((!\inst15|temp_char_address~55_combout\ & !\inst15|temp_char_address~63_combout\)) # (!\inst15|temp_char_address~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~54_combout\,
	datac => \inst15|temp_char_address~55_combout\,
	datad => \inst15|temp_char_address~63_combout\,
	combout => \inst15|temp_char_address[1]~112_combout\);

-- Location: FF_X22_Y21_N17
\inst1|pixel_row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|v_count\(7),
	sload => VCC,
	ena => \inst1|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_row\(7));

-- Location: LCCOMB_X21_Y21_N30
\inst15|LessThan146~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|LessThan146~0_combout\ = (!\inst1|pixel_row\(8) & (!\inst1|pixel_row\(6) & !\inst1|pixel_row\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(8),
	datab => \inst1|pixel_row\(6),
	datad => \inst1|pixel_row\(7),
	combout => \inst15|LessThan146~0_combout\);

-- Location: LCCOMB_X21_Y21_N14
\inst15|temp_char_address~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~14_combout\ = (!\inst11|LessThan7~0_combout\ & (\inst1|pixel_row\(5) & (\inst15|LessThan146~0_combout\ & !\sw2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan7~0_combout\,
	datab => \inst1|pixel_row\(5),
	datac => \inst15|LessThan146~0_combout\,
	datad => \sw2~input_o\,
	combout => \inst15|temp_char_address~14_combout\);

-- Location: LCCOMB_X21_Y18_N16
\inst15|temp_char_address~110\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~110_combout\ = (\inst15|temp_char_address~14_combout\ & \inst15|temp_char_address~74_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|temp_char_address~14_combout\,
	datac => \inst15|temp_char_address~74_combout\,
	combout => \inst15|temp_char_address~110_combout\);

-- Location: LCCOMB_X23_Y18_N30
\inst15|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|LessThan0~0_combout\ = (!\inst11|Add4~10_combout\ & (((!\inst11|Add4~6_combout\ & !\inst15|LessThan52~0_combout\)) # (!\inst11|Add4~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add4~10_combout\,
	datab => \inst11|Add4~6_combout\,
	datac => \inst11|Add4~8_combout\,
	datad => \inst15|LessThan52~0_combout\,
	combout => \inst15|LessThan0~0_combout\);

-- Location: FF_X21_Y19_N27
\inst1|pixel_column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count\(9),
	sload => VCC,
	ena => \inst1|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_column\(9));

-- Location: LCCOMB_X19_Y19_N30
\inst15|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|LessThan1~1_combout\ = (\inst1|pixel_column\(6) & (\inst1|pixel_column\(5) & (\inst1|pixel_column\(4) & \inst1|pixel_column\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(6),
	datab => \inst1|pixel_column\(5),
	datac => \inst1|pixel_column\(4),
	datad => \inst1|pixel_column\(8),
	combout => \inst15|LessThan1~1_combout\);

-- Location: LCCOMB_X21_Y18_N18
\inst15|temp_char_address~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~75_combout\ = (!\inst11|LessThan13~0_combout\ & (!\inst15|LessThan0~0_combout\ & (!\inst1|pixel_column\(9) & !\inst15|LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan13~0_combout\,
	datab => \inst15|LessThan0~0_combout\,
	datac => \inst1|pixel_column\(9),
	datad => \inst15|LessThan1~1_combout\,
	combout => \inst15|temp_char_address~75_combout\);

-- Location: LCCOMB_X23_Y17_N24
\inst15|temp_char_address~109\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~109_combout\ = (\inst15|temp_char_address~75_combout\ & \inst15|temp_char_address~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|temp_char_address~75_combout\,
	datad => \inst15|temp_char_address~14_combout\,
	combout => \inst15|temp_char_address~109_combout\);

-- Location: LCCOMB_X19_Y19_N28
\inst15|temp_char_address~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~15_combout\ = (!\inst1|pixel_column\(9) & ((\inst11|Add4~10_combout\) # ((\inst11|Add4~8_combout\ & \inst11|Add4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add4~8_combout\,
	datab => \inst11|Add4~10_combout\,
	datac => \inst1|pixel_column\(9),
	datad => \inst11|Add4~6_combout\,
	combout => \inst15|temp_char_address~15_combout\);

-- Location: LCCOMB_X21_Y19_N30
\inst11|LessThan5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan5~1_combout\ = (\inst1|pixel_column\(8) & (\inst1|pixel_column\(7) & ((\inst1|pixel_column\(6)) # (\inst1|pixel_column\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(6),
	datab => \inst1|pixel_column\(8),
	datac => \inst1|pixel_column\(7),
	datad => \inst1|pixel_column\(5),
	combout => \inst11|LessThan5~1_combout\);

-- Location: LCCOMB_X22_Y18_N6
\inst15|LessThan60~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|LessThan60~0_combout\ = (!\inst11|Add4~2_combout\ & (!\inst11|Add4~10_combout\ & ((\inst11|LessThan4~0_combout\) # (!\inst11|Add4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add4~2_combout\,
	datab => \inst11|Add4~10_combout\,
	datac => \inst11|Add4~0_combout\,
	datad => \inst11|LessThan4~0_combout\,
	combout => \inst15|LessThan60~0_combout\);

-- Location: LCCOMB_X21_Y18_N4
\inst15|temp_char_address~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~60_combout\ = (\inst15|temp_char_address~15_combout\ & (!\inst11|LessThan5~1_combout\ & ((\inst11|Add4~4_combout\) # (!\inst15|LessThan60~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add4~4_combout\,
	datab => \inst15|temp_char_address~15_combout\,
	datac => \inst11|LessThan5~1_combout\,
	datad => \inst15|LessThan60~0_combout\,
	combout => \inst15|temp_char_address~60_combout\);

-- Location: LCCOMB_X23_Y19_N16
\inst15|temp_char_address[4]~108\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[4]~108_combout\ = ((!\inst15|temp_char_address~39_combout\ & !\inst15|temp_char_address~60_combout\)) # (!\inst15|temp_char_address~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~39_combout\,
	datac => \inst15|temp_char_address~14_combout\,
	datad => \inst15|temp_char_address~60_combout\,
	combout => \inst15|temp_char_address[4]~108_combout\);

-- Location: LCCOMB_X24_Y20_N26
\inst15|temp_char_address[5]~111\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[5]~111_combout\ = (\inst15|temp_char_address[5]~107_combout\ & (!\inst15|temp_char_address~110_combout\ & (!\inst15|temp_char_address~109_combout\ & \inst15|temp_char_address[4]~108_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address[5]~107_combout\,
	datab => \inst15|temp_char_address~110_combout\,
	datac => \inst15|temp_char_address~109_combout\,
	datad => \inst15|temp_char_address[4]~108_combout\,
	combout => \inst15|temp_char_address[5]~111_combout\);

-- Location: LCCOMB_X24_Y18_N4
\inst15|LessThan84~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|LessThan84~0_combout\ = (!\inst11|Add4~10_combout\ & !\inst11|Add4~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|Add4~10_combout\,
	datad => \inst11|Add4~8_combout\,
	combout => \inst15|LessThan84~0_combout\);

-- Location: LCCOMB_X22_Y18_N26
\inst11|LessThan16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan16~0_combout\ = (!\inst11|Add4~2_combout\ & (!\inst11|Add4~0_combout\ & \inst11|LessThan4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add4~2_combout\,
	datac => \inst11|Add4~0_combout\,
	datad => \inst11|LessThan4~0_combout\,
	combout => \inst11|LessThan16~0_combout\);

-- Location: LCCOMB_X24_Y18_N14
\inst11|LessThan16~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan16~1_combout\ = (!\inst11|Add4~6_combout\ & ((\inst11|LessThan16~0_combout\) # (!\inst11|Add4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|Add4~6_combout\,
	datac => \inst11|Add4~4_combout\,
	datad => \inst11|LessThan16~0_combout\,
	combout => \inst11|LessThan16~1_combout\);

-- Location: LCCOMB_X24_Y23_N30
\inst15|temp_char_address~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~22_combout\ = (!\sw2~input_o\ & !\inst1|pixel_column\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw2~input_o\,
	datac => \inst1|pixel_column\(9),
	combout => \inst15|temp_char_address~22_combout\);

-- Location: LCCOMB_X24_Y23_N28
\inst15|temp_char_address~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~24_combout\ = (\inst15|temp_char_address~23_combout\ & (!\inst1|pixel_column\(8) & (\inst15|temp_char_address~22_combout\ & !\inst1|pixel_column\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~23_combout\,
	datab => \inst1|pixel_column\(8),
	datac => \inst15|temp_char_address~22_combout\,
	datad => \inst1|pixel_column\(7),
	combout => \inst15|temp_char_address~24_combout\);

-- Location: LCCOMB_X24_Y18_N0
\inst15|temp_char_address~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~25_combout\ = (!\inst11|LessThan17~0_combout\ & (\inst15|temp_char_address~24_combout\ & ((!\inst11|LessThan16~1_combout\) # (!\inst15|LessThan84~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan17~0_combout\,
	datab => \inst15|LessThan84~0_combout\,
	datac => \inst11|LessThan16~1_combout\,
	datad => \inst15|temp_char_address~24_combout\,
	combout => \inst15|temp_char_address~25_combout\);

-- Location: LCCOMB_X24_Y20_N4
\inst15|temp_char_address[5]~113\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[5]~113_combout\ = (\inst15|temp_char_address[1]~106_combout\ & (\inst15|temp_char_address[1]~112_combout\ & (\inst15|temp_char_address[5]~111_combout\ & !\inst15|temp_char_address~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address[1]~106_combout\,
	datab => \inst15|temp_char_address[1]~112_combout\,
	datac => \inst15|temp_char_address[5]~111_combout\,
	datad => \inst15|temp_char_address~25_combout\,
	combout => \inst15|temp_char_address[5]~113_combout\);

-- Location: LCCOMB_X23_Y21_N24
\inst1|v_count~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|v_count~11_combout\ = (\inst1|process_0~11_combout\ & \inst1|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~11_combout\,
	datac => \inst1|Add1~0_combout\,
	combout => \inst1|v_count~11_combout\);

-- Location: FF_X23_Y21_N25
\inst1|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|v_count~11_combout\,
	ena => \inst1|v_count[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(0));

-- Location: FF_X20_Y21_N25
\inst1|pixel_row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|v_count\(0),
	sload => VCC,
	ena => \inst1|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_row\(0));

-- Location: LCCOMB_X20_Y21_N22
\inst11|LessThan55~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan55~0_combout\ = (!\inst1|pixel_row\(1) & (!\inst1|pixel_row\(2) & (!\inst1|pixel_row\(3) & !\inst1|pixel_row\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(1),
	datab => \inst1|pixel_row\(2),
	datac => \inst1|pixel_row\(3),
	datad => \inst1|pixel_row\(0),
	combout => \inst11|LessThan55~0_combout\);

-- Location: LCCOMB_X21_Y21_N22
\inst15|temp_char_address~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~42_combout\ = (!\inst1|pixel_row\(5) & (\inst1|pixel_row\(7) & !\inst1|pixel_row\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(5),
	datab => \inst1|pixel_row\(7),
	datac => \inst1|pixel_row\(6),
	combout => \inst15|temp_char_address~42_combout\);

-- Location: FF_X21_Y21_N31
\inst1|pixel_row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|v_count\(4),
	sload => VCC,
	ena => \inst1|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_row\(4));

-- Location: LCCOMB_X21_Y21_N20
\inst15|temp_char_address~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~43_combout\ = (\inst1|pixel_row\(8) & (\inst15|temp_char_address~42_combout\ & ((\inst11|LessThan55~0_combout\) # (!\inst1|pixel_row\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(8),
	datab => \inst11|LessThan55~0_combout\,
	datac => \inst15|temp_char_address~42_combout\,
	datad => \inst1|pixel_row\(4),
	combout => \inst15|temp_char_address~43_combout\);

-- Location: LCCOMB_X24_Y19_N16
\inst15|temp_char_address~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~53_combout\ = (\inst15|temp_char_address~27_combout\ & (\inst15|temp_char_address~43_combout\ & (!\inst1|pixel_column\(8) & \inst15|temp_char_address~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~27_combout\,
	datab => \inst15|temp_char_address~43_combout\,
	datac => \inst1|pixel_column\(8),
	datad => \inst15|temp_char_address~22_combout\,
	combout => \inst15|temp_char_address~53_combout\);

-- Location: LCCOMB_X21_Y19_N8
\inst11|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan1~0_combout\ = (\inst1|pixel_column\(7) & ((\inst1|pixel_column\(6)) # ((\inst1|pixel_column\(4) & \inst1|pixel_column\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(4),
	datab => \inst1|pixel_column\(5),
	datac => \inst1|pixel_column\(7),
	datad => \inst1|pixel_column\(6),
	combout => \inst11|LessThan1~0_combout\);

-- Location: LCCOMB_X24_Y18_N28
\inst15|temp_char_address~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~40_combout\ = (!\inst1|pixel_column\(9) & ((!\inst11|LessThan1~0_combout\) # (!\inst1|pixel_column\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pixel_column\(8),
	datac => \inst1|pixel_column\(9),
	datad => \inst11|LessThan1~0_combout\,
	combout => \inst15|temp_char_address~40_combout\);

-- Location: LCCOMB_X24_Y18_N20
\inst15|LessThan68~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|LessThan68~0_combout\ = (\inst11|Add4~6_combout\ & \inst11|Add4~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|Add4~6_combout\,
	datad => \inst11|Add4~8_combout\,
	combout => \inst15|LessThan68~0_combout\);

-- Location: LCCOMB_X24_Y18_N30
\inst15|temp_char_address~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~41_combout\ = (\inst15|temp_char_address~40_combout\ & ((\inst11|Add4~10_combout\) # ((!\inst11|LessThan24~0_combout\ & \inst15|LessThan68~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan24~0_combout\,
	datab => \inst15|temp_char_address~40_combout\,
	datac => \inst11|Add4~10_combout\,
	datad => \inst15|LessThan68~0_combout\,
	combout => \inst15|temp_char_address~41_combout\);

-- Location: LCCOMB_X24_Y21_N0
\inst15|temp_char_address[2]~114\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[2]~114_combout\ = (!\inst15|temp_char_address~53_combout\ & ((\sw2~input_o\) # ((!\inst15|temp_char_address~41_combout\) # (!\inst15|temp_char_address~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw2~input_o\,
	datab => \inst15|temp_char_address~53_combout\,
	datac => \inst15|temp_char_address~43_combout\,
	datad => \inst15|temp_char_address~41_combout\,
	combout => \inst15|temp_char_address[2]~114_combout\);

-- Location: LCCOMB_X24_Y18_N12
\inst15|temp_char_address~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~45_combout\ = (!\inst1|pixel_column\(9) & (!\sw2~input_o\ & ((!\inst11|LessThan13~0_combout\) # (!\inst11|LessThan17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan17~0_combout\,
	datab => \inst1|pixel_column\(9),
	datac => \sw2~input_o\,
	datad => \inst11|LessThan13~0_combout\,
	combout => \inst15|temp_char_address~45_combout\);

-- Location: LCCOMB_X24_Y18_N8
\inst15|temp_char_address~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~46_combout\ = (\inst15|temp_char_address~45_combout\ & ((\inst11|Add4~10_combout\) # ((!\inst15|LessThan64~0_combout\ & !\inst11|LessThan16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|LessThan64~0_combout\,
	datab => \inst11|LessThan16~0_combout\,
	datac => \inst11|Add4~10_combout\,
	datad => \inst15|temp_char_address~45_combout\,
	combout => \inst15|temp_char_address~46_combout\);

-- Location: LCCOMB_X24_Y21_N8
\inst15|temp_char_address~116\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~116_combout\ = (\inst15|temp_char_address~43_combout\ & \inst15|temp_char_address~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|temp_char_address~43_combout\,
	datad => \inst15|temp_char_address~46_combout\,
	combout => \inst15|temp_char_address~116_combout\);

-- Location: LCCOMB_X24_Y18_N10
\inst15|temp_char_address~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~38_combout\ = (!\inst1|pixel_column\(9) & (((!\inst1|pixel_column\(8)) # (!\inst1|pixel_column\(7))) # (!\inst1|pixel_column\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(6),
	datab => \inst1|pixel_column\(7),
	datac => \inst1|pixel_column\(9),
	datad => \inst1|pixel_column\(8),
	combout => \inst15|temp_char_address~38_combout\);

-- Location: LCCOMB_X24_Y18_N18
\inst15|temp_char_address~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~39_combout\ = (\inst15|temp_char_address~38_combout\ & ((\inst11|Add4~10_combout\) # ((!\inst11|LessThan20~0_combout\ & \inst15|LessThan68~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan20~0_combout\,
	datab => \inst15|LessThan68~0_combout\,
	datac => \inst11|Add4~10_combout\,
	datad => \inst15|temp_char_address~38_combout\,
	combout => \inst15|temp_char_address~39_combout\);

-- Location: LCCOMB_X24_Y21_N10
\inst15|temp_char_address~115\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~115_combout\ = (\inst15|temp_char_address~43_combout\ & (!\sw2~input_o\ & \inst15|temp_char_address~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~43_combout\,
	datac => \sw2~input_o\,
	datad => \inst15|temp_char_address~39_combout\,
	combout => \inst15|temp_char_address~115_combout\);

-- Location: LCCOMB_X24_Y21_N30
\inst15|temp_char_address[3]~117\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[3]~117_combout\ = (!\inst15|temp_char_address~48_combout\ & (\inst15|temp_char_address[2]~114_combout\ & (!\inst15|temp_char_address~116_combout\ & !\inst15|temp_char_address~115_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~48_combout\,
	datab => \inst15|temp_char_address[2]~114_combout\,
	datac => \inst15|temp_char_address~116_combout\,
	datad => \inst15|temp_char_address~115_combout\,
	combout => \inst15|temp_char_address[3]~117_combout\);

-- Location: LCCOMB_X22_Y18_N24
\inst15|LessThan48~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|LessThan48~0_combout\ = (\inst11|Add4~2_combout\ & (\inst11|Add4~4_combout\ & (\inst11|Add4~0_combout\ & !\inst11|LessThan4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add4~2_combout\,
	datab => \inst11|Add4~4_combout\,
	datac => \inst11|Add4~0_combout\,
	datad => \inst11|LessThan4~0_combout\,
	combout => \inst15|LessThan48~0_combout\);

-- Location: LCCOMB_X23_Y18_N18
\inst15|LessThan48~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|LessThan48~1_combout\ = (!\inst11|Add4~10_combout\ & (!\inst11|Add4~8_combout\ & ((!\inst15|LessThan48~0_combout\) # (!\inst11|Add4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add4~10_combout\,
	datab => \inst11|Add4~6_combout\,
	datac => \inst11|Add4~8_combout\,
	datad => \inst15|LessThan48~0_combout\,
	combout => \inst15|LessThan48~1_combout\);

-- Location: LCCOMB_X20_Y21_N16
\inst15|LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|LessThan2~0_combout\ = (\inst1|pixel_row\(3) & (((\inst1|pixel_row\(4)) # (!\inst1|pixel_row\(2))) # (!\inst1|pixel_row\(1)))) # (!\inst1|pixel_row\(3) & (((!\inst1|pixel_row\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(1),
	datab => \inst1|pixel_row\(3),
	datac => \inst1|pixel_row\(2),
	datad => \inst1|pixel_row\(4),
	combout => \inst15|LessThan2~0_combout\);

-- Location: LCCOMB_X20_Y21_N24
\inst15|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|LessThan2~1_combout\ = (\inst15|LessThan2~0_combout\) # ((\inst1|pixel_row\(3) & !\inst1|pixel_row\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pixel_row\(3),
	datac => \inst1|pixel_row\(0),
	datad => \inst15|LessThan2~0_combout\,
	combout => \inst15|LessThan2~1_combout\);

-- Location: LCCOMB_X20_Y21_N26
\inst5|Add2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add2~3_combout\ = \inst5|Add2~0_combout\ $ (\inst1|pixel_row\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Add2~0_combout\,
	datac => \inst1|pixel_row\(7),
	combout => \inst5|Add2~3_combout\);

-- Location: LCCOMB_X20_Y21_N28
\inst5|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add2~4_combout\ = \inst1|pixel_row\(6) $ (((\inst1|pixel_row\(4) & (\inst1|pixel_row\(3) & \inst1|pixel_row\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(4),
	datab => \inst1|pixel_row\(3),
	datac => \inst1|pixel_row\(6),
	datad => \inst1|pixel_row\(5),
	combout => \inst5|Add2~4_combout\);

-- Location: LCCOMB_X20_Y21_N18
\inst15|LessThan22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|LessThan22~0_combout\ = (((!\inst5|Add2~5_combout\ & \inst15|LessThan2~1_combout\)) # (!\inst5|Add2~4_combout\)) # (!\inst5|Add2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add2~5_combout\,
	datab => \inst15|LessThan2~1_combout\,
	datac => \inst5|Add2~3_combout\,
	datad => \inst5|Add2~4_combout\,
	combout => \inst15|LessThan22~0_combout\);

-- Location: LCCOMB_X20_Y21_N12
\inst15|temp_char_address~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~30_combout\ = (!\inst15|LessThan23~1_combout\ & ((!\inst15|LessThan22~0_combout\) # (!\inst15|LessThan22~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|LessThan23~1_combout\,
	datac => \inst15|LessThan22~1_combout\,
	datad => \inst15|LessThan22~0_combout\,
	combout => \inst15|temp_char_address~30_combout\);

-- Location: LCCOMB_X24_Y19_N26
\inst15|temp_char_address~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~37_combout\ = (!\inst1|pixel_column\(8) & (!\inst15|LessThan48~1_combout\ & (\inst15|temp_char_address~30_combout\ & \inst15|temp_char_address~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(8),
	datab => \inst15|LessThan48~1_combout\,
	datac => \inst15|temp_char_address~30_combout\,
	datad => \inst15|temp_char_address~22_combout\,
	combout => \inst15|temp_char_address~37_combout\);

-- Location: LCCOMB_X20_Y21_N14
\inst15|temp_char_address~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~33_combout\ = (!\inst15|LessThan23~1_combout\ & (!\sw2~input_o\ & ((!\inst15|LessThan22~0_combout\) # (!\inst15|LessThan22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|LessThan23~1_combout\,
	datab => \sw2~input_o\,
	datac => \inst15|LessThan22~1_combout\,
	datad => \inst15|LessThan22~0_combout\,
	combout => \inst15|temp_char_address~33_combout\);

-- Location: LCCOMB_X23_Y17_N0
\inst15|temp_char_address[0]~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[0]~83_combout\ = (!\inst15|temp_char_address~37_combout\ & ((!\inst15|temp_char_address~33_combout\) # (!\inst15|temp_char_address~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~80_combout\,
	datab => \inst15|temp_char_address~37_combout\,
	datac => \inst15|temp_char_address~33_combout\,
	combout => \inst15|temp_char_address[0]~83_combout\);

-- Location: LCCOMB_X23_Y18_N22
\inst15|temp_char_address~120\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~120_combout\ = (\inst15|temp_char_address~33_combout\ & \inst15|temp_char_address~74_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|temp_char_address~33_combout\,
	datac => \inst15|temp_char_address~74_combout\,
	combout => \inst15|temp_char_address~120_combout\);

-- Location: LCCOMB_X24_Y18_N2
\inst15|temp_char_address~196\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~196_combout\ = (!\inst1|pixel_column\(9) & (((!\inst11|LessThan17~0_combout\ & !\inst1|pixel_column\(7))) # (!\inst1|pixel_column\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan17~0_combout\,
	datab => \inst1|pixel_column\(7),
	datac => \inst1|pixel_column\(9),
	datad => \inst1|pixel_column\(8),
	combout => \inst15|temp_char_address~196_combout\);

-- Location: LCCOMB_X24_Y18_N16
\inst15|temp_char_address~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~70_combout\ = (\inst15|temp_char_address~196_combout\ & ((\inst11|Add4~10_combout\) # ((\inst11|Add4~8_combout\ & !\inst11|LessThan16~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add4~8_combout\,
	datab => \inst11|LessThan16~1_combout\,
	datac => \inst11|Add4~10_combout\,
	datad => \inst15|temp_char_address~196_combout\,
	combout => \inst15|temp_char_address~70_combout\);

-- Location: LCCOMB_X23_Y17_N18
\inst15|temp_char_address~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~71_combout\ = (\inst15|temp_char_address~70_combout\ & \inst15|temp_char_address~33_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|temp_char_address~70_combout\,
	datac => \inst15|temp_char_address~33_combout\,
	combout => \inst15|temp_char_address~71_combout\);

-- Location: LCCOMB_X23_Y17_N8
\inst15|temp_char_address[3]~121\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[3]~121_combout\ = (\inst15|temp_char_address[2]~119_combout\ & (\inst15|temp_char_address[0]~83_combout\ & (!\inst15|temp_char_address~120_combout\ & !\inst15|temp_char_address~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address[2]~119_combout\,
	datab => \inst15|temp_char_address[0]~83_combout\,
	datac => \inst15|temp_char_address~120_combout\,
	datad => \inst15|temp_char_address~71_combout\,
	combout => \inst15|temp_char_address[3]~121_combout\);

-- Location: LCCOMB_X21_Y18_N24
\inst15|temp_char_address~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~34_combout\ = (!\inst1|pixel_column\(9) & ((\inst11|Add4~8_combout\) # (\inst11|Add4~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add4~8_combout\,
	datac => \inst1|pixel_column\(9),
	datad => \inst11|Add4~10_combout\,
	combout => \inst15|temp_char_address~34_combout\);

-- Location: LCCOMB_X21_Y18_N8
\inst11|LessThan21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan21~0_combout\ = (\inst1|pixel_column\(8) & ((\inst1|pixel_column\(7)) # (\inst1|pixel_column\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(8),
	datab => \inst1|pixel_column\(7),
	datac => \inst1|pixel_column\(6),
	combout => \inst11|LessThan21~0_combout\);

-- Location: LCCOMB_X22_Y18_N28
\inst11|LessThan20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan20~0_combout\ = (!\inst11|Add4~4_combout\ & (((\inst11|LessThan4~0_combout\) # (!\inst11|Add4~0_combout\)) # (!\inst11|Add4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add4~2_combout\,
	datab => \inst11|Add4~4_combout\,
	datac => \inst11|Add4~0_combout\,
	datad => \inst11|LessThan4~0_combout\,
	combout => \inst11|LessThan20~0_combout\);

-- Location: LCCOMB_X21_Y18_N22
\inst15|temp_char_address~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~79_combout\ = (\inst15|temp_char_address~34_combout\ & (!\inst11|LessThan21~0_combout\ & ((!\inst11|LessThan20~0_combout\) # (!\inst11|LessThan24~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan24~1_combout\,
	datab => \inst15|temp_char_address~34_combout\,
	datac => \inst11|LessThan21~0_combout\,
	datad => \inst11|LessThan20~0_combout\,
	combout => \inst15|temp_char_address~79_combout\);

-- Location: LCCOMB_X14_Y17_N16
\inst15|temp_char_address[0]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[0]~81_combout\ = ((!\inst15|temp_char_address~80_combout\ & !\inst15|temp_char_address~79_combout\)) # (!\inst15|temp_char_address~77_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~80_combout\,
	datab => \inst15|temp_char_address~79_combout\,
	datac => \inst15|temp_char_address~77_combout\,
	combout => \inst15|temp_char_address[0]~81_combout\);

-- Location: LCCOMB_X22_Y17_N16
\inst15|temp_char_address[5]~122\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[5]~122_combout\ = (\inst15|temp_char_address[1]~118_combout\ & (\inst15|temp_char_address[3]~121_combout\ & \inst15|temp_char_address[0]~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address[1]~118_combout\,
	datab => \inst15|temp_char_address[3]~121_combout\,
	datac => \inst15|temp_char_address[0]~81_combout\,
	combout => \inst15|temp_char_address[5]~122_combout\);

-- Location: LCCOMB_X24_Y20_N8
\inst15|temp_char_address[1]~125\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[1]~125_combout\ = (\inst15|temp_char_address[1]~124_combout\ & (\inst15|temp_char_address[5]~113_combout\ & (\inst15|temp_char_address[3]~117_combout\ & \inst15|temp_char_address[5]~122_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address[1]~124_combout\,
	datab => \inst15|temp_char_address[5]~113_combout\,
	datac => \inst15|temp_char_address[3]~117_combout\,
	datad => \inst15|temp_char_address[5]~122_combout\,
	combout => \inst15|temp_char_address[1]~125_combout\);

-- Location: LCCOMB_X22_Y17_N20
\inst15|temp_char_address[4]~198\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[4]~198_combout\ = ((\inst15|temp_char_address~77_combout\ & ((\inst15|temp_char_address~70_combout\) # (\inst15|temp_char_address~74_combout\)))) # (!\inst15|temp_char_address[1]~125_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~70_combout\,
	datab => \inst15|temp_char_address~74_combout\,
	datac => \inst15|temp_char_address~77_combout\,
	datad => \inst15|temp_char_address[1]~125_combout\,
	combout => \inst15|temp_char_address[4]~198_combout\);

-- Location: LCCOMB_X22_Y17_N8
\inst15|temp_char_address[0]~130\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[0]~130_combout\ = (\inst15|temp_char_address~75_combout\ & (\inst15|temp_char_address~77_combout\ & !\inst15|temp_char_address[4]~198_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~75_combout\,
	datac => \inst15|temp_char_address~77_combout\,
	datad => \inst15|temp_char_address[4]~198_combout\,
	combout => \inst15|temp_char_address[0]~130_combout\);

-- Location: LCCOMB_X21_Y19_N28
\inst11|LessThan5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan5~0_combout\ = (\inst1|pixel_column\(7) & ((\inst1|pixel_column\(5)) # (\inst1|pixel_column\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(7),
	datab => \inst1|pixel_column\(5),
	datac => \inst1|pixel_column\(6),
	combout => \inst11|LessThan5~0_combout\);

-- Location: LCCOMB_X21_Y19_N12
\inst15|LessThan76~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|LessThan76~0_combout\ = (!\inst11|Add4~2_combout\ & (!\inst11|Add4~4_combout\ & ((\inst11|LessThan4~0_combout\) # (!\inst11|Add4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add4~2_combout\,
	datab => \inst11|Add4~4_combout\,
	datac => \inst11|LessThan4~0_combout\,
	datad => \inst11|Add4~0_combout\,
	combout => \inst15|LessThan76~0_combout\);

-- Location: LCCOMB_X21_Y19_N6
\inst15|temp_char_address~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~27_combout\ = (!\inst11|LessThan5~0_combout\ & (((\inst11|Add4~6_combout\ & !\inst15|LessThan76~0_combout\)) # (!\inst15|LessThan84~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|LessThan84~0_combout\,
	datab => \inst11|LessThan5~0_combout\,
	datac => \inst11|Add4~6_combout\,
	datad => \inst15|LessThan76~0_combout\,
	combout => \inst15|temp_char_address~27_combout\);

-- Location: LCCOMB_X23_Y18_N24
\inst15|temp_char_address~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~28_combout\ = (\inst15|temp_char_address~24_combout\ & (((\inst15|LessThan48~0_combout\) # (\inst11|Add4~6_combout\)) # (!\inst15|LessThan84~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|LessThan84~0_combout\,
	datab => \inst15|LessThan48~0_combout\,
	datac => \inst11|Add4~6_combout\,
	datad => \inst15|temp_char_address~24_combout\,
	combout => \inst15|temp_char_address~28_combout\);

-- Location: LCCOMB_X24_Y20_N28
\inst15|temp_char_address[0]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[0]~29_combout\ = (!\inst15|temp_char_address~28_combout\ & ((!\inst15|temp_char_address~27_combout\) # (!\inst15|temp_char_address~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~20_combout\,
	datac => \inst15|temp_char_address~27_combout\,
	datad => \inst15|temp_char_address~28_combout\,
	combout => \inst15|temp_char_address[0]~29_combout\);

-- Location: LCCOMB_X24_Y19_N8
\inst15|temp_char_address~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~32_combout\ = (\inst15|temp_char_address~31_combout\ & (!\inst1|pixel_column\(8) & (\inst15|temp_char_address~30_combout\ & \inst15|temp_char_address~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~31_combout\,
	datab => \inst1|pixel_column\(8),
	datac => \inst15|temp_char_address~30_combout\,
	datad => \inst15|temp_char_address~22_combout\,
	combout => \inst15|temp_char_address~32_combout\);

-- Location: LCCOMB_X23_Y17_N20
\inst15|temp_char_address~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~36_combout\ = (\inst15|temp_char_address~35_combout\ & \inst15|temp_char_address~33_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~35_combout\,
	datac => \inst15|temp_char_address~33_combout\,
	combout => \inst15|temp_char_address~36_combout\);

-- Location: LCCOMB_X20_Y18_N28
\inst15|temp_char_address~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~49_combout\ = (\inst11|Add4~10_combout\) # ((\inst11|Add4~8_combout\ & (\inst11|Add4~4_combout\ & \inst11|Add4~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add4~10_combout\,
	datab => \inst11|Add4~8_combout\,
	datac => \inst11|Add4~4_combout\,
	datad => \inst11|Add4~6_combout\,
	combout => \inst15|temp_char_address~49_combout\);

-- Location: LCCOMB_X20_Y18_N18
\inst11|LessThan33~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan33~0_combout\ = (\inst1|pixel_column\(6) & \inst1|pixel_column\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|pixel_column\(6),
	datad => \inst1|pixel_column\(5),
	combout => \inst11|LessThan33~0_combout\);

-- Location: LCCOMB_X21_Y18_N0
\inst15|temp_char_address~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~50_combout\ = (\inst15|temp_char_address~49_combout\ & (!\inst15|LessThan60~0_combout\ & ((!\inst11|LessThan33~0_combout\) # (!\inst11|LessThan13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan13~0_combout\,
	datab => \inst15|temp_char_address~49_combout\,
	datac => \inst11|LessThan33~0_combout\,
	datad => \inst15|LessThan60~0_combout\,
	combout => \inst15|temp_char_address~50_combout\);

-- Location: LCCOMB_X24_Y21_N28
\inst15|temp_char_address~195\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~195_combout\ = (!\sw2~input_o\ & (!\inst1|pixel_column\(9) & (\inst15|temp_char_address~43_combout\ & \inst15|temp_char_address~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw2~input_o\,
	datab => \inst1|pixel_column\(9),
	datac => \inst15|temp_char_address~43_combout\,
	datad => \inst15|temp_char_address~50_combout\,
	combout => \inst15|temp_char_address~195_combout\);

-- Location: LCCOMB_X22_Y18_N16
\inst15|temp_char_address~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~47_combout\ = (!\inst1|pixel_column\(8)) # (!\inst15|LessThan53~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|LessThan53~0_combout\,
	datac => \inst1|pixel_column\(8),
	combout => \inst15|temp_char_address~47_combout\);

-- Location: LCCOMB_X23_Y18_N10
\inst15|temp_char_address~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~48_combout\ = (!\inst15|LessThan56~0_combout\ & (\inst15|temp_char_address~43_combout\ & (\inst15|temp_char_address~47_combout\ & \inst15|temp_char_address~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|LessThan56~0_combout\,
	datab => \inst15|temp_char_address~43_combout\,
	datac => \inst15|temp_char_address~47_combout\,
	datad => \inst15|temp_char_address~22_combout\,
	combout => \inst15|temp_char_address~48_combout\);

-- Location: LCCOMB_X24_Y21_N18
\inst15|temp_char_address[0]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[0]~51_combout\ = (!\inst15|temp_char_address~195_combout\ & (!\inst15|temp_char_address~48_combout\ & ((!\inst15|temp_char_address~43_combout\) # (!\inst15|temp_char_address~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~46_combout\,
	datab => \inst15|temp_char_address~195_combout\,
	datac => \inst15|temp_char_address~43_combout\,
	datad => \inst15|temp_char_address~48_combout\,
	combout => \inst15|temp_char_address[0]~51_combout\);

-- Location: LCCOMB_X24_Y21_N24
\inst15|temp_char_address[0]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[0]~52_combout\ = (((\inst15|temp_char_address~36_combout\ & !\inst15|temp_char_address~37_combout\)) # (!\inst15|temp_char_address[0]~51_combout\)) # (!\inst15|temp_char_address[5]~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address[5]~44_combout\,
	datab => \inst15|temp_char_address~36_combout\,
	datac => \inst15|temp_char_address~37_combout\,
	datad => \inst15|temp_char_address[0]~51_combout\,
	combout => \inst15|temp_char_address[0]~52_combout\);

-- Location: LCCOMB_X24_Y21_N6
\inst15|temp_char_address[0]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[0]~66_combout\ = ((!\inst15|temp_char_address~53_combout\ & ((\inst15|temp_char_address~32_combout\) # (\inst15|temp_char_address[0]~52_combout\)))) # (!\inst15|temp_char_address[3]~65_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address[3]~65_combout\,
	datab => \inst15|temp_char_address~53_combout\,
	datac => \inst15|temp_char_address~32_combout\,
	datad => \inst15|temp_char_address[0]~52_combout\,
	combout => \inst15|temp_char_address[0]~66_combout\);

-- Location: LCCOMB_X21_Y21_N28
\inst15|temp_char_address~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~18_combout\ = (!\inst1|pixel_column\(9) & (!\sw2~input_o\ & !\inst1|pixel_column\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(9),
	datab => \sw2~input_o\,
	datad => \inst1|pixel_column\(8),
	combout => \inst15|temp_char_address~18_combout\);

-- Location: LCCOMB_X21_Y21_N16
\inst15|LessThan23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|LessThan23~0_combout\ = (\inst1|pixel_row\(5) & \inst1|pixel_row\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(5),
	datac => \inst1|pixel_row\(6),
	combout => \inst15|LessThan23~0_combout\);

-- Location: LCCOMB_X21_Y21_N26
\inst15|LessThan99~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|LessThan99~0_combout\ = (\inst1|pixel_row\(8) & (\inst15|LessThan23~0_combout\ & (\inst1|pixel_row\(4) & !\inst11|LessThan55~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(8),
	datab => \inst15|LessThan23~0_combout\,
	datac => \inst1|pixel_row\(4),
	datad => \inst11|LessThan55~0_combout\,
	combout => \inst15|LessThan99~0_combout\);

-- Location: LCCOMB_X21_Y21_N10
\inst15|temp_char_address~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~19_combout\ = (\inst1|pixel_row\(7) & (!\inst1|pixel_row\(8))) # (!\inst1|pixel_row\(7) & (((\inst1|pixel_row\(5) & \inst1|pixel_row\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(8),
	datab => \inst1|pixel_row\(5),
	datac => \inst1|pixel_row\(6),
	datad => \inst1|pixel_row\(7),
	combout => \inst15|temp_char_address~19_combout\);

-- Location: LCCOMB_X21_Y21_N8
\inst15|temp_char_address~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~20_combout\ = (\inst1|pixel_row\(8) & (\inst15|temp_char_address~18_combout\ & (!\inst15|LessThan99~0_combout\ & \inst15|temp_char_address~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(8),
	datab => \inst15|temp_char_address~18_combout\,
	datac => \inst15|LessThan99~0_combout\,
	datad => \inst15|temp_char_address~19_combout\,
	combout => \inst15|temp_char_address~20_combout\);

-- Location: LCCOMB_X21_Y18_N6
\inst15|temp_char_address~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~21_combout\ = (\inst15|temp_char_address~17_combout\ & (\inst15|temp_char_address~20_combout\ & ((!\inst11|LessThan20~0_combout\) # (!\inst15|LessThan140~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~17_combout\,
	datab => \inst15|LessThan140~0_combout\,
	datac => \inst15|temp_char_address~20_combout\,
	datad => \inst11|LessThan20~0_combout\,
	combout => \inst15|temp_char_address~21_combout\);

-- Location: LCCOMB_X19_Y19_N26
\inst11|LessThan9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan9~0_combout\ = (\inst1|pixel_column\(7) & ((\inst1|pixel_column\(4)) # ((\inst1|pixel_column\(5)) # (\inst1|pixel_column\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(4),
	datab => \inst1|pixel_column\(5),
	datac => \inst1|pixel_column\(7),
	datad => \inst1|pixel_column\(6),
	combout => \inst11|LessThan9~0_combout\);

-- Location: LCCOMB_X19_Y19_N24
\inst11|LessThan9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan9~1_combout\ = (\inst11|LessThan9~0_combout\ & \inst1|pixel_column\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|LessThan9~0_combout\,
	datad => \inst1|pixel_column\(8),
	combout => \inst11|LessThan9~1_combout\);

-- Location: LCCOMB_X19_Y19_N22
\inst15|temp_char_address~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~16_combout\ = (\inst15|temp_char_address~15_combout\ & (!\inst11|LessThan9~1_combout\ & ((\inst11|Add4~10_combout\) # (!\inst11|LessThan8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan8~0_combout\,
	datab => \inst11|Add4~10_combout\,
	datac => \inst15|temp_char_address~15_combout\,
	datad => \inst11|LessThan9~1_combout\,
	combout => \inst15|temp_char_address~16_combout\);

-- Location: LCCOMB_X23_Y19_N0
\inst15|temp_char_address[0]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[0]~26_combout\ = (!\inst15|temp_char_address~21_combout\ & (!\inst15|temp_char_address~25_combout\ & ((!\inst15|temp_char_address~16_combout\) # (!\inst15|temp_char_address~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~14_combout\,
	datab => \inst15|temp_char_address~21_combout\,
	datac => \inst15|temp_char_address~16_combout\,
	datad => \inst15|temp_char_address~25_combout\,
	combout => \inst15|temp_char_address[0]~26_combout\);

-- Location: LCCOMB_X24_Y19_N20
\inst15|temp_char_address[0]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[0]~88_combout\ = (\inst15|temp_char_address[0]~29_combout\ & (\inst15|temp_char_address[0]~26_combout\ & ((\inst15|temp_char_address[0]~87_combout\) # (\inst15|temp_char_address[0]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address[0]~87_combout\,
	datab => \inst15|temp_char_address[0]~29_combout\,
	datac => \inst15|temp_char_address[0]~66_combout\,
	datad => \inst15|temp_char_address[0]~26_combout\,
	combout => \inst15|temp_char_address[0]~88_combout\);

-- Location: LCCOMB_X21_Y21_N24
\inst15|temp_char_address~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~23_combout\ = (!\inst11|LessThan7~0_combout\ & (!\inst1|pixel_row\(7) & (\inst1|pixel_row\(8) & \inst15|LessThan23~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan7~0_combout\,
	datab => \inst1|pixel_row\(7),
	datac => \inst1|pixel_row\(8),
	datad => \inst15|LessThan23~0_combout\,
	combout => \inst15|temp_char_address~23_combout\);

-- Location: LCCOMB_X24_Y19_N2
\inst15|temp_char_address~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~92_combout\ = (\inst15|temp_char_address~68_combout\ & (!\inst1|pixel_column\(8) & (\inst15|temp_char_address~23_combout\ & \inst15|temp_char_address~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~68_combout\,
	datab => \inst1|pixel_column\(8),
	datac => \inst15|temp_char_address~23_combout\,
	datad => \inst15|temp_char_address~22_combout\,
	combout => \inst15|temp_char_address~92_combout\);

-- Location: LCCOMB_X24_Y19_N4
\inst15|temp_char_address[0]~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[0]~93_combout\ = (\inst15|temp_char_address[0]~91_combout\) # ((!\inst15|temp_char_address~28_combout\ & (\inst15|temp_char_address~92_combout\ & \inst15|temp_char_address[0]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address[0]~91_combout\,
	datab => \inst15|temp_char_address~28_combout\,
	datac => \inst15|temp_char_address~92_combout\,
	datad => \inst15|temp_char_address[0]~26_combout\,
	combout => \inst15|temp_char_address[0]~93_combout\);

-- Location: LCCOMB_X23_Y19_N24
\inst15|temp_char_address~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~95_combout\ = (\inst15|temp_char_address~14_combout\ & \inst15|temp_char_address~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~14_combout\,
	datac => \inst15|temp_char_address~41_combout\,
	combout => \inst15|temp_char_address~95_combout\);

-- Location: LCCOMB_X23_Y19_N26
\inst15|temp_char_address~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~96_combout\ = (\inst15|temp_char_address~14_combout\ & \inst15|temp_char_address~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~14_combout\,
	datac => \inst15|temp_char_address~16_combout\,
	combout => \inst15|temp_char_address~96_combout\);

-- Location: LCCOMB_X23_Y18_N20
\inst11|LessThan12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan12~0_combout\ = (!\inst11|Add4~10_combout\ & (((!\inst11|Add4~6_combout\ & !\inst15|LessThan48~0_combout\)) # (!\inst11|Add4~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add4~10_combout\,
	datab => \inst11|Add4~6_combout\,
	datac => \inst11|Add4~8_combout\,
	datad => \inst15|LessThan48~0_combout\,
	combout => \inst11|LessThan12~0_combout\);

-- Location: LCCOMB_X23_Y18_N0
\inst15|temp_char_address~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~97_combout\ = (\inst15|temp_char_address~14_combout\ & (!\inst1|pixel_column\(9) & (!\inst11|LessThan13~0_combout\ & !\inst11|LessThan12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~14_combout\,
	datab => \inst1|pixel_column\(9),
	datac => \inst11|LessThan13~0_combout\,
	datad => \inst11|LessThan12~0_combout\,
	combout => \inst15|temp_char_address~97_combout\);

-- Location: LCCOMB_X23_Y18_N6
\inst15|temp_char_address[4]~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[4]~98_combout\ = (!\inst15|temp_char_address~97_combout\ & (((!\inst15|temp_char_address~75_combout\ & !\inst15|temp_char_address~74_combout\)) # (!\inst15|temp_char_address~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~14_combout\,
	datab => \inst15|temp_char_address~75_combout\,
	datac => \inst15|temp_char_address~74_combout\,
	datad => \inst15|temp_char_address~97_combout\,
	combout => \inst15|temp_char_address[4]~98_combout\);

-- Location: LCCOMB_X23_Y19_N12
\inst15|temp_char_address[0]~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[0]~99_combout\ = (\inst15|temp_char_address~94_combout\) # (((\inst15|temp_char_address~95_combout\ & !\inst15|temp_char_address~96_combout\)) # (!\inst15|temp_char_address[4]~98_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~94_combout\,
	datab => \inst15|temp_char_address~95_combout\,
	datac => \inst15|temp_char_address~96_combout\,
	datad => \inst15|temp_char_address[4]~98_combout\,
	combout => \inst15|temp_char_address[0]~99_combout\);

-- Location: LCCOMB_X24_Y19_N30
\inst15|temp_char_address[0]~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[0]~100_combout\ = (\inst15|temp_char_address[0]~90_combout\) # ((\inst15|temp_char_address[0]~88_combout\) # ((\inst15|temp_char_address[0]~93_combout\) # (\inst15|temp_char_address[0]~99_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address[0]~90_combout\,
	datab => \inst15|temp_char_address[0]~88_combout\,
	datac => \inst15|temp_char_address[0]~93_combout\,
	datad => \inst15|temp_char_address[0]~99_combout\,
	combout => \inst15|temp_char_address[0]~100_combout\);

-- Location: LCCOMB_X21_Y19_N2
\inst15|LessThan53~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|LessThan53~0_combout\ = (\inst1|pixel_column\(4) & (\inst1|pixel_column\(5) & (\inst1|pixel_column\(7) & \inst1|pixel_column\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(4),
	datab => \inst1|pixel_column\(5),
	datac => \inst1|pixel_column\(7),
	datad => \inst1|pixel_column\(6),
	combout => \inst15|LessThan53~0_combout\);

-- Location: LCCOMB_X23_Y18_N26
\inst15|temp_char_address~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~31_combout\ = (!\inst15|LessThan53~0_combout\ & (((\inst15|LessThan52~0_combout\ & \inst11|Add4~6_combout\)) # (!\inst15|LessThan84~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|LessThan84~0_combout\,
	datab => \inst15|LessThan52~0_combout\,
	datac => \inst11|Add4~6_combout\,
	datad => \inst15|LessThan53~0_combout\,
	combout => \inst15|temp_char_address~31_combout\);

-- Location: LCCOMB_X21_Y21_N0
\inst15|temp_char_address~126\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~126_combout\ = (\inst15|LessThan146~0_combout\ & (\inst1|pixel_row\(5) & ((\inst11|LessThan55~0_combout\) # (!\inst1|pixel_row\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(4),
	datab => \inst11|LessThan55~0_combout\,
	datac => \inst15|LessThan146~0_combout\,
	datad => \inst1|pixel_row\(5),
	combout => \inst15|temp_char_address~126_combout\);

-- Location: LCCOMB_X24_Y17_N20
\inst15|temp_char_address[4]~127\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[4]~127_combout\ = (((\inst15|LessThan48~1_combout\ & !\inst15|temp_char_address~31_combout\)) # (!\inst15|temp_char_address~126_combout\)) # (!\inst15|temp_char_address~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~18_combout\,
	datab => \inst15|LessThan48~1_combout\,
	datac => \inst15|temp_char_address~31_combout\,
	datad => \inst15|temp_char_address~126_combout\,
	combout => \inst15|temp_char_address[4]~127_combout\);

-- Location: LCCOMB_X22_Y17_N4
\inst15|temp_char_address[0]~128\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[0]~128_combout\ = (\inst15|temp_char_address[0]~101_combout\ & (\inst15|temp_char_address[4]~198_combout\ & (\inst15|temp_char_address[0]~100_combout\ & \inst15|temp_char_address[4]~127_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address[0]~101_combout\,
	datab => \inst15|temp_char_address[4]~198_combout\,
	datac => \inst15|temp_char_address[0]~100_combout\,
	datad => \inst15|temp_char_address[4]~127_combout\,
	combout => \inst15|temp_char_address[0]~128_combout\);

-- Location: LCCOMB_X22_Y17_N30
\inst15|temp_char_address[0]~131\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[0]~131_combout\ = (\inst15|temp_char_address[0]~128_combout\) # ((\inst15|temp_char_address[4]~127_combout\ & ((\inst15|temp_char_address~129_combout\) # (\inst15|temp_char_address[0]~130_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~129_combout\,
	datab => \inst15|temp_char_address[0]~130_combout\,
	datac => \inst15|temp_char_address[0]~128_combout\,
	datad => \inst15|temp_char_address[4]~127_combout\,
	combout => \inst15|temp_char_address[0]~131_combout\);

-- Location: LCCOMB_X24_Y17_N28
\inst15|temp_char_address~133\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~133_combout\ = (\inst15|temp_char_address~126_combout\ & (!\inst1|pixel_column\(8) & (!\inst15|LessThan48~1_combout\ & \inst15|temp_char_address~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~126_combout\,
	datab => \inst1|pixel_column\(8),
	datac => \inst15|LessThan48~1_combout\,
	datad => \inst15|temp_char_address~22_combout\,
	combout => \inst15|temp_char_address~133_combout\);

-- Location: LCCOMB_X23_Y18_N4
\inst15|LessThan44~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|LessThan44~0_combout\ = (!\inst11|Add4~10_combout\ & (!\inst11|Add4~6_combout\ & (\inst11|LessThan16~0_combout\ & !\inst11|Add4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add4~10_combout\,
	datab => \inst11|Add4~6_combout\,
	datac => \inst11|LessThan16~0_combout\,
	datad => \inst11|Add4~4_combout\,
	combout => \inst15|LessThan44~0_combout\);

-- Location: LCCOMB_X22_Y18_N4
\inst15|temp_char_address~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~35_combout\ = (\inst15|temp_char_address~34_combout\ & (!\inst15|LessThan44~0_combout\ & ((!\inst1|pixel_column\(8)) # (!\inst15|LessThan45~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|LessThan45~0_combout\,
	datab => \inst15|temp_char_address~34_combout\,
	datac => \inst1|pixel_column\(8),
	datad => \inst15|LessThan44~0_combout\,
	combout => \inst15|temp_char_address~35_combout\);

-- Location: LCCOMB_X22_Y17_N2
\inst15|temp_char_address~129\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~129_combout\ = (\inst15|temp_char_address~14_combout\ & \inst15|temp_char_address~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|temp_char_address~14_combout\,
	datad => \inst15|temp_char_address~35_combout\,
	combout => \inst15|temp_char_address~129_combout\);

-- Location: LCCOMB_X24_Y17_N14
\inst15|temp_char_address[1]~134\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[1]~134_combout\ = (\inst15|temp_char_address~78_combout\ & (!\inst15|temp_char_address~133_combout\ & (!\inst15|temp_char_address~129_combout\ & \inst15|temp_char_address[1]~125_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~78_combout\,
	datab => \inst15|temp_char_address~133_combout\,
	datac => \inst15|temp_char_address~129_combout\,
	datad => \inst15|temp_char_address[1]~125_combout\,
	combout => \inst15|temp_char_address[1]~134_combout\);

-- Location: LCCOMB_X24_Y17_N2
\inst15|temp_char_address~132\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~132_combout\ = (\inst15|temp_char_address~126_combout\ & (!\inst1|pixel_column\(8) & (\inst15|temp_char_address~31_combout\ & \inst15|temp_char_address~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~126_combout\,
	datab => \inst1|pixel_column\(8),
	datac => \inst15|temp_char_address~31_combout\,
	datad => \inst15|temp_char_address~22_combout\,
	combout => \inst15|temp_char_address~132_combout\);

-- Location: LCCOMB_X24_Y17_N10
\inst15|temp_char_address[1]~147\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[1]~147_combout\ = (\inst15|temp_char_address[1]~146_combout\) # ((\inst15|temp_char_address[1]~134_combout\) # (\inst15|temp_char_address~132_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address[1]~146_combout\,
	datac => \inst15|temp_char_address[1]~134_combout\,
	datad => \inst15|temp_char_address~132_combout\,
	combout => \inst15|temp_char_address[1]~147_combout\);

-- Location: LCCOMB_X22_Y17_N26
\inst15|temp_char_address[2]~199\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[2]~199_combout\ = (\inst15|temp_char_address[0]~101_combout\ & (((!\inst15|temp_char_address~79_combout\ & !\inst15|temp_char_address~35_combout\)) # (!\inst15|temp_char_address~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address[0]~101_combout\,
	datab => \inst15|temp_char_address~14_combout\,
	datac => \inst15|temp_char_address~79_combout\,
	datad => \inst15|temp_char_address~35_combout\,
	combout => \inst15|temp_char_address[2]~199_combout\);

-- Location: LCCOMB_X24_Y17_N8
\inst15|temp_char_address[2]~148\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[2]~148_combout\ = (\inst15|temp_char_address[2]~199_combout\ & (!\inst15|temp_char_address~110_combout\ & ((!\inst15|temp_char_address[1]~125_combout\) # (!\inst15|temp_char_address~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~78_combout\,
	datab => \inst15|temp_char_address[2]~199_combout\,
	datac => \inst15|temp_char_address~110_combout\,
	datad => \inst15|temp_char_address[1]~125_combout\,
	combout => \inst15|temp_char_address[2]~148_combout\);

-- Location: LCCOMB_X22_Y17_N22
\inst15|temp_char_address[2]~163\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[2]~163_combout\ = (\inst15|temp_char_address~77_combout\ & (\inst15|temp_char_address~74_combout\ & \inst15|temp_char_address[1]~125_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~77_combout\,
	datab => \inst15|temp_char_address~74_combout\,
	datad => \inst15|temp_char_address[1]~125_combout\,
	combout => \inst15|temp_char_address[2]~163_combout\);

-- Location: LCCOMB_X24_Y17_N26
\inst15|temp_char_address[2]~165\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[2]~165_combout\ = (\inst15|temp_char_address[2]~164_combout\) # ((\inst15|temp_char_address~109_combout\) # ((\inst15|temp_char_address~97_combout\) # (\inst15|temp_char_address[2]~163_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address[2]~164_combout\,
	datab => \inst15|temp_char_address~109_combout\,
	datac => \inst15|temp_char_address~97_combout\,
	datad => \inst15|temp_char_address[2]~163_combout\,
	combout => \inst15|temp_char_address[2]~165_combout\);

-- Location: LCCOMB_X24_Y17_N16
\inst15|temp_char_address[2]~166\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[2]~166_combout\ = ((\inst15|temp_char_address[2]~148_combout\ & ((\inst15|temp_char_address[2]~162_combout\) # (\inst15|temp_char_address[2]~165_combout\)))) # (!\inst15|temp_char_address[4]~127_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address[2]~162_combout\,
	datab => \inst15|temp_char_address[2]~148_combout\,
	datac => \inst15|temp_char_address[2]~165_combout\,
	datad => \inst15|temp_char_address[4]~127_combout\,
	combout => \inst15|temp_char_address[2]~166_combout\);

-- Location: LCCOMB_X21_Y18_N30
\inst15|temp_char_address~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~94_combout\ = (\inst15|temp_char_address~14_combout\ & \inst15|temp_char_address~79_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|temp_char_address~14_combout\,
	datac => \inst15|temp_char_address~79_combout\,
	combout => \inst15|temp_char_address~94_combout\);

-- Location: LCCOMB_X21_Y18_N28
\inst15|temp_char_address[3]~173\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[3]~173_combout\ = (!\inst15|temp_char_address~21_combout\ & ((!\inst15|temp_char_address~74_combout\) # (!\inst15|temp_char_address~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~21_combout\,
	datab => \inst15|temp_char_address~14_combout\,
	datac => \inst15|temp_char_address~74_combout\,
	combout => \inst15|temp_char_address[3]~173_combout\);

-- Location: LCCOMB_X23_Y19_N4
\inst15|temp_char_address~149\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~149_combout\ = (!\inst1|pixel_column\(7) & (\inst15|temp_char_address~55_combout\ & \inst15|temp_char_address~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pixel_column\(7),
	datac => \inst15|temp_char_address~55_combout\,
	datad => \inst15|temp_char_address~20_combout\,
	combout => \inst15|temp_char_address~149_combout\);

-- Location: LCCOMB_X23_Y19_N30
\inst15|temp_char_address[2]~150\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[2]~150_combout\ = (!\inst15|temp_char_address~96_combout\ & (\inst15|temp_char_address[4]~108_combout\ & (!\inst15|temp_char_address~149_combout\ & !\inst15|temp_char_address~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~96_combout\,
	datab => \inst15|temp_char_address[4]~108_combout\,
	datac => \inst15|temp_char_address~149_combout\,
	datad => \inst15|temp_char_address~25_combout\,
	combout => \inst15|temp_char_address[2]~150_combout\);

-- Location: LCCOMB_X21_Y18_N14
\inst15|temp_char_address[3]~174\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[3]~174_combout\ = (\inst15|temp_char_address[3]~172_combout\ & (\inst15|temp_char_address[3]~173_combout\ & (\inst15|temp_char_address[2]~150_combout\ & !\inst15|temp_char_address[1]~125_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address[3]~172_combout\,
	datab => \inst15|temp_char_address[3]~173_combout\,
	datac => \inst15|temp_char_address[2]~150_combout\,
	datad => \inst15|temp_char_address[1]~125_combout\,
	combout => \inst15|temp_char_address[3]~174_combout\);

-- Location: LCCOMB_X24_Y17_N4
\inst15|temp_char_address[3]~177\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[3]~177_combout\ = (\inst15|temp_char_address[3]~176_combout\) # ((\inst15|temp_char_address~94_combout\) # ((\inst15|temp_char_address[3]~174_combout\) # (\inst15|temp_char_address[2]~163_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address[3]~176_combout\,
	datab => \inst15|temp_char_address~94_combout\,
	datac => \inst15|temp_char_address[3]~174_combout\,
	datad => \inst15|temp_char_address[2]~163_combout\,
	combout => \inst15|temp_char_address[3]~177_combout\);

-- Location: LCCOMB_X24_Y17_N24
\inst15|temp_char_address[3]~180\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[3]~180_combout\ = (\inst15|temp_char_address[3]~179_combout\ & ((\inst15|temp_char_address[3]~177_combout\) # ((\inst15|temp_char_address~133_combout\ & !\inst15|temp_char_address~132_combout\)))) # 
-- (!\inst15|temp_char_address[3]~179_combout\ & (\inst15|temp_char_address~133_combout\ & ((!\inst15|temp_char_address~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address[3]~179_combout\,
	datab => \inst15|temp_char_address~133_combout\,
	datac => \inst15|temp_char_address[3]~177_combout\,
	datad => \inst15|temp_char_address~132_combout\,
	combout => \inst15|temp_char_address[3]~180_combout\);

-- Location: LCCOMB_X22_Y17_N18
\inst15|temp_char_address[4]~181\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[4]~181_combout\ = (\inst15|temp_char_address[4]~127_combout\ & ((!\inst15|temp_char_address~14_combout\) # (!\inst15|temp_char_address~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|temp_char_address~35_combout\,
	datac => \inst15|temp_char_address~14_combout\,
	datad => \inst15|temp_char_address[4]~127_combout\,
	combout => \inst15|temp_char_address[4]~181_combout\);

-- Location: LCCOMB_X20_Y18_N30
\inst15|temp_char_address~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~85_combout\ = (\inst15|temp_char_address~84_combout\ & ((\inst11|Add4~4_combout\) # ((!\inst11|LessThan4~1_combout\) # (!\inst11|LessThan24~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~84_combout\,
	datab => \inst11|Add4~4_combout\,
	datac => \inst11|LessThan24~1_combout\,
	datad => \inst11|LessThan4~1_combout\,
	combout => \inst15|temp_char_address~85_combout\);

-- Location: LCCOMB_X22_Y17_N6
\inst15|temp_char_address[4]~123\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[4]~123_combout\ = ((!\inst15|temp_char_address~80_combout\ & (!\inst15|temp_char_address~79_combout\ & !\inst15|temp_char_address~85_combout\))) # (!\inst15|temp_char_address~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~80_combout\,
	datab => \inst15|temp_char_address~79_combout\,
	datac => \inst15|temp_char_address~85_combout\,
	datad => \inst15|temp_char_address~14_combout\,
	combout => \inst15|temp_char_address[4]~123_combout\);

-- Location: LCCOMB_X22_Y17_N14
\inst15|temp_char_address[4]~192\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[4]~192_combout\ = (\inst15|temp_char_address[4]~181_combout\ & ((\inst15|temp_char_address[4]~191_combout\) # ((\inst15|temp_char_address[0]~130_combout\) # (!\inst15|temp_char_address[4]~123_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address[4]~191_combout\,
	datab => \inst15|temp_char_address[4]~181_combout\,
	datac => \inst15|temp_char_address[0]~130_combout\,
	datad => \inst15|temp_char_address[4]~123_combout\,
	combout => \inst15|temp_char_address[4]~192_combout\);

-- Location: LCCOMB_X24_Y20_N16
\inst15|temp_char_address[5]~194\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address[5]~194_combout\ = (\inst15|temp_char_address[5]~193_combout\ & (\inst15|temp_char_address[4]~127_combout\ & (\inst15|temp_char_address[5]~113_combout\ & \inst15|temp_char_address[2]~199_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address[5]~193_combout\,
	datab => \inst15|temp_char_address[4]~127_combout\,
	datac => \inst15|temp_char_address[5]~113_combout\,
	datad => \inst15|temp_char_address[2]~199_combout\,
	combout => \inst15|temp_char_address[5]~194_combout\);

-- Location: LCCOMB_X24_Y23_N20
\inst15|display|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|display|Mux0~2_combout\ = (\inst1|pixel_column\(2) & (((\inst1|pixel_column\(1))))) # (!\inst1|pixel_column\(2) & ((\inst1|pixel_column\(1) & ((\inst15|display|altsyncram_component|auto_generated|q_a\(6)))) # (!\inst1|pixel_column\(1) & 
-- (\inst15|display|altsyncram_component|auto_generated|q_a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|display|altsyncram_component|auto_generated|q_a\(7),
	datab => \inst1|pixel_column\(2),
	datac => \inst15|display|altsyncram_component|auto_generated|q_a\(6),
	datad => \inst1|pixel_column\(1),
	combout => \inst15|display|Mux0~2_combout\);

-- Location: LCCOMB_X24_Y23_N22
\inst15|display|Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|display|Mux0~3_combout\ = (\inst1|pixel_column\(2) & ((\inst15|display|Mux0~2_combout\ & (\inst15|display|altsyncram_component|auto_generated|q_a\(4))) # (!\inst15|display|Mux0~2_combout\ & 
-- ((\inst15|display|altsyncram_component|auto_generated|q_a\(5)))))) # (!\inst1|pixel_column\(2) & (((\inst15|display|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|display|altsyncram_component|auto_generated|q_a\(4),
	datab => \inst1|pixel_column\(2),
	datac => \inst15|display|altsyncram_component|auto_generated|q_a\(5),
	datad => \inst15|display|Mux0~2_combout\,
	combout => \inst15|display|Mux0~3_combout\);

-- Location: LCCOMB_X24_Y23_N18
\inst15|display|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|display|Mux0~1_combout\ = (\inst15|display|Mux0~0_combout\ & ((\inst15|display|altsyncram_component|auto_generated|q_a\(0)) # ((!\inst1|pixel_column\(2))))) # (!\inst15|display|Mux0~0_combout\ & (((\inst1|pixel_column\(2) & 
-- \inst15|display|altsyncram_component|auto_generated|q_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|display|Mux0~0_combout\,
	datab => \inst15|display|altsyncram_component|auto_generated|q_a\(0),
	datac => \inst1|pixel_column\(2),
	datad => \inst15|display|altsyncram_component|auto_generated|q_a\(1),
	combout => \inst15|display|Mux0~1_combout\);

-- Location: LCCOMB_X24_Y23_N24
\inst7|red~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|red~0_combout\ = (!\sw2~input_o\ & ((\inst1|pixel_column\(3) & ((\inst15|display|Mux0~1_combout\))) # (!\inst1|pixel_column\(3) & (\inst15|display|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw2~input_o\,
	datab => \inst1|pixel_column\(3),
	datac => \inst15|display|Mux0~3_combout\,
	datad => \inst15|display|Mux0~1_combout\,
	combout => \inst7|red~0_combout\);

-- Location: IOIBUF_X0_Y24_N1
\sw0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw0,
	o => \sw0~input_o\);

-- Location: LCCOMB_X19_Y25_N26
\inst5|bird_dead~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_dead~1_combout\ = (\sw2~input_o\ & (!\inst5|temp_bird_dead~combout\ & !\sw0~input_o\)) # (!\sw2~input_o\ & (\inst5|temp_bird_dead~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw2~input_o\,
	datac => \inst5|temp_bird_dead~combout\,
	datad => \sw0~input_o\,
	combout => \inst5|bird_dead~1_combout\);

-- Location: LCCOMB_X19_Y25_N6
\inst5|Move_Bird~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Move_Bird~0_combout\ = (\sw2~input_o\ & (!\inst5|temp_bird_dead~combout\ & !\sw0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw2~input_o\,
	datac => \inst5|temp_bird_dead~combout\,
	datad => \sw0~input_o\,
	combout => \inst5|Move_Bird~0_combout\);

-- Location: CLKCTRL_G12
\inst5|Move_Bird~0clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst5|Move_Bird~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst5|Move_Bird~0clkctrl_outclk\);

-- Location: LCCOMB_X19_Y25_N28
\inst5|bird_y_pos~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_y_pos~61_combout\ = (\inst5|bird_y_pos[9]~2_combout\ & ((\sw2~input_o\) # (!\inst5|temp_bird_dead~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|temp_bird_dead~combout\,
	datac => \inst5|bird_y_pos[9]~2_combout\,
	datad => \sw2~input_o\,
	combout => \inst5|bird_y_pos~61_combout\);

-- Location: LCCOMB_X19_Y25_N18
\inst5|bird_y_pos[9]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_y_pos[9]~1_combout\ = (GLOBAL(\inst5|Move_Bird~0clkctrl_outclk\) & (\inst5|bird_y_pos[9]~1_combout\)) # (!GLOBAL(\inst5|Move_Bird~0clkctrl_outclk\) & ((\inst5|bird_y_pos~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|bird_y_pos[9]~1_combout\,
	datac => \inst5|Move_Bird~0clkctrl_outclk\,
	datad => \inst5|bird_y_pos~61_combout\,
	combout => \inst5|bird_y_pos[9]~1_combout\);

-- Location: IOIBUF_X41_Y12_N22
\mouse_data~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => mouse_data,
	o => \mouse_data~input_o\);

-- Location: LCCOMB_X36_Y12_N18
\inst2|SHIFTIN[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SHIFTIN[8]~feeder_combout\ = \mouse_data~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse_data~input_o\,
	combout => \inst2|SHIFTIN[8]~feeder_combout\);

-- Location: LCCOMB_X35_Y12_N30
\inst2|INCNT~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|INCNT~2_combout\ = (!\inst2|INCNT\(3) & (\inst2|INCNT\(1) $ (\inst2|INCNT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|INCNT\(3),
	datac => \inst2|INCNT\(1),
	datad => \inst2|INCNT\(0),
	combout => \inst2|INCNT~2_combout\);

-- Location: LCCOMB_X35_Y12_N18
\inst2|INCNT[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|INCNT[3]~1_combout\ = (!\inst2|mouse_state.WAIT_OUTPUT_READY~q\ & \inst2|READ_CHAR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst2|READ_CHAR~q\,
	combout => \inst2|INCNT[3]~1_combout\);

-- Location: FF_X35_Y12_N31
\inst2|INCNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|INCNT~2_combout\,
	ena => \inst2|INCNT[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|INCNT\(1));

-- Location: LCCOMB_X35_Y12_N8
\inst2|INCNT~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|INCNT~0_combout\ = (!\inst2|INCNT\(3) & (\inst2|INCNT\(2) $ (((\inst2|INCNT\(0) & \inst2|INCNT\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|INCNT\(3),
	datab => \inst2|INCNT\(0),
	datac => \inst2|INCNT\(2),
	datad => \inst2|INCNT\(1),
	combout => \inst2|INCNT~0_combout\);

-- Location: FF_X35_Y12_N9
\inst2|INCNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|INCNT~0_combout\,
	ena => \inst2|INCNT[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|INCNT\(2));

-- Location: LCCOMB_X35_Y12_N10
\inst2|INCNT~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|INCNT~4_combout\ = (\inst2|INCNT\(1) & (\inst2|INCNT\(0) & (!\inst2|INCNT\(3) & \inst2|INCNT\(2)))) # (!\inst2|INCNT\(1) & (!\inst2|INCNT\(0) & (\inst2|INCNT\(3) & !\inst2|INCNT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|INCNT\(1),
	datab => \inst2|INCNT\(0),
	datac => \inst2|INCNT\(3),
	datad => \inst2|INCNT\(2),
	combout => \inst2|INCNT~4_combout\);

-- Location: FF_X35_Y12_N11
\inst2|INCNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|INCNT~4_combout\,
	ena => \inst2|INCNT[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|INCNT\(3));

-- Location: LCCOMB_X35_Y12_N24
\inst2|INCNT~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|INCNT~3_combout\ = (!\inst2|INCNT\(0) & (((!\inst2|INCNT\(2) & !\inst2|INCNT\(1))) # (!\inst2|INCNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|INCNT\(2),
	datab => \inst2|INCNT\(3),
	datac => \inst2|INCNT\(0),
	datad => \inst2|INCNT\(1),
	combout => \inst2|INCNT~3_combout\);

-- Location: FF_X35_Y12_N25
\inst2|INCNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|INCNT~3_combout\,
	ena => \inst2|INCNT[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|INCNT\(0));

-- Location: LCCOMB_X35_Y12_N12
\inst2|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~0_combout\ = ((!\inst2|INCNT\(1) & (!\inst2|INCNT\(0) & !\inst2|INCNT\(2)))) # (!\inst2|INCNT\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|INCNT\(1),
	datab => \inst2|INCNT\(0),
	datac => \inst2|INCNT\(2),
	datad => \inst2|INCNT\(3),
	combout => \inst2|LessThan1~0_combout\);

-- Location: LCCOMB_X36_Y12_N24
\inst2|READ_CHAR~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|READ_CHAR~0_combout\ = (\inst2|READ_CHAR~q\ & ((\inst2|LessThan1~0_combout\))) # (!\inst2|READ_CHAR~q\ & (!\mouse_data~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse_data~input_o\,
	datac => \inst2|READ_CHAR~q\,
	datad => \inst2|LessThan1~0_combout\,
	combout => \inst2|READ_CHAR~0_combout\);

-- Location: FF_X36_Y12_N25
\inst2|READ_CHAR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|READ_CHAR~0_combout\,
	ena => \inst2|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|READ_CHAR~q\);

-- Location: LCCOMB_X36_Y12_N22
\inst2|SHIFTIN[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SHIFTIN[0]~2_combout\ = (!\inst2|mouse_state.WAIT_OUTPUT_READY~q\ & (\inst2|READ_CHAR~q\ & \inst2|LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|mouse_state.WAIT_OUTPUT_READY~q\,
	datab => \inst2|READ_CHAR~q\,
	datad => \inst2|LessThan1~0_combout\,
	combout => \inst2|SHIFTIN[0]~2_combout\);

-- Location: FF_X36_Y12_N19
\inst2|SHIFTIN[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|SHIFTIN[8]~feeder_combout\,
	ena => \inst2|SHIFTIN[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SHIFTIN\(8));

-- Location: LCCOMB_X36_Y12_N12
\inst2|SHIFTIN[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SHIFTIN[7]~feeder_combout\ = \inst2|SHIFTIN\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|SHIFTIN\(8),
	combout => \inst2|SHIFTIN[7]~feeder_combout\);

-- Location: FF_X36_Y12_N13
\inst2|SHIFTIN[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|SHIFTIN[7]~feeder_combout\,
	ena => \inst2|SHIFTIN[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SHIFTIN\(7));

-- Location: LCCOMB_X36_Y12_N10
\inst2|SHIFTIN[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SHIFTIN[6]~feeder_combout\ = \inst2|SHIFTIN\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|SHIFTIN\(7),
	combout => \inst2|SHIFTIN[6]~feeder_combout\);

-- Location: FF_X36_Y12_N11
\inst2|SHIFTIN[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|SHIFTIN[6]~feeder_combout\,
	ena => \inst2|SHIFTIN[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SHIFTIN\(6));

-- Location: LCCOMB_X36_Y12_N20
\inst2|SHIFTIN[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SHIFTIN[5]~feeder_combout\ = \inst2|SHIFTIN\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|SHIFTIN\(6),
	combout => \inst2|SHIFTIN[5]~feeder_combout\);

-- Location: FF_X36_Y12_N21
\inst2|SHIFTIN[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|SHIFTIN[5]~feeder_combout\,
	ena => \inst2|SHIFTIN[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SHIFTIN\(5));

-- Location: LCCOMB_X36_Y12_N6
\inst2|SHIFTIN[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SHIFTIN[4]~feeder_combout\ = \inst2|SHIFTIN\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|SHIFTIN\(5),
	combout => \inst2|SHIFTIN[4]~feeder_combout\);

-- Location: FF_X36_Y12_N7
\inst2|SHIFTIN[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|SHIFTIN[4]~feeder_combout\,
	ena => \inst2|SHIFTIN[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SHIFTIN\(4));

-- Location: LCCOMB_X36_Y12_N0
\inst2|SHIFTIN[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SHIFTIN[3]~feeder_combout\ = \inst2|SHIFTIN\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|SHIFTIN\(4),
	combout => \inst2|SHIFTIN[3]~feeder_combout\);

-- Location: FF_X36_Y12_N1
\inst2|SHIFTIN[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|SHIFTIN[3]~feeder_combout\,
	ena => \inst2|SHIFTIN[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SHIFTIN\(3));

-- Location: LCCOMB_X36_Y12_N2
\inst2|SHIFTIN[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SHIFTIN[2]~feeder_combout\ = \inst2|SHIFTIN\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|SHIFTIN\(3),
	combout => \inst2|SHIFTIN[2]~feeder_combout\);

-- Location: FF_X36_Y12_N3
\inst2|SHIFTIN[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|SHIFTIN[2]~feeder_combout\,
	ena => \inst2|SHIFTIN[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SHIFTIN\(2));

-- Location: LCCOMB_X36_Y12_N4
\inst2|SHIFTIN[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SHIFTIN[1]~feeder_combout\ = \inst2|SHIFTIN\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|SHIFTIN\(2),
	combout => \inst2|SHIFTIN[1]~feeder_combout\);

-- Location: FF_X36_Y12_N5
\inst2|SHIFTIN[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|SHIFTIN[1]~feeder_combout\,
	ena => \inst2|SHIFTIN[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SHIFTIN\(1));

-- Location: FF_X36_Y12_N23
\inst2|SHIFTIN[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst2|SHIFTIN\(1),
	sload => VCC,
	ena => \inst2|SHIFTIN[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SHIFTIN\(0));

-- Location: LCCOMB_X35_Y12_N20
\inst2|PACKET_COUNT[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|PACKET_COUNT[1]~2_combout\ = \inst2|left_button~1_combout\ $ (\inst2|PACKET_COUNT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|left_button~1_combout\,
	datac => \inst2|PACKET_COUNT\(1),
	combout => \inst2|PACKET_COUNT[1]~2_combout\);

-- Location: FF_X35_Y12_N21
\inst2|PACKET_COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|PACKET_COUNT[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|PACKET_COUNT\(1));

-- Location: LCCOMB_X35_Y12_N26
\inst2|PACKET_CHAR1[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|PACKET_CHAR1[0]~0_combout\ = (\inst2|left_button~1_combout\ & ((\inst2|PACKET_COUNT\(1) & ((\inst2|PACKET_CHAR1\(0)))) # (!\inst2|PACKET_COUNT\(1) & (\inst2|SHIFTIN\(0))))) # (!\inst2|left_button~1_combout\ & (((\inst2|PACKET_CHAR1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|left_button~1_combout\,
	datab => \inst2|SHIFTIN\(0),
	datac => \inst2|PACKET_CHAR1\(0),
	datad => \inst2|PACKET_COUNT\(1),
	combout => \inst2|PACKET_CHAR1[0]~0_combout\);

-- Location: FF_X35_Y12_N27
\inst2|PACKET_CHAR1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|PACKET_CHAR1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|PACKET_CHAR1\(0));

-- Location: LCCOMB_X35_Y12_N16
\inst2|left_button~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|left_button~0_combout\ = (\inst2|left_button~1_combout\ & ((\inst2|PACKET_COUNT\(1) & (\inst2|PACKET_CHAR1\(0))) # (!\inst2|PACKET_COUNT\(1) & ((\inst2|left_button~q\))))) # (!\inst2|left_button~1_combout\ & (((\inst2|left_button~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|left_button~1_combout\,
	datab => \inst2|PACKET_CHAR1\(0),
	datac => \inst2|left_button~q\,
	datad => \inst2|PACKET_COUNT\(1),
	combout => \inst2|left_button~0_combout\);

-- Location: FF_X35_Y12_N17
\inst2|left_button\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|left_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|left_button~q\);

-- Location: LCCOMB_X17_Y25_N16
\inst5|bird_y_pos~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_y_pos~62_combout\ = (\inst5|bird_y_pos[8]~6_combout\ & ((\sw2~input_o\) # (!\inst5|temp_bird_dead~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|temp_bird_dead~combout\,
	datac => \inst5|bird_y_pos[8]~6_combout\,
	datad => \sw2~input_o\,
	combout => \inst5|bird_y_pos~62_combout\);

-- Location: LCCOMB_X17_Y25_N0
\inst5|bird_y_pos[8]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_y_pos[8]~5_combout\ = (GLOBAL(\inst5|Move_Bird~0clkctrl_outclk\) & (\inst5|bird_y_pos[8]~5_combout\)) # (!GLOBAL(\inst5|Move_Bird~0clkctrl_outclk\) & ((\inst5|bird_y_pos~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|bird_y_pos[8]~5_combout\,
	datac => \inst5|Move_Bird~0clkctrl_outclk\,
	datad => \inst5|bird_y_pos~62_combout\,
	combout => \inst5|bird_y_pos[8]~5_combout\);

-- Location: LCCOMB_X17_Y25_N14
\inst5|bird_y_pos[8]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_y_pos[8]~6_combout\ = (\inst5|Move_Bird~0_combout\ & (\inst5|bird_y_pos[8]~_emulated_q\ $ (((\inst5|bird_y_pos[8]~5_combout\))))) # (!\inst5|Move_Bird~0_combout\ & (((\inst5|bird_y_pos~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_pos[8]~_emulated_q\,
	datab => \inst5|bird_y_pos~62_combout\,
	datac => \inst5|Move_Bird~0_combout\,
	datad => \inst5|bird_y_pos[8]~5_combout\,
	combout => \inst5|bird_y_pos[8]~6_combout\);

-- Location: LCCOMB_X17_Y25_N22
\inst5|bird_y_pos~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_y_pos~67_combout\ = (\inst5|bird_y_pos[4]~22_combout\) # ((\inst5|temp_bird_dead~combout\ & !\sw2~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_pos[4]~22_combout\,
	datac => \inst5|temp_bird_dead~combout\,
	datad => \sw2~input_o\,
	combout => \inst5|bird_y_pos~67_combout\);

-- Location: LCCOMB_X17_Y25_N10
\inst5|bird_y_pos[4]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_y_pos[4]~21_combout\ = (GLOBAL(\inst5|Move_Bird~0clkctrl_outclk\) & (\inst5|bird_y_pos[4]~21_combout\)) # (!GLOBAL(\inst5|Move_Bird~0clkctrl_outclk\) & ((\inst5|bird_y_pos~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_pos[4]~21_combout\,
	datac => \inst5|bird_y_pos~67_combout\,
	datad => \inst5|Move_Bird~0clkctrl_outclk\,
	combout => \inst5|bird_y_pos[4]~21_combout\);

-- Location: LCCOMB_X20_Y25_N4
\inst5|bird_y_pos~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_y_pos~68_combout\ = (\inst5|bird_y_pos[2]~30_combout\ & ((\sw2~input_o\) # (!\inst5|temp_bird_dead~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw2~input_o\,
	datab => \inst5|bird_y_pos[2]~30_combout\,
	datad => \inst5|temp_bird_dead~combout\,
	combout => \inst5|bird_y_pos~68_combout\);

-- Location: LCCOMB_X20_Y25_N12
\inst5|bird_y_pos[2]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_y_pos[2]~29_combout\ = (GLOBAL(\inst5|Move_Bird~0clkctrl_outclk\) & (\inst5|bird_y_pos[2]~29_combout\)) # (!GLOBAL(\inst5|Move_Bird~0clkctrl_outclk\) & ((\inst5|bird_y_pos~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_pos[2]~29_combout\,
	datac => \inst5|bird_y_pos~68_combout\,
	datad => \inst5|Move_Bird~0clkctrl_outclk\,
	combout => \inst5|bird_y_pos[2]~29_combout\);

-- Location: LCCOMB_X20_Y25_N10
\inst5|bird_y_pos~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_y_pos~69_combout\ = (\inst5|bird_y_pos[1]~34_combout\ & ((\sw2~input_o\) # (!\inst5|temp_bird_dead~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw2~input_o\,
	datac => \inst5|bird_y_pos[1]~34_combout\,
	datad => \inst5|temp_bird_dead~combout\,
	combout => \inst5|bird_y_pos~69_combout\);

-- Location: LCCOMB_X20_Y25_N22
\inst5|bird_y_pos[1]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_y_pos[1]~33_combout\ = (GLOBAL(\inst5|Move_Bird~0clkctrl_outclk\) & (\inst5|bird_y_pos[1]~33_combout\)) # (!GLOBAL(\inst5|Move_Bird~0clkctrl_outclk\) & ((\inst5|bird_y_pos~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_pos[1]~33_combout\,
	datac => \inst5|bird_y_pos~69_combout\,
	datad => \inst5|Move_Bird~0clkctrl_outclk\,
	combout => \inst5|bird_y_pos[1]~33_combout\);

-- Location: LCCOMB_X16_Y25_N8
\inst5|Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add4~8_combout\ = ((\inst5|bird_y_pos[4]~22_combout\ $ (\inst5|bird_y_motion\(3) $ (!\inst5|Add4~7\)))) # (GND)
-- \inst5|Add4~9\ = CARRY((\inst5|bird_y_pos[4]~22_combout\ & ((\inst5|bird_y_motion\(3)) # (!\inst5|Add4~7\))) # (!\inst5|bird_y_pos[4]~22_combout\ & (\inst5|bird_y_motion\(3) & !\inst5|Add4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_pos[4]~22_combout\,
	datab => \inst5|bird_y_motion\(3),
	datad => VCC,
	cin => \inst5|Add4~7\,
	combout => \inst5|Add4~8_combout\,
	cout => \inst5|Add4~9\);

-- Location: LCCOMB_X16_Y25_N10
\inst5|Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add4~10_combout\ = (\inst5|bird_y_pos[5]~18_combout\ & ((\inst5|bird_y_motion\(3) & (\inst5|Add4~9\ & VCC)) # (!\inst5|bird_y_motion\(3) & (!\inst5|Add4~9\)))) # (!\inst5|bird_y_pos[5]~18_combout\ & ((\inst5|bird_y_motion\(3) & (!\inst5|Add4~9\)) # 
-- (!\inst5|bird_y_motion\(3) & ((\inst5|Add4~9\) # (GND)))))
-- \inst5|Add4~11\ = CARRY((\inst5|bird_y_pos[5]~18_combout\ & (!\inst5|bird_y_motion\(3) & !\inst5|Add4~9\)) # (!\inst5|bird_y_pos[5]~18_combout\ & ((!\inst5|Add4~9\) # (!\inst5|bird_y_motion\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_pos[5]~18_combout\,
	datab => \inst5|bird_y_motion\(3),
	datad => VCC,
	cin => \inst5|Add4~9\,
	combout => \inst5|Add4~10_combout\,
	cout => \inst5|Add4~11\);

-- Location: LCCOMB_X17_Y25_N8
\inst5|bird_y_pos[5]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_y_pos[5]~19_combout\ = \inst5|bird_y_pos[5]~17_combout\ $ (\inst5|Add4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_pos[5]~17_combout\,
	datad => \inst5|Add4~10_combout\,
	combout => \inst5|bird_y_pos[5]~19_combout\);

-- Location: FF_X17_Y25_N9
\inst5|bird_y_pos[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|vert_sync_out~clkctrl_outclk\,
	d => \inst5|bird_y_pos[5]~19_combout\,
	clrn => \inst5|Move_Bird~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|bird_y_pos[5]~_emulated_q\);

-- Location: LCCOMB_X17_Y25_N26
\inst5|bird_y_pos~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_y_pos~65_combout\ = (\inst5|bird_y_pos[5]~18_combout\) # ((\inst5|temp_bird_dead~combout\ & !\sw2~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|bird_y_pos[5]~18_combout\,
	datac => \inst5|temp_bird_dead~combout\,
	datad => \sw2~input_o\,
	combout => \inst5|bird_y_pos~65_combout\);

-- Location: LCCOMB_X17_Y25_N6
\inst5|bird_y_pos[5]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_y_pos[5]~17_combout\ = (GLOBAL(\inst5|Move_Bird~0clkctrl_outclk\) & (\inst5|bird_y_pos[5]~17_combout\)) # (!GLOBAL(\inst5|Move_Bird~0clkctrl_outclk\) & ((\inst5|bird_y_pos~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_pos[5]~17_combout\,
	datac => \inst5|bird_y_pos~65_combout\,
	datad => \inst5|Move_Bird~0clkctrl_outclk\,
	combout => \inst5|bird_y_pos[5]~17_combout\);

-- Location: LCCOMB_X17_Y25_N2
\inst5|bird_y_pos[5]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_y_pos[5]~18_combout\ = (\inst5|Move_Bird~0_combout\ & ((\inst5|bird_y_pos[5]~_emulated_q\ $ (\inst5|bird_y_pos[5]~17_combout\)))) # (!\inst5|Move_Bird~0_combout\ & (\inst5|bird_y_pos~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_pos~65_combout\,
	datab => \inst5|Move_Bird~0_combout\,
	datac => \inst5|bird_y_pos[5]~_emulated_q\,
	datad => \inst5|bird_y_pos[5]~17_combout\,
	combout => \inst5|bird_y_pos[5]~18_combout\);

-- Location: LCCOMB_X20_Y25_N14
\inst5|LessThan5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|LessThan5~1_combout\ = (!\inst5|bird_y_pos[3]~26_combout\ & (((!\inst5|bird_y_pos[1]~34_combout\) # (!\inst5|bird_y_pos[2]~30_combout\)) # (!\inst5|bird_y_pos[0]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_pos[0]~38_combout\,
	datab => \inst5|bird_y_pos[2]~30_combout\,
	datac => \inst5|bird_y_pos[3]~26_combout\,
	datad => \inst5|bird_y_pos[1]~34_combout\,
	combout => \inst5|LessThan5~1_combout\);

-- Location: LCCOMB_X19_Y25_N4
\inst5|bird_y_pos~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_y_pos~63_combout\ = (\inst5|bird_y_pos[7]~10_combout\) # ((!\sw2~input_o\ & \inst5|temp_bird_dead~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw2~input_o\,
	datac => \inst5|temp_bird_dead~combout\,
	datad => \inst5|bird_y_pos[7]~10_combout\,
	combout => \inst5|bird_y_pos~63_combout\);

-- Location: LCCOMB_X19_Y25_N0
\inst5|bird_y_pos[7]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_y_pos[7]~9_combout\ = (GLOBAL(\inst5|Move_Bird~0clkctrl_outclk\) & (\inst5|bird_y_pos[7]~9_combout\)) # (!GLOBAL(\inst5|Move_Bird~0clkctrl_outclk\) & ((\inst5|bird_y_pos~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|bird_y_pos[7]~9_combout\,
	datac => \inst5|bird_y_pos~63_combout\,
	datad => \inst5|Move_Bird~0clkctrl_outclk\,
	combout => \inst5|bird_y_pos[7]~9_combout\);

-- Location: LCCOMB_X15_Y25_N14
\inst5|bird_y_pos[7]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_y_pos[7]~10_combout\ = (\inst5|Move_Bird~0_combout\ & (\inst5|bird_y_pos[7]~_emulated_q\ $ (((\inst5|bird_y_pos[7]~9_combout\))))) # (!\inst5|Move_Bird~0_combout\ & (((\inst5|bird_y_pos~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_pos[7]~_emulated_q\,
	datab => \inst5|bird_y_pos~63_combout\,
	datac => \inst5|Move_Bird~0_combout\,
	datad => \inst5|bird_y_pos[7]~9_combout\,
	combout => \inst5|bird_y_pos[7]~10_combout\);

-- Location: LCCOMB_X19_Y25_N24
\inst5|LessThan5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|LessThan5~0_combout\ = ((!\inst5|bird_y_pos[7]~10_combout\) # (!\inst5|bird_y_pos[8]~6_combout\)) # (!\inst5|bird_y_pos[6]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_pos[6]~14_combout\,
	datac => \inst5|bird_y_pos[8]~6_combout\,
	datad => \inst5|bird_y_pos[7]~10_combout\,
	combout => \inst5|LessThan5~0_combout\);

-- Location: LCCOMB_X19_Y25_N12
\inst5|LessThan5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|LessThan5~2_combout\ = (\inst5|LessThan5~0_combout\) # ((!\inst5|bird_y_pos[5]~18_combout\ & ((\inst5|LessThan5~1_combout\) # (!\inst5|bird_y_pos[4]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_pos[4]~22_combout\,
	datab => \inst5|bird_y_pos[5]~18_combout\,
	datac => \inst5|LessThan5~1_combout\,
	datad => \inst5|LessThan5~0_combout\,
	combout => \inst5|LessThan5~2_combout\);

-- Location: LCCOMB_X16_Y25_N28
\inst5|bird_y_motion~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_y_motion~1_combout\ = (!\inst5|bird_y_pos[9]~2_combout\ & (\inst5|LessThan5~2_combout\ & !\inst5|Move_Bird~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_pos[9]~2_combout\,
	datac => \inst5|LessThan5~2_combout\,
	datad => \inst5|Move_Bird~5_combout\,
	combout => \inst5|bird_y_motion~1_combout\);

-- Location: FF_X16_Y25_N29
\inst5|bird_y_motion[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|vert_sync_out~clkctrl_outclk\,
	d => \inst5|bird_y_motion~1_combout\,
	ena => \inst5|Move_Bird~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|bird_y_motion\(0));

-- Location: LCCOMB_X16_Y25_N0
\inst5|Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add4~0_combout\ = (\inst5|bird_y_pos[0]~38_combout\ & (\inst5|bird_y_motion\(0) $ (VCC))) # (!\inst5|bird_y_pos[0]~38_combout\ & (\inst5|bird_y_motion\(0) & VCC))
-- \inst5|Add4~1\ = CARRY((\inst5|bird_y_pos[0]~38_combout\ & \inst5|bird_y_motion\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_pos[0]~38_combout\,
	datab => \inst5|bird_y_motion\(0),
	datad => VCC,
	combout => \inst5|Add4~0_combout\,
	cout => \inst5|Add4~1\);

-- Location: LCCOMB_X16_Y25_N2
\inst5|Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add4~2_combout\ = (\inst5|bird_y_motion\(1) & ((\inst5|bird_y_pos[1]~34_combout\ & (\inst5|Add4~1\ & VCC)) # (!\inst5|bird_y_pos[1]~34_combout\ & (!\inst5|Add4~1\)))) # (!\inst5|bird_y_motion\(1) & ((\inst5|bird_y_pos[1]~34_combout\ & 
-- (!\inst5|Add4~1\)) # (!\inst5|bird_y_pos[1]~34_combout\ & ((\inst5|Add4~1\) # (GND)))))
-- \inst5|Add4~3\ = CARRY((\inst5|bird_y_motion\(1) & (!\inst5|bird_y_pos[1]~34_combout\ & !\inst5|Add4~1\)) # (!\inst5|bird_y_motion\(1) & ((!\inst5|Add4~1\) # (!\inst5|bird_y_pos[1]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_motion\(1),
	datab => \inst5|bird_y_pos[1]~34_combout\,
	datad => VCC,
	cin => \inst5|Add4~1\,
	combout => \inst5|Add4~2_combout\,
	cout => \inst5|Add4~3\);

-- Location: LCCOMB_X20_Y25_N24
\inst5|bird_y_pos[1]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_y_pos[1]~35_combout\ = \inst5|Add4~2_combout\ $ (\inst5|bird_y_pos[1]~33_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Add4~2_combout\,
	datad => \inst5|bird_y_pos[1]~33_combout\,
	combout => \inst5|bird_y_pos[1]~35_combout\);

-- Location: FF_X20_Y25_N25
\inst5|bird_y_pos[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|vert_sync_out~clkctrl_outclk\,
	d => \inst5|bird_y_pos[1]~35_combout\,
	clrn => \inst5|Move_Bird~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|bird_y_pos[1]~_emulated_q\);

-- Location: LCCOMB_X20_Y25_N18
\inst5|bird_y_pos[1]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_y_pos[1]~34_combout\ = (\inst5|Move_Bird~0_combout\ & ((\inst5|bird_y_pos[1]~33_combout\ $ (\inst5|bird_y_pos[1]~_emulated_q\)))) # (!\inst5|Move_Bird~0_combout\ & (\inst5|bird_y_pos~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_pos~69_combout\,
	datab => \inst5|Move_Bird~0_combout\,
	datac => \inst5|bird_y_pos[1]~33_combout\,
	datad => \inst5|bird_y_pos[1]~_emulated_q\,
	combout => \inst5|bird_y_pos[1]~34_combout\);

-- Location: LCCOMB_X16_Y25_N4
\inst5|Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add4~4_combout\ = (\inst5|bird_y_pos[2]~30_combout\ & (\inst5|Add4~3\ $ (GND))) # (!\inst5|bird_y_pos[2]~30_combout\ & (!\inst5|Add4~3\ & VCC))
-- \inst5|Add4~5\ = CARRY((\inst5|bird_y_pos[2]~30_combout\ & !\inst5|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|bird_y_pos[2]~30_combout\,
	datad => VCC,
	cin => \inst5|Add4~3\,
	combout => \inst5|Add4~4_combout\,
	cout => \inst5|Add4~5\);

-- Location: LCCOMB_X20_Y25_N20
\inst5|bird_y_pos[2]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_y_pos[2]~31_combout\ = \inst5|bird_y_pos[2]~29_combout\ $ (\inst5|Add4~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|bird_y_pos[2]~29_combout\,
	datad => \inst5|Add4~4_combout\,
	combout => \inst5|bird_y_pos[2]~31_combout\);

-- Location: FF_X20_Y25_N21
\inst5|bird_y_pos[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|vert_sync_out~clkctrl_outclk\,
	d => \inst5|bird_y_pos[2]~31_combout\,
	clrn => \inst5|Move_Bird~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|bird_y_pos[2]~_emulated_q\);

-- Location: LCCOMB_X20_Y25_N2
\inst5|bird_y_pos[2]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_y_pos[2]~30_combout\ = (\inst5|Move_Bird~0_combout\ & ((\inst5|bird_y_pos[2]~_emulated_q\ $ (\inst5|bird_y_pos[2]~29_combout\)))) # (!\inst5|Move_Bird~0_combout\ & (\inst5|bird_y_pos~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_pos~68_combout\,
	datab => \inst5|bird_y_pos[2]~_emulated_q\,
	datac => \inst5|Move_Bird~0_combout\,
	datad => \inst5|bird_y_pos[2]~29_combout\,
	combout => \inst5|bird_y_pos[2]~30_combout\);

-- Location: LCCOMB_X16_Y25_N6
\inst5|Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add4~6_combout\ = (\inst5|bird_y_motion\(3) & ((\inst5|bird_y_pos[3]~26_combout\ & (\inst5|Add4~5\ & VCC)) # (!\inst5|bird_y_pos[3]~26_combout\ & (!\inst5|Add4~5\)))) # (!\inst5|bird_y_motion\(3) & ((\inst5|bird_y_pos[3]~26_combout\ & 
-- (!\inst5|Add4~5\)) # (!\inst5|bird_y_pos[3]~26_combout\ & ((\inst5|Add4~5\) # (GND)))))
-- \inst5|Add4~7\ = CARRY((\inst5|bird_y_motion\(3) & (!\inst5|bird_y_pos[3]~26_combout\ & !\inst5|Add4~5\)) # (!\inst5|bird_y_motion\(3) & ((!\inst5|Add4~5\) # (!\inst5|bird_y_pos[3]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_motion\(3),
	datab => \inst5|bird_y_pos[3]~26_combout\,
	datad => VCC,
	cin => \inst5|Add4~5\,
	combout => \inst5|Add4~6_combout\,
	cout => \inst5|Add4~7\);

-- Location: LCCOMB_X17_Y25_N28
\inst5|bird_y_pos~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_y_pos~66_combout\ = (\inst5|bird_y_pos[3]~26_combout\ & ((\sw2~input_o\) # (!\inst5|temp_bird_dead~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw2~input_o\,
	datac => \inst5|bird_y_pos[3]~26_combout\,
	datad => \inst5|temp_bird_dead~combout\,
	combout => \inst5|bird_y_pos~66_combout\);

-- Location: LCCOMB_X17_Y25_N20
\inst5|bird_y_pos[3]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_y_pos[3]~25_combout\ = (GLOBAL(\inst5|Move_Bird~0clkctrl_outclk\) & (\inst5|bird_y_pos[3]~25_combout\)) # (!GLOBAL(\inst5|Move_Bird~0clkctrl_outclk\) & ((\inst5|bird_y_pos~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|bird_y_pos[3]~25_combout\,
	datac => \inst5|Move_Bird~0clkctrl_outclk\,
	datad => \inst5|bird_y_pos~66_combout\,
	combout => \inst5|bird_y_pos[3]~25_combout\);

-- Location: LCCOMB_X17_Y25_N24
\inst5|bird_y_pos[3]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_y_pos[3]~27_combout\ = \inst5|Add4~6_combout\ $ (\inst5|bird_y_pos[3]~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Add4~6_combout\,
	datad => \inst5|bird_y_pos[3]~25_combout\,
	combout => \inst5|bird_y_pos[3]~27_combout\);

-- Location: FF_X17_Y25_N25
\inst5|bird_y_pos[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|vert_sync_out~clkctrl_outclk\,
	d => \inst5|bird_y_pos[3]~27_combout\,
	clrn => \inst5|Move_Bird~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|bird_y_pos[3]~_emulated_q\);

-- Location: LCCOMB_X17_Y25_N18
\inst5|bird_y_pos[3]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_y_pos[3]~26_combout\ = (\inst5|Move_Bird~0_combout\ & ((\inst5|bird_y_pos[3]~_emulated_q\ $ (\inst5|bird_y_pos[3]~25_combout\)))) # (!\inst5|Move_Bird~0_combout\ & (\inst5|bird_y_pos~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_pos~66_combout\,
	datab => \inst5|bird_y_pos[3]~_emulated_q\,
	datac => \inst5|Move_Bird~0_combout\,
	datad => \inst5|bird_y_pos[3]~25_combout\,
	combout => \inst5|bird_y_pos[3]~26_combout\);

-- Location: LCCOMB_X17_Y25_N4
\inst5|bird_y_pos[4]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_y_pos[4]~23_combout\ = \inst5|bird_y_pos[4]~21_combout\ $ (\inst5|Add4~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|bird_y_pos[4]~21_combout\,
	datad => \inst5|Add4~8_combout\,
	combout => \inst5|bird_y_pos[4]~23_combout\);

-- Location: FF_X17_Y25_N5
\inst5|bird_y_pos[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|vert_sync_out~clkctrl_outclk\,
	d => \inst5|bird_y_pos[4]~23_combout\,
	clrn => \inst5|Move_Bird~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|bird_y_pos[4]~_emulated_q\);

-- Location: LCCOMB_X17_Y25_N30
\inst5|bird_y_pos[4]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_y_pos[4]~22_combout\ = (\inst5|Move_Bird~0_combout\ & ((\inst5|bird_y_pos[4]~_emulated_q\ $ (\inst5|bird_y_pos[4]~21_combout\)))) # (!\inst5|Move_Bird~0_combout\ & (\inst5|bird_y_pos~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_pos~67_combout\,
	datab => \inst5|Move_Bird~0_combout\,
	datac => \inst5|bird_y_pos[4]~_emulated_q\,
	datad => \inst5|bird_y_pos[4]~21_combout\,
	combout => \inst5|bird_y_pos[4]~22_combout\);

-- Location: LCCOMB_X19_Y25_N10
\inst5|Move_Bird~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Move_Bird~3_combout\ = (\inst5|bird_y_pos[6]~14_combout\) # ((\inst5|bird_y_pos[4]~22_combout\) # ((\inst5|bird_y_pos[5]~18_combout\) # (\inst5|bird_y_pos[7]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_pos[6]~14_combout\,
	datab => \inst5|bird_y_pos[4]~22_combout\,
	datac => \inst5|bird_y_pos[5]~18_combout\,
	datad => \inst5|bird_y_pos[7]~10_combout\,
	combout => \inst5|Move_Bird~3_combout\);

-- Location: LCCOMB_X19_Y25_N16
\inst5|Move_Bird~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Move_Bird~4_combout\ = (\inst5|bird_y_pos[8]~6_combout\) # (\inst5|Move_Bird~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|bird_y_pos[8]~6_combout\,
	datad => \inst5|Move_Bird~3_combout\,
	combout => \inst5|Move_Bird~4_combout\);

-- Location: LCCOMB_X16_Y25_N20
\inst5|Move_Bird~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Move_Bird~5_combout\ = (!\inst5|bird_y_pos[9]~2_combout\ & (\inst2|left_button~q\ & ((\inst5|Move_Bird~2_combout\) # (\inst5|Move_Bird~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Move_Bird~2_combout\,
	datab => \inst5|bird_y_pos[9]~2_combout\,
	datac => \inst2|left_button~q\,
	datad => \inst5|Move_Bird~4_combout\,
	combout => \inst5|Move_Bird~5_combout\);

-- Location: FF_X16_Y25_N21
\inst5|bird_y_motion[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|vert_sync_out~clkctrl_outclk\,
	d => \inst5|Move_Bird~5_combout\,
	ena => \inst5|Move_Bird~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|bird_y_motion\(3));

-- Location: LCCOMB_X19_Y25_N14
\inst5|bird_y_pos~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_y_pos~64_combout\ = (\inst5|bird_y_pos[6]~14_combout\) # ((\inst5|temp_bird_dead~combout\ & !\sw2~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|temp_bird_dead~combout\,
	datac => \inst5|bird_y_pos[6]~14_combout\,
	datad => \sw2~input_o\,
	combout => \inst5|bird_y_pos~64_combout\);

-- Location: LCCOMB_X19_Y25_N22
\inst5|bird_y_pos[6]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_y_pos[6]~13_combout\ = (GLOBAL(\inst5|Move_Bird~0clkctrl_outclk\) & (\inst5|bird_y_pos[6]~13_combout\)) # (!GLOBAL(\inst5|Move_Bird~0clkctrl_outclk\) & ((\inst5|bird_y_pos~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|bird_y_pos[6]~13_combout\,
	datac => \inst5|bird_y_pos~64_combout\,
	datad => \inst5|Move_Bird~0clkctrl_outclk\,
	combout => \inst5|bird_y_pos[6]~13_combout\);

-- Location: LCCOMB_X16_Y25_N12
\inst5|Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add4~12_combout\ = ((\inst5|bird_y_motion\(3) $ (\inst5|bird_y_pos[6]~14_combout\ $ (!\inst5|Add4~11\)))) # (GND)
-- \inst5|Add4~13\ = CARRY((\inst5|bird_y_motion\(3) & ((\inst5|bird_y_pos[6]~14_combout\) # (!\inst5|Add4~11\))) # (!\inst5|bird_y_motion\(3) & (\inst5|bird_y_pos[6]~14_combout\ & !\inst5|Add4~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_motion\(3),
	datab => \inst5|bird_y_pos[6]~14_combout\,
	datad => VCC,
	cin => \inst5|Add4~11\,
	combout => \inst5|Add4~12_combout\,
	cout => \inst5|Add4~13\);

-- Location: LCCOMB_X19_Y25_N20
\inst5|bird_y_pos[6]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_y_pos[6]~15_combout\ = \inst5|bird_y_pos[6]~13_combout\ $ (\inst5|Add4~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|bird_y_pos[6]~13_combout\,
	datad => \inst5|Add4~12_combout\,
	combout => \inst5|bird_y_pos[6]~15_combout\);

-- Location: FF_X19_Y25_N21
\inst5|bird_y_pos[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|vert_sync_out~clkctrl_outclk\,
	d => \inst5|bird_y_pos[6]~15_combout\,
	clrn => \inst5|Move_Bird~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|bird_y_pos[6]~_emulated_q\);

-- Location: LCCOMB_X19_Y25_N30
\inst5|bird_y_pos[6]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_y_pos[6]~14_combout\ = (\inst5|Move_Bird~0_combout\ & ((\inst5|bird_y_pos[6]~_emulated_q\ $ (\inst5|bird_y_pos[6]~13_combout\)))) # (!\inst5|Move_Bird~0_combout\ & (\inst5|bird_y_pos~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_pos~64_combout\,
	datab => \inst5|bird_y_pos[6]~_emulated_q\,
	datac => \inst5|Move_Bird~0_combout\,
	datad => \inst5|bird_y_pos[6]~13_combout\,
	combout => \inst5|bird_y_pos[6]~14_combout\);

-- Location: LCCOMB_X16_Y25_N18
\inst5|Add4~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add4~18_combout\ = \inst5|bird_y_motion\(3) $ (\inst5|Add4~17\ $ (\inst5|bird_y_pos[9]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|bird_y_motion\(3),
	datad => \inst5|bird_y_pos[9]~2_combout\,
	cin => \inst5|Add4~17\,
	combout => \inst5|Add4~18_combout\);

-- Location: LCCOMB_X16_Y25_N24
\inst5|bird_y_pos[9]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_y_pos[9]~3_combout\ = \inst5|bird_y_pos[9]~1_combout\ $ (\inst5|Add4~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|bird_y_pos[9]~1_combout\,
	datad => \inst5|Add4~18_combout\,
	combout => \inst5|bird_y_pos[9]~3_combout\);

-- Location: FF_X16_Y25_N25
\inst5|bird_y_pos[9]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|vert_sync_out~clkctrl_outclk\,
	d => \inst5|bird_y_pos[9]~3_combout\,
	clrn => \inst5|Move_Bird~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|bird_y_pos[9]~_emulated_q\);

-- Location: LCCOMB_X16_Y25_N26
\inst5|bird_y_pos[9]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_y_pos[9]~2_combout\ = (\inst5|Move_Bird~0_combout\ & ((\inst5|bird_y_pos[9]~_emulated_q\ $ (\inst5|bird_y_pos[9]~1_combout\)))) # (!\inst5|Move_Bird~0_combout\ & (\inst5|bird_y_pos~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_pos~61_combout\,
	datab => \inst5|bird_y_pos[9]~_emulated_q\,
	datac => \inst5|bird_y_pos[9]~1_combout\,
	datad => \inst5|Move_Bird~0_combout\,
	combout => \inst5|bird_y_pos[9]~2_combout\);

-- Location: LCCOMB_X19_Y25_N2
\inst5|bird_dead~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_dead~0_combout\ = (\inst5|Move_Bird~0_combout\ & ((\inst5|bird_y_pos[9]~2_combout\) # (!\inst5|LessThan5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Move_Bird~0_combout\,
	datac => \inst5|bird_y_pos[9]~2_combout\,
	datad => \inst5|LessThan5~2_combout\,
	combout => \inst5|bird_dead~0_combout\);

-- Location: LCCOMB_X19_Y25_N8
\inst5|temp_bird_dead\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|temp_bird_dead~combout\ = (\inst5|bird_dead~1_combout\ & ((\inst5|bird_dead~0_combout\))) # (!\inst5|bird_dead~1_combout\ & (\inst5|temp_bird_dead~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|temp_bird_dead~combout\,
	datac => \inst5|bird_dead~1_combout\,
	datad => \inst5|bird_dead~0_combout\,
	combout => \inst5|temp_bird_dead~combout\);

-- Location: LCCOMB_X20_Y25_N30
\inst5|Move_Bird~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Move_Bird~1_combout\ = (!\sw2~input_o\ & \inst5|temp_bird_dead~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw2~input_o\,
	datad => \inst5|temp_bird_dead~combout\,
	combout => \inst5|Move_Bird~1_combout\);

-- Location: LCCOMB_X20_Y25_N6
\inst5|reset_score\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|reset_score~combout\ = (!\inst5|Move_Bird~0_combout\ & ((\inst5|Move_Bird~1_combout\) # (\inst5|reset_score~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Move_Bird~1_combout\,
	datac => \inst5|reset_score~combout\,
	datad => \inst5|Move_Bird~0_combout\,
	combout => \inst5|reset_score~combout\);

-- Location: LCCOMB_X16_Y19_N14
\inst9|BCD_ones|temp_QOut1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|BCD_ones|temp_QOut1~6_combout\ = (!\inst5|reset_score~combout\ & (!\inst9|BCD_ones|temp_QOut1\(0) & \inst9|BCD_ones|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|reset_score~combout\,
	datac => \inst9|BCD_ones|temp_QOut1\(0),
	datad => \inst9|BCD_ones|LessThan0~0_combout\,
	combout => \inst9|BCD_ones|temp_QOut1~6_combout\);

-- Location: LCCOMB_X17_Y18_N6
\inst6|Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add4~4_combout\ = (\inst6|pipe4_x_pos\(2) & ((GND) # (!\inst6|Add4~3\))) # (!\inst6|pipe4_x_pos\(2) & (\inst6|Add4~3\ $ (GND)))
-- \inst6|Add4~5\ = CARRY((\inst6|pipe4_x_pos\(2)) # (!\inst6|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe4_x_pos\(2),
	datad => VCC,
	cin => \inst6|Add4~3\,
	combout => \inst6|Add4~4_combout\,
	cout => \inst6|Add4~5\);

-- Location: LCCOMB_X16_Y18_N24
\inst6|Add4~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add4~27_combout\ = (\inst6|LessThan9~0_combout\ & \inst6|Add4~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan9~0_combout\,
	datad => \inst6|Add4~4_combout\,
	combout => \inst6|Add4~27_combout\);

-- Location: LCCOMB_X15_Y23_N10
\inst6|clk_cnt~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|clk_cnt~5_combout\ = (\inst6|Add0~22_combout\ & !\inst6|Equal0~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~22_combout\,
	datad => \inst6|Equal0~13_combout\,
	combout => \inst6|clk_cnt~5_combout\);

-- Location: FF_X15_Y23_N11
\inst6|pipe_move:clk_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|clk_cnt~5_combout\,
	ena => \inst5|Move_Bird~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[11]~q\);

-- Location: LCCOMB_X15_Y23_N24
\inst6|clk_cnt~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|clk_cnt~6_combout\ = (\inst6|Add0~18_combout\ & !\inst6|Equal0~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~18_combout\,
	datad => \inst6|Equal0~13_combout\,
	combout => \inst6|clk_cnt~6_combout\);

-- Location: FF_X15_Y23_N25
\inst6|pipe_move:clk_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|clk_cnt~6_combout\,
	ena => \inst5|Move_Bird~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[9]~q\);

-- Location: LCCOMB_X15_Y23_N22
\inst6|clk_cnt~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|clk_cnt~3_combout\ = (\inst6|Add0~14_combout\ & !\inst6|Equal0~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~14_combout\,
	datad => \inst6|Equal0~13_combout\,
	combout => \inst6|clk_cnt~3_combout\);

-- Location: FF_X15_Y23_N23
\inst6|pipe_move:clk_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|clk_cnt~3_combout\,
	ena => \inst5|Move_Bird~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[7]~q\);

-- Location: LCCOMB_X15_Y23_N0
\inst6|clk_cnt~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|clk_cnt~2_combout\ = (!\inst6|Add0~0_combout\ & !\inst6|Equal0~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~0_combout\,
	datad => \inst6|Equal0~13_combout\,
	combout => \inst6|clk_cnt~2_combout\);

-- Location: FF_X15_Y23_N1
\inst6|pipe_move:clk_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|clk_cnt~2_combout\,
	ena => \inst5|Move_Bird~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[0]~q\);

-- Location: LCCOMB_X14_Y24_N2
\inst6|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add0~2_combout\ = (\inst6|pipe_move:clk_cnt[1]~q\ & (!\inst6|Add0~1\)) # (!\inst6|pipe_move:clk_cnt[1]~q\ & ((\inst6|Add0~1\) # (GND)))
-- \inst6|Add0~3\ = CARRY((!\inst6|Add0~1\) # (!\inst6|pipe_move:clk_cnt[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe_move:clk_cnt[1]~q\,
	datad => VCC,
	cin => \inst6|Add0~1\,
	combout => \inst6|Add0~2_combout\,
	cout => \inst6|Add0~3\);

-- Location: FF_X14_Y24_N3
\inst6|pipe_move:clk_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add0~2_combout\,
	ena => \inst5|Move_Bird~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[1]~q\);

-- Location: LCCOMB_X14_Y24_N4
\inst6|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add0~4_combout\ = (\inst6|pipe_move:clk_cnt[2]~q\ & (\inst6|Add0~3\ $ (GND))) # (!\inst6|pipe_move:clk_cnt[2]~q\ & (!\inst6|Add0~3\ & VCC))
-- \inst6|Add0~5\ = CARRY((\inst6|pipe_move:clk_cnt[2]~q\ & !\inst6|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe_move:clk_cnt[2]~q\,
	datad => VCC,
	cin => \inst6|Add0~3\,
	combout => \inst6|Add0~4_combout\,
	cout => \inst6|Add0~5\);

-- Location: FF_X14_Y24_N5
\inst6|pipe_move:clk_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add0~4_combout\,
	ena => \inst5|Move_Bird~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[2]~q\);

-- Location: LCCOMB_X14_Y24_N6
\inst6|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add0~6_combout\ = (\inst6|pipe_move:clk_cnt[3]~q\ & (!\inst6|Add0~5\)) # (!\inst6|pipe_move:clk_cnt[3]~q\ & ((\inst6|Add0~5\) # (GND)))
-- \inst6|Add0~7\ = CARRY((!\inst6|Add0~5\) # (!\inst6|pipe_move:clk_cnt[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe_move:clk_cnt[3]~q\,
	datad => VCC,
	cin => \inst6|Add0~5\,
	combout => \inst6|Add0~6_combout\,
	cout => \inst6|Add0~7\);

-- Location: LCCOMB_X14_Y24_N8
\inst6|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add0~8_combout\ = (\inst6|pipe_move:clk_cnt[4]~q\ & (\inst6|Add0~7\ $ (GND))) # (!\inst6|pipe_move:clk_cnt[4]~q\ & (!\inst6|Add0~7\ & VCC))
-- \inst6|Add0~9\ = CARRY((\inst6|pipe_move:clk_cnt[4]~q\ & !\inst6|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe_move:clk_cnt[4]~q\,
	datad => VCC,
	cin => \inst6|Add0~7\,
	combout => \inst6|Add0~8_combout\,
	cout => \inst6|Add0~9\);

-- Location: FF_X14_Y24_N9
\inst6|pipe_move:clk_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add0~8_combout\,
	ena => \inst5|Move_Bird~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[4]~q\);

-- Location: LCCOMB_X14_Y24_N12
\inst6|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add0~12_combout\ = (\inst6|pipe_move:clk_cnt[6]~q\ & (\inst6|Add0~11\ $ (GND))) # (!\inst6|pipe_move:clk_cnt[6]~q\ & (!\inst6|Add0~11\ & VCC))
-- \inst6|Add0~13\ = CARRY((\inst6|pipe_move:clk_cnt[6]~q\ & !\inst6|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe_move:clk_cnt[6]~q\,
	datad => VCC,
	cin => \inst6|Add0~11\,
	combout => \inst6|Add0~12_combout\,
	cout => \inst6|Add0~13\);

-- Location: LCCOMB_X15_Y23_N8
\inst6|clk_cnt~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|clk_cnt~0_combout\ = (\inst6|Add0~12_combout\ & !\inst6|Equal0~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add0~12_combout\,
	datad => \inst6|Equal0~13_combout\,
	combout => \inst6|clk_cnt~0_combout\);

-- Location: FF_X15_Y23_N9
\inst6|pipe_move:clk_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|clk_cnt~0_combout\,
	ena => \inst5|Move_Bird~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[6]~q\);

-- Location: LCCOMB_X14_Y24_N16
\inst6|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add0~16_combout\ = (\inst6|pipe_move:clk_cnt[8]~q\ & (\inst6|Add0~15\ $ (GND))) # (!\inst6|pipe_move:clk_cnt[8]~q\ & (!\inst6|Add0~15\ & VCC))
-- \inst6|Add0~17\ = CARRY((\inst6|pipe_move:clk_cnt[8]~q\ & !\inst6|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe_move:clk_cnt[8]~q\,
	datad => VCC,
	cin => \inst6|Add0~15\,
	combout => \inst6|Add0~16_combout\,
	cout => \inst6|Add0~17\);

-- Location: LCCOMB_X14_Y24_N18
\inst6|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add0~18_combout\ = (\inst6|pipe_move:clk_cnt[9]~q\ & (!\inst6|Add0~17\)) # (!\inst6|pipe_move:clk_cnt[9]~q\ & ((\inst6|Add0~17\) # (GND)))
-- \inst6|Add0~19\ = CARRY((!\inst6|Add0~17\) # (!\inst6|pipe_move:clk_cnt[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe_move:clk_cnt[9]~q\,
	datad => VCC,
	cin => \inst6|Add0~17\,
	combout => \inst6|Add0~18_combout\,
	cout => \inst6|Add0~19\);

-- Location: LCCOMB_X14_Y24_N20
\inst6|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add0~20_combout\ = (\inst6|pipe_move:clk_cnt[10]~q\ & (\inst6|Add0~19\ $ (GND))) # (!\inst6|pipe_move:clk_cnt[10]~q\ & (!\inst6|Add0~19\ & VCC))
-- \inst6|Add0~21\ = CARRY((\inst6|pipe_move:clk_cnt[10]~q\ & !\inst6|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe_move:clk_cnt[10]~q\,
	datad => VCC,
	cin => \inst6|Add0~19\,
	combout => \inst6|Add0~20_combout\,
	cout => \inst6|Add0~21\);

-- Location: FF_X14_Y24_N21
\inst6|pipe_move:clk_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add0~20_combout\,
	ena => \inst5|Move_Bird~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[10]~q\);

-- Location: LCCOMB_X14_Y24_N24
\inst6|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add0~24_combout\ = (\inst6|pipe_move:clk_cnt[12]~q\ & (\inst6|Add0~23\ $ (GND))) # (!\inst6|pipe_move:clk_cnt[12]~q\ & (!\inst6|Add0~23\ & VCC))
-- \inst6|Add0~25\ = CARRY((\inst6|pipe_move:clk_cnt[12]~q\ & !\inst6|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe_move:clk_cnt[12]~q\,
	datad => VCC,
	cin => \inst6|Add0~23\,
	combout => \inst6|Add0~24_combout\,
	cout => \inst6|Add0~25\);

-- Location: LCCOMB_X14_Y24_N26
\inst6|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add0~26_combout\ = (\inst6|pipe_move:clk_cnt[13]~q\ & (!\inst6|Add0~25\)) # (!\inst6|pipe_move:clk_cnt[13]~q\ & ((\inst6|Add0~25\) # (GND)))
-- \inst6|Add0~27\ = CARRY((!\inst6|Add0~25\) # (!\inst6|pipe_move:clk_cnt[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe_move:clk_cnt[13]~q\,
	datad => VCC,
	cin => \inst6|Add0~25\,
	combout => \inst6|Add0~26_combout\,
	cout => \inst6|Add0~27\);

-- Location: LCCOMB_X15_Y23_N6
\inst6|clk_cnt~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|clk_cnt~7_combout\ = (\inst6|Add0~26_combout\ & !\inst6|Equal0~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add0~26_combout\,
	datad => \inst6|Equal0~13_combout\,
	combout => \inst6|clk_cnt~7_combout\);

-- Location: FF_X15_Y23_N7
\inst6|pipe_move:clk_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|clk_cnt~7_combout\,
	ena => \inst5|Move_Bird~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[13]~q\);

-- Location: LCCOMB_X14_Y24_N28
\inst6|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add0~28_combout\ = (\inst6|pipe_move:clk_cnt[14]~q\ & (\inst6|Add0~27\ $ (GND))) # (!\inst6|pipe_move:clk_cnt[14]~q\ & (!\inst6|Add0~27\ & VCC))
-- \inst6|Add0~29\ = CARRY((\inst6|pipe_move:clk_cnt[14]~q\ & !\inst6|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe_move:clk_cnt[14]~q\,
	datad => VCC,
	cin => \inst6|Add0~27\,
	combout => \inst6|Add0~28_combout\,
	cout => \inst6|Add0~29\);

-- Location: FF_X14_Y24_N29
\inst6|pipe_move:clk_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add0~28_combout\,
	ena => \inst5|Move_Bird~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[14]~q\);

-- Location: LCCOMB_X14_Y24_N30
\inst6|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add0~30_combout\ = (\inst6|pipe_move:clk_cnt[15]~q\ & (!\inst6|Add0~29\)) # (!\inst6|pipe_move:clk_cnt[15]~q\ & ((\inst6|Add0~29\) # (GND)))
-- \inst6|Add0~31\ = CARRY((!\inst6|Add0~29\) # (!\inst6|pipe_move:clk_cnt[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe_move:clk_cnt[15]~q\,
	datad => VCC,
	cin => \inst6|Add0~29\,
	combout => \inst6|Add0~30_combout\,
	cout => \inst6|Add0~31\);

-- Location: LCCOMB_X14_Y23_N0
\inst6|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add0~32_combout\ = (\inst6|pipe_move:clk_cnt[16]~q\ & (\inst6|Add0~31\ $ (GND))) # (!\inst6|pipe_move:clk_cnt[16]~q\ & (!\inst6|Add0~31\ & VCC))
-- \inst6|Add0~33\ = CARRY((\inst6|pipe_move:clk_cnt[16]~q\ & !\inst6|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe_move:clk_cnt[16]~q\,
	datad => VCC,
	cin => \inst6|Add0~31\,
	combout => \inst6|Add0~32_combout\,
	cout => \inst6|Add0~33\);

-- Location: LCCOMB_X15_Y20_N22
\inst6|clk_cnt~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|clk_cnt~9_combout\ = (\inst6|Add0~32_combout\ & !\inst6|Equal0~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add0~32_combout\,
	datad => \inst6|Equal0~13_combout\,
	combout => \inst6|clk_cnt~9_combout\);

-- Location: FF_X15_Y20_N23
\inst6|pipe_move:clk_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|clk_cnt~9_combout\,
	ena => \inst5|Move_Bird~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[16]~q\);

-- Location: LCCOMB_X14_Y23_N2
\inst6|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add0~34_combout\ = (\inst6|pipe_move:clk_cnt[17]~q\ & (!\inst6|Add0~33\)) # (!\inst6|pipe_move:clk_cnt[17]~q\ & ((\inst6|Add0~33\) # (GND)))
-- \inst6|Add0~35\ = CARRY((!\inst6|Add0~33\) # (!\inst6|pipe_move:clk_cnt[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe_move:clk_cnt[17]~q\,
	datad => VCC,
	cin => \inst6|Add0~33\,
	combout => \inst6|Add0~34_combout\,
	cout => \inst6|Add0~35\);

-- Location: LCCOMB_X15_Y20_N6
\inst6|clk_cnt~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|clk_cnt~11_combout\ = (\inst6|Add0~34_combout\ & !\inst6|Equal0~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add0~34_combout\,
	datad => \inst6|Equal0~13_combout\,
	combout => \inst6|clk_cnt~11_combout\);

-- Location: FF_X15_Y20_N7
\inst6|pipe_move:clk_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|clk_cnt~11_combout\,
	ena => \inst5|Move_Bird~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[17]~q\);

-- Location: LCCOMB_X14_Y23_N8
\inst6|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add0~40_combout\ = (\inst6|pipe_move:clk_cnt[20]~q\ & (\inst6|Add0~39\ $ (GND))) # (!\inst6|pipe_move:clk_cnt[20]~q\ & (!\inst6|Add0~39\ & VCC))
-- \inst6|Add0~41\ = CARRY((\inst6|pipe_move:clk_cnt[20]~q\ & !\inst6|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe_move:clk_cnt[20]~q\,
	datad => VCC,
	cin => \inst6|Add0~39\,
	combout => \inst6|Add0~40_combout\,
	cout => \inst6|Add0~41\);

-- Location: FF_X14_Y23_N9
\inst6|pipe_move:clk_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add0~40_combout\,
	ena => \inst5|Move_Bird~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[20]~q\);

-- Location: LCCOMB_X14_Y23_N10
\inst6|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add0~42_combout\ = (\inst6|pipe_move:clk_cnt[21]~q\ & (!\inst6|Add0~41\)) # (!\inst6|pipe_move:clk_cnt[21]~q\ & ((\inst6|Add0~41\) # (GND)))
-- \inst6|Add0~43\ = CARRY((!\inst6|Add0~41\) # (!\inst6|pipe_move:clk_cnt[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe_move:clk_cnt[21]~q\,
	datad => VCC,
	cin => \inst6|Add0~41\,
	combout => \inst6|Add0~42_combout\,
	cout => \inst6|Add0~43\);

-- Location: LCCOMB_X14_Y23_N12
\inst6|Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add0~44_combout\ = (\inst6|pipe_move:clk_cnt[22]~q\ & (\inst6|Add0~43\ $ (GND))) # (!\inst6|pipe_move:clk_cnt[22]~q\ & (!\inst6|Add0~43\ & VCC))
-- \inst6|Add0~45\ = CARRY((\inst6|pipe_move:clk_cnt[22]~q\ & !\inst6|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe_move:clk_cnt[22]~q\,
	datad => VCC,
	cin => \inst6|Add0~43\,
	combout => \inst6|Add0~44_combout\,
	cout => \inst6|Add0~45\);

-- Location: FF_X14_Y23_N17
\inst6|pipe_move:clk_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add0~48_combout\,
	ena => \inst5|Move_Bird~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[24]~q\);

-- Location: LCCOMB_X14_Y23_N14
\inst6|Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add0~46_combout\ = (\inst6|pipe_move:clk_cnt[23]~q\ & (!\inst6|Add0~45\)) # (!\inst6|pipe_move:clk_cnt[23]~q\ & ((\inst6|Add0~45\) # (GND)))
-- \inst6|Add0~47\ = CARRY((!\inst6|Add0~45\) # (!\inst6|pipe_move:clk_cnt[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe_move:clk_cnt[23]~q\,
	datad => VCC,
	cin => \inst6|Add0~45\,
	combout => \inst6|Add0~46_combout\,
	cout => \inst6|Add0~47\);

-- Location: FF_X14_Y23_N15
\inst6|pipe_move:clk_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add0~46_combout\,
	ena => \inst5|Move_Bird~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[23]~q\);

-- Location: LCCOMB_X20_Y25_N28
\inst6|Equal0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Equal0~10_combout\ = (!\inst6|Add0~46_combout\ & (!\inst6|Add0~42_combout\ & (!\inst6|Add0~44_combout\ & !\inst6|Add0~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~46_combout\,
	datab => \inst6|Add0~42_combout\,
	datac => \inst6|Add0~44_combout\,
	datad => \inst6|Add0~48_combout\,
	combout => \inst6|Equal0~10_combout\);

-- Location: LCCOMB_X14_Y18_N8
\inst9|BCD_tens|temp_QOut1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|BCD_tens|temp_QOut1~4_combout\ = (!\inst5|reset_score~combout\ & (!\inst9|BCD_tens|temp_QOut1\(0) & \inst9|BCD_tens|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|reset_score~combout\,
	datac => \inst9|BCD_tens|temp_QOut1\(0),
	datad => \inst9|BCD_tens|LessThan0~0_combout\,
	combout => \inst9|BCD_tens|temp_QOut1~4_combout\);

-- Location: LCCOMB_X16_Y19_N8
\inst9|BCD_ones|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|BCD_ones|Add0~0_combout\ = \inst9|BCD_ones|temp_QOut1\(2) $ (((\inst9|BCD_ones|temp_QOut1\(0) & \inst9|BCD_ones|temp_QOut1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|BCD_ones|temp_QOut1\(2),
	datac => \inst9|BCD_ones|temp_QOut1\(0),
	datad => \inst9|BCD_ones|temp_QOut1\(1),
	combout => \inst9|BCD_ones|Add0~0_combout\);

-- Location: LCCOMB_X16_Y19_N4
\inst9|BCD_ones|temp_QOut1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|BCD_ones|temp_QOut1~4_combout\ = (!\inst5|reset_score~combout\ & (\inst9|BCD_ones|Add0~0_combout\ & \inst9|BCD_ones|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|reset_score~combout\,
	datac => \inst9|BCD_ones|Add0~0_combout\,
	datad => \inst9|BCD_ones|LessThan0~0_combout\,
	combout => \inst9|BCD_ones|temp_QOut1~4_combout\);

-- Location: FF_X16_Y19_N5
\inst9|BCD_ones|temp_QOut1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|Clk1hz_temp~clkctrl_outclk\,
	d => \inst9|BCD_ones|temp_QOut1~4_combout\,
	ena => \inst9|BCD_ones|temp_QOut1[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|BCD_ones|temp_QOut1\(2));

-- Location: LCCOMB_X15_Y19_N0
\inst9|BCD_ones|temp_QOut1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|BCD_ones|temp_QOut1~3_combout\ = (\inst9|BCD_ones|temp_QOut1\(0) & (!\inst9|BCD_ones|temp_QOut1\(3) & (\inst9|BCD_ones|temp_QOut1\(1) & \inst9|BCD_ones|temp_QOut1\(2)))) # (!\inst9|BCD_ones|temp_QOut1\(0) & (\inst9|BCD_ones|temp_QOut1\(3) & 
-- (!\inst9|BCD_ones|temp_QOut1\(1) & !\inst9|BCD_ones|temp_QOut1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|BCD_ones|temp_QOut1\(0),
	datab => \inst9|BCD_ones|temp_QOut1\(3),
	datac => \inst9|BCD_ones|temp_QOut1\(1),
	datad => \inst9|BCD_ones|temp_QOut1\(2),
	combout => \inst9|BCD_ones|temp_QOut1~3_combout\);

-- Location: LCCOMB_X15_Y19_N26
\inst9|BCD_ones|Q_Out[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|BCD_ones|Q_Out[0]~0_combout\ = (!\inst5|reset_score~combout\ & \inst6|score_incr~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|reset_score~combout\,
	datad => \inst6|score_incr~q\,
	combout => \inst9|BCD_ones|Q_Out[0]~0_combout\);

-- Location: FF_X15_Y19_N1
\inst9|BCD_ones|Q_Out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|Clk1hz_temp~q\,
	d => \inst9|BCD_ones|temp_QOut1~3_combout\,
	ena => \inst9|BCD_ones|Q_Out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|BCD_ones|Q_Out\(3));

-- Location: LCCOMB_X15_Y19_N18
\inst9|BCD_ones|temp_QOut1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|BCD_ones|temp_QOut1~1_combout\ = (!\inst9|BCD_ones|temp_QOut1\(3) & (\inst9|BCD_ones|temp_QOut1\(1) $ (\inst9|BCD_ones|temp_QOut1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|BCD_ones|temp_QOut1\(3),
	datac => \inst9|BCD_ones|temp_QOut1\(1),
	datad => \inst9|BCD_ones|temp_QOut1\(0),
	combout => \inst9|BCD_ones|temp_QOut1~1_combout\);

-- Location: FF_X15_Y19_N19
\inst9|BCD_ones|Q_Out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|Clk1hz_temp~q\,
	d => \inst9|BCD_ones|temp_QOut1~1_combout\,
	ena => \inst9|BCD_ones|Q_Out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|BCD_ones|Q_Out\(1));

-- Location: LCCOMB_X16_Y19_N12
\inst9|BCD_ones|temp_QOut1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|BCD_ones|temp_QOut1~0_combout\ = (!\inst9|BCD_ones|temp_QOut1\(3) & (\inst9|BCD_ones|temp_QOut1\(2) $ (((\inst9|BCD_ones|temp_QOut1\(0) & \inst9|BCD_ones|temp_QOut1\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|BCD_ones|temp_QOut1\(3),
	datab => \inst9|BCD_ones|temp_QOut1\(0),
	datac => \inst9|BCD_ones|temp_QOut1\(2),
	datad => \inst9|BCD_ones|temp_QOut1\(1),
	combout => \inst9|BCD_ones|temp_QOut1~0_combout\);

-- Location: FF_X15_Y19_N13
\inst9|BCD_ones|Q_Out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|Clk1hz_temp~q\,
	asdata => \inst9|BCD_ones|temp_QOut1~0_combout\,
	sload => VCC,
	ena => \inst9|BCD_ones|Q_Out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|BCD_ones|Q_Out\(2));

-- Location: LCCOMB_X15_Y19_N4
\inst6|pipe_move~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe_move~0_combout\ = (!\inst9|BCD_ones|Q_Out\(1) & (\inst9|BCD_ones|Q_Out\(0) & !\inst9|BCD_ones|Q_Out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|BCD_ones|Q_Out\(1),
	datac => \inst9|BCD_ones|Q_Out\(0),
	datad => \inst9|BCD_ones|Q_Out\(2),
	combout => \inst6|pipe_move~0_combout\);

-- Location: LCCOMB_X14_Y18_N12
\inst9|BCD_tens|temp_QOut1[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|BCD_tens|temp_QOut1[0]~5_combout\ = (\inst5|reset_score~combout\) # ((\inst6|score_incr~q\ & (\inst9|BCD_ones|Q_Out\(3) & \inst6|pipe_move~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|score_incr~q\,
	datab => \inst9|BCD_ones|Q_Out\(3),
	datac => \inst5|reset_score~combout\,
	datad => \inst6|pipe_move~0_combout\,
	combout => \inst9|BCD_tens|temp_QOut1[0]~5_combout\);

-- Location: FF_X14_Y18_N9
\inst9|BCD_tens|temp_QOut1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|Clk1hz_temp~clkctrl_outclk\,
	d => \inst9|BCD_tens|temp_QOut1~4_combout\,
	ena => \inst9|BCD_tens|temp_QOut1[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|BCD_tens|temp_QOut1\(0));

-- Location: LCCOMB_X14_Y18_N24
\inst9|BCD_tens|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|BCD_tens|LessThan0~0_combout\ = ((!\inst9|BCD_tens|temp_QOut1\(1) & (!\inst9|BCD_tens|temp_QOut1\(2) & !\inst9|BCD_tens|temp_QOut1\(0)))) # (!\inst9|BCD_tens|temp_QOut1\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|BCD_tens|temp_QOut1\(3),
	datab => \inst9|BCD_tens|temp_QOut1\(1),
	datac => \inst9|BCD_tens|temp_QOut1\(2),
	datad => \inst9|BCD_tens|temp_QOut1\(0),
	combout => \inst9|BCD_tens|LessThan0~0_combout\);

-- Location: LCCOMB_X14_Y18_N2
\inst9|BCD_tens|temp_QOut1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|BCD_tens|temp_QOut1~7_combout\ = (!\inst5|reset_score~combout\ & (\inst9|BCD_tens|LessThan0~0_combout\ & (\inst9|BCD_tens|temp_QOut1\(0) $ (\inst9|BCD_tens|temp_QOut1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|BCD_tens|temp_QOut1\(0),
	datab => \inst5|reset_score~combout\,
	datac => \inst9|BCD_tens|temp_QOut1\(1),
	datad => \inst9|BCD_tens|LessThan0~0_combout\,
	combout => \inst9|BCD_tens|temp_QOut1~7_combout\);

-- Location: FF_X14_Y18_N3
\inst9|BCD_tens|temp_QOut1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|Clk1hz_temp~clkctrl_outclk\,
	d => \inst9|BCD_tens|temp_QOut1~7_combout\,
	ena => \inst9|BCD_tens|temp_QOut1[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|BCD_tens|temp_QOut1\(1));

-- Location: LCCOMB_X14_Y18_N22
\inst9|BCD_tens|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|BCD_tens|Add0~1_combout\ = \inst9|BCD_tens|temp_QOut1\(2) $ (((\inst9|BCD_tens|temp_QOut1\(1) & \inst9|BCD_tens|temp_QOut1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|BCD_tens|temp_QOut1\(1),
	datac => \inst9|BCD_tens|temp_QOut1\(2),
	datad => \inst9|BCD_tens|temp_QOut1\(0),
	combout => \inst9|BCD_tens|Add0~1_combout\);

-- Location: LCCOMB_X14_Y18_N26
\inst9|BCD_tens|temp_QOut1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|BCD_tens|temp_QOut1~8_combout\ = (!\inst5|reset_score~combout\ & (\inst9|BCD_tens|Add0~1_combout\ & \inst9|BCD_tens|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|reset_score~combout\,
	datac => \inst9|BCD_tens|Add0~1_combout\,
	datad => \inst9|BCD_tens|LessThan0~0_combout\,
	combout => \inst9|BCD_tens|temp_QOut1~8_combout\);

-- Location: FF_X14_Y18_N27
\inst9|BCD_tens|temp_QOut1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|Clk1hz_temp~clkctrl_outclk\,
	d => \inst9|BCD_tens|temp_QOut1~8_combout\,
	ena => \inst9|BCD_tens|temp_QOut1[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|BCD_tens|temp_QOut1\(2));

-- Location: LCCOMB_X14_Y18_N28
\inst9|BCD_tens|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|BCD_tens|Add0~0_combout\ = \inst9|BCD_tens|temp_QOut1\(3) $ (((\inst9|BCD_tens|temp_QOut1\(1) & (\inst9|BCD_tens|temp_QOut1\(2) & \inst9|BCD_tens|temp_QOut1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|BCD_tens|temp_QOut1\(3),
	datab => \inst9|BCD_tens|temp_QOut1\(1),
	datac => \inst9|BCD_tens|temp_QOut1\(2),
	datad => \inst9|BCD_tens|temp_QOut1\(0),
	combout => \inst9|BCD_tens|Add0~0_combout\);

-- Location: LCCOMB_X14_Y18_N10
\inst9|BCD_tens|temp_QOut1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|BCD_tens|temp_QOut1~6_combout\ = (!\inst5|reset_score~combout\ & (\inst9|BCD_tens|Add0~0_combout\ & \inst9|BCD_tens|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|reset_score~combout\,
	datac => \inst9|BCD_tens|Add0~0_combout\,
	datad => \inst9|BCD_tens|LessThan0~0_combout\,
	combout => \inst9|BCD_tens|temp_QOut1~6_combout\);

-- Location: FF_X14_Y18_N11
\inst9|BCD_tens|temp_QOut1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|Clk1hz_temp~clkctrl_outclk\,
	d => \inst9|BCD_tens|temp_QOut1~6_combout\,
	ena => \inst9|BCD_tens|temp_QOut1[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|BCD_tens|temp_QOut1\(3));

-- Location: LCCOMB_X14_Y18_N16
\inst9|BCD_tens|temp_QOut1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|BCD_tens|temp_QOut1~1_combout\ = (\inst9|BCD_tens|temp_QOut1\(0) & (\inst9|BCD_tens|temp_QOut1\(2) & (!\inst9|BCD_tens|temp_QOut1\(3) & \inst9|BCD_tens|temp_QOut1\(1)))) # (!\inst9|BCD_tens|temp_QOut1\(0) & (!\inst9|BCD_tens|temp_QOut1\(2) & 
-- (\inst9|BCD_tens|temp_QOut1\(3) & !\inst9|BCD_tens|temp_QOut1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|BCD_tens|temp_QOut1\(0),
	datab => \inst9|BCD_tens|temp_QOut1\(2),
	datac => \inst9|BCD_tens|temp_QOut1\(3),
	datad => \inst9|BCD_tens|temp_QOut1\(1),
	combout => \inst9|BCD_tens|temp_QOut1~1_combout\);

-- Location: LCCOMB_X15_Y19_N30
\inst9|BCD_tens|Q_Out[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|BCD_tens|Q_Out[0]~0_combout\ = (!\inst5|reset_score~combout\ & (\inst6|pipe_move~0_combout\ & (\inst6|score_incr~q\ & \inst9|BCD_ones|Q_Out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|reset_score~combout\,
	datab => \inst6|pipe_move~0_combout\,
	datac => \inst6|score_incr~q\,
	datad => \inst9|BCD_ones|Q_Out\(3),
	combout => \inst9|BCD_tens|Q_Out[0]~0_combout\);

-- Location: FF_X14_Y18_N17
\inst9|BCD_tens|Q_Out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|Clk1hz_temp~q\,
	d => \inst9|BCD_tens|temp_QOut1~1_combout\,
	ena => \inst9|BCD_tens|Q_Out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|BCD_tens|Q_Out\(3));

-- Location: LCCOMB_X14_Y18_N20
\inst9|BCD_tens|temp_QOut1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|BCD_tens|temp_QOut1~3_combout\ = (!\inst9|BCD_tens|temp_QOut1\(3) & (\inst9|BCD_tens|temp_QOut1\(0) $ (\inst9|BCD_tens|temp_QOut1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|BCD_tens|temp_QOut1\(0),
	datac => \inst9|BCD_tens|temp_QOut1\(3),
	datad => \inst9|BCD_tens|temp_QOut1\(1),
	combout => \inst9|BCD_tens|temp_QOut1~3_combout\);

-- Location: FF_X14_Y18_N21
\inst9|BCD_tens|Q_Out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|Clk1hz_temp~q\,
	d => \inst9|BCD_tens|temp_QOut1~3_combout\,
	ena => \inst9|BCD_tens|Q_Out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|BCD_tens|Q_Out\(1));

-- Location: LCCOMB_X15_Y20_N0
\inst6|pipe_move~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe_move~2_combout\ = (\inst9|BCD_tens|Q_Out\(2) & (!\inst9|BCD_tens|Q_Out\(3) & (!\inst9|BCD_tens|Q_Out\(1) & !\inst9|BCD_ones|Q_Out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|BCD_tens|Q_Out\(2),
	datab => \inst9|BCD_tens|Q_Out\(3),
	datac => \inst9|BCD_tens|Q_Out\(1),
	datad => \inst9|BCD_ones|Q_Out\(3),
	combout => \inst6|pipe_move~2_combout\);

-- Location: LCCOMB_X15_Y20_N18
\inst6|pipe_move~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe_move~3_combout\ = (\inst9|BCD_tens|Q_Out\(0) & (\inst6|pipe_move~2_combout\ & \inst6|pipe_move~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|BCD_tens|Q_Out\(0),
	datab => \inst6|pipe_move~2_combout\,
	datad => \inst6|pipe_move~0_combout\,
	combout => \inst6|pipe_move~3_combout\);

-- Location: LCCOMB_X14_Y19_N0
\inst9|BCD_tens|temp_QOut1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|BCD_tens|temp_QOut1~0_combout\ = (!\inst9|BCD_tens|temp_QOut1\(0) & (((!\inst9|BCD_tens|temp_QOut1\(2) & !\inst9|BCD_tens|temp_QOut1\(1))) # (!\inst9|BCD_tens|temp_QOut1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|BCD_tens|temp_QOut1\(2),
	datab => \inst9|BCD_tens|temp_QOut1\(0),
	datac => \inst9|BCD_tens|temp_QOut1\(1),
	datad => \inst9|BCD_tens|temp_QOut1\(3),
	combout => \inst9|BCD_tens|temp_QOut1~0_combout\);

-- Location: FF_X14_Y19_N1
\inst9|BCD_tens|Q_Out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|Clk1hz_temp~q\,
	d => \inst9|BCD_tens|temp_QOut1~0_combout\,
	ena => \inst9|BCD_tens|Q_Out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|BCD_tens|Q_Out\(0));

-- Location: LCCOMB_X14_Y18_N4
\inst9|BCD_tens|temp_QOut1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|BCD_tens|temp_QOut1~2_combout\ = (!\inst9|BCD_tens|temp_QOut1\(3) & (\inst9|BCD_tens|temp_QOut1\(2) $ (((\inst9|BCD_tens|temp_QOut1\(0) & \inst9|BCD_tens|temp_QOut1\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|BCD_tens|temp_QOut1\(0),
	datab => \inst9|BCD_tens|temp_QOut1\(2),
	datac => \inst9|BCD_tens|temp_QOut1\(3),
	datad => \inst9|BCD_tens|temp_QOut1\(1),
	combout => \inst9|BCD_tens|temp_QOut1~2_combout\);

-- Location: FF_X14_Y18_N5
\inst9|BCD_tens|Q_Out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|Clk1hz_temp~q\,
	d => \inst9|BCD_tens|temp_QOut1~2_combout\,
	ena => \inst9|BCD_tens|Q_Out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|BCD_tens|Q_Out\(2));

-- Location: LCCOMB_X15_Y20_N24
\inst6|pipe_speed[30]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe_speed[30]~0_combout\ = (\inst6|pipe_move~3_combout\) # ((\inst6|pipe_move~5_combout\ & (\inst9|BCD_tens|Q_Out\(0) $ (!\inst9|BCD_tens|Q_Out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe_move~5_combout\,
	datab => \inst6|pipe_move~3_combout\,
	datac => \inst9|BCD_tens|Q_Out\(0),
	datad => \inst9|BCD_tens|Q_Out\(2),
	combout => \inst6|pipe_speed[30]~0_combout\);

-- Location: LCCOMB_X15_Y20_N8
\inst6|pipe_speed[30]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe_speed[30]~1_combout\ = (\sw1~input_o\ & (\inst6|pipe_speed[30]~0_combout\ & \inst5|Move_Bird~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw1~input_o\,
	datab => \inst6|pipe_speed[30]~0_combout\,
	datad => \inst5|Move_Bird~0_combout\,
	combout => \inst6|pipe_speed[30]~1_combout\);

-- Location: CLKCTRL_G13
\inst6|pipe_speed[30]~1clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst6|pipe_speed[30]~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst6|pipe_speed[30]~1clkctrl_outclk\);

-- Location: LCCOMB_X16_Y20_N20
\inst6|pipe_speed[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe_speed\(7) = (GLOBAL(\inst6|pipe_speed[30]~1clkctrl_outclk\) & (!\inst6|pipe_move~8_combout\)) # (!GLOBAL(\inst6|pipe_speed[30]~1clkctrl_outclk\) & ((\inst6|pipe_speed\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe_move~8_combout\,
	datab => \inst6|pipe_speed\(7),
	datad => \inst6|pipe_speed[30]~1clkctrl_outclk\,
	combout => \inst6|pipe_speed\(7));

-- Location: LCCOMB_X15_Y21_N28
\inst6|pipe_move~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe_move~7_combout\ = (!\inst9|BCD_tens|Q_Out\(0) & \inst9|BCD_tens|Q_Out\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|BCD_tens|Q_Out\(0),
	datad => \inst9|BCD_tens|Q_Out\(1),
	combout => \inst6|pipe_move~7_combout\);

-- Location: LCCOMB_X15_Y20_N20
\inst6|pipe_move~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe_move~6_combout\ = (!\inst9|BCD_ones|Q_Out\(0) & (!\inst9|BCD_tens|Q_Out\(3) & (\inst9|BCD_ones|Q_Out\(1) & !\inst9|BCD_ones|Q_Out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|BCD_ones|Q_Out\(0),
	datab => \inst9|BCD_tens|Q_Out\(3),
	datac => \inst9|BCD_ones|Q_Out\(1),
	datad => \inst9|BCD_ones|Q_Out\(3),
	combout => \inst6|pipe_move~6_combout\);

-- Location: LCCOMB_X15_Y21_N6
\inst6|pipe_move~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe_move~8_combout\ = (!\inst9|BCD_tens|Q_Out\(2) & (\inst6|pipe_move~7_combout\ & (\inst6|pipe_move~6_combout\ & \inst9|BCD_ones|Q_Out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|BCD_tens|Q_Out\(2),
	datab => \inst6|pipe_move~7_combout\,
	datac => \inst6|pipe_move~6_combout\,
	datad => \inst9|BCD_ones|Q_Out\(2),
	combout => \inst6|pipe_move~8_combout\);

-- Location: LCCOMB_X16_Y20_N12
\inst6|pipe_speed[13]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe_speed\(13) = (GLOBAL(\inst6|pipe_speed[30]~1clkctrl_outclk\) & ((\inst6|pipe_move~8_combout\))) # (!GLOBAL(\inst6|pipe_speed[30]~1clkctrl_outclk\) & (\inst6|pipe_speed\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe_speed\(13),
	datab => \inst6|pipe_move~8_combout\,
	datad => \inst6|pipe_speed[30]~1clkctrl_outclk\,
	combout => \inst6|pipe_speed\(13));

-- Location: LCCOMB_X16_Y20_N28
\inst6|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Equal0~3_combout\ = (\inst6|Add0~26_combout\ & (\inst6|pipe_speed\(13) & (\inst6|pipe_speed\(7) $ (!\inst6|Add0~24_combout\)))) # (!\inst6|Add0~26_combout\ & (!\inst6|pipe_speed\(13) & (\inst6|pipe_speed\(7) $ (!\inst6|Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~26_combout\,
	datab => \inst6|pipe_speed\(7),
	datac => \inst6|Add0~24_combout\,
	datad => \inst6|pipe_speed\(13),
	combout => \inst6|Equal0~3_combout\);

-- Location: LCCOMB_X16_Y20_N22
\inst6|pipe_speed[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe_speed\(5) = (GLOBAL(\inst6|pipe_speed[30]~1clkctrl_outclk\) & ((!\inst6|pipe_move~3_combout\))) # (!GLOBAL(\inst6|pipe_speed[30]~1clkctrl_outclk\) & (\inst6|pipe_speed\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe_speed\(5),
	datab => \inst6|pipe_move~3_combout\,
	datad => \inst6|pipe_speed[30]~1clkctrl_outclk\,
	combout => \inst6|pipe_speed\(5));

-- Location: LCCOMB_X16_Y20_N4
\inst6|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Equal0~1_combout\ = (\inst6|Add0~14_combout\ & (\inst6|pipe_speed\(7) & (\inst6|Add0~16_combout\ $ (!\inst6|pipe_speed\(5))))) # (!\inst6|Add0~14_combout\ & (!\inst6|pipe_speed\(7) & (\inst6|Add0~16_combout\ $ (!\inst6|pipe_speed\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~14_combout\,
	datab => \inst6|Add0~16_combout\,
	datac => \inst6|pipe_speed\(5),
	datad => \inst6|pipe_speed\(7),
	combout => \inst6|Equal0~1_combout\);

-- Location: LCCOMB_X16_Y20_N26
\inst6|pipe_speed[11]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe_speed\(11) = (GLOBAL(\inst6|pipe_speed[30]~1clkctrl_outclk\) & ((\inst6|pipe_move~3_combout\))) # (!GLOBAL(\inst6|pipe_speed[30]~1clkctrl_outclk\) & (\inst6|pipe_speed\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe_speed\(11),
	datab => \inst6|pipe_move~3_combout\,
	datad => \inst6|pipe_speed[30]~1clkctrl_outclk\,
	combout => \inst6|pipe_speed\(11));

-- Location: LCCOMB_X16_Y20_N10
\inst6|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Equal0~2_combout\ = (\inst6|Add0~22_combout\ & (\inst6|pipe_speed\(11) & (\inst6|Add0~18_combout\ $ (!\inst6|pipe_speed\(7))))) # (!\inst6|Add0~22_combout\ & (!\inst6|pipe_speed\(11) & (\inst6|Add0~18_combout\ $ (!\inst6|pipe_speed\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~22_combout\,
	datab => \inst6|Add0~18_combout\,
	datac => \inst6|pipe_speed\(11),
	datad => \inst6|pipe_speed\(7),
	combout => \inst6|Equal0~2_combout\);

-- Location: LCCOMB_X16_Y20_N14
\inst6|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Equal0~4_combout\ = (\inst6|Equal0~0_combout\ & (\inst6|Equal0~3_combout\ & (\inst6|Equal0~1_combout\ & \inst6|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Equal0~0_combout\,
	datab => \inst6|Equal0~3_combout\,
	datac => \inst6|Equal0~1_combout\,
	datad => \inst6|Equal0~2_combout\,
	combout => \inst6|Equal0~4_combout\);

-- Location: LCCOMB_X14_Y25_N28
\inst6|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Equal0~7_combout\ = (!\inst6|Add0~8_combout\ & (!\inst6|Add0~6_combout\ & (!\inst6|Add0~4_combout\ & !\inst6|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~8_combout\,
	datab => \inst6|Add0~6_combout\,
	datac => \inst6|Add0~4_combout\,
	datad => \inst6|Add0~20_combout\,
	combout => \inst6|Equal0~7_combout\);

-- Location: LCCOMB_X16_Y20_N8
\inst6|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Equal0~5_combout\ = (\inst6|Add0~32_combout\ & (\inst6|pipe_speed\(13) & (\inst6|Add0~30_combout\ $ (!\inst6|pipe_speed\(5))))) # (!\inst6|Add0~32_combout\ & (!\inst6|pipe_speed\(13) & (\inst6|Add0~30_combout\ $ (!\inst6|pipe_speed\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~32_combout\,
	datab => \inst6|Add0~30_combout\,
	datac => \inst6|pipe_speed\(5),
	datad => \inst6|pipe_speed\(13),
	combout => \inst6|Equal0~5_combout\);

-- Location: LCCOMB_X15_Y20_N12
\inst6|pipe_move~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe_move~5_combout\ = (\inst6|pipe_move~4_combout\ & (!\inst9|BCD_ones|Q_Out\(3) & (!\inst9|BCD_ones|Q_Out\(0) & \inst9|BCD_ones|Q_Out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe_move~4_combout\,
	datab => \inst9|BCD_ones|Q_Out\(3),
	datac => \inst9|BCD_ones|Q_Out\(0),
	datad => \inst9|BCD_ones|Q_Out\(2),
	combout => \inst6|pipe_move~5_combout\);

-- Location: LCCOMB_X15_Y20_N26
\inst6|pipe_speed[17]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe_speed[17]~2_combout\ = (!\inst6|pipe_move~3_combout\ & ((\inst9|BCD_tens|Q_Out\(2)) # ((\inst9|BCD_tens|Q_Out\(0)) # (!\inst6|pipe_move~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|BCD_tens|Q_Out\(2),
	datab => \inst6|pipe_move~3_combout\,
	datac => \inst9|BCD_tens|Q_Out\(0),
	datad => \inst6|pipe_move~5_combout\,
	combout => \inst6|pipe_speed[17]~2_combout\);

-- Location: LCCOMB_X15_Y20_N16
\inst6|pipe_speed[17]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe_speed\(17) = (GLOBAL(\inst6|pipe_speed[30]~1clkctrl_outclk\) & ((!\inst6|pipe_speed[17]~2_combout\))) # (!GLOBAL(\inst6|pipe_speed[30]~1clkctrl_outclk\) & (\inst6|pipe_speed\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe_speed\(17),
	datab => \inst6|pipe_speed[17]~2_combout\,
	datad => \inst6|pipe_speed[30]~1clkctrl_outclk\,
	combout => \inst6|pipe_speed\(17));

-- Location: LCCOMB_X15_Y20_N14
\inst6|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Equal0~6_combout\ = (!\inst6|Add0~0_combout\ & (!\inst6|Add0~2_combout\ & (\inst6|Add0~34_combout\ $ (!\inst6|pipe_speed\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~0_combout\,
	datab => \inst6|Add0~34_combout\,
	datac => \inst6|Add0~2_combout\,
	datad => \inst6|pipe_speed\(17),
	combout => \inst6|Equal0~6_combout\);

-- Location: LCCOMB_X16_Y20_N18
\inst6|Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Equal0~9_combout\ = (\inst6|Equal0~8_combout\ & (\inst6|Equal0~7_combout\ & (\inst6|Equal0~5_combout\ & \inst6|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Equal0~8_combout\,
	datab => \inst6|Equal0~7_combout\,
	datac => \inst6|Equal0~5_combout\,
	datad => \inst6|Equal0~6_combout\,
	combout => \inst6|Equal0~9_combout\);

-- Location: LCCOMB_X16_Y20_N24
\inst6|Equal0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Equal0~13_combout\ = (\inst6|Equal0~12_combout\ & (\inst6|Equal0~10_combout\ & (\inst6|Equal0~4_combout\ & \inst6|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Equal0~12_combout\,
	datab => \inst6|Equal0~10_combout\,
	datac => \inst6|Equal0~4_combout\,
	datad => \inst6|Equal0~9_combout\,
	combout => \inst6|Equal0~13_combout\);

-- Location: LCCOMB_X16_Y20_N6
\inst6|pipe1_x_pos[9]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe1_x_pos[9]~0_combout\ = (!\sw0~input_o\ & (\sw2~input_o\ & (!\inst5|temp_bird_dead~combout\ & \inst6|Equal0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw0~input_o\,
	datab => \sw2~input_o\,
	datac => \inst5|temp_bird_dead~combout\,
	datad => \inst6|Equal0~13_combout\,
	combout => \inst6|pipe1_x_pos[9]~0_combout\);

-- Location: FF_X16_Y18_N25
\inst6|pipe4_x_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add4~27_combout\,
	ena => \inst6|pipe1_x_pos[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe4_x_pos\(2));

-- Location: LCCOMB_X17_Y18_N10
\inst6|Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add4~8_combout\ = (\inst6|pipe4_x_pos\(4) & (\inst6|Add4~7\ $ (GND))) # (!\inst6|pipe4_x_pos\(4) & ((GND) # (!\inst6|Add4~7\)))
-- \inst6|Add4~9\ = CARRY((!\inst6|Add4~7\) # (!\inst6|pipe4_x_pos\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe4_x_pos\(4),
	datad => VCC,
	cin => \inst6|Add4~7\,
	combout => \inst6|Add4~8_combout\,
	cout => \inst6|Add4~9\);

-- Location: LCCOMB_X16_Y18_N28
\inst6|Add4~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add4~25_combout\ = (!\inst6|Add4~8_combout\ & \inst6|LessThan9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Add4~8_combout\,
	datad => \inst6|LessThan9~0_combout\,
	combout => \inst6|Add4~25_combout\);

-- Location: FF_X16_Y18_N29
\inst6|pipe4_x_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add4~25_combout\,
	ena => \inst6|pipe1_x_pos[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe4_x_pos\(4));

-- Location: LCCOMB_X17_Y18_N12
\inst6|Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add4~10_combout\ = (\inst6|pipe4_x_pos\(5) & (\inst6|Add4~9\ & VCC)) # (!\inst6|pipe4_x_pos\(5) & (!\inst6|Add4~9\))
-- \inst6|Add4~11\ = CARRY((!\inst6|pipe4_x_pos\(5) & !\inst6|Add4~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe4_x_pos\(5),
	datad => VCC,
	cin => \inst6|Add4~9\,
	combout => \inst6|Add4~10_combout\,
	cout => \inst6|Add4~11\);

-- Location: LCCOMB_X12_Y18_N24
\inst6|Add4~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add4~24_combout\ = (\inst6|LessThan9~0_combout\ & \inst6|Add4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|LessThan9~0_combout\,
	datad => \inst6|Add4~10_combout\,
	combout => \inst6|Add4~24_combout\);

-- Location: FF_X16_Y18_N15
\inst6|pipe4_x_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst6|Add4~24_combout\,
	sload => VCC,
	ena => \inst6|pipe1_x_pos[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe4_x_pos\(5));

-- Location: LCCOMB_X17_Y18_N14
\inst6|Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add4~12_combout\ = (\inst6|pipe4_x_pos\(6) & (\inst6|Add4~11\ $ (GND))) # (!\inst6|pipe4_x_pos\(6) & ((GND) # (!\inst6|Add4~11\)))
-- \inst6|Add4~13\ = CARRY((!\inst6|Add4~11\) # (!\inst6|pipe4_x_pos\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe4_x_pos\(6),
	datad => VCC,
	cin => \inst6|Add4~11\,
	combout => \inst6|Add4~12_combout\,
	cout => \inst6|Add4~13\);

-- Location: LCCOMB_X17_Y18_N16
\inst6|Add4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add4~14_combout\ = (\inst6|pipe4_x_pos\(7) & (!\inst6|Add4~13\)) # (!\inst6|pipe4_x_pos\(7) & (\inst6|Add4~13\ & VCC))
-- \inst6|Add4~15\ = CARRY((\inst6|pipe4_x_pos\(7) & !\inst6|Add4~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe4_x_pos\(7),
	datad => VCC,
	cin => \inst6|Add4~13\,
	combout => \inst6|Add4~14_combout\,
	cout => \inst6|Add4~15\);

-- Location: LCCOMB_X17_Y18_N24
\inst6|Add4~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add4~22_combout\ = (\inst6|LessThan9~0_combout\ & !\inst6|Add4~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|LessThan9~0_combout\,
	datad => \inst6|Add4~14_combout\,
	combout => \inst6|Add4~22_combout\);

-- Location: FF_X17_Y18_N25
\inst6|pipe4_x_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add4~22_combout\,
	ena => \inst6|pipe1_x_pos[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe4_x_pos\(7));

-- Location: LCCOMB_X16_Y18_N22
\inst6|Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Equal4~0_combout\ = (!\inst6|pipe4_x_pos\(9) & (\inst6|pipe4_x_pos\(4) & (!\inst6|pipe4_x_pos\(5) & \inst6|pipe4_x_pos\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe4_x_pos\(9),
	datab => \inst6|pipe4_x_pos\(4),
	datac => \inst6|pipe4_x_pos\(5),
	datad => \inst6|pipe4_x_pos\(7),
	combout => \inst6|Equal4~0_combout\);

-- Location: LCCOMB_X17_Y18_N26
\inst6|Add4~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add4~21_combout\ = (\inst6|LessThan9~0_combout\ & \inst6|Add4~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|LessThan9~0_combout\,
	datad => \inst6|Add4~16_combout\,
	combout => \inst6|Add4~21_combout\);

-- Location: FF_X17_Y18_N27
\inst6|pipe4_x_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add4~21_combout\,
	ena => \inst6|pipe1_x_pos[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe4_x_pos\(8));

-- Location: LCCOMB_X16_Y18_N18
\inst6|LessThan9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan9~0_combout\ = (((\inst6|pipe4_x_pos\(8)) # (!\inst6|Equal4~0_combout\)) # (!\inst6|pipe4_x_pos\(6))) # (!\inst6|Equal4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Equal4~1_combout\,
	datab => \inst6|pipe4_x_pos\(6),
	datac => \inst6|Equal4~0_combout\,
	datad => \inst6|pipe4_x_pos\(8),
	combout => \inst6|LessThan9~0_combout\);

-- Location: LCCOMB_X17_Y18_N22
\inst6|Add4~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add4~23_combout\ = (\inst6|LessThan9~0_combout\ & !\inst6|Add4~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|LessThan9~0_combout\,
	datac => \inst6|Add4~12_combout\,
	combout => \inst6|Add4~23_combout\);

-- Location: FF_X17_Y18_N23
\inst6|pipe4_x_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add4~23_combout\,
	ena => \inst6|pipe1_x_pos[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe4_x_pos\(6));

-- Location: LCCOMB_X16_Y18_N16
\inst6|Equal4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Equal4~2_combout\ = (\inst6|Equal4~1_combout\ & (!\inst6|pipe4_x_pos\(6) & (\inst6|Equal4~0_combout\ & \inst6|pipe4_x_pos\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Equal4~1_combout\,
	datab => \inst6|pipe4_x_pos\(6),
	datac => \inst6|Equal4~0_combout\,
	datad => \inst6|pipe4_x_pos\(8),
	combout => \inst6|Equal4~2_combout\);

-- Location: LCCOMB_X19_Y20_N0
\inst6|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add3~0_combout\ = \inst6|pipe3_x_pos\(0) $ (VCC)
-- \inst6|Add3~1\ = CARRY(\inst6|pipe3_x_pos\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe3_x_pos\(0),
	datad => VCC,
	combout => \inst6|Add3~0_combout\,
	cout => \inst6|Add3~1\);

-- Location: LCCOMB_X19_Y23_N2
\inst6|Add3~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add3~29_combout\ = (\inst6|LessThan8~0_combout\ & \inst6|Add3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|LessThan8~0_combout\,
	datad => \inst6|Add3~0_combout\,
	combout => \inst6|Add3~29_combout\);

-- Location: FF_X19_Y20_N5
\inst6|pipe3_x_pos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst6|Add3~29_combout\,
	sload => VCC,
	ena => \inst6|pipe1_x_pos[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe3_x_pos\(0));

-- Location: LCCOMB_X19_Y20_N2
\inst6|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add3~2_combout\ = (\inst6|pipe3_x_pos\(1) & (\inst6|Add3~1\ & VCC)) # (!\inst6|pipe3_x_pos\(1) & (!\inst6|Add3~1\))
-- \inst6|Add3~3\ = CARRY((!\inst6|pipe3_x_pos\(1) & !\inst6|Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe3_x_pos\(1),
	datad => VCC,
	cin => \inst6|Add3~1\,
	combout => \inst6|Add3~2_combout\,
	cout => \inst6|Add3~3\);

-- Location: LCCOMB_X19_Y20_N26
\inst6|Add3~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add3~28_combout\ = (\inst6|LessThan8~0_combout\ & \inst6|Add3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|LessThan8~0_combout\,
	datad => \inst6|Add3~2_combout\,
	combout => \inst6|Add3~28_combout\);

-- Location: FF_X19_Y20_N27
\inst6|pipe3_x_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add3~28_combout\,
	ena => \inst6|pipe1_x_pos[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe3_x_pos\(1));

-- Location: LCCOMB_X19_Y20_N4
\inst6|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add3~4_combout\ = (\inst6|pipe3_x_pos\(2) & ((GND) # (!\inst6|Add3~3\))) # (!\inst6|pipe3_x_pos\(2) & (\inst6|Add3~3\ $ (GND)))
-- \inst6|Add3~5\ = CARRY((\inst6|pipe3_x_pos\(2)) # (!\inst6|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe3_x_pos\(2),
	datad => VCC,
	cin => \inst6|Add3~3\,
	combout => \inst6|Add3~4_combout\,
	cout => \inst6|Add3~5\);

-- Location: LCCOMB_X16_Y19_N2
\inst6|Add3~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add3~27_combout\ = (\inst6|LessThan8~0_combout\ & \inst6|Add3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|LessThan8~0_combout\,
	datac => \inst6|Add3~4_combout\,
	combout => \inst6|Add3~27_combout\);

-- Location: FF_X19_Y20_N7
\inst6|pipe3_x_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst6|Add3~27_combout\,
	sload => VCC,
	ena => \inst6|pipe1_x_pos[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe3_x_pos\(2));

-- Location: LCCOMB_X19_Y20_N6
\inst6|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add3~6_combout\ = (\inst6|pipe3_x_pos\(3) & (\inst6|Add3~5\ & VCC)) # (!\inst6|pipe3_x_pos\(3) & (!\inst6|Add3~5\))
-- \inst6|Add3~7\ = CARRY((!\inst6|pipe3_x_pos\(3) & !\inst6|Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe3_x_pos\(3),
	datad => VCC,
	cin => \inst6|Add3~5\,
	combout => \inst6|Add3~6_combout\,
	cout => \inst6|Add3~7\);

-- Location: LCCOMB_X19_Y20_N24
\inst6|Add3~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add3~26_combout\ = (\inst6|LessThan8~0_combout\ & \inst6|Add3~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|LessThan8~0_combout\,
	datad => \inst6|Add3~6_combout\,
	combout => \inst6|Add3~26_combout\);

-- Location: FF_X19_Y20_N25
\inst6|pipe3_x_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add3~26_combout\,
	ena => \inst6|pipe1_x_pos[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe3_x_pos\(3));

-- Location: LCCOMB_X19_Y20_N10
\inst6|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add3~10_combout\ = (\inst6|pipe3_x_pos\(5) & (\inst6|Add3~9\ & VCC)) # (!\inst6|pipe3_x_pos\(5) & (!\inst6|Add3~9\))
-- \inst6|Add3~11\ = CARRY((!\inst6|pipe3_x_pos\(5) & !\inst6|Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe3_x_pos\(5),
	datad => VCC,
	cin => \inst6|Add3~9\,
	combout => \inst6|Add3~10_combout\,
	cout => \inst6|Add3~11\);

-- Location: LCCOMB_X19_Y20_N28
\inst6|Add3~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add3~24_combout\ = (\inst6|LessThan8~0_combout\ & \inst6|Add3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|LessThan8~0_combout\,
	datad => \inst6|Add3~10_combout\,
	combout => \inst6|Add3~24_combout\);

-- Location: FF_X19_Y20_N29
\inst6|pipe3_x_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add3~24_combout\,
	ena => \inst6|pipe1_x_pos[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe3_x_pos\(5));

-- Location: LCCOMB_X19_Y20_N12
\inst6|Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add3~12_combout\ = (\inst6|pipe3_x_pos\(6) & ((GND) # (!\inst6|Add3~11\))) # (!\inst6|pipe3_x_pos\(6) & (\inst6|Add3~11\ $ (GND)))
-- \inst6|Add3~13\ = CARRY((\inst6|pipe3_x_pos\(6)) # (!\inst6|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe3_x_pos\(6),
	datad => VCC,
	cin => \inst6|Add3~11\,
	combout => \inst6|Add3~12_combout\,
	cout => \inst6|Add3~13\);

-- Location: LCCOMB_X16_Y19_N24
\inst6|Add3~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add3~23_combout\ = (\inst6|Add3~12_combout\ & \inst6|LessThan8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Add3~12_combout\,
	datad => \inst6|LessThan8~0_combout\,
	combout => \inst6|Add3~23_combout\);

-- Location: FF_X19_Y20_N3
\inst6|pipe3_x_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst6|Add3~23_combout\,
	sload => VCC,
	ena => \inst6|pipe1_x_pos[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe3_x_pos\(6));

-- Location: LCCOMB_X19_Y20_N14
\inst6|Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add3~14_combout\ = (\inst6|pipe3_x_pos\(7) & (\inst6|Add3~13\ & VCC)) # (!\inst6|pipe3_x_pos\(7) & (!\inst6|Add3~13\))
-- \inst6|Add3~15\ = CARRY((!\inst6|pipe3_x_pos\(7) & !\inst6|Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe3_x_pos\(7),
	datad => VCC,
	cin => \inst6|Add3~13\,
	combout => \inst6|Add3~14_combout\,
	cout => \inst6|Add3~15\);

-- Location: LCCOMB_X19_Y20_N16
\inst6|Add3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add3~16_combout\ = (\inst6|pipe3_x_pos\(8) & ((GND) # (!\inst6|Add3~15\))) # (!\inst6|pipe3_x_pos\(8) & (\inst6|Add3~15\ $ (GND)))
-- \inst6|Add3~17\ = CARRY((\inst6|pipe3_x_pos\(8)) # (!\inst6|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe3_x_pos\(8),
	datad => VCC,
	cin => \inst6|Add3~15\,
	combout => \inst6|Add3~16_combout\,
	cout => \inst6|Add3~17\);

-- Location: LCCOMB_X19_Y20_N18
\inst6|Add3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add3~18_combout\ = \inst6|Add3~17\ $ (!\inst6|pipe3_x_pos\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst6|pipe3_x_pos\(9),
	cin => \inst6|Add3~17\,
	combout => \inst6|Add3~18_combout\);

-- Location: LCCOMB_X19_Y20_N20
\inst6|Add3~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add3~20_combout\ = (\inst6|LessThan8~0_combout\ & \inst6|Add3~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|LessThan8~0_combout\,
	datad => \inst6|Add3~18_combout\,
	combout => \inst6|Add3~20_combout\);

-- Location: FF_X19_Y20_N21
\inst6|pipe3_x_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add3~20_combout\,
	ena => \inst6|pipe1_x_pos[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe3_x_pos\(9));

-- Location: LCCOMB_X19_Y20_N22
\inst6|Add3~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add3~22_combout\ = (\inst6|LessThan8~0_combout\ & \inst6|Add3~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|LessThan8~0_combout\,
	datac => \inst6|Add3~14_combout\,
	combout => \inst6|Add3~22_combout\);

-- Location: FF_X19_Y20_N23
\inst6|pipe3_x_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add3~22_combout\,
	ena => \inst6|pipe1_x_pos[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe3_x_pos\(7));

-- Location: LCCOMB_X20_Y24_N8
\inst6|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Equal3~0_combout\ = (\inst6|pipe3_x_pos\(4) & (!\inst6|pipe3_x_pos\(5) & (!\inst6|pipe3_x_pos\(9) & !\inst6|pipe3_x_pos\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe3_x_pos\(4),
	datab => \inst6|pipe3_x_pos\(5),
	datac => \inst6|pipe3_x_pos\(9),
	datad => \inst6|pipe3_x_pos\(7),
	combout => \inst6|Equal3~0_combout\);

-- Location: LCCOMB_X20_Y24_N2
\inst6|Equal3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Equal3~1_combout\ = (!\inst6|pipe3_x_pos\(2) & (!\inst6|pipe3_x_pos\(0) & (!\inst6|pipe3_x_pos\(1) & !\inst6|pipe3_x_pos\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe3_x_pos\(2),
	datab => \inst6|pipe3_x_pos\(0),
	datac => \inst6|pipe3_x_pos\(1),
	datad => \inst6|pipe3_x_pos\(3),
	combout => \inst6|Equal3~1_combout\);

-- Location: LCCOMB_X20_Y24_N0
\inst6|LessThan8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan8~0_combout\ = (\inst6|pipe3_x_pos\(6)) # ((\inst6|pipe3_x_pos\(8)) # ((!\inst6|Equal3~1_combout\) # (!\inst6|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe3_x_pos\(6),
	datab => \inst6|pipe3_x_pos\(8),
	datac => \inst6|Equal3~0_combout\,
	datad => \inst6|Equal3~1_combout\,
	combout => \inst6|LessThan8~0_combout\);

-- Location: LCCOMB_X19_Y23_N4
\inst6|Add3~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add3~21_combout\ = (\inst6|LessThan8~0_combout\ & \inst6|Add3~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|LessThan8~0_combout\,
	datac => \inst6|Add3~16_combout\,
	combout => \inst6|Add3~21_combout\);

-- Location: FF_X17_Y22_N31
\inst6|pipe3_x_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst6|Add3~21_combout\,
	sload => VCC,
	ena => \inst6|pipe1_x_pos[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe3_x_pos\(8));

-- Location: LCCOMB_X20_Y24_N10
\inst6|Equal3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Equal3~2_combout\ = (\inst6|pipe3_x_pos\(6) & (\inst6|pipe3_x_pos\(8) & (\inst6|Equal3~0_combout\ & \inst6|Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe3_x_pos\(6),
	datab => \inst6|pipe3_x_pos\(8),
	datac => \inst6|Equal3~0_combout\,
	datad => \inst6|Equal3~1_combout\,
	combout => \inst6|Equal3~2_combout\);

-- Location: LCCOMB_X16_Y17_N0
\inst6|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add2~0_combout\ = \inst6|pipe2_x_pos\(0) $ (VCC)
-- \inst6|Add2~1\ = CARRY(\inst6|pipe2_x_pos\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe2_x_pos\(0),
	datad => VCC,
	combout => \inst6|Add2~0_combout\,
	cout => \inst6|Add2~1\);

-- Location: LCCOMB_X16_Y17_N4
\inst6|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add2~4_combout\ = (\inst6|pipe2_x_pos\(2) & ((GND) # (!\inst6|Add2~3\))) # (!\inst6|pipe2_x_pos\(2) & (\inst6|Add2~3\ $ (GND)))
-- \inst6|Add2~5\ = CARRY((\inst6|pipe2_x_pos\(2)) # (!\inst6|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe2_x_pos\(2),
	datad => VCC,
	cin => \inst6|Add2~3\,
	combout => \inst6|Add2~4_combout\,
	cout => \inst6|Add2~5\);

-- Location: LCCOMB_X16_Y17_N24
\inst6|Add2~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add2~27_combout\ = (\inst6|LessThan7~0_combout\ & \inst6|Add2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|LessThan7~0_combout\,
	datac => \inst6|Add2~4_combout\,
	combout => \inst6|Add2~27_combout\);

-- Location: FF_X16_Y17_N25
\inst6|pipe2_x_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add2~27_combout\,
	ena => \inst6|pipe1_x_pos[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe2_x_pos\(2));

-- Location: LCCOMB_X16_Y17_N6
\inst6|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add2~6_combout\ = (\inst6|pipe2_x_pos\(3) & (!\inst6|Add2~5\)) # (!\inst6|pipe2_x_pos\(3) & (\inst6|Add2~5\ & VCC))
-- \inst6|Add2~7\ = CARRY((\inst6|pipe2_x_pos\(3) & !\inst6|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe2_x_pos\(3),
	datad => VCC,
	cin => \inst6|Add2~5\,
	combout => \inst6|Add2~6_combout\,
	cout => \inst6|Add2~7\);

-- Location: LCCOMB_X17_Y17_N28
\inst6|Add2~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add2~26_combout\ = (!\inst6|Add2~6_combout\ & \inst6|LessThan7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Add2~6_combout\,
	datad => \inst6|LessThan7~0_combout\,
	combout => \inst6|Add2~26_combout\);

-- Location: FF_X17_Y17_N29
\inst6|pipe2_x_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add2~26_combout\,
	ena => \inst6|pipe1_x_pos[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe2_x_pos\(3));

-- Location: LCCOMB_X16_Y17_N14
\inst6|Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add2~14_combout\ = (\inst6|pipe2_x_pos\(7) & (\inst6|Add2~13\ & VCC)) # (!\inst6|pipe2_x_pos\(7) & (!\inst6|Add2~13\))
-- \inst6|Add2~15\ = CARRY((!\inst6|pipe2_x_pos\(7) & !\inst6|Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe2_x_pos\(7),
	datad => VCC,
	cin => \inst6|Add2~13\,
	combout => \inst6|Add2~14_combout\,
	cout => \inst6|Add2~15\);

-- Location: LCCOMB_X16_Y17_N28
\inst6|Add2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add2~22_combout\ = (\inst6|LessThan7~0_combout\ & \inst6|Add2~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|LessThan7~0_combout\,
	datac => \inst6|Add2~14_combout\,
	combout => \inst6|Add2~22_combout\);

-- Location: FF_X16_Y17_N29
\inst6|pipe2_x_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add2~22_combout\,
	ena => \inst6|pipe1_x_pos[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe2_x_pos\(7));

-- Location: LCCOMB_X16_Y17_N18
\inst6|Add2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add2~18_combout\ = \inst6|Add2~17\ $ (\inst6|pipe2_x_pos\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst6|pipe2_x_pos\(9),
	cin => \inst6|Add2~17\,
	combout => \inst6|Add2~18_combout\);

-- Location: LCCOMB_X16_Y17_N20
\inst6|Add2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add2~20_combout\ = (!\inst6|Add2~18_combout\ & \inst6|LessThan7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add2~18_combout\,
	datac => \inst6|LessThan7~0_combout\,
	combout => \inst6|Add2~20_combout\);

-- Location: FF_X16_Y17_N21
\inst6|pipe2_x_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add2~20_combout\,
	ena => \inst6|pipe1_x_pos[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe2_x_pos\(9));

-- Location: LCCOMB_X17_Y17_N30
\inst6|Add2~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add2~25_combout\ = (\inst6|Add2~8_combout\ & \inst6|LessThan7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add2~8_combout\,
	datad => \inst6|LessThan7~0_combout\,
	combout => \inst6|Add2~25_combout\);

-- Location: FF_X17_Y17_N31
\inst6|pipe2_x_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add2~25_combout\,
	ena => \inst6|pipe1_x_pos[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe2_x_pos\(4));

-- Location: LCCOMB_X17_Y17_N0
\inst6|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Equal2~0_combout\ = (!\inst6|pipe2_x_pos\(5) & (\inst6|pipe2_x_pos\(9) & (!\inst6|pipe2_x_pos\(7) & !\inst6|pipe2_x_pos\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe2_x_pos\(5),
	datab => \inst6|pipe2_x_pos\(9),
	datac => \inst6|pipe2_x_pos\(7),
	datad => \inst6|pipe2_x_pos\(4),
	combout => \inst6|Equal2~0_combout\);

-- Location: LCCOMB_X17_Y17_N4
\inst6|Add2~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add2~23_combout\ = (!\inst6|Add2~12_combout\ & \inst6|LessThan7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add2~12_combout\,
	datad => \inst6|LessThan7~0_combout\,
	combout => \inst6|Add2~23_combout\);

-- Location: FF_X17_Y17_N5
\inst6|pipe2_x_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add2~23_combout\,
	ena => \inst6|pipe1_x_pos[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe2_x_pos\(6));

-- Location: LCCOMB_X17_Y17_N2
\inst6|LessThan7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan7~0_combout\ = (((!\inst6|Equal2~1_combout\) # (!\inst6|pipe2_x_pos\(6))) # (!\inst6|Equal2~0_combout\)) # (!\inst6|pipe2_x_pos\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe2_x_pos\(8),
	datab => \inst6|Equal2~0_combout\,
	datac => \inst6|pipe2_x_pos\(6),
	datad => \inst6|Equal2~1_combout\,
	combout => \inst6|LessThan7~0_combout\);

-- Location: LCCOMB_X16_Y17_N26
\inst6|Add2~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add2~29_combout\ = (\inst6|Add2~0_combout\ & \inst6|LessThan7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add2~0_combout\,
	datac => \inst6|LessThan7~0_combout\,
	combout => \inst6|Add2~29_combout\);

-- Location: FF_X16_Y17_N27
\inst6|pipe2_x_pos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add2~29_combout\,
	ena => \inst6|pipe1_x_pos[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe2_x_pos\(0));

-- Location: LCCOMB_X19_Y17_N2
\inst6|Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Equal2~1_combout\ = (!\inst6|pipe2_x_pos\(1) & (!\inst6|pipe2_x_pos\(0) & (\inst6|pipe2_x_pos\(3) & !\inst6|pipe2_x_pos\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe2_x_pos\(1),
	datab => \inst6|pipe2_x_pos\(0),
	datac => \inst6|pipe2_x_pos\(3),
	datad => \inst6|pipe2_x_pos\(2),
	combout => \inst6|Equal2~1_combout\);

-- Location: LCCOMB_X20_Y20_N14
\inst6|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add1~2_combout\ = (\inst6|pipe1_x_pos\(1) & (\inst6|Add1~1\ & VCC)) # (!\inst6|pipe1_x_pos\(1) & (!\inst6|Add1~1\))
-- \inst6|Add1~3\ = CARRY((!\inst6|pipe1_x_pos\(1) & !\inst6|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe1_x_pos\(1),
	datad => VCC,
	cin => \inst6|Add1~1\,
	combout => \inst6|Add1~2_combout\,
	cout => \inst6|Add1~3\);

-- Location: LCCOMB_X20_Y20_N26
\inst6|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add1~14_combout\ = (\inst6|pipe1_x_pos\(7) & (!\inst6|Add1~13\)) # (!\inst6|pipe1_x_pos\(7) & (\inst6|Add1~13\ & VCC))
-- \inst6|Add1~15\ = CARRY((\inst6|pipe1_x_pos\(7) & !\inst6|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe1_x_pos\(7),
	datad => VCC,
	cin => \inst6|Add1~13\,
	combout => \inst6|Add1~14_combout\,
	cout => \inst6|Add1~15\);

-- Location: LCCOMB_X21_Y20_N2
\inst6|Add1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add1~22_combout\ = (!\inst6|Add1~14_combout\ & \inst6|LessThan6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Add1~14_combout\,
	datad => \inst6|LessThan6~0_combout\,
	combout => \inst6|Add1~22_combout\);

-- Location: FF_X21_Y20_N3
\inst6|pipe1_x_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add1~22_combout\,
	ena => \inst6|pipe1_x_pos[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe1_x_pos\(7));

-- Location: LCCOMB_X20_Y20_N20
\inst6|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add1~8_combout\ = (\inst6|pipe1_x_pos\(4) & ((GND) # (!\inst6|Add1~7\))) # (!\inst6|pipe1_x_pos\(4) & (\inst6|Add1~7\ $ (GND)))
-- \inst6|Add1~9\ = CARRY((\inst6|pipe1_x_pos\(4)) # (!\inst6|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe1_x_pos\(4),
	datad => VCC,
	cin => \inst6|Add1~7\,
	combout => \inst6|Add1~8_combout\,
	cout => \inst6|Add1~9\);

-- Location: LCCOMB_X20_Y20_N6
\inst6|Add1~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add1~25_combout\ = (\inst6|Add1~8_combout\ & \inst6|LessThan6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add1~8_combout\,
	datad => \inst6|LessThan6~0_combout\,
	combout => \inst6|Add1~25_combout\);

-- Location: FF_X20_Y20_N7
\inst6|pipe1_x_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add1~25_combout\,
	ena => \inst6|pipe1_x_pos[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe1_x_pos\(4));

-- Location: LCCOMB_X20_Y20_N28
\inst6|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add1~16_combout\ = (\inst6|pipe1_x_pos\(8) & ((GND) # (!\inst6|Add1~15\))) # (!\inst6|pipe1_x_pos\(8) & (\inst6|Add1~15\ $ (GND)))
-- \inst6|Add1~17\ = CARRY((\inst6|pipe1_x_pos\(8)) # (!\inst6|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe1_x_pos\(8),
	datad => VCC,
	cin => \inst6|Add1~15\,
	combout => \inst6|Add1~16_combout\,
	cout => \inst6|Add1~17\);

-- Location: LCCOMB_X20_Y20_N30
\inst6|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add1~18_combout\ = \inst6|pipe1_x_pos\(9) $ (\inst6|Add1~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe1_x_pos\(9),
	cin => \inst6|Add1~17\,
	combout => \inst6|Add1~18_combout\);

-- Location: LCCOMB_X20_Y20_N8
\inst6|Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add1~20_combout\ = (!\inst6|Add1~18_combout\ & \inst6|LessThan6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Add1~18_combout\,
	datad => \inst6|LessThan6~0_combout\,
	combout => \inst6|Add1~20_combout\);

-- Location: FF_X20_Y20_N9
\inst6|pipe1_x_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add1~20_combout\,
	ena => \inst6|pipe1_x_pos[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe1_x_pos\(9));

-- Location: LCCOMB_X21_Y20_N8
\inst6|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Equal1~0_combout\ = (!\inst6|pipe1_x_pos\(5) & (\inst6|pipe1_x_pos\(7) & (!\inst6|pipe1_x_pos\(4) & \inst6|pipe1_x_pos\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe1_x_pos\(5),
	datab => \inst6|pipe1_x_pos\(7),
	datac => \inst6|pipe1_x_pos\(4),
	datad => \inst6|pipe1_x_pos\(9),
	combout => \inst6|Equal1~0_combout\);

-- Location: LCCOMB_X20_Y20_N10
\inst6|Add1~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add1~29_combout\ = (\inst6|Add1~0_combout\ & \inst6|LessThan6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add1~0_combout\,
	datad => \inst6|LessThan6~0_combout\,
	combout => \inst6|Add1~29_combout\);

-- Location: FF_X20_Y20_N11
\inst6|pipe1_x_pos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add1~29_combout\,
	ena => \inst6|pipe1_x_pos[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe1_x_pos\(0));

-- Location: LCCOMB_X20_Y20_N0
\inst6|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Equal1~1_combout\ = (!\inst6|pipe1_x_pos\(2) & (!\inst6|pipe1_x_pos\(3) & (!\inst6|pipe1_x_pos\(1) & !\inst6|pipe1_x_pos\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe1_x_pos\(2),
	datab => \inst6|pipe1_x_pos\(3),
	datac => \inst6|pipe1_x_pos\(1),
	datad => \inst6|pipe1_x_pos\(0),
	combout => \inst6|Equal1~1_combout\);

-- Location: LCCOMB_X21_Y20_N10
\inst6|LessThan6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan6~0_combout\ = (\inst6|pipe1_x_pos\(8)) # (((\inst6|pipe1_x_pos\(6)) # (!\inst6|Equal1~1_combout\)) # (!\inst6|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe1_x_pos\(8),
	datab => \inst6|Equal1~0_combout\,
	datac => \inst6|Equal1~1_combout\,
	datad => \inst6|pipe1_x_pos\(6),
	combout => \inst6|LessThan6~0_combout\);

-- Location: LCCOMB_X20_Y20_N4
\inst6|Add1~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add1~28_combout\ = (\inst6|Add1~2_combout\ & \inst6|LessThan6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Add1~2_combout\,
	datad => \inst6|LessThan6~0_combout\,
	combout => \inst6|Add1~28_combout\);

-- Location: FF_X20_Y20_N5
\inst6|pipe1_x_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add1~28_combout\,
	ena => \inst6|pipe1_x_pos[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe1_x_pos\(1));

-- Location: LCCOMB_X20_Y20_N18
\inst6|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add1~6_combout\ = (\inst6|pipe1_x_pos\(3) & (\inst6|Add1~5\ & VCC)) # (!\inst6|pipe1_x_pos\(3) & (!\inst6|Add1~5\))
-- \inst6|Add1~7\ = CARRY((!\inst6|pipe1_x_pos\(3) & !\inst6|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe1_x_pos\(3),
	datad => VCC,
	cin => \inst6|Add1~5\,
	combout => \inst6|Add1~6_combout\,
	cout => \inst6|Add1~7\);

-- Location: LCCOMB_X21_Y20_N0
\inst6|Add1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add1~26_combout\ = (\inst6|Add1~6_combout\ & \inst6|LessThan6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add1~6_combout\,
	datad => \inst6|LessThan6~0_combout\,
	combout => \inst6|Add1~26_combout\);

-- Location: FF_X21_Y20_N1
\inst6|pipe1_x_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add1~26_combout\,
	ena => \inst6|pipe1_x_pos[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe1_x_pos\(3));

-- Location: LCCOMB_X20_Y20_N24
\inst6|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add1~12_combout\ = (\inst6|pipe1_x_pos\(6) & ((GND) # (!\inst6|Add1~11\))) # (!\inst6|pipe1_x_pos\(6) & (\inst6|Add1~11\ $ (GND)))
-- \inst6|Add1~13\ = CARRY((\inst6|pipe1_x_pos\(6)) # (!\inst6|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe1_x_pos\(6),
	datad => VCC,
	cin => \inst6|Add1~11\,
	combout => \inst6|Add1~12_combout\,
	cout => \inst6|Add1~13\);

-- Location: LCCOMB_X21_Y20_N28
\inst6|Add1~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add1~23_combout\ = (\inst6|Add1~12_combout\ & \inst6|LessThan6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add1~12_combout\,
	datad => \inst6|LessThan6~0_combout\,
	combout => \inst6|Add1~23_combout\);

-- Location: FF_X21_Y20_N29
\inst6|pipe1_x_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add1~23_combout\,
	ena => \inst6|pipe1_x_pos[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe1_x_pos\(6));

-- Location: LCCOMB_X21_Y20_N4
\inst6|Add1~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add1~21_combout\ = (\inst6|Add1~16_combout\ & \inst6|LessThan6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add1~16_combout\,
	datad => \inst6|LessThan6~0_combout\,
	combout => \inst6|Add1~21_combout\);

-- Location: FF_X21_Y20_N5
\inst6|pipe1_x_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add1~21_combout\,
	ena => \inst6|pipe1_x_pos[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe1_x_pos\(8));

-- Location: LCCOMB_X20_Y20_N2
\inst6|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Equal1~2_combout\ = (\inst6|Equal1~1_combout\ & (\inst6|pipe1_x_pos\(8) & (\inst6|Equal1~0_combout\ & \inst6|pipe1_x_pos\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Equal1~1_combout\,
	datab => \inst6|pipe1_x_pos\(8),
	datac => \inst6|Equal1~0_combout\,
	datad => \inst6|pipe1_x_pos\(6),
	combout => \inst6|Equal1~2_combout\);

-- Location: LCCOMB_X19_Y17_N28
\inst6|pipe_move~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe_move~9_combout\ = (\inst6|Equal1~2_combout\) # ((\inst6|Equal2~2_combout\ & (\inst6|Equal2~1_combout\ & \inst6|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Equal2~2_combout\,
	datab => \inst6|Equal2~1_combout\,
	datac => \inst6|Equal2~0_combout\,
	datad => \inst6|Equal1~2_combout\,
	combout => \inst6|pipe_move~9_combout\);

-- Location: LCCOMB_X16_Y18_N26
\inst6|pipe_move~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe_move~10_combout\ = (\inst6|Equal5~2_combout\) # ((\inst6|Equal4~2_combout\) # ((\inst6|Equal3~2_combout\) # (\inst6|pipe_move~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Equal5~2_combout\,
	datab => \inst6|Equal4~2_combout\,
	datac => \inst6|Equal3~2_combout\,
	datad => \inst6|pipe_move~9_combout\,
	combout => \inst6|pipe_move~10_combout\);

-- Location: FF_X15_Y19_N9
\inst6|score_incr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst6|pipe_move~10_combout\,
	sload => VCC,
	ena => \inst6|pipe1_x_pos[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|score_incr~q\);

-- Location: LCCOMB_X16_Y19_N30
\inst9|BCD_ones|temp_QOut1[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|BCD_ones|temp_QOut1[1]~5_combout\ = (\inst6|score_incr~q\) # (\inst5|reset_score~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|score_incr~q\,
	datad => \inst5|reset_score~combout\,
	combout => \inst9|BCD_ones|temp_QOut1[1]~5_combout\);

-- Location: FF_X16_Y19_N15
\inst9|BCD_ones|temp_QOut1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|Clk1hz_temp~clkctrl_outclk\,
	d => \inst9|BCD_ones|temp_QOut1~6_combout\,
	ena => \inst9|BCD_ones|temp_QOut1[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|BCD_ones|temp_QOut1\(0));

-- Location: LCCOMB_X16_Y19_N6
\inst9|BCD_ones|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|BCD_ones|LessThan0~0_combout\ = ((!\inst9|BCD_ones|temp_QOut1\(2) & (!\inst9|BCD_ones|temp_QOut1\(1) & !\inst9|BCD_ones|temp_QOut1\(0)))) # (!\inst9|BCD_ones|temp_QOut1\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|BCD_ones|temp_QOut1\(2),
	datab => \inst9|BCD_ones|temp_QOut1\(1),
	datac => \inst9|BCD_ones|temp_QOut1\(0),
	datad => \inst9|BCD_ones|temp_QOut1\(3),
	combout => \inst9|BCD_ones|LessThan0~0_combout\);

-- Location: LCCOMB_X16_Y19_N20
\inst9|BCD_ones|temp_QOut1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|BCD_ones|temp_QOut1~7_combout\ = (!\inst5|reset_score~combout\ & (\inst9|BCD_ones|LessThan0~0_combout\ & (\inst9|BCD_ones|temp_QOut1\(0) $ (\inst9|BCD_ones|temp_QOut1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|BCD_ones|temp_QOut1\(0),
	datab => \inst5|reset_score~combout\,
	datac => \inst9|BCD_ones|temp_QOut1\(1),
	datad => \inst9|BCD_ones|LessThan0~0_combout\,
	combout => \inst9|BCD_ones|temp_QOut1~7_combout\);

-- Location: FF_X16_Y19_N21
\inst9|BCD_ones|temp_QOut1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|Clk1hz_temp~clkctrl_outclk\,
	d => \inst9|BCD_ones|temp_QOut1~7_combout\,
	ena => \inst9|BCD_ones|temp_QOut1[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|BCD_ones|temp_QOut1\(1));

-- Location: LCCOMB_X16_Y19_N0
\inst9|BCD_ones|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|BCD_ones|Add0~1_combout\ = \inst9|BCD_ones|temp_QOut1\(3) $ (((\inst9|BCD_ones|temp_QOut1\(2) & (\inst9|BCD_ones|temp_QOut1\(1) & \inst9|BCD_ones|temp_QOut1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|BCD_ones|temp_QOut1\(2),
	datab => \inst9|BCD_ones|temp_QOut1\(1),
	datac => \inst9|BCD_ones|temp_QOut1\(0),
	datad => \inst9|BCD_ones|temp_QOut1\(3),
	combout => \inst9|BCD_ones|Add0~1_combout\);

-- Location: LCCOMB_X16_Y19_N22
\inst9|BCD_ones|temp_QOut1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|BCD_ones|temp_QOut1~8_combout\ = (!\inst5|reset_score~combout\ & (\inst9|BCD_ones|Add0~1_combout\ & \inst9|BCD_ones|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|reset_score~combout\,
	datac => \inst9|BCD_ones|Add0~1_combout\,
	datad => \inst9|BCD_ones|LessThan0~0_combout\,
	combout => \inst9|BCD_ones|temp_QOut1~8_combout\);

-- Location: FF_X16_Y19_N23
\inst9|BCD_ones|temp_QOut1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|Clk1hz_temp~clkctrl_outclk\,
	d => \inst9|BCD_ones|temp_QOut1~8_combout\,
	ena => \inst9|BCD_ones|temp_QOut1[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|BCD_ones|temp_QOut1\(3));

-- Location: LCCOMB_X15_Y19_N22
\inst9|BCD_ones|temp_QOut1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|BCD_ones|temp_QOut1~2_combout\ = (!\inst9|BCD_ones|temp_QOut1\(0) & (((!\inst9|BCD_ones|temp_QOut1\(1) & !\inst9|BCD_ones|temp_QOut1\(2))) # (!\inst9|BCD_ones|temp_QOut1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|BCD_ones|temp_QOut1\(0),
	datab => \inst9|BCD_ones|temp_QOut1\(3),
	datac => \inst9|BCD_ones|temp_QOut1\(1),
	datad => \inst9|BCD_ones|temp_QOut1\(2),
	combout => \inst9|BCD_ones|temp_QOut1~2_combout\);

-- Location: FF_X15_Y19_N23
\inst9|BCD_ones|Q_Out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|Clk1hz_temp~q\,
	d => \inst9|BCD_ones|temp_QOut1~2_combout\,
	ena => \inst9|BCD_ones|Q_Out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|BCD_ones|Q_Out\(0));

-- Location: LCCOMB_X23_Y18_N14
\inst15|temp_char_address~197\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|temp_char_address~197_combout\ = (!\inst1|pixel_column\(9) & (!\inst11|LessThan12~0_combout\ & ((!\inst1|pixel_column\(8)) # (!\inst1|pixel_column\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(7),
	datab => \inst1|pixel_column\(9),
	datac => \inst1|pixel_column\(8),
	datad => \inst11|LessThan12~0_combout\,
	combout => \inst15|temp_char_address~197_combout\);

-- Location: LCCOMB_X21_Y21_N12
\inst11|LessThan7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan7~0_combout\ = (!\inst11|LessThan55~0_combout\ & \inst1|pixel_row\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|LessThan55~0_combout\,
	datad => \inst1|pixel_row\(4),
	combout => \inst11|LessThan7~0_combout\);

-- Location: LCCOMB_X21_Y21_N6
\inst11|temp_char_address~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address~24_combout\ = (\inst1|pixel_row\(7) & (\inst15|LessThan23~0_combout\ & (!\inst1|pixel_row\(8) & !\inst11|LessThan7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(7),
	datab => \inst15|LessThan23~0_combout\,
	datac => \inst1|pixel_row\(8),
	datad => \inst11|LessThan7~0_combout\,
	combout => \inst11|temp_char_address~24_combout\);

-- Location: LCCOMB_X15_Y18_N30
\inst11|temp_char_address[0]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[0]~88_combout\ = (((!\inst15|temp_char_address~79_combout\ & !\inst15|temp_char_address~70_combout\)) # (!\inst5|temp_bird_dead~combout\)) # (!\inst11|temp_char_address~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~79_combout\,
	datab => \inst11|temp_char_address~24_combout\,
	datac => \inst15|temp_char_address~70_combout\,
	datad => \inst5|temp_bird_dead~combout\,
	combout => \inst11|temp_char_address[0]~88_combout\);

-- Location: LCCOMB_X15_Y18_N26
\inst11|temp_char_address~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address~26_combout\ = (\inst11|temp_char_address~24_combout\ & \sw0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|temp_char_address~24_combout\,
	datad => \sw0~input_o\,
	combout => \inst11|temp_char_address~26_combout\);

-- Location: LCCOMB_X15_Y18_N6
\inst11|temp_char_address~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address~29_combout\ = (\inst11|temp_char_address~24_combout\ & \inst5|temp_bird_dead~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|temp_char_address~24_combout\,
	datad => \inst5|temp_bird_dead~combout\,
	combout => \inst11|temp_char_address~29_combout\);

-- Location: LCCOMB_X15_Y18_N8
\inst11|temp_char_address[2]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[2]~30_combout\ = (\inst15|temp_char_address~74_combout\ & (!\inst11|temp_char_address~26_combout\ & ((!\inst11|temp_char_address~29_combout\) # (!\inst15|temp_char_address~85_combout\)))) # (!\inst15|temp_char_address~74_combout\ 
-- & (((!\inst11|temp_char_address~29_combout\)) # (!\inst15|temp_char_address~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~74_combout\,
	datab => \inst15|temp_char_address~85_combout\,
	datac => \inst11|temp_char_address~26_combout\,
	datad => \inst11|temp_char_address~29_combout\,
	combout => \inst11|temp_char_address[2]~30_combout\);

-- Location: LCCOMB_X15_Y18_N2
\inst11|temp_char_address~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address~31_combout\ = ((!\inst5|temp_bird_dead~combout\) # (!\inst11|temp_char_address~24_combout\)) # (!\inst15|temp_char_address~80_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~80_combout\,
	datab => \inst11|temp_char_address~24_combout\,
	datad => \inst5|temp_bird_dead~combout\,
	combout => \inst11|temp_char_address~31_combout\);

-- Location: LCCOMB_X15_Y18_N28
\inst11|temp_char_address[0]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[0]~32_combout\ = (\inst11|temp_char_address[2]~30_combout\ & (\inst11|temp_char_address~31_combout\ & ((!\inst15|temp_char_address~70_combout\) # (!\inst11|temp_char_address~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|temp_char_address~26_combout\,
	datab => \inst15|temp_char_address~70_combout\,
	datac => \inst11|temp_char_address[2]~30_combout\,
	datad => \inst11|temp_char_address~31_combout\,
	combout => \inst11|temp_char_address[0]~32_combout\);

-- Location: LCCOMB_X15_Y18_N14
\inst11|temp_char_address[0]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[0]~33_combout\ = (\inst11|temp_char_address[0]~88_combout\ & (\inst11|temp_char_address[0]~32_combout\ & ((!\inst15|temp_char_address~197_combout\) # (!\inst11|temp_char_address~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|temp_char_address~29_combout\,
	datab => \inst15|temp_char_address~197_combout\,
	datac => \inst11|temp_char_address[0]~88_combout\,
	datad => \inst11|temp_char_address[0]~32_combout\,
	combout => \inst11|temp_char_address[0]~33_combout\);

-- Location: LCCOMB_X16_Y18_N14
\inst11|temp_char_address~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address~27_combout\ = (\inst11|temp_char_address~24_combout\ & (\inst15|temp_char_address~79_combout\ & \sw0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|temp_char_address~24_combout\,
	datab => \inst15|temp_char_address~79_combout\,
	datad => \sw0~input_o\,
	combout => \inst11|temp_char_address~27_combout\);

-- Location: LCCOMB_X15_Y18_N24
\inst11|temp_char_address~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address~25_combout\ = ((!\sw0~input_o\) # (!\inst11|temp_char_address~24_combout\)) # (!\inst15|temp_char_address~80_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~80_combout\,
	datac => \inst11|temp_char_address~24_combout\,
	datad => \sw0~input_o\,
	combout => \inst11|temp_char_address~25_combout\);

-- Location: LCCOMB_X15_Y18_N12
\inst11|temp_char_address~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address~28_combout\ = (!\inst11|temp_char_address~27_combout\ & (\inst11|temp_char_address~25_combout\ & ((!\inst11|temp_char_address~26_combout\) # (!\inst15|temp_char_address~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~85_combout\,
	datab => \inst11|temp_char_address~27_combout\,
	datac => \inst11|temp_char_address~26_combout\,
	datad => \inst11|temp_char_address~25_combout\,
	combout => \inst11|temp_char_address~28_combout\);

-- Location: LCCOMB_X15_Y18_N4
\inst11|temp_char_address~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address~34_combout\ = (\inst11|temp_char_address[0]~33_combout\ & (\inst11|temp_char_address~28_combout\ & ((!\inst15|temp_char_address~16_combout\) # (!\inst11|temp_char_address~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|temp_char_address~29_combout\,
	datab => \inst15|temp_char_address~16_combout\,
	datac => \inst11|temp_char_address[0]~33_combout\,
	datad => \inst11|temp_char_address~28_combout\,
	combout => \inst11|temp_char_address~34_combout\);

-- Location: LCCOMB_X15_Y19_N8
\inst11|temp_char_address~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address~36_combout\ = (\inst11|temp_char_address~35_combout\ & (\inst15|temp_char_address~74_combout\ & !\inst9|BCD_ones|Q_Out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|temp_char_address~35_combout\,
	datab => \inst15|temp_char_address~74_combout\,
	datad => \inst9|BCD_ones|Q_Out\(3),
	combout => \inst11|temp_char_address~36_combout\);

-- Location: LCCOMB_X16_Y19_N16
\inst11|temp_char_address[0]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[0]~48_combout\ = (\inst9|BCD_ones|Q_Out\(0)) # ((\inst9|BCD_ones|Q_Out\(2)) # (!\inst11|temp_char_address~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|BCD_ones|Q_Out\(0),
	datac => \inst9|BCD_ones|Q_Out\(2),
	datad => \inst11|temp_char_address~36_combout\,
	combout => \inst11|temp_char_address[0]~48_combout\);

-- Location: LCCOMB_X16_Y19_N26
\inst11|temp_char_address[0]~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[0]~91_combout\ = (\inst11|temp_char_address~24_combout\ & (\inst15|temp_char_address~60_combout\ & (\inst5|temp_bird_dead~combout\ & \inst11|temp_char_address[0]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|temp_char_address~24_combout\,
	datab => \inst15|temp_char_address~60_combout\,
	datac => \inst5|temp_bird_dead~combout\,
	datad => \inst11|temp_char_address[0]~48_combout\,
	combout => \inst11|temp_char_address[0]~91_combout\);

-- Location: LCCOMB_X15_Y19_N24
\inst11|temp_char_address~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address~37_combout\ = (\inst9|BCD_ones|Q_Out\(2)) # (((!\inst11|temp_char_address~36_combout\) # (!\inst9|BCD_ones|Q_Out\(0))) # (!\inst9|BCD_ones|Q_Out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|BCD_ones|Q_Out\(2),
	datab => \inst9|BCD_ones|Q_Out\(1),
	datac => \inst9|BCD_ones|Q_Out\(0),
	datad => \inst11|temp_char_address~36_combout\,
	combout => \inst11|temp_char_address~37_combout\);

-- Location: LCCOMB_X21_Y21_N2
\inst11|temp_char_address~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address~89_combout\ = (\inst1|pixel_row\(5) & (((!\inst1|pixel_row\(4) & \inst11|LessThan55~0_combout\)) # (!\inst1|pixel_row\(6)))) # (!\inst1|pixel_row\(5) & (\inst1|pixel_row\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(4),
	datab => \inst11|LessThan55~0_combout\,
	datac => \inst1|pixel_row\(6),
	datad => \inst1|pixel_row\(5),
	combout => \inst11|temp_char_address~89_combout\);

-- Location: LCCOMB_X21_Y21_N4
\inst11|temp_char_address~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address~35_combout\ = (!\inst1|pixel_row\(8) & (\inst1|pixel_row\(6) & (!\inst1|pixel_row\(7) & \inst11|temp_char_address~89_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(8),
	datab => \inst1|pixel_row\(6),
	datac => \inst1|pixel_row\(7),
	datad => \inst11|temp_char_address~89_combout\,
	combout => \inst11|temp_char_address~35_combout\);

-- Location: LCCOMB_X14_Y18_N0
\inst11|temp_char_address~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address~40_combout\ = (\inst15|temp_char_address~70_combout\ & (\inst11|temp_char_address~35_combout\ & !\inst9|BCD_tens|Q_Out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~70_combout\,
	datac => \inst11|temp_char_address~35_combout\,
	datad => \inst9|BCD_tens|Q_Out\(3),
	combout => \inst11|temp_char_address~40_combout\);

-- Location: LCCOMB_X14_Y18_N30
\inst11|temp_char_address~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address~39_combout\ = (\inst11|temp_char_address~38_combout\ & (!\inst9|BCD_tens|Q_Out\(1) & (!\inst9|BCD_tens|Q_Out\(2) & \inst9|BCD_tens|Q_Out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|temp_char_address~38_combout\,
	datab => \inst9|BCD_tens|Q_Out\(1),
	datac => \inst9|BCD_tens|Q_Out\(2),
	datad => \inst9|BCD_tens|Q_Out\(3),
	combout => \inst11|temp_char_address~39_combout\);

-- Location: LCCOMB_X15_Y19_N28
\inst11|temp_char_address~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address~42_combout\ = (!\inst9|BCD_ones|Q_Out\(2) & !\inst9|BCD_ones|Q_Out\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|BCD_ones|Q_Out\(2),
	datad => \inst9|BCD_ones|Q_Out\(1),
	combout => \inst11|temp_char_address~42_combout\);

-- Location: LCCOMB_X14_Y19_N10
\inst11|temp_char_address[0]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[0]~43_combout\ = (((\inst9|BCD_ones|Q_Out\(0)) # (!\inst11|temp_char_address~42_combout\)) # (!\inst9|BCD_ones|Q_Out\(3))) # (!\inst11|temp_char_address~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|temp_char_address~41_combout\,
	datab => \inst9|BCD_ones|Q_Out\(3),
	datac => \inst9|BCD_ones|Q_Out\(0),
	datad => \inst11|temp_char_address~42_combout\,
	combout => \inst11|temp_char_address[0]~43_combout\);

-- Location: LCCOMB_X14_Y19_N30
\inst11|temp_char_address[0]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[0]~44_combout\ = (\inst11|temp_char_address[0]~43_combout\ & ((\inst9|BCD_tens|Q_Out\(0)) # ((!\inst11|temp_char_address~40_combout\ & !\inst11|temp_char_address~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|BCD_tens|Q_Out\(0),
	datab => \inst11|temp_char_address~40_combout\,
	datac => \inst11|temp_char_address~39_combout\,
	datad => \inst11|temp_char_address[0]~43_combout\,
	combout => \inst11|temp_char_address[0]~44_combout\);

-- Location: LCCOMB_X14_Y19_N4
\inst11|temp_char_address~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address~45_combout\ = (\inst15|temp_char_address~74_combout\ & (\inst11|temp_char_address~35_combout\ & (\inst9|BCD_ones|Q_Out\(3) & \inst6|pipe_move~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~74_combout\,
	datab => \inst11|temp_char_address~35_combout\,
	datac => \inst9|BCD_ones|Q_Out\(3),
	datad => \inst6|pipe_move~0_combout\,
	combout => \inst11|temp_char_address~45_combout\);

-- Location: LCCOMB_X14_Y19_N6
\inst11|temp_char_address[2]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[2]~46_combout\ = (\inst11|temp_char_address~45_combout\) # ((\inst9|BCD_tens|Q_Out\(0) & ((\inst11|temp_char_address~40_combout\) # (\inst11|temp_char_address~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|BCD_tens|Q_Out\(0),
	datab => \inst11|temp_char_address~40_combout\,
	datac => \inst11|temp_char_address~45_combout\,
	datad => \inst11|temp_char_address~39_combout\,
	combout => \inst11|temp_char_address[2]~46_combout\);

-- Location: LCCOMB_X14_Y19_N20
\inst11|temp_char_address[2]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[2]~47_combout\ = (\inst11|temp_char_address[2]~90_combout\ & (\inst11|temp_char_address~37_combout\ & (\inst11|temp_char_address[0]~44_combout\ & !\inst11|temp_char_address[2]~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|temp_char_address[2]~90_combout\,
	datab => \inst11|temp_char_address~37_combout\,
	datac => \inst11|temp_char_address[0]~44_combout\,
	datad => \inst11|temp_char_address[2]~46_combout\,
	combout => \inst11|temp_char_address[2]~47_combout\);

-- Location: LCCOMB_X12_Y19_N8
\inst11|temp_char_address[0]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[0]~49_combout\ = (\inst11|temp_char_address~34_combout\ & (\inst11|temp_char_address[0]~91_combout\ & \inst11|temp_char_address[2]~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|temp_char_address~34_combout\,
	datac => \inst11|temp_char_address[0]~91_combout\,
	datad => \inst11|temp_char_address[2]~47_combout\,
	combout => \inst11|temp_char_address[0]~49_combout\);

-- Location: LCCOMB_X14_Y17_N6
\inst11|temp_char_address~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address~41_combout\ = (\inst15|temp_char_address~74_combout\ & \inst11|temp_char_address~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|temp_char_address~74_combout\,
	datad => \inst11|temp_char_address~35_combout\,
	combout => \inst11|temp_char_address~41_combout\);

-- Location: LCCOMB_X15_Y19_N2
\inst11|temp_char_address~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address~53_combout\ = (!\inst9|BCD_ones|Q_Out\(0) & (\inst9|BCD_ones|Q_Out\(3) & (\inst11|temp_char_address~41_combout\ & \inst11|temp_char_address~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|BCD_ones|Q_Out\(0),
	datab => \inst9|BCD_ones|Q_Out\(3),
	datac => \inst11|temp_char_address~41_combout\,
	datad => \inst11|temp_char_address~42_combout\,
	combout => \inst11|temp_char_address~53_combout\);

-- Location: LCCOMB_X12_Y19_N20
\inst11|temp_char_address[0]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[0]~57_combout\ = (\inst9|BCD_tens|Q_Out\(0) & (!\inst9|BCD_tens|Q_Out\(2) & (!\inst11|temp_char_address~53_combout\ & \inst11|temp_char_address~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|BCD_tens|Q_Out\(0),
	datab => \inst9|BCD_tens|Q_Out\(2),
	datac => \inst11|temp_char_address~53_combout\,
	datad => \inst11|temp_char_address~40_combout\,
	combout => \inst11|temp_char_address[0]~57_combout\);

-- Location: LCCOMB_X12_Y19_N18
\inst11|temp_char_address[0]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[0]~58_combout\ = (\inst11|temp_char_address~56_combout\) # ((\inst11|temp_char_address[0]~57_combout\) # ((\inst11|temp_char_address~45_combout\ & !\inst11|temp_char_address~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|temp_char_address~56_combout\,
	datab => \inst11|temp_char_address~45_combout\,
	datac => \inst11|temp_char_address~53_combout\,
	datad => \inst11|temp_char_address[0]~57_combout\,
	combout => \inst11|temp_char_address[0]~58_combout\);

-- Location: LCCOMB_X12_Y19_N16
\inst11|temp_char_address[0]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[0]~51_combout\ = (\inst11|temp_char_address~92_combout\ & (((\inst9|BCD_tens|Q_Out\(0) & \inst11|temp_char_address~39_combout\)))) # (!\inst11|temp_char_address~92_combout\ & (((\inst9|BCD_tens|Q_Out\(0) & 
-- \inst11|temp_char_address~39_combout\)) # (!\inst11|temp_char_address~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|temp_char_address~92_combout\,
	datab => \inst11|temp_char_address~25_combout\,
	datac => \inst9|BCD_tens|Q_Out\(0),
	datad => \inst11|temp_char_address~39_combout\,
	combout => \inst11|temp_char_address[0]~51_combout\);

-- Location: LCCOMB_X12_Y19_N4
\inst11|temp_char_address[0]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[0]~54_combout\ = (\inst11|temp_char_address[0]~52_combout\ & (((\inst11|temp_char_address[0]~44_combout\ & \inst11|temp_char_address[0]~51_combout\)) # (!\inst11|temp_char_address~53_combout\))) # 
-- (!\inst11|temp_char_address[0]~52_combout\ & (((\inst11|temp_char_address[0]~44_combout\ & \inst11|temp_char_address[0]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|temp_char_address[0]~52_combout\,
	datab => \inst11|temp_char_address~53_combout\,
	datac => \inst11|temp_char_address[0]~44_combout\,
	datad => \inst11|temp_char_address[0]~51_combout\,
	combout => \inst11|temp_char_address[0]~54_combout\);

-- Location: LCCOMB_X12_Y19_N2
\inst11|temp_char_address[2]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[2]~50_combout\ = (\inst11|temp_char_address[0]~48_combout\ & ((!\inst11|temp_char_address[2]~47_combout\) # (!\inst11|temp_char_address~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|temp_char_address~34_combout\,
	datac => \inst11|temp_char_address[0]~48_combout\,
	datad => \inst11|temp_char_address[2]~47_combout\,
	combout => \inst11|temp_char_address[2]~50_combout\);

-- Location: LCCOMB_X12_Y19_N0
\inst11|temp_char_address[0]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[0]~59_combout\ = (\inst11|temp_char_address[2]~50_combout\ & ((\inst11|temp_char_address[0]~55_combout\) # ((\inst11|temp_char_address[0]~58_combout\) # (\inst11|temp_char_address[0]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|temp_char_address[0]~55_combout\,
	datab => \inst11|temp_char_address[0]~58_combout\,
	datac => \inst11|temp_char_address[0]~54_combout\,
	datad => \inst11|temp_char_address[2]~50_combout\,
	combout => \inst11|temp_char_address[0]~59_combout\);

-- Location: LCCOMB_X12_Y19_N28
\inst11|temp_char_address[0]~101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[0]~101_combout\ = (\inst11|temp_char_address[0]~49_combout\) # ((\inst11|temp_char_address[0]~100_combout\ & ((\inst9|BCD_ones|Q_Out\(0)) # (\inst11|temp_char_address[0]~59_combout\))) # 
-- (!\inst11|temp_char_address[0]~100_combout\ & (\inst9|BCD_ones|Q_Out\(0) & \inst11|temp_char_address[0]~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|temp_char_address[0]~100_combout\,
	datab => \inst9|BCD_ones|Q_Out\(0),
	datac => \inst11|temp_char_address[0]~49_combout\,
	datad => \inst11|temp_char_address[0]~59_combout\,
	combout => \inst11|temp_char_address[0]~101_combout\);

-- Location: LCCOMB_X15_Y19_N10
\inst11|temp_char_address[1]~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[1]~93_combout\ = (((\inst9|BCD_ones|Q_Out\(3)) # (!\inst11|temp_char_address~42_combout\)) # (!\inst11|temp_char_address~35_combout\)) # (!\inst15|temp_char_address~74_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~74_combout\,
	datab => \inst11|temp_char_address~35_combout\,
	datac => \inst9|BCD_ones|Q_Out\(3),
	datad => \inst11|temp_char_address~42_combout\,
	combout => \inst11|temp_char_address[1]~93_combout\);

-- Location: LCCOMB_X14_Y19_N24
\inst11|temp_char_address[4]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[4]~60_combout\ = ((!\inst11|temp_char_address[2]~47_combout\) # (!\inst11|temp_char_address~28_combout\)) # (!\inst11|temp_char_address[0]~33_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|temp_char_address[0]~33_combout\,
	datac => \inst11|temp_char_address~28_combout\,
	datad => \inst11|temp_char_address[2]~47_combout\,
	combout => \inst11|temp_char_address[4]~60_combout\);

-- Location: LCCOMB_X14_Y19_N2
\inst11|temp_char_address[1]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[1]~62_combout\ = (\inst11|temp_char_address[1]~93_combout\ & ((\inst11|temp_char_address[4]~60_combout\ & ((!\inst11|temp_char_address~37_combout\))) # (!\inst11|temp_char_address[4]~60_combout\ & 
-- (!\inst11|temp_char_address~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|temp_char_address~61_combout\,
	datab => \inst11|temp_char_address~37_combout\,
	datac => \inst11|temp_char_address[1]~93_combout\,
	datad => \inst11|temp_char_address[4]~60_combout\,
	combout => \inst11|temp_char_address[1]~62_combout\);

-- Location: LCCOMB_X15_Y19_N12
\inst11|temp_char_address[1]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[1]~63_combout\ = (\inst11|temp_char_address~36_combout\ & (\inst9|BCD_ones|Q_Out\(1) & ((\inst9|BCD_ones|Q_Out\(2)) # (!\inst9|BCD_ones|Q_Out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|temp_char_address~36_combout\,
	datab => \inst9|BCD_ones|Q_Out\(0),
	datac => \inst9|BCD_ones|Q_Out\(2),
	datad => \inst9|BCD_ones|Q_Out\(1),
	combout => \inst11|temp_char_address[1]~63_combout\);

-- Location: LCCOMB_X23_Y19_N20
\inst11|temp_char_address[4]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[4]~69_combout\ = (\inst15|temp_char_address~41_combout\ & (\inst11|temp_char_address~24_combout\ & (\inst5|temp_bird_dead~combout\ & !\inst15|temp_char_address~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~41_combout\,
	datab => \inst11|temp_char_address~24_combout\,
	datac => \inst5|temp_bird_dead~combout\,
	datad => \inst15|temp_char_address~60_combout\,
	combout => \inst11|temp_char_address[4]~69_combout\);

-- Location: LCCOMB_X15_Y19_N14
\inst11|temp_char_address~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address~96_combout\ = (((!\inst11|temp_char_address~42_combout\) # (!\inst11|temp_char_address~35_combout\)) # (!\inst9|BCD_ones|Q_Out\(3))) # (!\inst15|temp_char_address~74_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~74_combout\,
	datab => \inst9|BCD_ones|Q_Out\(3),
	datac => \inst11|temp_char_address~35_combout\,
	datad => \inst11|temp_char_address~42_combout\,
	combout => \inst11|temp_char_address~96_combout\);

-- Location: LCCOMB_X14_Y19_N8
\inst11|temp_char_address[2]~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[2]~97_combout\ = (\inst11|temp_char_address~96_combout\ & ((\inst9|BCD_tens|Q_Out\(2)) # ((\inst9|BCD_tens|Q_Out\(1)) # (!\inst11|temp_char_address~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|BCD_tens|Q_Out\(2),
	datab => \inst9|BCD_tens|Q_Out\(1),
	datac => \inst11|temp_char_address~96_combout\,
	datad => \inst11|temp_char_address~40_combout\,
	combout => \inst11|temp_char_address[2]~97_combout\);

-- Location: LCCOMB_X14_Y21_N22
\inst11|temp_char_address~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address~94_combout\ = (\inst11|temp_char_address~24_combout\ & (\sw0~input_o\ & \inst15|temp_char_address~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|temp_char_address~24_combout\,
	datac => \sw0~input_o\,
	datad => \inst15|temp_char_address~70_combout\,
	combout => \inst11|temp_char_address~94_combout\);

-- Location: LCCOMB_X15_Y18_N18
\inst11|temp_char_address[2]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[2]~64_combout\ = (\inst11|temp_char_address~25_combout\ & (!\inst11|temp_char_address~39_combout\ & ((!\inst11|temp_char_address~26_combout\) # (!\inst15|temp_char_address~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~85_combout\,
	datab => \inst11|temp_char_address~25_combout\,
	datac => \inst11|temp_char_address~26_combout\,
	datad => \inst11|temp_char_address~39_combout\,
	combout => \inst11|temp_char_address[2]~64_combout\);

-- Location: LCCOMB_X15_Y18_N0
\inst11|temp_char_address[1]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[1]~67_combout\ = (\inst11|temp_char_address[2]~64_combout\ & ((\inst11|temp_char_address[1]~66_combout\) # ((\inst11|temp_char_address~27_combout\) # (\inst11|temp_char_address~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|temp_char_address[1]~66_combout\,
	datab => \inst11|temp_char_address~27_combout\,
	datac => \inst11|temp_char_address~94_combout\,
	datad => \inst11|temp_char_address[2]~64_combout\,
	combout => \inst11|temp_char_address[1]~67_combout\);

-- Location: LCCOMB_X14_Y19_N28
\inst11|temp_char_address[1]~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[1]~95_combout\ = (\inst11|temp_char_address~40_combout\ & ((\inst9|BCD_tens|Q_Out\(1)) # ((!\inst9|BCD_tens|Q_Out\(2) & \inst11|temp_char_address[1]~67_combout\)))) # (!\inst11|temp_char_address~40_combout\ & 
-- (((\inst11|temp_char_address[1]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|BCD_tens|Q_Out\(2),
	datab => \inst11|temp_char_address~40_combout\,
	datac => \inst9|BCD_tens|Q_Out\(1),
	datad => \inst11|temp_char_address[1]~67_combout\,
	combout => \inst11|temp_char_address[1]~95_combout\);

-- Location: LCCOMB_X14_Y19_N18
\inst11|temp_char_address[1]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[1]~68_combout\ = (\inst11|temp_char_address[2]~97_combout\ & (\inst11|temp_char_address[1]~95_combout\ & ((\inst9|BCD_ones|Q_Out\(1)) # (!\inst11|temp_char_address~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|temp_char_address~36_combout\,
	datab => \inst9|BCD_ones|Q_Out\(1),
	datac => \inst11|temp_char_address[2]~97_combout\,
	datad => \inst11|temp_char_address[1]~95_combout\,
	combout => \inst11|temp_char_address[1]~68_combout\);

-- Location: LCCOMB_X14_Y19_N12
\inst11|temp_char_address[1]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[1]~70_combout\ = (\inst11|temp_char_address[4]~60_combout\ & (((\inst11|temp_char_address[1]~68_combout\)))) # (!\inst11|temp_char_address[4]~60_combout\ & (\inst11|temp_char_address[1]~93_combout\ & 
-- (\inst11|temp_char_address[4]~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|temp_char_address[1]~93_combout\,
	datab => \inst11|temp_char_address[4]~60_combout\,
	datac => \inst11|temp_char_address[4]~69_combout\,
	datad => \inst11|temp_char_address[1]~68_combout\,
	combout => \inst11|temp_char_address[1]~70_combout\);

-- Location: LCCOMB_X14_Y19_N14
\inst11|temp_char_address[1]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[1]~71_combout\ = (\inst11|temp_char_address[1]~62_combout\) # ((\inst11|temp_char_address[1]~63_combout\) # (\inst11|temp_char_address[1]~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|temp_char_address[1]~62_combout\,
	datac => \inst11|temp_char_address[1]~63_combout\,
	datad => \inst11|temp_char_address[1]~70_combout\,
	combout => \inst11|temp_char_address[1]~71_combout\);

-- Location: LCCOMB_X11_Y19_N24
\inst11|temp_char_address[2]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[2]~72_combout\ = ((\inst9|BCD_ones|Q_Out\(2)) # (!\inst11|temp_char_address~36_combout\)) # (!\inst9|BCD_ones|Q_Out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|BCD_ones|Q_Out\(0),
	datac => \inst11|temp_char_address~36_combout\,
	datad => \inst9|BCD_ones|Q_Out\(2),
	combout => \inst11|temp_char_address[2]~72_combout\);

-- Location: LCCOMB_X15_Y18_N22
\inst11|temp_char_address[2]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[2]~73_combout\ = (!\inst11|temp_char_address~94_combout\ & (\inst11|temp_char_address[2]~64_combout\ & ((\inst11|temp_char_address~31_combout\) # (!\inst11|temp_char_address[2]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|temp_char_address~94_combout\,
	datab => \inst11|temp_char_address~31_combout\,
	datac => \inst11|temp_char_address[2]~30_combout\,
	datad => \inst11|temp_char_address[2]~64_combout\,
	combout => \inst11|temp_char_address[2]~73_combout\);

-- Location: LCCOMB_X12_Y19_N26
\inst11|temp_char_address[2]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[2]~74_combout\ = (!\inst11|temp_char_address~92_combout\ & (\inst11|temp_char_address~25_combout\ & (\inst11|temp_char_address~27_combout\ & !\inst11|temp_char_address~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|temp_char_address~92_combout\,
	datab => \inst11|temp_char_address~25_combout\,
	datac => \inst11|temp_char_address~27_combout\,
	datad => \inst11|temp_char_address~39_combout\,
	combout => \inst11|temp_char_address[2]~74_combout\);

-- Location: LCCOMB_X12_Y19_N24
\inst11|temp_char_address[2]~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[2]~98_combout\ = (!\inst9|BCD_tens|Q_Out\(2) & ((\inst9|BCD_tens|Q_Out\(1)) # ((!\inst11|temp_char_address[2]~74_combout\ & !\inst11|temp_char_address[2]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|BCD_tens|Q_Out\(2),
	datab => \inst9|BCD_tens|Q_Out\(1),
	datac => \inst11|temp_char_address[2]~74_combout\,
	datad => \inst11|temp_char_address[2]~73_combout\,
	combout => \inst11|temp_char_address[2]~98_combout\);

-- Location: LCCOMB_X12_Y19_N6
\inst11|temp_char_address[2]~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[2]~99_combout\ = (\inst11|temp_char_address~40_combout\ & (((\inst11|temp_char_address[2]~98_combout\)))) # (!\inst11|temp_char_address~40_combout\ & (!\inst11|temp_char_address[2]~74_combout\ & 
-- (!\inst11|temp_char_address[2]~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|temp_char_address[2]~74_combout\,
	datab => \inst11|temp_char_address~40_combout\,
	datac => \inst11|temp_char_address[2]~73_combout\,
	datad => \inst11|temp_char_address[2]~98_combout\,
	combout => \inst11|temp_char_address[2]~99_combout\);

-- Location: LCCOMB_X12_Y19_N12
\inst11|temp_char_address[2]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[2]~75_combout\ = (\inst11|temp_char_address[2]~72_combout\ & (((\inst11|temp_char_address[2]~97_combout\ & !\inst11|temp_char_address[2]~99_combout\)) # (!\inst11|temp_char_address[2]~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|temp_char_address[2]~90_combout\,
	datab => \inst11|temp_char_address[2]~72_combout\,
	datac => \inst11|temp_char_address[2]~97_combout\,
	datad => \inst11|temp_char_address[2]~99_combout\,
	combout => \inst11|temp_char_address[2]~75_combout\);

-- Location: LCCOMB_X12_Y19_N10
\inst11|temp_char_address[2]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[2]~77_combout\ = (\inst11|temp_char_address~76_combout\ & (\inst11|temp_char_address[2]~50_combout\ & ((\inst11|temp_char_address[2]~75_combout\)))) # (!\inst11|temp_char_address~76_combout\ & 
-- ((\inst11|temp_char_address[0]~49_combout\) # ((\inst11|temp_char_address[2]~50_combout\ & \inst11|temp_char_address[2]~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|temp_char_address~76_combout\,
	datab => \inst11|temp_char_address[2]~50_combout\,
	datac => \inst11|temp_char_address[0]~49_combout\,
	datad => \inst11|temp_char_address[2]~75_combout\,
	combout => \inst11|temp_char_address[2]~77_combout\);

-- Location: LCCOMB_X15_Y18_N16
\inst11|temp_char_address~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address~79_combout\ = (\inst11|temp_char_address~39_combout\) # ((\inst11|temp_char_address~78_combout\ & (\inst11|temp_char_address[0]~32_combout\ & \inst11|temp_char_address~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|temp_char_address~78_combout\,
	datab => \inst11|temp_char_address~39_combout\,
	datac => \inst11|temp_char_address[0]~32_combout\,
	datad => \inst11|temp_char_address~28_combout\,
	combout => \inst11|temp_char_address~79_combout\);

-- Location: LCCOMB_X16_Y19_N28
\inst11|temp_char_address[3]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[3]~80_combout\ = (!\inst11|temp_char_address~36_combout\ & (((\inst11|temp_char_address~79_combout\ & !\inst11|temp_char_address~40_combout\)) # (!\inst11|temp_char_address~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|temp_char_address~36_combout\,
	datab => \inst11|temp_char_address~96_combout\,
	datac => \inst11|temp_char_address~79_combout\,
	datad => \inst11|temp_char_address~40_combout\,
	combout => \inst11|temp_char_address[3]~80_combout\);

-- Location: LCCOMB_X14_Y17_N0
\inst11|temp_char_address[4]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[4]~82_combout\ = (!\inst15|temp_char_address~80_combout\ & (\inst11|temp_char_address~26_combout\ & ((\inst15|temp_char_address~79_combout\) # (\inst15|temp_char_address~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~80_combout\,
	datab => \inst15|temp_char_address~79_combout\,
	datac => \inst15|temp_char_address~70_combout\,
	datad => \inst11|temp_char_address~26_combout\,
	combout => \inst11|temp_char_address[4]~82_combout\);

-- Location: LCCOMB_X19_Y21_N4
\inst11|temp_char_address~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address~92_combout\ = (\inst15|temp_char_address~85_combout\ & (\sw0~input_o\ & \inst11|temp_char_address~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|temp_char_address~85_combout\,
	datac => \sw0~input_o\,
	datad => \inst11|temp_char_address~24_combout\,
	combout => \inst11|temp_char_address~92_combout\);

-- Location: LCCOMB_X15_Y19_N20
\inst11|temp_char_address[5]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[5]~81_combout\ = (\inst9|BCD_ones|Q_Out\(2)) # (((\inst9|BCD_ones|Q_Out\(1) & \inst9|BCD_ones|Q_Out\(0))) # (!\inst11|temp_char_address~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|BCD_ones|Q_Out\(2),
	datab => \inst9|BCD_ones|Q_Out\(1),
	datac => \inst9|BCD_ones|Q_Out\(0),
	datad => \inst11|temp_char_address~36_combout\,
	combout => \inst11|temp_char_address[5]~81_combout\);

-- Location: LCCOMB_X14_Y17_N18
\inst11|temp_char_address[4]~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[4]~83_combout\ = (\inst11|temp_char_address[4]~82_combout\) # ((\inst11|temp_char_address~92_combout\) # (!\inst11|temp_char_address[5]~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|temp_char_address[4]~82_combout\,
	datac => \inst11|temp_char_address~92_combout\,
	datad => \inst11|temp_char_address[5]~81_combout\,
	combout => \inst11|temp_char_address[4]~83_combout\);

-- Location: LCCOMB_X15_Y19_N6
\inst11|temp_char_address[4]~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[4]~85_combout\ = (\inst11|temp_char_address[4]~60_combout\ & (((\inst11|temp_char_address[4]~83_combout\) # (!\inst11|temp_char_address[2]~47_combout\)))) # (!\inst11|temp_char_address[4]~60_combout\ & 
-- (\inst11|temp_char_address[4]~84_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|temp_char_address[4]~84_combout\,
	datab => \inst11|temp_char_address[2]~47_combout\,
	datac => \inst11|temp_char_address[4]~83_combout\,
	datad => \inst11|temp_char_address[4]~60_combout\,
	combout => \inst11|temp_char_address[4]~85_combout\);

-- Location: LCCOMB_X16_Y19_N18
\inst11|temp_char_address~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address~86_combout\ = (((!\inst15|temp_char_address~60_combout\ & !\inst15|temp_char_address~41_combout\)) # (!\inst11|temp_char_address~24_combout\)) # (!\inst5|temp_bird_dead~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|temp_bird_dead~combout\,
	datab => \inst15|temp_char_address~60_combout\,
	datac => \inst11|temp_char_address~24_combout\,
	datad => \inst15|temp_char_address~41_combout\,
	combout => \inst11|temp_char_address~86_combout\);

-- Location: LCCOMB_X14_Y19_N16
\inst11|temp_char_address[5]~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[5]~87_combout\ = (((\inst11|temp_char_address~86_combout\ & \inst11|temp_char_address~34_combout\)) # (!\inst11|temp_char_address[2]~47_combout\)) # (!\inst11|temp_char_address[5]~81_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|temp_char_address[5]~81_combout\,
	datab => \inst11|temp_char_address[2]~47_combout\,
	datac => \inst11|temp_char_address~86_combout\,
	datad => \inst11|temp_char_address~34_combout\,
	combout => \inst11|temp_char_address[5]~87_combout\);

-- Location: LCCOMB_X24_Y23_N10
\inst11|display|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|display|Mux0~0_combout\ = (\inst1|pixel_column\(1) & ((\inst11|display|altsyncram_component|auto_generated|q_a\(2)) # ((\inst1|pixel_column\(2))))) # (!\inst1|pixel_column\(1) & (((!\inst1|pixel_column\(2) & 
-- \inst11|display|altsyncram_component|auto_generated|q_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(1),
	datab => \inst11|display|altsyncram_component|auto_generated|q_a\(2),
	datac => \inst1|pixel_column\(2),
	datad => \inst11|display|altsyncram_component|auto_generated|q_a\(3),
	combout => \inst11|display|Mux0~0_combout\);

-- Location: LCCOMB_X24_Y23_N0
\inst11|display|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|display|Mux0~1_combout\ = (\inst1|pixel_column\(2) & ((\inst11|display|Mux0~0_combout\ & (\inst11|display|altsyncram_component|auto_generated|q_a\(0))) # (!\inst11|display|Mux0~0_combout\ & 
-- ((\inst11|display|altsyncram_component|auto_generated|q_a\(1)))))) # (!\inst1|pixel_column\(2) & (((\inst11|display|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|display|altsyncram_component|auto_generated|q_a\(0),
	datab => \inst1|pixel_column\(2),
	datac => \inst11|display|altsyncram_component|auto_generated|q_a\(1),
	datad => \inst11|display|Mux0~0_combout\,
	combout => \inst11|display|Mux0~1_combout\);

-- Location: LCCOMB_X20_Y19_N2
\inst5|bird_on~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_on~2_combout\ = ((\inst5|bird_on~1_combout\ & !\inst1|pixel_column\(7))) # (!\inst1|pixel_column\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_on~1_combout\,
	datac => \inst1|pixel_column\(7),
	datad => \inst1|pixel_column\(8),
	combout => \inst5|bird_on~2_combout\);

-- Location: LCCOMB_X20_Y19_N10
\inst5|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add0~1_cout\ = CARRY((\inst1|pixel_column\(4) & \inst1|pixel_column\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(4),
	datab => \inst1|pixel_column\(3),
	datad => VCC,
	cout => \inst5|Add0~1_cout\);

-- Location: LCCOMB_X20_Y19_N12
\inst5|Add0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add0~3_cout\ = CARRY((!\inst5|Add0~1_cout\) # (!\inst1|pixel_column\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pixel_column\(5),
	datad => VCC,
	cin => \inst5|Add0~1_cout\,
	cout => \inst5|Add0~3_cout\);

-- Location: LCCOMB_X20_Y19_N22
\inst5|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add0~12_combout\ = !\inst5|Add0~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst5|Add0~11\,
	combout => \inst5|Add0~12_combout\);

-- Location: LCCOMB_X20_Y19_N0
\inst1|red_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|red_out~0_combout\ = (\inst5|bird_on~4_combout\ & (\inst5|bird_on~2_combout\ & (!\inst5|Add0~12_combout\ & !\inst1|pixel_column\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_on~4_combout\,
	datab => \inst5|bird_on~2_combout\,
	datac => \inst5|Add0~12_combout\,
	datad => \inst1|pixel_column\(9),
	combout => \inst1|red_out~0_combout\);

-- Location: LCCOMB_X20_Y21_N6
\inst5|Add2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add2~5_combout\ = \inst1|pixel_row\(5) $ (((\inst1|pixel_row\(3) & \inst1|pixel_row\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pixel_row\(3),
	datac => \inst1|pixel_row\(4),
	datad => \inst1|pixel_row\(5),
	combout => \inst5|Add2~5_combout\);

-- Location: LCCOMB_X20_Y25_N16
\inst5|bird_y_pos~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_y_pos~70_combout\ = (\inst5|bird_y_pos[0]~38_combout\ & ((\sw2~input_o\) # (!\inst5|temp_bird_dead~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw2~input_o\,
	datac => \inst5|bird_y_pos[0]~38_combout\,
	datad => \inst5|temp_bird_dead~combout\,
	combout => \inst5|bird_y_pos~70_combout\);

-- Location: LCCOMB_X20_Y25_N0
\inst5|bird_y_pos[0]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_y_pos[0]~37_combout\ = (GLOBAL(\inst5|Move_Bird~0clkctrl_outclk\) & ((\inst5|bird_y_pos[0]~37_combout\))) # (!GLOBAL(\inst5|Move_Bird~0clkctrl_outclk\) & (\inst5|bird_y_pos~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|bird_y_pos~70_combout\,
	datac => \inst5|bird_y_pos[0]~37_combout\,
	datad => \inst5|Move_Bird~0clkctrl_outclk\,
	combout => \inst5|bird_y_pos[0]~37_combout\);

-- Location: LCCOMB_X20_Y25_N8
\inst5|bird_y_pos[0]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_y_pos[0]~39_combout\ = \inst5|bird_y_pos[0]~37_combout\ $ (\inst5|Add4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|bird_y_pos[0]~37_combout\,
	datad => \inst5|Add4~0_combout\,
	combout => \inst5|bird_y_pos[0]~39_combout\);

-- Location: FF_X20_Y25_N9
\inst5|bird_y_pos[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|vert_sync_out~clkctrl_outclk\,
	d => \inst5|bird_y_pos[0]~39_combout\,
	clrn => \inst5|Move_Bird~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|bird_y_pos[0]~_emulated_q\);

-- Location: LCCOMB_X20_Y25_N26
\inst5|bird_y_pos[0]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_y_pos[0]~38_combout\ = (\inst5|Move_Bird~0_combout\ & ((\inst5|bird_y_pos[0]~_emulated_q\ $ (\inst5|bird_y_pos[0]~37_combout\)))) # (!\inst5|Move_Bird~0_combout\ & (\inst5|bird_y_pos~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_pos~70_combout\,
	datab => \inst5|Move_Bird~0_combout\,
	datac => \inst5|bird_y_pos[0]~_emulated_q\,
	datad => \inst5|bird_y_pos[0]~37_combout\,
	combout => \inst5|bird_y_pos[0]~38_combout\);

-- Location: LCCOMB_X21_Y25_N12
\inst5|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~1_cout\ = CARRY((!\inst1|pixel_row\(0) & \inst5|bird_y_pos[0]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(0),
	datab => \inst5|bird_y_pos[0]~38_combout\,
	datad => VCC,
	cout => \inst5|LessThan2~1_cout\);

-- Location: LCCOMB_X21_Y25_N14
\inst5|LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~3_cout\ = CARRY((\inst5|bird_y_pos[1]~34_combout\ & (\inst1|pixel_row\(1) & !\inst5|LessThan2~1_cout\)) # (!\inst5|bird_y_pos[1]~34_combout\ & ((\inst1|pixel_row\(1)) # (!\inst5|LessThan2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_pos[1]~34_combout\,
	datab => \inst1|pixel_row\(1),
	datad => VCC,
	cin => \inst5|LessThan2~1_cout\,
	cout => \inst5|LessThan2~3_cout\);

-- Location: LCCOMB_X21_Y25_N16
\inst5|LessThan2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~5_cout\ = CARRY((\inst5|bird_y_pos[2]~30_combout\ & ((!\inst5|LessThan2~3_cout\) # (!\inst1|pixel_row\(2)))) # (!\inst5|bird_y_pos[2]~30_combout\ & (!\inst1|pixel_row\(2) & !\inst5|LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_pos[2]~30_combout\,
	datab => \inst1|pixel_row\(2),
	datad => VCC,
	cin => \inst5|LessThan2~3_cout\,
	cout => \inst5|LessThan2~5_cout\);

-- Location: LCCOMB_X21_Y25_N18
\inst5|LessThan2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~7_cout\ = CARRY((\inst5|bird_y_pos[3]~26_combout\ & (!\inst1|pixel_row\(3) & !\inst5|LessThan2~5_cout\)) # (!\inst5|bird_y_pos[3]~26_combout\ & ((!\inst5|LessThan2~5_cout\) # (!\inst1|pixel_row\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_pos[3]~26_combout\,
	datab => \inst1|pixel_row\(3),
	datad => VCC,
	cin => \inst5|LessThan2~5_cout\,
	cout => \inst5|LessThan2~7_cout\);

-- Location: LCCOMB_X21_Y25_N20
\inst5|LessThan2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~9_cout\ = CARRY((\inst5|Add2~6_combout\ & (\inst5|bird_y_pos[4]~22_combout\ & !\inst5|LessThan2~7_cout\)) # (!\inst5|Add2~6_combout\ & ((\inst5|bird_y_pos[4]~22_combout\) # (!\inst5|LessThan2~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add2~6_combout\,
	datab => \inst5|bird_y_pos[4]~22_combout\,
	datad => VCC,
	cin => \inst5|LessThan2~7_cout\,
	cout => \inst5|LessThan2~9_cout\);

-- Location: LCCOMB_X21_Y25_N22
\inst5|LessThan2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~11_cout\ = CARRY((\inst5|bird_y_pos[5]~18_combout\ & (\inst5|Add2~5_combout\ & !\inst5|LessThan2~9_cout\)) # (!\inst5|bird_y_pos[5]~18_combout\ & ((\inst5|Add2~5_combout\) # (!\inst5|LessThan2~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_pos[5]~18_combout\,
	datab => \inst5|Add2~5_combout\,
	datad => VCC,
	cin => \inst5|LessThan2~9_cout\,
	cout => \inst5|LessThan2~11_cout\);

-- Location: LCCOMB_X21_Y25_N24
\inst5|LessThan2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~13_cout\ = CARRY((\inst5|Add2~4_combout\ & (\inst5|bird_y_pos[6]~14_combout\ & !\inst5|LessThan2~11_cout\)) # (!\inst5|Add2~4_combout\ & ((\inst5|bird_y_pos[6]~14_combout\) # (!\inst5|LessThan2~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add2~4_combout\,
	datab => \inst5|bird_y_pos[6]~14_combout\,
	datad => VCC,
	cin => \inst5|LessThan2~11_cout\,
	cout => \inst5|LessThan2~13_cout\);

-- Location: LCCOMB_X21_Y25_N26
\inst5|LessThan2~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~15_cout\ = CARRY((\inst5|bird_y_pos[7]~10_combout\ & (\inst5|Add2~3_combout\ & !\inst5|LessThan2~13_cout\)) # (!\inst5|bird_y_pos[7]~10_combout\ & ((\inst5|Add2~3_combout\) # (!\inst5|LessThan2~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_pos[7]~10_combout\,
	datab => \inst5|Add2~3_combout\,
	datad => VCC,
	cin => \inst5|LessThan2~13_cout\,
	cout => \inst5|LessThan2~15_cout\);

-- Location: LCCOMB_X21_Y25_N28
\inst5|LessThan2~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~17_cout\ = CARRY((\inst5|Add2~2_combout\ & (\inst5|bird_y_pos[8]~6_combout\ & !\inst5|LessThan2~15_cout\)) # (!\inst5|Add2~2_combout\ & ((\inst5|bird_y_pos[8]~6_combout\) # (!\inst5|LessThan2~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add2~2_combout\,
	datab => \inst5|bird_y_pos[8]~6_combout\,
	datad => VCC,
	cin => \inst5|LessThan2~15_cout\,
	cout => \inst5|LessThan2~17_cout\);

-- Location: LCCOMB_X21_Y25_N30
\inst5|LessThan2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~18_combout\ = (\inst5|Add2~1_combout\ & (\inst5|LessThan2~17_cout\ & \inst5|bird_y_pos[9]~2_combout\)) # (!\inst5|Add2~1_combout\ & ((\inst5|LessThan2~17_cout\) # (\inst5|bird_y_pos[9]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add2~1_combout\,
	datad => \inst5|bird_y_pos[9]~2_combout\,
	cin => \inst5|LessThan2~17_cout\,
	combout => \inst5|LessThan2~18_combout\);

-- Location: LCCOMB_X16_Y24_N0
\inst5|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add3~0_combout\ = (\inst5|bird_y_pos[3]~26_combout\ & (\inst5|bird_y_pos[4]~22_combout\ $ (VCC))) # (!\inst5|bird_y_pos[3]~26_combout\ & (\inst5|bird_y_pos[4]~22_combout\ & VCC))
-- \inst5|Add3~1\ = CARRY((\inst5|bird_y_pos[3]~26_combout\ & \inst5|bird_y_pos[4]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_pos[3]~26_combout\,
	datab => \inst5|bird_y_pos[4]~22_combout\,
	datad => VCC,
	combout => \inst5|Add3~0_combout\,
	cout => \inst5|Add3~1\);

-- Location: LCCOMB_X16_Y24_N2
\inst5|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add3~2_combout\ = (\inst5|bird_y_pos[5]~18_combout\ & (!\inst5|Add3~1\)) # (!\inst5|bird_y_pos[5]~18_combout\ & ((\inst5|Add3~1\) # (GND)))
-- \inst5|Add3~3\ = CARRY((!\inst5|Add3~1\) # (!\inst5|bird_y_pos[5]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_pos[5]~18_combout\,
	datad => VCC,
	cin => \inst5|Add3~1\,
	combout => \inst5|Add3~2_combout\,
	cout => \inst5|Add3~3\);

-- Location: LCCOMB_X16_Y24_N4
\inst5|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add3~4_combout\ = (\inst5|bird_y_pos[6]~14_combout\ & (\inst5|Add3~3\ $ (GND))) # (!\inst5|bird_y_pos[6]~14_combout\ & (!\inst5|Add3~3\ & VCC))
-- \inst5|Add3~5\ = CARRY((\inst5|bird_y_pos[6]~14_combout\ & !\inst5|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|bird_y_pos[6]~14_combout\,
	datad => VCC,
	cin => \inst5|Add3~3\,
	combout => \inst5|Add3~4_combout\,
	cout => \inst5|Add3~5\);

-- Location: LCCOMB_X16_Y24_N14
\inst5|LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~1_cout\ = CARRY((!\inst5|bird_y_pos[0]~38_combout\ & \inst1|pixel_row\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_pos[0]~38_combout\,
	datab => \inst1|pixel_row\(0),
	datad => VCC,
	cout => \inst5|LessThan3~1_cout\);

-- Location: LCCOMB_X16_Y24_N16
\inst5|LessThan3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~3_cout\ = CARRY((\inst1|pixel_row\(1) & (\inst5|bird_y_pos[1]~34_combout\ & !\inst5|LessThan3~1_cout\)) # (!\inst1|pixel_row\(1) & ((\inst5|bird_y_pos[1]~34_combout\) # (!\inst5|LessThan3~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(1),
	datab => \inst5|bird_y_pos[1]~34_combout\,
	datad => VCC,
	cin => \inst5|LessThan3~1_cout\,
	cout => \inst5|LessThan3~3_cout\);

-- Location: LCCOMB_X16_Y24_N18
\inst5|LessThan3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~5_cout\ = CARRY((\inst1|pixel_row\(2) & ((!\inst5|LessThan3~3_cout\) # (!\inst5|bird_y_pos[2]~30_combout\))) # (!\inst1|pixel_row\(2) & (!\inst5|bird_y_pos[2]~30_combout\ & !\inst5|LessThan3~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(2),
	datab => \inst5|bird_y_pos[2]~30_combout\,
	datad => VCC,
	cin => \inst5|LessThan3~3_cout\,
	cout => \inst5|LessThan3~5_cout\);

-- Location: LCCOMB_X16_Y24_N20
\inst5|LessThan3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~7_cout\ = CARRY((\inst5|bird_y_pos[3]~26_combout\ & (!\inst1|pixel_row\(3) & !\inst5|LessThan3~5_cout\)) # (!\inst5|bird_y_pos[3]~26_combout\ & ((!\inst5|LessThan3~5_cout\) # (!\inst1|pixel_row\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_pos[3]~26_combout\,
	datab => \inst1|pixel_row\(3),
	datad => VCC,
	cin => \inst5|LessThan3~5_cout\,
	cout => \inst5|LessThan3~7_cout\);

-- Location: LCCOMB_X16_Y24_N22
\inst5|LessThan3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~9_cout\ = CARRY((\inst1|pixel_row\(4) & ((!\inst5|LessThan3~7_cout\) # (!\inst5|Add3~0_combout\))) # (!\inst1|pixel_row\(4) & (!\inst5|Add3~0_combout\ & !\inst5|LessThan3~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(4),
	datab => \inst5|Add3~0_combout\,
	datad => VCC,
	cin => \inst5|LessThan3~7_cout\,
	cout => \inst5|LessThan3~9_cout\);

-- Location: LCCOMB_X16_Y24_N24
\inst5|LessThan3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~11_cout\ = CARRY((\inst1|pixel_row\(5) & (\inst5|Add3~2_combout\ & !\inst5|LessThan3~9_cout\)) # (!\inst1|pixel_row\(5) & ((\inst5|Add3~2_combout\) # (!\inst5|LessThan3~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(5),
	datab => \inst5|Add3~2_combout\,
	datad => VCC,
	cin => \inst5|LessThan3~9_cout\,
	cout => \inst5|LessThan3~11_cout\);

-- Location: LCCOMB_X16_Y24_N26
\inst5|LessThan3~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~13_cout\ = CARRY((\inst1|pixel_row\(6) & ((!\inst5|LessThan3~11_cout\) # (!\inst5|Add3~4_combout\))) # (!\inst1|pixel_row\(6) & (!\inst5|Add3~4_combout\ & !\inst5|LessThan3~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(6),
	datab => \inst5|Add3~4_combout\,
	datad => VCC,
	cin => \inst5|LessThan3~11_cout\,
	cout => \inst5|LessThan3~13_cout\);

-- Location: LCCOMB_X16_Y24_N28
\inst5|LessThan3~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~15_cout\ = CARRY((\inst5|Add3~6_combout\ & ((!\inst5|LessThan3~13_cout\) # (!\inst1|pixel_row\(7)))) # (!\inst5|Add3~6_combout\ & (!\inst1|pixel_row\(7) & !\inst5|LessThan3~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add3~6_combout\,
	datab => \inst1|pixel_row\(7),
	datad => VCC,
	cin => \inst5|LessThan3~13_cout\,
	cout => \inst5|LessThan3~15_cout\);

-- Location: LCCOMB_X16_Y24_N30
\inst5|LessThan3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~16_combout\ = (\inst1|pixel_row\(8) & ((!\inst5|Add3~8_combout\) # (!\inst5|LessThan3~15_cout\))) # (!\inst1|pixel_row\(8) & (!\inst5|LessThan3~15_cout\ & !\inst5|Add3~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(8),
	datad => \inst5|Add3~8_combout\,
	cin => \inst5|LessThan3~15_cout\,
	combout => \inst5|LessThan3~16_combout\);

-- Location: LCCOMB_X17_Y24_N10
\inst1|red_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|red_out~1_combout\ = (!\inst5|Add3~10_combout\ & (\inst1|red_out~0_combout\ & (!\inst5|LessThan2~18_combout\ & !\inst5|LessThan3~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add3~10_combout\,
	datab => \inst1|red_out~0_combout\,
	datac => \inst5|LessThan2~18_combout\,
	datad => \inst5|LessThan3~16_combout\,
	combout => \inst1|red_out~1_combout\);

-- Location: LCCOMB_X17_Y24_N28
\inst1|red_out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|red_out~2_combout\ = (\inst1|red_out~1_combout\) # ((\inst1|pixel_column\(3) & ((\inst11|display|Mux0~1_combout\))) # (!\inst1|pixel_column\(3) & (\inst11|display|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|display|Mux0~3_combout\,
	datab => \inst11|display|Mux0~1_combout\,
	datac => \inst1|pixel_column\(3),
	datad => \inst1|red_out~1_combout\,
	combout => \inst1|red_out~2_combout\);

-- Location: LCCOMB_X17_Y24_N0
\inst1|red_out~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|red_out~3_combout\ = (\inst1|video_on~combout\ & ((\inst7|red~0_combout\) # ((\sw2~input_o\ & \inst1|red_out~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw2~input_o\,
	datab => \inst1|video_on~combout\,
	datac => \inst7|red~0_combout\,
	datad => \inst1|red_out~2_combout\,
	combout => \inst1|red_out~3_combout\);

-- Location: FF_X17_Y24_N1
\inst1|red_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|red_out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|red_out~q\);

-- Location: LCCOMB_X22_Y21_N28
\inst1|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~0_combout\ = ((\inst1|v_count\(1) $ (!\inst1|v_count\(0))) # (!\inst1|v_count\(3))) # (!\inst1|v_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(2),
	datab => \inst1|v_count\(3),
	datac => \inst1|v_count\(1),
	datad => \inst1|v_count\(0),
	combout => \inst1|process_0~0_combout\);

-- Location: LCCOMB_X22_Y20_N2
\inst1|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~1_combout\ = ((\inst1|v_count\(9)) # ((\inst1|process_0~0_combout\) # (\inst1|v_count\(4)))) # (!\inst1|LessThan7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan7~0_combout\,
	datab => \inst1|v_count\(9),
	datac => \inst1|process_0~0_combout\,
	datad => \inst1|v_count\(4),
	combout => \inst1|process_0~1_combout\);

-- Location: FF_X22_Y20_N3
\inst1|vert_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|vert_sync~q\);

-- Location: FF_X22_Y4_N27
\inst1|vert_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|vert_sync~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|vert_sync_out~q\);

-- Location: LCCOMB_X20_Y19_N28
\inst11|display|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|display|Mux0~2_combout\ = (\inst1|pixel_column\(2) & (((\inst1|pixel_column\(1))))) # (!\inst1|pixel_column\(2) & ((\inst1|pixel_column\(1) & (\inst11|display|altsyncram_component|auto_generated|q_a\(6))) # (!\inst1|pixel_column\(1) & 
-- ((\inst11|display|altsyncram_component|auto_generated|q_a\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|display|altsyncram_component|auto_generated|q_a\(6),
	datab => \inst1|pixel_column\(2),
	datac => \inst1|pixel_column\(1),
	datad => \inst11|display|altsyncram_component|auto_generated|q_a\(7),
	combout => \inst11|display|Mux0~2_combout\);

-- Location: LCCOMB_X17_Y23_N0
\inst11|display|Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|display|Mux0~3_combout\ = (\inst1|pixel_column\(2) & ((\inst11|display|Mux0~2_combout\ & (\inst11|display|altsyncram_component|auto_generated|q_a\(4))) # (!\inst11|display|Mux0~2_combout\ & 
-- ((\inst11|display|altsyncram_component|auto_generated|q_a\(5)))))) # (!\inst1|pixel_column\(2) & (((\inst11|display|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|display|altsyncram_component|auto_generated|q_a\(4),
	datab => \inst1|pixel_column\(2),
	datac => \inst11|display|Mux0~2_combout\,
	datad => \inst11|display|altsyncram_component|auto_generated|q_a\(5),
	combout => \inst11|display|Mux0~3_combout\);

-- Location: LCCOMB_X17_Y24_N14
\inst1|green_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|green_out~0_combout\ = (\sw2~input_o\ & ((\inst1|pixel_column\(3) & (\inst11|display|Mux0~1_combout\)) # (!\inst1|pixel_column\(3) & ((\inst11|display|Mux0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw2~input_o\,
	datab => \inst11|display|Mux0~1_combout\,
	datac => \inst1|pixel_column\(3),
	datad => \inst11|display|Mux0~3_combout\,
	combout => \inst1|green_out~0_combout\);

-- Location: LCCOMB_X17_Y24_N8
\inst1|green_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|green_out~1_combout\ = (\inst1|green_out~0_combout\) # (\inst7|red~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|green_out~0_combout\,
	datac => \inst7|red~0_combout\,
	combout => \inst1|green_out~1_combout\);

-- Location: LCCOMB_X17_Y24_N18
\inst5|bird_on~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_on~5_combout\ = (!\inst5|Add3~10_combout\ & (\inst1|red_out~0_combout\ & (!\inst5|LessThan2~18_combout\ & !\inst5|LessThan3~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add3~10_combout\,
	datab => \inst1|red_out~0_combout\,
	datac => \inst5|LessThan2~18_combout\,
	datad => \inst5|LessThan3~16_combout\,
	combout => \inst5|bird_on~5_combout\);

-- Location: LCCOMB_X17_Y24_N16
\inst1|green_out~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|green_out~15_combout\ = (\inst1|video_on~combout\ & ((\inst1|green_out~1_combout\) # ((\inst1|green_out~14_combout\ & !\inst5|bird_on~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|green_out~14_combout\,
	datab => \inst1|video_on~combout\,
	datac => \inst1|green_out~1_combout\,
	datad => \inst5|bird_on~5_combout\,
	combout => \inst1|green_out~15_combout\);

-- Location: LCCOMB_X17_Y24_N22
\inst1|green_out~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|green_out~feeder_combout\ = \inst1|green_out~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|green_out~15_combout\,
	combout => \inst1|green_out~feeder_combout\);

-- Location: FF_X17_Y24_N23
\inst1|green_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|green_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|green_out~q\);

-- Location: FF_X17_Y24_N17
\inst1|blue_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|green_out~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|blue_out~q\);

-- Location: LCCOMB_X22_Y20_N16
\inst1|process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~3_combout\ = (\inst1|h_count\(2)) # ((\inst1|h_count\(0) & (!\inst1|h_count\(5) & \inst1|h_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(2),
	datab => \inst1|h_count\(0),
	datac => \inst1|h_count\(5),
	datad => \inst1|h_count\(1),
	combout => \inst1|process_0~3_combout\);

-- Location: LCCOMB_X22_Y20_N22
\inst1|process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~4_combout\ = (\inst1|h_count\(4) & ((\inst1|h_count\(3)) # (\inst1|process_0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|h_count\(3),
	datac => \inst1|h_count\(4),
	datad => \inst1|process_0~3_combout\,
	combout => \inst1|process_0~4_combout\);

-- Location: LCCOMB_X22_Y20_N20
\inst1|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~2_combout\ = (\inst1|h_count\(9) & (\inst1|h_count\(7) & !\inst1|h_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(9),
	datab => \inst1|h_count\(7),
	datad => \inst1|h_count\(8),
	combout => \inst1|process_0~2_combout\);

-- Location: LCCOMB_X22_Y20_N26
\inst1|process_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~5_combout\ = ((\inst1|h_count\(5) & (\inst1|process_0~4_combout\ & \inst1|h_count\(6))) # (!\inst1|h_count\(5) & (!\inst1|process_0~4_combout\ & !\inst1|h_count\(6)))) # (!\inst1|process_0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(5),
	datab => \inst1|process_0~4_combout\,
	datac => \inst1|h_count\(6),
	datad => \inst1|process_0~2_combout\,
	combout => \inst1|process_0~5_combout\);

-- Location: FF_X22_Y20_N27
\inst1|horiz_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|process_0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|horiz_sync~q\);

-- Location: FF_X22_Y20_N21
\inst1|horiz_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|horiz_sync~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|horiz_sync_out~q\);
END structure;


