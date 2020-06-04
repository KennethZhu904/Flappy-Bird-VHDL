library IEEE;
use IEEE.std_logic_1164.all;

entity score_incr_seg7 is 
  port (score_incr : in std_logic;
		  leds : out std_logic_vector(7 downto 0));	
end entity score_incr_seg7;

architecture behaviour of score_incr_seg7 is
  begin
    process(score_incr)
      begin
        case score_incr is    --abcdefgDP--
			 when '0' => leds <= "11000000"; --0
			 when '1' => leds <= "11111001"; --1
		  end case;
	 end process;
end behaviour;