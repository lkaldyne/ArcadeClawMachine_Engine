library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity meek_meally IS Port
(
 clk_input, rst_n, Xm, Ym, extender_out					: IN std_logic;
 x_drive, y_drive													: IN std_logic_vector(2 downto 0);
 x_en, y_en, x_dir, y_dir, extender_en, show_target, show_error 	: OUT std_logic
 );
END ENTITY;
 

 Architecture SM of meek_meally is
 

 
 TYPE STATE_NAMES IS (stationary, motion, arrival, error);   -- list all the STATE_NAMES values

 
 SIGNAL current_state, next_state	:  STATE_NAMES;     	-- signals of type STATE_NAMES


  BEGIN
 
 --------------------------------------------------------------------------------
 --State Machine:
 --------------------------------------------------------------------------------

 -- REGISTER_LOGIC PROCESS:
 
Register_Section: PROCESS (clk_input, rst_n, next_state)  -- this process synchronizes the activity to a clock
BEGIN
	IF (rst_n = '0') THEN
		current_state <= stationary;
	ELSIF(rising_edge(clk_input)) THEN
		current_state <= next_State;
	END IF;
END PROCESS;	



-- TRANSITION LOGIC PROCESS

Transition_Section: PROCESS (Xm, Ym, extender_out, x_drive, y_drive, current_state) 

BEGIN
     CASE current_state IS
         WHEN stationary =>		
				IF((Xm = '1') and (Ym = '1')) THEN
					next_state <= stationary;
					show_target <= '1';
					x_en <= '0';
					y_en <= '0';
					x_dir <= '0';
					y_dir <= '0';
					extender_en <= '0';
					show_error <= '0';
				ELSIF((Xm = '0' or Ym = '0') and extender_out = '0') THEN
					next_state <= motion;
					show_target <= '0';
					x_en <= (not Xm) and  (not x_drive(1));
					y_en <= (not Ym) and  (not y_drive(1));
					x_dir <= (not x_drive(0)) and x_drive(2);
					y_dir <= (not y_drive(0)) and y_drive(2);
					extender_en <= '0';
					show_error <= '0';
				ELSIF((Xm = '0' or Ym = '0') and extender_out = '1') THEN
					next_state <= error;
					show_target <= '1';
					x_en <= '0';
					y_en <= '0';
					x_dir <= '0';
					y_dir <= '0';
					extender_en <= '0';
					show_error <= '1';
				ELSE
					next_state <= stationary;
					show_target <= '1';
					x_en <= '0';
					y_en <= '0';
					x_dir <= '0';
					y_dir <= '0';
					extender_en <= '0';
					show_error <= '0';
				END IF;

         WHEN motion =>		
				IF((x_drive(1) = '1') and (y_drive(1) = '1')) THEN
					next_state <= arrival;
					show_target <= '1';
					x_en <= '0';
					y_en <= '0';
					x_dir <= '0';
					y_dir <= '0';
					extender_en <= '1';
					show_error <= '0';
				ELSIF((Xm = '0') or (Ym = '0')) THEN
					next_state <= motion;
					show_target <= '0';
					x_en <= (not Xm) and  (not x_drive(1));
					y_en <= (not Ym) and  (not y_drive(1));
					x_dir <= (not x_drive(0)) and x_drive(2);
					y_dir <= (not y_drive(0)) and y_drive(2);
					extender_en <= '0';
					show_error <= '0';
				ELSE
					next_state <= stationary;
					show_target <= '1';
					x_en <= '0';
					y_en <= '0';
					x_dir <= '0';
					y_dir <= '0';
					extender_en <= '0';
					show_error <= '0';
				END IF;

         WHEN arrival =>		
				IF((x_drive(1) = '1') and (y_drive(1) = '1')) THEN
					next_state <= arrival;
					show_target <= '1';
					x_en <= '0';
					y_en <= '0';
					x_dir <= '0';
					y_dir <= '0';
					extender_en <= '1';
					show_error <= '0';
				ELSE
					next_state <= stationary;
					show_target <= '1';
					x_en <= '0';
					y_en <= '0';
					x_dir <= '0';
					y_dir <= '0';
					extender_en <= '0';
					show_error <= '0';
				END IF;
				
         WHEN error =>		
				IF(extender_out = '1') THEN
					next_state <= error;
					show_target <= '1';
					x_en <= '0';
					y_en <= '0';
					x_dir <= '0';
					y_dir <= '0';
					extender_en <= '0';
					show_error <= '1';
				ELSE
					next_state <= stationary;
					show_target <= '1';
					x_en <= '0';
					y_en <= '0';
					x_dir <= '0';
					y_dir <= '0';
					extender_en <= '0';
					show_error <= '0';
				END IF;
				
 		END CASE;
 END PROCESS;

 END ARCHITECTURE SM;
