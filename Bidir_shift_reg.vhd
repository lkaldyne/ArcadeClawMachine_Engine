LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Bidir_shift_reg IS
   PORT
	(
   clk				: in	std_logic :='0';
	reset_n			: in	std_logic :='0';
	clk_en			: in	std_logic :='0';
 	left0_right1	: in  std_logic :='0'; 
   reg_bits			: out std_logic_vector(3 downto 0)
	);
END Bidir_shift_reg;

ARCHITECTURE one OF Bidir_shift_reg IS

	signal	sreg		:  std_logic_vector(3 downto 0);

BEGIN

process(clk, reset_n, clk_en, left0_right1) is
begin
	if(reset_n = '0') then
			sreg <= "0000";
			
	elsif(rising_edge(clk) and (clk_en = '1')) then
		if(left0_right1 = '1') then
			sreg(3 downto 0) <= '1' & sreg(3 downto 1);
		elsif(left0_right1 = '0') then
			sreg(3 downto 0) <= sreg(2 downto 0) & '0';
		end if;
	end if;
	reg_bits <= sreg;
end process;

END one;