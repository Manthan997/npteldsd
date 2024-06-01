-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(2 downto 0);
       	output_vector: out std_logic_vector(1 downto 0));
end entity;

architecture DutWrap of DUT is
	-- Instantiate your own top Module component in place of ALU_1
	
	
	component fadder is
	port (A, B, PC: in std_logic; S, C: out std_logic);
end component;
	
	
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: fadder port map (A => input_vector(2),
											B => input_vector(1),
											PC=> input_vector(0), 
	S => output_vector(1), C=>output_vector(0));

end DutWrap;

