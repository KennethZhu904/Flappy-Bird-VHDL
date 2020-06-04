-- This file is responsible for displaying all of the visual aspects of the game on the VGA screen.

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_SIGNED.all;


ENTITY bird IS
	PORT
		(
		--Global Signals--
		SIGNAL clk, vert_sync, left_click, sw0, sw2					: IN std_logic;
		SIGNAL pixel_row, pixel_column									: IN std_logic_vector(9 DOWNTO 0);
		SIGNAL pipe_size 														: IN std_logic_vector(9 DOWNTO 0);
		SIGNAL pipe1_x_pos, pipe1_top_y_pos, pipe1_bottom_y_pos 	: IN std_logic_vector(9 DOWNTO 0);
		SIGNAL pipe2_x_pos, pipe2_top_y_pos, pipe2_bottom_y_pos 	: IN std_logic_vector(9 DOWNTO 0);
		SIGNAL pipe3_x_pos, pipe3_top_y_pos, pipe3_bottom_y_pos 	: IN std_logic_vector(9 DOWNTO 0);
		--Bird Signals--
		SIGNAL bird_on, bird_dead, reset_score 										: OUT std_logic
		);		
END bird;

architecture behavior of bird is

------ Signals associated with the bird ------
SIGNAL bird_size, bird_y_pos, bird_y_motion		: std_logic_vector(9 DOWNTO 0);
SIGNAL bird_x_pos											: std_logic_vector(10 DOWNTO 0);
SIGNAL temp_bird_dead									: std_logic := '0';
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
	-- Game should only run if not paused and the bird is alive
	if (sw0 = '0' and temp_bird_dead = '0' and sw2 = '1') then
		reset_score <= '0';
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
			bird_dead <= '1';
			temp_bird_dead <= '1';
			reset_score <= '1';
		else
			bird_dead <= '0';
			temp_bird_dead <= '0';
		end if;
		--Bird Should Die when it touches a pipe--
		if 	(	(conv_integer(pipe1_x_pos) >= 320 and conv_integer(pipe1_x_pos + pipe_size) <= 320 and (pipe1_top_y_pos > bird_y_pos or pipe1_bottom_y_pos < bird_y_pos))
				or	(conv_integer(pipe2_x_pos) >= 320 and conv_integer(pipe2_x_pos + pipe_size) <= 320 and (pipe2_top_y_pos > bird_y_pos or pipe2_bottom_y_pos < bird_y_pos))
				or (conv_integer(pipe3_x_pos) >= 320 and conv_integer(pipe3_x_pos + pipe_size) <= 320 and (pipe3_top_y_pos > bird_y_pos or pipe3_bottom_y_pos < bird_y_pos))
				) then
				bird_dead <= '1';
				temp_bird_dead <= '1';
				reset_score <= '1';
		else
				bird_dead <= '0';
				temp_bird_dead <= '0';
		end if;
	-- Reset game when user goes back to the main menu and then starts a new game
	elsif (temp_bird_dead = '1' and sw2 = '0') then
		bird_dead <= '0';
		temp_bird_dead <= '0';
		bird_y_pos <= CONV_STD_LOGIC_VECTOR(240,10);
		reset_score <= '1';
	end if;
--	end if;
end process Move_Bird;

-- when game over, if sw2 high, wait for a bit then start game again. otherwise flick sw2 low and go back to main menu
END behavior;