-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(1 downto 0);
       	output_vector: out std_logic_vector(0 downto 0));
end entity;

architecture DutWrap of DUT is
	-- Instantiate your own top Module component in place of ALU_1
	
component counter is
	PORT(   
--        d       : IN    INTEGER RANGE 0 TO 255;
          clk     : IN    std_logic;
          rst     : IN    std_logic;
--        load    : IN    BIT;
--        up_down : IN    BIT;
--          qd      : OUT   INTEGER RANGE 0 TO 255;
		    flag		: OUT		std_logic);
end component counter;
	
	
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: counter port map ( clk => input_vector(1),
												rst => input_vector(0),
											flag => output_vector(0));

end DutWrap;

