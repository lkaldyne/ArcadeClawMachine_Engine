library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity MAGNITUDE_COMPARATOR_4 is port (
 	A 				: in std_logic_vector(2 downto 0);
	B 				: in std_logic_vector(2 downto 0);
	C 				: in std_logic_vector(2 downto 0);
	D 				: in std_logic_vector(2 downto 0);
	output_data : out std_logic_vector(2 downto 0)
); 
end MAGNITUDE_COMPARATOR_4;

architecture functional of MAGNITUDE_COMPARATOR_4 is

-- Logic for 4-bit magnitude comparator

begin
	output_data(0) <= A(0) or (A(1) and B(0)) or (A(1) and B(1) and C(0)) or (A(1) and B(1) and C(1) and D(0));
	output_data(1) <= A(1) and B(1) and C(1) and D(1);
	output_data(2) <= A(2) or (A(1) and B(2)) or (A(1) and B(1) and C(2)) or (A(1) and B(1) and C(1) and D(2));
	
end functional;