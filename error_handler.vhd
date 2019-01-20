library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity error_handler is port (
	fast_clk, slow_clk, toggle	: in 	std_logic;
	error_led, out_clk   : out std_logic
); 
end entity;

architecture MUX_circuit of error_handler is

-- Bypass for structural implementation in top file
begin
	error_led <= toggle;
	mux_case : process(toggle)
	begin
		case toggle is
			when '0' => out_clk <= fast_clk;
			when others => out_clk <= slow_clk;
		end case;
	end process mux_case;
end MUX_circuit;