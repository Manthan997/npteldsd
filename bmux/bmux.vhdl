library ieee;
use ieee.std_logic_1164.all;

--entity 
entity bmux is 
	port(
		A,B,S : in std_logic;-- define it as a bit to avoid error 
		Y : out std_logic
	);
end entity bmux;

--architecture
architecture arch of bmux is
 -- any signals go here
begin --for arch
--processes starts here
	process(S, A, B) -- right hand side variables of assignments gets in sentivity list
	begin --for process
		case S is 
			when '0' =>
				Y <= A;
			when others =>
				Y <= B;
			--when others => --fail safe case for anything else
				--null;
				-- there are other 7 values in stl_logic
				
		end case;
	end process;

end arch;