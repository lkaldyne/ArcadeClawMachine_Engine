-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Standard Edition"

-- DATE "07/10/2018 14:31:55"

-- 
-- Device: Altera 10M08SAE144C8G Package EQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LogicalStep_Lab4_top IS
    PORT (
	clkin_50 : IN std_logic;
	rst_n : IN std_logic;
	pb : IN std_logic_vector(3 DOWNTO 0);
	sw : IN std_logic_vector(7 DOWNTO 0);
	leds : BUFFER std_logic_vector(7 DOWNTO 0);
	seg7_data : BUFFER std_logic_vector(6 DOWNTO 0);
	seg7_char1 : BUFFER std_logic;
	seg7_char2 : BUFFER std_logic
	);
END LogicalStep_Lab4_top;

-- Design Ports Information
-- leds[0]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[1]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[2]	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[3]	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[4]	=>  Location: PIN_10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[5]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[6]	=>  Location: PIN_38,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[7]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[0]	=>  Location: PIN_123,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[1]	=>  Location: PIN_138,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[2]	=>  Location: PIN_140,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[3]	=>  Location: PIN_105,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[4]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[5]	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[6]	=>  Location: PIN_136,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_char1	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_char2	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- pb[2]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb[3]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb[1]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- rst_n	=>  Location: PIN_32,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb[0]	=>  Location: PIN_46,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- clkin_50	=>  Location: PIN_29,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


ARCHITECTURE structure OF LogicalStep_Lab4_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clkin_50 : std_logic;
SIGNAL ww_rst_n : std_logic;
SIGNAL ww_pb : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sw : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_leds : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_seg7_data : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg7_char1 : std_logic;
SIGNAL ww_seg7_char2 : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \INST10|out_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clkin_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bin_counter[23]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \seg7_data[1]~output_o\ : std_logic;
SIGNAL \seg7_data[5]~output_o\ : std_logic;
SIGNAL \seg7_data[6]~output_o\ : std_logic;
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \leds[2]~output_o\ : std_logic;
SIGNAL \leds[3]~output_o\ : std_logic;
SIGNAL \leds[4]~output_o\ : std_logic;
SIGNAL \leds[5]~output_o\ : std_logic;
SIGNAL \leds[6]~output_o\ : std_logic;
SIGNAL \leds[7]~output_o\ : std_logic;
SIGNAL \seg7_data[0]~output_o\ : std_logic;
SIGNAL \seg7_data[2]~output_o\ : std_logic;
SIGNAL \seg7_data[3]~output_o\ : std_logic;
SIGNAL \seg7_data[4]~output_o\ : std_logic;
SIGNAL \seg7_char1~output_o\ : std_logic;
SIGNAL \seg7_char2~output_o\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \clkin_50~input_o\ : std_logic;
SIGNAL \clkin_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \bin_counter[0]~69_combout\ : std_logic;
SIGNAL \bin_counter[1]~23_combout\ : std_logic;
SIGNAL \bin_counter[1]~24\ : std_logic;
SIGNAL \bin_counter[2]~25_combout\ : std_logic;
SIGNAL \bin_counter[2]~26\ : std_logic;
SIGNAL \bin_counter[3]~27_combout\ : std_logic;
SIGNAL \bin_counter[3]~28\ : std_logic;
SIGNAL \bin_counter[4]~29_combout\ : std_logic;
SIGNAL \bin_counter[4]~30\ : std_logic;
SIGNAL \bin_counter[5]~31_combout\ : std_logic;
SIGNAL \bin_counter[5]~32\ : std_logic;
SIGNAL \bin_counter[6]~33_combout\ : std_logic;
SIGNAL \bin_counter[6]~34\ : std_logic;
SIGNAL \bin_counter[7]~35_combout\ : std_logic;
SIGNAL \bin_counter[7]~36\ : std_logic;
SIGNAL \bin_counter[8]~37_combout\ : std_logic;
SIGNAL \bin_counter[8]~38\ : std_logic;
SIGNAL \bin_counter[9]~39_combout\ : std_logic;
SIGNAL \bin_counter[9]~40\ : std_logic;
SIGNAL \bin_counter[10]~41_combout\ : std_logic;
SIGNAL \bin_counter[10]~42\ : std_logic;
SIGNAL \bin_counter[11]~43_combout\ : std_logic;
SIGNAL \bin_counter[11]~44\ : std_logic;
SIGNAL \bin_counter[12]~45_combout\ : std_logic;
SIGNAL \bin_counter[12]~46\ : std_logic;
SIGNAL \bin_counter[13]~47_combout\ : std_logic;
SIGNAL \bin_counter[13]~48\ : std_logic;
SIGNAL \bin_counter[14]~49_combout\ : std_logic;
SIGNAL \bin_counter[14]~50\ : std_logic;
SIGNAL \bin_counter[15]~51_combout\ : std_logic;
SIGNAL \bin_counter[15]~52\ : std_logic;
SIGNAL \bin_counter[16]~53_combout\ : std_logic;
SIGNAL \bin_counter[16]~54\ : std_logic;
SIGNAL \bin_counter[17]~55_combout\ : std_logic;
SIGNAL \bin_counter[17]~56\ : std_logic;
SIGNAL \bin_counter[18]~57_combout\ : std_logic;
SIGNAL \bin_counter[18]~58\ : std_logic;
SIGNAL \bin_counter[19]~59_combout\ : std_logic;
SIGNAL \bin_counter[19]~60\ : std_logic;
SIGNAL \bin_counter[20]~61_combout\ : std_logic;
SIGNAL \bin_counter[20]~62\ : std_logic;
SIGNAL \bin_counter[21]~63_combout\ : std_logic;
SIGNAL \bin_counter[21]~64\ : std_logic;
SIGNAL \bin_counter[22]~65_combout\ : std_logic;
SIGNAL \bin_counter[22]~66\ : std_logic;
SIGNAL \bin_counter[23]~67_combout\ : std_logic;
SIGNAL \bin_counter[23]~clkctrl_outclk\ : std_logic;
SIGNAL \INST3|ud_bin_counter[0]~7_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \pb[3]~input_o\ : std_logic;
SIGNAL \pb[2]~input_o\ : std_logic;
SIGNAL \pb[1]~input_o\ : std_logic;
SIGNAL \INST1|current_state.arrival~q\ : std_logic;
SIGNAL \INST1|current_state.motion~feeder_combout\ : std_logic;
SIGNAL \INST1|current_state.motion~q\ : std_logic;
SIGNAL \INST1|Selector0~2_combout\ : std_logic;
SIGNAL \INST1|Selector0~0_combout\ : std_logic;
SIGNAL \INST1|Selector10~0_combout\ : std_logic;
SIGNAL \INST1|current_state.error~q\ : std_logic;
SIGNAL \INST1|Selector0~1_combout\ : std_logic;
SIGNAL \INST2|ud_bin_counter[0]~8_combout\ : std_logic;
SIGNAL \INST1|Selector5~0_combout\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \INST2|ud_bin_counter[3]~0_combout\ : std_logic;
SIGNAL \INST2|ud_bin_counter[3]~1_combout\ : std_logic;
SIGNAL \INST2|ud_bin_counter[3]~2_combout\ : std_logic;
SIGNAL \INST2|ud_bin_counter[3]~3_combout\ : std_logic;
SIGNAL \INST2|ud_bin_counter[2]~4_combout\ : std_logic;
SIGNAL \INST2|ud_bin_counter[3]~5_combout\ : std_logic;
SIGNAL \INST1|Selector7~0_combout\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \INST1|Selector7~2_combout\ : std_logic;
SIGNAL \INST1|Selector7~1_combout\ : std_logic;
SIGNAL \INST1|Selector7~3_combout\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \INST4|INST5|output_data~0_combout\ : std_logic;
SIGNAL \INST1|Selector7~4_combout\ : std_logic;
SIGNAL \INST1|Selector7~5_combout\ : std_logic;
SIGNAL \INST2|ud_bin_counter~6_combout\ : std_logic;
SIGNAL \INST4|INST4|output_data~0_combout\ : std_logic;
SIGNAL \INST1|Transition_Section~0_combout\ : std_logic;
SIGNAL \INST1|Selector0~3_combout\ : std_logic;
SIGNAL \INST1|current_state.stationary~q\ : std_logic;
SIGNAL \INST12|Selector1~0_combout\ : std_logic;
SIGNAL \INST12|Selector1~1_combout\ : std_logic;
SIGNAL \INST12|current_state.S1~q\ : std_logic;
SIGNAL \INST12|Selector3~0_combout\ : std_logic;
SIGNAL \INST12|current_state.S3~q\ : std_logic;
SIGNAL \INST12|Selector5~0_combout\ : std_logic;
SIGNAL \INST12|current_state.S5~q\ : std_logic;
SIGNAL \INST12|Selector7~0_combout\ : std_logic;
SIGNAL \INST12|current_state.S7~q\ : std_logic;
SIGNAL \INST12|next_state.s9~0_combout\ : std_logic;
SIGNAL \INST12|current_state.s9~q\ : std_logic;
SIGNAL \INST12|Selector8~0_combout\ : std_logic;
SIGNAL \INST12|current_state.s8~q\ : std_logic;
SIGNAL \INST12|Selector6~0_combout\ : std_logic;
SIGNAL \INST12|current_state.S6~q\ : std_logic;
SIGNAL \INST12|Selector4~0_combout\ : std_logic;
SIGNAL \INST12|current_state.S4~q\ : std_logic;
SIGNAL \INST12|Selector2~0_combout\ : std_logic;
SIGNAL \INST12|current_state.S2~q\ : std_logic;
SIGNAL \INST12|Selector0~0_combout\ : std_logic;
SIGNAL \INST12|current_state.S0~q\ : std_logic;
SIGNAL \INST1|Selector4~0_combout\ : std_logic;
SIGNAL \INST1|Selector6~0_combout\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \INST3|ud_bin_counter[3]~2_combout\ : std_logic;
SIGNAL \INST3|ud_bin_counter[3]~3_combout\ : std_logic;
SIGNAL \INST3|ud_bin_counter[3]~0_combout\ : std_logic;
SIGNAL \INST3|ud_bin_counter[3]~1_combout\ : std_logic;
SIGNAL \INST3|ud_bin_counter[2]~4_combout\ : std_logic;
SIGNAL \INST3|ud_bin_counter[3]~5_combout\ : std_logic;
SIGNAL \INST1|Selector8~0_combout\ : std_logic;
SIGNAL \INST1|Selector8~2_combout\ : std_logic;
SIGNAL \INST1|Selector8~1_combout\ : std_logic;
SIGNAL \INST5|INST5|output_data~0_combout\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \INST1|Selector8~3_combout\ : std_logic;
SIGNAL \INST1|Selector8~4_combout\ : std_logic;
SIGNAL \INST1|Selector8~5_combout\ : std_logic;
SIGNAL \INST3|ud_bin_counter~6_combout\ : std_logic;
SIGNAL \INST5|INST4|output_data~0_combout\ : std_logic;
SIGNAL \INST1|Transition_Section~1_combout\ : std_logic;
SIGNAL \INST1|Selector1~0_combout\ : std_logic;
SIGNAL \INST1|Selector4~1_combout\ : std_logic;
SIGNAL \INST6|mux_out[2]~2_combout\ : std_logic;
SIGNAL \INST6|mux_out[1]~1_combout\ : std_logic;
SIGNAL \INST6|mux_out[3]~3_combout\ : std_logic;
SIGNAL \INST6|mux_out[0]~0_combout\ : std_logic;
SIGNAL \INST9|Mux5~0_combout\ : std_logic;
SIGNAL \INST7|mux_out[2]~2_combout\ : std_logic;
SIGNAL \INST7|mux_out[3]~3_combout\ : std_logic;
SIGNAL \INST7|mux_out[0]~0_combout\ : std_logic;
SIGNAL \INST7|mux_out[1]~1_combout\ : std_logic;
SIGNAL \INST8|Mux5~0_combout\ : std_logic;
SIGNAL \INST10|out_clk~combout\ : std_logic;
SIGNAL \INST10|out_clk~clkctrl_outclk\ : std_logic;
SIGNAL \INST11|clk_proc:COUNT[0]~0_combout\ : std_logic;
SIGNAL \INST11|clk_proc:COUNT[0]~q\ : std_logic;
SIGNAL \INST11|clk_proc:COUNT[1]~1_combout\ : std_logic;
SIGNAL \INST11|clk_proc:COUNT[1]~q\ : std_logic;
SIGNAL \INST11|clk_proc:COUNT[1]~2\ : std_logic;
SIGNAL \INST11|clk_proc:COUNT[2]~1_combout\ : std_logic;
SIGNAL \INST11|clk_proc:COUNT[2]~q\ : std_logic;
SIGNAL \INST11|clk_proc:COUNT[2]~2\ : std_logic;
SIGNAL \INST11|clk_proc:COUNT[3]~1_combout\ : std_logic;
SIGNAL \INST11|clk_proc:COUNT[3]~q\ : std_logic;
SIGNAL \INST11|clk_proc:COUNT[3]~2\ : std_logic;
SIGNAL \INST11|clk_proc:COUNT[4]~1_combout\ : std_logic;
SIGNAL \INST11|clk_proc:COUNT[4]~q\ : std_logic;
SIGNAL \INST11|clk_proc:COUNT[4]~2\ : std_logic;
SIGNAL \INST11|clk_proc:COUNT[5]~1_combout\ : std_logic;
SIGNAL \INST11|clk_proc:COUNT[5]~q\ : std_logic;
SIGNAL \INST11|clk_proc:COUNT[5]~2\ : std_logic;
SIGNAL \INST11|clk_proc:COUNT[6]~1_combout\ : std_logic;
SIGNAL \INST11|clk_proc:COUNT[6]~q\ : std_logic;
SIGNAL \INST11|clk_proc:COUNT[6]~2\ : std_logic;
SIGNAL \INST11|clk_proc:COUNT[7]~1_combout\ : std_logic;
SIGNAL \INST11|clk_proc:COUNT[7]~q\ : std_logic;
SIGNAL \INST11|clk_proc:COUNT[7]~2\ : std_logic;
SIGNAL \INST11|clk_proc:COUNT[8]~1_combout\ : std_logic;
SIGNAL \INST11|clk_proc:COUNT[8]~q\ : std_logic;
SIGNAL \INST11|clk_proc:COUNT[8]~2\ : std_logic;
SIGNAL \INST11|clk_proc:COUNT[9]~1_combout\ : std_logic;
SIGNAL \INST11|clk_proc:COUNT[9]~q\ : std_logic;
SIGNAL \INST11|clk_proc:COUNT[9]~2\ : std_logic;
SIGNAL \INST11|clk_proc:COUNT[10]~1_combout\ : std_logic;
SIGNAL \INST11|clk_proc:COUNT[10]~q\ : std_logic;
SIGNAL \INST11|DOUT_TEMP[1]~0_combout\ : std_logic;
SIGNAL \INST9|Mux1~0_combout\ : std_logic;
SIGNAL \INST8|Mux1~0_combout\ : std_logic;
SIGNAL \INST11|DOUT_TEMP[5]~1_combout\ : std_logic;
SIGNAL \INST8|Mux0~0_combout\ : std_logic;
SIGNAL \INST9|Mux0~0_combout\ : std_logic;
SIGNAL \INST11|DOUT_TEMP[6]~2_combout\ : std_logic;
SIGNAL \pb[0]~input_o\ : std_logic;
SIGNAL \INST14|current_state~0_combout\ : std_logic;
SIGNAL \INST14|current_state~q\ : std_logic;
SIGNAL \INST12|WideOr5~0_combout\ : std_logic;
SIGNAL \INST13|sreg~3_combout\ : std_logic;
SIGNAL \INST12|shift_en~0_combout\ : std_logic;
SIGNAL \INST13|sreg~2_combout\ : std_logic;
SIGNAL \INST13|sreg~1_combout\ : std_logic;
SIGNAL \INST13|sreg~0_combout\ : std_logic;
SIGNAL \INST8|Mux6~0_combout\ : std_logic;
SIGNAL \INST9|Mux6~0_combout\ : std_logic;
SIGNAL \INST11|DOUT[0]~0_combout\ : std_logic;
SIGNAL \INST9|Mux4~0_combout\ : std_logic;
SIGNAL \INST8|Mux4~0_combout\ : std_logic;
SIGNAL \INST11|DOUT[2]~2_combout\ : std_logic;
SIGNAL \INST8|Mux3~0_combout\ : std_logic;
SIGNAL \INST9|Mux3~0_combout\ : std_logic;
SIGNAL \INST11|DOUT[3]~3_combout\ : std_logic;
SIGNAL \INST8|Mux2~0_combout\ : std_logic;
SIGNAL \INST9|Mux2~0_combout\ : std_logic;
SIGNAL \INST11|DOUT[4]~4_combout\ : std_logic;
SIGNAL \INST3|ud_bin_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL bin_counter : std_logic_vector(25 DOWNTO 0);
SIGNAL \INST13|sreg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \INST2|ud_bin_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \INST11|ALT_INV_clk_proc:COUNT[10]~q\ : std_logic;
SIGNAL \INST11|ALT_INV_DOUT[4]~4_combout\ : std_logic;
SIGNAL \INST11|ALT_INV_DOUT[3]~3_combout\ : std_logic;
SIGNAL \INST11|ALT_INV_DOUT[2]~2_combout\ : std_logic;
SIGNAL \INST11|ALT_INV_DOUT[0]~0_combout\ : std_logic;

