LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_SIGNED.all;


ENTITY bird IS
	PORT
		(SIGNAL clk, vert_sync, left_click	: IN std_logic;
		SIGNAL pixel_row, pixel_column		: IN std_logic_vector(9 DOWNTO 0); 
		SIGNAL red, green, blue, bird_dead	: OUT std_logic);		
END bird;

architecture behavior of bird is

SIGNAL bird_on										: std_logic;
SIGNAL size, bird_y_pos, bird_y_motion		: std_logic_vector(9 DOWNTO 0);
SiGNAL bird_x_pos									: std_logic_vector(10 DOWNTO 0);

BEGIN           

size <= CONV_STD_LOGIC_VECTOR(8,10);
-- ball_x_pos and ball_y_pos show the (x,y) for the centre of ball
bird_x_pos <= CONV_STD_LOGIC_VECTOR(320,11);

bird_on <= '1' when ( ('0' & bird_x_pos <= '0' & pixel_column + size) and ('0' & pixel_column <= '0' & bird_x_pos + size) 	-- x_pos - size <= pixel_column <= x_pos + size
					and ('0' & bird_y_pos <= pixel_row + size) and ('0' & pixel_row <= bird_y_pos + size) )  else	-- y_pos - size <= pixel_row <= y_pos + size
			  '0';


-- Colours for pixel data on video signal
Red <= '1';
Green <= '1' and (not bird_on);
Blue <= not bird_on;

--------------- BIRD CONSTRUCTOR ---------------



--------------- BIRD MECHANICS ---------------

Move_Bird: process (vert_sync, left_click)  	
begin
	-- Move bird once every vertical sync
	if (rising_edge(vert_sync)) then
		-- Let the bird freefall when there is no left click
		bird_y_motion <= CONV_STD_LOGIC_VECTOR(4,10);
		-- Move the bird up on a left click 
		if (left_click = '1' and (bird_y_pos > size)) then
			bird_y_motion <= - CONV_STD_LOGIC_VECTOR(6,10);
		-- The bird will land at the bottom of the screen if the mouse is not being left clicked
		elsif ('0' & bird_y_pos >= CONV_STD_LOGIC_VECTOR(479,10) - size) then
			bird_y_motion <= "0000000000";
		end if;
		-- Compute next bird Y position
		bird_y_pos <= bird_y_pos + bird_y_motion;
	end if;
	-- Flag when the bird lands at the bottom of the screen.
	if (bird_y_pos = CONV_STD_LOGIC_VECTOR(479,10) - size) then
		bird_dead <= '1';
	end if;
end process Move_Bird;

END behavior;

