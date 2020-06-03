LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_SIGNED.all;

ENTITY final_display IS
	PORT
		( 
		SIGNAL bird, pipe_top, pipe_bot : IN std_logic;
		SIGNAL red, green, blue : OUT std_logic
		);		
END final_display;

architecture behavior of final_display is
begin

Red <= bird;
Green <= (not bird) and (not pipe_top) and (not pipe_bot);
Blue <= (not bird) and (not pipe_top) and (not pipe_bot);
end behavior;