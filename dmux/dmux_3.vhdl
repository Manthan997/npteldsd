library ieee;
use ieee.std_logic_1164.all;
--library work;
--use work.dmux.all;

-- now as you're importing a pre-synthesised rtl map, 
-- you have to use structural architecture here
-- ok good that you made 1bit, make 3 bit in behaviourial..
-- note that for laziness reasons to made demux-> decoder

entity dmux_3 is
	port(
		E: in std_logic;
		s: in std_logic_vector(2 downto 0);
		y: out std_logic_vector(7 downto 0)
	);
end entity dmux_3;


--architecture
architecture arch of dmux_3 is
--components
-- component dmux_1 is
--	port(
--		A, S	: in std_logic;
--		Y1, Y2: out std_logic
--	);	
--	end component dmux_1;
	
	-- signals
	
begin
	process(s,E)
	begin
		if (E = '0') then
			y <= "00000000";
		else 
			case s is
				when "000" =>
					y <= "00000001";
				when "001" =>
					y <= "00000010";
				when "010" =>
					y <= "00000100";
				when "011" =>
					y <= "00001000";
				when "100" =>
					y <= "00010000";
				when "101" =>
					y <= "00100000";
				when "110" =>
					y <= "01000000";
--				when "111" =>
--					y <= "10000000";
				when others =>
					y <= "10000000";
			end case;
		end if;
	end process;
	
end arch;