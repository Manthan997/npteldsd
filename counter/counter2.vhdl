library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--
entity counter is
	port(
		clk, rst : in std_logic ;
		ovf 		: out std_logic
	);
end entity counter;
--
--library ieee;
--use ieee.std_logic_1164.all;
--use ieee.numeric_std.all;
--
--architecture arch of counter is
--
--signal count : std_logic_vector(26 downto 0);
--signal zero_val : std_logic_vector(26 downto 0):="000000000000000000000000000";
--
--begin
--
--process(clk, rst)
--begin
--	ovf <= '0';
--	if(clk='1' and clk' event) then
--		--rising edges only
--		count <=std_logic_vector(unsigned(count)+ 1 );
--			if (rst = '1') then
--				count <= zero_val;
--			end if;
--	end if;
--	
--	if count <= "000000000001100001101010000" then
--		ovf <= '1';
----	elsif (unsigned(count) > 50500) then
----		WAIT until (rst = '1');
----	else
----		ovf <= '0';
--	end if;
--	
--	
--end process;
--
----kill_proc: process()
----
----	if (clk > 50500) then
----		WAIT;
----	else
----		ovf <= '0';
----	end if;
----
----end process;
--
--end arch;

architecture arch of counter is


--signal reset      : STD_LOGIC             := '0'; -- disabled reset; TODO move this signal to port

signal timer_us   : UNSIGNED(27 downto 0) := (others => '0');
--signal timer_tick : STD_LOGIC;

begin

process(clk)
begin
  if rising_edge(clk) then
    if (rst = '1') then
      timer_us <= (others => '0');
    else
      timer_us <= timer_us + 1;
    end if;
  end if;

if (timer_us > unsigned(50000), 28) then
ovf <= '1';
end if;
end process;
end arch;