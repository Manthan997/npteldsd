-- made for trial, not included in dut!!

library ieee;
use ieee.std_logic_1164.all;

--make a packge for 1 bit dmux

package dmux is
	component dmux_1 is
	port(
		A, S	: in std_logic;
		Y1, Y2: out std_logic
	);	
	end component dmux_1;

end package dmux;


-- package entities
library ieee;
use ieee.std_logic_1164.all;

entity dmux_1 is
   port(
		A, S	: in std_logic;
		Y1, Y2: out std_logic
	);
end entity dmux_1;

architecture arch of dmux_1 is

begin  --arch
	process(A, S)
	begin  --process
		if S = '0' then
			Y1 <= A;
		elsif S = others then
			Y2 <= A;
		end if;
	end process;
end arch;
