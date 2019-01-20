library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MUX is port (
	in_A			: in 	std_logic_vector(3 downto 0);
	in_B			: in 	std_logic_vector(3 downto 0);
	TOGGLE			: in 	std_logic;
	mux_out 		: buffer std_logic_vector(3 downto 0)
); 
end MUX;

architecture MUX_circuit of MUX is

begin
-- Select input based on toggle state
	mux_case : process(TOGGLE, mux_out)
	begin
		case TOGGLE is
			when '0' => mux_out <= in_A;
			when others => mux_out <= in_B;
		end case;
	end process mux_case;
end MUX_circuit;