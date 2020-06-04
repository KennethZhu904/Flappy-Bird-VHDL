LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;
USE ieee.numeric_std.ALL;

-- increment score from pipes rather than bird. socre will increment when pipes move past 320

ENTITY pipes IS
	PORT
		(
		SIGNAL clk, sw0, sw1, sw2, bird_dead	: IN std_logic;
		SIGNAL pixel_row, pixel_column			: IN std_logic_vector(9 DOWNTO 0);
		SIGNAL Qones, Qtens							: IN std_logic_vector(3 DOWNTO 0);
		SIGNAL RNG										: IN std_LOGIC_vector(15 DOWNTO 0);
		SIGNAL q_pipe_size : OUT std_logic_vector(9 DOWNTO 0);
		SIGNAL q_pipe1_x_pos, q_pipe1_top_y_pos, q_pipe1_bottom_y_pos : OUT std_logic_vector(9 DOWNTO 0);
		SIGNAL q_pipe2_x_pos, q_pipe2_top_y_pos, q_pipe2_bottom_y_pos : OUT std_logic_vector(9 DOWNTO 0);
		SIGNAL q_pipe3_x_pos, q_pipe3_top_y_pos, q_pipe3_bottom_y_pos : OUT std_logic_vector(9 DOWNTO 0);
		SIGNAL pipe_top, pipe_bottom, score_incr		: OUT std_logic
		);
END pipes;

architecture behavior of pipes is

