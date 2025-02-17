library ieee;
	use ieee.std_logic_1164.all;
library work;
	use work.Gates.all;
	
--define entity 
entity fadder is
	port( A,B,PC: in std_logic; S,C: out std_logic );
	end entity ;
--arch
architecture arch of fadder is
	--component decleration
  component XOR_2 is
   port (A, B: in std_logic; Y: out std_logic);
	end component XOR_2;
	
  component AND_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component AND_2;	
  
  component OR_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component OR_2;  
  
	--signal intermediates
	signal P,Q,R,SI : std_logic ;
	
begin	
	--acrh with port mapping
	
	-- 3 pin xor from 2 2 pin xor [all for sum]
	inst1: XOR_2 port map (A=>A, B=>B, Y=>P);
	inst2: XOR_2 port map (A=>P, B=>PC, Y=>S);
	
	-- a+b>.pc > +(a.b)
	inst3: AND_2 port map (A=>A, B=>B, Y=>Q);
	inst4: OR_2 port map (A=>A, B=>B, Y=>R);
	inst5: AND_2 port map (A=>R, B=>PC, Y=>SI);
	inst6: OR_2 port map (A=>Q, B=>SI, Y=>C);
end arch;