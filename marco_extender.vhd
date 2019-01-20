library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity marco_extender IS Port
(
 clk_input, rst_n, pb_juan, extender_en				: IN std_logic;
 extender_out, grabbler_en, shift_dir, shift_en		: OUT std_logic
 );
END ENTITY;
 

 Architecture SM of marco_extender is
 

 
 TYPE STATE_NAMES IS (S0, S1, S2, S3, S4, S5, S6, S7, s8, s9);   -- list all the STATE_NAMES values

 
 SIGNAL current_state, next_state	:  STATE_NAMES;     	-- signals of type STATE_NAMES


  BEGIN
 
 --------------------------------------------------------------------------------
 --State Machine:
 --------------------------------------------------------------------------------

 -- REGISTER_LOGIC PROCESS:
 
Register_Section: PROCESS (clk_input, rst_n, next_state)  -- this process synchronizes the activity to a clock
BEGIN
	IF (rst_n = '0') THEN
		current_state <= S0;
	ELSIF(rising_edge(clk_input)) THEN
		current_state <= next_State;
	END IF;
END PROCESS;	



-- TRANSITION LOGIC PROCESS

Transition_Section: PROCESS (pb_juan, extender_en, current_state) 

BEGIN
     CASE current_state IS
         WHEN S0 =>		
				IF(pb_juan = '0' and extender_en = '1') THEN
					next_state <= S1;
				ELSE
					next_state <= S0;
				END IF;

         WHEN S1 =>		
				IF(pb_juan = '0') THEN
					next_state <= S2;
				ELSE
					next_state <= S3;
				END IF;

         WHEN S2 =>		
				IF(pb_juan = '0') THEN
					next_state <= S1;
				ELSE
					next_state <= S0;
				END IF;

			WHEN S3 =>		
				IF(pb_juan = '0') THEN
					next_state <= S4;
				ELSE
					next_state <= S5;
				END IF;
				
			WHEN S4 =>		
				IF(pb_juan = '0') THEN
					next_state <= S3;
				ELSE
					next_state <= S2;
				END IF;
				
			WHEN S5 =>		
				IF(pb_juan = '0') THEN
					next_state <= S6;
				ELSE
					next_state <= S7;
				END IF;

			WHEN S6 =>		
				IF(pb_juan = '0') THEN
					next_state <= S5;
				ELSE
					next_state <= S4;
				END IF;
				
			WHEN S7 =>		
				IF(pb_juan = '0') THEN
					next_state <= S8;
				ELSE
					next_state <= S9;
				END IF;
				
			WHEN S8 =>		
				IF(pb_juan = '0') THEN
					next_state <= S7;
				ELSE
					next_state <= S6;
				END IF;
				
			WHEN S9 =>		
				IF(pb_juan = '0') THEN
					next_state <= S8;
				ELSE
					next_state <= S9;
				END IF;

 		END CASE;
 END PROCESS;

-- DECODER SECTION PROCESS

Decoder_Section: PROCESS (current_state) 

BEGIN
     CASE current_state IS
         WHEN S0 =>		
			extender_out <= '0';
			grabbler_en  <= '0';
			shift_dir	 <= '0';
			shift_en     <= '0';
			
         WHEN S1 =>		
			extender_out <= '1';
			grabbler_en  <= '0';
			shift_dir	 <= '1';
			shift_en     <= '1';

         WHEN S2 =>		
			extender_out <= '1';
			grabbler_en  <= '0';
			shift_dir	 <= '0';
			shift_en     <= '1';
			
         WHEN S3 =>		
			extender_out <= '1';
			grabbler_en  <= '0';
			shift_dir	 <= '1';
			shift_en     <= '1';

         WHEN S4 =>		
			extender_out <= '1';
			grabbler_en  <= '0';
			shift_dir	 <= '0';
			shift_en     <= '1';

         WHEN S5 =>		
			extender_out <= '1';
			grabbler_en  <= '0';
			shift_dir	 <= '1';
			shift_en     <= '1';
				
         WHEN S6 =>		
			extender_out <= '1';
			grabbler_en  <= '0';
			shift_dir	 <= '0';
			shift_en     <= '1';
				
         WHEN S7 =>		
			extender_out <= '1';
			grabbler_en  <= '0';
			shift_dir	 <= '1';
			shift_en     <= '1';
			
         WHEN S8 =>		
			extender_out <= '1';
			grabbler_en  <= '0';
			shift_dir	 <= '0';
			shift_en     <= '1';
				
         WHEN S9 =>		
			extender_out <= '1';
			grabbler_en  <= '1';
			shift_dir	 <= '0';
			shift_en     <= '0';
				
	  END CASE;
 END PROCESS;

 END ARCHITECTURE SM;