BEGIN

ww_clkin_50 <= clkin_50;
ww_rst_n <= rst_n;
ww_pb <= pb;
ww_sw <= sw;
leds <= ww_leds;
seg7_data <= ww_seg7_data;
seg7_char1 <= ww_seg7_char1;
seg7_char2 <= ww_seg7_char2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\INST10|out_clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \INST10|out_clk~combout\);

\clkin_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkin_50~input_o\);

\bin_counter[23]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & bin_counter(23));
\INST11|ALT_INV_clk_proc:COUNT[10]~q\ <= NOT \INST11|clk_proc:COUNT[10]~q\;
\INST11|ALT_INV_DOUT[4]~4_combout\ <= NOT \INST11|DOUT[4]~4_combout\;
\INST11|ALT_INV_DOUT[3]~3_combout\ <= NOT \INST11|DOUT[3]~3_combout\;
\INST11|ALT_INV_DOUT[2]~2_combout\ <= NOT \INST11|DOUT[2]~2_combout\;
\INST11|ALT_INV_DOUT[0]~0_combout\ <= NOT \INST11|DOUT[0]~0_combout\;

-- Location: LCCOMB_X11_Y24_N20
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X3_Y10_N23
\seg7_data[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \INST11|DOUT_TEMP[1]~0_combout\,
	devoe => ww_devoe,
	o => \seg7_data[1]~output_o\);

-- Location: IOOBUF_X6_Y10_N30
\seg7_data[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \INST11|DOUT_TEMP[5]~1_combout\,
	devoe => ww_devoe,
	o => \seg7_data[5]~output_o\);

-- Location: IOOBUF_X3_Y10_N16
\seg7_data[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \INST11|DOUT_TEMP[6]~2_combout\,
	devoe => ww_devoe,
	o => \seg7_data[6]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\leds[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST1|Selector10~0_combout\,
	devoe => ww_devoe,
	o => \leds[0]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\leds[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leds[1]~output_o\);

-- Location: IOOBUF_X10_Y17_N2
\leds[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leds[2]~output_o\);

-- Location: IOOBUF_X10_Y20_N23
\leds[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST14|current_state~q\,
	devoe => ww_devoe,
	o => \leds[3]~output_o\);

-- Location: IOOBUF_X10_Y21_N23
\leds[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST13|sreg\(0),
	devoe => ww_devoe,
	o => \leds[4]~output_o\);

-- Location: IOOBUF_X10_Y22_N23
\leds[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST13|sreg\(1),
	devoe => ww_devoe,
	o => \leds[5]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\leds[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST13|sreg\(2),
	devoe => ww_devoe,
	o => \leds[6]~output_o\);

-- Location: IOOBUF_X6_Y0_N23
\leds[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST13|sreg\(3),
	devoe => ww_devoe,
	o => \leds[7]~output_o\);

-- Location: IOOBUF_X13_Y25_N30
\seg7_data[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST11|ALT_INV_DOUT[0]~0_combout\,
	devoe => ww_devoe,
	o => \seg7_data[0]~output_o\);

-- Location: IOOBUF_X1_Y10_N9
\seg7_data[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST11|ALT_INV_DOUT[2]~2_combout\,
	devoe => ww_devoe,
	o => \seg7_data[2]~output_o\);

-- Location: IOOBUF_X31_Y22_N23
\seg7_data[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST11|ALT_INV_DOUT[3]~3_combout\,
	devoe => ww_devoe,
	o => \seg7_data[3]~output_o\);

-- Location: IOOBUF_X15_Y25_N23
\seg7_data[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST11|ALT_INV_DOUT[4]~4_combout\,
	devoe => ww_devoe,
	o => \seg7_data[4]~output_o\);

-- Location: IOOBUF_X13_Y25_N9
\seg7_char1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST11|clk_proc:COUNT[10]~q\,
	devoe => ww_devoe,
	o => \seg7_char1~output_o\);

-- Location: IOOBUF_X15_Y25_N16
\seg7_char2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST11|ALT_INV_clk_proc:COUNT[10]~q\,
	devoe => ww_devoe,
	o => \seg7_char2~output_o\);

-- Location: IOIBUF_X3_Y0_N8
\sw[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

-- Location: IOIBUF_X10_Y19_N15
\sw[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\clkin_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clkin_50,
	o => \clkin_50~input_o\);

-- Location: CLKCTRL_G4
\clkin_50~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkin_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkin_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y8_N4
\bin_counter[0]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[0]~69_combout\ = !bin_counter(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => bin_counter(0),
	combout => \bin_counter[0]~69_combout\);

-- Location: FF_X1_Y8_N5
\bin_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[0]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(0));

-- Location: LCCOMB_X1_Y8_N10
\bin_counter[1]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[1]~23_combout\ = (bin_counter(1) & (bin_counter(0) $ (VCC))) # (!bin_counter(1) & (bin_counter(0) & VCC))
-- \bin_counter[1]~24\ = CARRY((bin_counter(1) & bin_counter(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(1),
	datab => bin_counter(0),
	datad => VCC,
	combout => \bin_counter[1]~23_combout\,
	cout => \bin_counter[1]~24\);

-- Location: FF_X1_Y8_N11
\bin_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[1]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(1));

-- Location: LCCOMB_X1_Y8_N12
\bin_counter[2]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[2]~25_combout\ = (bin_counter(2) & (!\bin_counter[1]~24\)) # (!bin_counter(2) & ((\bin_counter[1]~24\) # (GND)))
-- \bin_counter[2]~26\ = CARRY((!\bin_counter[1]~24\) # (!bin_counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(2),
	datad => VCC,
	cin => \bin_counter[1]~24\,
	combout => \bin_counter[2]~25_combout\,
	cout => \bin_counter[2]~26\);

-- Location: FF_X1_Y8_N13
\bin_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[2]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(2));

-- Location: LCCOMB_X1_Y8_N14
\bin_counter[3]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[3]~27_combout\ = (bin_counter(3) & (\bin_counter[2]~26\ $ (GND))) # (!bin_counter(3) & (!\bin_counter[2]~26\ & VCC))
-- \bin_counter[3]~28\ = CARRY((bin_counter(3) & !\bin_counter[2]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(3),
	datad => VCC,
	cin => \bin_counter[2]~26\,
	combout => \bin_counter[3]~27_combout\,
	cout => \bin_counter[3]~28\);

-- Location: FF_X1_Y8_N15
\bin_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[3]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(3));

-- Location: LCCOMB_X1_Y8_N16
\bin_counter[4]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[4]~29_combout\ = (bin_counter(4) & (!\bin_counter[3]~28\)) # (!bin_counter(4) & ((\bin_counter[3]~28\) # (GND)))
-- \bin_counter[4]~30\ = CARRY((!\bin_counter[3]~28\) # (!bin_counter(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(4),
	datad => VCC,
	cin => \bin_counter[3]~28\,
	combout => \bin_counter[4]~29_combout\,
	cout => \bin_counter[4]~30\);

-- Location: FF_X1_Y8_N17
\bin_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[4]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(4));

-- Location: LCCOMB_X1_Y8_N18
\bin_counter[5]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[5]~31_combout\ = (bin_counter(5) & (\bin_counter[4]~30\ $ (GND))) # (!bin_counter(5) & (!\bin_counter[4]~30\ & VCC))
-- \bin_counter[5]~32\ = CARRY((bin_counter(5) & !\bin_counter[4]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(5),
	datad => VCC,
	cin => \bin_counter[4]~30\,
	combout => \bin_counter[5]~31_combout\,
	cout => \bin_counter[5]~32\);

-- Location: FF_X1_Y8_N19
\bin_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[5]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(5));

-- Location: LCCOMB_X1_Y8_N20
\bin_counter[6]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[6]~33_combout\ = (bin_counter(6) & (!\bin_counter[5]~32\)) # (!bin_counter(6) & ((\bin_counter[5]~32\) # (GND)))
-- \bin_counter[6]~34\ = CARRY((!\bin_counter[5]~32\) # (!bin_counter(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(6),
	datad => VCC,
	cin => \bin_counter[5]~32\,
	combout => \bin_counter[6]~33_combout\,
	cout => \bin_counter[6]~34\);

-- Location: FF_X1_Y8_N21
\bin_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(6));

