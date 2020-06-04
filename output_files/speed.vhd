LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;
USE ieee.numeric_std.ALL;

ENTITY speed IS
	PORT
		(
		SIGNAL sw1, clk, score_incr, bird_dead : IN std_logic;
		SIGNAL pipe_speed : OUT integer
		);
END speed;

architecture bhv of speed is
SIGNAL score : integer := 0;
SIGNAL t_pipe_speed : integer := 75000;
begin
	process (clk)
	begin
		if (sw1 = '1') then
			if (score_incr = '1') then
				score <= score + 1;
			end if;
			if (score >= 75) then
				t_pipe_speed <= 30000;
			elsif (score >= 50) then
				t_pipe_speed <= 40000;
			elsif (score >= 25) then
				t_pipe_speed <= 50000;
			else
				t_pipe_speed <= 75000;
			end if;
			if (bird_dead = '1') then
				score <= 0;
			end if;
		end if;
	end process;
pipe_speed <= t_pipe_speed;
end bhv;