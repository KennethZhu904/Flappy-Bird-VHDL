-- This file is responsible for displaying all of the visual aspects of the game on the VGA screen.

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_SIGNED.all;


ENTITY bird IS
	PORT
		(
		--Global Signals--
		SIGNAL clk, vert_sync, left_click, sw0							: IN std_logic;
		SIGNAL pixel_row, pixel_column									: IN std_logic_vector(9 DOWNTO 0);
		SIGNAL pipe_size 														: IN std_logic_vector(9 DOWNTO 0);
		SIGNAL pipe1_x_pos, pipe1_top_y_pos, pipe1_bottom_y_pos 	: IN std_logic_vector(9 DOWNTO 0);
		SIGNAL pipe2_x_pos, pipe2_top_y_pos, pipe2_bottom_y_pos 	: IN std_logic_vector(9 DOWNTO 0);
		SIGNAL pipe3_x_pos, pipe3_top_y_pos, pipe3_bottom_y_pos 	: IN std_logic_vector(9 DOWNTO 0);
		SIGNAL pipe4_x_pos, pipe4_top_y_pos, pipe4_bottom_y_pos 	: IN std_logic_vector(9 DOWNTO 0);
		SIGNAL pipe5_x_pos, pipe5_top_y_pos, pipe5_bottom_y_pos 	: IN std_logic_vector(9 DOWNTO 0);
		--Bird Signals--
		SIGNAL bird_on, bird_dead, score_incr 										: OUT std_logic
		);		
END bird;

architecture behavior of bird is

------ Signals associated with the bird ------
SIGNAL bird_size, bird_y_pos, bird_y_motion		: std_logic_vector(9 DOWNTO 0);
SIGNAL bird_x_pos											: std_logic_vector(10 DOWNTO 0);
BEGIN           

------ Initialisation of the bird ------
bird_size <= CONV_STD_LOGIC_VECTOR(8,10);
bird_x_pos <= CONV_STD_LOGIC_VECTOR(320,11);

------ Display the bird on the VGA screen ------
bird_on <= '1' when ( ('0' & bird_x_pos <= '0' & pixel_column + bird_size) and ('0' & pixel_column <= '0' & bird_x_pos + bird_size) 	-- x_pos - bird_size <= pixel_column <= x_pos + bird_size
					and ('0' & bird_y_pos <= pixel_row + bird_size) and ('0' & pixel_row <= bird_y_pos + bird_size) )  else	-- y_pos - bird_size <= pixel_row <= y_pos + bird_size
			  '0';

------ Bird mechanics ------
Move_Bird: process (vert_sync, left_click)  	
begin
	-- Check if game should be paused --
	if (sw0 = '0') then
		-- Move bird once every vertical sync
		if (rising_edge(vert_sync)) then
			-- Let the bird freefall when there is no left click
			bird_y_motion <= CONV_STD_LOGIC_VECTOR(3,10);
			-- Move the bird up on a left click 
			if (left_click = '1' and (bird_y_pos > bird_size)) then
				bird_y_motion <= - CONV_STD_LOGIC_VECTOR(6,10);
			-- The bird will land at the bottom of the screen if the mouse is not being left clicked
			elsif ('0' & bird_y_pos >= CONV_STD_LOGIC_VECTOR(479,10) - bird_size) then
				bird_y_motion <= "0000000000";
			end if;
			-- Compute next bird Y position
			bird_y_pos <= bird_y_pos + bird_y_motion;
		end if;
		-- Flag when the bird lands at the bottom of the screen.
		if ('0' & bird_y_pos >= CONV_STD_LOGIC_VECTOR(479,10) - bird_size) then
			bird_dead <= '1'; -------------------- BIRD DIES WHEN IT HITS THE GROUND BUT NOT WHEN IT HITS THE PIPES --------------------
		else
			bird_dead <= '0';
		end if;
		-- Increment the score when the bird passes through a pipe.
--		if ((pipe_x_pos <= bird_x_pos and bird_x_pos <= pipe_x_pos + pipe_size) and (bird_y_pos > pipe_top_y_pos and bird_y_pos < pipe_bottom_y_pos)) then
--			score_incr <= '1';
--		else
--			score_incr <= '0';
--		end if;
	end if;
end process Move_Bird;

END behavior;