-- Location: LCCOMB_X1_Y8_N22
\bin_counter[7]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[7]~35_combout\ = (bin_counter(7) & (\bin_counter[6]~34\ $ (GND))) # (!bin_counter(7) & (!\bin_counter[6]~34\ & VCC))
-- \bin_counter[7]~36\ = CARRY((bin_counter(7) & !\bin_counter[6]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(7),
	datad => VCC,
	cin => \bin_counter[6]~34\,
	combout => \bin_counter[7]~35_combout\,
	cout => \bin_counter[7]~36\);

-- Location: FF_X1_Y8_N23
\bin_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[7]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(7));

-- Location: LCCOMB_X1_Y8_N24
\bin_counter[8]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[8]~37_combout\ = (bin_counter(8) & (!\bin_counter[7]~36\)) # (!bin_counter(8) & ((\bin_counter[7]~36\) # (GND)))
-- \bin_counter[8]~38\ = CARRY((!\bin_counter[7]~36\) # (!bin_counter(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(8),
	datad => VCC,
	cin => \bin_counter[7]~36\,
	combout => \bin_counter[8]~37_combout\,
	cout => \bin_counter[8]~38\);

-- Location: FF_X1_Y8_N25
\bin_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[8]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(8));

-- Location: LCCOMB_X1_Y8_N26
\bin_counter[9]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[9]~39_combout\ = (bin_counter(9) & (\bin_counter[8]~38\ $ (GND))) # (!bin_counter(9) & (!\bin_counter[8]~38\ & VCC))
-- \bin_counter[9]~40\ = CARRY((bin_counter(9) & !\bin_counter[8]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(9),
	datad => VCC,
	cin => \bin_counter[8]~38\,
	combout => \bin_counter[9]~39_combout\,
	cout => \bin_counter[9]~40\);

-- Location: FF_X1_Y8_N27
\bin_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[9]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(9));

-- Location: LCCOMB_X1_Y8_N28
\bin_counter[10]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[10]~41_combout\ = (bin_counter(10) & (!\bin_counter[9]~40\)) # (!bin_counter(10) & ((\bin_counter[9]~40\) # (GND)))
-- \bin_counter[10]~42\ = CARRY((!\bin_counter[9]~40\) # (!bin_counter(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(10),
	datad => VCC,
	cin => \bin_counter[9]~40\,
	combout => \bin_counter[10]~41_combout\,
	cout => \bin_counter[10]~42\);

-- Location: FF_X1_Y8_N29
\bin_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[10]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(10));

-- Location: LCCOMB_X1_Y8_N30
\bin_counter[11]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[11]~43_combout\ = (bin_counter(11) & (\bin_counter[10]~42\ $ (GND))) # (!bin_counter(11) & (!\bin_counter[10]~42\ & VCC))
-- \bin_counter[11]~44\ = CARRY((bin_counter(11) & !\bin_counter[10]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(11),
	datad => VCC,
	cin => \bin_counter[10]~42\,
	combout => \bin_counter[11]~43_combout\,
	cout => \bin_counter[11]~44\);

-- Location: FF_X1_Y8_N31
\bin_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[11]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(11));

-- Location: LCCOMB_X1_Y7_N0
\bin_counter[12]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[12]~45_combout\ = (bin_counter(12) & (!\bin_counter[11]~44\)) # (!bin_counter(12) & ((\bin_counter[11]~44\) # (GND)))
-- \bin_counter[12]~46\ = CARRY((!\bin_counter[11]~44\) # (!bin_counter(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(12),
	datad => VCC,
	cin => \bin_counter[11]~44\,
	combout => \bin_counter[12]~45_combout\,
	cout => \bin_counter[12]~46\);

-- Location: FF_X1_Y7_N1
\bin_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \bin_counter[12]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(12));

-- Location: LCCOMB_X1_Y7_N2
\bin_counter[13]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[13]~47_combout\ = (bin_counter(13) & (\bin_counter[12]~46\ $ (GND))) # (!bin_counter(13) & (!\bin_counter[12]~46\ & VCC))
-- \bin_counter[13]~48\ = CARRY((bin_counter(13) & !\bin_counter[12]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(13),
	datad => VCC,
	cin => \bin_counter[12]~46\,
	combout => \bin_counter[13]~47_combout\,
	cout => \bin_counter[13]~48\);

-- Location: FF_X1_Y7_N3
\bin_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[13]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(13));

-- Location: LCCOMB_X1_Y7_N4
\bin_counter[14]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[14]~49_combout\ = (bin_counter(14) & (!\bin_counter[13]~48\)) # (!bin_counter(14) & ((\bin_counter[13]~48\) # (GND)))
-- \bin_counter[14]~50\ = CARRY((!\bin_counter[13]~48\) # (!bin_counter(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(14),
	datad => VCC,
	cin => \bin_counter[13]~48\,
	combout => \bin_counter[14]~49_combout\,
	cout => \bin_counter[14]~50\);

-- Location: FF_X1_Y7_N5
\bin_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[14]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(14));

-- Location: LCCOMB_X1_Y7_N6
\bin_counter[15]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[15]~51_combout\ = (bin_counter(15) & (\bin_counter[14]~50\ $ (GND))) # (!bin_counter(15) & (!\bin_counter[14]~50\ & VCC))
-- \bin_counter[15]~52\ = CARRY((bin_counter(15) & !\bin_counter[14]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(15),
	datad => VCC,
	cin => \bin_counter[14]~50\,
	combout => \bin_counter[15]~51_combout\,
	cout => \bin_counter[15]~52\);

-- Location: FF_X1_Y7_N7
\bin_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[15]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(15));

-- Location: LCCOMB_X1_Y7_N8
\bin_counter[16]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[16]~53_combout\ = (bin_counter(16) & (!\bin_counter[15]~52\)) # (!bin_counter(16) & ((\bin_counter[15]~52\) # (GND)))
-- \bin_counter[16]~54\ = CARRY((!\bin_counter[15]~52\) # (!bin_counter(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(16),
	datad => VCC,
	cin => \bin_counter[15]~52\,
	combout => \bin_counter[16]~53_combout\,
	cout => \bin_counter[16]~54\);

-- Location: FF_X1_Y7_N9
\bin_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[16]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(16));

-- Location: LCCOMB_X1_Y7_N10
\bin_counter[17]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[17]~55_combout\ = (bin_counter(17) & (\bin_counter[16]~54\ $ (GND))) # (!bin_counter(17) & (!\bin_counter[16]~54\ & VCC))
-- \bin_counter[17]~56\ = CARRY((bin_counter(17) & !\bin_counter[16]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(17),
	datad => VCC,
	cin => \bin_counter[16]~54\,
	combout => \bin_counter[17]~55_combout\,
	cout => \bin_counter[17]~56\);

-- Location: FF_X1_Y7_N11
\bin_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[17]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(17));

-- Location: LCCOMB_X1_Y7_N12
\bin_counter[18]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[18]~57_combout\ = (bin_counter(18) & (!\bin_counter[17]~56\)) # (!bin_counter(18) & ((\bin_counter[17]~56\) # (GND)))
-- \bin_counter[18]~58\ = CARRY((!\bin_counter[17]~56\) # (!bin_counter(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(18),
	datad => VCC,
	cin => \bin_counter[17]~56\,
	combout => \bin_counter[18]~57_combout\,
	cout => \bin_counter[18]~58\);

-- Location: FF_X1_Y7_N13
\bin_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[18]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(18));

-- Location: LCCOMB_X1_Y7_N14
\bin_counter[19]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[19]~59_combout\ = (bin_counter(19) & (\bin_counter[18]~58\ $ (GND))) # (!bin_counter(19) & (!\bin_counter[18]~58\ & VCC))
-- \bin_counter[19]~60\ = CARRY((bin_counter(19) & !\bin_counter[18]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(19),
	datad => VCC,
	cin => \bin_counter[18]~58\,
	combout => \bin_counter[19]~59_combout\,
	cout => \bin_counter[19]~60\);

-- Location: FF_X1_Y7_N15
\bin_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[19]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(19));

-- Location: LCCOMB_X1_Y7_N16
\bin_counter[20]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[20]~61_combout\ = (bin_counter(20) & (!\bin_counter[19]~60\)) # (!bin_counter(20) & ((\bin_counter[19]~60\) # (GND)))
-- \bin_counter[20]~62\ = CARRY((!\bin_counter[19]~60\) # (!bin_counter(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(20),
	datad => VCC,
	cin => \bin_counter[19]~60\,
	combout => \bin_counter[20]~61_combout\,
	cout => \bin_counter[20]~62\);

-- Location: FF_X1_Y7_N17
\bin_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[20]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(20));

-- Location: LCCOMB_X1_Y7_N18
\bin_counter[21]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[21]~63_combout\ = (bin_counter(21) & (\bin_counter[20]~62\ $ (GND))) # (!bin_counter(21) & (!\bin_counter[20]~62\ & VCC))
-- \bin_counter[21]~64\ = CARRY((bin_counter(21) & !\bin_counter[20]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(21),
	datad => VCC,
	cin => \bin_counter[20]~62\,
	combout => \bin_counter[21]~63_combout\,
	cout => \bin_counter[21]~64\);

-- Location: FF_X1_Y7_N19
\bin_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[21]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(21));

-- Location: LCCOMB_X1_Y7_N20
\bin_counter[22]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[22]~65_combout\ = (bin_counter(22) & (!\bin_counter[21]~64\)) # (!bin_counter(22) & ((\bin_counter[21]~64\) # (GND)))
-- \bin_counter[22]~66\ = CARRY((!\bin_counter[21]~64\) # (!bin_counter(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(22),
	datad => VCC,
	cin => \bin_counter[21]~64\,
	combout => \bin_counter[22]~65_combout\,
	cout => \bin_counter[22]~66\);

-- Location: FF_X1_Y7_N21
\bin_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[22]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(22));

-- Location: LCCOMB_X1_Y7_N22
\bin_counter[23]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[23]~67_combout\ = bin_counter(23) $ (!\bin_counter[22]~66\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(23),
	cin => \bin_counter[22]~66\,
	combout => \bin_counter[23]~67_combout\);

-- Location: FF_X1_Y7_N23
\bin_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[23]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(23));

-- Location: CLKCTRL_G2
\bin_counter[23]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \bin_counter[23]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \bin_counter[23]~clkctrl_outclk\);

-- Location: LCCOMB_X3_Y9_N18
\INST3|ud_bin_counter[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|ud_bin_counter[0]~7_combout\ = !\INST3|ud_bin_counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST3|ud_bin_counter\(0),
	combout => \INST3|ud_bin_counter[0]~7_combout\);

-- Location: IOIBUF_X0_Y2_N15
\rst_n~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_n,
	o => \rst_n~input_o\);

-- Location: IOIBUF_X6_Y0_N15
\pb[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(3),
	o => \pb[3]~input_o\);

-- Location: IOIBUF_X9_Y0_N29
\pb[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(2),
	o => \pb[2]~input_o\);

-- Location: IOIBUF_X9_Y0_N22
\pb[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(1),
	o => \pb[1]~input_o\);

-- Location: FF_X2_Y9_N15
\INST1|current_state.arrival\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	asdata => \INST12|Selector1~0_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|current_state.arrival~q\);

-- Location: LCCOMB_X1_Y9_N18
\INST1|current_state.motion~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|current_state.motion~feeder_combout\ = \INST1|Selector4~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST1|Selector4~1_combout\,
	combout => \INST1|current_state.motion~feeder_combout\);

-- Location: FF_X1_Y9_N19
\INST1|current_state.motion\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \INST1|current_state.motion~feeder_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|current_state.motion~q\);

-- Location: LCCOMB_X1_Y9_N30
\INST1|Selector0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|Selector0~2_combout\ = (\INST1|current_state.arrival~q\) # ((\pb[2]~input_o\ & (\pb[3]~input_o\ & \INST1|current_state.motion~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[2]~input_o\,
	datab => \pb[3]~input_o\,
	datac => \INST1|current_state.arrival~q\,
	datad => \INST1|current_state.motion~q\,
	combout => \INST1|Selector0~2_combout\);

-- Location: LCCOMB_X1_Y9_N28
\INST1|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|Selector0~0_combout\ = (\pb[2]~input_o\ & \pb[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[2]~input_o\,
	datad => \pb[3]~input_o\,
	combout => \INST1|Selector0~0_combout\);

-- Location: LCCOMB_X1_Y9_N24
\INST1|Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|Selector10~0_combout\ = (\INST12|current_state.S0~q\ & ((\INST1|current_state.error~q\) # ((!\INST1|Selector0~0_combout\ & !\INST1|current_state.stationary~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|Selector0~0_combout\,
	datab => \INST12|current_state.S0~q\,
	datac => \INST1|current_state.stationary~q\,
	datad => \INST1|current_state.error~q\,
	combout => \INST1|Selector10~0_combout\);

-- Location: FF_X1_Y9_N29
\INST1|current_state.error\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(23),
	asdata => \INST1|Selector10~0_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|current_state.error~q\);

-- Location: LCCOMB_X1_Y9_N16
\INST1|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|Selector0~1_combout\ = (\INST1|current_state.stationary~q\ & (!\INST12|current_state.S0~q\ & ((\INST1|current_state.error~q\)))) # (!\INST1|current_state.stationary~q\ & ((\INST1|Selector0~0_combout\) # ((!\INST12|current_state.S0~q\ & 
-- \INST1|current_state.error~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|current_state.stationary~q\,
	datab => \INST12|current_state.S0~q\,
	datac => \INST1|Selector0~0_combout\,
	datad => \INST1|current_state.error~q\,
	combout => \INST1|Selector0~1_combout\);

