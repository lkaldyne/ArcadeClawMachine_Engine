library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity FOUR_BIT_COMPARATOR is port (
 	A 				: in std_logic_vector(3 downto 0);
	B 				: in std_logic_vector(3 downto 0);
	output_data : out std_logic_vector(2 downto 0)
); 
end FOUR_BIT_COMPARATOR;

architecture structural of FOUR_BIT_COMPARATOR is
--
-- Components Used
------------------------------------------------------------------- 
component MAGNITUDE_COMPARATOR_1 is port (
 	a	 			: in  std_logic;
	b	 			: in  std_logic;
	output_data : out std_logic_vector(2 downto 0)
); 
end component;

component MAGNITUDE_COMPARATOR_4 is port (
 	A 				: in std_logic_vector(2 downto 0);
	B 				: in std_logic_vector(2 downto 0);
	C 				: in std_logic_vector(2 downto 0);
	D 				: in std_logic_vector(2 downto 0);
	output_data : out std_logic_vector(2 downto 0)
); 

end component;
------------------------------------------------------------------
	
	
-- Signals used

signal inter_0 : std_logic_vector(2 downto 0);
signal inter_1 : std_logic_vector(2 downto 0);
signal inter_2 : std_logic_vector(2 downto 0);
signal inter_3 : std_logic_vector(2 downto 0);

-- Component hookup

begin

-- Compare each bit individually
INST1: 	MAGNITUDE_COMPARATOR_1 port map(A(3),B(3), inter_3); 
INST2: 	MAGNITUDE_COMPARATOR_1 port map(A(2),B(2), inter_2); 
INST3: 	MAGNITUDE_COMPARATOR_1 port map(A(1),B(1), inter_1);
INST4: 	MAGNITUDE_COMPARATOR_1 port map(A(0),B(0), inter_0); 

-- Compare all bits in order of significance
INST5: 	MAGNITUDE_COMPARATOR_4 port map(inter_3, inter_2, inter_1, inter_0, output_data); 
	
end structural;