SIGNAL pipe_size 								: std_logic_vector(9 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(20,10); 
 
SIGNAL pipe1_top_y_pos 						: std_logic_vector(9 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(200,10);
SIGNAL pipe1_bottom_y_pos 					: std_logic_vector(9 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(350,10);
SIGNAL pipe1_x_pos 							: std_logic_vector(9 DOWNTO 0	) := CONV_STD_LOGIC_VECTOR(213,10);

SIGNAL pipe2_top_y_pos 						: std_logic_vector(9 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(200,10);
SIGNAL pipe2_bottom_y_pos 					: std_logic_vector(9 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(350,10);
SIGNAL pipe2_x_pos 							: std_logic_vector(9 DOWNTO 0	) := CONV_STD_LOGIC_VECTOR(426,10);

SIGNAL pipe3_top_y_pos 						: std_logic_vector(9 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(200,10);
SIGNAL pipe3_bottom_y_pos 					: std_logic_vector(9 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(350,10);
SIGNAL pipe3_x_pos 							: std_logic_vector(9 DOWNTO 0	) := CONV_STD_LOGIC_VECTOR(640,10);

SIGNAL pipe_speed								: integer := 750000;

BEGIN

pipe_move: process(clk)
variable clk_cnt 																				: integer := 1;
variable clk_t 																				: STD_LOGIC := '0';
variable position1, position2, position3, position4, position5, position6 	: integer;
variable RNG_int : integer;
variable next_pipe_top, next_pipe_bottom : std_logic_vector(9 DOWNTO 0);
begin
	-- Game should only run if not paused or the bird is alive --
	if (sw0 = '0' and bird_dead = '0' and sw2 = '1') then
		-- we need the game to reset here too so that the user can go from game over to main menu to new game
		if (clk'event and clk = '1') then
			clk_cnt := clk_cnt + 1;
		--Pipe Movement Occurs With Divided Clock--
			if (clk_cnt = pipe_speed) then
				clk_cnt := 1;
				clk_t := NOT(clk_t);
		--Get Pipe Position--
				position1 := conv_integer(pipe1_x_pos);
				position2 := conv_integer(pipe2_x_pos);
				position3 := conv_integer(pipe3_x_pos);
		--Get RNG--
				RNG_int := conv_integer('0' & RNG(3 DOWNTO 0));
				if (RNG_int >= 0 and RNG_int < 4) then
					next_pipe_top := CONV_STD_LOGIC_VECTOR(50,10);
					next_pipe_bottom := CONV_STD_LOGIC_VECTOR(200, 10);
				elsif (RNG_int >= 4 and RNG_int < 8) then
					next_pipe_top := CONV_STD_LOGIC_VECTOR(150,10);
					next_pipe_bottom := CONV_STD_LOGIC_VECTOR(300, 10);
				elsif (RNG_int >= 8 and RNG_int < 12) then
					next_pipe_top := CONV_STD_LOGIC_VECTOR(250,10);
					next_pipe_bottom := CONV_STD_LOGIC_VECTOR(400, 10);
				else
					next_pipe_top := CONV_STD_LOGIC_VECTOR(350,10);
					next_pipe_bottom := CONV_STD_LOGIC_VECTOR(500, 10);
				end if;
		-- Move Pipes--
		-- If Pipe reaches end restart with RNG position --
				if (position1 <= 0) then
					position1 := 640;
					pipe1_top_y_pos <= next_pipe_top;
					pipe1_bottom_y_pos <= next_pipe_bottom;
				else
					position1 := position1 - 1;
				end if;
				pipe1_x_pos <= CONV_STD_LOGIC_VECTOR(position1, 10);
				
				if (position2 <= 0) then
					position2 := 640;
					pipe2_top_y_pos <= next_pipe_top;
					pipe2_bottom_y_pos <= next_pipe_bottom;
				else
					position2 := position2 - 1;
				end if;
				pipe2_x_pos <= CONV_STD_LOGIC_VECTOR(position2, 10);
				
				if (position3 <= 0) then
					position3 := 640;
					pipe3_top_y_pos <= next_pipe_top;
					pipe3_bottom_y_pos <= next_pipe_bottom;
				else
					position3 := position3 - 1;
				end if;
				pipe3_x_pos <= CONV_STD_LOGIC_VECTOR(position3, 10);
		--If Pipe Passes Bird, Increase Score--
				if (position1 = 320 or position2 = 320 or position3 = 320) then
					score_incr <= '1';
				else
					score_incr <= '0';
				end if;
			end if;
		end if;
		if (sw1 = '1') then
			-- Speed adjustment for the levels of the games	--
			-- Score: 0-25 (Level 1) - Game is initialised at the speed for this level
			if (Qtens = "0010" and Qones = "0110") then -- Score: 26-50 (Level 2)
				pipe_speed <= 500000;
			elsif (Qtens = "0101" and Qones = "0001") then -- Score: 51-75 (Level 3)
				pipe_speed <= 400000;
			elsif (Qtens = "0111" and Qones = "0110") then -- Score: 76-99 (Level 4)
				pipe_speed <= 300000;
			end if;
		end if;
	end if;
--	if (bird_dead = '1' and sw2 = '1') then
--			--implement a counter so that  it counts for a bit
--			--set bird values to default
--	end if;
	-- when game over, if sw2 high, wait for a bit then start game again. otherwise flick sw2 low and go back to main menu
end process;
	
	
pipe_top <= '1' when ( ((pipe1_x_pos <= pixel_column + pipe_size) and (pixel_column <= pipe1_x_pos + pipe_size)
					 and (pixel_row <= pipe1_top_y_pos + pipe_size))
					 
					 or ((pipe2_x_pos <= pixel_column + pipe_size) and (pixel_column <= pipe2_x_pos + pipe_size)
					 and (pixel_row <= pipe2_top_y_pos + pipe_size))
					 
					 or ((pipe3_x_pos <= pixel_column + pipe_size) and (pixel_column <= pipe3_x_pos + pipe_size)
					 and (pixel_row <= pipe3_top_y_pos + pipe_size))
					 
					 )

					 else '0';
pipe_bottom <= '1' when (( (pipe1_x_pos <= pixel_column + pipe_size) and (pixel_column <= pipe1_x_pos + pipe_size)
					 and (pipe1_bottom_y_pos <= pixel_row +pipe_size))
					 
					 or ((pipe2_x_pos <= pixel_column + pipe_size) and (pixel_column <= pipe2_x_pos + pipe_size)
					 and (pipe2_bottom_y_pos <= pixel_row +pipe_size))
					 
					 or ((pipe3_x_pos <= pixel_column + pipe_size) and (pixel_column <= pipe3_x_pos + pipe_size)
					 and (pipe3_bottom_y_pos <= pixel_row +pipe_size))
					 
					 )
 
					 else '0';

q_pipe_size <= pipe_size;
					 
q_pipe1_top_y_pos <= pipe1_top_y_pos;
q_pipe1_bottom_y_pos <= pipe1_bottom_y_pos;
q_pipe1_x_pos <= pipe1_x_pos;

q_pipe2_top_y_pos <= pipe2_top_y_pos;
q_pipe2_bottom_y_pos <= pipe2_bottom_y_pos;
q_pipe2_x_pos <= pipe2_x_pos;

q_pipe3_top_y_pos <= pipe3_top_y_pos;
q_pipe3_bottom_y_pos <= pipe3_bottom_y_pos;
q_pipe3_x_pos <= pipe3_x_pos;

END behavior;