-- Location: LCCOMB_X2_Y9_N0
\INST2|ud_bin_counter[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|ud_bin_counter[0]~8_combout\ = !\INST2|ud_bin_counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST2|ud_bin_counter\(0),
	combout => \INST2|ud_bin_counter[0]~8_combout\);

-- Location: LCCOMB_X2_Y9_N8
\INST1|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|Selector5~0_combout\ = (!\pb[2]~input_o\ & (!\INST1|Transition_Section~0_combout\ & ((\INST1|current_state.motion~q\) # (\INST1|Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[2]~input_o\,
	datab => \INST1|current_state.motion~q\,
	datac => \INST1|Selector4~0_combout\,
	datad => \INST1|Transition_Section~0_combout\,
	combout => \INST1|Selector5~0_combout\);

-- Location: FF_X2_Y9_N1
\INST2|ud_bin_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \INST2|ud_bin_counter[0]~8_combout\,
	clrn => \rst_n~input_o\,
	ena => \INST1|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2|ud_bin_counter\(0));

-- Location: IOIBUF_X1_Y10_N15
\sw[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

-- Location: LCCOMB_X3_Y9_N30
\INST2|ud_bin_counter[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|ud_bin_counter[3]~0_combout\ = (!\INST2|ud_bin_counter\(0) & !\INST2|ud_bin_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST2|ud_bin_counter\(0),
	datad => \INST2|ud_bin_counter\(1),
	combout => \INST2|ud_bin_counter[3]~0_combout\);

-- Location: LCCOMB_X2_Y9_N28
\INST2|ud_bin_counter[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|ud_bin_counter[3]~1_combout\ = (\INST2|ud_bin_counter[3]~0_combout\ & (\INST1|Selector5~0_combout\ & ((!\INST1|Selector4~1_combout\) # (!\INST1|Selector7~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST2|ud_bin_counter[3]~0_combout\,
	datab => \INST1|Selector7~5_combout\,
	datac => \INST1|Selector5~0_combout\,
	datad => \INST1|Selector4~1_combout\,
	combout => \INST2|ud_bin_counter[3]~1_combout\);

-- Location: LCCOMB_X3_Y9_N28
\INST2|ud_bin_counter[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|ud_bin_counter[3]~2_combout\ = (\INST2|ud_bin_counter\(0) & \INST2|ud_bin_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST2|ud_bin_counter\(0),
	datad => \INST2|ud_bin_counter\(1),
	combout => \INST2|ud_bin_counter[3]~2_combout\);

-- Location: LCCOMB_X2_Y9_N2
\INST2|ud_bin_counter[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|ud_bin_counter[3]~3_combout\ = (\INST2|ud_bin_counter[3]~2_combout\ & (\INST1|Selector7~5_combout\ & (\INST1|Selector5~0_combout\ & \INST1|Selector4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST2|ud_bin_counter[3]~2_combout\,
	datab => \INST1|Selector7~5_combout\,
	datac => \INST1|Selector5~0_combout\,
	datad => \INST1|Selector4~1_combout\,
	combout => \INST2|ud_bin_counter[3]~3_combout\);

-- Location: LCCOMB_X2_Y9_N24
\INST2|ud_bin_counter[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|ud_bin_counter[2]~4_combout\ = \INST2|ud_bin_counter\(2) $ (((\INST2|ud_bin_counter[3]~1_combout\) # (\INST2|ud_bin_counter[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST2|ud_bin_counter[3]~1_combout\,
	datac => \INST2|ud_bin_counter\(2),
	datad => \INST2|ud_bin_counter[3]~3_combout\,
	combout => \INST2|ud_bin_counter[2]~4_combout\);

-- Location: FF_X2_Y9_N25
\INST2|ud_bin_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \INST2|ud_bin_counter[2]~4_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2|ud_bin_counter\(2));

-- Location: LCCOMB_X2_Y9_N10
\INST2|ud_bin_counter[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|ud_bin_counter[3]~5_combout\ = \INST2|ud_bin_counter\(3) $ (((\INST2|ud_bin_counter\(2) & (\INST2|ud_bin_counter[3]~3_combout\)) # (!\INST2|ud_bin_counter\(2) & ((\INST2|ud_bin_counter[3]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST2|ud_bin_counter\(2),
	datab => \INST2|ud_bin_counter[3]~3_combout\,
	datac => \INST2|ud_bin_counter\(3),
	datad => \INST2|ud_bin_counter[3]~1_combout\,
	combout => \INST2|ud_bin_counter[3]~5_combout\);

-- Location: FF_X2_Y9_N11
\INST2|ud_bin_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \INST2|ud_bin_counter[3]~5_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2|ud_bin_counter\(3));

-- Location: LCCOMB_X2_Y9_N6
\INST1|Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|Selector7~0_combout\ = (\sw[7]~input_o\ & (((!\INST2|ud_bin_counter\(2) & \sw[6]~input_o\)) # (!\INST2|ud_bin_counter\(3)))) # (!\sw[7]~input_o\ & (!\INST2|ud_bin_counter\(2) & (\sw[6]~input_o\ & !\INST2|ud_bin_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[7]~input_o\,
	datab => \INST2|ud_bin_counter\(2),
	datac => \sw[6]~input_o\,
	datad => \INST2|ud_bin_counter\(3),
	combout => \INST1|Selector7~0_combout\);

-- Location: IOIBUF_X10_Y22_N15
\sw[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

-- Location: LCCOMB_X2_Y9_N4
\INST1|Selector7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|Selector7~2_combout\ = (\sw[5]~input_o\ & (\INST2|ud_bin_counter\(1) & \INST2|ud_bin_counter\(0))) # (!\sw[5]~input_o\ & ((\INST2|ud_bin_counter\(1)) # (\INST2|ud_bin_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[5]~input_o\,
	datac => \INST2|ud_bin_counter\(1),
	datad => \INST2|ud_bin_counter\(0),
	combout => \INST1|Selector7~2_combout\);

-- Location: LCCOMB_X1_Y9_N6
\INST1|Selector7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|Selector7~1_combout\ = (\sw[7]~input_o\ & (!\sw[6]~input_o\ & (\INST2|ud_bin_counter\(3) & \INST2|ud_bin_counter\(2)))) # (!\sw[7]~input_o\ & ((\INST2|ud_bin_counter\(3)) # ((!\sw[6]~input_o\ & \INST2|ud_bin_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[7]~input_o\,
	datab => \sw[6]~input_o\,
	datac => \INST2|ud_bin_counter\(3),
	datad => \INST2|ud_bin_counter\(2),
	combout => \INST1|Selector7~1_combout\);

-- Location: LCCOMB_X2_Y9_N22
\INST1|Selector7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|Selector7~3_combout\ = \INST2|ud_bin_counter\(1) $ (\sw[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST2|ud_bin_counter\(1),
	datad => \sw[5]~input_o\,
	combout => \INST1|Selector7~3_combout\);

-- Location: IOIBUF_X10_Y21_N15
\sw[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

-- Location: LCCOMB_X2_Y9_N20
\INST4|INST5|output_data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4|INST5|output_data~0_combout\ = (\sw[6]~input_o\ & (\INST2|ud_bin_counter\(2) & (\sw[7]~input_o\ $ (!\INST2|ud_bin_counter\(3))))) # (!\sw[6]~input_o\ & (!\INST2|ud_bin_counter\(2) & (\sw[7]~input_o\ $ (!\INST2|ud_bin_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[6]~input_o\,
	datab => \INST2|ud_bin_counter\(2),
	datac => \sw[7]~input_o\,
	datad => \INST2|ud_bin_counter\(3),
	combout => \INST4|INST5|output_data~0_combout\);

-- Location: LCCOMB_X2_Y9_N16
\INST1|Selector7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|Selector7~4_combout\ = (\INST4|INST5|output_data~0_combout\ & ((\INST1|Selector7~3_combout\) # (\sw[4]~input_o\ $ (\INST1|Selector7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|Selector7~3_combout\,
	datab => \sw[4]~input_o\,
	datac => \INST1|Selector7~2_combout\,
	datad => \INST4|INST5|output_data~0_combout\,
	combout => \INST1|Selector7~4_combout\);

-- Location: LCCOMB_X2_Y9_N18
\INST1|Selector7~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|Selector7~5_combout\ = (\INST1|Selector7~4_combout\ & (!\INST1|Selector7~2_combout\ & ((\INST1|Selector7~0_combout\) # (!\INST1|Selector7~1_combout\)))) # (!\INST1|Selector7~4_combout\ & (\INST1|Selector7~0_combout\ & 
-- ((!\INST1|Selector7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|Selector7~0_combout\,
	datab => \INST1|Selector7~2_combout\,
	datac => \INST1|Selector7~1_combout\,
	datad => \INST1|Selector7~4_combout\,
	combout => \INST1|Selector7~5_combout\);

-- Location: LCCOMB_X2_Y9_N26
\INST2|ud_bin_counter~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|ud_bin_counter~6_combout\ = \INST2|ud_bin_counter\(0) $ (\INST2|ud_bin_counter\(1) $ (((!\INST1|Selector4~1_combout\) # (!\INST1|Selector7~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST2|ud_bin_counter\(0),
	datab => \INST1|Selector7~5_combout\,
	datac => \INST2|ud_bin_counter\(1),
	datad => \INST1|Selector4~1_combout\,
	combout => \INST2|ud_bin_counter~6_combout\);

-- Location: FF_X2_Y9_N27
\INST2|ud_bin_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \INST2|ud_bin_counter~6_combout\,
	clrn => \rst_n~input_o\,
	ena => \INST1|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2|ud_bin_counter\(1));

-- Location: LCCOMB_X2_Y9_N30
\INST4|INST4|output_data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4|INST4|output_data~0_combout\ = \sw[4]~input_o\ $ (\INST2|ud_bin_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw[4]~input_o\,
	datad => \INST2|ud_bin_counter\(0),
	combout => \INST4|INST4|output_data~0_combout\);

-- Location: LCCOMB_X2_Y9_N12
\INST1|Transition_Section~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|Transition_Section~0_combout\ = (!\INST4|INST4|output_data~0_combout\ & (\INST4|INST5|output_data~0_combout\ & (\INST2|ud_bin_counter\(1) $ (!\sw[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST2|ud_bin_counter\(1),
	datab => \sw[5]~input_o\,
	datac => \INST4|INST4|output_data~0_combout\,
	datad => \INST4|INST5|output_data~0_combout\,
	combout => \INST1|Transition_Section~0_combout\);

-- Location: LCCOMB_X1_Y9_N22
\INST1|Selector0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|Selector0~3_combout\ = (!\INST1|Selector0~1_combout\ & (((\INST1|Transition_Section~0_combout\ & \INST1|Transition_Section~1_combout\)) # (!\INST1|Selector0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|Selector0~2_combout\,
	datab => \INST1|Selector0~1_combout\,
	datac => \INST1|Transition_Section~0_combout\,
	datad => \INST1|Transition_Section~1_combout\,
	combout => \INST1|Selector0~3_combout\);

-- Location: FF_X1_Y9_N23
\INST1|current_state.stationary\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(23),
	d => \INST1|Selector0~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|current_state.stationary~q\);

-- Location: LCCOMB_X3_Y9_N10
\INST12|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|Selector1~0_combout\ = (\INST1|Transition_Section~1_combout\ & (\INST1|current_state.stationary~q\ & (!\INST1|current_state.error~q\ & \INST1|Transition_Section~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|Transition_Section~1_combout\,
	datab => \INST1|current_state.stationary~q\,
	datac => \INST1|current_state.error~q\,
	datad => \INST1|Transition_Section~0_combout\,
	combout => \INST12|Selector1~0_combout\);

-- Location: LCCOMB_X4_Y9_N14
\INST12|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|Selector1~1_combout\ = (!\pb[1]~input_o\ & ((\INST12|current_state.S2~q\) # ((!\INST12|current_state.S0~q\ & \INST12|Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[1]~input_o\,
	datab => \INST12|current_state.S2~q\,
	datac => \INST12|current_state.S0~q\,
	datad => \INST12|Selector1~0_combout\,
	combout => \INST12|Selector1~1_combout\);

-- Location: FF_X4_Y9_N15
\INST12|current_state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \INST12|Selector1~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST12|current_state.S1~q\);

-- Location: LCCOMB_X7_Y9_N22
\INST12|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|Selector3~0_combout\ = (\pb[1]~input_o\ & (\INST12|current_state.S1~q\)) # (!\pb[1]~input_o\ & ((\INST12|current_state.S4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST12|current_state.S1~q\,
	datac => \INST12|current_state.S4~q\,
	datad => \pb[1]~input_o\,
	combout => \INST12|Selector3~0_combout\);

-- Location: FF_X7_Y9_N23
\INST12|current_state.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \INST12|Selector3~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST12|current_state.S3~q\);

-- Location: LCCOMB_X7_Y9_N20
\INST12|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|Selector5~0_combout\ = (\pb[1]~input_o\ & (\INST12|current_state.S3~q\)) # (!\pb[1]~input_o\ & ((\INST12|current_state.S6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST12|current_state.S3~q\,
	datac => \INST12|current_state.S6~q\,
	datad => \pb[1]~input_o\,
	combout => \INST12|Selector5~0_combout\);

-- Location: FF_X7_Y9_N21
\INST12|current_state.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \INST12|Selector5~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST12|current_state.S5~q\);

-- Location: LCCOMB_X7_Y9_N26
\INST12|Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|Selector7~0_combout\ = (\pb[1]~input_o\ & (\INST12|current_state.S5~q\)) # (!\pb[1]~input_o\ & ((\INST12|current_state.s8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST12|current_state.S5~q\,
	datac => \INST12|current_state.s8~q\,
	datad => \pb[1]~input_o\,
	combout => \INST12|Selector7~0_combout\);

-- Location: FF_X7_Y9_N27
\INST12|current_state.S7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \INST12|Selector7~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST12|current_state.S7~q\);

-- Location: LCCOMB_X7_Y9_N0
\INST12|next_state.s9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|next_state.s9~0_combout\ = (\pb[1]~input_o\ & ((\INST12|current_state.S7~q\) # (\INST12|current_state.s9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST12|current_state.S7~q\,
	datac => \INST12|current_state.s9~q\,
	datad => \pb[1]~input_o\,
	combout => \INST12|next_state.s9~0_combout\);

-- Location: FF_X7_Y9_N1
\INST12|current_state.s9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \INST12|next_state.s9~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST12|current_state.s9~q\);

-- Location: LCCOMB_X7_Y9_N8
\INST12|Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|Selector8~0_combout\ = (!\pb[1]~input_o\ & ((\INST12|current_state.s9~q\) # (\INST12|current_state.S7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST12|current_state.s9~q\,
	datac => \INST12|current_state.S7~q\,
	datad => \pb[1]~input_o\,
	combout => \INST12|Selector8~0_combout\);

-- Location: FF_X7_Y9_N9
\INST12|current_state.s8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \INST12|Selector8~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST12|current_state.s8~q\);

-- Location: LCCOMB_X7_Y9_N14
\INST12|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|Selector6~0_combout\ = (\pb[1]~input_o\ & ((\INST12|current_state.s8~q\))) # (!\pb[1]~input_o\ & (\INST12|current_state.S5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST12|current_state.S5~q\,
	datac => \INST12|current_state.s8~q\,
	datad => \pb[1]~input_o\,
	combout => \INST12|Selector6~0_combout\);

-- Location: FF_X7_Y9_N15
\INST12|current_state.S6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \INST12|Selector6~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST12|current_state.S6~q\);

-- Location: LCCOMB_X7_Y9_N28
\INST12|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|Selector4~0_combout\ = (\pb[1]~input_o\ & ((\INST12|current_state.S6~q\))) # (!\pb[1]~input_o\ & (\INST12|current_state.S3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST12|current_state.S3~q\,
	datac => \INST12|current_state.S6~q\,
	datad => \pb[1]~input_o\,
	combout => \INST12|Selector4~0_combout\);

-- Location: FF_X7_Y9_N29
\INST12|current_state.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \INST12|Selector4~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST12|current_state.S4~q\);

-- Location: LCCOMB_X4_Y9_N0
\INST12|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|Selector2~0_combout\ = (\pb[1]~input_o\ & ((\INST12|current_state.S4~q\))) # (!\pb[1]~input_o\ & (\INST12|current_state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST12|current_state.S1~q\,
	datac => \pb[1]~input_o\,
	datad => \INST12|current_state.S4~q\,
	combout => \INST12|Selector2~0_combout\);

-- Location: FF_X4_Y9_N1
\INST12|current_state.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \INST12|Selector2~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST12|current_state.S2~q\);

-- Location: LCCOMB_X3_Y9_N2
\INST12|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|Selector0~0_combout\ = (\pb[1]~input_o\ & (!\INST12|current_state.S2~q\ & (\INST12|current_state.S0~q\))) # (!\pb[1]~input_o\ & (((\INST12|current_state.S0~q\) # (\INST12|Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[1]~input_o\,
	datab => \INST12|current_state.S2~q\,
	datac => \INST12|current_state.S0~q\,
	datad => \INST12|Selector1~0_combout\,
	combout => \INST12|Selector0~0_combout\);

-- Location: FF_X3_Y9_N3
\INST12|current_state.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(23),
	d => \INST12|Selector0~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST12|current_state.S0~q\);

-- Location: LCCOMB_X3_Y9_N0
\INST1|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|Selector4~0_combout\ = (!\INST12|current_state.S0~q\ & (!\INST1|current_state.stationary~q\ & ((!\pb[2]~input_o\) # (!\pb[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[3]~input_o\,
	datab => \pb[2]~input_o\,
	datac => \INST12|current_state.S0~q\,
	datad => \INST1|current_state.stationary~q\,
	combout => \INST1|Selector4~0_combout\);

-- Location: LCCOMB_X3_Y9_N22
\INST1|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|Selector6~0_combout\ = (!\pb[3]~input_o\ & (!\INST1|Transition_Section~1_combout\ & ((\INST1|Selector4~0_combout\) # (\INST1|current_state.motion~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[3]~input_o\,
	datab => \INST1|Selector4~0_combout\,
	datac => \INST1|current_state.motion~q\,
	datad => \INST1|Transition_Section~1_combout\,
	combout => \INST1|Selector6~0_combout\);

-- Location: FF_X3_Y9_N19
\INST3|ud_bin_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \INST3|ud_bin_counter[0]~7_combout\,
	clrn => \rst_n~input_o\,
	ena => \INST1|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|ud_bin_counter\(0));

-- Location: IOIBUF_X10_Y20_N15
\sw[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

-- Location: IOIBUF_X10_Y19_N22
\sw[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: LCCOMB_X4_Y9_N2
\INST3|ud_bin_counter[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|ud_bin_counter[3]~2_combout\ = (\INST3|ud_bin_counter\(1) & \INST3|ud_bin_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST3|ud_bin_counter\(1),
	datad => \INST3|ud_bin_counter\(0),
	combout => \INST3|ud_bin_counter[3]~2_combout\);

-- Location: LCCOMB_X4_Y9_N28
\INST3|ud_bin_counter[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|ud_bin_counter[3]~3_combout\ = (\INST3|ud_bin_counter[3]~2_combout\ & (\INST1|Selector6~0_combout\ & (\INST1|Selector8~5_combout\ & \INST1|Selector4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|ud_bin_counter[3]~2_combout\,
	datab => \INST1|Selector6~0_combout\,
	datac => \INST1|Selector8~5_combout\,
	datad => \INST1|Selector4~1_combout\,
	combout => \INST3|ud_bin_counter[3]~3_combout\);

-- Location: LCCOMB_X4_Y9_N8
\INST3|ud_bin_counter[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|ud_bin_counter[3]~0_combout\ = (!\INST3|ud_bin_counter\(1) & !\INST3|ud_bin_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST3|ud_bin_counter\(1),
	datad => \INST3|ud_bin_counter\(0),
	combout => \INST3|ud_bin_counter[3]~0_combout\);

-- Location: LCCOMB_X3_Y9_N8
\INST3|ud_bin_counter[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|ud_bin_counter[3]~1_combout\ = (\INST3|ud_bin_counter[3]~0_combout\ & (\INST1|Selector6~0_combout\ & ((!\INST1|Selector4~1_combout\) # (!\INST1|Selector8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|Selector8~5_combout\,
	datab => \INST3|ud_bin_counter[3]~0_combout\,
	datac => \INST1|Selector6~0_combout\,
	datad => \INST1|Selector4~1_combout\,
	combout => \INST3|ud_bin_counter[3]~1_combout\);

-- Location: LCCOMB_X4_Y9_N24
\INST3|ud_bin_counter[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|ud_bin_counter[2]~4_combout\ = \INST3|ud_bin_counter\(2) $ (((\INST3|ud_bin_counter[3]~3_combout\) # (\INST3|ud_bin_counter[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST3|ud_bin_counter[3]~3_combout\,
	datac => \INST3|ud_bin_counter\(2),
	datad => \INST3|ud_bin_counter[3]~1_combout\,
	combout => \INST3|ud_bin_counter[2]~4_combout\);

-- Location: FF_X4_Y9_N25
\INST3|ud_bin_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \INST3|ud_bin_counter[2]~4_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|ud_bin_counter\(2));

-- Location: LCCOMB_X4_Y9_N22
\INST3|ud_bin_counter[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|ud_bin_counter[3]~5_combout\ = \INST3|ud_bin_counter\(3) $ (((\INST3|ud_bin_counter\(2) & (\INST3|ud_bin_counter[3]~3_combout\)) # (!\INST3|ud_bin_counter\(2) & ((\INST3|ud_bin_counter[3]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|ud_bin_counter\(2),
	datab => \INST3|ud_bin_counter[3]~3_combout\,
	datac => \INST3|ud_bin_counter\(3),
	datad => \INST3|ud_bin_counter[3]~1_combout\,
	combout => \INST3|ud_bin_counter[3]~5_combout\);

-- Location: FF_X4_Y9_N23
\INST3|ud_bin_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \INST3|ud_bin_counter[3]~5_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|ud_bin_counter\(3));

-- Location: LCCOMB_X4_Y9_N30
\INST1|Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|Selector8~0_combout\ = (\sw[3]~input_o\ & (((\sw[2]~input_o\ & !\INST3|ud_bin_counter\(2))) # (!\INST3|ud_bin_counter\(3)))) # (!\sw[3]~input_o\ & (\sw[2]~input_o\ & (!\INST3|ud_bin_counter\(3) & !\INST3|ud_bin_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \sw[2]~input_o\,
	datac => \INST3|ud_bin_counter\(3),
	datad => \INST3|ud_bin_counter\(2),
	combout => \INST1|Selector8~0_combout\);

-- Location: LCCOMB_X3_Y9_N16
\INST1|Selector8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|Selector8~2_combout\ = (\sw[1]~input_o\ & (\INST3|ud_bin_counter\(0) & \INST3|ud_bin_counter\(1))) # (!\sw[1]~input_o\ & ((\INST3|ud_bin_counter\(0)) # (\INST3|ud_bin_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \INST3|ud_bin_counter\(0),
	datad => \INST3|ud_bin_counter\(1),
	combout => \INST1|Selector8~2_combout\);

-- Location: LCCOMB_X4_Y9_N12
\INST1|Selector8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|Selector8~1_combout\ = (\sw[3]~input_o\ & (!\sw[2]~input_o\ & (\INST3|ud_bin_counter\(3) & \INST3|ud_bin_counter\(2)))) # (!\sw[3]~input_o\ & ((\INST3|ud_bin_counter\(3)) # ((!\sw[2]~input_o\ & \INST3|ud_bin_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \sw[2]~input_o\,
	datac => \INST3|ud_bin_counter\(3),
	datad => \INST3|ud_bin_counter\(2),
	combout => \INST1|Selector8~1_combout\);

-- Location: LCCOMB_X4_Y9_N4
\INST5|INST5|output_data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|INST5|output_data~0_combout\ = (\sw[2]~input_o\ & (\INST3|ud_bin_counter\(2) & (\sw[3]~input_o\ $ (!\INST3|ud_bin_counter\(3))))) # (!\sw[2]~input_o\ & (!\INST3|ud_bin_counter\(2) & (\sw[3]~input_o\ $ (!\INST3|ud_bin_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datab => \sw[3]~input_o\,
	datac => \INST3|ud_bin_counter\(3),
	datad => \INST3|ud_bin_counter\(2),
	combout => \INST5|INST5|output_data~0_combout\);

-- Location: IOIBUF_X0_Y5_N1
\sw[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: LCCOMB_X3_Y9_N4
\INST1|Selector8~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|Selector8~3_combout\ = \sw[1]~input_o\ $ (\INST3|ud_bin_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datad => \INST3|ud_bin_counter\(1),
	combout => \INST1|Selector8~3_combout\);

-- Location: LCCOMB_X3_Y9_N20
\INST1|Selector8~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|Selector8~4_combout\ = (\INST5|INST5|output_data~0_combout\ & ((\INST1|Selector8~3_combout\) # (\sw[0]~input_o\ $ (\INST1|Selector8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST5|INST5|output_data~0_combout\,
	datab => \sw[0]~input_o\,
	datac => \INST1|Selector8~3_combout\,
	datad => \INST1|Selector8~2_combout\,
	combout => \INST1|Selector8~4_combout\);

-- Location: LCCOMB_X3_Y9_N6
\INST1|Selector8~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|Selector8~5_combout\ = (\INST1|Selector8~4_combout\ & (!\INST1|Selector8~2_combout\ & ((\INST1|Selector8~0_combout\) # (!\INST1|Selector8~1_combout\)))) # (!\INST1|Selector8~4_combout\ & (\INST1|Selector8~0_combout\ & 
-- ((!\INST1|Selector8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|Selector8~0_combout\,
	datab => \INST1|Selector8~2_combout\,
	datac => \INST1|Selector8~1_combout\,
	datad => \INST1|Selector8~4_combout\,
	combout => \INST1|Selector8~5_combout\);

-- Location: LCCOMB_X4_Y9_N26
\INST3|ud_bin_counter~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|ud_bin_counter~6_combout\ = \INST3|ud_bin_counter\(0) $ (\INST3|ud_bin_counter\(1) $ (((!\INST1|Selector4~1_combout\) # (!\INST1|Selector8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|ud_bin_counter\(0),
	datab => \INST1|Selector8~5_combout\,
	datac => \INST3|ud_bin_counter\(1),
	datad => \INST1|Selector4~1_combout\,
	combout => \INST3|ud_bin_counter~6_combout\);

-- Location: FF_X4_Y9_N27
\INST3|ud_bin_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \INST3|ud_bin_counter~6_combout\,
	clrn => \rst_n~input_o\,
	ena => \INST1|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|ud_bin_counter\(1));

-- Location: LCCOMB_X3_Y9_N26
\INST5|INST4|output_data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|INST4|output_data~0_combout\ = \sw[0]~input_o\ $ (\INST3|ud_bin_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw[0]~input_o\,
	datad => \INST3|ud_bin_counter\(0),
	combout => \INST5|INST4|output_data~0_combout\);

-- Location: LCCOMB_X3_Y9_N12
\INST1|Transition_Section~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|Transition_Section~1_combout\ = (!\INST5|INST4|output_data~0_combout\ & (\INST5|INST5|output_data~0_combout\ & (\sw[1]~input_o\ $ (!\INST3|ud_bin_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \INST3|ud_bin_counter\(1),
	datac => \INST5|INST4|output_data~0_combout\,
	datad => \INST5|INST5|output_data~0_combout\,
	combout => \INST1|Transition_Section~1_combout\);

-- Location: LCCOMB_X1_Y9_N8
\INST1|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|Selector1~0_combout\ = (\INST1|current_state.motion~q\ & ((!\pb[2]~input_o\) # (!\pb[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pb[3]~input_o\,
	datac => \pb[2]~input_o\,
	datad => \INST1|current_state.motion~q\,
	combout => \INST1|Selector1~0_combout\);

-- Location: LCCOMB_X3_Y9_N24
\INST1|Selector4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|Selector4~1_combout\ = (\INST1|Selector4~0_combout\) # ((\INST1|Selector1~0_combout\ & ((!\INST1|Transition_Section~0_combout\) # (!\INST1|Transition_Section~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|Transition_Section~1_combout\,
	datab => \INST1|Selector4~0_combout\,
	datac => \INST1|Selector1~0_combout\,
	datad => \INST1|Transition_Section~0_combout\,
	combout => \INST1|Selector4~1_combout\);

-- Location: LCCOMB_X2_Y9_N14
\INST6|mux_out[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|mux_out[2]~2_combout\ = (\INST1|Selector4~1_combout\ & ((\INST2|ud_bin_counter\(2)))) # (!\INST1|Selector4~1_combout\ & (\sw[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[6]~input_o\,
	datab => \INST1|Selector4~1_combout\,
	datad => \INST2|ud_bin_counter\(2),
	combout => \INST6|mux_out[2]~2_combout\);

-- Location: LCCOMB_X3_Y9_N14
\INST6|mux_out[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|mux_out[1]~1_combout\ = (\INST1|Selector4~1_combout\ & ((\INST2|ud_bin_counter\(1)))) # (!\INST1|Selector4~1_combout\ & (\sw[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST1|Selector4~1_combout\,
	datac => \sw[5]~input_o\,
	datad => \INST2|ud_bin_counter\(1),
	combout => \INST6|mux_out[1]~1_combout\);

-- Location: LCCOMB_X1_Y9_N20
\INST6|mux_out[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|mux_out[3]~3_combout\ = (\INST1|Selector4~1_combout\ & ((\INST2|ud_bin_counter\(3)))) # (!\INST1|Selector4~1_combout\ & (\sw[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[7]~input_o\,
	datac => \INST2|ud_bin_counter\(3),
	datad => \INST1|Selector4~1_combout\,
	combout => \INST6|mux_out[3]~3_combout\);

-- Location: LCCOMB_X6_Y9_N24
\INST6|mux_out[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|mux_out[0]~0_combout\ = (\INST1|Selector4~1_combout\ & ((\INST2|ud_bin_counter\(0)))) # (!\INST1|Selector4~1_combout\ & (\sw[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|Selector4~1_combout\,
	datac => \sw[4]~input_o\,
	datad => \INST2|ud_bin_counter\(0),
	combout => \INST6|mux_out[0]~0_combout\);

-- Location: LCCOMB_X9_Y9_N12
\INST9|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|Mux5~0_combout\ = (\INST6|mux_out[1]~1_combout\ & ((\INST6|mux_out[0]~0_combout\ & ((\INST6|mux_out[3]~3_combout\))) # (!\INST6|mux_out[0]~0_combout\ & (\INST6|mux_out[2]~2_combout\)))) # (!\INST6|mux_out[1]~1_combout\ & 
-- (\INST6|mux_out[2]~2_combout\ & (\INST6|mux_out[3]~3_combout\ $ (\INST6|mux_out[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST6|mux_out[2]~2_combout\,
	datab => \INST6|mux_out[1]~1_combout\,
	datac => \INST6|mux_out[3]~3_combout\,
	datad => \INST6|mux_out[0]~0_combout\,
	combout => \INST9|Mux5~0_combout\);

-- Location: LCCOMB_X4_Y9_N20
\INST7|mux_out[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|mux_out[2]~2_combout\ = (\INST1|Selector4~1_combout\ & ((\INST3|ud_bin_counter\(2)))) # (!\INST1|Selector4~1_combout\ & (\sw[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST1|Selector4~1_combout\,
	datac => \sw[2]~input_o\,
	datad => \INST3|ud_bin_counter\(2),
	combout => \INST7|mux_out[2]~2_combout\);

-- Location: LCCOMB_X4_Y9_N10
\INST7|mux_out[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|mux_out[3]~3_combout\ = (\INST1|Selector4~1_combout\ & ((\INST3|ud_bin_counter\(3)))) # (!\INST1|Selector4~1_combout\ & (\sw[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[3]~input_o\,
	datac => \INST1|Selector4~1_combout\,
	datad => \INST3|ud_bin_counter\(3),
	combout => \INST7|mux_out[3]~3_combout\);

-- Location: LCCOMB_X4_Y9_N16
\INST7|mux_out[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|mux_out[0]~0_combout\ = (\INST1|Selector4~1_combout\ & ((\INST3|ud_bin_counter\(0)))) # (!\INST1|Selector4~1_combout\ & (\sw[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST1|Selector4~1_combout\,
	datac => \sw[0]~input_o\,
	datad => \INST3|ud_bin_counter\(0),
	combout => \INST7|mux_out[0]~0_combout\);

-- Location: LCCOMB_X4_Y9_N6
\INST7|mux_out[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|mux_out[1]~1_combout\ = (\INST1|Selector4~1_combout\ & (\INST3|ud_bin_counter\(1))) # (!\INST1|Selector4~1_combout\ & ((\sw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST1|Selector4~1_combout\,
	datac => \INST3|ud_bin_counter\(1),
	datad => \sw[1]~input_o\,
	combout => \INST7|mux_out[1]~1_combout\);

-- Location: LCCOMB_X10_Y9_N0
\INST8|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|Mux5~0_combout\ = (\INST7|mux_out[3]~3_combout\ & ((\INST7|mux_out[0]~0_combout\ & ((\INST7|mux_out[1]~1_combout\))) # (!\INST7|mux_out[0]~0_combout\ & (\INST7|mux_out[2]~2_combout\)))) # (!\INST7|mux_out[3]~3_combout\ & 
-- (\INST7|mux_out[2]~2_combout\ & (\INST7|mux_out[0]~0_combout\ $ (\INST7|mux_out[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST7|mux_out[2]~2_combout\,
	datab => \INST7|mux_out[3]~3_combout\,
	datac => \INST7|mux_out[0]~0_combout\,
	datad => \INST7|mux_out[1]~1_combout\,
	combout => \INST8|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y7_N28
\INST10|out_clk\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST10|out_clk~combout\ = LCELL((\INST1|Selector10~0_combout\ & ((bin_counter(12)))) # (!\INST1|Selector10~0_combout\ & (\clkin_50~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkin_50~input_o\,
	datac => \INST1|Selector10~0_combout\,
	datad => bin_counter(12),
	combout => \INST10|out_clk~combout\);

-- Location: CLKCTRL_G1
\INST10|out_clk~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \INST10|out_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \INST10|out_clk~clkctrl_outclk\);

-- Location: LCCOMB_X10_Y9_N2
\INST11|clk_proc:COUNT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST11|clk_proc:COUNT[0]~0_combout\ = !\INST11|clk_proc:COUNT[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST11|clk_proc:COUNT[0]~q\,
	combout => \INST11|clk_proc:COUNT[0]~0_combout\);

-- Location: FF_X10_Y9_N3
\INST11|clk_proc:COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST10|out_clk~clkctrl_outclk\,
	d => \INST11|clk_proc:COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST11|clk_proc:COUNT[0]~q\);

-- Location: LCCOMB_X10_Y9_N6
\INST11|clk_proc:COUNT[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST11|clk_proc:COUNT[1]~1_combout\ = (\INST11|clk_proc:COUNT[1]~q\ & (\INST11|clk_proc:COUNT[0]~q\ $ (VCC))) # (!\INST11|clk_proc:COUNT[1]~q\ & (\INST11|clk_proc:COUNT[0]~q\ & VCC))
-- \INST11|clk_proc:COUNT[1]~2\ = CARRY((\INST11|clk_proc:COUNT[1]~q\ & \INST11|clk_proc:COUNT[0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST11|clk_proc:COUNT[1]~q\,
	datab => \INST11|clk_proc:COUNT[0]~q\,
	datad => VCC,
	combout => \INST11|clk_proc:COUNT[1]~1_combout\,
	cout => \INST11|clk_proc:COUNT[1]~2\);

-- Location: FF_X10_Y9_N7
\INST11|clk_proc:COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST10|out_clk~clkctrl_outclk\,
	d => \INST11|clk_proc:COUNT[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST11|clk_proc:COUNT[1]~q\);

-- Location: LCCOMB_X10_Y9_N8
\INST11|clk_proc:COUNT[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST11|clk_proc:COUNT[2]~1_combout\ = (\INST11|clk_proc:COUNT[2]~q\ & (!\INST11|clk_proc:COUNT[1]~2\)) # (!\INST11|clk_proc:COUNT[2]~q\ & ((\INST11|clk_proc:COUNT[1]~2\) # (GND)))
-- \INST11|clk_proc:COUNT[2]~2\ = CARRY((!\INST11|clk_proc:COUNT[1]~2\) # (!\INST11|clk_proc:COUNT[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST11|clk_proc:COUNT[2]~q\,
	datad => VCC,
	cin => \INST11|clk_proc:COUNT[1]~2\,
	combout => \INST11|clk_proc:COUNT[2]~1_combout\,
	cout => \INST11|clk_proc:COUNT[2]~2\);

-- Location: FF_X10_Y9_N9
\INST11|clk_proc:COUNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST10|out_clk~clkctrl_outclk\,
	d => \INST11|clk_proc:COUNT[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST11|clk_proc:COUNT[2]~q\);

-- Location: LCCOMB_X10_Y9_N10
\INST11|clk_proc:COUNT[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST11|clk_proc:COUNT[3]~1_combout\ = (\INST11|clk_proc:COUNT[3]~q\ & (\INST11|clk_proc:COUNT[2]~2\ $ (GND))) # (!\INST11|clk_proc:COUNT[3]~q\ & (!\INST11|clk_proc:COUNT[2]~2\ & VCC))
-- \INST11|clk_proc:COUNT[3]~2\ = CARRY((\INST11|clk_proc:COUNT[3]~q\ & !\INST11|clk_proc:COUNT[2]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST11|clk_proc:COUNT[3]~q\,
	datad => VCC,
	cin => \INST11|clk_proc:COUNT[2]~2\,
	combout => \INST11|clk_proc:COUNT[3]~1_combout\,
	cout => \INST11|clk_proc:COUNT[3]~2\);

-- Location: FF_X10_Y9_N11
\INST11|clk_proc:COUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST10|out_clk~clkctrl_outclk\,
	d => \INST11|clk_proc:COUNT[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST11|clk_proc:COUNT[3]~q\);

-- Location: LCCOMB_X10_Y9_N12
\INST11|clk_proc:COUNT[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST11|clk_proc:COUNT[4]~1_combout\ = (\INST11|clk_proc:COUNT[4]~q\ & (!\INST11|clk_proc:COUNT[3]~2\)) # (!\INST11|clk_proc:COUNT[4]~q\ & ((\INST11|clk_proc:COUNT[3]~2\) # (GND)))
-- \INST11|clk_proc:COUNT[4]~2\ = CARRY((!\INST11|clk_proc:COUNT[3]~2\) # (!\INST11|clk_proc:COUNT[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST11|clk_proc:COUNT[4]~q\,
	datad => VCC,
	cin => \INST11|clk_proc:COUNT[3]~2\,
	combout => \INST11|clk_proc:COUNT[4]~1_combout\,
	cout => \INST11|clk_proc:COUNT[4]~2\);

-- Location: FF_X10_Y9_N13
\INST11|clk_proc:COUNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST10|out_clk~clkctrl_outclk\,
	d => \INST11|clk_proc:COUNT[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST11|clk_proc:COUNT[4]~q\);

-- Location: LCCOMB_X10_Y9_N14
\INST11|clk_proc:COUNT[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST11|clk_proc:COUNT[5]~1_combout\ = (\INST11|clk_proc:COUNT[5]~q\ & (\INST11|clk_proc:COUNT[4]~2\ $ (GND))) # (!\INST11|clk_proc:COUNT[5]~q\ & (!\INST11|clk_proc:COUNT[4]~2\ & VCC))
-- \INST11|clk_proc:COUNT[5]~2\ = CARRY((\INST11|clk_proc:COUNT[5]~q\ & !\INST11|clk_proc:COUNT[4]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST11|clk_proc:COUNT[5]~q\,
	datad => VCC,
	cin => \INST11|clk_proc:COUNT[4]~2\,
	combout => \INST11|clk_proc:COUNT[5]~1_combout\,
	cout => \INST11|clk_proc:COUNT[5]~2\);

-- Location: FF_X10_Y9_N15
\INST11|clk_proc:COUNT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST10|out_clk~clkctrl_outclk\,
	d => \INST11|clk_proc:COUNT[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST11|clk_proc:COUNT[5]~q\);

-- Location: LCCOMB_X10_Y9_N16
\INST11|clk_proc:COUNT[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST11|clk_proc:COUNT[6]~1_combout\ = (\INST11|clk_proc:COUNT[6]~q\ & (!\INST11|clk_proc:COUNT[5]~2\)) # (!\INST11|clk_proc:COUNT[6]~q\ & ((\INST11|clk_proc:COUNT[5]~2\) # (GND)))
-- \INST11|clk_proc:COUNT[6]~2\ = CARRY((!\INST11|clk_proc:COUNT[5]~2\) # (!\INST11|clk_proc:COUNT[6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST11|clk_proc:COUNT[6]~q\,
	datad => VCC,
	cin => \INST11|clk_proc:COUNT[5]~2\,
	combout => \INST11|clk_proc:COUNT[6]~1_combout\,
	cout => \INST11|clk_proc:COUNT[6]~2\);

-- Location: FF_X10_Y9_N17
\INST11|clk_proc:COUNT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST10|out_clk~clkctrl_outclk\,
	d => \INST11|clk_proc:COUNT[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST11|clk_proc:COUNT[6]~q\);

-- Location: LCCOMB_X10_Y9_N18
\INST11|clk_proc:COUNT[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST11|clk_proc:COUNT[7]~1_combout\ = (\INST11|clk_proc:COUNT[7]~q\ & (\INST11|clk_proc:COUNT[6]~2\ $ (GND))) # (!\INST11|clk_proc:COUNT[7]~q\ & (!\INST11|clk_proc:COUNT[6]~2\ & VCC))
-- \INST11|clk_proc:COUNT[7]~2\ = CARRY((\INST11|clk_proc:COUNT[7]~q\ & !\INST11|clk_proc:COUNT[6]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST11|clk_proc:COUNT[7]~q\,
	datad => VCC,
	cin => \INST11|clk_proc:COUNT[6]~2\,
	combout => \INST11|clk_proc:COUNT[7]~1_combout\,
	cout => \INST11|clk_proc:COUNT[7]~2\);

-- Location: FF_X10_Y9_N19
\INST11|clk_proc:COUNT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST10|out_clk~clkctrl_outclk\,
	d => \INST11|clk_proc:COUNT[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST11|clk_proc:COUNT[7]~q\);

-- Location: LCCOMB_X10_Y9_N20
\INST11|clk_proc:COUNT[8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST11|clk_proc:COUNT[8]~1_combout\ = (\INST11|clk_proc:COUNT[8]~q\ & (!\INST11|clk_proc:COUNT[7]~2\)) # (!\INST11|clk_proc:COUNT[8]~q\ & ((\INST11|clk_proc:COUNT[7]~2\) # (GND)))
-- \INST11|clk_proc:COUNT[8]~2\ = CARRY((!\INST11|clk_proc:COUNT[7]~2\) # (!\INST11|clk_proc:COUNT[8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST11|clk_proc:COUNT[8]~q\,
	datad => VCC,
	cin => \INST11|clk_proc:COUNT[7]~2\,
	combout => \INST11|clk_proc:COUNT[8]~1_combout\,
	cout => \INST11|clk_proc:COUNT[8]~2\);

-- Location: FF_X10_Y9_N21
\INST11|clk_proc:COUNT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST10|out_clk~clkctrl_outclk\,
	d => \INST11|clk_proc:COUNT[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST11|clk_proc:COUNT[8]~q\);

-- Location: LCCOMB_X10_Y9_N22
\INST11|clk_proc:COUNT[9]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST11|clk_proc:COUNT[9]~1_combout\ = (\INST11|clk_proc:COUNT[9]~q\ & (\INST11|clk_proc:COUNT[8]~2\ $ (GND))) # (!\INST11|clk_proc:COUNT[9]~q\ & (!\INST11|clk_proc:COUNT[8]~2\ & VCC))
-- \INST11|clk_proc:COUNT[9]~2\ = CARRY((\INST11|clk_proc:COUNT[9]~q\ & !\INST11|clk_proc:COUNT[8]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST11|clk_proc:COUNT[9]~q\,
	datad => VCC,
	cin => \INST11|clk_proc:COUNT[8]~2\,
	combout => \INST11|clk_proc:COUNT[9]~1_combout\,
	cout => \INST11|clk_proc:COUNT[9]~2\);

-- Location: FF_X10_Y9_N23
\INST11|clk_proc:COUNT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST10|out_clk~clkctrl_outclk\,
	d => \INST11|clk_proc:COUNT[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST11|clk_proc:COUNT[9]~q\);

-- Location: LCCOMB_X10_Y9_N24
\INST11|clk_proc:COUNT[10]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST11|clk_proc:COUNT[10]~1_combout\ = \INST11|clk_proc:COUNT[10]~q\ $ (\INST11|clk_proc:COUNT[9]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST11|clk_proc:COUNT[10]~q\,
	cin => \INST11|clk_proc:COUNT[9]~2\,
	combout => \INST11|clk_proc:COUNT[10]~1_combout\);

-- Location: FF_X10_Y9_N25
\INST11|clk_proc:COUNT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST10|out_clk~clkctrl_outclk\,
	d => \INST11|clk_proc:COUNT[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST11|clk_proc:COUNT[10]~q\);

-- Location: LCCOMB_X9_Y9_N6
\INST11|DOUT_TEMP[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST11|DOUT_TEMP[1]~0_combout\ = (\INST11|clk_proc:COUNT[10]~q\ & ((!\INST8|Mux5~0_combout\))) # (!\INST11|clk_proc:COUNT[10]~q\ & (!\INST9|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|Mux5~0_combout\,
	datac => \INST8|Mux5~0_combout\,
	datad => \INST11|clk_proc:COUNT[10]~q\,
	combout => \INST11|DOUT_TEMP[1]~0_combout\);

-- Location: LCCOMB_X9_Y9_N24
\INST9|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|Mux1~0_combout\ = (\INST6|mux_out[2]~2_combout\ & (\INST6|mux_out[0]~0_combout\ & (\INST6|mux_out[1]~1_combout\ $ (\INST6|mux_out[3]~3_combout\)))) # (!\INST6|mux_out[2]~2_combout\ & (!\INST6|mux_out[3]~3_combout\ & ((\INST6|mux_out[1]~1_combout\) 
-- # (\INST6|mux_out[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST6|mux_out[2]~2_combout\,
	datab => \INST6|mux_out[1]~1_combout\,
	datac => \INST6|mux_out[3]~3_combout\,
	datad => \INST6|mux_out[0]~0_combout\,
	combout => \INST9|Mux1~0_combout\);

-- Location: LCCOMB_X4_Y9_N18
\INST8|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|Mux1~0_combout\ = (\INST7|mux_out[0]~0_combout\ & (\INST7|mux_out[3]~3_combout\ $ (((\INST7|mux_out[1]~1_combout\) # (!\INST7|mux_out[2]~2_combout\))))) # (!\INST7|mux_out[0]~0_combout\ & (\INST7|mux_out[1]~1_combout\ & 
-- (!\INST7|mux_out[3]~3_combout\ & !\INST7|mux_out[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST7|mux_out[0]~0_combout\,
	datab => \INST7|mux_out[1]~1_combout\,
	datac => \INST7|mux_out[3]~3_combout\,
	datad => \INST7|mux_out[2]~2_combout\,
	combout => \INST8|Mux1~0_combout\);

-- Location: LCCOMB_X9_Y9_N22
\INST11|DOUT_TEMP[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST11|DOUT_TEMP[5]~1_combout\ = (\INST11|clk_proc:COUNT[10]~q\ & ((!\INST8|Mux1~0_combout\))) # (!\INST11|clk_proc:COUNT[10]~q\ & (!\INST9|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST9|Mux1~0_combout\,
	datac => \INST8|Mux1~0_combout\,
	datad => \INST11|clk_proc:COUNT[10]~q\,
	combout => \INST11|DOUT_TEMP[5]~1_combout\);

-- Location: LCCOMB_X10_Y9_N26
\INST8|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|Mux0~0_combout\ = (\INST7|mux_out[0]~0_combout\ & ((\INST7|mux_out[3]~3_combout\) # (\INST7|mux_out[2]~2_combout\ $ (\INST7|mux_out[1]~1_combout\)))) # (!\INST7|mux_out[0]~0_combout\ & ((\INST7|mux_out[1]~1_combout\) # (\INST7|mux_out[2]~2_combout\ 
-- $ (\INST7|mux_out[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST7|mux_out[2]~2_combout\,
	datab => \INST7|mux_out[3]~3_combout\,
	datac => \INST7|mux_out[0]~0_combout\,
	datad => \INST7|mux_out[1]~1_combout\,
	combout => \INST8|Mux0~0_combout\);

-- Location: LCCOMB_X9_Y9_N4
\INST9|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|Mux0~0_combout\ = (\INST6|mux_out[0]~0_combout\ & ((\INST6|mux_out[3]~3_combout\) # (\INST6|mux_out[2]~2_combout\ $ (\INST6|mux_out[1]~1_combout\)))) # (!\INST6|mux_out[0]~0_combout\ & ((\INST6|mux_out[1]~1_combout\) # (\INST6|mux_out[2]~2_combout\ 
-- $ (\INST6|mux_out[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST6|mux_out[2]~2_combout\,
	datab => \INST6|mux_out[1]~1_combout\,
	datac => \INST6|mux_out[3]~3_combout\,
	datad => \INST6|mux_out[0]~0_combout\,
	combout => \INST9|Mux0~0_combout\);

-- Location: LCCOMB_X9_Y9_N30
\INST11|DOUT_TEMP[6]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST11|DOUT_TEMP[6]~2_combout\ = (\INST11|clk_proc:COUNT[10]~q\ & (\INST8|Mux0~0_combout\)) # (!\INST11|clk_proc:COUNT[10]~q\ & ((\INST9|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|Mux0~0_combout\,
	datac => \INST9|Mux0~0_combout\,
	datad => \INST11|clk_proc:COUNT[10]~q\,
	combout => \INST11|DOUT_TEMP[6]~2_combout\);

-- Location: IOIBUF_X9_Y0_N1
\pb[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(0),
	o => \pb[0]~input_o\);

-- Location: LCCOMB_X7_Y9_N12
\INST14|current_state~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST14|current_state~0_combout\ = \INST14|current_state~q\ $ (((\INST12|current_state.s9~q\ & !\pb[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST12|current_state.s9~q\,
	datac => \INST14|current_state~q\,
	datad => \pb[0]~input_o\,
	combout => \INST14|current_state~0_combout\);

-- Location: FF_X7_Y9_N13
\INST14|current_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \INST14|current_state~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST14|current_state~q\);

-- Location: LCCOMB_X7_Y9_N4
\INST12|WideOr5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|WideOr5~0_combout\ = (\INST12|current_state.S7~q\) # ((\INST12|current_state.S1~q\) # ((\INST12|current_state.S3~q\) # (\INST12|current_state.S5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST12|current_state.S7~q\,
	datab => \INST12|current_state.S1~q\,
	datac => \INST12|current_state.S3~q\,
	datad => \INST12|current_state.S5~q\,
	combout => \INST12|WideOr5~0_combout\);

-- Location: LCCOMB_X7_Y9_N16
\INST13|sreg~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST13|sreg~3_combout\ = (\INST12|WideOr5~0_combout\) # (\INST13|sreg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST12|WideOr5~0_combout\,
	datad => \INST13|sreg\(2),
	combout => \INST13|sreg~3_combout\);

-- Location: LCCOMB_X7_Y9_N6
\INST12|shift_en~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|shift_en~0_combout\ = (\INST12|current_state.S0~q\ & !\INST12|current_state.s9~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST12|current_state.S0~q\,
	datad => \INST12|current_state.s9~q\,
	combout => \INST12|shift_en~0_combout\);

-- Location: FF_X7_Y9_N17
\INST13|sreg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \INST13|sreg~3_combout\,
	clrn => \rst_n~input_o\,
	ena => \INST12|shift_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST13|sreg\(3));

-- Location: LCCOMB_X7_Y9_N2
\INST13|sreg~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST13|sreg~2_combout\ = (\INST12|WideOr5~0_combout\ & (\INST13|sreg\(3))) # (!\INST12|WideOr5~0_combout\ & ((\INST13|sreg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST13|sreg\(3),
	datac => \INST12|WideOr5~0_combout\,
	datad => \INST13|sreg\(1),
	combout => \INST13|sreg~2_combout\);

-- Location: FF_X7_Y9_N3
\INST13|sreg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \INST13|sreg~2_combout\,
	clrn => \rst_n~input_o\,
	ena => \INST12|shift_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST13|sreg\(2));

-- Location: LCCOMB_X7_Y9_N24
\INST13|sreg~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST13|sreg~1_combout\ = (\INST12|WideOr5~0_combout\ & ((\INST13|sreg\(2)))) # (!\INST12|WideOr5~0_combout\ & (\INST13|sreg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST13|sreg\(0),
	datac => \INST12|WideOr5~0_combout\,
	datad => \INST13|sreg\(2),
	combout => \INST13|sreg~1_combout\);

-- Location: FF_X7_Y9_N25
\INST13|sreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \INST13|sreg~1_combout\,
	clrn => \rst_n~input_o\,
	ena => \INST12|shift_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST13|sreg\(1));

-- Location: LCCOMB_X7_Y9_N18
\INST13|sreg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST13|sreg~0_combout\ = (\INST12|WideOr5~0_combout\ & \INST13|sreg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST12|WideOr5~0_combout\,
	datad => \INST13|sreg\(1),
	combout => \INST13|sreg~0_combout\);

-- Location: FF_X7_Y9_N19
\INST13|sreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \INST13|sreg~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \INST12|shift_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST13|sreg\(0));

-- Location: LCCOMB_X10_Y9_N28
\INST8|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|Mux6~0_combout\ = (\INST7|mux_out[2]~2_combout\ & (!\INST7|mux_out[1]~1_combout\ & (\INST7|mux_out[3]~3_combout\ $ (!\INST7|mux_out[0]~0_combout\)))) # (!\INST7|mux_out[2]~2_combout\ & (\INST7|mux_out[0]~0_combout\ & (\INST7|mux_out[3]~3_combout\ $ 
-- (!\INST7|mux_out[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST7|mux_out[2]~2_combout\,
	datab => \INST7|mux_out[3]~3_combout\,
	datac => \INST7|mux_out[0]~0_combout\,
	datad => \INST7|mux_out[1]~1_combout\,
	combout => \INST8|Mux6~0_combout\);

-- Location: LCCOMB_X9_Y9_N8
\INST9|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|Mux6~0_combout\ = (\INST6|mux_out[2]~2_combout\ & (!\INST6|mux_out[1]~1_combout\ & (\INST6|mux_out[3]~3_combout\ $ (!\INST6|mux_out[0]~0_combout\)))) # (!\INST6|mux_out[2]~2_combout\ & (\INST6|mux_out[0]~0_combout\ & (\INST6|mux_out[1]~1_combout\ $ 
-- (!\INST6|mux_out[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST6|mux_out[2]~2_combout\,
	datab => \INST6|mux_out[1]~1_combout\,
	datac => \INST6|mux_out[3]~3_combout\,
	datad => \INST6|mux_out[0]~0_combout\,
	combout => \INST9|Mux6~0_combout\);

-- Location: LCCOMB_X9_Y9_N18
\INST11|DOUT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST11|DOUT[0]~0_combout\ = (\INST11|clk_proc:COUNT[10]~q\ & (\INST8|Mux6~0_combout\)) # (!\INST11|clk_proc:COUNT[10]~q\ & ((\INST9|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST8|Mux6~0_combout\,
	datac => \INST9|Mux6~0_combout\,
	datad => \INST11|clk_proc:COUNT[10]~q\,
	combout => \INST11|DOUT[0]~0_combout\);

-- Location: LCCOMB_X9_Y9_N28
\INST9|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|Mux4~0_combout\ = (\INST6|mux_out[2]~2_combout\ & (\INST6|mux_out[3]~3_combout\ & ((\INST6|mux_out[1]~1_combout\) # (!\INST6|mux_out[0]~0_combout\)))) # (!\INST6|mux_out[2]~2_combout\ & (\INST6|mux_out[1]~1_combout\ & (!\INST6|mux_out[3]~3_combout\ 
-- & !\INST6|mux_out[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST6|mux_out[2]~2_combout\,
	datab => \INST6|mux_out[1]~1_combout\,
	datac => \INST6|mux_out[3]~3_combout\,
	datad => \INST6|mux_out[0]~0_combout\,
	combout => \INST9|Mux4~0_combout\);

-- Location: LCCOMB_X7_Y9_N10
\INST8|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|Mux4~0_combout\ = (\INST7|mux_out[2]~2_combout\ & (\INST7|mux_out[3]~3_combout\ & ((\INST7|mux_out[1]~1_combout\) # (!\INST7|mux_out[0]~0_combout\)))) # (!\INST7|mux_out[2]~2_combout\ & (!\INST7|mux_out[3]~3_combout\ & (\INST7|mux_out[1]~1_combout\ 
-- & !\INST7|mux_out[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST7|mux_out[2]~2_combout\,
	datab => \INST7|mux_out[3]~3_combout\,
	datac => \INST7|mux_out[1]~1_combout\,
	datad => \INST7|mux_out[0]~0_combout\,
	combout => \INST8|Mux4~0_combout\);

-- Location: LCCOMB_X9_Y9_N26
\INST11|DOUT[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST11|DOUT[2]~2_combout\ = (\INST11|clk_proc:COUNT[10]~q\ & ((\INST8|Mux4~0_combout\))) # (!\INST11|clk_proc:COUNT[10]~q\ & (\INST9|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST9|Mux4~0_combout\,
	datac => \INST8|Mux4~0_combout\,
	datad => \INST11|clk_proc:COUNT[10]~q\,
	combout => \INST11|DOUT[2]~2_combout\);

-- Location: LCCOMB_X10_Y9_N30
\INST8|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|Mux3~0_combout\ = (\INST7|mux_out[1]~1_combout\ & ((\INST7|mux_out[2]~2_combout\ & ((\INST7|mux_out[0]~0_combout\))) # (!\INST7|mux_out[2]~2_combout\ & (\INST7|mux_out[3]~3_combout\ & !\INST7|mux_out[0]~0_combout\)))) # 
-- (!\INST7|mux_out[1]~1_combout\ & (!\INST7|mux_out[3]~3_combout\ & (\INST7|mux_out[2]~2_combout\ $ (\INST7|mux_out[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST7|mux_out[2]~2_combout\,
	datab => \INST7|mux_out[3]~3_combout\,
	datac => \INST7|mux_out[0]~0_combout\,
	datad => \INST7|mux_out[1]~1_combout\,
	combout => \INST8|Mux3~0_combout\);

-- Location: LCCOMB_X9_Y9_N16
\INST9|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|Mux3~0_combout\ = (\INST6|mux_out[1]~1_combout\ & ((\INST6|mux_out[2]~2_combout\ & ((\INST6|mux_out[0]~0_combout\))) # (!\INST6|mux_out[2]~2_combout\ & (\INST6|mux_out[3]~3_combout\ & !\INST6|mux_out[0]~0_combout\)))) # 
-- (!\INST6|mux_out[1]~1_combout\ & (!\INST6|mux_out[3]~3_combout\ & (\INST6|mux_out[2]~2_combout\ $ (\INST6|mux_out[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST6|mux_out[2]~2_combout\,
	datab => \INST6|mux_out[1]~1_combout\,
	datac => \INST6|mux_out[3]~3_combout\,
	datad => \INST6|mux_out[0]~0_combout\,
	combout => \INST9|Mux3~0_combout\);

-- Location: LCCOMB_X9_Y9_N10
\INST11|DOUT[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST11|DOUT[3]~3_combout\ = (\INST11|clk_proc:COUNT[10]~q\ & (\INST8|Mux3~0_combout\)) # (!\INST11|clk_proc:COUNT[10]~q\ & ((\INST9|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|Mux3~0_combout\,
	datab => \INST9|Mux3~0_combout\,
	datad => \INST11|clk_proc:COUNT[10]~q\,
	combout => \INST11|DOUT[3]~3_combout\);

-- Location: LCCOMB_X10_Y9_N4
\INST8|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|Mux2~0_combout\ = (\INST7|mux_out[1]~1_combout\ & (((!\INST7|mux_out[3]~3_combout\ & \INST7|mux_out[0]~0_combout\)))) # (!\INST7|mux_out[1]~1_combout\ & ((\INST7|mux_out[2]~2_combout\ & (!\INST7|mux_out[3]~3_combout\)) # 
-- (!\INST7|mux_out[2]~2_combout\ & ((\INST7|mux_out[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST7|mux_out[2]~2_combout\,
	datab => \INST7|mux_out[3]~3_combout\,
	datac => \INST7|mux_out[0]~0_combout\,
	datad => \INST7|mux_out[1]~1_combout\,
	combout => \INST8|Mux2~0_combout\);

-- Location: LCCOMB_X9_Y9_N20
\INST9|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|Mux2~0_combout\ = (\INST6|mux_out[1]~1_combout\ & (((!\INST6|mux_out[3]~3_combout\ & \INST6|mux_out[0]~0_combout\)))) # (!\INST6|mux_out[1]~1_combout\ & ((\INST6|mux_out[2]~2_combout\ & (!\INST6|mux_out[3]~3_combout\)) # 
-- (!\INST6|mux_out[2]~2_combout\ & ((\INST6|mux_out[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST6|mux_out[2]~2_combout\,
	datab => \INST6|mux_out[1]~1_combout\,
	datac => \INST6|mux_out[3]~3_combout\,
	datad => \INST6|mux_out[0]~0_combout\,
	combout => \INST9|Mux2~0_combout\);

-- Location: LCCOMB_X9_Y9_N14
\INST11|DOUT[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST11|DOUT[4]~4_combout\ = (\INST11|clk_proc:COUNT[10]~q\ & (\INST8|Mux2~0_combout\)) # (!\INST11|clk_proc:COUNT[10]~q\ & ((\INST9|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|Mux2~0_combout\,
	datab => \INST9|Mux2~0_combout\,
	datad => \INST11|clk_proc:COUNT[10]~q\,
	combout => \INST11|DOUT[4]~4_combout\);

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X10_Y24_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

ww_leds(0) <= \leds[0]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_leds(2) <= \leds[2]~output_o\;

ww_leds(3) <= \leds[3]~output_o\;

ww_leds(4) <= \leds[4]~output_o\;

ww_leds(5) <= \leds[5]~output_o\;

ww_leds(6) <= \leds[6]~output_o\;

ww_leds(7) <= \leds[7]~output_o\;

ww_seg7_data(0) <= \seg7_data[0]~output_o\;

ww_seg7_data(1) <= \seg7_data[1]~output_o\;

ww_seg7_data(2) <= \seg7_data[2]~output_o\;

ww_seg7_data(3) <= \seg7_data[3]~output_o\;

ww_seg7_data(4) <= \seg7_data[4]~output_o\;

ww_seg7_data(5) <= \seg7_data[5]~output_o\;

ww_seg7_data(6) <= \seg7_data[6]~output_o\;

ww_seg7_char1 <= \seg7_char1~output_o\;

ww_seg7_char2 <= \seg7_char2~output_o\;
END structure;


