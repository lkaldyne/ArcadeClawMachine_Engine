
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY LogicalStep_Lab4_top IS
   PORT
	(
   clkin_50		: in	std_logic;
	rst_n			: in	std_logic;
	pb				: in	std_logic_vector(3 downto 0);
 	sw   			: in  std_logic_vector(7 downto 0); -- The switch inputs
   leds			: out std_logic_vector(7 downto 0);	-- for displaying the switch content
   seg7_data 	: out std_logic_vector(6 downto 0); -- 7-bit outputs to a 7-segment
	seg7_char1  : out	std_logic;							-- seg7 digi selectors
	seg7_char2  : out	std_logic							-- seg7 digi selectors
	);
END LogicalStep_Lab4_top;


ARCHITECTURE SimpleCircuit OF LogicalStep_Lab4_top IS

	component error_handler is port (
		fast_clk, slow_clk, toggle	: in 	std_logic;
		error_led, out_clk   : out std_logic
	); 
	end component;

	component meek_meally IS Port
	(
	 clk_input, rst_n, Xm, Ym, extender_out					: IN std_logic;
	 x_drive, y_drive													: IN std_logic_vector(2 downto 0);
	 x_en, y_en, x_dir, y_dir, extender_en, show_target, show_error 	: OUT std_logic
	 );
	END component;

	component marco_extender IS Port
	(
	 clk_input, rst_n, pb_juan, extender_en				: IN std_logic;
	 extender_out, grabbler_en, shift_dir, shift_en		: OUT std_logic
	 );
	END component;

	component grabbalar IS Port
	(
	 clk_input, rst_n, pb_zero, grabbalar_en		: IN std_logic;
	 outbut_juan											: OUT std_logic
	 );
	END component;
	
	component Bidir_shift_reg IS
		PORT
		(
		clk				: in	std_logic :='0';
		reset_n			: in	std_logic :='0';
		clk_en			: in	std_logic :='0';
		left0_right1	: in  std_logic :='0'; 
		reg_bits			: out std_logic_vector(3 downto 0)
		);
	END component;
	
	component Bin_counter4bit IS
		PORT
		(
		clk				: in	std_logic :='0';
		reset_n			: in	std_logic :='0';
		clk_en			: in	std_logic :='0';
		left0_right1	: in  std_logic :='0'; 
		counter_bits	: out std_logic_vector(3 downto 0)
		);
	END component;
	
	component FOUR_BIT_COMPARATOR is port (
		A 				: in std_logic_vector(3 downto 0);
		B 				: in std_logic_vector(3 downto 0);
		output_data : out std_logic_vector(2 downto 0)
	); 
	end component;

	component segment7_mux is
		port (
				 clk        : in  std_logic := '0';
				 DIN2 		: in  std_logic_vector(6 downto 0);	
				 DIN1 		: in  std_logic_vector(6 downto 0);
				 DOUT			: out	std_logic_vector(6 downto 0);
				 DIG2			: out	std_logic;
				 DIG1			: out	std_logic
			  );
	end component;

	component SevenSegment is port (
		
		hex	   :  in  std_logic_vector(3 downto 0);   -- The 4 bit data to be displayed
		
		sevenseg :  out std_logic_vector(6 downto 0)    -- 7-bit outputs to a 7-segment
	); 
	end component;
	
	component MUX port (
		in_A			: in 	std_logic_vector(3 downto 0);
		in_B			: in 	std_logic_vector(3 downto 0);
		TOGGLE		: in 	std_logic;
		mux_out 		: out std_logic_vector(3 downto 0)
	); 
   end component;
	
----------------------------------------------------------------------------------------------------
	CONSTANT	SIM							:  boolean := FALSE; 	-- set to TRUE for simulation runs otherwise keep at 0.
   CONSTANT CLK_DIV_SIZE				: 	INTEGER := 26;    -- size of vectors for the counters

   SIGNAL 	Main_CLK						:  STD_LOGIC; 			-- main clock to drive sequencing of State Machine

	SIGNAL 	bin_counter					:  UNSIGNED(CLK_DIV_SIZE-1 downto 0); -- := to_unsigned(0,CLK_DIV_SIZE); -- reset binary counter to zero
	
----------------------------------------------------------------------------------------------------

signal seven_A : std_logic_vector(6 downto 0);
signal seven_B : std_logic_vector(6 downto 0);

signal selected_x : std_logic_vector(3 downto 0);
signal selected_y : std_logic_vector(3 downto 0);

signal posx : std_logic_vector(3 downto 0) := "0000";
signal posy : std_logic_vector(3 downto 0) := "0000";

signal shift_direction : std_logic;
signal shift_enabled : std_logic;
signal grappler_enabled : std_logic;
signal extender_deployed : std_logic;

signal x_drive : std_logic_vector(2 downto 0);
signal y_drive : std_logic_vector(2 downto 0);

signal x_en : std_logic;
signal y_en : std_logic;
signal x_dir: std_logic;
signal y_dir: std_logic;
signal extender_en : std_logic;
signal show_target: std_logic; 
signal show_error : std_logic;

signal x_pos : std_logic_vector(3 downto 0);
signal y_pos : std_logic_vector(3 downto 0);

signal display_clock : std_logic;

BEGIN

-- CLOCKING GENERATOR WHICH DIVIDES THE INPUT CLOCK DOWN TO A LOWER FREQUENCY

BinCLK: PROCESS(clkin_50, rst_n) is
   BEGIN
		IF (rising_edge(clkin_50)) THEN -- binary counter increments on rising clock edge
         bin_counter <= bin_counter + 1;
      END IF;
   END PROCESS;

Clock_Source:
				Main_Clk <= 
				clkin_50 when sim = TRUE else				-- for simulations only
				std_logic(bin_counter(23));								-- for real FPGA operation
					
---------------------------------------------------------------------------------------------------

	
	INST1: meek_meally port map (Main_Clk, rst_n, pb(2), pb(3), extender_deployed, x_drive, y_drive, 
		x_en, y_en, x_dir, y_dir, extender_en, show_target, show_error);
	
	INST2: Bin_counter4bit port map(Main_Clk, rst_n, x_en, x_dir, x_pos);
	INST3: Bin_counter4bit port map(Main_Clk, rst_n, y_en, y_dir, y_pos);

	INST4: FOUR_BIT_COMPARATOR port map(x_pos, sw(7 downto 4), x_drive);
	INST5: FOUR_BIT_COMPARATOR port map(y_pos, sw(3 downto 0), y_drive);

	INST6: MUX port map(x_pos, sw(7 downto 4), show_target, selected_x);
	INST7: MUX port map(y_pos, sw(3 downto 0), show_target, selected_y);

	INST8: SevenSegment port map(selected_y, seven_A);
	INST9: SevenSegment port map(selected_x, seven_B);

	INST10: error_handler port map(clkin_50, std_logic(bin_counter(12)), show_error, leds(0), display_clock); 
	
	INST11: segment7_mux port map(display_clock, seven_A, seven_B, seg7_data, seg7_char1, seg7_char2);
	
	INST12: marco_extender port map(Main_Clk, rst_n, pb(1), extender_en, extender_deployed, grappler_enabled, shift_direction, shift_enabled);
	
	
	INST13: Bidir_shift_reg port map(Main_Clk, rst_n, shift_enabled, shift_direction, leds(7 downto 4));
	INST14: grabbalar port map(Main_Clk, rst_n, pb(0), grappler_enabled, leds(3));


END SimpleCircuit;
