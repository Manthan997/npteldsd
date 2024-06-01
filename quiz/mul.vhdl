library ieee;
	use ieee.std_logic_1164.all;
library work;
	use work.all;
	
--define entity 
entity mul is
	port( A3,A2,A1,A0,B2,B1,B0: in std_logic; M6,M5,M4,M3,M2,M1,M0: out std_logic );
	end entity mul;
	
--arch
architecture arch of mul is
	--component decleration
  
  component AND_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component AND_2;	
  
  component fadder is
	port( A,B,PC: in std_logic; S,C: out std_logic );
	end component fadder;
	
	component hadder is
	port( A,B: in std_logic; S,C: out std_logic );
	end component hadder;
	 
  
	--signal intermediates
	signal  P11,P12,P21,P22,P23,P31,P32,P33,P41,P42,P5, PC1, SH1, PC2A, PC2B, IS1, PC3A, PC3B, IS2, PC4A, PC4B: std_logic ;
	
	
begin	
	--acrh with port mapping
	
	--and gate is 1 bit multiplier...
	inst1: AND_2 port map (A=>A0, B=>B0, Y=>M0);
	inst2: AND_2 port map (A=>A0, B=>B1, Y=>P11);
	inst3: AND_2 port map (A=>A0, B=>B2, Y=>P21);
	inst4: AND_2 port map (A=>A1, B=>B0, Y=>P12);
	inst5: AND_2 port map (A=>A1, B=>B1, Y=>P22);
	inst6: AND_2 port map (A=>A1, B=>B2, Y=>P31);
	inst7: AND_2 port map (A=>A2, B=>B0, Y=>P23);
	inst8: AND_2 port map (A=>A2, B=>B1, Y=>P32);
	inst9: AND_2 port map (A=>A2, B=>B2, Y=>P41);
	inst10: AND_2 port map (A=>A3, B=>B0, Y=>P33);
	inst11: AND_2 port map (A=>A3, B=>B1, Y=>P42);
	inst12: AND_2 port map (A=>A3, B=>B2, Y=>P5);
	
	--ADDER REGION [FULL AND HALF USED]
	inst13: hadder port map (A=>P11, B=>P12, S=>M1, C=>PC1);
	
	inst14: fadder port map (A=>P21, B=>P22, PC=>PC1, S=>SH1, C=>PC2A);
	inst15: hadder port map (A=>SH1, B=>P23, S=>M2, C=>PC2B);
	--ADD PC2A N PC2B AS INDIVIDUAL BITS IN NEXT CALC
	--inst14: hadder port map (A=>CH1, B=>IC1, S=>PC2A, C=>PC2B); IGNORE
	
	inst16: fadder port map (A=>P31, B=>P32, PC=>PC2A, S=>IS1, C=>PC3A);
	inst17: fadder port map (A=>P33, B=>IS1, PC=>PC2B, S=>M3, C=>PC3B);
	
	inst18: fadder port map (A=>P41, B=>P42, PC=>PC3A, S=>IS2, C=>PC4A);
	inst19: hadder port map (A=>PC3B, B=>IS2, S=>M4, C=>PC4B);
	
	inst20: fadder port map (A=>P5, B=>PC4A, PC=>PC4B, S=>M5, C=>M6);
	--inst14: hadder port map (A=>P5, B=>PC4, S=>M5, C=>M6);
	
	
end arch;