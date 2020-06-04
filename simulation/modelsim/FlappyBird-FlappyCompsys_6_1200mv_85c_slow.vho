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
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "06/04/2020 15:14:32"

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
	green_out : OUT std_logic;
	blue_out : OUT std_logic;
	horiz_sync_out : OUT std_logic;
	seg0_dec : OUT std_logic;
	seg1_dec : OUT std_logic;
	seg3_dec : OUT std_logic;
	seg0 : OUT std_logic_vector(6 DOWNTO 0);
	seg1 : OUT std_logic_vector(6 DOWNTO 0);
	seg3 : OUT std_logic_vector(6 DOWNTO 0)
	);
END \FlappyBird-FlappyCompsys\;

-- Design Ports Information
-- red_out	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vert_sync_out	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_out	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue_out	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horiz_sync_out	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0_dec	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1_dec	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg3_dec	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg3[6]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg3[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg3[4]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg3[3]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg3[2]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg3[1]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg3[0]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mouse_data	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mouse_clk	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw0	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_green_out : std_logic;
SIGNAL ww_blue_out : std_logic;
SIGNAL ww_horiz_sync_out : std_logic;
SIGNAL ww_seg0_dec : std_logic;
SIGNAL ww_seg1_dec : std_logic;
SIGNAL ww_seg3_dec : std_logic;
SIGNAL ww_seg0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg3 : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst11|display|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst11|display|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst1|vert_sync_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|MOUSE_CLK_FILTER~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \inst5|Add0~6_combout\ : std_logic;
SIGNAL \inst5|Add3~6_combout\ : std_logic;
SIGNAL \inst6|LessThan3~1_cout\ : std_logic;
SIGNAL \inst6|LessThan3~3_cout\ : std_logic;
SIGNAL \inst6|LessThan3~5_cout\ : std_logic;
SIGNAL \inst6|LessThan3~7_cout\ : std_logic;
SIGNAL \inst6|LessThan3~9_cout\ : std_logic;
SIGNAL \inst6|LessThan3~11_cout\ : std_logic;
SIGNAL \inst6|LessThan3~13_cout\ : std_logic;
SIGNAL \inst6|LessThan3~15_cout\ : std_logic;
SIGNAL \inst6|LessThan3~17_cout\ : std_logic;
SIGNAL \inst6|LessThan3~18_combout\ : std_logic;
SIGNAL \inst6|Add8~0_combout\ : std_logic;
SIGNAL \inst6|Add8~4_combout\ : std_logic;
SIGNAL \inst6|Add8~6_combout\ : std_logic;
SIGNAL \inst6|Add8~9\ : std_logic;
SIGNAL \inst6|Add8~11\ : std_logic;
SIGNAL \inst6|Add8~10_combout\ : std_logic;
SIGNAL \inst6|Add8~12_combout\ : std_logic;
SIGNAL \inst6|Add7~0_combout\ : std_logic;
SIGNAL \inst6|Add7~8_combout\ : std_logic;
SIGNAL \inst6|Add10~6_combout\ : std_logic;
SIGNAL \inst6|Add10~11\ : std_logic;
SIGNAL \inst6|Add10~12_combout\ : std_logic;
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
SIGNAL \inst6|LessThan6~1_cout\ : std_logic;
SIGNAL \inst6|LessThan6~3_cout\ : std_logic;
SIGNAL \inst6|LessThan6~5_cout\ : std_logic;
SIGNAL \inst6|LessThan6~7_cout\ : std_logic;
SIGNAL \inst6|LessThan6~9_cout\ : std_logic;
SIGNAL \inst6|LessThan6~11_cout\ : std_logic;
SIGNAL \inst6|LessThan6~13_cout\ : std_logic;
SIGNAL \inst6|LessThan6~15_cout\ : std_logic;
SIGNAL \inst6|LessThan6~17_cout\ : std_logic;
SIGNAL \inst6|LessThan6~18_combout\ : std_logic;
SIGNAL \inst6|LessThan9~1_cout\ : std_logic;
SIGNAL \inst6|LessThan9~3_cout\ : std_logic;
SIGNAL \inst6|LessThan9~5_cout\ : std_logic;
SIGNAL \inst6|LessThan9~7_cout\ : std_logic;
SIGNAL \inst6|LessThan9~9_cout\ : std_logic;
SIGNAL \inst6|LessThan9~11_cout\ : std_logic;
SIGNAL \inst6|LessThan9~13_cout\ : std_logic;
SIGNAL \inst6|LessThan9~15_cout\ : std_logic;
SIGNAL \inst6|LessThan9~17_cout\ : std_logic;
SIGNAL \inst6|LessThan9~18_combout\ : std_logic;
SIGNAL \inst6|Add11~6_combout\ : std_logic;
SIGNAL \inst6|Add11~8_combout\ : std_logic;
SIGNAL \inst6|Add12~6_combout\ : std_logic;
SIGNAL \inst6|Add12~10_combout\ : std_logic;
SIGNAL \inst6|Add1~4_combout\ : std_logic;
SIGNAL \inst6|Add0~0_combout\ : std_logic;
SIGNAL \inst6|Add0~12_combout\ : std_logic;
SIGNAL \inst6|Add0~22_combout\ : std_logic;
SIGNAL \inst6|Add0~26_combout\ : std_logic;
SIGNAL \inst6|Add0~30_combout\ : std_logic;
SIGNAL \inst6|Add0~42_combout\ : std_logic;
SIGNAL \inst6|Add0~44_combout\ : std_logic;
SIGNAL \inst6|Add0~54_combout\ : std_logic;
SIGNAL \inst6|Add2~2_combout\ : std_logic;
SIGNAL \inst6|Add2~6_combout\ : std_logic;
SIGNAL \inst6|Add2~15\ : std_logic;
SIGNAL \inst6|Add2~17\ : std_logic;
SIGNAL \inst6|Add2~16_combout\ : std_logic;
SIGNAL \inst6|Add2~18_combout\ : std_logic;
SIGNAL \inst6|Add4~12_combout\ : std_logic;
SIGNAL \inst6|Add5~13\ : std_logic;
SIGNAL \inst6|Add5~15\ : std_logic;
SIGNAL \inst6|Add5~14_combout\ : std_logic;
SIGNAL \inst6|Add5~17\ : std_logic;
SIGNAL \inst6|Add5~16_combout\ : std_logic;
SIGNAL \inst6|Add5~18_combout\ : std_logic;
SIGNAL \inst1|Add1~10_combout\ : std_logic;
SIGNAL \inst1|Add1~14_combout\ : std_logic;
SIGNAL \inst1|Add0~17\ : std_logic;
SIGNAL \inst1|Add0~18_combout\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[2]~13_combout\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[3]~15_combout\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[8]~25_combout\ : std_logic;
SIGNAL \inst5|Add2~0_combout\ : std_logic;
SIGNAL \inst5|Add2~1_combout\ : std_logic;
SIGNAL \inst5|Add2~2_combout\ : std_logic;
SIGNAL \inst5|Add2~3_combout\ : std_logic;
SIGNAL \inst5|Add2~4_combout\ : std_logic;
SIGNAL \inst5|Add2~5_combout\ : std_logic;
SIGNAL \inst5|Add2~6_combout\ : std_logic;
SIGNAL \inst5|Add2~7_combout\ : std_logic;
SIGNAL \inst5|LessThan1~1_combout\ : std_logic;
SIGNAL \inst5|LessThan1~2_combout\ : std_logic;
SIGNAL \inst6|pipe_top~3_combout\ : std_logic;
SIGNAL \inst6|pipe_top~4_combout\ : std_logic;
SIGNAL \inst6|pipe_top~5_combout\ : std_logic;
SIGNAL \inst11|LessThan8~1_combout\ : std_logic;
SIGNAL \inst11|temp_char_address~15_combout\ : std_logic;
SIGNAL \inst11|temp_char_address~20_combout\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[0]~q\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[3]~q\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[6]~q\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[5]~q\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[11]~q\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[13]~q\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[15]~q\ : std_logic;
SIGNAL \inst6|Equal0~3_combout\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[18]~q\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[19]~q\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[21]~q\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[22]~q\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[27]~q\ : std_logic;
SIGNAL \inst6|Equal0~8_combout\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[29]~q\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[31]~q\ : std_logic;
SIGNAL \inst1|process_0~2_combout\ : std_logic;
SIGNAL \inst1|Equal1~0_combout\ : std_logic;
SIGNAL \inst5|bird_y_motion~2_combout\ : std_logic;
SIGNAL \inst6|clk_cnt~0_combout\ : std_logic;
SIGNAL \inst6|clk_cnt~1_combout\ : std_logic;
SIGNAL \inst6|clk_cnt~6_combout\ : std_logic;
SIGNAL \inst6|clk_cnt~7_combout\ : std_logic;
SIGNAL \inst2|MOUSE_CLK_FILTER~0_combout\ : std_logic;
SIGNAL \inst2|mouse_state.INPUT_PACKETS~q\ : std_logic;
SIGNAL \inst2|Selector6~0_combout\ : std_logic;
SIGNAL \inst2|PACKET_CHAR1[0]~0_combout\ : std_logic;
SIGNAL \inst2|iready_set~q\ : std_logic;
SIGNAL \inst2|mouse_state.WAIT_CMD_ACK~q\ : std_logic;
SIGNAL \inst2|mouse_state.INPUT_PACKETS~0_combout\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[0]~33_combout\ : std_logic;
SIGNAL \inst2|SHIFTIN[0]~1_combout\ : std_logic;
SIGNAL \inst2|SHIFTIN[0]~2_combout\ : std_logic;
SIGNAL \inst2|iready_set~0_combout\ : std_logic;
SIGNAL \inst2|Selector4~0_combout\ : std_logic;
SIGNAL \inst5|bird_y_motion~4_combout\ : std_logic;
SIGNAL \inst6|pipe2_x_pos[9]~1_combout\ : std_logic;
SIGNAL \inst6|pipe2_x_pos[8]~2_combout\ : std_logic;
SIGNAL \inst6|pipe2_x_pos[3]~4_combout\ : std_logic;
SIGNAL \inst6|pipe4_x_pos[6]~1_combout\ : std_logic;
SIGNAL \inst6|pipe5_x_pos[8]~0_combout\ : std_logic;
SIGNAL \inst6|pipe5_x_pos[7]~1_combout\ : std_logic;
SIGNAL \inst1|vert_sync_out~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|SHIFTIN[0]~feeder_combout\ : std_logic;
SIGNAL \inst2|SHIFTIN[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|SHIFTIN[2]~feeder_combout\ : std_logic;
SIGNAL \inst2|SHIFTIN[3]~feeder_combout\ : std_logic;
SIGNAL \inst2|SHIFTIN[4]~feeder_combout\ : std_logic;
SIGNAL \inst2|SHIFTIN[5]~feeder_combout\ : std_logic;
SIGNAL \inst2|SHIFTIN[6]~feeder_combout\ : std_logic;
SIGNAL \inst2|SHIFTIN[7]~feeder_combout\ : std_logic;
SIGNAL \inst2|SHIFTIN[8]~feeder_combout\ : std_logic;
SIGNAL \mouse_clk~input_o\ : std_logic;
SIGNAL \inst2|filter[0]~feeder_combout\ : std_logic;
SIGNAL \inst2|filter[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|filter[4]~feeder_combout\ : std_logic;
SIGNAL \inst2|filter[6]~feeder_combout\ : std_logic;
SIGNAL \inst2|MOUSE_CLK_FILTER~2_combout\ : std_logic;
SIGNAL \inst2|MOUSE_CLK_FILTER~1_combout\ : std_logic;
SIGNAL \inst2|MOUSE_CLK_FILTER~3_combout\ : std_logic;
SIGNAL \inst2|MOUSE_CLK_FILTER~q\ : std_logic;
SIGNAL \inst2|MOUSE_CLK_FILTER~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|SHIFTOUT[9]~feeder_combout\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[1]~11_combout\ : std_logic;
SIGNAL \inst2|Selector0~0_combout\ : std_logic;
SIGNAL \inst2|mouse_state.INHIBIT_TRANS~q\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[1]~12\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[2]~14\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[3]~16\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[4]~17_combout\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[4]~18\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[5]~19_combout\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[5]~20\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[6]~21_combout\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[6]~22\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[7]~23_combout\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[7]~24\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[8]~26\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[9]~27_combout\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[9]~28\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[10]~30\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[11]~31_combout\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[10]~29_combout\ : std_logic;
SIGNAL \inst2|Selector1~0_combout\ : std_logic;
SIGNAL \inst2|mouse_state.LOAD_COMMAND~q\ : std_logic;
SIGNAL \inst2|mouse_state.LOAD_COMMAND2~feeder_combout\ : std_logic;
SIGNAL \inst2|mouse_state.LOAD_COMMAND2~q\ : std_logic;
SIGNAL \inst2|Selector6~1_combout\ : std_logic;
SIGNAL \inst2|send_data~q\ : std_logic;
SIGNAL \inst2|OUTCNT~2_combout\ : std_logic;
SIGNAL \inst2|send_char~0_combout\ : std_logic;
SIGNAL \inst2|send_char~q\ : std_logic;
SIGNAL \inst2|output_ready~0_combout\ : std_logic;
SIGNAL \inst2|OUTCNT~1_combout\ : std_logic;
SIGNAL \inst2|OUTCNT~3_combout\ : std_logic;
SIGNAL \inst2|OUTCNT~0_combout\ : std_logic;
SIGNAL \inst2|LessThan0~0_combout\ : std_logic;
SIGNAL \inst2|output_ready~q\ : std_logic;
SIGNAL \inst2|Selector3~0_combout\ : std_logic;
SIGNAL \inst2|mouse_state.WAIT_OUTPUT_READY~q\ : std_logic;
SIGNAL \inst2|MOUSE_DATA_BUF~0_combout\ : std_logic;
SIGNAL \inst2|MOUSE_DATA_BUF~1_combout\ : std_logic;
SIGNAL \inst2|SHIFTOUT[8]~3_combout\ : std_logic;
SIGNAL \inst2|SHIFTOUT[7]~feeder_combout\ : std_logic;
SIGNAL \inst2|SHIFTOUT[6]~feeder_combout\ : std_logic;
SIGNAL \inst2|SHIFTOUT[5]~feeder_combout\ : std_logic;
SIGNAL \inst2|SHIFTOUT[4]~2_combout\ : std_logic;
SIGNAL \inst2|SHIFTOUT[3]~1_combout\ : std_logic;
SIGNAL \inst2|SHIFTOUT[2]~0_combout\ : std_logic;
SIGNAL \inst2|SHIFTOUT[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|MOUSE_DATA_BUF~feeder_combout\ : std_logic;
SIGNAL \inst2|MOUSE_DATA_BUF~q\ : std_logic;
SIGNAL \inst2|WideOr4~combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|Add0~0_combout\ : std_logic;
SIGNAL \inst1|Add0~1\ : std_logic;
SIGNAL \inst1|Add0~2_combout\ : std_logic;
SIGNAL \inst1|Add0~3\ : std_logic;
SIGNAL \inst1|Add0~4_combout\ : std_logic;
SIGNAL \inst1|Add0~5\ : std_logic;
SIGNAL \inst1|Add0~7\ : std_logic;
SIGNAL \inst1|Add0~9\ : std_logic;
SIGNAL \inst1|Add0~10_combout\ : std_logic;
SIGNAL \inst1|Equal0~2_combout\ : std_logic;
SIGNAL \inst1|Add0~8_combout\ : std_logic;
SIGNAL \inst1|Add0~6_combout\ : std_logic;
SIGNAL \inst1|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|h_count~0_combout\ : std_logic;
SIGNAL \inst1|Equal0~1_combout\ : std_logic;
SIGNAL \inst1|h_count~2_combout\ : std_logic;
SIGNAL \inst1|Add0~11\ : std_logic;
SIGNAL \inst1|Add0~12_combout\ : std_logic;
SIGNAL \inst1|Add0~13\ : std_logic;
SIGNAL \inst1|Add0~14_combout\ : std_logic;
SIGNAL \inst1|LessThan6~0_combout\ : std_logic;
SIGNAL \inst1|v_count[0]~1_combout\ : std_logic;
SIGNAL \inst1|Add1~1\ : std_logic;
SIGNAL \inst1|Add1~3\ : std_logic;
SIGNAL \inst1|Add1~4_combout\ : std_logic;
SIGNAL \inst1|v_count[2]~9_combout\ : std_logic;
SIGNAL \inst1|Add1~5\ : std_logic;
SIGNAL \inst1|Add1~7\ : std_logic;
SIGNAL \inst1|Add1~8_combout\ : std_logic;
SIGNAL \inst1|v_count[4]~8_combout\ : std_logic;
SIGNAL \inst1|v_count[2]~0_combout\ : std_logic;
SIGNAL \inst1|v_count[5]~4_combout\ : std_logic;
SIGNAL \inst1|process_0~6_combout\ : std_logic;
SIGNAL \inst1|v_count[7]~6_combout\ : std_logic;
SIGNAL \inst1|Add1~9\ : std_logic;
SIGNAL \inst1|Add1~11\ : std_logic;
SIGNAL \inst1|Add1~13\ : std_logic;
SIGNAL \inst1|Add1~15\ : std_logic;
SIGNAL \inst1|Add1~16_combout\ : std_logic;
SIGNAL \inst1|v_count[8]~2_combout\ : std_logic;
SIGNAL \inst1|process_0~7_combout\ : std_logic;
SIGNAL \inst1|process_0~8_combout\ : std_logic;
SIGNAL \inst1|process_0~9_combout\ : std_logic;
SIGNAL \inst1|process_0~10_combout\ : std_logic;
SIGNAL \inst1|process_0~11_combout\ : std_logic;
SIGNAL \inst1|Add1~2_combout\ : std_logic;
SIGNAL \inst1|v_count~10_combout\ : std_logic;
SIGNAL \inst1|pixel_row[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|Add1~17\ : std_logic;
SIGNAL \inst1|Add1~18_combout\ : std_logic;
SIGNAL \inst1|v_count[9]~3_combout\ : std_logic;
SIGNAL \inst1|LessThan7~0_combout\ : std_logic;
SIGNAL \inst1|LessThan7~1_combout\ : std_logic;
SIGNAL \inst1|Add1~6_combout\ : std_logic;
SIGNAL \inst1|v_count[3]~7_combout\ : std_logic;
SIGNAL \inst1|pixel_row[3]~feeder_combout\ : std_logic;
SIGNAL \inst11|Add0~1\ : std_logic;
SIGNAL \inst11|Add0~2_combout\ : std_logic;
SIGNAL \inst11|LessThan0~0_combout\ : std_logic;
SIGNAL \inst11|Add0~0_combout\ : std_logic;
SIGNAL \inst11|LessThan4~0_combout\ : std_logic;
SIGNAL \inst11|Add0~3\ : std_logic;
SIGNAL \inst11|Add0~5\ : std_logic;
SIGNAL \inst11|Add0~7\ : std_logic;
SIGNAL \inst11|Add0~9\ : std_logic;
SIGNAL \inst11|Add0~10_combout\ : std_logic;
SIGNAL \inst1|Add0~15\ : std_logic;
SIGNAL \inst1|Add0~16_combout\ : std_logic;
SIGNAL \inst1|h_count~1_combout\ : std_logic;
SIGNAL \inst5|bird_on~2_combout\ : std_logic;
SIGNAL \inst11|temp_char_address~11_combout\ : std_logic;
SIGNAL \inst1|Add1~12_combout\ : std_logic;
SIGNAL \inst1|v_count[6]~5_combout\ : std_logic;
SIGNAL \inst1|pixel_row[7]~feeder_combout\ : std_logic;
SIGNAL \inst11|temp_char_address~3_combout\ : std_logic;
SIGNAL \inst1|Add1~0_combout\ : std_logic;
SIGNAL \inst1|v_count~11_combout\ : std_logic;
SIGNAL \inst11|LessThan3~0_combout\ : std_logic;
SIGNAL \inst11|temp_char_address~4_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[1]~12_combout\ : std_logic;
SIGNAL \inst11|Add0~8_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[0]~13_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[0]~14_combout\ : std_logic;
SIGNAL \inst11|temp_char_address~16_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[0]~5_combout\ : std_logic;
SIGNAL \inst11|temp_char_address~8_combout\ : std_logic;
SIGNAL \inst11|temp_char_address~9_combout\ : std_logic;
SIGNAL \inst11|Add0~4_combout\ : std_logic;
SIGNAL \inst11|LessThan0~1_combout\ : std_logic;
SIGNAL \inst11|temp_char_address~1_combout\ : std_logic;
SIGNAL \inst11|temp_char_address~0_combout\ : std_logic;
SIGNAL \inst11|temp_char_address~2_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[0]~10_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[0]~17_combout\ : std_logic;
SIGNAL \inst11|LessThan0~2_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[0]~19_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[0]~18_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[0]~21_combout\ : std_logic;
SIGNAL \inst11|temp_char_address~22_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[0]~24_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[0]~25_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[1]~26_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[2]~27_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[2]~28_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst11|temp_char_address[4]~29_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[0]~23_combout\ : std_logic;
SIGNAL \inst11|Add0~6_combout\ : std_logic;
SIGNAL \inst11|LessThan8~0_combout\ : std_logic;
SIGNAL \inst11|LessThan9~0_combout\ : std_logic;
SIGNAL \inst11|temp_char_address~6_combout\ : std_logic;
SIGNAL \inst11|temp_char_address~7_combout\ : std_logic;
SIGNAL \inst11|temp_char_address[5]~30_combout\ : std_logic;
SIGNAL \inst11|display|Mux0~2_combout\ : std_logic;
SIGNAL \inst11|display|Mux0~3_combout\ : std_logic;
SIGNAL \inst11|display|Mux0~0_combout\ : std_logic;
SIGNAL \inst11|display|Mux0~1_combout\ : std_logic;
SIGNAL \inst1|red_out~0_combout\ : std_logic;
SIGNAL \inst5|Add0~1_cout\ : std_logic;
SIGNAL \inst5|Add0~3_cout\ : std_logic;
SIGNAL \inst5|Add0~5\ : std_logic;
SIGNAL \inst5|Add0~7\ : std_logic;
SIGNAL \inst5|Add0~8_combout\ : std_logic;
SIGNAL \inst5|Add0~4_combout\ : std_logic;
SIGNAL \inst5|Add0~9\ : std_logic;
SIGNAL \inst5|Add0~10_combout\ : std_logic;
SIGNAL \inst5|bird_on~0_combout\ : std_logic;
SIGNAL \inst5|bird_on~4_combout\ : std_logic;
SIGNAL \inst5|LessThan4~0_combout\ : std_logic;
SIGNAL \inst5|LessThan4~1_combout\ : std_logic;
SIGNAL \inst5|bird_y_pos[7]~25\ : std_logic;
SIGNAL \inst5|bird_y_pos[8]~27\ : std_logic;
SIGNAL \inst5|bird_y_pos[9]~28_combout\ : std_logic;
SIGNAL \sw0~input_o\ : std_logic;
SIGNAL \mouse_data~input_o\ : std_logic;
SIGNAL \inst2|INCNT~3_combout\ : std_logic;
SIGNAL \inst2|INCNT[3]~1_combout\ : std_logic;
SIGNAL \inst2|INCNT~0_combout\ : std_logic;
SIGNAL \inst2|INCNT~2_combout\ : std_logic;
SIGNAL \inst2|INCNT~4_combout\ : std_logic;
SIGNAL \inst2|LessThan1~0_combout\ : std_logic;
SIGNAL \inst2|READ_CHAR~0_combout\ : std_logic;
SIGNAL \inst2|READ_CHAR~q\ : std_logic;
SIGNAL \inst2|SHIFTIN[4]~0_combout\ : std_logic;
SIGNAL \inst2|PACKET_COUNT[0]~1_combout\ : std_logic;
SIGNAL \inst2|PACKET_COUNT[0]~2_combout\ : std_logic;
SIGNAL \inst2|left_button~0_combout\ : std_logic;
SIGNAL \inst2|PACKET_COUNT[1]~0_combout\ : std_logic;
SIGNAL \inst2|left_button~1_combout\ : std_logic;
SIGNAL \inst2|left_button~q\ : std_logic;
SIGNAL \inst5|Move_Bird~0_combout\ : std_logic;
SIGNAL \inst5|Move_Bird~1_combout\ : std_logic;
SIGNAL \inst5|bird_y_pos[8]~26_combout\ : std_logic;
SIGNAL \inst5|LessThan5~0_combout\ : std_logic;
SIGNAL \inst5|LessThan5~1_combout\ : std_logic;
SIGNAL \inst5|LessThan5~2_combout\ : std_logic;
SIGNAL \inst5|bird_y_motion~3_combout\ : std_logic;
SIGNAL \inst5|bird_y_pos[0]~11\ : std_logic;
SIGNAL \inst5|bird_y_pos[1]~12_combout\ : std_logic;
SIGNAL \inst5|bird_y_pos[1]~13\ : std_logic;
SIGNAL \inst5|bird_y_pos[2]~14_combout\ : std_logic;
SIGNAL \inst5|bird_y_pos[2]~15\ : std_logic;
SIGNAL \inst5|bird_y_pos[3]~16_combout\ : std_logic;
SIGNAL \inst5|bird_y_pos[3]~17\ : std_logic;
SIGNAL \inst5|bird_y_pos[4]~18_combout\ : std_logic;
SIGNAL \inst5|bird_y_pos[4]~19\ : std_logic;
SIGNAL \inst5|bird_y_pos[5]~20_combout\ : std_logic;
SIGNAL \inst5|bird_y_pos[5]~21\ : std_logic;
SIGNAL \inst5|bird_y_pos[6]~22_combout\ : std_logic;
SIGNAL \inst5|bird_y_pos[6]~23\ : std_logic;
SIGNAL \inst5|bird_y_pos[7]~24_combout\ : std_logic;
SIGNAL \inst5|Add3~1\ : std_logic;
SIGNAL \inst5|Add3~3\ : std_logic;
SIGNAL \inst5|Add3~5\ : std_logic;
SIGNAL \inst5|Add3~7\ : std_logic;
SIGNAL \inst5|Add3~8_combout\ : std_logic;
SIGNAL \inst5|Add3~4_combout\ : std_logic;
SIGNAL \inst5|Add3~2_combout\ : std_logic;
SIGNAL \inst5|Add3~0_combout\ : std_logic;
SIGNAL \inst5|bird_y_pos[0]~10_combout\ : std_logic;
SIGNAL \inst5|LessThan3~1_cout\ : std_logic;
SIGNAL \inst5|LessThan3~3_cout\ : std_logic;
SIGNAL \inst5|LessThan3~5_cout\ : std_logic;
SIGNAL \inst5|LessThan3~7_cout\ : std_logic;
SIGNAL \inst5|LessThan3~9_cout\ : std_logic;
SIGNAL \inst5|LessThan3~11_cout\ : std_logic;
SIGNAL \inst5|LessThan3~13_cout\ : std_logic;
SIGNAL \inst5|LessThan3~15_cout\ : std_logic;
SIGNAL \inst5|LessThan3~16_combout\ : std_logic;
SIGNAL \inst5|Add3~9\ : std_logic;
SIGNAL \inst5|Add3~10_combout\ : std_logic;
SIGNAL \inst1|red_out~1_combout\ : std_logic;
SIGNAL \inst5|LessThan1~0_combout\ : std_logic;
SIGNAL \inst5|bird_on~3_combout\ : std_logic;
SIGNAL \inst1|red_out~2_combout\ : std_logic;
SIGNAL \inst1|video_on_h~q\ : std_logic;
SIGNAL \inst1|video_on_v~feeder_combout\ : std_logic;
SIGNAL \inst1|video_on_v~q\ : std_logic;
SIGNAL \inst1|green_out~0_combout\ : std_logic;
SIGNAL \inst1|red_out~3_combout\ : std_logic;
SIGNAL \inst1|red_out~q\ : std_logic;
SIGNAL \inst1|process_0~0_combout\ : std_logic;
SIGNAL \inst1|process_0~1_combout\ : std_logic;
SIGNAL \inst1|vert_sync~q\ : std_logic;
SIGNAL \inst1|vert_sync_out~q\ : std_logic;
SIGNAL \inst6|Add12~1\ : std_logic;
SIGNAL \inst6|Add12~3\ : std_logic;
SIGNAL \inst6|Add12~4_combout\ : std_logic;
SIGNAL \inst6|Add12~5\ : std_logic;
SIGNAL \inst6|Add12~7\ : std_logic;
SIGNAL \inst6|Add12~8_combout\ : std_logic;
SIGNAL \inst6|Add12~0_combout\ : std_logic;
SIGNAL \inst6|Add12~2_combout\ : std_logic;
SIGNAL \inst6|pipe_bottom~0_combout\ : std_logic;
SIGNAL \inst6|pipe_bottom~1_combout\ : std_logic;
SIGNAL \inst6|Add6~1\ : std_logic;
SIGNAL \inst6|Add6~3\ : std_logic;
SIGNAL \inst6|Add6~5\ : std_logic;
SIGNAL \inst6|Add6~7\ : std_logic;
SIGNAL \inst6|Add6~9\ : std_logic;
SIGNAL \inst6|Add6~11\ : std_logic;
SIGNAL \inst6|Add6~13\ : std_logic;
SIGNAL \inst6|Add6~14_combout\ : std_logic;
SIGNAL \inst6|pipe1_x_pos[0]~2_combout\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[20]~q\ : std_logic;
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
SIGNAL \inst6|Add0~13\ : std_logic;
SIGNAL \inst6|Add0~14_combout\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[7]~q\ : std_logic;
SIGNAL \inst6|Add0~15\ : std_logic;
SIGNAL \inst6|Add0~16_combout\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[8]~q\ : std_logic;
SIGNAL \inst6|Add0~17\ : std_logic;
SIGNAL \inst6|Add0~18_combout\ : std_logic;
SIGNAL \inst6|clk_cnt~2_combout\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[9]~q\ : std_logic;
SIGNAL \inst6|Add0~19\ : std_logic;
SIGNAL \inst6|Add0~20_combout\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[10]~q\ : std_logic;
SIGNAL \inst6|Add0~21\ : std_logic;
SIGNAL \inst6|Add0~23\ : std_logic;
SIGNAL \inst6|Add0~24_combout\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[12]~q\ : std_logic;
SIGNAL \inst6|Add0~25\ : std_logic;
SIGNAL \inst6|Add0~27\ : std_logic;
SIGNAL \inst6|Add0~28_combout\ : std_logic;
SIGNAL \inst6|clk_cnt~3_combout\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[14]~q\ : std_logic;
SIGNAL \inst6|Add0~29\ : std_logic;
SIGNAL \inst6|Add0~31\ : std_logic;
SIGNAL \inst6|Add0~32_combout\ : std_logic;
SIGNAL \inst6|clk_cnt~4_combout\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[16]~q\ : std_logic;
SIGNAL \inst6|Add0~33\ : std_logic;
SIGNAL \inst6|Add0~34_combout\ : std_logic;
SIGNAL \inst6|clk_cnt~5_combout\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[17]~q\ : std_logic;
SIGNAL \inst6|Add0~35\ : std_logic;
SIGNAL \inst6|Add0~37\ : std_logic;
SIGNAL \inst6|Add0~39\ : std_logic;
SIGNAL \inst6|Add0~40_combout\ : std_logic;
SIGNAL \inst6|Equal0~6_combout\ : std_logic;
SIGNAL \inst6|Add0~36_combout\ : std_logic;
SIGNAL \inst6|Add0~38_combout\ : std_logic;
SIGNAL \inst6|Equal0~5_combout\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[23]~q\ : std_logic;
SIGNAL \inst6|Add0~41\ : std_logic;
SIGNAL \inst6|Add0~43\ : std_logic;
SIGNAL \inst6|Add0~45\ : std_logic;
SIGNAL \inst6|Add0~46_combout\ : std_logic;
SIGNAL \inst6|Equal0~7_combout\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[30]~q\ : std_logic;
SIGNAL \inst6|Add0~47\ : std_logic;
SIGNAL \inst6|Add0~48_combout\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[24]~q\ : std_logic;
SIGNAL \inst6|Add0~49\ : std_logic;
SIGNAL \inst6|Add0~50_combout\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[25]~q\ : std_logic;
SIGNAL \inst6|Add0~51\ : std_logic;
SIGNAL \inst6|Add0~52_combout\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[26]~q\ : std_logic;
SIGNAL \inst6|Add0~53\ : std_logic;
SIGNAL \inst6|Add0~55\ : std_logic;
SIGNAL \inst6|Add0~56_combout\ : std_logic;
SIGNAL \inst6|pipe_move:clk_cnt[28]~q\ : std_logic;
SIGNAL \inst6|Add0~57\ : std_logic;
SIGNAL \inst6|Add0~59\ : std_logic;
SIGNAL \inst6|Add0~60_combout\ : std_logic;
SIGNAL \inst6|Add0~58_combout\ : std_logic;
SIGNAL \inst6|Add0~61\ : std_logic;
SIGNAL \inst6|Add0~62_combout\ : std_logic;
SIGNAL \inst6|Equal0~9_combout\ : std_logic;
SIGNAL \inst6|Add0~6_combout\ : std_logic;
SIGNAL \inst6|Equal0~0_combout\ : std_logic;
SIGNAL \inst6|Add0~10_combout\ : std_logic;
SIGNAL \inst6|Equal0~1_combout\ : std_logic;
SIGNAL \inst6|Equal0~2_combout\ : std_logic;
SIGNAL \inst6|Equal0~4_combout\ : std_logic;
SIGNAL \inst6|Equal0~10_combout\ : std_logic;
SIGNAL \inst6|pipe2_x_pos[3]~0_combout\ : std_logic;
SIGNAL \inst6|Add1~1_cout\ : std_logic;
SIGNAL \inst6|Add1~2_combout\ : std_logic;
SIGNAL \inst6|Add1~3\ : std_logic;
SIGNAL \inst6|Add1~5\ : std_logic;
SIGNAL \inst6|Add1~7\ : std_logic;
SIGNAL \inst6|Add1~8_combout\ : std_logic;
SIGNAL \inst6|Add1~9\ : std_logic;
SIGNAL \inst6|Add1~10_combout\ : std_logic;
SIGNAL \inst6|Add1~11\ : std_logic;
SIGNAL \inst6|Add1~12_combout\ : std_logic;
SIGNAL \inst6|Add1~13\ : std_logic;
SIGNAL \inst6|Add1~15\ : std_logic;
SIGNAL \inst6|Add1~17\ : std_logic;
SIGNAL \inst6|Add1~18_combout\ : std_logic;
SIGNAL \inst6|pipe1_x_pos[9]~0_combout\ : std_logic;
SIGNAL \inst6|Add1~16_combout\ : std_logic;
SIGNAL \inst6|Add1~14_combout\ : std_logic;
SIGNAL \inst6|pipe1_x_pos[7]~1_combout\ : std_logic;
SIGNAL \inst6|Add6~8_combout\ : std_logic;
SIGNAL \inst6|Add6~6_combout\ : std_logic;
SIGNAL \inst6|Add6~4_combout\ : std_logic;
SIGNAL \inst6|Add1~6_combout\ : std_logic;
SIGNAL \inst6|Add6~0_combout\ : std_logic;
SIGNAL \inst6|LessThan0~1_cout\ : std_logic;
SIGNAL \inst6|LessThan0~3_cout\ : std_logic;
SIGNAL \inst6|LessThan0~5_cout\ : std_logic;
SIGNAL \inst6|LessThan0~7_cout\ : std_logic;
SIGNAL \inst6|LessThan0~9_cout\ : std_logic;
SIGNAL \inst6|LessThan0~11_cout\ : std_logic;
SIGNAL \inst6|LessThan0~13_cout\ : std_logic;
SIGNAL \inst6|LessThan0~15_cout\ : std_logic;
SIGNAL \inst6|LessThan0~17_cout\ : std_logic;
SIGNAL \inst6|LessThan0~18_combout\ : std_logic;
SIGNAL \inst6|Add2~1_cout\ : std_logic;
SIGNAL \inst6|Add2~3\ : std_logic;
SIGNAL \inst6|Add2~5\ : std_logic;
SIGNAL \inst6|Add2~7\ : std_logic;
SIGNAL \inst6|Add2~8_combout\ : std_logic;
SIGNAL \inst6|Add2~9\ : std_logic;
SIGNAL \inst6|Add2~10_combout\ : std_logic;
SIGNAL \inst6|Add2~11\ : std_logic;
SIGNAL \inst6|Add2~12_combout\ : std_logic;
SIGNAL \inst6|pipe2_x_pos[6]~3_combout\ : std_logic;
SIGNAL \inst6|Add2~13\ : std_logic;
SIGNAL \inst6|Add2~14_combout\ : std_logic;
SIGNAL \inst6|Add2~4_combout\ : std_logic;
SIGNAL \inst6|Add8~1\ : std_logic;
SIGNAL \inst6|Add8~3\ : std_logic;
SIGNAL \inst6|Add8~5\ : std_logic;
SIGNAL \inst6|Add8~7\ : std_logic;
SIGNAL \inst6|Add8~8_combout\ : std_logic;
SIGNAL \inst6|Add8~2_combout\ : std_logic;
SIGNAL \inst6|LessThan4~1_cout\ : std_logic;
SIGNAL \inst6|LessThan4~3_cout\ : std_logic;
SIGNAL \inst6|LessThan4~5_cout\ : std_logic;
SIGNAL \inst6|LessThan4~7_cout\ : std_logic;
SIGNAL \inst6|LessThan4~9_cout\ : std_logic;
SIGNAL \inst6|LessThan4~11_cout\ : std_logic;
SIGNAL \inst6|LessThan4~13_cout\ : std_logic;
SIGNAL \inst6|LessThan4~15_cout\ : std_logic;
SIGNAL \inst6|LessThan4~17_cout\ : std_logic;
SIGNAL \inst6|LessThan4~18_combout\ : std_logic;
SIGNAL \inst6|Add7~1\ : std_logic;
SIGNAL \inst6|Add7~3\ : std_logic;
SIGNAL \inst6|Add7~5\ : std_logic;
SIGNAL \inst6|Add7~7\ : std_logic;
SIGNAL \inst6|Add7~9\ : std_logic;
SIGNAL \inst6|Add7~11\ : std_logic;
SIGNAL \inst6|Add7~12_combout\ : std_logic;
SIGNAL \inst6|Add7~10_combout\ : std_logic;
SIGNAL \inst6|Add7~6_combout\ : std_logic;
SIGNAL \inst6|Add7~4_combout\ : std_logic;
SIGNAL \inst6|Add7~2_combout\ : std_logic;
SIGNAL \inst6|LessThan1~1_cout\ : std_logic;
SIGNAL \inst6|LessThan1~3_cout\ : std_logic;
SIGNAL \inst6|LessThan1~5_cout\ : std_logic;
SIGNAL \inst6|LessThan1~7_cout\ : std_logic;
SIGNAL \inst6|LessThan1~9_cout\ : std_logic;
SIGNAL \inst6|LessThan1~11_cout\ : std_logic;
SIGNAL \inst6|LessThan1~13_cout\ : std_logic;
SIGNAL \inst6|LessThan1~15_cout\ : std_logic;
SIGNAL \inst6|LessThan1~17_cout\ : std_logic;
SIGNAL \inst6|LessThan1~18_combout\ : std_logic;
SIGNAL \inst6|pipe_top~0_combout\ : std_logic;
SIGNAL \inst6|Add5~1_cout\ : std_logic;
SIGNAL \inst6|Add5~2_combout\ : std_logic;
SIGNAL \inst6|Add5~3\ : std_logic;
SIGNAL \inst6|Add5~4_combout\ : std_logic;
SIGNAL \inst6|Add5~5\ : std_logic;
SIGNAL \inst6|Add5~6_combout\ : std_logic;
SIGNAL \inst6|Add5~7\ : std_logic;
SIGNAL \inst6|Add5~8_combout\ : std_logic;
SIGNAL \inst6|Add5~9\ : std_logic;
SIGNAL \inst6|Add5~10_combout\ : std_logic;
SIGNAL \inst6|pipe5_x_pos[5]~2_combout\ : std_logic;
SIGNAL \inst6|Add5~11\ : std_logic;
SIGNAL \inst6|Add5~12_combout\ : std_logic;
SIGNAL \inst6|Add11~1\ : std_logic;
SIGNAL \inst6|Add11~3\ : std_logic;
SIGNAL \inst6|Add11~5\ : std_logic;
SIGNAL \inst6|Add11~7\ : std_logic;
SIGNAL \inst6|Add11~9\ : std_logic;
SIGNAL \inst6|Add11~11\ : std_logic;
SIGNAL \inst6|Add11~12_combout\ : std_logic;
SIGNAL \inst6|Add11~10_combout\ : std_logic;
SIGNAL \inst6|Add11~4_combout\ : std_logic;
SIGNAL \inst6|Add11~2_combout\ : std_logic;
SIGNAL \inst6|Add11~0_combout\ : std_logic;
SIGNAL \inst6|LessThan10~1_cout\ : std_logic;
SIGNAL \inst6|LessThan10~3_cout\ : std_logic;
SIGNAL \inst6|LessThan10~5_cout\ : std_logic;
SIGNAL \inst6|LessThan10~7_cout\ : std_logic;
SIGNAL \inst6|LessThan10~9_cout\ : std_logic;
SIGNAL \inst6|LessThan10~11_cout\ : std_logic;
SIGNAL \inst6|LessThan10~13_cout\ : std_logic;
SIGNAL \inst6|LessThan10~15_cout\ : std_logic;
SIGNAL \inst6|LessThan10~17_cout\ : std_logic;
SIGNAL \inst6|LessThan10~18_combout\ : std_logic;
SIGNAL \inst6|Add3~1_cout\ : std_logic;
SIGNAL \inst6|Add3~2_combout\ : std_logic;
SIGNAL \inst6|Add3~3\ : std_logic;
SIGNAL \inst6|Add3~5\ : std_logic;
SIGNAL \inst6|Add3~7\ : std_logic;
SIGNAL \inst6|Add3~8_combout\ : std_logic;
SIGNAL \inst6|pipe3_x_pos[4]~0_combout\ : std_logic;
SIGNAL \inst6|Add3~9\ : std_logic;
SIGNAL \inst6|Add3~10_combout\ : std_logic;
SIGNAL \inst6|Add3~11\ : std_logic;
SIGNAL \inst6|Add3~12_combout\ : std_logic;
SIGNAL \inst6|Add3~13\ : std_logic;
SIGNAL \inst6|Add3~14_combout\ : std_logic;
SIGNAL \inst6|Add3~15\ : std_logic;
SIGNAL \inst6|Add3~17\ : std_logic;
SIGNAL \inst6|Add3~18_combout\ : std_logic;
SIGNAL \inst6|Add3~16_combout\ : std_logic;
SIGNAL \inst6|Add6~10_combout\ : std_logic;
SIGNAL \inst6|Add3~6_combout\ : std_logic;
SIGNAL \inst6|Add3~4_combout\ : std_logic;
SIGNAL \inst6|LessThan5~1_cout\ : std_logic;
SIGNAL \inst6|LessThan5~3_cout\ : std_logic;
SIGNAL \inst6|LessThan5~5_cout\ : std_logic;
SIGNAL \inst6|LessThan5~7_cout\ : std_logic;
SIGNAL \inst6|LessThan5~9_cout\ : std_logic;
SIGNAL \inst6|LessThan5~11_cout\ : std_logic;
SIGNAL \inst6|LessThan5~13_cout\ : std_logic;
SIGNAL \inst6|LessThan5~15_cout\ : std_logic;
SIGNAL \inst6|LessThan5~17_cout\ : std_logic;
SIGNAL \inst6|LessThan5~18_combout\ : std_logic;
SIGNAL \inst6|Add4~1_cout\ : std_logic;
SIGNAL \inst6|Add4~3\ : std_logic;
SIGNAL \inst6|Add4~4_combout\ : std_logic;
SIGNAL \inst6|Add4~5\ : std_logic;
SIGNAL \inst6|Add4~7\ : std_logic;
SIGNAL \inst6|Add4~8_combout\ : std_logic;
SIGNAL \inst6|pipe4_x_pos[4]~2_combout\ : std_logic;
SIGNAL \inst6|Add4~9\ : std_logic;
SIGNAL \inst6|Add4~10_combout\ : std_logic;
SIGNAL \inst6|Add4~11\ : std_logic;
SIGNAL \inst6|Add4~13\ : std_logic;
SIGNAL \inst6|Add4~14_combout\ : std_logic;
SIGNAL \inst6|pipe4_x_pos[7]~0_combout\ : std_logic;
SIGNAL \inst6|Add4~15\ : std_logic;
SIGNAL \inst6|Add4~17\ : std_logic;
SIGNAL \inst6|Add4~18_combout\ : std_logic;
SIGNAL \inst6|Add6~12_combout\ : std_logic;
SIGNAL \inst6|Add6~2_combout\ : std_logic;
SIGNAL \inst6|LessThan7~1_cout\ : std_logic;
SIGNAL \inst6|LessThan7~3_cout\ : std_logic;
SIGNAL \inst6|LessThan7~5_cout\ : std_logic;
SIGNAL \inst6|LessThan7~7_cout\ : std_logic;
SIGNAL \inst6|LessThan7~9_cout\ : std_logic;
SIGNAL \inst6|LessThan7~11_cout\ : std_logic;
SIGNAL \inst6|LessThan7~13_cout\ : std_logic;
SIGNAL \inst6|LessThan7~15_cout\ : std_logic;
SIGNAL \inst6|LessThan7~17_cout\ : std_logic;
SIGNAL \inst6|LessThan7~18_combout\ : std_logic;
SIGNAL \inst6|Add4~16_combout\ : std_logic;
SIGNAL \inst6|Add4~6_combout\ : std_logic;
SIGNAL \inst6|pipe4_x_pos[3]~3_combout\ : std_logic;
SIGNAL \inst6|Add10~1\ : std_logic;
SIGNAL \inst6|Add10~3\ : std_logic;
SIGNAL \inst6|Add10~5\ : std_logic;
SIGNAL \inst6|Add10~7\ : std_logic;
SIGNAL \inst6|Add10~9\ : std_logic;
SIGNAL \inst6|Add10~10_combout\ : std_logic;
SIGNAL \inst6|Add10~8_combout\ : std_logic;
SIGNAL \inst6|Add10~4_combout\ : std_logic;
SIGNAL \inst6|Add10~2_combout\ : std_logic;
SIGNAL \inst6|Add10~0_combout\ : std_logic;
SIGNAL \inst6|Add4~2_combout\ : std_logic;
SIGNAL \inst6|LessThan8~1_cout\ : std_logic;
SIGNAL \inst6|LessThan8~3_cout\ : std_logic;
SIGNAL \inst6|LessThan8~5_cout\ : std_logic;
SIGNAL \inst6|LessThan8~7_cout\ : std_logic;
SIGNAL \inst6|LessThan8~9_cout\ : std_logic;
SIGNAL \inst6|LessThan8~11_cout\ : std_logic;
SIGNAL \inst6|LessThan8~13_cout\ : std_logic;
SIGNAL \inst6|LessThan8~15_cout\ : std_logic;
SIGNAL \inst6|LessThan8~17_cout\ : std_logic;
SIGNAL \inst6|LessThan8~18_combout\ : std_logic;
SIGNAL \inst6|pipe_top~1_combout\ : std_logic;
SIGNAL \inst6|pipe_top~2_combout\ : std_logic;
SIGNAL \inst6|Add12~9\ : std_logic;
SIGNAL \inst6|Add12~11\ : std_logic;
SIGNAL \inst6|Add12~12_combout\ : std_logic;
SIGNAL \inst6|pipe_bottom~2_combout\ : std_logic;
SIGNAL \inst1|green_out~1_combout\ : std_logic;
SIGNAL \inst5|Add0~11\ : std_logic;
SIGNAL \inst5|Add0~12_combout\ : std_logic;
SIGNAL \inst5|bird_on~6_combout\ : std_logic;
SIGNAL \inst5|bird_on~1_combout\ : std_logic;
SIGNAL \inst1|green_out~2_combout\ : std_logic;
SIGNAL \inst5|bird_on~5_combout\ : std_logic;
SIGNAL \inst1|green_out~3_combout\ : std_logic;
SIGNAL \inst1|green_out~4_combout\ : std_logic;
SIGNAL \inst1|green_out~q\ : std_logic;
SIGNAL \inst1|blue_out~q\ : std_logic;
SIGNAL \inst1|process_0~3_combout\ : std_logic;
SIGNAL \inst1|process_0~4_combout\ : std_logic;
SIGNAL \inst1|process_0~5_combout\ : std_logic;
SIGNAL \inst1|horiz_sync~q\ : std_logic;
SIGNAL \inst1|horiz_sync_out~feeder_combout\ : std_logic;
SIGNAL \inst1|horiz_sync_out~q\ : std_logic;
SIGNAL \inst6|pipe5_x_pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst6|pipe4_x_pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|PACKET_COUNT\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst2|OUTCNT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|SHIFTIN\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst2|filter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst6|pipe3_x_pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst6|pipe2_x_pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|SHIFTOUT\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst2|INCNT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst11|display|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst6|pipe1_x_pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|inhibit_wait_count\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst2|PACKET_CHAR1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|pixel_row\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|pixel_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst5|bird_y_pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst5|bird_y_motion\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_sw0~input_o\ : std_logic;
SIGNAL \inst2|ALT_INV_send_data~q\ : std_logic;
SIGNAL \inst2|ALT_INV_mouse_state.INHIBIT_TRANS~q\ : std_logic;
SIGNAL \inst2|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\ : std_logic;

BEGIN

red_out <= ww_red_out;
ww_clk <= clk;
vert_sync_out <= ww_vert_sync_out;
ww_sw0 <= sw0;
green_out <= ww_green_out;
blue_out <= ww_blue_out;
horiz_sync_out <= ww_horiz_sync_out;
seg0_dec <= ww_seg0_dec;
seg1_dec <= ww_seg1_dec;
seg3_dec <= ww_seg3_dec;
seg0 <= ww_seg0;
seg1 <= ww_seg1;
seg3 <= ww_seg3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst11|display|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst11|temp_char_address[5]~30_combout\ & \inst11|temp_char_address[4]~29_combout\ & \~GND~combout\ & \inst11|temp_char_address[2]~28_combout\ & 
\inst11|temp_char_address[1]~26_combout\ & \inst11|temp_char_address[0]~25_combout\ & \inst1|pixel_row\(3) & \inst1|pixel_row\(2) & \inst1|pixel_row\(1));

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

\inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|altpll_component|auto_generated|wire_pll1_clk\(0));
\inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\ <= NOT \inst2|MOUSE_CLK_FILTER~clkctrl_outclk\;
\ALT_INV_sw0~input_o\ <= NOT \sw0~input_o\;
\inst2|ALT_INV_send_data~q\ <= NOT \inst2|send_data~q\;
\inst2|ALT_INV_mouse_state.INHIBIT_TRANS~q\ <= NOT \inst2|mouse_state.INHIBIT_TRANS~q\;
\inst2|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\ <= NOT \inst2|mouse_state.WAIT_OUTPUT_READY~q\;

-- Location: LCCOMB_X33_Y17_N6
\inst5|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~1_cout\ = CARRY((\inst5|bird_y_pos\(0) & !\inst1|pixel_row\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_pos\(0),
	datab => \inst1|pixel_row\(0),
	datad => VCC,
	cout => \inst5|LessThan2~1_cout\);

-- Location: LCCOMB_X33_Y17_N8
\inst5|LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~3_cout\ = CARRY((\inst5|bird_y_pos\(1) & (\inst1|pixel_row\(1) & !\inst5|LessThan2~1_cout\)) # (!\inst5|bird_y_pos\(1) & ((\inst1|pixel_row\(1)) # (!\inst5|LessThan2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_pos\(1),
	datab => \inst1|pixel_row\(1),
	datad => VCC,
	cin => \inst5|LessThan2~1_cout\,
	cout => \inst5|LessThan2~3_cout\);

-- Location: LCCOMB_X33_Y17_N10
\inst5|LessThan2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~5_cout\ = CARRY((\inst5|bird_y_pos\(2) & ((!\inst5|LessThan2~3_cout\) # (!\inst1|pixel_row\(2)))) # (!\inst5|bird_y_pos\(2) & (!\inst1|pixel_row\(2) & !\inst5|LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_pos\(2),
	datab => \inst1|pixel_row\(2),
	datad => VCC,
	cin => \inst5|LessThan2~3_cout\,
	cout => \inst5|LessThan2~5_cout\);

-- Location: LCCOMB_X33_Y17_N12
\inst5|LessThan2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~7_cout\ = CARRY((\inst5|bird_y_pos\(3) & (!\inst1|pixel_row\(3) & !\inst5|LessThan2~5_cout\)) # (!\inst5|bird_y_pos\(3) & ((!\inst5|LessThan2~5_cout\) # (!\inst1|pixel_row\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_pos\(3),
	datab => \inst1|pixel_row\(3),
	datad => VCC,
	cin => \inst5|LessThan2~5_cout\,
	cout => \inst5|LessThan2~7_cout\);

-- Location: LCCOMB_X33_Y17_N14
\inst5|LessThan2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~9_cout\ = CARRY((\inst5|Add2~7_combout\ & (\inst5|bird_y_pos\(4) & !\inst5|LessThan2~7_cout\)) # (!\inst5|Add2~7_combout\ & ((\inst5|bird_y_pos\(4)) # (!\inst5|LessThan2~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add2~7_combout\,
	datab => \inst5|bird_y_pos\(4),
	datad => VCC,
	cin => \inst5|LessThan2~7_cout\,
	cout => \inst5|LessThan2~9_cout\);

-- Location: LCCOMB_X33_Y17_N16
\inst5|LessThan2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~11_cout\ = CARRY((\inst5|Add2~6_combout\ & ((!\inst5|LessThan2~9_cout\) # (!\inst5|bird_y_pos\(5)))) # (!\inst5|Add2~6_combout\ & (!\inst5|bird_y_pos\(5) & !\inst5|LessThan2~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add2~6_combout\,
	datab => \inst5|bird_y_pos\(5),
	datad => VCC,
	cin => \inst5|LessThan2~9_cout\,
	cout => \inst5|LessThan2~11_cout\);

-- Location: LCCOMB_X33_Y17_N18
\inst5|LessThan2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~13_cout\ = CARRY((\inst5|Add2~5_combout\ & (\inst5|bird_y_pos\(6) & !\inst5|LessThan2~11_cout\)) # (!\inst5|Add2~5_combout\ & ((\inst5|bird_y_pos\(6)) # (!\inst5|LessThan2~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add2~5_combout\,
	datab => \inst5|bird_y_pos\(6),
	datad => VCC,
	cin => \inst5|LessThan2~11_cout\,
	cout => \inst5|LessThan2~13_cout\);

-- Location: LCCOMB_X33_Y17_N20
\inst5|LessThan2~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~15_cout\ = CARRY((\inst5|Add2~4_combout\ & ((!\inst5|LessThan2~13_cout\) # (!\inst5|bird_y_pos\(7)))) # (!\inst5|Add2~4_combout\ & (!\inst5|bird_y_pos\(7) & !\inst5|LessThan2~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add2~4_combout\,
	datab => \inst5|bird_y_pos\(7),
	datad => VCC,
	cin => \inst5|LessThan2~13_cout\,
	cout => \inst5|LessThan2~15_cout\);

-- Location: LCCOMB_X33_Y17_N22
\inst5|LessThan2~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~17_cout\ = CARRY((\inst5|bird_y_pos\(8) & ((!\inst5|LessThan2~15_cout\) # (!\inst5|Add2~3_combout\))) # (!\inst5|bird_y_pos\(8) & (!\inst5|Add2~3_combout\ & !\inst5|LessThan2~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_pos\(8),
	datab => \inst5|Add2~3_combout\,
	datad => VCC,
	cin => \inst5|LessThan2~15_cout\,
	cout => \inst5|LessThan2~17_cout\);

-- Location: LCCOMB_X33_Y17_N24
\inst5|LessThan2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~18_combout\ = (\inst5|Add2~2_combout\ & (\inst5|LessThan2~17_cout\ & \inst5|bird_y_pos\(9))) # (!\inst5|Add2~2_combout\ & ((\inst5|LessThan2~17_cout\) # (\inst5|bird_y_pos\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add2~2_combout\,
	datad => \inst5|bird_y_pos\(9),
	cin => \inst5|LessThan2~17_cout\,
	combout => \inst5|LessThan2~18_combout\);

-- Location: M9K_X25_Y16_N0
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
	logical_ram_name => "text_display:inst11|char_rom:display|altsyncram:altsyncram_component|altsyncram_kt91:auto_generated|ALTSYNCRAM",
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

-- Location: LCCOMB_X30_Y17_N6
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

-- Location: LCCOMB_X31_Y17_N6
\inst5|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add3~6_combout\ = (\inst5|bird_y_pos\(7) & (!\inst5|Add3~5\)) # (!\inst5|bird_y_pos\(7) & ((\inst5|Add3~5\) # (GND)))
-- \inst5|Add3~7\ = CARRY((!\inst5|Add3~5\) # (!\inst5|bird_y_pos\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|bird_y_pos\(7),
	datad => VCC,
	cin => \inst5|Add3~5\,
	combout => \inst5|Add3~6_combout\,
	cout => \inst5|Add3~7\);

-- Location: LCCOMB_X26_Y15_N10
\inst6|LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan3~1_cout\ = CARRY((!\inst1|pixel_column\(0) & \inst6|pipe1_x_pos\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(0),
	datab => \inst6|pipe1_x_pos\(0),
	datad => VCC,
	cout => \inst6|LessThan3~1_cout\);

-- Location: LCCOMB_X26_Y15_N12
\inst6|LessThan3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan3~3_cout\ = CARRY((\inst6|pipe2_x_pos\(1) & (\inst1|pixel_column\(1) & !\inst6|LessThan3~1_cout\)) # (!\inst6|pipe2_x_pos\(1) & ((\inst1|pixel_column\(1)) # (!\inst6|LessThan3~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe2_x_pos\(1),
	datab => \inst1|pixel_column\(1),
	datad => VCC,
	cin => \inst6|LessThan3~1_cout\,
	cout => \inst6|LessThan3~3_cout\);

-- Location: LCCOMB_X26_Y15_N14
\inst6|LessThan3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan3~5_cout\ = CARRY((\inst6|pipe2_x_pos\(2) & ((!\inst6|LessThan3~3_cout\) # (!\inst6|Add6~0_combout\))) # (!\inst6|pipe2_x_pos\(2) & (!\inst6|Add6~0_combout\ & !\inst6|LessThan3~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe2_x_pos\(2),
	datab => \inst6|Add6~0_combout\,
	datad => VCC,
	cin => \inst6|LessThan3~3_cout\,
	cout => \inst6|LessThan3~5_cout\);

-- Location: LCCOMB_X26_Y15_N16
\inst6|LessThan3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan3~7_cout\ = CARRY((\inst6|pipe2_x_pos\(3) & ((\inst6|Add6~2_combout\) # (!\inst6|LessThan3~5_cout\))) # (!\inst6|pipe2_x_pos\(3) & (\inst6|Add6~2_combout\ & !\inst6|LessThan3~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe2_x_pos\(3),
	datab => \inst6|Add6~2_combout\,
	datad => VCC,
	cin => \inst6|LessThan3~5_cout\,
	cout => \inst6|LessThan3~7_cout\);

-- Location: LCCOMB_X26_Y15_N18
\inst6|LessThan3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan3~9_cout\ = CARRY((\inst6|Add6~4_combout\ & (\inst6|pipe2_x_pos\(4) & !\inst6|LessThan3~7_cout\)) # (!\inst6|Add6~4_combout\ & ((\inst6|pipe2_x_pos\(4)) # (!\inst6|LessThan3~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add6~4_combout\,
	datab => \inst6|pipe2_x_pos\(4),
	datad => VCC,
	cin => \inst6|LessThan3~7_cout\,
	cout => \inst6|LessThan3~9_cout\);

-- Location: LCCOMB_X26_Y15_N20
\inst6|LessThan3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan3~11_cout\ = CARRY((\inst6|pipe2_x_pos\(5) & (\inst6|Add6~6_combout\ & !\inst6|LessThan3~9_cout\)) # (!\inst6|pipe2_x_pos\(5) & ((\inst6|Add6~6_combout\) # (!\inst6|LessThan3~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe2_x_pos\(5),
	datab => \inst6|Add6~6_combout\,
	datad => VCC,
	cin => \inst6|LessThan3~9_cout\,
	cout => \inst6|LessThan3~11_cout\);

-- Location: LCCOMB_X26_Y15_N22
\inst6|LessThan3~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan3~13_cout\ = CARRY((\inst6|pipe2_x_pos\(6) & (!\inst6|Add6~8_combout\ & !\inst6|LessThan3~11_cout\)) # (!\inst6|pipe2_x_pos\(6) & ((!\inst6|LessThan3~11_cout\) # (!\inst6|Add6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe2_x_pos\(6),
	datab => \inst6|Add6~8_combout\,
	datad => VCC,
	cin => \inst6|LessThan3~11_cout\,
	cout => \inst6|LessThan3~13_cout\);

-- Location: LCCOMB_X26_Y15_N24
\inst6|LessThan3~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan3~15_cout\ = CARRY((\inst6|pipe2_x_pos\(7) & (\inst6|Add6~10_combout\ & !\inst6|LessThan3~13_cout\)) # (!\inst6|pipe2_x_pos\(7) & ((\inst6|Add6~10_combout\) # (!\inst6|LessThan3~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe2_x_pos\(7),
	datab => \inst6|Add6~10_combout\,
	datad => VCC,
	cin => \inst6|LessThan3~13_cout\,
	cout => \inst6|LessThan3~15_cout\);

-- Location: LCCOMB_X26_Y15_N26
\inst6|LessThan3~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan3~17_cout\ = CARRY((\inst6|Add6~12_combout\ & (!\inst6|pipe2_x_pos\(8) & !\inst6|LessThan3~15_cout\)) # (!\inst6|Add6~12_combout\ & ((!\inst6|LessThan3~15_cout\) # (!\inst6|pipe2_x_pos\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add6~12_combout\,
	datab => \inst6|pipe2_x_pos\(8),
	datad => VCC,
	cin => \inst6|LessThan3~15_cout\,
	cout => \inst6|LessThan3~17_cout\);

-- Location: LCCOMB_X26_Y15_N28
\inst6|LessThan3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan3~18_combout\ = (\inst6|pipe2_x_pos\(9) & (\inst6|LessThan3~17_cout\ & !\inst6|Add6~14_combout\)) # (!\inst6|pipe2_x_pos\(9) & ((\inst6|LessThan3~17_cout\) # (!\inst6|Add6~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe2_x_pos\(9),
	datad => \inst6|Add6~14_combout\,
	cin => \inst6|LessThan3~17_cout\,
	combout => \inst6|LessThan3~18_combout\);

-- Location: LCCOMB_X24_Y15_N8
\inst6|Add8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add8~0_combout\ = (\inst6|pipe2_x_pos\(3) & (\inst6|pipe2_x_pos\(2) & VCC)) # (!\inst6|pipe2_x_pos\(3) & (\inst6|pipe2_x_pos\(2) $ (VCC)))
-- \inst6|Add8~1\ = CARRY((!\inst6|pipe2_x_pos\(3) & \inst6|pipe2_x_pos\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe2_x_pos\(3),
	datab => \inst6|pipe2_x_pos\(2),
	datad => VCC,
	combout => \inst6|Add8~0_combout\,
	cout => \inst6|Add8~1\);

-- Location: LCCOMB_X24_Y15_N12
\inst6|Add8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add8~4_combout\ = (\inst6|pipe2_x_pos\(5) & (\inst6|Add8~3\ $ (GND))) # (!\inst6|pipe2_x_pos\(5) & (!\inst6|Add8~3\ & VCC))
-- \inst6|Add8~5\ = CARRY((\inst6|pipe2_x_pos\(5) & !\inst6|Add8~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe2_x_pos\(5),
	datad => VCC,
	cin => \inst6|Add8~3\,
	combout => \inst6|Add8~4_combout\,
	cout => \inst6|Add8~5\);

-- Location: LCCOMB_X24_Y15_N14
\inst6|Add8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add8~6_combout\ = (\inst6|pipe2_x_pos\(6) & ((\inst6|Add8~5\) # (GND))) # (!\inst6|pipe2_x_pos\(6) & (!\inst6|Add8~5\))
-- \inst6|Add8~7\ = CARRY((\inst6|pipe2_x_pos\(6)) # (!\inst6|Add8~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe2_x_pos\(6),
	datad => VCC,
	cin => \inst6|Add8~5\,
	combout => \inst6|Add8~6_combout\,
	cout => \inst6|Add8~7\);

-- Location: LCCOMB_X24_Y15_N16
\inst6|Add8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add8~8_combout\ = (\inst6|pipe2_x_pos\(7) & (\inst6|Add8~7\ $ (GND))) # (!\inst6|pipe2_x_pos\(7) & (!\inst6|Add8~7\ & VCC))
-- \inst6|Add8~9\ = CARRY((\inst6|pipe2_x_pos\(7) & !\inst6|Add8~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe2_x_pos\(7),
	datad => VCC,
	cin => \inst6|Add8~7\,
	combout => \inst6|Add8~8_combout\,
	cout => \inst6|Add8~9\);

-- Location: LCCOMB_X24_Y15_N18
\inst6|Add8~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add8~10_combout\ = (\inst6|pipe2_x_pos\(8) & ((\inst6|Add8~9\) # (GND))) # (!\inst6|pipe2_x_pos\(8) & (!\inst6|Add8~9\))
-- \inst6|Add8~11\ = CARRY((\inst6|pipe2_x_pos\(8)) # (!\inst6|Add8~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe2_x_pos\(8),
	datad => VCC,
	cin => \inst6|Add8~9\,
	combout => \inst6|Add8~10_combout\,
	cout => \inst6|Add8~11\);

-- Location: LCCOMB_X24_Y15_N20
\inst6|Add8~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add8~12_combout\ = \inst6|Add8~11\ $ (\inst6|pipe2_x_pos\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst6|pipe2_x_pos\(9),
	cin => \inst6|Add8~11\,
	combout => \inst6|Add8~12_combout\);

-- Location: LCCOMB_X27_Y18_N10
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

-- Location: LCCOMB_X27_Y18_N18
\inst6|Add7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add7~8_combout\ = (\inst6|pipe1_x_pos\(7) & (!\inst6|Add7~7\ & VCC)) # (!\inst6|pipe1_x_pos\(7) & (\inst6|Add7~7\ $ (GND)))
-- \inst6|Add7~9\ = CARRY((!\inst6|pipe1_x_pos\(7) & !\inst6|Add7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe1_x_pos\(7),
	datad => VCC,
	cin => \inst6|Add7~7\,
	combout => \inst6|Add7~8_combout\,
	cout => \inst6|Add7~9\);

-- Location: LCCOMB_X29_Y15_N20
\inst6|Add10~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add10~6_combout\ = (\inst6|pipe4_x_pos\(6) & ((\inst6|Add10~5\) # (GND))) # (!\inst6|pipe4_x_pos\(6) & (!\inst6|Add10~5\))
-- \inst6|Add10~7\ = CARRY((\inst6|pipe4_x_pos\(6)) # (!\inst6|Add10~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe4_x_pos\(6),
	datad => VCC,
	cin => \inst6|Add10~5\,
	combout => \inst6|Add10~6_combout\,
	cout => \inst6|Add10~7\);

-- Location: LCCOMB_X29_Y15_N24
\inst6|Add10~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add10~10_combout\ = (\inst6|pipe4_x_pos\(8) & (!\inst6|Add10~9\)) # (!\inst6|pipe4_x_pos\(8) & ((\inst6|Add10~9\) # (GND)))
-- \inst6|Add10~11\ = CARRY((!\inst6|Add10~9\) # (!\inst6|pipe4_x_pos\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe4_x_pos\(8),
	datad => VCC,
	cin => \inst6|Add10~9\,
	combout => \inst6|Add10~10_combout\,
	cout => \inst6|Add10~11\);

-- Location: LCCOMB_X29_Y15_N26
\inst6|Add10~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add10~12_combout\ = \inst6|pipe4_x_pos\(9) $ (!\inst6|Add10~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe4_x_pos\(9),
	cin => \inst6|Add10~11\,
	combout => \inst6|Add10~12_combout\);

-- Location: LCCOMB_X27_Y17_N6
\inst6|Add9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add9~0_combout\ = (\inst6|pipe3_x_pos\(2) & (\inst6|pipe3_x_pos\(3) $ (VCC))) # (!\inst6|pipe3_x_pos\(2) & (\inst6|pipe3_x_pos\(3) & VCC))
-- \inst6|Add9~1\ = CARRY((\inst6|pipe3_x_pos\(2) & \inst6|pipe3_x_pos\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe3_x_pos\(2),
	datab => \inst6|pipe3_x_pos\(3),
	datad => VCC,
	combout => \inst6|Add9~0_combout\,
	cout => \inst6|Add9~1\);

-- Location: LCCOMB_X27_Y17_N8
\inst6|Add9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add9~2_combout\ = (\inst6|pipe3_x_pos\(4) & (!\inst6|Add9~1\)) # (!\inst6|pipe3_x_pos\(4) & (\inst6|Add9~1\ & VCC))
-- \inst6|Add9~3\ = CARRY((\inst6|pipe3_x_pos\(4) & !\inst6|Add9~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe3_x_pos\(4),
	datad => VCC,
	cin => \inst6|Add9~1\,
	combout => \inst6|Add9~2_combout\,
	cout => \inst6|Add9~3\);

-- Location: LCCOMB_X27_Y17_N10
\inst6|Add9~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add9~4_combout\ = (\inst6|pipe3_x_pos\(5) & (\inst6|Add9~3\ $ (GND))) # (!\inst6|pipe3_x_pos\(5) & (!\inst6|Add9~3\ & VCC))
-- \inst6|Add9~5\ = CARRY((\inst6|pipe3_x_pos\(5) & !\inst6|Add9~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe3_x_pos\(5),
	datad => VCC,
	cin => \inst6|Add9~3\,
	combout => \inst6|Add9~4_combout\,
	cout => \inst6|Add9~5\);

-- Location: LCCOMB_X27_Y17_N12
\inst6|Add9~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add9~6_combout\ = (\inst6|pipe3_x_pos\(6) & (!\inst6|Add9~5\)) # (!\inst6|pipe3_x_pos\(6) & ((\inst6|Add9~5\) # (GND)))
-- \inst6|Add9~7\ = CARRY((!\inst6|Add9~5\) # (!\inst6|pipe3_x_pos\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe3_x_pos\(6),
	datad => VCC,
	cin => \inst6|Add9~5\,
	combout => \inst6|Add9~6_combout\,
	cout => \inst6|Add9~7\);

-- Location: LCCOMB_X27_Y17_N14
\inst6|Add9~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add9~8_combout\ = (\inst6|pipe3_x_pos\(7) & (\inst6|Add9~7\ $ (GND))) # (!\inst6|pipe3_x_pos\(7) & (!\inst6|Add9~7\ & VCC))
-- \inst6|Add9~9\ = CARRY((\inst6|pipe3_x_pos\(7) & !\inst6|Add9~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe3_x_pos\(7),
	datad => VCC,
	cin => \inst6|Add9~7\,
	combout => \inst6|Add9~8_combout\,
	cout => \inst6|Add9~9\);

-- Location: LCCOMB_X27_Y17_N16
\inst6|Add9~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add9~10_combout\ = (\inst6|pipe3_x_pos\(8) & (!\inst6|Add9~9\)) # (!\inst6|pipe3_x_pos\(8) & ((\inst6|Add9~9\) # (GND)))
-- \inst6|Add9~11\ = CARRY((!\inst6|Add9~9\) # (!\inst6|pipe3_x_pos\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe3_x_pos\(8),
	datad => VCC,
	cin => \inst6|Add9~9\,
	combout => \inst6|Add9~10_combout\,
	cout => \inst6|Add9~11\);

-- Location: LCCOMB_X27_Y17_N18
\inst6|Add9~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add9~12_combout\ = \inst6|Add9~11\ $ (!\inst6|pipe3_x_pos\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst6|pipe3_x_pos\(9),
	cin => \inst6|Add9~11\,
	combout => \inst6|Add9~12_combout\);

-- Location: LCCOMB_X28_Y17_N2
\inst6|LessThan6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan6~1_cout\ = CARRY((!\inst6|pipe1_x_pos\(0) & \inst1|pixel_column\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe1_x_pos\(0),
	datab => \inst1|pixel_column\(0),
	datad => VCC,
	cout => \inst6|LessThan6~1_cout\);

-- Location: LCCOMB_X28_Y17_N4
\inst6|LessThan6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan6~3_cout\ = CARRY((\inst6|pipe3_x_pos\(1) & ((!\inst6|LessThan6~1_cout\) # (!\inst1|pixel_column\(1)))) # (!\inst6|pipe3_x_pos\(1) & (!\inst1|pixel_column\(1) & !\inst6|LessThan6~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe3_x_pos\(1),
	datab => \inst1|pixel_column\(1),
	datad => VCC,
	cin => \inst6|LessThan6~1_cout\,
	cout => \inst6|LessThan6~3_cout\);

-- Location: LCCOMB_X28_Y17_N6
\inst6|LessThan6~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan6~5_cout\ = CARRY((\inst6|pipe3_x_pos\(2) & ((\inst1|pixel_column\(2)) # (!\inst6|LessThan6~3_cout\))) # (!\inst6|pipe3_x_pos\(2) & (\inst1|pixel_column\(2) & !\inst6|LessThan6~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe3_x_pos\(2),
	datab => \inst1|pixel_column\(2),
	datad => VCC,
	cin => \inst6|LessThan6~3_cout\,
	cout => \inst6|LessThan6~5_cout\);

-- Location: LCCOMB_X28_Y17_N8
\inst6|LessThan6~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan6~7_cout\ = CARRY((\inst1|pixel_column\(3) & (\inst6|Add9~0_combout\ & !\inst6|LessThan6~5_cout\)) # (!\inst1|pixel_column\(3) & ((\inst6|Add9~0_combout\) # (!\inst6|LessThan6~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(3),
	datab => \inst6|Add9~0_combout\,
	datad => VCC,
	cin => \inst6|LessThan6~5_cout\,
	cout => \inst6|LessThan6~7_cout\);

-- Location: LCCOMB_X28_Y17_N10
\inst6|LessThan6~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan6~9_cout\ = CARRY((\inst6|Add9~2_combout\ & (\inst1|pixel_column\(4) & !\inst6|LessThan6~7_cout\)) # (!\inst6|Add9~2_combout\ & ((\inst1|pixel_column\(4)) # (!\inst6|LessThan6~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add9~2_combout\,
	datab => \inst1|pixel_column\(4),
	datad => VCC,
	cin => \inst6|LessThan6~7_cout\,
	cout => \inst6|LessThan6~9_cout\);

-- Location: LCCOMB_X28_Y17_N12
\inst6|LessThan6~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan6~11_cout\ = CARRY((\inst6|Add9~4_combout\ & ((!\inst6|LessThan6~9_cout\) # (!\inst1|pixel_column\(5)))) # (!\inst6|Add9~4_combout\ & (!\inst1|pixel_column\(5) & !\inst6|LessThan6~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add9~4_combout\,
	datab => \inst1|pixel_column\(5),
	datad => VCC,
	cin => \inst6|LessThan6~9_cout\,
	cout => \inst6|LessThan6~11_cout\);

-- Location: LCCOMB_X28_Y17_N14
\inst6|LessThan6~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan6~13_cout\ = CARRY((\inst6|Add9~6_combout\ & (\inst1|pixel_column\(6) & !\inst6|LessThan6~11_cout\)) # (!\inst6|Add9~6_combout\ & ((\inst1|pixel_column\(6)) # (!\inst6|LessThan6~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add9~6_combout\,
	datab => \inst1|pixel_column\(6),
	datad => VCC,
	cin => \inst6|LessThan6~11_cout\,
	cout => \inst6|LessThan6~13_cout\);

-- Location: LCCOMB_X28_Y17_N16
\inst6|LessThan6~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan6~15_cout\ = CARRY((\inst6|Add9~8_combout\ & ((!\inst6|LessThan6~13_cout\) # (!\inst1|pixel_column\(7)))) # (!\inst6|Add9~8_combout\ & (!\inst1|pixel_column\(7) & !\inst6|LessThan6~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add9~8_combout\,
	datab => \inst1|pixel_column\(7),
	datad => VCC,
	cin => \inst6|LessThan6~13_cout\,
	cout => \inst6|LessThan6~15_cout\);

-- Location: LCCOMB_X28_Y17_N18
\inst6|LessThan6~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan6~17_cout\ = CARRY((\inst1|pixel_column\(8) & ((!\inst6|LessThan6~15_cout\) # (!\inst6|Add9~10_combout\))) # (!\inst1|pixel_column\(8) & (!\inst6|Add9~10_combout\ & !\inst6|LessThan6~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(8),
	datab => \inst6|Add9~10_combout\,
	datad => VCC,
	cin => \inst6|LessThan6~15_cout\,
	cout => \inst6|LessThan6~17_cout\);

-- Location: LCCOMB_X28_Y17_N20
\inst6|LessThan6~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan6~18_combout\ = (\inst1|pixel_column\(9) & ((\inst6|LessThan6~17_cout\) # (!\inst6|Add9~12_combout\))) # (!\inst1|pixel_column\(9) & (!\inst6|Add9~12_combout\ & \inst6|LessThan6~17_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(9),
	datab => \inst6|Add9~12_combout\,
	cin => \inst6|LessThan6~17_cout\,
	combout => \inst6|LessThan6~18_combout\);

-- Location: LCCOMB_X28_Y15_N0
\inst6|LessThan9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan9~1_cout\ = CARRY((\inst6|pipe1_x_pos\(0) & !\inst1|pixel_column\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe1_x_pos\(0),
	datab => \inst1|pixel_column\(0),
	datad => VCC,
	cout => \inst6|LessThan9~1_cout\);

-- Location: LCCOMB_X28_Y15_N2
\inst6|LessThan9~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan9~3_cout\ = CARRY((\inst6|pipe5_x_pos\(1) & (\inst1|pixel_column\(1) & !\inst6|LessThan9~1_cout\)) # (!\inst6|pipe5_x_pos\(1) & ((\inst1|pixel_column\(1)) # (!\inst6|LessThan9~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe5_x_pos\(1),
	datab => \inst1|pixel_column\(1),
	datad => VCC,
	cin => \inst6|LessThan9~1_cout\,
	cout => \inst6|LessThan9~3_cout\);

-- Location: LCCOMB_X28_Y15_N4
\inst6|LessThan9~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan9~5_cout\ = CARRY((\inst6|pipe5_x_pos\(2) & ((!\inst6|LessThan9~3_cout\) # (!\inst6|Add6~0_combout\))) # (!\inst6|pipe5_x_pos\(2) & (!\inst6|Add6~0_combout\ & !\inst6|LessThan9~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe5_x_pos\(2),
	datab => \inst6|Add6~0_combout\,
	datad => VCC,
	cin => \inst6|LessThan9~3_cout\,
	cout => \inst6|LessThan9~5_cout\);

-- Location: LCCOMB_X28_Y15_N6
\inst6|LessThan9~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan9~7_cout\ = CARRY((\inst6|pipe5_x_pos\(3) & (\inst6|Add6~2_combout\ & !\inst6|LessThan9~5_cout\)) # (!\inst6|pipe5_x_pos\(3) & ((\inst6|Add6~2_combout\) # (!\inst6|LessThan9~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe5_x_pos\(3),
	datab => \inst6|Add6~2_combout\,
	datad => VCC,
	cin => \inst6|LessThan9~5_cout\,
	cout => \inst6|LessThan9~7_cout\);

-- Location: LCCOMB_X28_Y15_N8
\inst6|LessThan9~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan9~9_cout\ = CARRY((\inst6|pipe5_x_pos\(4) & ((!\inst6|LessThan9~7_cout\) # (!\inst6|Add6~4_combout\))) # (!\inst6|pipe5_x_pos\(4) & (!\inst6|Add6~4_combout\ & !\inst6|LessThan9~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe5_x_pos\(4),
	datab => \inst6|Add6~4_combout\,
	datad => VCC,
	cin => \inst6|LessThan9~7_cout\,
	cout => \inst6|LessThan9~9_cout\);

-- Location: LCCOMB_X28_Y15_N10
\inst6|LessThan9~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan9~11_cout\ = CARRY((\inst6|pipe5_x_pos\(5) & ((\inst6|Add6~6_combout\) # (!\inst6|LessThan9~9_cout\))) # (!\inst6|pipe5_x_pos\(5) & (\inst6|Add6~6_combout\ & !\inst6|LessThan9~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe5_x_pos\(5),
	datab => \inst6|Add6~6_combout\,
	datad => VCC,
	cin => \inst6|LessThan9~9_cout\,
	cout => \inst6|LessThan9~11_cout\);

-- Location: LCCOMB_X28_Y15_N12
\inst6|LessThan9~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan9~13_cout\ = CARRY((\inst6|Add6~8_combout\ & (\inst6|pipe5_x_pos\(6) & !\inst6|LessThan9~11_cout\)) # (!\inst6|Add6~8_combout\ & ((\inst6|pipe5_x_pos\(6)) # (!\inst6|LessThan9~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add6~8_combout\,
	datab => \inst6|pipe5_x_pos\(6),
	datad => VCC,
	cin => \inst6|LessThan9~11_cout\,
	cout => \inst6|LessThan9~13_cout\);

-- Location: LCCOMB_X28_Y15_N14
\inst6|LessThan9~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan9~15_cout\ = CARRY((\inst6|pipe5_x_pos\(7) & ((\inst6|Add6~10_combout\) # (!\inst6|LessThan9~13_cout\))) # (!\inst6|pipe5_x_pos\(7) & (\inst6|Add6~10_combout\ & !\inst6|LessThan9~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe5_x_pos\(7),
	datab => \inst6|Add6~10_combout\,
	datad => VCC,
	cin => \inst6|LessThan9~13_cout\,
	cout => \inst6|LessThan9~15_cout\);

-- Location: LCCOMB_X28_Y15_N16
\inst6|LessThan9~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan9~17_cout\ = CARRY((\inst6|Add6~12_combout\ & (!\inst6|pipe5_x_pos\(8) & !\inst6|LessThan9~15_cout\)) # (!\inst6|Add6~12_combout\ & ((!\inst6|LessThan9~15_cout\) # (!\inst6|pipe5_x_pos\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add6~12_combout\,
	datab => \inst6|pipe5_x_pos\(8),
	datad => VCC,
	cin => \inst6|LessThan9~15_cout\,
	cout => \inst6|LessThan9~17_cout\);

-- Location: LCCOMB_X28_Y15_N18
\inst6|LessThan9~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan9~18_combout\ = (\inst6|Add6~14_combout\ & (\inst6|LessThan9~17_cout\ & \inst6|pipe5_x_pos\(9))) # (!\inst6|Add6~14_combout\ & ((\inst6|LessThan9~17_cout\) # (\inst6|pipe5_x_pos\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add6~14_combout\,
	datad => \inst6|pipe5_x_pos\(9),
	cin => \inst6|LessThan9~17_cout\,
	combout => \inst6|LessThan9~18_combout\);

-- Location: LCCOMB_X27_Y14_N24
\inst6|Add11~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add11~6_combout\ = (\inst6|pipe5_x_pos\(6) & (!\inst6|Add11~5\)) # (!\inst6|pipe5_x_pos\(6) & ((\inst6|Add11~5\) # (GND)))
-- \inst6|Add11~7\ = CARRY((!\inst6|Add11~5\) # (!\inst6|pipe5_x_pos\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe5_x_pos\(6),
	datad => VCC,
	cin => \inst6|Add11~5\,
	combout => \inst6|Add11~6_combout\,
	cout => \inst6|Add11~7\);

-- Location: LCCOMB_X27_Y14_N26
\inst6|Add11~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add11~8_combout\ = (\inst6|pipe5_x_pos\(7) & (!\inst6|Add11~7\ & VCC)) # (!\inst6|pipe5_x_pos\(7) & (\inst6|Add11~7\ $ (GND)))
-- \inst6|Add11~9\ = CARRY((!\inst6|pipe5_x_pos\(7) & !\inst6|Add11~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe5_x_pos\(7),
	datad => VCC,
	cin => \inst6|Add11~7\,
	combout => \inst6|Add11~8_combout\,
	cout => \inst6|Add11~9\);

-- Location: LCCOMB_X29_Y17_N6
\inst6|Add12~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add12~6_combout\ = (\inst1|pixel_row\(6) & (!\inst6|Add12~5\)) # (!\inst1|pixel_row\(6) & ((\inst6|Add12~5\) # (GND)))
-- \inst6|Add12~7\ = CARRY((!\inst6|Add12~5\) # (!\inst1|pixel_row\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(6),
	datad => VCC,
	cin => \inst6|Add12~5\,
	combout => \inst6|Add12~6_combout\,
	cout => \inst6|Add12~7\);

-- Location: LCCOMB_X29_Y17_N10
\inst6|Add12~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add12~10_combout\ = (\inst1|pixel_row\(8) & (!\inst6|Add12~9\)) # (!\inst1|pixel_row\(8) & ((\inst6|Add12~9\) # (GND)))
-- \inst6|Add12~11\ = CARRY((!\inst6|Add12~9\) # (!\inst1|pixel_row\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pixel_row\(8),
	datad => VCC,
	cin => \inst6|Add12~9\,
	combout => \inst6|Add12~10_combout\,
	cout => \inst6|Add12~11\);

-- Location: LCCOMB_X24_Y18_N10
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

-- Location: LCCOMB_X23_Y13_N0
\inst6|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add0~0_combout\ = \inst6|pipe_move:clk_cnt[0]~q\ $ (GND)
-- \inst6|Add0~1\ = CARRY(!\inst6|pipe_move:clk_cnt[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe_move:clk_cnt[0]~q\,
	datad => VCC,
	combout => \inst6|Add0~0_combout\,
	cout => \inst6|Add0~1\);

-- Location: LCCOMB_X23_Y13_N12
\inst6|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add0~12_combout\ = (\inst6|pipe_move:clk_cnt[6]~q\ & (\inst6|Add0~11\ $ (GND))) # (!\inst6|pipe_move:clk_cnt[6]~q\ & (!\inst6|Add0~11\ & VCC))
-- \inst6|Add0~13\ = CARRY((\inst6|pipe_move:clk_cnt[6]~q\ & !\inst6|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe_move:clk_cnt[6]~q\,
	datad => VCC,
	cin => \inst6|Add0~11\,
	combout => \inst6|Add0~12_combout\,
	cout => \inst6|Add0~13\);

-- Location: LCCOMB_X23_Y13_N22
\inst6|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add0~22_combout\ = (\inst6|pipe_move:clk_cnt[11]~q\ & (!\inst6|Add0~21\)) # (!\inst6|pipe_move:clk_cnt[11]~q\ & ((\inst6|Add0~21\) # (GND)))
-- \inst6|Add0~23\ = CARRY((!\inst6|Add0~21\) # (!\inst6|pipe_move:clk_cnt[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe_move:clk_cnt[11]~q\,
	datad => VCC,
	cin => \inst6|Add0~21\,
	combout => \inst6|Add0~22_combout\,
	cout => \inst6|Add0~23\);

-- Location: LCCOMB_X23_Y13_N26
\inst6|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add0~26_combout\ = (\inst6|pipe_move:clk_cnt[13]~q\ & (!\inst6|Add0~25\)) # (!\inst6|pipe_move:clk_cnt[13]~q\ & ((\inst6|Add0~25\) # (GND)))
-- \inst6|Add0~27\ = CARRY((!\inst6|Add0~25\) # (!\inst6|pipe_move:clk_cnt[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe_move:clk_cnt[13]~q\,
	datad => VCC,
	cin => \inst6|Add0~25\,
	combout => \inst6|Add0~26_combout\,
	cout => \inst6|Add0~27\);

-- Location: LCCOMB_X23_Y13_N30
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

-- Location: LCCOMB_X23_Y12_N10
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

-- Location: LCCOMB_X23_Y12_N12
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

-- Location: LCCOMB_X23_Y12_N22
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

-- Location: LCCOMB_X24_Y14_N10
\inst6|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add2~2_combout\ = (\inst6|pipe2_x_pos\(1) & (\inst6|Add2~1_cout\ & VCC)) # (!\inst6|pipe2_x_pos\(1) & (!\inst6|Add2~1_cout\))
-- \inst6|Add2~3\ = CARRY((!\inst6|pipe2_x_pos\(1) & !\inst6|Add2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe2_x_pos\(1),
	datad => VCC,
	cin => \inst6|Add2~1_cout\,
	combout => \inst6|Add2~2_combout\,
	cout => \inst6|Add2~3\);

-- Location: LCCOMB_X24_Y14_N14
\inst6|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add2~6_combout\ = (\inst6|pipe2_x_pos\(3) & (!\inst6|Add2~5\)) # (!\inst6|pipe2_x_pos\(3) & (\inst6|Add2~5\ & VCC))
-- \inst6|Add2~7\ = CARRY((\inst6|pipe2_x_pos\(3) & !\inst6|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe2_x_pos\(3),
	datad => VCC,
	cin => \inst6|Add2~5\,
	combout => \inst6|Add2~6_combout\,
	cout => \inst6|Add2~7\);

-- Location: LCCOMB_X24_Y14_N22
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

-- Location: LCCOMB_X24_Y14_N24
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

-- Location: LCCOMB_X24_Y14_N26
\inst6|Add2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add2~18_combout\ = \inst6|pipe2_x_pos\(9) $ (\inst6|Add2~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe2_x_pos\(9),
	cin => \inst6|Add2~17\,
	combout => \inst6|Add2~18_combout\);

-- Location: LCCOMB_X29_Y14_N22
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

-- Location: LCCOMB_X28_Y14_N24
\inst6|Add5~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add5~12_combout\ = (\inst6|pipe5_x_pos\(6) & ((GND) # (!\inst6|Add5~11\))) # (!\inst6|pipe5_x_pos\(6) & (\inst6|Add5~11\ $ (GND)))
-- \inst6|Add5~13\ = CARRY((\inst6|pipe5_x_pos\(6)) # (!\inst6|Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe5_x_pos\(6),
	datad => VCC,
	cin => \inst6|Add5~11\,
	combout => \inst6|Add5~12_combout\,
	cout => \inst6|Add5~13\);

-- Location: LCCOMB_X28_Y14_N26
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

-- Location: LCCOMB_X28_Y14_N28
\inst6|Add5~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add5~16_combout\ = (\inst6|pipe5_x_pos\(8) & (\inst6|Add5~15\ $ (GND))) # (!\inst6|pipe5_x_pos\(8) & ((GND) # (!\inst6|Add5~15\)))
-- \inst6|Add5~17\ = CARRY((!\inst6|Add5~15\) # (!\inst6|pipe5_x_pos\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe5_x_pos\(8),
	datad => VCC,
	cin => \inst6|Add5~15\,
	combout => \inst6|Add5~16_combout\,
	cout => \inst6|Add5~17\);

-- Location: LCCOMB_X28_Y14_N30
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

-- Location: LCCOMB_X30_Y19_N22
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

-- Location: LCCOMB_X30_Y19_N26
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

-- Location: LCCOMB_X30_Y16_N20
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

-- Location: LCCOMB_X30_Y16_N22
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

-- Location: FF_X38_Y12_N23
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

-- Location: FF_X38_Y12_N13
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

-- Location: FF_X38_Y12_N11
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

-- Location: LCCOMB_X38_Y12_N10
\inst2|inhibit_wait_count[2]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inhibit_wait_count[2]~13_combout\ = (\inst2|inhibit_wait_count\(2) & (!\inst2|inhibit_wait_count[1]~12\)) # (!\inst2|inhibit_wait_count\(2) & ((\inst2|inhibit_wait_count[1]~12\) # (GND)))
-- \inst2|inhibit_wait_count[2]~14\ = CARRY((!\inst2|inhibit_wait_count[1]~12\) # (!\inst2|inhibit_wait_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inhibit_wait_count\(2),
	datad => VCC,
	cin => \inst2|inhibit_wait_count[1]~12\,
	combout => \inst2|inhibit_wait_count[2]~13_combout\,
	cout => \inst2|inhibit_wait_count[2]~14\);

-- Location: LCCOMB_X38_Y12_N12
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

-- Location: LCCOMB_X38_Y12_N22
\inst2|inhibit_wait_count[8]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inhibit_wait_count[8]~25_combout\ = (\inst2|inhibit_wait_count\(8) & (!\inst2|inhibit_wait_count[7]~24\)) # (!\inst2|inhibit_wait_count\(8) & ((\inst2|inhibit_wait_count[7]~24\) # (GND)))
-- \inst2|inhibit_wait_count[8]~26\ = CARRY((!\inst2|inhibit_wait_count[7]~24\) # (!\inst2|inhibit_wait_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inhibit_wait_count\(8),
	datad => VCC,
	cin => \inst2|inhibit_wait_count[7]~24\,
	combout => \inst2|inhibit_wait_count[8]~25_combout\,
	cout => \inst2|inhibit_wait_count[8]~26\);

-- Location: LCCOMB_X30_Y18_N22
\inst5|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add2~0_combout\ = (\inst1|pixel_row\(3) & \inst1|pixel_row\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(3),
	datac => \inst1|pixel_row\(4),
	combout => \inst5|Add2~0_combout\);

-- Location: LCCOMB_X30_Y18_N12
\inst5|Add2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add2~1_combout\ = (\inst1|pixel_row\(5) & (\inst1|pixel_row\(7) & (\inst5|Add2~0_combout\ & \inst1|pixel_row\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(5),
	datab => \inst1|pixel_row\(7),
	datac => \inst5|Add2~0_combout\,
	datad => \inst1|pixel_row\(6),
	combout => \inst5|Add2~1_combout\);

-- Location: LCCOMB_X30_Y18_N28
\inst5|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add2~2_combout\ = (\inst1|pixel_row\(8) & \inst5|Add2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pixel_row\(8),
	datad => \inst5|Add2~1_combout\,
	combout => \inst5|Add2~2_combout\);

-- Location: LCCOMB_X29_Y17_N22
\inst5|Add2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add2~3_combout\ = \inst5|Add2~1_combout\ $ (\inst1|pixel_row\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Add2~1_combout\,
	datad => \inst1|pixel_row\(8),
	combout => \inst5|Add2~3_combout\);

-- Location: LCCOMB_X30_Y18_N18
\inst5|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add2~4_combout\ = \inst1|pixel_row\(7) $ (((\inst1|pixel_row\(5) & (\inst5|Add2~0_combout\ & \inst1|pixel_row\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(5),
	datab => \inst1|pixel_row\(7),
	datac => \inst5|Add2~0_combout\,
	datad => \inst1|pixel_row\(6),
	combout => \inst5|Add2~4_combout\);

-- Location: LCCOMB_X30_Y18_N0
\inst5|Add2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add2~5_combout\ = \inst1|pixel_row\(6) $ (((\inst1|pixel_row\(5) & (\inst1|pixel_row\(4) & \inst1|pixel_row\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(5),
	datab => \inst1|pixel_row\(4),
	datac => \inst1|pixel_row\(3),
	datad => \inst1|pixel_row\(6),
	combout => \inst5|Add2~5_combout\);

-- Location: LCCOMB_X30_Y18_N30
\inst5|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add2~6_combout\ = \inst1|pixel_row\(5) $ (((\inst1|pixel_row\(3) & \inst1|pixel_row\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(3),
	datac => \inst1|pixel_row\(4),
	datad => \inst1|pixel_row\(5),
	combout => \inst5|Add2~6_combout\);

-- Location: LCCOMB_X33_Y17_N28
\inst5|Add2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add2~7_combout\ = \inst1|pixel_row\(3) $ (\inst1|pixel_row\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pixel_row\(3),
	datad => \inst1|pixel_row\(4),
	combout => \inst5|Add2~7_combout\);

-- Location: LCCOMB_X24_Y16_N12
\inst5|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|LessThan1~1_combout\ = (\inst1|pixel_column\(8) & (\inst1|pixel_column\(5) & \inst1|pixel_column\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pixel_column\(8),
	datac => \inst1|pixel_column\(5),
	datad => \inst1|pixel_column\(6),
	combout => \inst5|LessThan1~1_combout\);

-- Location: LCCOMB_X28_Y17_N28
\inst5|LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|LessThan1~2_combout\ = (\inst1|pixel_column\(8) & (\inst1|pixel_column\(4) & \inst1|pixel_column\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(8),
	datab => \inst1|pixel_column\(4),
	datac => \inst1|pixel_column\(6),
	combout => \inst5|LessThan1~2_combout\);

-- Location: FF_X24_Y18_N11
\inst6|pipe1_x_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add1~4_combout\,
	ena => \inst6|pipe2_x_pos[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe1_x_pos\(2));

-- Location: FF_X24_Y14_N5
\inst6|pipe2_x_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|pipe2_x_pos[9]~1_combout\,
	ena => \inst6|pipe2_x_pos[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe2_x_pos\(9));

-- Location: FF_X24_Y14_N7
\inst6|pipe2_x_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|pipe2_x_pos[8]~2_combout\,
	ena => \inst6|pipe2_x_pos[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe2_x_pos\(8));

-- Location: FF_X24_Y14_N31
\inst6|pipe2_x_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|pipe2_x_pos[3]~4_combout\,
	ena => \inst6|pipe2_x_pos[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe2_x_pos\(3));

-- Location: FF_X24_Y14_N11
\inst6|pipe2_x_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add2~2_combout\,
	ena => \inst6|pipe2_x_pos[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe2_x_pos\(1));

-- Location: FF_X29_Y14_N31
\inst6|pipe4_x_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|pipe4_x_pos[6]~1_combout\,
	ena => \inst6|pipe2_x_pos[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe4_x_pos\(6));

-- Location: FF_X28_Y14_N31
\inst6|pipe5_x_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add5~18_combout\,
	ena => \inst6|pipe2_x_pos[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe5_x_pos\(9));

-- Location: FF_X28_Y14_N5
\inst6|pipe5_x_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|pipe5_x_pos[8]~0_combout\,
	ena => \inst6|pipe2_x_pos[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe5_x_pos\(8));

-- Location: FF_X28_Y14_N3
\inst6|pipe5_x_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|pipe5_x_pos[7]~1_combout\,
	ena => \inst6|pipe2_x_pos[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe5_x_pos\(7));

-- Location: LCCOMB_X30_Y18_N4
\inst6|pipe_top~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe_top~3_combout\ = (((!\inst1|pixel_row\(0) & !\inst1|pixel_row\(1))) # (!\inst5|Add2~0_combout\)) # (!\inst1|pixel_row\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(2),
	datab => \inst1|pixel_row\(0),
	datac => \inst5|Add2~0_combout\,
	datad => \inst1|pixel_row\(1),
	combout => \inst6|pipe_top~3_combout\);

-- Location: LCCOMB_X30_Y18_N14
\inst6|pipe_top~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe_top~4_combout\ = (((!\inst1|pixel_row\(5) & \inst6|pipe_top~3_combout\)) # (!\inst1|pixel_row\(6))) # (!\inst1|pixel_row\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(5),
	datab => \inst1|pixel_row\(7),
	datac => \inst6|pipe_top~3_combout\,
	datad => \inst1|pixel_row\(6),
	combout => \inst6|pipe_top~4_combout\);

-- Location: LCCOMB_X29_Y17_N14
\inst6|pipe_top~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe_top~5_combout\ = (\inst6|pipe_top~2_combout\ & (\inst6|pipe_top~4_combout\ & !\inst1|pixel_row\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe_top~2_combout\,
	datac => \inst6|pipe_top~4_combout\,
	datad => \inst1|pixel_row\(8),
	combout => \inst6|pipe_top~5_combout\);

-- Location: FF_X32_Y17_N31
\inst5|bird_y_motion[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|vert_sync_out~clkctrl_outclk\,
	d => \inst5|bird_y_motion~4_combout\,
	ena => \ALT_INV_sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|bird_y_motion\(1));

-- Location: LCCOMB_X27_Y16_N20
\inst11|LessThan8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan8~1_combout\ = (!\inst11|Add0~6_combout\ & (!\inst11|Add0~2_combout\ & (\inst11|LessThan0~0_combout\ & !\inst11|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add0~6_combout\,
	datab => \inst11|Add0~2_combout\,
	datac => \inst11|LessThan0~0_combout\,
	datad => \inst11|Add0~0_combout\,
	combout => \inst11|LessThan8~1_combout\);

-- Location: LCCOMB_X27_Y16_N22
\inst11|temp_char_address~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address~15_combout\ = ((\inst11|Add0~2_combout\ & (!\inst11|LessThan0~0_combout\ & \inst11|Add0~0_combout\))) # (!\inst11|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan0~1_combout\,
	datab => \inst11|Add0~2_combout\,
	datac => \inst11|LessThan0~0_combout\,
	datad => \inst11|Add0~0_combout\,
	combout => \inst11|temp_char_address~15_combout\);

-- Location: LCCOMB_X26_Y16_N12
\inst11|temp_char_address~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address~20_combout\ = (\inst11|temp_char_address~9_combout\ & \inst11|temp_char_address~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|temp_char_address~9_combout\,
	datac => \inst11|temp_char_address~11_combout\,
	combout => \inst11|temp_char_address~20_combout\);

-- Location: FF_X24_Y13_N21
\inst6|pipe_move:clk_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|clk_cnt~0_combout\,
	ena => \ALT_INV_sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[0]~q\);

-- Location: FF_X23_Y13_N7
\inst6|pipe_move:clk_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add0~6_combout\,
	ena => \ALT_INV_sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[3]~q\);

-- Location: FF_X24_Y13_N5
\inst6|pipe_move:clk_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|clk_cnt~1_combout\,
	ena => \ALT_INV_sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[6]~q\);

-- Location: FF_X23_Y13_N11
\inst6|pipe_move:clk_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add0~10_combout\,
	ena => \ALT_INV_sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[5]~q\);

-- Location: FF_X23_Y13_N23
\inst6|pipe_move:clk_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add0~22_combout\,
	ena => \ALT_INV_sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[11]~q\);

-- Location: FF_X23_Y13_N27
\inst6|pipe_move:clk_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add0~26_combout\,
	ena => \ALT_INV_sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[13]~q\);

-- Location: FF_X23_Y13_N31
\inst6|pipe_move:clk_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add0~30_combout\,
	ena => \ALT_INV_sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[15]~q\);

-- Location: LCCOMB_X24_Y13_N10
\inst6|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Equal0~3_combout\ = (!\inst6|Add0~30_combout\ & (\inst6|Add0~28_combout\ & (!\inst6|Add0~26_combout\ & !\inst6|Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~30_combout\,
	datab => \inst6|Add0~28_combout\,
	datac => \inst6|Add0~26_combout\,
	datad => \inst6|Add0~24_combout\,
	combout => \inst6|Equal0~3_combout\);

-- Location: FF_X24_Y13_N23
\inst6|pipe_move:clk_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|clk_cnt~6_combout\,
	ena => \ALT_INV_sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[18]~q\);

-- Location: FF_X24_Y13_N17
\inst6|pipe_move:clk_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|clk_cnt~7_combout\,
	ena => \ALT_INV_sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[19]~q\);

-- Location: FF_X23_Y12_N11
\inst6|pipe_move:clk_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add0~42_combout\,
	ena => \ALT_INV_sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[21]~q\);

-- Location: FF_X23_Y12_N13
\inst6|pipe_move:clk_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add0~44_combout\,
	ena => \ALT_INV_sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[22]~q\);

-- Location: FF_X23_Y12_N23
\inst6|pipe_move:clk_cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add0~54_combout\,
	ena => \ALT_INV_sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[27]~q\);

-- Location: LCCOMB_X24_Y12_N12
\inst6|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Equal0~8_combout\ = (!\inst6|Add0~50_combout\ & (!\inst6|Add0~54_combout\ & (!\inst6|Add0~48_combout\ & !\inst6|Add0~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~50_combout\,
	datab => \inst6|Add0~54_combout\,
	datac => \inst6|Add0~48_combout\,
	datad => \inst6|Add0~52_combout\,
	combout => \inst6|Equal0~8_combout\);

-- Location: FF_X23_Y12_N27
\inst6|pipe_move:clk_cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add0~58_combout\,
	ena => \ALT_INV_sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[29]~q\);

-- Location: FF_X23_Y12_N31
\inst6|pipe_move:clk_cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add0~62_combout\,
	ena => \ALT_INV_sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[31]~q\);

-- Location: LCCOMB_X30_Y16_N2
\inst1|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~2_combout\ = (\inst1|h_count\(9) & (!\inst1|h_count\(8) & \inst1|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|h_count\(9),
	datac => \inst1|h_count\(8),
	datad => \inst1|h_count\(7),
	combout => \inst1|process_0~2_combout\);

-- Location: LCCOMB_X29_Y19_N10
\inst1|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Equal1~0_combout\ = ((\inst1|h_count\(2)) # ((\inst1|h_count\(8)) # (!\inst1|h_count\(5)))) # (!\inst1|h_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(7),
	datab => \inst1|h_count\(2),
	datac => \inst1|h_count\(8),
	datad => \inst1|h_count\(5),
	combout => \inst1|Equal1~0_combout\);

-- Location: LCCOMB_X32_Y17_N2
\inst5|bird_y_motion~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_y_motion~2_combout\ = (\inst5|bird_y_pos\(7)) # ((\inst5|LessThan4~1_combout\) # (\inst5|LessThan4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|bird_y_pos\(7),
	datac => \inst5|LessThan4~1_combout\,
	datad => \inst5|LessThan4~0_combout\,
	combout => \inst5|bird_y_motion~2_combout\);

-- Location: LCCOMB_X24_Y13_N20
\inst6|clk_cnt~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|clk_cnt~0_combout\ = (!\inst6|Add0~0_combout\ & !\inst6|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Add0~0_combout\,
	datad => \inst6|Equal0~10_combout\,
	combout => \inst6|clk_cnt~0_combout\);

-- Location: LCCOMB_X24_Y13_N4
\inst6|clk_cnt~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|clk_cnt~1_combout\ = (\inst6|Add0~12_combout\ & !\inst6|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~12_combout\,
	datad => \inst6|Equal0~10_combout\,
	combout => \inst6|clk_cnt~1_combout\);

-- Location: LCCOMB_X24_Y13_N22
\inst6|clk_cnt~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|clk_cnt~6_combout\ = (\inst6|Add0~36_combout\ & !\inst6|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Add0~36_combout\,
	datad => \inst6|Equal0~10_combout\,
	combout => \inst6|clk_cnt~6_combout\);

-- Location: LCCOMB_X24_Y13_N16
\inst6|clk_cnt~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|clk_cnt~7_combout\ = (\inst6|Add0~38_combout\ & !\inst6|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add0~38_combout\,
	datad => \inst6|Equal0~10_combout\,
	combout => \inst6|clk_cnt~7_combout\);

-- Location: FF_X36_Y13_N27
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

-- Location: FF_X1_Y14_N21
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

-- Location: LCCOMB_X1_Y14_N20
\inst2|MOUSE_CLK_FILTER~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|MOUSE_CLK_FILTER~0_combout\ = (\inst2|filter\(4) & ((\inst2|filter\(7)) # (!\inst2|filter\(2)))) # (!\inst2|filter\(4) & (!\inst2|filter\(2) & \inst2|filter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|filter\(4),
	datab => \inst2|filter\(2),
	datac => \inst2|filter\(7),
	combout => \inst2|MOUSE_CLK_FILTER~0_combout\);

-- Location: FF_X37_Y12_N5
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

-- Location: LCCOMB_X36_Y12_N24
\inst2|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Selector6~0_combout\ = (\inst2|send_data~q\ & ((\inst2|mouse_state.INPUT_PACKETS~q\) # (!\inst2|mouse_state.INHIBIT_TRANS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|mouse_state.INPUT_PACKETS~q\,
	datab => \inst2|mouse_state.INHIBIT_TRANS~q\,
	datad => \inst2|send_data~q\,
	combout => \inst2|Selector6~0_combout\);

-- Location: FF_X38_Y12_N7
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

-- Location: FF_X37_Y13_N7
\inst2|SHIFTIN[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|SHIFTIN[0]~feeder_combout\,
	ena => \inst2|SHIFTIN[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SHIFTIN\(0));

-- Location: LCCOMB_X36_Y13_N26
\inst2|PACKET_CHAR1[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|PACKET_CHAR1[0]~0_combout\ = (\inst2|PACKET_COUNT\(1) & (((\inst2|PACKET_CHAR1\(0))))) # (!\inst2|PACKET_COUNT\(1) & ((\inst2|left_button~0_combout\ & (\inst2|SHIFTIN\(0))) # (!\inst2|left_button~0_combout\ & ((\inst2|PACKET_CHAR1\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SHIFTIN\(0),
	datab => \inst2|PACKET_COUNT\(1),
	datac => \inst2|PACKET_CHAR1\(0),
	datad => \inst2|left_button~0_combout\,
	combout => \inst2|PACKET_CHAR1[0]~0_combout\);

-- Location: FF_X37_Y12_N7
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

-- Location: FF_X36_Y12_N13
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

-- Location: LCCOMB_X37_Y12_N4
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

-- Location: LCCOMB_X38_Y12_N6
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

-- Location: FF_X37_Y13_N1
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

-- Location: LCCOMB_X36_Y13_N14
\inst2|SHIFTIN[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SHIFTIN[0]~1_combout\ = (!\inst2|INCNT\(2) & (!\inst2|INCNT\(0) & !\inst2|INCNT\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|INCNT\(2),
	datac => \inst2|INCNT\(0),
	datad => \inst2|INCNT\(1),
	combout => \inst2|SHIFTIN[0]~1_combout\);

-- Location: LCCOMB_X37_Y13_N26
\inst2|SHIFTIN[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SHIFTIN[0]~2_combout\ = (!\inst2|mouse_state.WAIT_OUTPUT_READY~q\ & (\inst2|READ_CHAR~q\ & ((\inst2|SHIFTIN[0]~1_combout\) # (!\inst2|INCNT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|mouse_state.WAIT_OUTPUT_READY~q\,
	datab => \inst2|READ_CHAR~q\,
	datac => \inst2|INCNT\(3),
	datad => \inst2|SHIFTIN[0]~1_combout\,
	combout => \inst2|SHIFTIN[0]~2_combout\);

-- Location: LCCOMB_X37_Y12_N6
\inst2|iready_set~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|iready_set~0_combout\ = (\inst2|READ_CHAR~q\ & (((!\inst2|LessThan1~0_combout\)))) # (!\inst2|READ_CHAR~q\ & (\mouse_data~input_o\ & (\inst2|iready_set~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse_data~input_o\,
	datab => \inst2|READ_CHAR~q\,
	datac => \inst2|iready_set~q\,
	datad => \inst2|LessThan1~0_combout\,
	combout => \inst2|iready_set~0_combout\);

-- Location: LCCOMB_X36_Y12_N12
\inst2|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Selector4~0_combout\ = (\inst2|iready_set~q\ & (\inst2|mouse_state.WAIT_OUTPUT_READY~q\ & ((\inst2|output_ready~q\)))) # (!\inst2|iready_set~q\ & ((\inst2|mouse_state.WAIT_CMD_ACK~q\) # ((\inst2|mouse_state.WAIT_OUTPUT_READY~q\ & 
-- \inst2|output_ready~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|iready_set~q\,
	datab => \inst2|mouse_state.WAIT_OUTPUT_READY~q\,
	datac => \inst2|mouse_state.WAIT_CMD_ACK~q\,
	datad => \inst2|output_ready~q\,
	combout => \inst2|Selector4~0_combout\);

-- Location: FF_X37_Y13_N13
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

-- Location: FF_X37_Y13_N3
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

-- Location: FF_X37_Y13_N29
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

-- Location: FF_X37_Y13_N11
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

-- Location: FF_X37_Y13_N25
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

-- Location: FF_X37_Y13_N19
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

-- Location: FF_X37_Y13_N21
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

-- Location: LCCOMB_X32_Y17_N30
\inst5|bird_y_motion~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_y_motion~4_combout\ = (!\inst5|bird_y_pos\(9) & ((\inst5|LessThan5~2_combout\) # ((\inst2|left_button~q\ & \inst5|bird_y_motion~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_pos\(9),
	datab => \inst2|left_button~q\,
	datac => \inst5|LessThan5~2_combout\,
	datad => \inst5|bird_y_motion~2_combout\,
	combout => \inst5|bird_y_motion~4_combout\);

-- Location: LCCOMB_X24_Y14_N4
\inst6|pipe2_x_pos[9]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe2_x_pos[9]~1_combout\ = !\inst6|Add2~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Add2~18_combout\,
	combout => \inst6|pipe2_x_pos[9]~1_combout\);

-- Location: LCCOMB_X24_Y14_N6
\inst6|pipe2_x_pos[8]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe2_x_pos[8]~2_combout\ = !\inst6|Add2~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|Add2~16_combout\,
	combout => \inst6|pipe2_x_pos[8]~2_combout\);

-- Location: LCCOMB_X24_Y14_N30
\inst6|pipe2_x_pos[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe2_x_pos[3]~4_combout\ = !\inst6|Add2~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Add2~6_combout\,
	combout => \inst6|pipe2_x_pos[3]~4_combout\);

-- Location: LCCOMB_X29_Y14_N30
\inst6|pipe4_x_pos[6]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe4_x_pos[6]~1_combout\ = !\inst6|Add4~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Add4~12_combout\,
	combout => \inst6|pipe4_x_pos[6]~1_combout\);

-- Location: LCCOMB_X28_Y14_N4
\inst6|pipe5_x_pos[8]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe5_x_pos[8]~0_combout\ = !\inst6|Add5~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|Add5~16_combout\,
	combout => \inst6|pipe5_x_pos[8]~0_combout\);

-- Location: LCCOMB_X28_Y14_N2
\inst6|pipe5_x_pos[7]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe5_x_pos[7]~1_combout\ = !\inst6|Add5~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Add5~14_combout\,
	combout => \inst6|pipe5_x_pos[7]~1_combout\);

-- Location: CLKCTRL_G16
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

-- Location: LCCOMB_X37_Y13_N6
\inst2|SHIFTIN[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SHIFTIN[0]~feeder_combout\ = \inst2|SHIFTIN\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|SHIFTIN\(1),
	combout => \inst2|SHIFTIN[0]~feeder_combout\);

-- Location: LCCOMB_X37_Y13_N0
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

-- Location: LCCOMB_X37_Y13_N12
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

-- Location: LCCOMB_X37_Y13_N2
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

-- Location: LCCOMB_X37_Y13_N28
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

-- Location: LCCOMB_X37_Y13_N10
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

-- Location: LCCOMB_X37_Y13_N24
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

-- Location: LCCOMB_X37_Y13_N18
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

-- Location: LCCOMB_X37_Y13_N20
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

-- Location: IOOBUF_X23_Y29_N9
\seg0_dec~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_seg0_dec);

-- Location: IOOBUF_X26_Y29_N30
\seg1_dec~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_seg1_dec);

-- Location: IOOBUF_X7_Y29_N30
\seg3_dec~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_seg3_dec);

-- Location: IOOBUF_X26_Y29_N16
\seg0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_seg0(6));

-- Location: IOOBUF_X28_Y29_N23
\seg0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_seg0(5));

-- Location: IOOBUF_X26_Y29_N9
\seg0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_seg0(4));

-- Location: IOOBUF_X28_Y29_N30
\seg0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_seg0(3));

-- Location: IOOBUF_X26_Y29_N2
\seg0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_seg0(2));

-- Location: IOOBUF_X21_Y29_N30
\seg0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_seg0(1));

-- Location: IOOBUF_X21_Y29_N23
\seg0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_seg0(0));

-- Location: IOOBUF_X26_Y29_N23
\seg1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_seg1(6));

-- Location: IOOBUF_X28_Y29_N16
\seg1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_seg1(5));

-- Location: IOOBUF_X23_Y29_N30
\seg1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_seg1(4));

-- Location: IOOBUF_X23_Y29_N23
\seg1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_seg1(3));

-- Location: IOOBUF_X23_Y29_N2
\seg1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_seg1(2));

-- Location: IOOBUF_X21_Y29_N9
\seg1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_seg1(1));

-- Location: IOOBUF_X21_Y29_N2
\seg1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_seg1(0));

-- Location: IOOBUF_X28_Y0_N16
\seg3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_seg3(6));

-- Location: IOOBUF_X26_Y0_N16
\seg3[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_seg3(5));

-- Location: IOOBUF_X0_Y10_N16
\seg3[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_seg3(4));

-- Location: IOOBUF_X11_Y29_N9
\seg3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_seg3(3));

-- Location: IOOBUF_X23_Y0_N16
\seg3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_seg3(2));

-- Location: IOOBUF_X41_Y26_N9
\seg3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_seg3(1));

-- Location: IOOBUF_X5_Y29_N2
\seg3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_seg3(0));

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

-- Location: LCCOMB_X11_Y11_N4
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

-- Location: FF_X11_Y11_N5
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

-- Location: LCCOMB_X1_Y14_N26
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

-- Location: FF_X1_Y14_N27
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

-- Location: FF_X1_Y14_N15
\inst2|filter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|filter\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|filter\(2));

-- Location: FF_X1_Y14_N25
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

-- Location: LCCOMB_X1_Y14_N22
\inst2|filter[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|filter[4]~feeder_combout\ = \inst2|filter\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|filter\(3),
	combout => \inst2|filter[4]~feeder_combout\);

-- Location: FF_X1_Y14_N23
\inst2|filter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|filter[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|filter\(4));

-- Location: FF_X1_Y14_N19
\inst2|filter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|filter\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|filter\(5));

-- Location: LCCOMB_X1_Y14_N30
\inst2|filter[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|filter[6]~feeder_combout\ = \inst2|filter\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|filter\(5),
	combout => \inst2|filter[6]~feeder_combout\);

-- Location: FF_X1_Y14_N31
\inst2|filter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|filter[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|filter\(6));

-- Location: LCCOMB_X1_Y14_N16
\inst2|MOUSE_CLK_FILTER~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|MOUSE_CLK_FILTER~2_combout\ = (\inst2|filter\(1) & ((\inst2|MOUSE_CLK_FILTER~q\) # ((\inst2|filter\(0) & \inst2|filter\(6))))) # (!\inst2|filter\(1) & (\inst2|MOUSE_CLK_FILTER~q\ & ((\inst2|filter\(0)) # (\inst2|filter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|filter\(1),
	datab => \inst2|filter\(0),
	datac => \inst2|filter\(6),
	datad => \inst2|MOUSE_CLK_FILTER~q\,
	combout => \inst2|MOUSE_CLK_FILTER~2_combout\);

-- Location: LCCOMB_X1_Y14_N28
\inst2|MOUSE_CLK_FILTER~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|MOUSE_CLK_FILTER~1_combout\ = (\inst2|filter\(3) & ((\inst2|MOUSE_CLK_FILTER~q\) # ((\inst2|filter\(5) & \inst2|filter\(2))))) # (!\inst2|filter\(3) & (\inst2|MOUSE_CLK_FILTER~q\ & ((\inst2|filter\(5)) # (\inst2|filter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|filter\(3),
	datab => \inst2|filter\(5),
	datac => \inst2|filter\(2),
	datad => \inst2|MOUSE_CLK_FILTER~q\,
	combout => \inst2|MOUSE_CLK_FILTER~1_combout\);

-- Location: LCCOMB_X1_Y14_N12
\inst2|MOUSE_CLK_FILTER~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|MOUSE_CLK_FILTER~3_combout\ = (\inst2|MOUSE_CLK_FILTER~0_combout\ & ((\inst2|MOUSE_CLK_FILTER~q\) # ((\inst2|MOUSE_CLK_FILTER~2_combout\ & \inst2|MOUSE_CLK_FILTER~1_combout\)))) # (!\inst2|MOUSE_CLK_FILTER~0_combout\ & (\inst2|MOUSE_CLK_FILTER~q\ & 
-- ((\inst2|MOUSE_CLK_FILTER~2_combout\) # (\inst2|MOUSE_CLK_FILTER~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|MOUSE_CLK_FILTER~0_combout\,
	datab => \inst2|MOUSE_CLK_FILTER~2_combout\,
	datac => \inst2|MOUSE_CLK_FILTER~q\,
	datad => \inst2|MOUSE_CLK_FILTER~1_combout\,
	combout => \inst2|MOUSE_CLK_FILTER~3_combout\);

-- Location: FF_X1_Y14_N13
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

-- Location: CLKCTRL_G4
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

-- Location: LCCOMB_X35_Y12_N6
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

-- Location: LCCOMB_X38_Y12_N8
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

-- Location: LCCOMB_X38_Y12_N4
\inst2|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Selector0~0_combout\ = (\inst2|mouse_state.INHIBIT_TRANS~q\) # ((\inst2|inhibit_wait_count\(10) & \inst2|inhibit_wait_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inhibit_wait_count\(10),
	datac => \inst2|mouse_state.INHIBIT_TRANS~q\,
	datad => \inst2|inhibit_wait_count\(11),
	combout => \inst2|Selector0~0_combout\);

-- Location: FF_X38_Y12_N5
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

-- Location: FF_X38_Y12_N9
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

-- Location: LCCOMB_X38_Y12_N14
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

-- Location: FF_X38_Y12_N15
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

-- Location: LCCOMB_X38_Y12_N16
\inst2|inhibit_wait_count[5]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inhibit_wait_count[5]~19_combout\ = (\inst2|inhibit_wait_count\(5) & (\inst2|inhibit_wait_count[4]~18\ $ (GND))) # (!\inst2|inhibit_wait_count\(5) & (!\inst2|inhibit_wait_count[4]~18\ & VCC))
-- \inst2|inhibit_wait_count[5]~20\ = CARRY((\inst2|inhibit_wait_count\(5) & !\inst2|inhibit_wait_count[4]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inhibit_wait_count\(5),
	datad => VCC,
	cin => \inst2|inhibit_wait_count[4]~18\,
	combout => \inst2|inhibit_wait_count[5]~19_combout\,
	cout => \inst2|inhibit_wait_count[5]~20\);

-- Location: FF_X38_Y12_N17
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

-- Location: LCCOMB_X38_Y12_N18
\inst2|inhibit_wait_count[6]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inhibit_wait_count[6]~21_combout\ = (\inst2|inhibit_wait_count\(6) & (!\inst2|inhibit_wait_count[5]~20\)) # (!\inst2|inhibit_wait_count\(6) & ((\inst2|inhibit_wait_count[5]~20\) # (GND)))
-- \inst2|inhibit_wait_count[6]~22\ = CARRY((!\inst2|inhibit_wait_count[5]~20\) # (!\inst2|inhibit_wait_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inhibit_wait_count\(6),
	datad => VCC,
	cin => \inst2|inhibit_wait_count[5]~20\,
	combout => \inst2|inhibit_wait_count[6]~21_combout\,
	cout => \inst2|inhibit_wait_count[6]~22\);

-- Location: FF_X38_Y12_N19
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

-- Location: LCCOMB_X38_Y12_N20
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

-- Location: FF_X38_Y12_N21
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

-- Location: LCCOMB_X38_Y12_N24
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

-- Location: FF_X38_Y12_N25
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

-- Location: LCCOMB_X38_Y12_N26
\inst2|inhibit_wait_count[10]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inhibit_wait_count[10]~29_combout\ = (\inst2|inhibit_wait_count\(10) & (!\inst2|inhibit_wait_count[9]~28\)) # (!\inst2|inhibit_wait_count\(10) & ((\inst2|inhibit_wait_count[9]~28\) # (GND)))
-- \inst2|inhibit_wait_count[10]~30\ = CARRY((!\inst2|inhibit_wait_count[9]~28\) # (!\inst2|inhibit_wait_count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inhibit_wait_count\(10),
	datad => VCC,
	cin => \inst2|inhibit_wait_count[9]~28\,
	combout => \inst2|inhibit_wait_count[10]~29_combout\,
	cout => \inst2|inhibit_wait_count[10]~30\);

-- Location: LCCOMB_X38_Y12_N28
\inst2|inhibit_wait_count[11]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inhibit_wait_count[11]~31_combout\ = \inst2|inhibit_wait_count[10]~30\ $ (!\inst2|inhibit_wait_count\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inhibit_wait_count\(11),
	cin => \inst2|inhibit_wait_count[10]~30\,
	combout => \inst2|inhibit_wait_count[11]~31_combout\);

-- Location: FF_X38_Y12_N29
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

-- Location: FF_X38_Y12_N27
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

-- Location: LCCOMB_X38_Y12_N2
\inst2|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Selector1~0_combout\ = (\inst2|inhibit_wait_count\(11) & (\inst2|inhibit_wait_count\(10) & !\inst2|mouse_state.INHIBIT_TRANS~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inhibit_wait_count\(11),
	datac => \inst2|inhibit_wait_count\(10),
	datad => \inst2|mouse_state.INHIBIT_TRANS~q\,
	combout => \inst2|Selector1~0_combout\);

-- Location: FF_X38_Y12_N3
\inst2|mouse_state.LOAD_COMMAND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|mouse_state.LOAD_COMMAND~q\);

-- Location: LCCOMB_X38_Y12_N0
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

-- Location: FF_X38_Y12_N1
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

-- Location: LCCOMB_X36_Y12_N2
\inst2|Selector6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Selector6~1_combout\ = (\inst2|Selector6~0_combout\) # ((\inst2|mouse_state.LOAD_COMMAND~q\) # (\inst2|mouse_state.LOAD_COMMAND2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector6~0_combout\,
	datab => \inst2|mouse_state.LOAD_COMMAND~q\,
	datac => \inst2|mouse_state.LOAD_COMMAND2~q\,
	combout => \inst2|Selector6~1_combout\);

-- Location: FF_X36_Y12_N3
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

-- Location: LCCOMB_X36_Y12_N8
\inst2|OUTCNT~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|OUTCNT~2_combout\ = (\inst2|OUTCNT\(3) & (\inst2|OUTCNT\(0) & (!\inst2|OUTCNT\(1) & !\inst2|OUTCNT\(2)))) # (!\inst2|OUTCNT\(3) & (\inst2|OUTCNT\(0) $ ((\inst2|OUTCNT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|OUTCNT\(3),
	datab => \inst2|OUTCNT\(0),
	datac => \inst2|OUTCNT\(1),
	datad => \inst2|OUTCNT\(2),
	combout => \inst2|OUTCNT~2_combout\);

-- Location: LCCOMB_X35_Y12_N12
\inst2|send_char~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|send_char~0_combout\ = (\inst2|send_char~q\) # ((\inst2|mouse_state.WAIT_OUTPUT_READY~q\ & \inst2|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|mouse_state.WAIT_OUTPUT_READY~q\,
	datac => \inst2|send_char~q\,
	datad => \inst2|LessThan0~0_combout\,
	combout => \inst2|send_char~0_combout\);

-- Location: FF_X35_Y12_N13
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

-- Location: LCCOMB_X36_Y12_N14
\inst2|output_ready~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|output_ready~0_combout\ = (\inst2|mouse_state.WAIT_OUTPUT_READY~q\ & !\inst2|send_char~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst2|send_char~q\,
	combout => \inst2|output_ready~0_combout\);

-- Location: FF_X36_Y12_N9
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

-- Location: LCCOMB_X36_Y12_N18
\inst2|OUTCNT~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|OUTCNT~1_combout\ = (!\inst2|OUTCNT\(3) & (\inst2|OUTCNT\(2) $ (((\inst2|OUTCNT\(0) & \inst2|OUTCNT\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|OUTCNT\(3),
	datab => \inst2|OUTCNT\(0),
	datac => \inst2|OUTCNT\(2),
	datad => \inst2|OUTCNT\(1),
	combout => \inst2|OUTCNT~1_combout\);

-- Location: FF_X36_Y12_N19
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

-- Location: LCCOMB_X36_Y12_N28
\inst2|OUTCNT~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|OUTCNT~3_combout\ = (!\inst2|OUTCNT\(0) & (((!\inst2|OUTCNT\(2) & !\inst2|OUTCNT\(1))) # (!\inst2|OUTCNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|OUTCNT\(3),
	datab => \inst2|OUTCNT\(2),
	datac => \inst2|OUTCNT\(0),
	datad => \inst2|OUTCNT\(1),
	combout => \inst2|OUTCNT~3_combout\);

-- Location: FF_X36_Y12_N29
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

-- Location: LCCOMB_X36_Y12_N0
\inst2|OUTCNT~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|OUTCNT~0_combout\ = (\inst2|OUTCNT\(1) & (\inst2|OUTCNT\(0) & (!\inst2|OUTCNT\(3) & \inst2|OUTCNT\(2)))) # (!\inst2|OUTCNT\(1) & (((\inst2|OUTCNT\(3) & !\inst2|OUTCNT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|OUTCNT\(1),
	datab => \inst2|OUTCNT\(0),
	datac => \inst2|OUTCNT\(3),
	datad => \inst2|OUTCNT\(2),
	combout => \inst2|OUTCNT~0_combout\);

-- Location: FF_X36_Y12_N1
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

-- Location: LCCOMB_X36_Y12_N30
\inst2|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~0_combout\ = (\inst2|OUTCNT\(3) & ((\inst2|OUTCNT\(1)) # (\inst2|OUTCNT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|OUTCNT\(3),
	datac => \inst2|OUTCNT\(1),
	datad => \inst2|OUTCNT\(2),
	combout => \inst2|LessThan0~0_combout\);

-- Location: FF_X36_Y12_N25
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

-- Location: LCCOMB_X36_Y12_N20
\inst2|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Selector3~0_combout\ = (\inst2|mouse_state.LOAD_COMMAND2~q\) # ((\inst2|mouse_state.WAIT_OUTPUT_READY~q\ & !\inst2|output_ready~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|mouse_state.LOAD_COMMAND2~q\,
	datac => \inst2|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst2|output_ready~q\,
	combout => \inst2|Selector3~0_combout\);

-- Location: FF_X36_Y12_N21
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

-- Location: LCCOMB_X36_Y12_N26
\inst2|MOUSE_DATA_BUF~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|MOUSE_DATA_BUF~0_combout\ = (!\inst2|OUTCNT\(1) & !\inst2|OUTCNT\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|OUTCNT\(1),
	datad => \inst2|OUTCNT\(2),
	combout => \inst2|MOUSE_DATA_BUF~0_combout\);

-- Location: LCCOMB_X35_Y12_N26
\inst2|MOUSE_DATA_BUF~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|MOUSE_DATA_BUF~1_combout\ = (!\inst2|send_char~q\ & (\inst2|mouse_state.WAIT_OUTPUT_READY~q\ & ((\inst2|MOUSE_DATA_BUF~0_combout\) # (!\inst2|OUTCNT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|send_char~q\,
	datab => \inst2|mouse_state.WAIT_OUTPUT_READY~q\,
	datac => \inst2|OUTCNT\(3),
	datad => \inst2|MOUSE_DATA_BUF~0_combout\,
	combout => \inst2|MOUSE_DATA_BUF~1_combout\);

-- Location: FF_X35_Y12_N7
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
	ena => \inst2|MOUSE_DATA_BUF~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SHIFTOUT\(9));

-- Location: LCCOMB_X35_Y12_N24
\inst2|SHIFTOUT[8]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SHIFTOUT[8]~3_combout\ = !\inst2|SHIFTOUT\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|SHIFTOUT\(9),
	combout => \inst2|SHIFTOUT[8]~3_combout\);

-- Location: FF_X35_Y12_N25
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
	ena => \inst2|MOUSE_DATA_BUF~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SHIFTOUT\(8));

-- Location: LCCOMB_X35_Y12_N10
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

-- Location: FF_X35_Y12_N11
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
	ena => \inst2|MOUSE_DATA_BUF~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SHIFTOUT\(7));

-- Location: LCCOMB_X35_Y12_N16
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

-- Location: FF_X35_Y12_N17
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
	ena => \inst2|MOUSE_DATA_BUF~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SHIFTOUT\(6));

-- Location: LCCOMB_X35_Y12_N2
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

-- Location: FF_X35_Y12_N3
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
	ena => \inst2|MOUSE_DATA_BUF~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SHIFTOUT\(5));

-- Location: LCCOMB_X35_Y12_N20
\inst2|SHIFTOUT[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SHIFTOUT[4]~2_combout\ = !\inst2|SHIFTOUT\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|SHIFTOUT\(5),
	combout => \inst2|SHIFTOUT[4]~2_combout\);

-- Location: FF_X35_Y12_N21
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
	ena => \inst2|MOUSE_DATA_BUF~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SHIFTOUT\(4));

-- Location: LCCOMB_X35_Y12_N22
\inst2|SHIFTOUT[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SHIFTOUT[3]~1_combout\ = !\inst2|SHIFTOUT\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|SHIFTOUT\(4),
	combout => \inst2|SHIFTOUT[3]~1_combout\);

-- Location: FF_X35_Y12_N23
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
	ena => \inst2|MOUSE_DATA_BUF~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SHIFTOUT\(3));

-- Location: LCCOMB_X35_Y12_N0
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

-- Location: FF_X35_Y12_N1
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
	ena => \inst2|MOUSE_DATA_BUF~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SHIFTOUT\(2));

-- Location: LCCOMB_X35_Y12_N18
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

-- Location: FF_X35_Y12_N19
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
	ena => \inst2|MOUSE_DATA_BUF~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SHIFTOUT\(1));

-- Location: LCCOMB_X35_Y12_N4
\inst2|MOUSE_DATA_BUF~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|MOUSE_DATA_BUF~feeder_combout\ = \inst2|SHIFTOUT\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|SHIFTOUT\(1),
	combout => \inst2|MOUSE_DATA_BUF~feeder_combout\);

-- Location: FF_X35_Y12_N5
\inst2|MOUSE_DATA_BUF\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|MOUSE_DATA_BUF~feeder_combout\,
	clrn => \inst2|ALT_INV_send_data~q\,
	ena => \inst2|MOUSE_DATA_BUF~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|MOUSE_DATA_BUF~q\);

-- Location: LCCOMB_X38_Y12_N30
\inst2|WideOr4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|WideOr4~combout\ = ((\inst2|mouse_state.LOAD_COMMAND2~q\) # (\inst2|mouse_state.LOAD_COMMAND~q\)) # (!\inst2|mouse_state.INHIBIT_TRANS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|mouse_state.INHIBIT_TRANS~q\,
	datab => \inst2|mouse_state.LOAD_COMMAND2~q\,
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
	pll_compensation_delay => 5738,
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

-- Location: LCCOMB_X30_Y16_N4
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

-- Location: FF_X30_Y16_N5
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

-- Location: LCCOMB_X30_Y16_N6
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

-- Location: FF_X30_Y16_N7
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

-- Location: LCCOMB_X30_Y16_N8
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

-- Location: FF_X30_Y16_N9
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

-- Location: LCCOMB_X30_Y16_N10
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

-- Location: LCCOMB_X30_Y16_N12
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

-- Location: LCCOMB_X30_Y16_N14
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

-- Location: LCCOMB_X30_Y16_N30
\inst1|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Equal0~2_combout\ = (\inst1|h_count\(8) & (!\inst1|h_count\(7) & (\inst1|h_count\(2) & !\inst1|h_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(8),
	datab => \inst1|h_count\(7),
	datac => \inst1|h_count\(2),
	datad => \inst1|h_count\(5),
	combout => \inst1|Equal0~2_combout\);

-- Location: FF_X30_Y16_N13
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

-- Location: FF_X30_Y16_N11
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

-- Location: LCCOMB_X29_Y16_N2
\inst1|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Equal0~0_combout\ = (\inst1|h_count\(1) & (\inst1|h_count\(4) & (\inst1|h_count\(3) & \inst1|h_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(1),
	datab => \inst1|h_count\(4),
	datac => \inst1|h_count\(3),
	datad => \inst1|h_count\(0),
	combout => \inst1|Equal0~0_combout\);

-- Location: LCCOMB_X30_Y16_N0
\inst1|h_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|h_count~0_combout\ = (\inst1|Add0~18_combout\ & (((!\inst1|Equal0~0_combout\) # (!\inst1|Equal0~2_combout\)) # (!\inst1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~18_combout\,
	datab => \inst1|Equal0~1_combout\,
	datac => \inst1|Equal0~2_combout\,
	datad => \inst1|Equal0~0_combout\,
	combout => \inst1|h_count~0_combout\);

-- Location: FF_X30_Y16_N1
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

-- Location: LCCOMB_X30_Y16_N24
\inst1|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Equal0~1_combout\ = (\inst1|h_count\(9) & !\inst1|h_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|h_count\(9),
	datad => \inst1|h_count\(6),
	combout => \inst1|Equal0~1_combout\);

-- Location: LCCOMB_X30_Y16_N28
\inst1|h_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|h_count~2_combout\ = (\inst1|Add0~10_combout\ & (((!\inst1|Equal0~1_combout\) # (!\inst1|Equal0~2_combout\)) # (!\inst1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~0_combout\,
	datab => \inst1|Add0~10_combout\,
	datac => \inst1|Equal0~2_combout\,
	datad => \inst1|Equal0~1_combout\,
	combout => \inst1|h_count~2_combout\);

-- Location: FF_X30_Y16_N29
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

-- Location: LCCOMB_X30_Y16_N16
\inst1|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~12_combout\ = (\inst1|h_count\(6) & (\inst1|Add0~11\ $ (GND))) # (!\inst1|h_count\(6) & (!\inst1|Add0~11\ & VCC))
-- \inst1|Add0~13\ = CARRY((\inst1|h_count\(6) & !\inst1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|h_count\(6),
	datad => VCC,
	cin => \inst1|Add0~11\,
	combout => \inst1|Add0~12_combout\,
	cout => \inst1|Add0~13\);

-- Location: FF_X30_Y16_N17
\inst1|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(6));

-- Location: LCCOMB_X30_Y16_N18
\inst1|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~14_combout\ = (\inst1|h_count\(7) & (!\inst1|Add0~13\)) # (!\inst1|h_count\(7) & ((\inst1|Add0~13\) # (GND)))
-- \inst1|Add0~15\ = CARRY((!\inst1|Add0~13\) # (!\inst1|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|h_count\(7),
	datad => VCC,
	cin => \inst1|Add0~13\,
	combout => \inst1|Add0~14_combout\,
	cout => \inst1|Add0~15\);

-- Location: FF_X30_Y16_N19
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

-- Location: LCCOMB_X29_Y19_N30
\inst1|LessThan6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan6~0_combout\ = ((!\inst1|h_count\(8) & !\inst1|h_count\(7))) # (!\inst1|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(8),
	datac => \inst1|h_count\(7),
	datad => \inst1|h_count\(9),
	combout => \inst1|LessThan6~0_combout\);

-- Location: FF_X29_Y16_N1
\inst1|pixel_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count\(1),
	sload => VCC,
	ena => \inst1|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_column\(1));

-- Location: LCCOMB_X29_Y19_N2
\inst1|v_count[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|v_count[0]~1_combout\ = ((!\inst1|Equal1~0_combout\ & (\inst1|Equal0~0_combout\ & \inst1|Equal0~1_combout\))) # (!\inst1|process_0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal1~0_combout\,
	datab => \inst1|process_0~11_combout\,
	datac => \inst1|Equal0~0_combout\,
	datad => \inst1|Equal0~1_combout\,
	combout => \inst1|v_count[0]~1_combout\);

-- Location: LCCOMB_X30_Y19_N12
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

-- Location: LCCOMB_X30_Y19_N14
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

-- Location: LCCOMB_X30_Y19_N16
\inst1|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add1~4_combout\ = (\inst1|v_count\(2) & (\inst1|Add1~3\ $ (GND))) # (!\inst1|v_count\(2) & (!\inst1|Add1~3\ & VCC))
-- \inst1|Add1~5\ = CARRY((\inst1|v_count\(2) & !\inst1|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|v_count\(2),
	datad => VCC,
	cin => \inst1|Add1~3\,
	combout => \inst1|Add1~4_combout\,
	cout => \inst1|Add1~5\);

-- Location: LCCOMB_X31_Y19_N12
\inst1|v_count[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|v_count[2]~9_combout\ = (\inst1|v_count[2]~0_combout\ & ((\inst1|Add1~4_combout\) # ((!\inst1|v_count[0]~1_combout\ & \inst1|v_count\(2))))) # (!\inst1|v_count[2]~0_combout\ & (!\inst1|v_count[0]~1_combout\ & (\inst1|v_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count[2]~0_combout\,
	datab => \inst1|v_count[0]~1_combout\,
	datac => \inst1|v_count\(2),
	datad => \inst1|Add1~4_combout\,
	combout => \inst1|v_count[2]~9_combout\);

-- Location: FF_X31_Y19_N13
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

-- Location: LCCOMB_X30_Y19_N18
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

-- Location: LCCOMB_X30_Y19_N20
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

-- Location: LCCOMB_X31_Y19_N30
\inst1|v_count[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|v_count[4]~8_combout\ = (\inst1|v_count[2]~0_combout\ & ((\inst1|Add1~8_combout\) # ((!\inst1|v_count[0]~1_combout\ & \inst1|v_count\(4))))) # (!\inst1|v_count[2]~0_combout\ & (!\inst1|v_count[0]~1_combout\ & (\inst1|v_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count[2]~0_combout\,
	datab => \inst1|v_count[0]~1_combout\,
	datac => \inst1|v_count\(4),
	datad => \inst1|Add1~8_combout\,
	combout => \inst1|v_count[4]~8_combout\);

-- Location: FF_X31_Y19_N31
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

-- Location: LCCOMB_X29_Y19_N16
\inst1|v_count[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|v_count[2]~0_combout\ = (!\inst1|Equal1~0_combout\ & (\inst1|process_0~11_combout\ & (\inst1|Equal0~0_combout\ & \inst1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal1~0_combout\,
	datab => \inst1|process_0~11_combout\,
	datac => \inst1|Equal0~0_combout\,
	datad => \inst1|Equal0~1_combout\,
	combout => \inst1|v_count[2]~0_combout\);

-- Location: LCCOMB_X30_Y19_N0
\inst1|v_count[5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|v_count[5]~4_combout\ = (\inst1|Add1~10_combout\ & ((\inst1|v_count[2]~0_combout\) # ((\inst1|v_count\(5) & !\inst1|v_count[0]~1_combout\)))) # (!\inst1|Add1~10_combout\ & (((\inst1|v_count\(5) & !\inst1|v_count[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~10_combout\,
	datab => \inst1|v_count[2]~0_combout\,
	datac => \inst1|v_count\(5),
	datad => \inst1|v_count[0]~1_combout\,
	combout => \inst1|v_count[5]~4_combout\);

-- Location: FF_X30_Y19_N1
\inst1|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|v_count[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(5));

-- Location: LCCOMB_X30_Y19_N2
\inst1|process_0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~6_combout\ = (!\inst1|v_count\(4) & (!\inst1|v_count\(5) & ((!\inst1|v_count\(2)) # (!\inst1|v_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(3),
	datab => \inst1|v_count\(4),
	datac => \inst1|v_count\(2),
	datad => \inst1|v_count\(5),
	combout => \inst1|process_0~6_combout\);

-- Location: LCCOMB_X30_Y19_N8
\inst1|v_count[7]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|v_count[7]~6_combout\ = (\inst1|Add1~14_combout\ & ((\inst1|v_count[2]~0_combout\) # ((\inst1|v_count\(7) & !\inst1|v_count[0]~1_combout\)))) # (!\inst1|Add1~14_combout\ & (((\inst1|v_count\(7) & !\inst1|v_count[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~14_combout\,
	datab => \inst1|v_count[2]~0_combout\,
	datac => \inst1|v_count\(7),
	datad => \inst1|v_count[0]~1_combout\,
	combout => \inst1|v_count[7]~6_combout\);

-- Location: FF_X30_Y19_N9
\inst1|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|v_count[7]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(7));

-- Location: LCCOMB_X30_Y19_N24
\inst1|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add1~12_combout\ = (\inst1|v_count\(6) & (\inst1|Add1~11\ $ (GND))) # (!\inst1|v_count\(6) & (!\inst1|Add1~11\ & VCC))
-- \inst1|Add1~13\ = CARRY((\inst1|v_count\(6) & !\inst1|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(6),
	datad => VCC,
	cin => \inst1|Add1~11\,
	combout => \inst1|Add1~12_combout\,
	cout => \inst1|Add1~13\);

-- Location: LCCOMB_X30_Y19_N28
\inst1|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add1~16_combout\ = (\inst1|v_count\(8) & (\inst1|Add1~15\ $ (GND))) # (!\inst1|v_count\(8) & (!\inst1|Add1~15\ & VCC))
-- \inst1|Add1~17\ = CARRY((\inst1|v_count\(8) & !\inst1|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|v_count\(8),
	datad => VCC,
	cin => \inst1|Add1~15\,
	combout => \inst1|Add1~16_combout\,
	cout => \inst1|Add1~17\);

-- Location: LCCOMB_X30_Y19_N4
\inst1|v_count[8]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|v_count[8]~2_combout\ = (\inst1|v_count[0]~1_combout\ & (\inst1|v_count[2]~0_combout\ & ((\inst1|Add1~16_combout\)))) # (!\inst1|v_count[0]~1_combout\ & ((\inst1|v_count\(8)) # ((\inst1|v_count[2]~0_combout\ & \inst1|Add1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count[0]~1_combout\,
	datab => \inst1|v_count[2]~0_combout\,
	datac => \inst1|v_count\(8),
	datad => \inst1|Add1~16_combout\,
	combout => \inst1|v_count[8]~2_combout\);

-- Location: FF_X30_Y19_N5
\inst1|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|v_count[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(8));

-- Location: LCCOMB_X29_Y19_N8
\inst1|process_0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~7_combout\ = (!\inst1|v_count\(6) & (!\inst1|v_count\(8) & !\inst1|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(6),
	datac => \inst1|v_count\(8),
	datad => \inst1|v_count\(7),
	combout => \inst1|process_0~7_combout\);

-- Location: LCCOMB_X29_Y19_N18
\inst1|process_0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~8_combout\ = (((\inst1|process_0~6_combout\ & \inst1|process_0~7_combout\)) # (!\inst1|h_count\(9))) # (!\inst1|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(9),
	datab => \inst1|process_0~6_combout\,
	datac => \inst1|process_0~7_combout\,
	datad => \inst1|h_count\(9),
	combout => \inst1|process_0~8_combout\);

-- Location: LCCOMB_X29_Y16_N28
\inst1|process_0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~9_combout\ = ((!\inst1|h_count\(2) & ((!\inst1|h_count\(0)) # (!\inst1|h_count\(1))))) # (!\inst1|h_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(1),
	datab => \inst1|h_count\(2),
	datac => \inst1|h_count\(3),
	datad => \inst1|h_count\(0),
	combout => \inst1|process_0~9_combout\);

-- Location: LCCOMB_X29_Y16_N6
\inst1|process_0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~10_combout\ = (!\inst1|h_count\(6) & (((\inst1|process_0~9_combout\) # (!\inst1|h_count\(4))) # (!\inst1|h_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(5),
	datab => \inst1|h_count\(4),
	datac => \inst1|h_count\(6),
	datad => \inst1|process_0~9_combout\,
	combout => \inst1|process_0~10_combout\);

-- Location: LCCOMB_X29_Y19_N20
\inst1|process_0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~11_combout\ = (\inst1|process_0~8_combout\) # ((!\inst1|h_count\(8) & ((\inst1|process_0~10_combout\) # (!\inst1|h_count\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(8),
	datab => \inst1|process_0~8_combout\,
	datac => \inst1|h_count\(7),
	datad => \inst1|process_0~10_combout\,
	combout => \inst1|process_0~11_combout\);

-- Location: LCCOMB_X31_Y19_N2
\inst1|v_count~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|v_count~10_combout\ = (\inst1|process_0~11_combout\ & \inst1|Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|process_0~11_combout\,
	datad => \inst1|Add1~2_combout\,
	combout => \inst1|v_count~10_combout\);

-- Location: FF_X31_Y19_N3
\inst1|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|v_count~10_combout\,
	ena => \inst1|v_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(1));

-- Location: LCCOMB_X31_Y18_N20
\inst1|pixel_row[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pixel_row[1]~feeder_combout\ = \inst1|v_count\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|v_count\(1),
	combout => \inst1|pixel_row[1]~feeder_combout\);

-- Location: LCCOMB_X30_Y19_N30
\inst1|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add1~18_combout\ = \inst1|v_count\(9) $ (\inst1|Add1~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|v_count\(9),
	cin => \inst1|Add1~17\,
	combout => \inst1|Add1~18_combout\);

-- Location: LCCOMB_X29_Y19_N6
\inst1|v_count[9]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|v_count[9]~3_combout\ = (\inst1|v_count[2]~0_combout\ & ((\inst1|Add1~18_combout\) # ((!\inst1|v_count[0]~1_combout\ & \inst1|v_count\(9))))) # (!\inst1|v_count[2]~0_combout\ & (!\inst1|v_count[0]~1_combout\ & (\inst1|v_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count[2]~0_combout\,
	datab => \inst1|v_count[0]~1_combout\,
	datac => \inst1|v_count\(9),
	datad => \inst1|Add1~18_combout\,
	combout => \inst1|v_count[9]~3_combout\);

-- Location: FF_X29_Y19_N7
\inst1|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|v_count[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(9));

-- Location: LCCOMB_X30_Y19_N10
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

-- Location: LCCOMB_X32_Y19_N4
\inst1|LessThan7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan7~1_combout\ = (!\inst1|v_count\(9) & !\inst1|LessThan7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|v_count\(9),
	datad => \inst1|LessThan7~0_combout\,
	combout => \inst1|LessThan7~1_combout\);

-- Location: FF_X31_Y18_N21
\inst1|pixel_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|pixel_row[1]~feeder_combout\,
	ena => \inst1|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_row\(1));

-- Location: FF_X30_Y19_N17
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

-- Location: LCCOMB_X30_Y19_N6
\inst1|v_count[3]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|v_count[3]~7_combout\ = (\inst1|v_count[0]~1_combout\ & (\inst1|v_count[2]~0_combout\ & ((\inst1|Add1~6_combout\)))) # (!\inst1|v_count[0]~1_combout\ & ((\inst1|v_count\(3)) # ((\inst1|v_count[2]~0_combout\ & \inst1|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count[0]~1_combout\,
	datab => \inst1|v_count[2]~0_combout\,
	datac => \inst1|v_count\(3),
	datad => \inst1|Add1~6_combout\,
	combout => \inst1|v_count[3]~7_combout\);

-- Location: FF_X30_Y19_N7
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

-- Location: LCCOMB_X30_Y18_N24
\inst1|pixel_row[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pixel_row[3]~feeder_combout\ = \inst1|v_count\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|v_count\(3),
	combout => \inst1|pixel_row[3]~feeder_combout\);

-- Location: FF_X30_Y18_N25
\inst1|pixel_row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|pixel_row[3]~feeder_combout\,
	ena => \inst1|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_row\(3));

-- Location: FF_X29_Y16_N13
\inst1|pixel_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count\(4),
	sload => VCC,
	ena => \inst1|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_column\(4));

-- Location: LCCOMB_X27_Y16_N0
\inst11|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add0~0_combout\ = (\inst1|pixel_column\(3) & (\inst1|pixel_column\(4) $ (VCC))) # (!\inst1|pixel_column\(3) & (\inst1|pixel_column\(4) & VCC))
-- \inst11|Add0~1\ = CARRY((\inst1|pixel_column\(3) & \inst1|pixel_column\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(3),
	datab => \inst1|pixel_column\(4),
	datad => VCC,
	combout => \inst11|Add0~0_combout\,
	cout => \inst11|Add0~1\);

-- Location: LCCOMB_X27_Y16_N2
\inst11|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add0~2_combout\ = (\inst1|pixel_column\(5) & (!\inst11|Add0~1\)) # (!\inst1|pixel_column\(5) & ((\inst11|Add0~1\) # (GND)))
-- \inst11|Add0~3\ = CARRY((!\inst11|Add0~1\) # (!\inst1|pixel_column\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(5),
	datad => VCC,
	cin => \inst11|Add0~1\,
	combout => \inst11|Add0~2_combout\,
	cout => \inst11|Add0~3\);

-- Location: FF_X29_Y16_N23
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

-- Location: FF_X29_Y16_N9
\inst1|pixel_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count\(2),
	sload => VCC,
	ena => \inst1|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_column\(2));

-- Location: LCCOMB_X28_Y17_N30
\inst11|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan0~0_combout\ = (\inst1|pixel_column\(3) & (((!\inst1|pixel_column\(2)) # (!\inst1|pixel_column\(0))) # (!\inst1|pixel_column\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(3),
	datab => \inst1|pixel_column\(1),
	datac => \inst1|pixel_column\(0),
	datad => \inst1|pixel_column\(2),
	combout => \inst11|LessThan0~0_combout\);

-- Location: LCCOMB_X27_Y16_N18
\inst11|LessThan4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan4~0_combout\ = (!\inst11|Add0~6_combout\ & (!\inst11|Add0~2_combout\ & ((\inst11|LessThan0~0_combout\) # (!\inst11|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add0~6_combout\,
	datab => \inst11|Add0~2_combout\,
	datac => \inst11|LessThan0~0_combout\,
	datad => \inst11|Add0~0_combout\,
	combout => \inst11|LessThan4~0_combout\);

-- Location: FF_X29_Y16_N21
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

-- Location: LCCOMB_X27_Y16_N4
\inst11|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add0~4_combout\ = (\inst1|pixel_column\(6) & (\inst11|Add0~3\ $ (GND))) # (!\inst1|pixel_column\(6) & (!\inst11|Add0~3\ & VCC))
-- \inst11|Add0~5\ = CARRY((\inst1|pixel_column\(6) & !\inst11|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(6),
	datad => VCC,
	cin => \inst11|Add0~3\,
	combout => \inst11|Add0~4_combout\,
	cout => \inst11|Add0~5\);

-- Location: LCCOMB_X27_Y16_N6
\inst11|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add0~6_combout\ = (\inst1|pixel_column\(7) & (!\inst11|Add0~5\)) # (!\inst1|pixel_column\(7) & ((\inst11|Add0~5\) # (GND)))
-- \inst11|Add0~7\ = CARRY((!\inst11|Add0~5\) # (!\inst1|pixel_column\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(7),
	datad => VCC,
	cin => \inst11|Add0~5\,
	combout => \inst11|Add0~6_combout\,
	cout => \inst11|Add0~7\);

-- Location: LCCOMB_X27_Y16_N8
\inst11|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add0~8_combout\ = (\inst1|pixel_column\(8) & (\inst11|Add0~7\ $ (GND))) # (!\inst1|pixel_column\(8) & (!\inst11|Add0~7\ & VCC))
-- \inst11|Add0~9\ = CARRY((\inst1|pixel_column\(8) & !\inst11|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(8),
	datad => VCC,
	cin => \inst11|Add0~7\,
	combout => \inst11|Add0~8_combout\,
	cout => \inst11|Add0~9\);

-- Location: LCCOMB_X27_Y16_N10
\inst11|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add0~10_combout\ = \inst11|Add0~9\ $ (\inst1|pixel_column\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|pixel_column\(9),
	cin => \inst11|Add0~9\,
	combout => \inst11|Add0~10_combout\);

-- Location: LCCOMB_X30_Y16_N26
\inst1|h_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|h_count~1_combout\ = (\inst1|Add0~16_combout\ & (((!\inst1|Equal0~1_combout\) # (!\inst1|Equal0~2_combout\)) # (!\inst1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~0_combout\,
	datab => \inst1|Add0~16_combout\,
	datac => \inst1|Equal0~2_combout\,
	datad => \inst1|Equal0~1_combout\,
	combout => \inst1|h_count~1_combout\);

-- Location: FF_X30_Y16_N27
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

-- Location: FF_X27_Y16_N9
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

-- Location: FF_X29_Y16_N19
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

-- Location: LCCOMB_X24_Y16_N30
\inst5|bird_on~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_on~2_combout\ = (!\inst5|LessThan1~1_combout\ & (!\inst1|pixel_column\(9) & ((!\inst1|pixel_column\(7)) # (!\inst1|pixel_column\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|LessThan1~1_combout\,
	datab => \inst1|pixel_column\(8),
	datac => \inst1|pixel_column\(9),
	datad => \inst1|pixel_column\(7),
	combout => \inst5|bird_on~2_combout\);

-- Location: LCCOMB_X26_Y16_N22
\inst11|temp_char_address~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address~11_combout\ = (\inst5|bird_on~2_combout\ & ((\inst11|Add0~10_combout\) # ((\inst11|LessThan8~0_combout\ & !\inst11|LessThan4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan8~0_combout\,
	datab => \inst11|LessThan4~0_combout\,
	datac => \inst11|Add0~10_combout\,
	datad => \inst5|bird_on~2_combout\,
	combout => \inst11|temp_char_address~11_combout\);

-- Location: LCCOMB_X29_Y19_N12
\inst1|v_count[6]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|v_count[6]~5_combout\ = (\inst1|v_count[2]~0_combout\ & ((\inst1|Add1~12_combout\) # ((!\inst1|v_count[0]~1_combout\ & \inst1|v_count\(6))))) # (!\inst1|v_count[2]~0_combout\ & (!\inst1|v_count[0]~1_combout\ & (\inst1|v_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count[2]~0_combout\,
	datab => \inst1|v_count[0]~1_combout\,
	datac => \inst1|v_count\(6),
	datad => \inst1|Add1~12_combout\,
	combout => \inst1|v_count[6]~5_combout\);

-- Location: FF_X29_Y19_N13
\inst1|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|v_count[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(6));

-- Location: FF_X30_Y18_N29
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

-- Location: LCCOMB_X29_Y19_N0
\inst1|pixel_row[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pixel_row[7]~feeder_combout\ = \inst1|v_count\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|v_count\(7),
	combout => \inst1|pixel_row[7]~feeder_combout\);

-- Location: FF_X29_Y19_N1
\inst1|pixel_row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|pixel_row[7]~feeder_combout\,
	ena => \inst1|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_row\(7));

-- Location: FF_X30_Y19_N11
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

-- Location: LCCOMB_X30_Y18_N8
\inst11|temp_char_address~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address~3_combout\ = (\inst1|pixel_row\(5) & (\inst1|pixel_row\(6) & (\inst1|pixel_row\(7) & !\inst1|pixel_row\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(5),
	datab => \inst1|pixel_row\(6),
	datac => \inst1|pixel_row\(7),
	datad => \inst1|pixel_row\(8),
	combout => \inst11|temp_char_address~3_combout\);

-- Location: FF_X30_Y18_N23
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

-- Location: LCCOMB_X32_Y19_N30
\inst1|v_count~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|v_count~11_combout\ = (\inst1|process_0~11_combout\ & \inst1|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|process_0~11_combout\,
	datad => \inst1|Add1~0_combout\,
	combout => \inst1|v_count~11_combout\);

-- Location: FF_X32_Y19_N31
\inst1|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|v_count~11_combout\,
	ena => \inst1|v_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(0));

-- Location: FF_X30_Y18_N17
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

-- Location: LCCOMB_X30_Y18_N16
\inst11|LessThan3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan3~0_combout\ = (\inst1|pixel_row\(2)) # ((\inst1|pixel_row\(3)) # ((\inst1|pixel_row\(0)) # (\inst1|pixel_row\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(2),
	datab => \inst1|pixel_row\(3),
	datac => \inst1|pixel_row\(0),
	datad => \inst1|pixel_row\(1),
	combout => \inst11|LessThan3~0_combout\);

-- Location: LCCOMB_X30_Y18_N2
\inst11|temp_char_address~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address~4_combout\ = (\sw0~input_o\ & (\inst11|temp_char_address~3_combout\ & ((!\inst11|LessThan3~0_combout\) # (!\inst1|pixel_row\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw0~input_o\,
	datab => \inst11|temp_char_address~3_combout\,
	datac => \inst1|pixel_row\(4),
	datad => \inst11|LessThan3~0_combout\,
	combout => \inst11|temp_char_address~4_combout\);

-- Location: LCCOMB_X26_Y16_N0
\inst11|temp_char_address[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[1]~12_combout\ = ((!\inst11|temp_char_address~7_combout\ & !\inst11|temp_char_address~11_combout\)) # (!\inst11|temp_char_address~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|temp_char_address~7_combout\,
	datac => \inst11|temp_char_address~11_combout\,
	datad => \inst11|temp_char_address~4_combout\,
	combout => \inst11|temp_char_address[1]~12_combout\);

-- Location: LCCOMB_X27_Y16_N24
\inst11|temp_char_address[0]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[0]~13_combout\ = (!\inst1|pixel_column\(9) & ((\inst11|Add0~10_combout\) # (\inst11|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add0~10_combout\,
	datac => \inst11|Add0~8_combout\,
	datad => \inst1|pixel_column\(9),
	combout => \inst11|temp_char_address[0]~13_combout\);

-- Location: LCCOMB_X24_Y16_N0
\inst11|temp_char_address[0]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[0]~14_combout\ = (\inst11|temp_char_address[0]~13_combout\ & (\inst11|temp_char_address~4_combout\ & ((!\inst1|pixel_column\(8)) # (!\inst1|pixel_column\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(7),
	datab => \inst1|pixel_column\(8),
	datac => \inst11|temp_char_address[0]~13_combout\,
	datad => \inst11|temp_char_address~4_combout\,
	combout => \inst11|temp_char_address[0]~14_combout\);

-- Location: FF_X29_Y16_N17
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

-- Location: LCCOMB_X24_Y16_N2
\inst11|temp_char_address~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address~16_combout\ = (\inst11|temp_char_address~15_combout\ & (\inst11|temp_char_address[0]~14_combout\ & ((!\inst1|pixel_column\(6)) # (!\inst1|pixel_column\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|temp_char_address~15_combout\,
	datab => \inst11|temp_char_address[0]~14_combout\,
	datac => \inst1|pixel_column\(8),
	datad => \inst1|pixel_column\(6),
	combout => \inst11|temp_char_address~16_combout\);

-- Location: LCCOMB_X27_Y16_N12
\inst11|temp_char_address[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[0]~5_combout\ = (!\inst1|pixel_column\(9) & (\inst11|temp_char_address~4_combout\ & ((\inst11|Add0~10_combout\) # (\inst11|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add0~10_combout\,
	datab => \inst1|pixel_column\(9),
	datac => \inst11|Add0~8_combout\,
	datad => \inst11|temp_char_address~4_combout\,
	combout => \inst11|temp_char_address[0]~5_combout\);

-- Location: LCCOMB_X30_Y18_N20
\inst11|temp_char_address~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address~8_combout\ = (\inst1|pixel_row\(6) & (!\inst1|pixel_row\(7) & !\inst1|pixel_row\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pixel_row\(6),
	datac => \inst1|pixel_row\(7),
	datad => \inst1|pixel_row\(8),
	combout => \inst11|temp_char_address~8_combout\);

-- Location: LCCOMB_X30_Y18_N10
\inst11|temp_char_address~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address~9_combout\ = (\inst11|temp_char_address~8_combout\ & ((\inst1|pixel_row\(5) & (!\inst11|LessThan3~0_combout\ & !\inst1|pixel_row\(4))) # (!\inst1|pixel_row\(5) & ((\inst1|pixel_row\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(5),
	datab => \inst11|LessThan3~0_combout\,
	datac => \inst1|pixel_row\(4),
	datad => \inst11|temp_char_address~8_combout\,
	combout => \inst11|temp_char_address~9_combout\);

-- Location: LCCOMB_X27_Y16_N26
\inst11|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan0~1_combout\ = (!\inst11|Add0~6_combout\ & (!\inst11|Add0~4_combout\ & !\inst11|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add0~6_combout\,
	datac => \inst11|Add0~4_combout\,
	datad => \inst11|Add0~10_combout\,
	combout => \inst11|LessThan0~1_combout\);

-- Location: FF_X29_Y16_N15
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

-- Location: LCCOMB_X28_Y18_N26
\inst11|temp_char_address~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address~1_combout\ = (\inst1|pixel_column\(6)) # ((\inst1|pixel_column\(7)) # ((\inst1|pixel_column\(5) & \inst1|pixel_column\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(6),
	datab => \inst1|pixel_column\(7),
	datac => \inst1|pixel_column\(5),
	datad => \inst1|pixel_column\(4),
	combout => \inst11|temp_char_address~1_combout\);

-- Location: LCCOMB_X27_Y16_N16
\inst11|temp_char_address~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address~0_combout\ = ((\inst11|LessThan0~0_combout\ & !\inst11|Add0~0_combout\)) # (!\inst11|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|Add0~2_combout\,
	datac => \inst11|LessThan0~0_combout\,
	datad => \inst11|Add0~0_combout\,
	combout => \inst11|temp_char_address~0_combout\);

-- Location: LCCOMB_X26_Y16_N16
\inst11|temp_char_address~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address~2_combout\ = (\inst1|pixel_column\(8) & ((\inst11|temp_char_address~1_combout\) # ((\inst11|LessThan0~1_combout\ & \inst11|temp_char_address~0_combout\)))) # (!\inst1|pixel_column\(8) & (\inst11|LessThan0~1_combout\ & 
-- ((\inst11|temp_char_address~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(8),
	datab => \inst11|LessThan0~1_combout\,
	datac => \inst11|temp_char_address~1_combout\,
	datad => \inst11|temp_char_address~0_combout\,
	combout => \inst11|temp_char_address~2_combout\);

-- Location: LCCOMB_X26_Y16_N20
\inst11|temp_char_address[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[0]~10_combout\ = (\inst11|temp_char_address~7_combout\ & (!\inst11|temp_char_address~9_combout\ & ((\inst11|temp_char_address~2_combout\) # (!\inst11|temp_char_address[0]~5_combout\)))) # (!\inst11|temp_char_address~7_combout\ & 
-- (((\inst11|temp_char_address~2_combout\)) # (!\inst11|temp_char_address[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|temp_char_address~7_combout\,
	datab => \inst11|temp_char_address[0]~5_combout\,
	datac => \inst11|temp_char_address~9_combout\,
	datad => \inst11|temp_char_address~2_combout\,
	combout => \inst11|temp_char_address[0]~10_combout\);

-- Location: LCCOMB_X26_Y16_N18
\inst11|temp_char_address[0]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[0]~17_combout\ = (\inst11|temp_char_address[1]~12_combout\ & (!\inst11|temp_char_address~16_combout\ & \inst11|temp_char_address[0]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|temp_char_address[1]~12_combout\,
	datac => \inst11|temp_char_address~16_combout\,
	datad => \inst11|temp_char_address[0]~10_combout\,
	combout => \inst11|temp_char_address[0]~17_combout\);

-- Location: LCCOMB_X27_Y16_N14
\inst11|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan0~2_combout\ = (!\inst11|Add0~6_combout\ & (!\inst11|Add0~0_combout\ & (\inst11|LessThan0~0_combout\ & !\inst11|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add0~6_combout\,
	datab => \inst11|Add0~0_combout\,
	datac => \inst11|LessThan0~0_combout\,
	datad => \inst11|Add0~10_combout\,
	combout => \inst11|LessThan0~2_combout\);

-- Location: LCCOMB_X24_Y16_N16
\inst11|temp_char_address[0]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[0]~19_combout\ = (\inst11|temp_char_address[0]~14_combout\ & (!\inst11|LessThan0~2_combout\ & ((!\inst1|pixel_column\(4)) # (!\inst5|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|LessThan1~1_combout\,
	datab => \inst11|temp_char_address[0]~14_combout\,
	datac => \inst11|LessThan0~2_combout\,
	datad => \inst1|pixel_column\(4),
	combout => \inst11|temp_char_address[0]~19_combout\);

-- Location: LCCOMB_X27_Y16_N28
\inst11|temp_char_address[0]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[0]~18_combout\ = (\inst11|Add0~6_combout\) # ((\inst11|Add0~10_combout\) # ((\inst11|Add0~2_combout\ & \inst11|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add0~6_combout\,
	datab => \inst11|Add0~2_combout\,
	datac => \inst11|Add0~4_combout\,
	datad => \inst11|Add0~10_combout\,
	combout => \inst11|temp_char_address[0]~18_combout\);

-- Location: LCCOMB_X26_Y16_N26
\inst11|temp_char_address[0]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[0]~21_combout\ = (!\inst11|temp_char_address~20_combout\ & (\inst11|temp_char_address[0]~17_combout\ & (\inst11|temp_char_address[0]~19_combout\ & \inst11|temp_char_address[0]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|temp_char_address~20_combout\,
	datab => \inst11|temp_char_address[0]~17_combout\,
	datac => \inst11|temp_char_address[0]~19_combout\,
	datad => \inst11|temp_char_address[0]~18_combout\,
	combout => \inst11|temp_char_address[0]~21_combout\);

-- Location: LCCOMB_X26_Y16_N24
\inst11|temp_char_address~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address~22_combout\ = (\inst11|temp_char_address~7_combout\ & \inst11|temp_char_address~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|temp_char_address~7_combout\,
	datad => \inst11|temp_char_address~4_combout\,
	combout => \inst11|temp_char_address~22_combout\);

-- Location: LCCOMB_X26_Y16_N28
\inst11|temp_char_address[0]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[0]~24_combout\ = (!\inst11|temp_char_address[0]~23_combout\ & (\inst11|temp_char_address[0]~10_combout\ & ((\inst11|temp_char_address~16_combout\) # (!\inst11|temp_char_address~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|temp_char_address[0]~23_combout\,
	datab => \inst11|temp_char_address~22_combout\,
	datac => \inst11|temp_char_address~16_combout\,
	datad => \inst11|temp_char_address[0]~10_combout\,
	combout => \inst11|temp_char_address[0]~24_combout\);

-- Location: LCCOMB_X26_Y16_N30
\inst11|temp_char_address[0]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[0]~25_combout\ = (\inst11|temp_char_address[0]~21_combout\) # (\inst11|temp_char_address[0]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|temp_char_address[0]~21_combout\,
	datad => \inst11|temp_char_address[0]~24_combout\,
	combout => \inst11|temp_char_address[0]~25_combout\);

-- Location: LCCOMB_X26_Y16_N4
\inst11|temp_char_address[1]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[1]~26_combout\ = (!\inst11|temp_char_address~20_combout\ & (!\inst11|temp_char_address[1]~12_combout\ & (!\inst11|temp_char_address~16_combout\ & \inst11|temp_char_address[0]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|temp_char_address~20_combout\,
	datab => \inst11|temp_char_address[1]~12_combout\,
	datac => \inst11|temp_char_address~16_combout\,
	datad => \inst11|temp_char_address[0]~10_combout\,
	combout => \inst11|temp_char_address[1]~26_combout\);

-- Location: LCCOMB_X23_Y16_N0
\inst11|temp_char_address[2]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[2]~27_combout\ = (!\inst11|temp_char_address~16_combout\ & \inst11|temp_char_address[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|temp_char_address~16_combout\,
	datad => \inst11|temp_char_address[0]~10_combout\,
	combout => \inst11|temp_char_address[2]~27_combout\);

-- Location: LCCOMB_X26_Y16_N14
\inst11|temp_char_address[2]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[2]~28_combout\ = (\inst11|temp_char_address[0]~21_combout\) # ((!\inst11|temp_char_address[0]~23_combout\ & (\inst11|temp_char_address[2]~27_combout\ & \inst11|temp_char_address~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|temp_char_address[0]~23_combout\,
	datab => \inst11|temp_char_address[2]~27_combout\,
	datac => \inst11|temp_char_address[0]~21_combout\,
	datad => \inst11|temp_char_address~22_combout\,
	combout => \inst11|temp_char_address[2]~28_combout\);

-- Location: LCCOMB_X24_Y16_N26
\~GND\ : cycloneiii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X26_Y16_N8
\inst11|temp_char_address[4]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[4]~29_combout\ = (\inst11|temp_char_address~20_combout\) # (((!\inst11|temp_char_address[1]~12_combout\ & !\inst11|temp_char_address~16_combout\)) # (!\inst11|temp_char_address[0]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|temp_char_address~20_combout\,
	datab => \inst11|temp_char_address[1]~12_combout\,
	datac => \inst11|temp_char_address~16_combout\,
	datad => \inst11|temp_char_address[0]~10_combout\,
	combout => \inst11|temp_char_address[4]~29_combout\);

-- Location: LCCOMB_X26_Y16_N10
\inst11|temp_char_address[0]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[0]~23_combout\ = (\inst11|temp_char_address~20_combout\) # ((\inst11|temp_char_address[1]~12_combout\ & (!\inst11|temp_char_address~16_combout\ & \inst11|temp_char_address[0]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|temp_char_address~20_combout\,
	datab => \inst11|temp_char_address[1]~12_combout\,
	datac => \inst11|temp_char_address~16_combout\,
	datad => \inst11|temp_char_address[0]~10_combout\,
	combout => \inst11|temp_char_address[0]~23_combout\);

-- Location: LCCOMB_X27_Y16_N30
\inst11|LessThan8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan8~0_combout\ = (\inst11|Add0~8_combout\ & ((\inst11|Add0~4_combout\) # (\inst11|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|Add0~4_combout\,
	datac => \inst11|Add0~8_combout\,
	datad => \inst11|Add0~6_combout\,
	combout => \inst11|LessThan8~0_combout\);

-- Location: LCCOMB_X29_Y16_N4
\inst11|LessThan9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan9~0_combout\ = (\inst1|pixel_column\(8) & (\inst1|pixel_column\(6) & ((\inst1|pixel_column\(5)) # (\inst1|pixel_column\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(8),
	datab => \inst1|pixel_column\(6),
	datac => \inst1|pixel_column\(5),
	datad => \inst1|pixel_column\(4),
	combout => \inst11|LessThan9~0_combout\);

-- Location: LCCOMB_X29_Y16_N30
\inst11|temp_char_address~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address~6_combout\ = (!\inst1|pixel_column\(9) & (!\inst11|LessThan9~0_combout\ & ((!\inst1|pixel_column\(7)) # (!\inst1|pixel_column\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(8),
	datab => \inst1|pixel_column\(9),
	datac => \inst11|LessThan9~0_combout\,
	datad => \inst1|pixel_column\(7),
	combout => \inst11|temp_char_address~6_combout\);

-- Location: LCCOMB_X26_Y16_N6
\inst11|temp_char_address~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address~7_combout\ = (\inst11|temp_char_address~6_combout\ & ((\inst11|Add0~10_combout\) # ((!\inst11|LessThan8~1_combout\ & \inst11|LessThan8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan8~1_combout\,
	datab => \inst11|Add0~10_combout\,
	datac => \inst11|LessThan8~0_combout\,
	datad => \inst11|temp_char_address~6_combout\,
	combout => \inst11|temp_char_address~7_combout\);

-- Location: LCCOMB_X26_Y16_N2
\inst11|temp_char_address[5]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|temp_char_address[5]~30_combout\ = (!\inst11|temp_char_address[0]~21_combout\ & ((\inst11|temp_char_address[0]~23_combout\) # ((\inst11|temp_char_address~9_combout\ & \inst11|temp_char_address~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|temp_char_address[0]~21_combout\,
	datab => \inst11|temp_char_address[0]~23_combout\,
	datac => \inst11|temp_char_address~9_combout\,
	datad => \inst11|temp_char_address~7_combout\,
	combout => \inst11|temp_char_address[5]~30_combout\);

-- Location: LCCOMB_X26_Y14_N0
\inst11|display|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|display|Mux0~2_combout\ = (\inst1|pixel_column\(1) & (((\inst11|display|altsyncram_component|auto_generated|q_a\(6)) # (\inst1|pixel_column\(2))))) # (!\inst1|pixel_column\(1) & (\inst11|display|altsyncram_component|auto_generated|q_a\(7) & 
-- ((!\inst1|pixel_column\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|display|altsyncram_component|auto_generated|q_a\(7),
	datab => \inst1|pixel_column\(1),
	datac => \inst11|display|altsyncram_component|auto_generated|q_a\(6),
	datad => \inst1|pixel_column\(2),
	combout => \inst11|display|Mux0~2_combout\);

-- Location: LCCOMB_X26_Y17_N0
\inst11|display|Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|display|Mux0~3_combout\ = (\inst11|display|Mux0~2_combout\ & (((\inst11|display|altsyncram_component|auto_generated|q_a\(4)) # (!\inst1|pixel_column\(2))))) # (!\inst11|display|Mux0~2_combout\ & 
-- (\inst11|display|altsyncram_component|auto_generated|q_a\(5) & ((\inst1|pixel_column\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|display|altsyncram_component|auto_generated|q_a\(5),
	datab => \inst11|display|Mux0~2_combout\,
	datac => \inst11|display|altsyncram_component|auto_generated|q_a\(4),
	datad => \inst1|pixel_column\(2),
	combout => \inst11|display|Mux0~3_combout\);

-- Location: LCCOMB_X28_Y16_N28
\inst11|display|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|display|Mux0~0_combout\ = (\inst1|pixel_column\(1) & ((\inst11|display|altsyncram_component|auto_generated|q_a\(2)) # ((\inst1|pixel_column\(2))))) # (!\inst1|pixel_column\(1) & (((\inst11|display|altsyncram_component|auto_generated|q_a\(3) & 
-- !\inst1|pixel_column\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|display|altsyncram_component|auto_generated|q_a\(2),
	datab => \inst1|pixel_column\(1),
	datac => \inst11|display|altsyncram_component|auto_generated|q_a\(3),
	datad => \inst1|pixel_column\(2),
	combout => \inst11|display|Mux0~0_combout\);

-- Location: LCCOMB_X28_Y16_N2
\inst11|display|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|display|Mux0~1_combout\ = (\inst11|display|Mux0~0_combout\ & (((\inst11|display|altsyncram_component|auto_generated|q_a\(0)) # (!\inst1|pixel_column\(2))))) # (!\inst11|display|Mux0~0_combout\ & 
-- (\inst11|display|altsyncram_component|auto_generated|q_a\(1) & ((\inst1|pixel_column\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|display|altsyncram_component|auto_generated|q_a\(1),
	datab => \inst11|display|Mux0~0_combout\,
	datac => \inst11|display|altsyncram_component|auto_generated|q_a\(0),
	datad => \inst1|pixel_column\(2),
	combout => \inst11|display|Mux0~1_combout\);

-- Location: FF_X29_Y16_N11
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

-- Location: LCCOMB_X26_Y17_N30
\inst1|red_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|red_out~0_combout\ = (\inst1|pixel_column\(3) & ((\inst11|display|Mux0~1_combout\))) # (!\inst1|pixel_column\(3) & (\inst11|display|Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|display|Mux0~3_combout\,
	datac => \inst11|display|Mux0~1_combout\,
	datad => \inst1|pixel_column\(3),
	combout => \inst1|red_out~0_combout\);

-- Location: LCCOMB_X30_Y17_N0
\inst5|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add0~1_cout\ = CARRY((\inst1|pixel_column\(3) & \inst1|pixel_column\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(3),
	datab => \inst1|pixel_column\(4),
	datad => VCC,
	cout => \inst5|Add0~1_cout\);

-- Location: LCCOMB_X30_Y17_N2
\inst5|Add0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add0~3_cout\ = CARRY((!\inst5|Add0~1_cout\) # (!\inst1|pixel_column\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(5),
	datad => VCC,
	cin => \inst5|Add0~1_cout\,
	cout => \inst5|Add0~3_cout\);

-- Location: LCCOMB_X30_Y17_N4
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

-- Location: LCCOMB_X30_Y17_N8
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

-- Location: LCCOMB_X30_Y17_N10
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

-- Location: LCCOMB_X30_Y17_N16
\inst5|bird_on~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_on~0_combout\ = (\inst5|Add0~10_combout\) # ((\inst5|Add0~8_combout\ & ((\inst5|Add0~6_combout\) # (\inst5|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~6_combout\,
	datab => \inst5|Add0~8_combout\,
	datac => \inst5|Add0~4_combout\,
	datad => \inst5|Add0~10_combout\,
	combout => \inst5|bird_on~0_combout\);

-- Location: LCCOMB_X30_Y17_N24
\inst5|bird_on~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_on~4_combout\ = ((!\inst1|pixel_column\(8)) # (!\inst1|pixel_column\(4))) # (!\inst1|pixel_column\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(6),
	datab => \inst1|pixel_column\(4),
	datad => \inst1|pixel_column\(8),
	combout => \inst5|bird_on~4_combout\);

-- Location: LCCOMB_X32_Y17_N8
\inst5|LessThan4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|LessThan4~0_combout\ = (\inst5|bird_y_pos\(3) & ((\inst5|bird_y_pos\(0)) # ((\inst5|bird_y_pos\(1)) # (\inst5|bird_y_pos\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_pos\(0),
	datab => \inst5|bird_y_pos\(3),
	datac => \inst5|bird_y_pos\(1),
	datad => \inst5|bird_y_pos\(2),
	combout => \inst5|LessThan4~0_combout\);

-- Location: LCCOMB_X33_Y17_N30
\inst5|LessThan4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|LessThan4~1_combout\ = (\inst5|bird_y_pos\(5)) # ((\inst5|bird_y_pos\(4)) # ((\inst5|bird_y_pos\(8)) # (\inst5|bird_y_pos\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_pos\(5),
	datab => \inst5|bird_y_pos\(4),
	datac => \inst5|bird_y_pos\(8),
	datad => \inst5|bird_y_pos\(6),
	combout => \inst5|LessThan4~1_combout\);

-- Location: LCCOMB_X32_Y17_N24
\inst5|bird_y_pos[7]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_y_pos[7]~24_combout\ = (\inst5|bird_y_motion\(3) & ((\inst5|bird_y_pos\(7) & (\inst5|bird_y_pos[6]~23\ & VCC)) # (!\inst5|bird_y_pos\(7) & (!\inst5|bird_y_pos[6]~23\)))) # (!\inst5|bird_y_motion\(3) & ((\inst5|bird_y_pos\(7) & 
-- (!\inst5|bird_y_pos[6]~23\)) # (!\inst5|bird_y_pos\(7) & ((\inst5|bird_y_pos[6]~23\) # (GND)))))
-- \inst5|bird_y_pos[7]~25\ = CARRY((\inst5|bird_y_motion\(3) & (!\inst5|bird_y_pos\(7) & !\inst5|bird_y_pos[6]~23\)) # (!\inst5|bird_y_motion\(3) & ((!\inst5|bird_y_pos[6]~23\) # (!\inst5|bird_y_pos\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_motion\(3),
	datab => \inst5|bird_y_pos\(7),
	datad => VCC,
	cin => \inst5|bird_y_pos[6]~23\,
	combout => \inst5|bird_y_pos[7]~24_combout\,
	cout => \inst5|bird_y_pos[7]~25\);

-- Location: LCCOMB_X32_Y17_N26
\inst5|bird_y_pos[8]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_y_pos[8]~26_combout\ = ((\inst5|bird_y_pos\(8) $ (\inst5|bird_y_motion\(3) $ (!\inst5|bird_y_pos[7]~25\)))) # (GND)
-- \inst5|bird_y_pos[8]~27\ = CARRY((\inst5|bird_y_pos\(8) & ((\inst5|bird_y_motion\(3)) # (!\inst5|bird_y_pos[7]~25\))) # (!\inst5|bird_y_pos\(8) & (\inst5|bird_y_motion\(3) & !\inst5|bird_y_pos[7]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_pos\(8),
	datab => \inst5|bird_y_motion\(3),
	datad => VCC,
	cin => \inst5|bird_y_pos[7]~25\,
	combout => \inst5|bird_y_pos[8]~26_combout\,
	cout => \inst5|bird_y_pos[8]~27\);

-- Location: LCCOMB_X32_Y17_N28
\inst5|bird_y_pos[9]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_y_pos[9]~28_combout\ = \inst5|bird_y_motion\(3) $ (\inst5|bird_y_pos[8]~27\ $ (\inst5|bird_y_pos\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_motion\(3),
	datad => \inst5|bird_y_pos\(9),
	cin => \inst5|bird_y_pos[8]~27\,
	combout => \inst5|bird_y_pos[9]~28_combout\);

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

-- Location: FF_X32_Y17_N29
\inst5|bird_y_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|vert_sync_out~clkctrl_outclk\,
	d => \inst5|bird_y_pos[9]~28_combout\,
	ena => \ALT_INV_sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|bird_y_pos\(9));

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

-- Location: LCCOMB_X36_Y13_N30
\inst2|INCNT~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|INCNT~3_combout\ = (!\inst2|INCNT\(0) & (((!\inst2|INCNT\(1) & !\inst2|INCNT\(2))) # (!\inst2|INCNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|INCNT\(1),
	datab => \inst2|INCNT\(2),
	datac => \inst2|INCNT\(0),
	datad => \inst2|INCNT\(3),
	combout => \inst2|INCNT~3_combout\);

-- Location: LCCOMB_X36_Y13_N20
\inst2|INCNT[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|INCNT[3]~1_combout\ = (!\inst2|mouse_state.WAIT_OUTPUT_READY~q\ & \inst2|READ_CHAR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst2|READ_CHAR~q\,
	combout => \inst2|INCNT[3]~1_combout\);

-- Location: FF_X36_Y13_N31
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

-- Location: LCCOMB_X36_Y13_N22
\inst2|INCNT~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|INCNT~0_combout\ = (!\inst2|INCNT\(3) & (\inst2|INCNT\(2) $ (((\inst2|INCNT\(1) & \inst2|INCNT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|INCNT\(1),
	datab => \inst2|INCNT\(0),
	datac => \inst2|INCNT\(2),
	datad => \inst2|INCNT\(3),
	combout => \inst2|INCNT~0_combout\);

-- Location: FF_X36_Y13_N23
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

-- Location: LCCOMB_X36_Y13_N28
\inst2|INCNT~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|INCNT~2_combout\ = (!\inst2|INCNT\(3) & (\inst2|INCNT\(0) $ (\inst2|INCNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|INCNT\(0),
	datac => \inst2|INCNT\(1),
	datad => \inst2|INCNT\(3),
	combout => \inst2|INCNT~2_combout\);

-- Location: FF_X36_Y13_N29
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

-- Location: LCCOMB_X36_Y13_N16
\inst2|INCNT~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|INCNT~4_combout\ = (\inst2|INCNT\(0) & (\inst2|INCNT\(2) & (!\inst2|INCNT\(3) & \inst2|INCNT\(1)))) # (!\inst2|INCNT\(0) & (!\inst2|INCNT\(2) & (\inst2|INCNT\(3) & !\inst2|INCNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|INCNT\(0),
	datab => \inst2|INCNT\(2),
	datac => \inst2|INCNT\(3),
	datad => \inst2|INCNT\(1),
	combout => \inst2|INCNT~4_combout\);

-- Location: FF_X36_Y13_N17
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

-- Location: LCCOMB_X36_Y13_N18
\inst2|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~0_combout\ = ((!\inst2|INCNT\(2) & (!\inst2|INCNT\(0) & !\inst2|INCNT\(1)))) # (!\inst2|INCNT\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|INCNT\(2),
	datab => \inst2|INCNT\(3),
	datac => \inst2|INCNT\(0),
	datad => \inst2|INCNT\(1),
	combout => \inst2|LessThan1~0_combout\);

-- Location: LCCOMB_X37_Y13_N4
\inst2|READ_CHAR~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|READ_CHAR~0_combout\ = (\inst2|READ_CHAR~q\ & ((\inst2|LessThan1~0_combout\))) # (!\inst2|READ_CHAR~q\ & (!\mouse_data~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse_data~input_o\,
	datac => \inst2|READ_CHAR~q\,
	datad => \inst2|LessThan1~0_combout\,
	combout => \inst2|READ_CHAR~0_combout\);

-- Location: FF_X37_Y13_N5
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

-- Location: LCCOMB_X36_Y13_N8
\inst2|SHIFTIN[4]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SHIFTIN[4]~0_combout\ = (!\inst2|mouse_state.WAIT_OUTPUT_READY~q\ & ((\mouse_data~input_o\) # (\inst2|READ_CHAR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse_data~input_o\,
	datac => \inst2|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst2|READ_CHAR~q\,
	combout => \inst2|SHIFTIN[4]~0_combout\);

-- Location: LCCOMB_X36_Y13_N2
\inst2|PACKET_COUNT[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|PACKET_COUNT[0]~1_combout\ = (\inst2|READ_CHAR~q\ & ((\inst2|PACKET_COUNT\(1)) # (!\inst2|PACKET_COUNT\(0)))) # (!\inst2|READ_CHAR~q\ & ((\inst2|PACKET_COUNT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|READ_CHAR~q\,
	datab => \inst2|PACKET_COUNT\(1),
	datac => \inst2|PACKET_COUNT\(0),
	combout => \inst2|PACKET_COUNT[0]~1_combout\);

-- Location: LCCOMB_X36_Y13_N6
\inst2|PACKET_COUNT[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|PACKET_COUNT[0]~2_combout\ = (\inst2|LessThan1~0_combout\ & (((\inst2|PACKET_COUNT\(0))))) # (!\inst2|LessThan1~0_combout\ & ((\inst2|SHIFTIN[4]~0_combout\ & ((\inst2|PACKET_COUNT[0]~1_combout\))) # (!\inst2|SHIFTIN[4]~0_combout\ & 
-- (\inst2|PACKET_COUNT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan1~0_combout\,
	datab => \inst2|SHIFTIN[4]~0_combout\,
	datac => \inst2|PACKET_COUNT\(0),
	datad => \inst2|PACKET_COUNT[0]~1_combout\,
	combout => \inst2|PACKET_COUNT[0]~2_combout\);

-- Location: FF_X36_Y13_N7
\inst2|PACKET_COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|PACKET_COUNT[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|PACKET_COUNT\(0));

-- Location: LCCOMB_X36_Y13_N4
\inst2|left_button~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|left_button~0_combout\ = (\inst2|READ_CHAR~q\ & (\inst2|PACKET_COUNT\(0) & (\inst2|SHIFTIN[4]~0_combout\ & !\inst2|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|READ_CHAR~q\,
	datab => \inst2|PACKET_COUNT\(0),
	datac => \inst2|SHIFTIN[4]~0_combout\,
	datad => \inst2|LessThan1~0_combout\,
	combout => \inst2|left_button~0_combout\);

-- Location: LCCOMB_X36_Y13_N24
\inst2|PACKET_COUNT[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|PACKET_COUNT[1]~0_combout\ = \inst2|PACKET_COUNT\(1) $ (\inst2|left_button~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|PACKET_COUNT\(1),
	datad => \inst2|left_button~0_combout\,
	combout => \inst2|PACKET_COUNT[1]~0_combout\);

-- Location: FF_X36_Y13_N25
\inst2|PACKET_COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|PACKET_COUNT[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|PACKET_COUNT\(1));

-- Location: LCCOMB_X36_Y13_N12
\inst2|left_button~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|left_button~1_combout\ = (\inst2|PACKET_COUNT\(1) & ((\inst2|left_button~0_combout\ & (\inst2|PACKET_CHAR1\(0))) # (!\inst2|left_button~0_combout\ & ((\inst2|left_button~q\))))) # (!\inst2|PACKET_COUNT\(1) & (((\inst2|left_button~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|PACKET_CHAR1\(0),
	datab => \inst2|PACKET_COUNT\(1),
	datac => \inst2|left_button~q\,
	datad => \inst2|left_button~0_combout\,
	combout => \inst2|left_button~1_combout\);

-- Location: FF_X36_Y13_N13
\inst2|left_button\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|left_button~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|left_button~q\);

-- Location: LCCOMB_X32_Y17_N6
\inst5|Move_Bird~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Move_Bird~0_combout\ = (!\inst5|bird_y_pos\(9) & \inst2|left_button~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|bird_y_pos\(9),
	datad => \inst2|left_button~q\,
	combout => \inst5|Move_Bird~0_combout\);

-- Location: LCCOMB_X32_Y17_N0
\inst5|Move_Bird~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Move_Bird~1_combout\ = (\inst5|Move_Bird~0_combout\ & ((\inst5|bird_y_pos\(7)) # ((\inst5|LessThan4~0_combout\) # (\inst5|LessThan4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_pos\(7),
	datab => \inst5|LessThan4~0_combout\,
	datac => \inst5|LessThan4~1_combout\,
	datad => \inst5|Move_Bird~0_combout\,
	combout => \inst5|Move_Bird~1_combout\);

-- Location: FF_X32_Y17_N1
\inst5|bird_y_motion[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|vert_sync_out~clkctrl_outclk\,
	d => \inst5|Move_Bird~1_combout\,
	ena => \ALT_INV_sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|bird_y_motion\(3));

-- Location: FF_X32_Y17_N27
\inst5|bird_y_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|vert_sync_out~clkctrl_outclk\,
	d => \inst5|bird_y_pos[8]~26_combout\,
	ena => \ALT_INV_sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|bird_y_pos\(8));

-- Location: LCCOMB_X33_Y17_N4
\inst5|LessThan5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|LessThan5~0_combout\ = ((!\inst5|bird_y_pos\(7)) # (!\inst5|bird_y_pos\(8))) # (!\inst5|bird_y_pos\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|bird_y_pos\(6),
	datac => \inst5|bird_y_pos\(8),
	datad => \inst5|bird_y_pos\(7),
	combout => \inst5|LessThan5~0_combout\);

-- Location: LCCOMB_X33_Y17_N2
\inst5|LessThan5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|LessThan5~1_combout\ = (!\inst5|bird_y_pos\(3) & (((!\inst5|bird_y_pos\(2)) # (!\inst5|bird_y_pos\(1))) # (!\inst5|bird_y_pos\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_pos\(0),
	datab => \inst5|bird_y_pos\(1),
	datac => \inst5|bird_y_pos\(3),
	datad => \inst5|bird_y_pos\(2),
	combout => \inst5|LessThan5~1_combout\);

-- Location: LCCOMB_X33_Y17_N0
\inst5|LessThan5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|LessThan5~2_combout\ = (\inst5|LessThan5~0_combout\) # ((!\inst5|bird_y_pos\(5) & ((\inst5|LessThan5~1_combout\) # (!\inst5|bird_y_pos\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_pos\(5),
	datab => \inst5|bird_y_pos\(4),
	datac => \inst5|LessThan5~0_combout\,
	datad => \inst5|LessThan5~1_combout\,
	combout => \inst5|LessThan5~2_combout\);

-- Location: LCCOMB_X32_Y17_N4
\inst5|bird_y_motion~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_y_motion~3_combout\ = (!\inst5|bird_y_pos\(9) & (\inst5|LessThan5~2_combout\ & !\inst5|Move_Bird~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_pos\(9),
	datac => \inst5|LessThan5~2_combout\,
	datad => \inst5|Move_Bird~1_combout\,
	combout => \inst5|bird_y_motion~3_combout\);

-- Location: FF_X32_Y17_N5
\inst5|bird_y_motion[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|vert_sync_out~clkctrl_outclk\,
	d => \inst5|bird_y_motion~3_combout\,
	ena => \ALT_INV_sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|bird_y_motion\(0));

-- Location: LCCOMB_X32_Y17_N10
\inst5|bird_y_pos[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_y_pos[0]~10_combout\ = (\inst5|bird_y_pos\(0) & (\inst5|bird_y_motion\(0) $ (VCC))) # (!\inst5|bird_y_pos\(0) & (\inst5|bird_y_motion\(0) & VCC))
-- \inst5|bird_y_pos[0]~11\ = CARRY((\inst5|bird_y_pos\(0) & \inst5|bird_y_motion\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_pos\(0),
	datab => \inst5|bird_y_motion\(0),
	datad => VCC,
	combout => \inst5|bird_y_pos[0]~10_combout\,
	cout => \inst5|bird_y_pos[0]~11\);

-- Location: LCCOMB_X32_Y17_N12
\inst5|bird_y_pos[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_y_pos[1]~12_combout\ = (\inst5|bird_y_motion\(1) & ((\inst5|bird_y_pos\(1) & (\inst5|bird_y_pos[0]~11\ & VCC)) # (!\inst5|bird_y_pos\(1) & (!\inst5|bird_y_pos[0]~11\)))) # (!\inst5|bird_y_motion\(1) & ((\inst5|bird_y_pos\(1) & 
-- (!\inst5|bird_y_pos[0]~11\)) # (!\inst5|bird_y_pos\(1) & ((\inst5|bird_y_pos[0]~11\) # (GND)))))
-- \inst5|bird_y_pos[1]~13\ = CARRY((\inst5|bird_y_motion\(1) & (!\inst5|bird_y_pos\(1) & !\inst5|bird_y_pos[0]~11\)) # (!\inst5|bird_y_motion\(1) & ((!\inst5|bird_y_pos[0]~11\) # (!\inst5|bird_y_pos\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_motion\(1),
	datab => \inst5|bird_y_pos\(1),
	datad => VCC,
	cin => \inst5|bird_y_pos[0]~11\,
	combout => \inst5|bird_y_pos[1]~12_combout\,
	cout => \inst5|bird_y_pos[1]~13\);

-- Location: FF_X32_Y17_N13
\inst5|bird_y_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|vert_sync_out~clkctrl_outclk\,
	d => \inst5|bird_y_pos[1]~12_combout\,
	ena => \ALT_INV_sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|bird_y_pos\(1));

-- Location: LCCOMB_X32_Y17_N14
\inst5|bird_y_pos[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_y_pos[2]~14_combout\ = (\inst5|bird_y_pos\(2) & (\inst5|bird_y_pos[1]~13\ $ (GND))) # (!\inst5|bird_y_pos\(2) & (!\inst5|bird_y_pos[1]~13\ & VCC))
-- \inst5|bird_y_pos[2]~15\ = CARRY((\inst5|bird_y_pos\(2) & !\inst5|bird_y_pos[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|bird_y_pos\(2),
	datad => VCC,
	cin => \inst5|bird_y_pos[1]~13\,
	combout => \inst5|bird_y_pos[2]~14_combout\,
	cout => \inst5|bird_y_pos[2]~15\);

-- Location: FF_X32_Y17_N15
\inst5|bird_y_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|vert_sync_out~clkctrl_outclk\,
	d => \inst5|bird_y_pos[2]~14_combout\,
	ena => \ALT_INV_sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|bird_y_pos\(2));

-- Location: LCCOMB_X32_Y17_N16
\inst5|bird_y_pos[3]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_y_pos[3]~16_combout\ = (\inst5|bird_y_motion\(3) & ((\inst5|bird_y_pos\(3) & (\inst5|bird_y_pos[2]~15\ & VCC)) # (!\inst5|bird_y_pos\(3) & (!\inst5|bird_y_pos[2]~15\)))) # (!\inst5|bird_y_motion\(3) & ((\inst5|bird_y_pos\(3) & 
-- (!\inst5|bird_y_pos[2]~15\)) # (!\inst5|bird_y_pos\(3) & ((\inst5|bird_y_pos[2]~15\) # (GND)))))
-- \inst5|bird_y_pos[3]~17\ = CARRY((\inst5|bird_y_motion\(3) & (!\inst5|bird_y_pos\(3) & !\inst5|bird_y_pos[2]~15\)) # (!\inst5|bird_y_motion\(3) & ((!\inst5|bird_y_pos[2]~15\) # (!\inst5|bird_y_pos\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_motion\(3),
	datab => \inst5|bird_y_pos\(3),
	datad => VCC,
	cin => \inst5|bird_y_pos[2]~15\,
	combout => \inst5|bird_y_pos[3]~16_combout\,
	cout => \inst5|bird_y_pos[3]~17\);

-- Location: FF_X32_Y17_N17
\inst5|bird_y_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|vert_sync_out~clkctrl_outclk\,
	d => \inst5|bird_y_pos[3]~16_combout\,
	ena => \ALT_INV_sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|bird_y_pos\(3));

-- Location: LCCOMB_X32_Y17_N18
\inst5|bird_y_pos[4]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_y_pos[4]~18_combout\ = ((\inst5|bird_y_motion\(3) $ (\inst5|bird_y_pos\(4) $ (!\inst5|bird_y_pos[3]~17\)))) # (GND)
-- \inst5|bird_y_pos[4]~19\ = CARRY((\inst5|bird_y_motion\(3) & ((\inst5|bird_y_pos\(4)) # (!\inst5|bird_y_pos[3]~17\))) # (!\inst5|bird_y_motion\(3) & (\inst5|bird_y_pos\(4) & !\inst5|bird_y_pos[3]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_motion\(3),
	datab => \inst5|bird_y_pos\(4),
	datad => VCC,
	cin => \inst5|bird_y_pos[3]~17\,
	combout => \inst5|bird_y_pos[4]~18_combout\,
	cout => \inst5|bird_y_pos[4]~19\);

-- Location: FF_X32_Y17_N19
\inst5|bird_y_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|vert_sync_out~clkctrl_outclk\,
	d => \inst5|bird_y_pos[4]~18_combout\,
	ena => \ALT_INV_sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|bird_y_pos\(4));

-- Location: LCCOMB_X32_Y17_N20
\inst5|bird_y_pos[5]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_y_pos[5]~20_combout\ = (\inst5|bird_y_motion\(3) & ((\inst5|bird_y_pos\(5) & (\inst5|bird_y_pos[4]~19\ & VCC)) # (!\inst5|bird_y_pos\(5) & (!\inst5|bird_y_pos[4]~19\)))) # (!\inst5|bird_y_motion\(3) & ((\inst5|bird_y_pos\(5) & 
-- (!\inst5|bird_y_pos[4]~19\)) # (!\inst5|bird_y_pos\(5) & ((\inst5|bird_y_pos[4]~19\) # (GND)))))
-- \inst5|bird_y_pos[5]~21\ = CARRY((\inst5|bird_y_motion\(3) & (!\inst5|bird_y_pos\(5) & !\inst5|bird_y_pos[4]~19\)) # (!\inst5|bird_y_motion\(3) & ((!\inst5|bird_y_pos[4]~19\) # (!\inst5|bird_y_pos\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_motion\(3),
	datab => \inst5|bird_y_pos\(5),
	datad => VCC,
	cin => \inst5|bird_y_pos[4]~19\,
	combout => \inst5|bird_y_pos[5]~20_combout\,
	cout => \inst5|bird_y_pos[5]~21\);

-- Location: FF_X32_Y17_N21
\inst5|bird_y_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|vert_sync_out~clkctrl_outclk\,
	d => \inst5|bird_y_pos[5]~20_combout\,
	ena => \ALT_INV_sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|bird_y_pos\(5));

-- Location: LCCOMB_X32_Y17_N22
\inst5|bird_y_pos[6]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_y_pos[6]~22_combout\ = ((\inst5|bird_y_motion\(3) $ (\inst5|bird_y_pos\(6) $ (!\inst5|bird_y_pos[5]~21\)))) # (GND)
-- \inst5|bird_y_pos[6]~23\ = CARRY((\inst5|bird_y_motion\(3) & ((\inst5|bird_y_pos\(6)) # (!\inst5|bird_y_pos[5]~21\))) # (!\inst5|bird_y_motion\(3) & (\inst5|bird_y_pos\(6) & !\inst5|bird_y_pos[5]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_motion\(3),
	datab => \inst5|bird_y_pos\(6),
	datad => VCC,
	cin => \inst5|bird_y_pos[5]~21\,
	combout => \inst5|bird_y_pos[6]~22_combout\,
	cout => \inst5|bird_y_pos[6]~23\);

-- Location: FF_X32_Y17_N23
\inst5|bird_y_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|vert_sync_out~clkctrl_outclk\,
	d => \inst5|bird_y_pos[6]~22_combout\,
	ena => \ALT_INV_sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|bird_y_pos\(6));

-- Location: FF_X32_Y17_N25
\inst5|bird_y_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|vert_sync_out~clkctrl_outclk\,
	d => \inst5|bird_y_pos[7]~24_combout\,
	ena => \ALT_INV_sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|bird_y_pos\(7));

-- Location: LCCOMB_X31_Y17_N0
\inst5|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add3~0_combout\ = (\inst5|bird_y_pos\(4) & (\inst5|bird_y_pos\(3) $ (VCC))) # (!\inst5|bird_y_pos\(4) & (\inst5|bird_y_pos\(3) & VCC))
-- \inst5|Add3~1\ = CARRY((\inst5|bird_y_pos\(4) & \inst5|bird_y_pos\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_pos\(4),
	datab => \inst5|bird_y_pos\(3),
	datad => VCC,
	combout => \inst5|Add3~0_combout\,
	cout => \inst5|Add3~1\);

-- Location: LCCOMB_X31_Y17_N2
\inst5|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add3~2_combout\ = (\inst5|bird_y_pos\(5) & (!\inst5|Add3~1\)) # (!\inst5|bird_y_pos\(5) & ((\inst5|Add3~1\) # (GND)))
-- \inst5|Add3~3\ = CARRY((!\inst5|Add3~1\) # (!\inst5|bird_y_pos\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_pos\(5),
	datad => VCC,
	cin => \inst5|Add3~1\,
	combout => \inst5|Add3~2_combout\,
	cout => \inst5|Add3~3\);

-- Location: LCCOMB_X31_Y17_N4
\inst5|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add3~4_combout\ = (\inst5|bird_y_pos\(6) & (\inst5|Add3~3\ $ (GND))) # (!\inst5|bird_y_pos\(6) & (!\inst5|Add3~3\ & VCC))
-- \inst5|Add3~5\ = CARRY((\inst5|bird_y_pos\(6) & !\inst5|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|bird_y_pos\(6),
	datad => VCC,
	cin => \inst5|Add3~3\,
	combout => \inst5|Add3~4_combout\,
	cout => \inst5|Add3~5\);

-- Location: LCCOMB_X31_Y17_N8
\inst5|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add3~8_combout\ = (\inst5|bird_y_pos\(8) & (\inst5|Add3~7\ $ (GND))) # (!\inst5|bird_y_pos\(8) & (!\inst5|Add3~7\ & VCC))
-- \inst5|Add3~9\ = CARRY((\inst5|bird_y_pos\(8) & !\inst5|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_y_pos\(8),
	datad => VCC,
	cin => \inst5|Add3~7\,
	combout => \inst5|Add3~8_combout\,
	cout => \inst5|Add3~9\);

-- Location: FF_X32_Y17_N11
\inst5|bird_y_pos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|vert_sync_out~clkctrl_outclk\,
	d => \inst5|bird_y_pos[0]~10_combout\,
	ena => \ALT_INV_sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|bird_y_pos\(0));

-- Location: LCCOMB_X31_Y17_N14
\inst5|LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~1_cout\ = CARRY((\inst1|pixel_row\(0) & !\inst5|bird_y_pos\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(0),
	datab => \inst5|bird_y_pos\(0),
	datad => VCC,
	cout => \inst5|LessThan3~1_cout\);

-- Location: LCCOMB_X31_Y17_N16
\inst5|LessThan3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~3_cout\ = CARRY((\inst1|pixel_row\(1) & (\inst5|bird_y_pos\(1) & !\inst5|LessThan3~1_cout\)) # (!\inst1|pixel_row\(1) & ((\inst5|bird_y_pos\(1)) # (!\inst5|LessThan3~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(1),
	datab => \inst5|bird_y_pos\(1),
	datad => VCC,
	cin => \inst5|LessThan3~1_cout\,
	cout => \inst5|LessThan3~3_cout\);

-- Location: LCCOMB_X31_Y17_N18
\inst5|LessThan3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~5_cout\ = CARRY((\inst1|pixel_row\(2) & ((!\inst5|LessThan3~3_cout\) # (!\inst5|bird_y_pos\(2)))) # (!\inst1|pixel_row\(2) & (!\inst5|bird_y_pos\(2) & !\inst5|LessThan3~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(2),
	datab => \inst5|bird_y_pos\(2),
	datad => VCC,
	cin => \inst5|LessThan3~3_cout\,
	cout => \inst5|LessThan3~5_cout\);

-- Location: LCCOMB_X31_Y17_N20
\inst5|LessThan3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~7_cout\ = CARRY((\inst1|pixel_row\(3) & (!\inst5|bird_y_pos\(3) & !\inst5|LessThan3~5_cout\)) # (!\inst1|pixel_row\(3) & ((!\inst5|LessThan3~5_cout\) # (!\inst5|bird_y_pos\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(3),
	datab => \inst5|bird_y_pos\(3),
	datad => VCC,
	cin => \inst5|LessThan3~5_cout\,
	cout => \inst5|LessThan3~7_cout\);

-- Location: LCCOMB_X31_Y17_N22
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

-- Location: LCCOMB_X31_Y17_N24
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

-- Location: LCCOMB_X31_Y17_N26
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

-- Location: LCCOMB_X31_Y17_N28
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

-- Location: LCCOMB_X31_Y17_N30
\inst5|LessThan3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~16_combout\ = (\inst5|Add3~8_combout\ & (!\inst5|LessThan3~15_cout\ & \inst1|pixel_row\(8))) # (!\inst5|Add3~8_combout\ & ((\inst1|pixel_row\(8)) # (!\inst5|LessThan3~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Add3~8_combout\,
	datad => \inst1|pixel_row\(8),
	cin => \inst5|LessThan3~15_cout\,
	combout => \inst5|LessThan3~16_combout\);

-- Location: LCCOMB_X31_Y17_N10
\inst5|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add3~10_combout\ = \inst5|Add3~9\ $ (\inst5|bird_y_pos\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst5|bird_y_pos\(9),
	cin => \inst5|Add3~9\,
	combout => \inst5|Add3~10_combout\);

-- Location: LCCOMB_X31_Y17_N12
\inst1|red_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|red_out~1_combout\ = (!\inst5|Add0~12_combout\ & (\inst5|bird_on~4_combout\ & (!\inst5|LessThan3~16_combout\ & !\inst5|Add3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~12_combout\,
	datab => \inst5|bird_on~4_combout\,
	datac => \inst5|LessThan3~16_combout\,
	datad => \inst5|Add3~10_combout\,
	combout => \inst1|red_out~1_combout\);

-- Location: LCCOMB_X30_Y15_N0
\inst5|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|LessThan1~0_combout\ = (\inst1|pixel_column\(8) & (\inst1|pixel_column\(6) & \inst1|pixel_column\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(8),
	datab => \inst1|pixel_column\(6),
	datac => \inst1|pixel_column\(3),
	combout => \inst5|LessThan1~0_combout\);

-- Location: LCCOMB_X30_Y15_N4
\inst5|bird_on~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_on~3_combout\ = (\inst5|bird_on~2_combout\ & (((!\inst1|pixel_column\(1) & !\inst1|pixel_column\(2))) # (!\inst5|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(1),
	datab => \inst5|bird_on~2_combout\,
	datac => \inst1|pixel_column\(2),
	datad => \inst5|LessThan1~0_combout\,
	combout => \inst5|bird_on~3_combout\);

-- Location: LCCOMB_X30_Y17_N26
\inst1|red_out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|red_out~2_combout\ = (\inst5|bird_on~1_combout\ & (\inst5|bird_on~0_combout\ & (\inst1|red_out~1_combout\ & \inst5|bird_on~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|bird_on~1_combout\,
	datab => \inst5|bird_on~0_combout\,
	datac => \inst1|red_out~1_combout\,
	datad => \inst5|bird_on~3_combout\,
	combout => \inst1|red_out~2_combout\);

-- Location: FF_X29_Y18_N17
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

-- Location: LCCOMB_X30_Y18_N26
\inst1|video_on_v~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|video_on_v~feeder_combout\ = \inst1|LessThan7~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|LessThan7~1_combout\,
	combout => \inst1|video_on_v~feeder_combout\);

-- Location: FF_X30_Y18_N27
\inst1|video_on_v\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|video_on_v~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|video_on_v~q\);

-- Location: LCCOMB_X29_Y18_N16
\inst1|green_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|green_out~0_combout\ = (\inst1|video_on_h~q\ & \inst1|video_on_v~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|video_on_h~q\,
	datad => \inst1|video_on_v~q\,
	combout => \inst1|green_out~0_combout\);

-- Location: LCCOMB_X30_Y17_N14
\inst1|red_out~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|red_out~3_combout\ = (\inst1|green_out~0_combout\ & ((\inst1|red_out~0_combout\) # ((!\inst5|LessThan2~18_combout\ & \inst1|red_out~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|LessThan2~18_combout\,
	datab => \inst1|red_out~0_combout\,
	datac => \inst1|red_out~2_combout\,
	datad => \inst1|green_out~0_combout\,
	combout => \inst1|red_out~3_combout\);

-- Location: FF_X30_Y17_N15
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

-- Location: LCCOMB_X31_Y19_N4
\inst1|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~0_combout\ = ((\inst1|v_count\(1) $ (!\inst1|v_count\(0))) # (!\inst1|v_count\(3))) # (!\inst1|v_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(2),
	datab => \inst1|v_count\(1),
	datac => \inst1|v_count\(3),
	datad => \inst1|v_count\(0),
	combout => \inst1|process_0~0_combout\);

-- Location: LCCOMB_X31_Y19_N28
\inst1|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~1_combout\ = ((\inst1|v_count\(4)) # ((\inst1|process_0~0_combout\) # (\inst1|v_count\(9)))) # (!\inst1|LessThan7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan7~0_combout\,
	datab => \inst1|v_count\(4),
	datac => \inst1|process_0~0_combout\,
	datad => \inst1|v_count\(9),
	combout => \inst1|process_0~1_combout\);

-- Location: FF_X31_Y19_N29
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

-- Location: FF_X22_Y3_N13
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

-- Location: FF_X30_Y18_N7
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

-- Location: LCCOMB_X29_Y17_N0
\inst6|Add12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add12~0_combout\ = (\inst1|pixel_row\(3) & (\inst1|pixel_row\(2) $ (VCC))) # (!\inst1|pixel_row\(3) & (\inst1|pixel_row\(2) & VCC))
-- \inst6|Add12~1\ = CARRY((\inst1|pixel_row\(3) & \inst1|pixel_row\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(3),
	datab => \inst1|pixel_row\(2),
	datad => VCC,
	combout => \inst6|Add12~0_combout\,
	cout => \inst6|Add12~1\);

-- Location: LCCOMB_X29_Y17_N2
\inst6|Add12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add12~2_combout\ = (\inst1|pixel_row\(4) & (\inst6|Add12~1\ & VCC)) # (!\inst1|pixel_row\(4) & (!\inst6|Add12~1\))
-- \inst6|Add12~3\ = CARRY((!\inst1|pixel_row\(4) & !\inst6|Add12~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(4),
	datad => VCC,
	cin => \inst6|Add12~1\,
	combout => \inst6|Add12~2_combout\,
	cout => \inst6|Add12~3\);

-- Location: LCCOMB_X29_Y17_N4
\inst6|Add12~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add12~4_combout\ = (\inst1|pixel_row\(5) & (\inst6|Add12~3\ $ (GND))) # (!\inst1|pixel_row\(5) & (!\inst6|Add12~3\ & VCC))
-- \inst6|Add12~5\ = CARRY((\inst1|pixel_row\(5) & !\inst6|Add12~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pixel_row\(5),
	datad => VCC,
	cin => \inst6|Add12~3\,
	combout => \inst6|Add12~4_combout\,
	cout => \inst6|Add12~5\);

-- Location: LCCOMB_X29_Y17_N8
\inst6|Add12~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add12~8_combout\ = (\inst1|pixel_row\(7) & (\inst6|Add12~7\ $ (GND))) # (!\inst1|pixel_row\(7) & (!\inst6|Add12~7\ & VCC))
-- \inst6|Add12~9\ = CARRY((\inst1|pixel_row\(7) & !\inst6|Add12~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pixel_row\(7),
	datad => VCC,
	cin => \inst6|Add12~7\,
	combout => \inst6|Add12~8_combout\,
	cout => \inst6|Add12~9\);

-- Location: LCCOMB_X29_Y17_N28
\inst6|pipe_bottom~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe_bottom~0_combout\ = (!\inst1|pixel_row\(2) & (\inst6|Add12~0_combout\ & (\inst1|pixel_row\(1) & \inst6|Add12~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(2),
	datab => \inst6|Add12~0_combout\,
	datac => \inst1|pixel_row\(1),
	datad => \inst6|Add12~2_combout\,
	combout => \inst6|pipe_bottom~0_combout\);

-- Location: LCCOMB_X29_Y17_N18
\inst6|pipe_bottom~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe_bottom~1_combout\ = (\inst6|Add12~8_combout\) # ((\inst6|Add12~6_combout\ & ((\inst6|Add12~4_combout\) # (\inst6|pipe_bottom~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add12~6_combout\,
	datab => \inst6|Add12~4_combout\,
	datac => \inst6|Add12~8_combout\,
	datad => \inst6|pipe_bottom~0_combout\,
	combout => \inst6|pipe_bottom~1_combout\);

-- Location: LCCOMB_X29_Y16_N8
\inst6|Add6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add6~0_combout\ = \inst1|pixel_column\(2) $ (VCC)
-- \inst6|Add6~1\ = CARRY(\inst1|pixel_column\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pixel_column\(2),
	datad => VCC,
	combout => \inst6|Add6~0_combout\,
	cout => \inst6|Add6~1\);

-- Location: LCCOMB_X29_Y16_N10
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

-- Location: LCCOMB_X29_Y16_N12
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

-- Location: LCCOMB_X29_Y16_N14
\inst6|Add6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add6~6_combout\ = (\inst1|pixel_column\(5) & (!\inst6|Add6~5\)) # (!\inst1|pixel_column\(5) & ((\inst6|Add6~5\) # (GND)))
-- \inst6|Add6~7\ = CARRY((!\inst6|Add6~5\) # (!\inst1|pixel_column\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pixel_column\(5),
	datad => VCC,
	cin => \inst6|Add6~5\,
	combout => \inst6|Add6~6_combout\,
	cout => \inst6|Add6~7\);

-- Location: LCCOMB_X29_Y16_N16
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

-- Location: LCCOMB_X29_Y16_N18
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

-- Location: LCCOMB_X29_Y16_N20
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

-- Location: LCCOMB_X29_Y16_N22
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

-- Location: LCCOMB_X24_Y18_N28
\inst6|pipe1_x_pos[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe1_x_pos[0]~2_combout\ = !\inst6|pipe1_x_pos\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|pipe1_x_pos\(0),
	combout => \inst6|pipe1_x_pos[0]~2_combout\);

-- Location: FF_X23_Y12_N9
\inst6|pipe_move:clk_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add0~40_combout\,
	ena => \ALT_INV_sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[20]~q\);

-- Location: LCCOMB_X23_Y13_N2
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

-- Location: FF_X23_Y13_N3
\inst6|pipe_move:clk_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add0~2_combout\,
	ena => \ALT_INV_sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[1]~q\);

-- Location: LCCOMB_X23_Y13_N4
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

-- Location: FF_X23_Y13_N5
\inst6|pipe_move:clk_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add0~4_combout\,
	ena => \ALT_INV_sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[2]~q\);

-- Location: LCCOMB_X23_Y13_N6
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

-- Location: LCCOMB_X23_Y13_N8
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

-- Location: FF_X23_Y13_N9
\inst6|pipe_move:clk_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add0~8_combout\,
	ena => \ALT_INV_sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[4]~q\);

-- Location: LCCOMB_X23_Y13_N10
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

-- Location: LCCOMB_X23_Y13_N14
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

-- Location: FF_X23_Y13_N15
\inst6|pipe_move:clk_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add0~14_combout\,
	ena => \ALT_INV_sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[7]~q\);

-- Location: LCCOMB_X23_Y13_N16
\inst6|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add0~16_combout\ = (\inst6|pipe_move:clk_cnt[8]~q\ & (\inst6|Add0~15\ $ (GND))) # (!\inst6|pipe_move:clk_cnt[8]~q\ & (!\inst6|Add0~15\ & VCC))
-- \inst6|Add0~17\ = CARRY((\inst6|pipe_move:clk_cnt[8]~q\ & !\inst6|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe_move:clk_cnt[8]~q\,
	datad => VCC,
	cin => \inst6|Add0~15\,
	combout => \inst6|Add0~16_combout\,
	cout => \inst6|Add0~17\);

-- Location: FF_X23_Y13_N17
\inst6|pipe_move:clk_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add0~16_combout\,
	ena => \ALT_INV_sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[8]~q\);

-- Location: LCCOMB_X23_Y13_N18
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

-- Location: LCCOMB_X24_Y13_N12
\inst6|clk_cnt~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|clk_cnt~2_combout\ = (\inst6|Add0~18_combout\ & !\inst6|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add0~18_combout\,
	datad => \inst6|Equal0~10_combout\,
	combout => \inst6|clk_cnt~2_combout\);

-- Location: FF_X24_Y13_N13
\inst6|pipe_move:clk_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|clk_cnt~2_combout\,
	ena => \ALT_INV_sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[9]~q\);

-- Location: LCCOMB_X23_Y13_N20
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

-- Location: FF_X23_Y13_N21
\inst6|pipe_move:clk_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add0~20_combout\,
	ena => \ALT_INV_sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[10]~q\);

-- Location: LCCOMB_X23_Y13_N24
\inst6|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add0~24_combout\ = (\inst6|pipe_move:clk_cnt[12]~q\ & (\inst6|Add0~23\ $ (GND))) # (!\inst6|pipe_move:clk_cnt[12]~q\ & (!\inst6|Add0~23\ & VCC))
-- \inst6|Add0~25\ = CARRY((\inst6|pipe_move:clk_cnt[12]~q\ & !\inst6|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe_move:clk_cnt[12]~q\,
	datad => VCC,
	cin => \inst6|Add0~23\,
	combout => \inst6|Add0~24_combout\,
	cout => \inst6|Add0~25\);

-- Location: FF_X23_Y13_N25
\inst6|pipe_move:clk_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add0~24_combout\,
	ena => \ALT_INV_sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[12]~q\);

-- Location: LCCOMB_X23_Y13_N28
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

-- Location: LCCOMB_X24_Y13_N8
\inst6|clk_cnt~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|clk_cnt~3_combout\ = (\inst6|Add0~28_combout\ & !\inst6|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add0~28_combout\,
	datad => \inst6|Equal0~10_combout\,
	combout => \inst6|clk_cnt~3_combout\);

-- Location: FF_X24_Y13_N9
\inst6|pipe_move:clk_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|clk_cnt~3_combout\,
	ena => \ALT_INV_sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[14]~q\);

-- Location: LCCOMB_X23_Y12_N0
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

-- Location: LCCOMB_X24_Y13_N30
\inst6|clk_cnt~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|clk_cnt~4_combout\ = (\inst6|Add0~32_combout\ & !\inst6|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Add0~32_combout\,
	datad => \inst6|Equal0~10_combout\,
	combout => \inst6|clk_cnt~4_combout\);

-- Location: FF_X24_Y13_N31
\inst6|pipe_move:clk_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|clk_cnt~4_combout\,
	ena => \ALT_INV_sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[16]~q\);

-- Location: LCCOMB_X23_Y12_N2
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

-- Location: LCCOMB_X24_Y13_N24
\inst6|clk_cnt~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|clk_cnt~5_combout\ = (\inst6|Add0~34_combout\ & !\inst6|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Add0~34_combout\,
	datad => \inst6|Equal0~10_combout\,
	combout => \inst6|clk_cnt~5_combout\);

-- Location: FF_X24_Y13_N25
\inst6|pipe_move:clk_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|clk_cnt~5_combout\,
	ena => \ALT_INV_sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[17]~q\);

-- Location: LCCOMB_X23_Y12_N4
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

-- Location: LCCOMB_X23_Y12_N6
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

-- Location: LCCOMB_X23_Y12_N8
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

-- Location: LCCOMB_X24_Y12_N16
\inst6|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Equal0~6_combout\ = (!\inst6|Add0~42_combout\ & !\inst6|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~42_combout\,
	datad => \inst6|Add0~40_combout\,
	combout => \inst6|Equal0~6_combout\);

-- Location: LCCOMB_X24_Y13_N14
\inst6|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Equal0~5_combout\ = (\inst6|Add0~32_combout\ & (\inst6|Add0~34_combout\ & (\inst6|Add0~36_combout\ & \inst6|Add0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~32_combout\,
	datab => \inst6|Add0~34_combout\,
	datac => \inst6|Add0~36_combout\,
	datad => \inst6|Add0~38_combout\,
	combout => \inst6|Equal0~5_combout\);

-- Location: FF_X23_Y12_N15
\inst6|pipe_move:clk_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add0~46_combout\,
	ena => \ALT_INV_sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[23]~q\);

-- Location: LCCOMB_X23_Y12_N14
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

-- Location: LCCOMB_X24_Y12_N2
\inst6|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Equal0~7_combout\ = (!\inst6|Add0~44_combout\ & (\inst6|Equal0~6_combout\ & (\inst6|Equal0~5_combout\ & !\inst6|Add0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~44_combout\,
	datab => \inst6|Equal0~6_combout\,
	datac => \inst6|Equal0~5_combout\,
	datad => \inst6|Add0~46_combout\,
	combout => \inst6|Equal0~7_combout\);

-- Location: FF_X23_Y12_N29
\inst6|pipe_move:clk_cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add0~60_combout\,
	ena => \ALT_INV_sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[30]~q\);

-- Location: LCCOMB_X23_Y12_N16
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

-- Location: FF_X23_Y12_N17
\inst6|pipe_move:clk_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add0~48_combout\,
	ena => \ALT_INV_sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[24]~q\);

-- Location: LCCOMB_X23_Y12_N18
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

-- Location: FF_X23_Y12_N19
\inst6|pipe_move:clk_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add0~50_combout\,
	ena => \ALT_INV_sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[25]~q\);

-- Location: LCCOMB_X23_Y12_N20
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

-- Location: FF_X23_Y12_N21
\inst6|pipe_move:clk_cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add0~52_combout\,
	ena => \ALT_INV_sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[26]~q\);

-- Location: LCCOMB_X23_Y12_N24
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

-- Location: FF_X23_Y12_N25
\inst6|pipe_move:clk_cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add0~56_combout\,
	ena => \ALT_INV_sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe_move:clk_cnt[28]~q\);

-- Location: LCCOMB_X23_Y12_N26
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

-- Location: LCCOMB_X23_Y12_N28
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

-- Location: LCCOMB_X23_Y12_N30
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

-- Location: LCCOMB_X24_Y12_N22
\inst6|Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Equal0~9_combout\ = (!\inst6|Add0~56_combout\ & (!\inst6|Add0~60_combout\ & (!\inst6|Add0~58_combout\ & !\inst6|Add0~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~56_combout\,
	datab => \inst6|Add0~60_combout\,
	datac => \inst6|Add0~58_combout\,
	datad => \inst6|Add0~62_combout\,
	combout => \inst6|Equal0~9_combout\);

-- Location: LCCOMB_X24_Y13_N18
\inst6|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Equal0~0_combout\ = (!\inst6|Add0~0_combout\ & (!\inst6|Add0~6_combout\ & (!\inst6|Add0~4_combout\ & !\inst6|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~0_combout\,
	datab => \inst6|Add0~6_combout\,
	datac => \inst6|Add0~4_combout\,
	datad => \inst6|Add0~2_combout\,
	combout => \inst6|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y13_N26
\inst6|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Equal0~1_combout\ = (\inst6|Add0~12_combout\ & (!\inst6|Add0~14_combout\ & (!\inst6|Add0~8_combout\ & !\inst6|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~12_combout\,
	datab => \inst6|Add0~14_combout\,
	datac => \inst6|Add0~8_combout\,
	datad => \inst6|Add0~10_combout\,
	combout => \inst6|Equal0~1_combout\);

-- Location: LCCOMB_X24_Y13_N2
\inst6|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Equal0~2_combout\ = (!\inst6|Add0~22_combout\ & (!\inst6|Add0~20_combout\ & (!\inst6|Add0~16_combout\ & \inst6|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~22_combout\,
	datab => \inst6|Add0~20_combout\,
	datac => \inst6|Add0~16_combout\,
	datad => \inst6|Add0~18_combout\,
	combout => \inst6|Equal0~2_combout\);

-- Location: LCCOMB_X24_Y13_N28
\inst6|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Equal0~4_combout\ = (\inst6|Equal0~3_combout\ & (\inst6|Equal0~0_combout\ & (\inst6|Equal0~1_combout\ & \inst6|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Equal0~3_combout\,
	datab => \inst6|Equal0~0_combout\,
	datac => \inst6|Equal0~1_combout\,
	datad => \inst6|Equal0~2_combout\,
	combout => \inst6|Equal0~4_combout\);

-- Location: LCCOMB_X24_Y12_N0
\inst6|Equal0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Equal0~10_combout\ = (\inst6|Equal0~8_combout\ & (\inst6|Equal0~7_combout\ & (\inst6|Equal0~9_combout\ & \inst6|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Equal0~8_combout\,
	datab => \inst6|Equal0~7_combout\,
	datac => \inst6|Equal0~9_combout\,
	datad => \inst6|Equal0~4_combout\,
	combout => \inst6|Equal0~10_combout\);

-- Location: LCCOMB_X24_Y13_N0
\inst6|pipe2_x_pos[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe2_x_pos[3]~0_combout\ = (!\sw0~input_o\ & \inst6|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw0~input_o\,
	datad => \inst6|Equal0~10_combout\,
	combout => \inst6|pipe2_x_pos[3]~0_combout\);

-- Location: FF_X24_Y18_N29
\inst6|pipe1_x_pos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|pipe1_x_pos[0]~2_combout\,
	ena => \inst6|pipe2_x_pos[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe1_x_pos\(0));

-- Location: LCCOMB_X24_Y18_N6
\inst6|Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add1~1_cout\ = CARRY(\inst6|pipe1_x_pos\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe1_x_pos\(0),
	datad => VCC,
	cout => \inst6|Add1~1_cout\);

-- Location: LCCOMB_X24_Y18_N8
\inst6|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add1~2_combout\ = (\inst6|pipe1_x_pos\(1) & (\inst6|Add1~1_cout\ & VCC)) # (!\inst6|pipe1_x_pos\(1) & (!\inst6|Add1~1_cout\))
-- \inst6|Add1~3\ = CARRY((!\inst6|pipe1_x_pos\(1) & !\inst6|Add1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe1_x_pos\(1),
	datad => VCC,
	cin => \inst6|Add1~1_cout\,
	combout => \inst6|Add1~2_combout\,
	cout => \inst6|Add1~3\);

-- Location: FF_X24_Y18_N9
\inst6|pipe1_x_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add1~2_combout\,
	ena => \inst6|pipe2_x_pos[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe1_x_pos\(1));

-- Location: LCCOMB_X24_Y18_N12
\inst6|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add1~6_combout\ = (\inst6|pipe1_x_pos\(3) & (\inst6|Add1~5\ & VCC)) # (!\inst6|pipe1_x_pos\(3) & (!\inst6|Add1~5\))
-- \inst6|Add1~7\ = CARRY((!\inst6|pipe1_x_pos\(3) & !\inst6|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe1_x_pos\(3),
	datad => VCC,
	cin => \inst6|Add1~5\,
	combout => \inst6|Add1~6_combout\,
	cout => \inst6|Add1~7\);

-- Location: LCCOMB_X24_Y18_N14
\inst6|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add1~8_combout\ = (\inst6|pipe1_x_pos\(4) & ((GND) # (!\inst6|Add1~7\))) # (!\inst6|pipe1_x_pos\(4) & (\inst6|Add1~7\ $ (GND)))
-- \inst6|Add1~9\ = CARRY((\inst6|pipe1_x_pos\(4)) # (!\inst6|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe1_x_pos\(4),
	datad => VCC,
	cin => \inst6|Add1~7\,
	combout => \inst6|Add1~8_combout\,
	cout => \inst6|Add1~9\);

-- Location: FF_X24_Y18_N15
\inst6|pipe1_x_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add1~8_combout\,
	ena => \inst6|pipe2_x_pos[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe1_x_pos\(4));

-- Location: LCCOMB_X24_Y18_N16
\inst6|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add1~10_combout\ = (\inst6|pipe1_x_pos\(5) & (\inst6|Add1~9\ & VCC)) # (!\inst6|pipe1_x_pos\(5) & (!\inst6|Add1~9\))
-- \inst6|Add1~11\ = CARRY((!\inst6|pipe1_x_pos\(5) & !\inst6|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe1_x_pos\(5),
	datad => VCC,
	cin => \inst6|Add1~9\,
	combout => \inst6|Add1~10_combout\,
	cout => \inst6|Add1~11\);

-- Location: FF_X24_Y18_N17
\inst6|pipe1_x_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add1~10_combout\,
	ena => \inst6|pipe2_x_pos[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe1_x_pos\(5));

-- Location: LCCOMB_X24_Y18_N18
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

-- Location: FF_X24_Y18_N19
\inst6|pipe1_x_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add1~12_combout\,
	ena => \inst6|pipe2_x_pos[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe1_x_pos\(6));

-- Location: LCCOMB_X24_Y18_N20
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

-- Location: LCCOMB_X24_Y18_N22
\inst6|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add1~16_combout\ = (\inst6|pipe1_x_pos\(8) & ((GND) # (!\inst6|Add1~15\))) # (!\inst6|pipe1_x_pos\(8) & (\inst6|Add1~15\ $ (GND)))
-- \inst6|Add1~17\ = CARRY((\inst6|pipe1_x_pos\(8)) # (!\inst6|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe1_x_pos\(8),
	datad => VCC,
	cin => \inst6|Add1~15\,
	combout => \inst6|Add1~16_combout\,
	cout => \inst6|Add1~17\);

-- Location: LCCOMB_X24_Y18_N24
\inst6|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add1~18_combout\ = \inst6|Add1~17\ $ (\inst6|pipe1_x_pos\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst6|pipe1_x_pos\(9),
	cin => \inst6|Add1~17\,
	combout => \inst6|Add1~18_combout\);

-- Location: LCCOMB_X24_Y18_N0
\inst6|pipe1_x_pos[9]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe1_x_pos[9]~0_combout\ = !\inst6|Add1~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Add1~18_combout\,
	combout => \inst6|pipe1_x_pos[9]~0_combout\);

-- Location: FF_X24_Y18_N1
\inst6|pipe1_x_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|pipe1_x_pos[9]~0_combout\,
	ena => \inst6|pipe2_x_pos[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe1_x_pos\(9));

-- Location: FF_X24_Y18_N23
\inst6|pipe1_x_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add1~16_combout\,
	ena => \inst6|pipe2_x_pos[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe1_x_pos\(8));

-- Location: LCCOMB_X24_Y18_N26
\inst6|pipe1_x_pos[7]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe1_x_pos[7]~1_combout\ = !\inst6|Add1~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Add1~14_combout\,
	combout => \inst6|pipe1_x_pos[7]~1_combout\);

-- Location: FF_X24_Y18_N27
\inst6|pipe1_x_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|pipe1_x_pos[7]~1_combout\,
	ena => \inst6|pipe2_x_pos[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe1_x_pos\(7));

-- Location: FF_X24_Y18_N13
\inst6|pipe1_x_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add1~6_combout\,
	ena => \inst6|pipe2_x_pos[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe1_x_pos\(3));

-- Location: LCCOMB_X26_Y18_N12
\inst6|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan0~1_cout\ = CARRY((\inst6|pipe1_x_pos\(0) & !\inst1|pixel_column\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe1_x_pos\(0),
	datab => \inst1|pixel_column\(0),
	datad => VCC,
	cout => \inst6|LessThan0~1_cout\);

-- Location: LCCOMB_X26_Y18_N14
\inst6|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan0~3_cout\ = CARRY((\inst1|pixel_column\(1) & ((!\inst6|LessThan0~1_cout\) # (!\inst6|pipe1_x_pos\(1)))) # (!\inst1|pixel_column\(1) & (!\inst6|pipe1_x_pos\(1) & !\inst6|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(1),
	datab => \inst6|pipe1_x_pos\(1),
	datad => VCC,
	cin => \inst6|LessThan0~1_cout\,
	cout => \inst6|LessThan0~3_cout\);

-- Location: LCCOMB_X26_Y18_N16
\inst6|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan0~5_cout\ = CARRY((\inst6|pipe1_x_pos\(2) & ((!\inst6|LessThan0~3_cout\) # (!\inst6|Add6~0_combout\))) # (!\inst6|pipe1_x_pos\(2) & (!\inst6|Add6~0_combout\ & !\inst6|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe1_x_pos\(2),
	datab => \inst6|Add6~0_combout\,
	datad => VCC,
	cin => \inst6|LessThan0~3_cout\,
	cout => \inst6|LessThan0~5_cout\);

-- Location: LCCOMB_X26_Y18_N18
\inst6|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan0~7_cout\ = CARRY((\inst6|Add6~2_combout\ & ((!\inst6|LessThan0~5_cout\) # (!\inst6|pipe1_x_pos\(3)))) # (!\inst6|Add6~2_combout\ & (!\inst6|pipe1_x_pos\(3) & !\inst6|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add6~2_combout\,
	datab => \inst6|pipe1_x_pos\(3),
	datad => VCC,
	cin => \inst6|LessThan0~5_cout\,
	cout => \inst6|LessThan0~7_cout\);

-- Location: LCCOMB_X26_Y18_N20
\inst6|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan0~9_cout\ = CARRY((\inst6|pipe1_x_pos\(4) & ((!\inst6|LessThan0~7_cout\) # (!\inst6|Add6~4_combout\))) # (!\inst6|pipe1_x_pos\(4) & (!\inst6|Add6~4_combout\ & !\inst6|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe1_x_pos\(4),
	datab => \inst6|Add6~4_combout\,
	datad => VCC,
	cin => \inst6|LessThan0~7_cout\,
	cout => \inst6|LessThan0~9_cout\);

-- Location: LCCOMB_X26_Y18_N22
\inst6|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan0~11_cout\ = CARRY((\inst6|pipe1_x_pos\(5) & (\inst6|Add6~6_combout\ & !\inst6|LessThan0~9_cout\)) # (!\inst6|pipe1_x_pos\(5) & ((\inst6|Add6~6_combout\) # (!\inst6|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe1_x_pos\(5),
	datab => \inst6|Add6~6_combout\,
	datad => VCC,
	cin => \inst6|LessThan0~9_cout\,
	cout => \inst6|LessThan0~11_cout\);

-- Location: LCCOMB_X26_Y18_N24
\inst6|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan0~13_cout\ = CARRY((\inst6|pipe1_x_pos\(6) & ((!\inst6|LessThan0~11_cout\) # (!\inst6|Add6~8_combout\))) # (!\inst6|pipe1_x_pos\(6) & (!\inst6|Add6~8_combout\ & !\inst6|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe1_x_pos\(6),
	datab => \inst6|Add6~8_combout\,
	datad => VCC,
	cin => \inst6|LessThan0~11_cout\,
	cout => \inst6|LessThan0~13_cout\);

-- Location: LCCOMB_X26_Y18_N26
\inst6|LessThan0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan0~15_cout\ = CARRY((\inst6|Add6~10_combout\ & ((\inst6|pipe1_x_pos\(7)) # (!\inst6|LessThan0~13_cout\))) # (!\inst6|Add6~10_combout\ & (\inst6|pipe1_x_pos\(7) & !\inst6|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add6~10_combout\,
	datab => \inst6|pipe1_x_pos\(7),
	datad => VCC,
	cin => \inst6|LessThan0~13_cout\,
	cout => \inst6|LessThan0~15_cout\);

-- Location: LCCOMB_X26_Y18_N28
\inst6|LessThan0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan0~17_cout\ = CARRY((\inst6|Add6~12_combout\ & (\inst6|pipe1_x_pos\(8) & !\inst6|LessThan0~15_cout\)) # (!\inst6|Add6~12_combout\ & ((\inst6|pipe1_x_pos\(8)) # (!\inst6|LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add6~12_combout\,
	datab => \inst6|pipe1_x_pos\(8),
	datad => VCC,
	cin => \inst6|LessThan0~15_cout\,
	cout => \inst6|LessThan0~17_cout\);

-- Location: LCCOMB_X26_Y18_N30
\inst6|LessThan0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan0~18_combout\ = (\inst6|Add6~14_combout\ & (\inst6|LessThan0~17_cout\ & !\inst6|pipe1_x_pos\(9))) # (!\inst6|Add6~14_combout\ & ((\inst6|LessThan0~17_cout\) # (!\inst6|pipe1_x_pos\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add6~14_combout\,
	datad => \inst6|pipe1_x_pos\(9),
	cin => \inst6|LessThan0~17_cout\,
	combout => \inst6|LessThan0~18_combout\);

-- Location: LCCOMB_X24_Y14_N8
\inst6|Add2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add2~1_cout\ = CARRY(\inst6|pipe1_x_pos\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe1_x_pos\(0),
	datad => VCC,
	cout => \inst6|Add2~1_cout\);

-- Location: LCCOMB_X24_Y14_N12
\inst6|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add2~4_combout\ = (\inst6|pipe2_x_pos\(2) & ((GND) # (!\inst6|Add2~3\))) # (!\inst6|pipe2_x_pos\(2) & (\inst6|Add2~3\ $ (GND)))
-- \inst6|Add2~5\ = CARRY((\inst6|pipe2_x_pos\(2)) # (!\inst6|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe2_x_pos\(2),
	datad => VCC,
	cin => \inst6|Add2~3\,
	combout => \inst6|Add2~4_combout\,
	cout => \inst6|Add2~5\);

-- Location: LCCOMB_X24_Y14_N16
\inst6|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add2~8_combout\ = (\inst6|pipe2_x_pos\(4) & ((GND) # (!\inst6|Add2~7\))) # (!\inst6|pipe2_x_pos\(4) & (\inst6|Add2~7\ $ (GND)))
-- \inst6|Add2~9\ = CARRY((\inst6|pipe2_x_pos\(4)) # (!\inst6|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe2_x_pos\(4),
	datad => VCC,
	cin => \inst6|Add2~7\,
	combout => \inst6|Add2~8_combout\,
	cout => \inst6|Add2~9\);

-- Location: FF_X24_Y14_N17
\inst6|pipe2_x_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add2~8_combout\,
	ena => \inst6|pipe2_x_pos[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe2_x_pos\(4));

-- Location: LCCOMB_X24_Y14_N18
\inst6|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add2~10_combout\ = (\inst6|pipe2_x_pos\(5) & (\inst6|Add2~9\ & VCC)) # (!\inst6|pipe2_x_pos\(5) & (!\inst6|Add2~9\))
-- \inst6|Add2~11\ = CARRY((!\inst6|pipe2_x_pos\(5) & !\inst6|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe2_x_pos\(5),
	datad => VCC,
	cin => \inst6|Add2~9\,
	combout => \inst6|Add2~10_combout\,
	cout => \inst6|Add2~11\);

-- Location: FF_X24_Y14_N19
\inst6|pipe2_x_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add2~10_combout\,
	ena => \inst6|pipe2_x_pos[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe2_x_pos\(5));

-- Location: LCCOMB_X24_Y14_N20
\inst6|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add2~12_combout\ = (\inst6|pipe2_x_pos\(6) & (\inst6|Add2~11\ $ (GND))) # (!\inst6|pipe2_x_pos\(6) & ((GND) # (!\inst6|Add2~11\)))
-- \inst6|Add2~13\ = CARRY((!\inst6|Add2~11\) # (!\inst6|pipe2_x_pos\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe2_x_pos\(6),
	datad => VCC,
	cin => \inst6|Add2~11\,
	combout => \inst6|Add2~12_combout\,
	cout => \inst6|Add2~13\);

-- Location: LCCOMB_X24_Y14_N0
\inst6|pipe2_x_pos[6]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe2_x_pos[6]~3_combout\ = !\inst6|Add2~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|Add2~12_combout\,
	combout => \inst6|pipe2_x_pos[6]~3_combout\);

-- Location: FF_X24_Y14_N1
\inst6|pipe2_x_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|pipe2_x_pos[6]~3_combout\,
	ena => \inst6|pipe2_x_pos[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe2_x_pos\(6));

-- Location: FF_X24_Y14_N23
\inst6|pipe2_x_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add2~14_combout\,
	ena => \inst6|pipe2_x_pos[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe2_x_pos\(7));

-- Location: FF_X24_Y14_N13
\inst6|pipe2_x_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add2~4_combout\,
	ena => \inst6|pipe2_x_pos[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe2_x_pos\(2));

-- Location: LCCOMB_X24_Y15_N10
\inst6|Add8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add8~2_combout\ = (\inst6|pipe2_x_pos\(4) & (\inst6|Add8~1\ & VCC)) # (!\inst6|pipe2_x_pos\(4) & (!\inst6|Add8~1\))
-- \inst6|Add8~3\ = CARRY((!\inst6|pipe2_x_pos\(4) & !\inst6|Add8~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe2_x_pos\(4),
	datad => VCC,
	cin => \inst6|Add8~1\,
	combout => \inst6|Add8~2_combout\,
	cout => \inst6|Add8~3\);

-- Location: LCCOMB_X27_Y15_N10
\inst6|LessThan4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan4~1_cout\ = CARRY((!\inst6|pipe1_x_pos\(0) & \inst1|pixel_column\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe1_x_pos\(0),
	datab => \inst1|pixel_column\(0),
	datad => VCC,
	cout => \inst6|LessThan4~1_cout\);

-- Location: LCCOMB_X27_Y15_N12
\inst6|LessThan4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan4~3_cout\ = CARRY((\inst6|pipe2_x_pos\(1) & ((!\inst6|LessThan4~1_cout\) # (!\inst1|pixel_column\(1)))) # (!\inst6|pipe2_x_pos\(1) & (!\inst1|pixel_column\(1) & !\inst6|LessThan4~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe2_x_pos\(1),
	datab => \inst1|pixel_column\(1),
	datad => VCC,
	cin => \inst6|LessThan4~1_cout\,
	cout => \inst6|LessThan4~3_cout\);

-- Location: LCCOMB_X27_Y15_N14
\inst6|LessThan4~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan4~5_cout\ = CARRY((\inst6|pipe2_x_pos\(2) & ((\inst1|pixel_column\(2)) # (!\inst6|LessThan4~3_cout\))) # (!\inst6|pipe2_x_pos\(2) & (\inst1|pixel_column\(2) & !\inst6|LessThan4~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe2_x_pos\(2),
	datab => \inst1|pixel_column\(2),
	datad => VCC,
	cin => \inst6|LessThan4~3_cout\,
	cout => \inst6|LessThan4~5_cout\);

-- Location: LCCOMB_X27_Y15_N16
\inst6|LessThan4~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan4~7_cout\ = CARRY((\inst6|Add8~0_combout\ & ((!\inst6|LessThan4~5_cout\) # (!\inst1|pixel_column\(3)))) # (!\inst6|Add8~0_combout\ & (!\inst1|pixel_column\(3) & !\inst6|LessThan4~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add8~0_combout\,
	datab => \inst1|pixel_column\(3),
	datad => VCC,
	cin => \inst6|LessThan4~5_cout\,
	cout => \inst6|LessThan4~7_cout\);

-- Location: LCCOMB_X27_Y15_N18
\inst6|LessThan4~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan4~9_cout\ = CARRY((\inst1|pixel_column\(4) & ((!\inst6|LessThan4~7_cout\) # (!\inst6|Add8~2_combout\))) # (!\inst1|pixel_column\(4) & (!\inst6|Add8~2_combout\ & !\inst6|LessThan4~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(4),
	datab => \inst6|Add8~2_combout\,
	datad => VCC,
	cin => \inst6|LessThan4~7_cout\,
	cout => \inst6|LessThan4~9_cout\);

-- Location: LCCOMB_X27_Y15_N20
\inst6|LessThan4~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan4~11_cout\ = CARRY((\inst6|Add8~4_combout\ & ((!\inst6|LessThan4~9_cout\) # (!\inst1|pixel_column\(5)))) # (!\inst6|Add8~4_combout\ & (!\inst1|pixel_column\(5) & !\inst6|LessThan4~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add8~4_combout\,
	datab => \inst1|pixel_column\(5),
	datad => VCC,
	cin => \inst6|LessThan4~9_cout\,
	cout => \inst6|LessThan4~11_cout\);

-- Location: LCCOMB_X27_Y15_N22
\inst6|LessThan4~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan4~13_cout\ = CARRY((\inst6|Add8~6_combout\ & (\inst1|pixel_column\(6) & !\inst6|LessThan4~11_cout\)) # (!\inst6|Add8~6_combout\ & ((\inst1|pixel_column\(6)) # (!\inst6|LessThan4~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add8~6_combout\,
	datab => \inst1|pixel_column\(6),
	datad => VCC,
	cin => \inst6|LessThan4~11_cout\,
	cout => \inst6|LessThan4~13_cout\);

-- Location: LCCOMB_X27_Y15_N24
\inst6|LessThan4~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan4~15_cout\ = CARRY((\inst1|pixel_column\(7) & (\inst6|Add8~8_combout\ & !\inst6|LessThan4~13_cout\)) # (!\inst1|pixel_column\(7) & ((\inst6|Add8~8_combout\) # (!\inst6|LessThan4~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(7),
	datab => \inst6|Add8~8_combout\,
	datad => VCC,
	cin => \inst6|LessThan4~13_cout\,
	cout => \inst6|LessThan4~15_cout\);

-- Location: LCCOMB_X27_Y15_N26
\inst6|LessThan4~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan4~17_cout\ = CARRY((\inst6|Add8~10_combout\ & (\inst1|pixel_column\(8) & !\inst6|LessThan4~15_cout\)) # (!\inst6|Add8~10_combout\ & ((\inst1|pixel_column\(8)) # (!\inst6|LessThan4~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add8~10_combout\,
	datab => \inst1|pixel_column\(8),
	datad => VCC,
	cin => \inst6|LessThan4~15_cout\,
	cout => \inst6|LessThan4~17_cout\);

-- Location: LCCOMB_X27_Y15_N28
\inst6|LessThan4~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan4~18_combout\ = (\inst6|Add8~12_combout\ & (\inst6|LessThan4~17_cout\ & \inst1|pixel_column\(9))) # (!\inst6|Add8~12_combout\ & ((\inst6|LessThan4~17_cout\) # (\inst1|pixel_column\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add8~12_combout\,
	datad => \inst1|pixel_column\(9),
	cin => \inst6|LessThan4~17_cout\,
	combout => \inst6|LessThan4~18_combout\);

-- Location: LCCOMB_X27_Y18_N12
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

-- Location: LCCOMB_X27_Y18_N14
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

-- Location: LCCOMB_X27_Y18_N16
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

-- Location: LCCOMB_X27_Y18_N20
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

-- Location: LCCOMB_X27_Y18_N22
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

-- Location: LCCOMB_X28_Y18_N0
\inst6|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan1~1_cout\ = CARRY((!\inst6|pipe1_x_pos\(0) & \inst1|pixel_column\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe1_x_pos\(0),
	datab => \inst1|pixel_column\(0),
	datad => VCC,
	cout => \inst6|LessThan1~1_cout\);

-- Location: LCCOMB_X28_Y18_N2
\inst6|LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan1~3_cout\ = CARRY((\inst6|pipe1_x_pos\(1) & ((!\inst6|LessThan1~1_cout\) # (!\inst1|pixel_column\(1)))) # (!\inst6|pipe1_x_pos\(1) & (!\inst1|pixel_column\(1) & !\inst6|LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe1_x_pos\(1),
	datab => \inst1|pixel_column\(1),
	datad => VCC,
	cin => \inst6|LessThan1~1_cout\,
	cout => \inst6|LessThan1~3_cout\);

-- Location: LCCOMB_X28_Y18_N4
\inst6|LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan1~5_cout\ = CARRY((\inst6|pipe1_x_pos\(2) & ((\inst1|pixel_column\(2)) # (!\inst6|LessThan1~3_cout\))) # (!\inst6|pipe1_x_pos\(2) & (\inst1|pixel_column\(2) & !\inst6|LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe1_x_pos\(2),
	datab => \inst1|pixel_column\(2),
	datad => VCC,
	cin => \inst6|LessThan1~3_cout\,
	cout => \inst6|LessThan1~5_cout\);

-- Location: LCCOMB_X28_Y18_N6
\inst6|LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan1~7_cout\ = CARRY((\inst6|Add7~0_combout\ & ((!\inst6|LessThan1~5_cout\) # (!\inst1|pixel_column\(3)))) # (!\inst6|Add7~0_combout\ & (!\inst1|pixel_column\(3) & !\inst6|LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add7~0_combout\,
	datab => \inst1|pixel_column\(3),
	datad => VCC,
	cin => \inst6|LessThan1~5_cout\,
	cout => \inst6|LessThan1~7_cout\);

-- Location: LCCOMB_X28_Y18_N8
\inst6|LessThan1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan1~9_cout\ = CARRY((\inst1|pixel_column\(4) & ((!\inst6|LessThan1~7_cout\) # (!\inst6|Add7~2_combout\))) # (!\inst1|pixel_column\(4) & (!\inst6|Add7~2_combout\ & !\inst6|LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(4),
	datab => \inst6|Add7~2_combout\,
	datad => VCC,
	cin => \inst6|LessThan1~7_cout\,
	cout => \inst6|LessThan1~9_cout\);

-- Location: LCCOMB_X28_Y18_N10
\inst6|LessThan1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan1~11_cout\ = CARRY((\inst1|pixel_column\(5) & (\inst6|Add7~4_combout\ & !\inst6|LessThan1~9_cout\)) # (!\inst1|pixel_column\(5) & ((\inst6|Add7~4_combout\) # (!\inst6|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(5),
	datab => \inst6|Add7~4_combout\,
	datad => VCC,
	cin => \inst6|LessThan1~9_cout\,
	cout => \inst6|LessThan1~11_cout\);

-- Location: LCCOMB_X28_Y18_N12
\inst6|LessThan1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan1~13_cout\ = CARRY((\inst1|pixel_column\(6) & ((!\inst6|LessThan1~11_cout\) # (!\inst6|Add7~6_combout\))) # (!\inst1|pixel_column\(6) & (!\inst6|Add7~6_combout\ & !\inst6|LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(6),
	datab => \inst6|Add7~6_combout\,
	datad => VCC,
	cin => \inst6|LessThan1~11_cout\,
	cout => \inst6|LessThan1~13_cout\);

-- Location: LCCOMB_X28_Y18_N14
\inst6|LessThan1~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan1~15_cout\ = CARRY((\inst6|Add7~8_combout\ & ((!\inst6|LessThan1~13_cout\) # (!\inst1|pixel_column\(7)))) # (!\inst6|Add7~8_combout\ & (!\inst1|pixel_column\(7) & !\inst6|LessThan1~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add7~8_combout\,
	datab => \inst1|pixel_column\(7),
	datad => VCC,
	cin => \inst6|LessThan1~13_cout\,
	cout => \inst6|LessThan1~15_cout\);

-- Location: LCCOMB_X28_Y18_N16
\inst6|LessThan1~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan1~17_cout\ = CARRY((\inst1|pixel_column\(8) & ((!\inst6|LessThan1~15_cout\) # (!\inst6|Add7~10_combout\))) # (!\inst1|pixel_column\(8) & (!\inst6|Add7~10_combout\ & !\inst6|LessThan1~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(8),
	datab => \inst6|Add7~10_combout\,
	datad => VCC,
	cin => \inst6|LessThan1~15_cout\,
	cout => \inst6|LessThan1~17_cout\);

-- Location: LCCOMB_X28_Y18_N18
\inst6|LessThan1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan1~18_combout\ = (\inst1|pixel_column\(9) & ((\inst6|LessThan1~17_cout\) # (!\inst6|Add7~12_combout\))) # (!\inst1|pixel_column\(9) & (\inst6|LessThan1~17_cout\ & !\inst6|Add7~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pixel_column\(9),
	datad => \inst6|Add7~12_combout\,
	cin => \inst6|LessThan1~17_cout\,
	combout => \inst6|LessThan1~18_combout\);

-- Location: LCCOMB_X27_Y18_N24
\inst6|pipe_top~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe_top~0_combout\ = (\inst6|LessThan3~18_combout\ & (!\inst6|LessThan0~18_combout\ & ((!\inst6|LessThan1~18_combout\)))) # (!\inst6|LessThan3~18_combout\ & (((!\inst6|LessThan0~18_combout\ & !\inst6|LessThan1~18_combout\)) # 
-- (!\inst6|LessThan4~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan3~18_combout\,
	datab => \inst6|LessThan0~18_combout\,
	datac => \inst6|LessThan4~18_combout\,
	datad => \inst6|LessThan1~18_combout\,
	combout => \inst6|pipe_top~0_combout\);

-- Location: LCCOMB_X28_Y14_N12
\inst6|Add5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add5~1_cout\ = CARRY(\inst6|pipe1_x_pos\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe1_x_pos\(0),
	datad => VCC,
	cout => \inst6|Add5~1_cout\);

-- Location: LCCOMB_X28_Y14_N14
\inst6|Add5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add5~2_combout\ = (\inst6|pipe5_x_pos\(1) & (\inst6|Add5~1_cout\ & VCC)) # (!\inst6|pipe5_x_pos\(1) & (!\inst6|Add5~1_cout\))
-- \inst6|Add5~3\ = CARRY((!\inst6|pipe5_x_pos\(1) & !\inst6|Add5~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe5_x_pos\(1),
	datad => VCC,
	cin => \inst6|Add5~1_cout\,
	combout => \inst6|Add5~2_combout\,
	cout => \inst6|Add5~3\);

-- Location: FF_X28_Y14_N15
\inst6|pipe5_x_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add5~2_combout\,
	ena => \inst6|pipe2_x_pos[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe5_x_pos\(1));

-- Location: LCCOMB_X28_Y14_N16
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

-- Location: FF_X28_Y14_N17
\inst6|pipe5_x_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add5~4_combout\,
	ena => \inst6|pipe2_x_pos[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe5_x_pos\(2));

-- Location: LCCOMB_X28_Y14_N18
\inst6|Add5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add5~6_combout\ = (\inst6|pipe5_x_pos\(3) & (\inst6|Add5~5\ & VCC)) # (!\inst6|pipe5_x_pos\(3) & (!\inst6|Add5~5\))
-- \inst6|Add5~7\ = CARRY((!\inst6|pipe5_x_pos\(3) & !\inst6|Add5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe5_x_pos\(3),
	datad => VCC,
	cin => \inst6|Add5~5\,
	combout => \inst6|Add5~6_combout\,
	cout => \inst6|Add5~7\);

-- Location: FF_X28_Y14_N19
\inst6|pipe5_x_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add5~6_combout\,
	ena => \inst6|pipe2_x_pos[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe5_x_pos\(3));

-- Location: LCCOMB_X28_Y14_N20
\inst6|Add5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add5~8_combout\ = (\inst6|pipe5_x_pos\(4) & ((GND) # (!\inst6|Add5~7\))) # (!\inst6|pipe5_x_pos\(4) & (\inst6|Add5~7\ $ (GND)))
-- \inst6|Add5~9\ = CARRY((\inst6|pipe5_x_pos\(4)) # (!\inst6|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe5_x_pos\(4),
	datad => VCC,
	cin => \inst6|Add5~7\,
	combout => \inst6|Add5~8_combout\,
	cout => \inst6|Add5~9\);

-- Location: FF_X28_Y14_N21
\inst6|pipe5_x_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add5~8_combout\,
	ena => \inst6|pipe2_x_pos[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe5_x_pos\(4));

-- Location: LCCOMB_X28_Y14_N22
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

-- Location: LCCOMB_X28_Y14_N0
\inst6|pipe5_x_pos[5]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe5_x_pos[5]~2_combout\ = !\inst6|Add5~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Add5~10_combout\,
	combout => \inst6|pipe5_x_pos[5]~2_combout\);

-- Location: FF_X28_Y14_N1
\inst6|pipe5_x_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|pipe5_x_pos[5]~2_combout\,
	ena => \inst6|pipe2_x_pos[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe5_x_pos\(5));

-- Location: FF_X28_Y14_N25
\inst6|pipe5_x_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add5~12_combout\,
	ena => \inst6|pipe2_x_pos[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe5_x_pos\(6));

-- Location: LCCOMB_X27_Y14_N18
\inst6|Add11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add11~0_combout\ = (\inst6|pipe5_x_pos\(2) & (\inst6|pipe5_x_pos\(3) $ (VCC))) # (!\inst6|pipe5_x_pos\(2) & (\inst6|pipe5_x_pos\(3) & VCC))
-- \inst6|Add11~1\ = CARRY((\inst6|pipe5_x_pos\(2) & \inst6|pipe5_x_pos\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe5_x_pos\(2),
	datab => \inst6|pipe5_x_pos\(3),
	datad => VCC,
	combout => \inst6|Add11~0_combout\,
	cout => \inst6|Add11~1\);

-- Location: LCCOMB_X27_Y14_N20
\inst6|Add11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add11~2_combout\ = (\inst6|pipe5_x_pos\(4) & (\inst6|Add11~1\ & VCC)) # (!\inst6|pipe5_x_pos\(4) & (!\inst6|Add11~1\))
-- \inst6|Add11~3\ = CARRY((!\inst6|pipe5_x_pos\(4) & !\inst6|Add11~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe5_x_pos\(4),
	datad => VCC,
	cin => \inst6|Add11~1\,
	combout => \inst6|Add11~2_combout\,
	cout => \inst6|Add11~3\);

-- Location: LCCOMB_X27_Y14_N22
\inst6|Add11~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add11~4_combout\ = (\inst6|pipe5_x_pos\(5) & (!\inst6|Add11~3\ & VCC)) # (!\inst6|pipe5_x_pos\(5) & (\inst6|Add11~3\ $ (GND)))
-- \inst6|Add11~5\ = CARRY((!\inst6|pipe5_x_pos\(5) & !\inst6|Add11~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe5_x_pos\(5),
	datad => VCC,
	cin => \inst6|Add11~3\,
	combout => \inst6|Add11~4_combout\,
	cout => \inst6|Add11~5\);

-- Location: LCCOMB_X27_Y14_N28
\inst6|Add11~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add11~10_combout\ = (\inst6|pipe5_x_pos\(8) & ((\inst6|Add11~9\) # (GND))) # (!\inst6|pipe5_x_pos\(8) & (!\inst6|Add11~9\))
-- \inst6|Add11~11\ = CARRY((\inst6|pipe5_x_pos\(8)) # (!\inst6|Add11~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe5_x_pos\(8),
	datad => VCC,
	cin => \inst6|Add11~9\,
	combout => \inst6|Add11~10_combout\,
	cout => \inst6|Add11~11\);

-- Location: LCCOMB_X27_Y14_N30
\inst6|Add11~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add11~12_combout\ = \inst6|pipe5_x_pos\(9) $ (!\inst6|Add11~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe5_x_pos\(9),
	cin => \inst6|Add11~11\,
	combout => \inst6|Add11~12_combout\);

-- Location: LCCOMB_X26_Y14_N4
\inst6|LessThan10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan10~1_cout\ = CARRY((\inst1|pixel_column\(0) & !\inst6|pipe1_x_pos\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(0),
	datab => \inst6|pipe1_x_pos\(0),
	datad => VCC,
	cout => \inst6|LessThan10~1_cout\);

-- Location: LCCOMB_X26_Y14_N6
\inst6|LessThan10~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan10~3_cout\ = CARRY((\inst6|pipe5_x_pos\(1) & ((!\inst6|LessThan10~1_cout\) # (!\inst1|pixel_column\(1)))) # (!\inst6|pipe5_x_pos\(1) & (!\inst1|pixel_column\(1) & !\inst6|LessThan10~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe5_x_pos\(1),
	datab => \inst1|pixel_column\(1),
	datad => VCC,
	cin => \inst6|LessThan10~1_cout\,
	cout => \inst6|LessThan10~3_cout\);

-- Location: LCCOMB_X26_Y14_N8
\inst6|LessThan10~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan10~5_cout\ = CARRY((\inst1|pixel_column\(2) & ((\inst6|pipe5_x_pos\(2)) # (!\inst6|LessThan10~3_cout\))) # (!\inst1|pixel_column\(2) & (\inst6|pipe5_x_pos\(2) & !\inst6|LessThan10~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(2),
	datab => \inst6|pipe5_x_pos\(2),
	datad => VCC,
	cin => \inst6|LessThan10~3_cout\,
	cout => \inst6|LessThan10~5_cout\);

-- Location: LCCOMB_X26_Y14_N10
\inst6|LessThan10~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan10~7_cout\ = CARRY((\inst1|pixel_column\(3) & (\inst6|Add11~0_combout\ & !\inst6|LessThan10~5_cout\)) # (!\inst1|pixel_column\(3) & ((\inst6|Add11~0_combout\) # (!\inst6|LessThan10~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(3),
	datab => \inst6|Add11~0_combout\,
	datad => VCC,
	cin => \inst6|LessThan10~5_cout\,
	cout => \inst6|LessThan10~7_cout\);

-- Location: LCCOMB_X26_Y14_N12
\inst6|LessThan10~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan10~9_cout\ = CARRY((\inst1|pixel_column\(4) & ((!\inst6|LessThan10~7_cout\) # (!\inst6|Add11~2_combout\))) # (!\inst1|pixel_column\(4) & (!\inst6|Add11~2_combout\ & !\inst6|LessThan10~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(4),
	datab => \inst6|Add11~2_combout\,
	datad => VCC,
	cin => \inst6|LessThan10~7_cout\,
	cout => \inst6|LessThan10~9_cout\);

-- Location: LCCOMB_X26_Y14_N14
\inst6|LessThan10~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan10~11_cout\ = CARRY((\inst1|pixel_column\(5) & (\inst6|Add11~4_combout\ & !\inst6|LessThan10~9_cout\)) # (!\inst1|pixel_column\(5) & ((\inst6|Add11~4_combout\) # (!\inst6|LessThan10~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(5),
	datab => \inst6|Add11~4_combout\,
	datad => VCC,
	cin => \inst6|LessThan10~9_cout\,
	cout => \inst6|LessThan10~11_cout\);

-- Location: LCCOMB_X26_Y14_N16
\inst6|LessThan10~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan10~13_cout\ = CARRY((\inst6|Add11~6_combout\ & (\inst1|pixel_column\(6) & !\inst6|LessThan10~11_cout\)) # (!\inst6|Add11~6_combout\ & ((\inst1|pixel_column\(6)) # (!\inst6|LessThan10~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add11~6_combout\,
	datab => \inst1|pixel_column\(6),
	datad => VCC,
	cin => \inst6|LessThan10~11_cout\,
	cout => \inst6|LessThan10~13_cout\);

-- Location: LCCOMB_X26_Y14_N18
\inst6|LessThan10~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan10~15_cout\ = CARRY((\inst6|Add11~8_combout\ & ((!\inst6|LessThan10~13_cout\) # (!\inst1|pixel_column\(7)))) # (!\inst6|Add11~8_combout\ & (!\inst1|pixel_column\(7) & !\inst6|LessThan10~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add11~8_combout\,
	datab => \inst1|pixel_column\(7),
	datad => VCC,
	cin => \inst6|LessThan10~13_cout\,
	cout => \inst6|LessThan10~15_cout\);

-- Location: LCCOMB_X26_Y14_N20
\inst6|LessThan10~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan10~17_cout\ = CARRY((\inst1|pixel_column\(8) & ((!\inst6|LessThan10~15_cout\) # (!\inst6|Add11~10_combout\))) # (!\inst1|pixel_column\(8) & (!\inst6|Add11~10_combout\ & !\inst6|LessThan10~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(8),
	datab => \inst6|Add11~10_combout\,
	datad => VCC,
	cin => \inst6|LessThan10~15_cout\,
	cout => \inst6|LessThan10~17_cout\);

-- Location: LCCOMB_X26_Y14_N22
\inst6|LessThan10~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan10~18_combout\ = (\inst6|Add11~12_combout\ & (\inst6|LessThan10~17_cout\ & \inst1|pixel_column\(9))) # (!\inst6|Add11~12_combout\ & ((\inst6|LessThan10~17_cout\) # (\inst1|pixel_column\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add11~12_combout\,
	datad => \inst1|pixel_column\(9),
	cin => \inst6|LessThan10~17_cout\,
	combout => \inst6|LessThan10~18_combout\);

-- Location: LCCOMB_X24_Y17_N6
\inst6|Add3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add3~1_cout\ = CARRY(\inst6|pipe1_x_pos\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe1_x_pos\(0),
	datad => VCC,
	cout => \inst6|Add3~1_cout\);

-- Location: LCCOMB_X24_Y17_N8
\inst6|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add3~2_combout\ = (\inst6|pipe3_x_pos\(1) & (\inst6|Add3~1_cout\ & VCC)) # (!\inst6|pipe3_x_pos\(1) & (!\inst6|Add3~1_cout\))
-- \inst6|Add3~3\ = CARRY((!\inst6|pipe3_x_pos\(1) & !\inst6|Add3~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe3_x_pos\(1),
	datad => VCC,
	cin => \inst6|Add3~1_cout\,
	combout => \inst6|Add3~2_combout\,
	cout => \inst6|Add3~3\);

-- Location: FF_X24_Y17_N9
\inst6|pipe3_x_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add3~2_combout\,
	ena => \inst6|pipe2_x_pos[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe3_x_pos\(1));

-- Location: LCCOMB_X24_Y17_N10
\inst6|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add3~4_combout\ = (\inst6|pipe3_x_pos\(2) & ((GND) # (!\inst6|Add3~3\))) # (!\inst6|pipe3_x_pos\(2) & (\inst6|Add3~3\ $ (GND)))
-- \inst6|Add3~5\ = CARRY((\inst6|pipe3_x_pos\(2)) # (!\inst6|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe3_x_pos\(2),
	datad => VCC,
	cin => \inst6|Add3~3\,
	combout => \inst6|Add3~4_combout\,
	cout => \inst6|Add3~5\);

-- Location: LCCOMB_X24_Y17_N12
\inst6|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add3~6_combout\ = (\inst6|pipe3_x_pos\(3) & (\inst6|Add3~5\ & VCC)) # (!\inst6|pipe3_x_pos\(3) & (!\inst6|Add3~5\))
-- \inst6|Add3~7\ = CARRY((!\inst6|pipe3_x_pos\(3) & !\inst6|Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe3_x_pos\(3),
	datad => VCC,
	cin => \inst6|Add3~5\,
	combout => \inst6|Add3~6_combout\,
	cout => \inst6|Add3~7\);

-- Location: LCCOMB_X24_Y17_N14
\inst6|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add3~8_combout\ = (\inst6|pipe3_x_pos\(4) & (\inst6|Add3~7\ $ (GND))) # (!\inst6|pipe3_x_pos\(4) & ((GND) # (!\inst6|Add3~7\)))
-- \inst6|Add3~9\ = CARRY((!\inst6|Add3~7\) # (!\inst6|pipe3_x_pos\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe3_x_pos\(4),
	datad => VCC,
	cin => \inst6|Add3~7\,
	combout => \inst6|Add3~8_combout\,
	cout => \inst6|Add3~9\);

-- Location: LCCOMB_X24_Y17_N0
\inst6|pipe3_x_pos[4]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe3_x_pos[4]~0_combout\ = !\inst6|Add3~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Add3~8_combout\,
	combout => \inst6|pipe3_x_pos[4]~0_combout\);

-- Location: FF_X24_Y17_N1
\inst6|pipe3_x_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|pipe3_x_pos[4]~0_combout\,
	ena => \inst6|pipe2_x_pos[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe3_x_pos\(4));

-- Location: LCCOMB_X24_Y17_N16
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

-- Location: FF_X24_Y17_N17
\inst6|pipe3_x_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add3~10_combout\,
	ena => \inst6|pipe2_x_pos[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe3_x_pos\(5));

-- Location: LCCOMB_X24_Y17_N18
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

-- Location: FF_X24_Y17_N19
\inst6|pipe3_x_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add3~12_combout\,
	ena => \inst6|pipe2_x_pos[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe3_x_pos\(6));

-- Location: LCCOMB_X24_Y17_N20
\inst6|Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add3~14_combout\ = (\inst6|pipe3_x_pos\(7) & (\inst6|Add3~13\ & VCC)) # (!\inst6|pipe3_x_pos\(7) & (!\inst6|Add3~13\))
-- \inst6|Add3~15\ = CARRY((!\inst6|pipe3_x_pos\(7) & !\inst6|Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe3_x_pos\(7),
	datad => VCC,
	cin => \inst6|Add3~13\,
	combout => \inst6|Add3~14_combout\,
	cout => \inst6|Add3~15\);

-- Location: FF_X24_Y17_N21
\inst6|pipe3_x_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add3~14_combout\,
	ena => \inst6|pipe2_x_pos[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe3_x_pos\(7));

-- Location: LCCOMB_X24_Y17_N22
\inst6|Add3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add3~16_combout\ = (\inst6|pipe3_x_pos\(8) & ((GND) # (!\inst6|Add3~15\))) # (!\inst6|pipe3_x_pos\(8) & (\inst6|Add3~15\ $ (GND)))
-- \inst6|Add3~17\ = CARRY((\inst6|pipe3_x_pos\(8)) # (!\inst6|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe3_x_pos\(8),
	datad => VCC,
	cin => \inst6|Add3~15\,
	combout => \inst6|Add3~16_combout\,
	cout => \inst6|Add3~17\);

-- Location: LCCOMB_X24_Y17_N24
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

-- Location: FF_X24_Y17_N25
\inst6|pipe3_x_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add3~18_combout\,
	ena => \inst6|pipe2_x_pos[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe3_x_pos\(9));

-- Location: FF_X24_Y17_N23
\inst6|pipe3_x_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add3~16_combout\,
	ena => \inst6|pipe2_x_pos[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe3_x_pos\(8));

-- Location: FF_X24_Y17_N13
\inst6|pipe3_x_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add3~6_combout\,
	ena => \inst6|pipe2_x_pos[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe3_x_pos\(3));

-- Location: FF_X24_Y17_N11
\inst6|pipe3_x_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add3~4_combout\,
	ena => \inst6|pipe2_x_pos[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe3_x_pos\(2));

-- Location: LCCOMB_X26_Y17_N6
\inst6|LessThan5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan5~1_cout\ = CARRY((!\inst1|pixel_column\(0) & \inst6|pipe1_x_pos\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(0),
	datab => \inst6|pipe1_x_pos\(0),
	datad => VCC,
	cout => \inst6|LessThan5~1_cout\);

-- Location: LCCOMB_X26_Y17_N8
\inst6|LessThan5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan5~3_cout\ = CARRY((\inst6|pipe3_x_pos\(1) & (\inst1|pixel_column\(1) & !\inst6|LessThan5~1_cout\)) # (!\inst6|pipe3_x_pos\(1) & ((\inst1|pixel_column\(1)) # (!\inst6|LessThan5~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe3_x_pos\(1),
	datab => \inst1|pixel_column\(1),
	datad => VCC,
	cin => \inst6|LessThan5~1_cout\,
	cout => \inst6|LessThan5~3_cout\);

-- Location: LCCOMB_X26_Y17_N10
\inst6|LessThan5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan5~5_cout\ = CARRY((\inst6|Add6~0_combout\ & (\inst6|pipe3_x_pos\(2) & !\inst6|LessThan5~3_cout\)) # (!\inst6|Add6~0_combout\ & ((\inst6|pipe3_x_pos\(2)) # (!\inst6|LessThan5~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add6~0_combout\,
	datab => \inst6|pipe3_x_pos\(2),
	datad => VCC,
	cin => \inst6|LessThan5~3_cout\,
	cout => \inst6|LessThan5~5_cout\);

-- Location: LCCOMB_X26_Y17_N12
\inst6|LessThan5~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan5~7_cout\ = CARRY((\inst6|Add6~2_combout\ & ((!\inst6|LessThan5~5_cout\) # (!\inst6|pipe3_x_pos\(3)))) # (!\inst6|Add6~2_combout\ & (!\inst6|pipe3_x_pos\(3) & !\inst6|LessThan5~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add6~2_combout\,
	datab => \inst6|pipe3_x_pos\(3),
	datad => VCC,
	cin => \inst6|LessThan5~5_cout\,
	cout => \inst6|LessThan5~7_cout\);

-- Location: LCCOMB_X26_Y17_N14
\inst6|LessThan5~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan5~9_cout\ = CARRY((\inst6|Add6~4_combout\ & (!\inst6|pipe3_x_pos\(4) & !\inst6|LessThan5~7_cout\)) # (!\inst6|Add6~4_combout\ & ((!\inst6|LessThan5~7_cout\) # (!\inst6|pipe3_x_pos\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add6~4_combout\,
	datab => \inst6|pipe3_x_pos\(4),
	datad => VCC,
	cin => \inst6|LessThan5~7_cout\,
	cout => \inst6|LessThan5~9_cout\);

-- Location: LCCOMB_X26_Y17_N16
\inst6|LessThan5~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan5~11_cout\ = CARRY((\inst6|pipe3_x_pos\(5) & (\inst6|Add6~6_combout\ & !\inst6|LessThan5~9_cout\)) # (!\inst6|pipe3_x_pos\(5) & ((\inst6|Add6~6_combout\) # (!\inst6|LessThan5~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe3_x_pos\(5),
	datab => \inst6|Add6~6_combout\,
	datad => VCC,
	cin => \inst6|LessThan5~9_cout\,
	cout => \inst6|LessThan5~11_cout\);

-- Location: LCCOMB_X26_Y17_N18
\inst6|LessThan5~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan5~13_cout\ = CARRY((\inst6|Add6~8_combout\ & (\inst6|pipe3_x_pos\(6) & !\inst6|LessThan5~11_cout\)) # (!\inst6|Add6~8_combout\ & ((\inst6|pipe3_x_pos\(6)) # (!\inst6|LessThan5~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add6~8_combout\,
	datab => \inst6|pipe3_x_pos\(6),
	datad => VCC,
	cin => \inst6|LessThan5~11_cout\,
	cout => \inst6|LessThan5~13_cout\);

-- Location: LCCOMB_X26_Y17_N20
\inst6|LessThan5~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan5~15_cout\ = CARRY((\inst6|pipe3_x_pos\(7) & (\inst6|Add6~10_combout\ & !\inst6|LessThan5~13_cout\)) # (!\inst6|pipe3_x_pos\(7) & ((\inst6|Add6~10_combout\) # (!\inst6|LessThan5~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe3_x_pos\(7),
	datab => \inst6|Add6~10_combout\,
	datad => VCC,
	cin => \inst6|LessThan5~13_cout\,
	cout => \inst6|LessThan5~15_cout\);

-- Location: LCCOMB_X26_Y17_N22
\inst6|LessThan5~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan5~17_cout\ = CARRY((\inst6|Add6~12_combout\ & (\inst6|pipe3_x_pos\(8) & !\inst6|LessThan5~15_cout\)) # (!\inst6|Add6~12_combout\ & ((\inst6|pipe3_x_pos\(8)) # (!\inst6|LessThan5~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add6~12_combout\,
	datab => \inst6|pipe3_x_pos\(8),
	datad => VCC,
	cin => \inst6|LessThan5~15_cout\,
	cout => \inst6|LessThan5~17_cout\);

-- Location: LCCOMB_X26_Y17_N24
\inst6|LessThan5~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan5~18_combout\ = (\inst6|pipe3_x_pos\(9) & ((\inst6|LessThan5~17_cout\) # (!\inst6|Add6~14_combout\))) # (!\inst6|pipe3_x_pos\(9) & (\inst6|LessThan5~17_cout\ & !\inst6|Add6~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe3_x_pos\(9),
	datad => \inst6|Add6~14_combout\,
	cin => \inst6|LessThan5~17_cout\,
	combout => \inst6|LessThan5~18_combout\);

-- Location: LCCOMB_X29_Y14_N10
\inst6|Add4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add4~1_cout\ = CARRY(\inst6|pipe1_x_pos\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe1_x_pos\(0),
	datad => VCC,
	cout => \inst6|Add4~1_cout\);

-- Location: LCCOMB_X29_Y14_N12
\inst6|Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add4~2_combout\ = (\inst6|pipe4_x_pos\(1) & (\inst6|Add4~1_cout\ & VCC)) # (!\inst6|pipe4_x_pos\(1) & (!\inst6|Add4~1_cout\))
-- \inst6|Add4~3\ = CARRY((!\inst6|pipe4_x_pos\(1) & !\inst6|Add4~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe4_x_pos\(1),
	datad => VCC,
	cin => \inst6|Add4~1_cout\,
	combout => \inst6|Add4~2_combout\,
	cout => \inst6|Add4~3\);

-- Location: LCCOMB_X29_Y14_N14
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

-- Location: FF_X29_Y14_N15
\inst6|pipe4_x_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add4~4_combout\,
	ena => \inst6|pipe2_x_pos[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe4_x_pos\(2));

-- Location: LCCOMB_X29_Y14_N16
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

-- Location: LCCOMB_X29_Y14_N18
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

-- Location: LCCOMB_X29_Y14_N8
\inst6|pipe4_x_pos[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe4_x_pos[4]~2_combout\ = !\inst6|Add4~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|Add4~8_combout\,
	combout => \inst6|pipe4_x_pos[4]~2_combout\);

-- Location: FF_X29_Y14_N9
\inst6|pipe4_x_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|pipe4_x_pos[4]~2_combout\,
	ena => \inst6|pipe2_x_pos[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe4_x_pos\(4));

-- Location: LCCOMB_X29_Y14_N20
\inst6|Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add4~10_combout\ = (\inst6|pipe4_x_pos\(5) & (\inst6|Add4~9\ & VCC)) # (!\inst6|pipe4_x_pos\(5) & (!\inst6|Add4~9\))
-- \inst6|Add4~11\ = CARRY((!\inst6|pipe4_x_pos\(5) & !\inst6|Add4~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe4_x_pos\(5),
	datad => VCC,
	cin => \inst6|Add4~9\,
	combout => \inst6|Add4~10_combout\,
	cout => \inst6|Add4~11\);

-- Location: FF_X29_Y14_N21
\inst6|pipe4_x_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add4~10_combout\,
	ena => \inst6|pipe2_x_pos[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe4_x_pos\(5));

-- Location: LCCOMB_X29_Y14_N24
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

-- Location: LCCOMB_X29_Y14_N4
\inst6|pipe4_x_pos[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe4_x_pos[7]~0_combout\ = !\inst6|Add4~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|Add4~14_combout\,
	combout => \inst6|pipe4_x_pos[7]~0_combout\);

-- Location: FF_X29_Y14_N5
\inst6|pipe4_x_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|pipe4_x_pos[7]~0_combout\,
	ena => \inst6|pipe2_x_pos[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe4_x_pos\(7));

-- Location: LCCOMB_X29_Y14_N26
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

-- Location: LCCOMB_X29_Y14_N28
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

-- Location: FF_X29_Y14_N29
\inst6|pipe4_x_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add4~18_combout\,
	ena => \inst6|pipe2_x_pos[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe4_x_pos\(9));

-- Location: LCCOMB_X28_Y16_N4
\inst6|LessThan7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan7~1_cout\ = CARRY((!\inst1|pixel_column\(0) & \inst6|pipe1_x_pos\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(0),
	datab => \inst6|pipe1_x_pos\(0),
	datad => VCC,
	cout => \inst6|LessThan7~1_cout\);

-- Location: LCCOMB_X28_Y16_N6
\inst6|LessThan7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan7~3_cout\ = CARRY((\inst6|pipe4_x_pos\(1) & (\inst1|pixel_column\(1) & !\inst6|LessThan7~1_cout\)) # (!\inst6|pipe4_x_pos\(1) & ((\inst1|pixel_column\(1)) # (!\inst6|LessThan7~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe4_x_pos\(1),
	datab => \inst1|pixel_column\(1),
	datad => VCC,
	cin => \inst6|LessThan7~1_cout\,
	cout => \inst6|LessThan7~3_cout\);

-- Location: LCCOMB_X28_Y16_N8
\inst6|LessThan7~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan7~5_cout\ = CARRY((\inst6|Add6~0_combout\ & (\inst6|pipe4_x_pos\(2) & !\inst6|LessThan7~3_cout\)) # (!\inst6|Add6~0_combout\ & ((\inst6|pipe4_x_pos\(2)) # (!\inst6|LessThan7~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add6~0_combout\,
	datab => \inst6|pipe4_x_pos\(2),
	datad => VCC,
	cin => \inst6|LessThan7~3_cout\,
	cout => \inst6|LessThan7~5_cout\);

-- Location: LCCOMB_X28_Y16_N10
\inst6|LessThan7~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan7~7_cout\ = CARRY((\inst6|pipe4_x_pos\(3) & ((\inst6|Add6~2_combout\) # (!\inst6|LessThan7~5_cout\))) # (!\inst6|pipe4_x_pos\(3) & (\inst6|Add6~2_combout\ & !\inst6|LessThan7~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe4_x_pos\(3),
	datab => \inst6|Add6~2_combout\,
	datad => VCC,
	cin => \inst6|LessThan7~5_cout\,
	cout => \inst6|LessThan7~7_cout\);

-- Location: LCCOMB_X28_Y16_N12
\inst6|LessThan7~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan7~9_cout\ = CARRY((\inst6|Add6~4_combout\ & (!\inst6|pipe4_x_pos\(4) & !\inst6|LessThan7~7_cout\)) # (!\inst6|Add6~4_combout\ & ((!\inst6|LessThan7~7_cout\) # (!\inst6|pipe4_x_pos\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add6~4_combout\,
	datab => \inst6|pipe4_x_pos\(4),
	datad => VCC,
	cin => \inst6|LessThan7~7_cout\,
	cout => \inst6|LessThan7~9_cout\);

-- Location: LCCOMB_X28_Y16_N14
\inst6|LessThan7~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan7~11_cout\ = CARRY((\inst6|Add6~6_combout\ & ((!\inst6|LessThan7~9_cout\) # (!\inst6|pipe4_x_pos\(5)))) # (!\inst6|Add6~6_combout\ & (!\inst6|pipe4_x_pos\(5) & !\inst6|LessThan7~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add6~6_combout\,
	datab => \inst6|pipe4_x_pos\(5),
	datad => VCC,
	cin => \inst6|LessThan7~9_cout\,
	cout => \inst6|LessThan7~11_cout\);

-- Location: LCCOMB_X28_Y16_N16
\inst6|LessThan7~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan7~13_cout\ = CARRY((\inst6|pipe4_x_pos\(6) & (!\inst6|Add6~8_combout\ & !\inst6|LessThan7~11_cout\)) # (!\inst6|pipe4_x_pos\(6) & ((!\inst6|LessThan7~11_cout\) # (!\inst6|Add6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe4_x_pos\(6),
	datab => \inst6|Add6~8_combout\,
	datad => VCC,
	cin => \inst6|LessThan7~11_cout\,
	cout => \inst6|LessThan7~13_cout\);

-- Location: LCCOMB_X28_Y16_N18
\inst6|LessThan7~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan7~15_cout\ = CARRY((\inst6|pipe4_x_pos\(7) & ((\inst6|Add6~10_combout\) # (!\inst6|LessThan7~13_cout\))) # (!\inst6|pipe4_x_pos\(7) & (\inst6|Add6~10_combout\ & !\inst6|LessThan7~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe4_x_pos\(7),
	datab => \inst6|Add6~10_combout\,
	datad => VCC,
	cin => \inst6|LessThan7~13_cout\,
	cout => \inst6|LessThan7~15_cout\);

-- Location: LCCOMB_X28_Y16_N20
\inst6|LessThan7~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan7~17_cout\ = CARRY((\inst6|pipe4_x_pos\(8) & ((!\inst6|LessThan7~15_cout\) # (!\inst6|Add6~12_combout\))) # (!\inst6|pipe4_x_pos\(8) & (!\inst6|Add6~12_combout\ & !\inst6|LessThan7~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe4_x_pos\(8),
	datab => \inst6|Add6~12_combout\,
	datad => VCC,
	cin => \inst6|LessThan7~15_cout\,
	cout => \inst6|LessThan7~17_cout\);

-- Location: LCCOMB_X28_Y16_N22
\inst6|LessThan7~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan7~18_combout\ = (\inst6|Add6~14_combout\ & (\inst6|pipe4_x_pos\(9) & \inst6|LessThan7~17_cout\)) # (!\inst6|Add6~14_combout\ & ((\inst6|pipe4_x_pos\(9)) # (\inst6|LessThan7~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add6~14_combout\,
	datab => \inst6|pipe4_x_pos\(9),
	cin => \inst6|LessThan7~17_cout\,
	combout => \inst6|LessThan7~18_combout\);

-- Location: FF_X29_Y14_N27
\inst6|pipe4_x_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add4~16_combout\,
	ena => \inst6|pipe2_x_pos[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe4_x_pos\(8));

-- Location: LCCOMB_X29_Y14_N6
\inst6|pipe4_x_pos[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe4_x_pos[3]~3_combout\ = !\inst6|Add4~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|Add4~6_combout\,
	combout => \inst6|pipe4_x_pos[3]~3_combout\);

-- Location: FF_X29_Y14_N7
\inst6|pipe4_x_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|pipe4_x_pos[3]~3_combout\,
	ena => \inst6|pipe2_x_pos[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe4_x_pos\(3));

-- Location: LCCOMB_X29_Y15_N14
\inst6|Add10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add10~0_combout\ = (\inst6|pipe4_x_pos\(2) & (\inst6|pipe4_x_pos\(3) $ (GND))) # (!\inst6|pipe4_x_pos\(2) & (!\inst6|pipe4_x_pos\(3) & VCC))
-- \inst6|Add10~1\ = CARRY((\inst6|pipe4_x_pos\(2) & !\inst6|pipe4_x_pos\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe4_x_pos\(2),
	datab => \inst6|pipe4_x_pos\(3),
	datad => VCC,
	combout => \inst6|Add10~0_combout\,
	cout => \inst6|Add10~1\);

-- Location: LCCOMB_X29_Y15_N16
\inst6|Add10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add10~2_combout\ = (\inst6|pipe4_x_pos\(4) & (!\inst6|Add10~1\)) # (!\inst6|pipe4_x_pos\(4) & (\inst6|Add10~1\ & VCC))
-- \inst6|Add10~3\ = CARRY((\inst6|pipe4_x_pos\(4) & !\inst6|Add10~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe4_x_pos\(4),
	datad => VCC,
	cin => \inst6|Add10~1\,
	combout => \inst6|Add10~2_combout\,
	cout => \inst6|Add10~3\);

-- Location: LCCOMB_X29_Y15_N18
\inst6|Add10~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add10~4_combout\ = (\inst6|pipe4_x_pos\(5) & (\inst6|Add10~3\ $ (GND))) # (!\inst6|pipe4_x_pos\(5) & (!\inst6|Add10~3\ & VCC))
-- \inst6|Add10~5\ = CARRY((\inst6|pipe4_x_pos\(5) & !\inst6|Add10~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pipe4_x_pos\(5),
	datad => VCC,
	cin => \inst6|Add10~3\,
	combout => \inst6|Add10~4_combout\,
	cout => \inst6|Add10~5\);

-- Location: LCCOMB_X29_Y15_N22
\inst6|Add10~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add10~8_combout\ = (\inst6|pipe4_x_pos\(7) & (!\inst6|Add10~7\ & VCC)) # (!\inst6|pipe4_x_pos\(7) & (\inst6|Add10~7\ $ (GND)))
-- \inst6|Add10~9\ = CARRY((!\inst6|pipe4_x_pos\(7) & !\inst6|Add10~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe4_x_pos\(7),
	datad => VCC,
	cin => \inst6|Add10~7\,
	combout => \inst6|Add10~8_combout\,
	cout => \inst6|Add10~9\);

-- Location: FF_X29_Y14_N13
\inst6|pipe4_x_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|Add4~2_combout\,
	ena => \inst6|pipe2_x_pos[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pipe4_x_pos\(1));

-- Location: LCCOMB_X30_Y15_N10
\inst6|LessThan8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan8~1_cout\ = CARRY((!\inst6|pipe1_x_pos\(0) & \inst1|pixel_column\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe1_x_pos\(0),
	datab => \inst1|pixel_column\(0),
	datad => VCC,
	cout => \inst6|LessThan8~1_cout\);

-- Location: LCCOMB_X30_Y15_N12
\inst6|LessThan8~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan8~3_cout\ = CARRY((\inst1|pixel_column\(1) & (\inst6|pipe4_x_pos\(1) & !\inst6|LessThan8~1_cout\)) # (!\inst1|pixel_column\(1) & ((\inst6|pipe4_x_pos\(1)) # (!\inst6|LessThan8~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(1),
	datab => \inst6|pipe4_x_pos\(1),
	datad => VCC,
	cin => \inst6|LessThan8~1_cout\,
	cout => \inst6|LessThan8~3_cout\);

-- Location: LCCOMB_X30_Y15_N14
\inst6|LessThan8~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan8~5_cout\ = CARRY((\inst1|pixel_column\(2) & ((\inst6|pipe4_x_pos\(2)) # (!\inst6|LessThan8~3_cout\))) # (!\inst1|pixel_column\(2) & (\inst6|pipe4_x_pos\(2) & !\inst6|LessThan8~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(2),
	datab => \inst6|pipe4_x_pos\(2),
	datad => VCC,
	cin => \inst6|LessThan8~3_cout\,
	cout => \inst6|LessThan8~5_cout\);

-- Location: LCCOMB_X30_Y15_N16
\inst6|LessThan8~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan8~7_cout\ = CARRY((\inst1|pixel_column\(3) & (\inst6|Add10~0_combout\ & !\inst6|LessThan8~5_cout\)) # (!\inst1|pixel_column\(3) & ((\inst6|Add10~0_combout\) # (!\inst6|LessThan8~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(3),
	datab => \inst6|Add10~0_combout\,
	datad => VCC,
	cin => \inst6|LessThan8~5_cout\,
	cout => \inst6|LessThan8~7_cout\);

-- Location: LCCOMB_X30_Y15_N18
\inst6|LessThan8~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan8~9_cout\ = CARRY((\inst1|pixel_column\(4) & ((!\inst6|LessThan8~7_cout\) # (!\inst6|Add10~2_combout\))) # (!\inst1|pixel_column\(4) & (!\inst6|Add10~2_combout\ & !\inst6|LessThan8~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(4),
	datab => \inst6|Add10~2_combout\,
	datad => VCC,
	cin => \inst6|LessThan8~7_cout\,
	cout => \inst6|LessThan8~9_cout\);

-- Location: LCCOMB_X30_Y15_N20
\inst6|LessThan8~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan8~11_cout\ = CARRY((\inst1|pixel_column\(5) & (\inst6|Add10~4_combout\ & !\inst6|LessThan8~9_cout\)) # (!\inst1|pixel_column\(5) & ((\inst6|Add10~4_combout\) # (!\inst6|LessThan8~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(5),
	datab => \inst6|Add10~4_combout\,
	datad => VCC,
	cin => \inst6|LessThan8~9_cout\,
	cout => \inst6|LessThan8~11_cout\);

-- Location: LCCOMB_X30_Y15_N22
\inst6|LessThan8~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan8~13_cout\ = CARRY((\inst6|Add10~6_combout\ & (\inst1|pixel_column\(6) & !\inst6|LessThan8~11_cout\)) # (!\inst6|Add10~6_combout\ & ((\inst1|pixel_column\(6)) # (!\inst6|LessThan8~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add10~6_combout\,
	datab => \inst1|pixel_column\(6),
	datad => VCC,
	cin => \inst6|LessThan8~11_cout\,
	cout => \inst6|LessThan8~13_cout\);

-- Location: LCCOMB_X30_Y15_N24
\inst6|LessThan8~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan8~15_cout\ = CARRY((\inst1|pixel_column\(7) & (\inst6|Add10~8_combout\ & !\inst6|LessThan8~13_cout\)) # (!\inst1|pixel_column\(7) & ((\inst6|Add10~8_combout\) # (!\inst6|LessThan8~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(7),
	datab => \inst6|Add10~8_combout\,
	datad => VCC,
	cin => \inst6|LessThan8~13_cout\,
	cout => \inst6|LessThan8~15_cout\);

-- Location: LCCOMB_X30_Y15_N26
\inst6|LessThan8~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan8~17_cout\ = CARRY((\inst1|pixel_column\(8) & ((!\inst6|LessThan8~15_cout\) # (!\inst6|Add10~10_combout\))) # (!\inst1|pixel_column\(8) & (!\inst6|Add10~10_combout\ & !\inst6|LessThan8~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(8),
	datab => \inst6|Add10~10_combout\,
	datad => VCC,
	cin => \inst6|LessThan8~15_cout\,
	cout => \inst6|LessThan8~17_cout\);

-- Location: LCCOMB_X30_Y15_N28
\inst6|LessThan8~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan8~18_combout\ = (\inst6|Add10~12_combout\ & (\inst6|LessThan8~17_cout\ & \inst1|pixel_column\(9))) # (!\inst6|Add10~12_combout\ & ((\inst6|LessThan8~17_cout\) # (\inst1|pixel_column\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add10~12_combout\,
	datad => \inst1|pixel_column\(9),
	cin => \inst6|LessThan8~17_cout\,
	combout => \inst6|LessThan8~18_combout\);

-- Location: LCCOMB_X28_Y16_N24
\inst6|pipe_top~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe_top~1_combout\ = (\inst6|LessThan6~18_combout\ & (((!\inst6|LessThan7~18_combout\ & !\inst6|LessThan8~18_combout\)))) # (!\inst6|LessThan6~18_combout\ & (((!\inst6|LessThan7~18_combout\ & !\inst6|LessThan8~18_combout\)) # 
-- (!\inst6|LessThan5~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan6~18_combout\,
	datab => \inst6|LessThan5~18_combout\,
	datac => \inst6|LessThan7~18_combout\,
	datad => \inst6|LessThan8~18_combout\,
	combout => \inst6|pipe_top~1_combout\);

-- Location: LCCOMB_X28_Y18_N28
\inst6|pipe_top~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe_top~2_combout\ = (\inst6|pipe_top~0_combout\) # ((\inst6|pipe_top~1_combout\) # ((!\inst6|LessThan9~18_combout\ & !\inst6|LessThan10~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan9~18_combout\,
	datab => \inst6|pipe_top~0_combout\,
	datac => \inst6|LessThan10~18_combout\,
	datad => \inst6|pipe_top~1_combout\,
	combout => \inst6|pipe_top~2_combout\);

-- Location: LCCOMB_X29_Y17_N12
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

-- Location: LCCOMB_X29_Y17_N24
\inst6|pipe_bottom~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|pipe_bottom~2_combout\ = (\inst6|pipe_top~2_combout\ & ((\inst6|Add12~12_combout\) # ((\inst6|Add12~10_combout\ & \inst6|pipe_bottom~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add12~10_combout\,
	datab => \inst6|pipe_bottom~1_combout\,
	datac => \inst6|pipe_top~2_combout\,
	datad => \inst6|Add12~12_combout\,
	combout => \inst6|pipe_bottom~2_combout\);

-- Location: LCCOMB_X26_Y17_N28
\inst1|green_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|green_out~1_combout\ = (\inst1|green_out~0_combout\ & ((\inst1|pixel_column\(3) & ((\inst11|display|Mux0~1_combout\))) # (!\inst1|pixel_column\(3) & (\inst11|display|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|green_out~0_combout\,
	datab => \inst11|display|Mux0~3_combout\,
	datac => \inst11|display|Mux0~1_combout\,
	datad => \inst1|pixel_column\(3),
	combout => \inst1|green_out~1_combout\);

-- Location: LCCOMB_X30_Y17_N12
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

-- Location: LCCOMB_X30_Y17_N30
\inst5|bird_on~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_on~6_combout\ = (!\inst5|Add3~10_combout\ & (!\inst5|Add0~12_combout\ & ((\inst5|Add0~10_combout\) # (\inst5|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~10_combout\,
	datab => \inst5|Add0~8_combout\,
	datac => \inst5|Add3~10_combout\,
	datad => \inst5|Add0~12_combout\,
	combout => \inst5|bird_on~6_combout\);

-- Location: LCCOMB_X30_Y15_N2
\inst5|bird_on~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_on~1_combout\ = (\inst5|Add2~1_combout\ & (!\inst1|pixel_row\(8) & ((!\inst1|pixel_column\(0)) # (!\inst5|LessThan1~0_combout\)))) # (!\inst5|Add2~1_combout\ & (((!\inst1|pixel_column\(0))) # (!\inst5|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add2~1_combout\,
	datab => \inst5|LessThan1~0_combout\,
	datac => \inst1|pixel_row\(8),
	datad => \inst1|pixel_column\(0),
	combout => \inst5|bird_on~1_combout\);

-- Location: LCCOMB_X30_Y17_N28
\inst1|green_out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|green_out~2_combout\ = (\inst5|LessThan1~2_combout\) # (((!\inst5|bird_on~1_combout\) # (!\inst5|bird_on~6_combout\)) # (!\inst5|bird_on~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|LessThan1~2_combout\,
	datab => \inst5|bird_on~3_combout\,
	datac => \inst5|bird_on~6_combout\,
	datad => \inst5|bird_on~1_combout\,
	combout => \inst1|green_out~2_combout\);

-- Location: LCCOMB_X30_Y17_N20
\inst5|bird_on~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|bird_on~5_combout\ = (!\inst5|LessThan3~16_combout\ & ((\inst5|Add0~6_combout\) # ((\inst5|Add0~4_combout\) # (\inst5|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~6_combout\,
	datab => \inst5|Add0~4_combout\,
	datac => \inst5|LessThan3~16_combout\,
	datad => \inst5|Add0~10_combout\,
	combout => \inst5|bird_on~5_combout\);

-- Location: LCCOMB_X30_Y17_N18
\inst1|green_out~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|green_out~3_combout\ = (\inst1|green_out~0_combout\ & ((\inst5|LessThan2~18_combout\) # ((\inst1|green_out~2_combout\) # (!\inst5|bird_on~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|LessThan2~18_combout\,
	datab => \inst1|green_out~2_combout\,
	datac => \inst1|green_out~0_combout\,
	datad => \inst5|bird_on~5_combout\,
	combout => \inst1|green_out~3_combout\);

-- Location: LCCOMB_X30_Y17_N22
\inst1|green_out~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|green_out~4_combout\ = (\inst1|green_out~1_combout\) # ((!\inst6|pipe_top~5_combout\ & (!\inst6|pipe_bottom~2_combout\ & \inst1|green_out~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pipe_top~5_combout\,
	datab => \inst6|pipe_bottom~2_combout\,
	datac => \inst1|green_out~1_combout\,
	datad => \inst1|green_out~3_combout\,
	combout => \inst1|green_out~4_combout\);

-- Location: FF_X30_Y17_N25
\inst1|green_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|green_out~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|green_out~q\);

-- Location: FF_X30_Y17_N23
\inst1|blue_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|green_out~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|blue_out~q\);

-- Location: LCCOMB_X29_Y16_N0
\inst1|process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~3_combout\ = (\inst1|h_count\(2)) # ((!\inst1|h_count\(5) & (\inst1|h_count\(1) & \inst1|h_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(5),
	datab => \inst1|h_count\(2),
	datac => \inst1|h_count\(1),
	datad => \inst1|h_count\(0),
	combout => \inst1|process_0~3_combout\);

-- Location: LCCOMB_X29_Y16_N24
\inst1|process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~4_combout\ = (\inst1|h_count\(4) & ((\inst1|h_count\(3)) # (\inst1|process_0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|h_count\(4),
	datac => \inst1|h_count\(3),
	datad => \inst1|process_0~3_combout\,
	combout => \inst1|process_0~4_combout\);

-- Location: LCCOMB_X29_Y16_N26
\inst1|process_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~5_combout\ = ((\inst1|h_count\(5) & (\inst1|h_count\(6) & \inst1|process_0~4_combout\)) # (!\inst1|h_count\(5) & (!\inst1|h_count\(6) & !\inst1|process_0~4_combout\))) # (!\inst1|process_0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~2_combout\,
	datab => \inst1|h_count\(5),
	datac => \inst1|h_count\(6),
	datad => \inst1|process_0~4_combout\,
	combout => \inst1|process_0~5_combout\);

-- Location: FF_X29_Y16_N27
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

-- Location: LCCOMB_X40_Y16_N12
\inst1|horiz_sync_out~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|horiz_sync_out~feeder_combout\ = \inst1|horiz_sync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|horiz_sync~q\,
	combout => \inst1|horiz_sync_out~feeder_combout\);

-- Location: FF_X40_Y16_N13
\inst1|horiz_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|horiz_sync_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|horiz_sync_out~q\);
END structure;


