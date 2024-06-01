library ieee;
  use ieee.std_logic_1164.all;	
  use ieee.numeric_std.all;
library work;
  use work.all;
  
entity bcdsub is
	port(
		A,B 	: in std_logic_vector(3 downto 0);
		Y 		: out std_logic_vector(4 downto 0)
	);
end entity bcdsub; 


architecture arch of bcdsub is
--components

	component tenscomp is
		port(
			A : in std_logic_vector(3 downto 0);
			Y : out std_logic_vector(3 downto 0)
		);
	end component tenscomp;
	
	component bcd is
		port(
			A,B 	: in std_logic_vector(3 downto 0);
			Y		: out std_logic_vector(4 downto 0)
		);
	end component bcd;
	
--intermediate signals
signal Bcomp: std_logic_vector(3 downto 0);
signal Q: unsigned(4 downto 0);  --considering a carry bit
	
begin

insttc1: tenscomp port map (A=>B , Y=>Bcomp);
 Q <=  ('0' & unsigned(A)) +('0' & unsigned(bcomp));
	-- when Q is >9 carry is found and consider only last part by subtracting 10
	
	if (Q > "1001") then
		-- minus 10 -> ans
		
	else 	--Q< 9 then no need to subtract 
	
	
	end if;
end arch;