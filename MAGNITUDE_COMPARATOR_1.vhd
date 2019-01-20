library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity MAGNITUDE_COMPARATOR_1 is port (
 	a	 			: in  std_logic;
	b	 			: in  std_logic;
	output_data : out std_logic_vector(2 downto 0)
); 
end MAGNITUDE_COMPARATOR_1;

architecture functional of MAGNITUDE_COMPARATOR_1 is

-- Logic for 1-bit magnitude comparator

begin

	output_data(0) <= a and not b;
	output_data(1) <= not (a xor b);
	output_data(2) <= b and not a;
	
end functional;