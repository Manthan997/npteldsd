-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(7 downto 0);
       	output_vector: out std_logic_vector(4 downto 0));
end entity;

architecture DutWrap of DUT is
	-- Instantiate your own top Module component in place of ALU_1
	
component bcd is
	port(
		A,B 	: in std_logic_vector(3 downto 0);
		Y		: out std_logic_vector(4 downto 0)
	);
end component bcd;
	
	
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: bcd port map ( B(3 downto 0) => input_vector(3 downto 0),
										A => input_vector(7 downto 4),
											Y(4 downto 0) => output_vector(4 downto 0));

end DutWrap;

