library ieee;
  use ieee.std_logic_1164.all;	-- standard unresolved logic UX01ZWLH-
  use ieee.numeric_std.all;
  
--tens compliments generator

package tenscomp is
	component tenscomp is
		port(
			A : in std_logic_vector(3 downto 0);
			Y : out std_logic_vector(3 downto 0)
		);
	end component tenscomp;
end package tenscomp;  


--entity
library ieee;
  use ieee.std_logic_1164.all;
  
entity tenscomp is
	port(
		A : in std_logic_vector(3 downto 0);
		Y : out std_logic_vector(3 downto 0)
	);
end entity tenscomp;


--architecture

architecture arch of tenscomp is

begin
	process(A)
	begin
		case A is
			when "0000" =>
				Y <= "1010";
			when "0001" =>
				Y <= "1001";
			when "0010" =>
				Y <= "1000";
			when "0011" =>
				Y <= "0111";
			when "0100" =>
				Y <= "0110";
			when "0101" =>
				Y <= "0101";
			when "0110" =>
				Y <= "0100";
			when "0111" =>
				Y <= "0011";
			when "1000" =>
				Y <= "0010";
			when "1001" =>
				Y <= "0001";
		end case;		
	end process;

end arch;