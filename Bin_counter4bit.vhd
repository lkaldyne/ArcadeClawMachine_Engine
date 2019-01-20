LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Bin_counter4bit IS
   PORT
	(
   clk				: in	std_logic :='0';
	reset_n			: in	std_logic :='0';
	clk_en			: in	std_logic :='0';
 	left0_right1	: in  std_logic :='0'; 
   counter_bits	: out std_logic_vector(3 downto 0)
	);
END Bin_counter4bit;

ARCHITECTURE one OF Bin_counter4bit IS

	signal	ud_bin_counter		:  unsigned(3 downto 0);

BEGIN

process(clk, reset_n, clk_en, left0_right1) is
begin
	if(reset_n = '0') then
			ud_bin_counter <= "0000";
			
	elsif(rising_edge(clk) and (clk_en = '1')) then
		if(left0_right1 = '1') then
			ud_bin_counter <= (ud_bin_counter + 1);
		elsif(left0_right1 = '0') then
			ud_bin_counter <= (ud_bin_counter - 1);
		end if;
	end if;
	counter_bits <= std_logic_vector(ud_bin_counter);
end process;

END one;