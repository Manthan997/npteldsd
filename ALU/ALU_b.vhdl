library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 


entity ALU_b is 
port (A, B: in std_logic_vector (3 downto 0); S: in std_logic_vector (1 downto 0); Y: out std_logic_vector (7 downto 0));
end entity;

architecture behav of ALU_b is 

function sub(A: in std_logic_vector (3 downto 0); B: in std_logic_vector (3 downto 0)) return std_logic_vector is
	-- declare variables
	variable diff: std_logic_vector(7 downto 0):= (others=>'0');
	variable carry: std_logic_vector(4 downto 0):= (others=>'0'); 
	
		begin 
		--calc diff
		for i in 0 to 3 loop
				diff(i)  := ((A(i) xor B(i)) xor carry(i));
				carry(i+1) := ((not A(i) and B(i)) or (b(i) and carry(i)) or (not(a(i)) and carry(i)));
		end loop;
		diff(4):=carry(4);
		diff(5):=carry(4);
		diff(6):=carry(4);
		diff(7):=carry(4);
		return diff;
end sub;

begin 
calc: process(S, A, B)
begin
		case S is
			when "00"=> --A conc B  {std_logic_vector ((unsigned (A)) & (unsigned (B)));}
			Y<= A & B;
			when "01"=> --A - B
			Y<= (sub(A, B));
			when "10"=> -- A XOR B
			Y<="0000" & std_logic_vector(A xor B);
			when "11"=> -- 2 * A= 1 left shift is the same as multiplication by 2 {SHIFT_LEFT(SLV (A))}
			Y<= "000" & A & '0';  
			when others=>null;
		end case;
end process;
end behav;
