library ieee;
use ieee.std_logic_1164.all;

entity mux2x1 is
	port (A, B, S: in std_logic; Y: out std_logic);
end entity mux2x1;

architecture arch of mux2x1 is
--declare all components which being used
  component INVERTER is
   port (A: in std_logic; Y: out std_logic);
  end component INVERTER;

  component AND_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component AND_2;
 
  component OR_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component OR_2;

--define intermediate signals used
  signal P, Q, R: std_logic;
  
begin
   --define gates?
	inst1: AND_2 port map (A=>A, B=>P, Y=>Q);
	inst2: AND_2 port map (A=>B, B=>S, Y=>R);
	inst3: INVERTER port map (A=>S, Y=>P);
	inst4: OR_2 port map (A=>Q, B=>R, Y=>Y);
	
end arch;