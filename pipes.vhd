LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;


ENTITY pipes IS
	PORT
		(
		SIGNAL clk 								: IN std_logic;
		SIGNAL pixel_row, pixel_column	: IN std_logic_vector(9 DOWNTO 0);
		--SIGNAL RNG								: IN std_LOGIC_vector(1 downto 0);
		SIGNAL q_pipe_x_pos, q_pipe_top_y_pos, q_pipe_bottom_y_pos, q_pipe_size : OUT std_logic_vector(9 DOWNTO 0);
		SIGNAL pipe_top, pipe_bottom		: OUT std_logic
		);
END pipes;

architecture behavior of pipes is

SIGNAL pipe_size 								: std_logic_vector(9 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(20,10);  
SIGNAL pipe_top_y_pos 						: std_logic_vector(9 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(200,10);
SIGNAL pipe_bottom_y_pos 					: std_logic_vector(9 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(350,10);
SIGNAL pipe_x_pos 							: std_logic_vector(9 DOWNTO 0	) := CONV_STD_LOGIC_VECTOR(640,10);

BEGIN           

pipe_move: process(clk)
variable clk_cnt 	: integer := 1;
variable clk_t 		: STD_LOGIC := '0';
variable position 	: integer := 0;
begin
	if (clk'event and clk = '1') then
		clk_cnt := clk_cnt + 1;
		if (clk_cnt = 1000000) then
			clk_cnt := 1;
			clk_t := NOT(clk_t);
			if (position > 660) then
				position := 0;
			else
				position := position + 1;
			end if;
		end if;
	end if;
	pipe_x_pos <= CONV_STD_LOGIC_VECTOR((640 - position),10);
end process;
	
pipe_top <= '1' when ( (pipe_x_pos <= pixel_column + pipe_size) and (pixel_column <= pipe_x_pos + pipe_size) 	-- x_pos - pipe_size <= pixel_column <= x_pos + pipe_size
					 and (pixel_row <= pipe_top_y_pos + pipe_size) )  else	-- y_pos - pipe_size <= pixel_row <= y_pos + pipe_size
			'0';
pipe_bottom <= '1' when ( (pipe_x_pos <= pixel_column + pipe_size) and (pixel_column <= pipe_x_pos + pipe_size)
					 and (pipe_bottom_y_pos <= pixel_row +pipe_size)) else
			'0';

q_pipe_top_y_pos <= pipe_top_y_pos;
q_pipe_bottom_y_pos <= pipe_bottom_y_pos;
q_pipe_size <= pipe_size;
q_pipe_x_pos <= pipe_x_pos;
END behavior;
