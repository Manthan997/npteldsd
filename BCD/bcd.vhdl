library ieee;
  use ieee.std_logic_1164.all;	-- standard unresolved logic UX01ZWLH-
  use ieee.numeric_std.all;       -- for the signed, unsigned types and arithmetic ops
  
entity bcd is
	port(
		A,B 	: in std_logic_vector(3 downto 0);
		Y		: out std_logic_vector(4 downto 0)
	);
end entity bcd;

--arch
architecture arch of bcd is

--signal
signal temp : unsigned(4 downto 0);
signal output : unsigned(4 downto 0);
signal six : unsigned(4 downto 0) := "00110";
signal nine : unsigned(4 downto 0) := "01001";

begin
	process(A,B, temp, output)
	begin
		temp <= (('0' & unsigned(A))+('0' & unsigned(B)));
		--now tem has 4 bit binary in unsigned form?
		
		if (temp > nine ) then
			output <= (temp + six);
			
		else
			output <= temp;
		end if;
	
		Y <= std_logic_vector(output);
	end process;
end arch;
