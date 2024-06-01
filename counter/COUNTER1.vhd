--COUNTER BACKUP VHDL FILE


library ieee;
  use ieee.std_logic_1164.all;	-- standard unresolved logic UX01ZWLH-
  use ieee.numeric_std.all; 

  
--LOL YOUR TRACEFILE WAS INCOMPLETE
--IT HAS 50500 ENTRIES AND HALF ARE CLK=1 ESLE ARE 0
--IN ALL IT'S JUST COUNTING TILL 25250 CLK PULSES

ENTITY counter IS
    PORT(   
--        d       : IN    INTEGER RANGE 0 TO 255;
          clk     : IN    std_logic;
          rst   : IN    std_logic;
--        load    : IN    BIT;
--        up_down : IN    BIT;
--          qd      : OUT   INTEGER RANGE 0 TO 255;
		    flag		: OUT		std_logic);
END counter;

ARCHITECTURE a OF counter IS

--signal qd : INTEGER RANGE 0 TO 5000;
BEGIN
    -- An up/down counter
    PROCESS (clk)
	 
         VARIABLE    cnt       : INTEGER RANGE 0 TO 50500;  --no of flipflops decided here
			
--         VARIABLE    direction : INTEGER;
    BEGIN
        flag <= '0';
            IF (clk'EVENT AND clk = '1') THEN
--                                   
                    cnt := cnt + 1; 
--                 
						 
					end if;
				
						 if cnt = 5000 then
							flag <= '1';
--						 else
--							flag <= '0';
             END IF;
    
    END PROCESS;
END a;