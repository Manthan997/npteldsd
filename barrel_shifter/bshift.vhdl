library ieee;
use ieee.std_logic_1164.all;
library work;
use work.all;

entity bshift is
	post(
		A : in std_logic_vector(7 downto 0);
		B : in std_logic_vector(2 downto 0);
		L : in std_logic;
		Y : out std_logic_vector(7 downto 0)
	);
end entity bshift;

architecture arch of bshift is 
-- external components
	component mux2X1 is
		port (
				A, B, S: in std_logic;
				Y: out std_logic
				);
	end component mux2X1;

-- signal


begin

rev : for i in 0 to 7 
mux port map(I(0) => a(i), I(1) => a(7-i), S => L, Y => s(i));
end generate ;

n4_bit : for i in 0 to 7 
generatelsb: if i < 4 generate
b2: mux port map(I(0) => a(i), I(1) => a(i+4), S => b(2), Y => s(i));
end generate lsb;
msb: if i > 3 generate
b2: mux port map(I(0) => a(i), I(1) => '0', S => b(2), Y => s(i));
end generate msb;
end generate ;

n2_bit : for i in 0 to 7 
generatelsb: if i < 6 generate
b1: mux port map(I(0) => a(i), I(1) => a(i+2), S => b(2), Y => s(i));
end generate lsb;
msb: if i > 5 generate
b2: mux port map(I(0) => a(i), I(1) => '0', S => b(2), Y => s(i));
end generate msb;
end generate ;

n1_bit : for i in 0 to 7 
generatelsb: if i < 7 generate
b2: mux port map(I(0) => a(i), I(1) => a(i+1), S => b(2), Y => s(i));
end generate lsb;
msb: if i > 6 generate
b2: mux port map(I(0) => a(i), I(1) => '0', S => b(2), Y => s(i));
end generate msb;
end generate ;

rev2 : for i in 0 to 7 
mux port map(I(0) => a(i), I(1) => a(7-i), S => L, Y => s(i));
end generate ;

end arch;


--TO-DO
--1. intermediate signal naming
--2. change names of labels
--3. change the port names in boilerplate code