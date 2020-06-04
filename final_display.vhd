LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_SIGNED.all;

ENTITY final_display IS
	PORT
		( 
		SIGNAL bird, pipe_top, pipe_bot, game_text, main_menu, sw2 : IN std_logic;
		SIGNAL red, green, blue : OUT std_logic
		);		
END final_display;

architecture behavior of final_display is
begin
-- Bird = Red, Pipes = Black, Background = Greenish Blue, Text = White
Red <= main_menu when sw2 = '0' else
		 (bird or game_text);
Green <= main_menu when sw2 = '0' else
			(((not bird) and (not pipe_top) and (not pipe_bot)) or game_text);
Blue <= main_menu when sw2 = '0' else
		  (((not bird) and (not pipe_top) and (not pipe_bot)) or game_text);
end behavior;