library IEEE;
use IEEE.std_logic_1164.all;

entity score_seg7 is 
  port (bcd : in std_logic_vector(3 downto 0);
		  leds : out std_logic_vector(7 downto 0));	
end entity score_seg7;

architecture behaviour of score_seg7 is
  begin
    process(bcd)
      begin
        case bcd is             --abcdefgDP--
			 when "0000" => leds <= "11000000"; --0
			 when "0001" => leds <= "11111001"; --1
			 when "0010" => leds <= "10100100"; --2
			 when "0011" => leds <= "10110000"; --3
			 when "0100" => leds <= "10011001"; --4
			 when "0101" => leds <= "10010010"; --5
          when "0110" => leds <= "10000010"; --6
          when "0111" => leds <= "11111000"; --7
          when "1000" => leds <= "10000000"; --8
          when "1001" => leds <= "10010000"; --9   
          when others => leds <= "--------";
--			 when "0000" => leds <= "00000011"; --0
--			 when "0001" => leds <= "10011111"; --1
--			 when "0010" => leds <= "00100101"; --2
--			 when "0011" => leds <= "00001101"; --3
--			 when "0100" => leds <= "10011001"; --4
--			 when "0101" => leds <= "01001001"; --5
--          when "0110" => leds <= "01000001"; --6
--          when "0111" => leds <= "00011111"; --7
--          when "1000" => leds <= "00000001"; --8
--          when "1001" => leds <= "00001001"; --9  
--          when others => leds <= "--------";
        end case;
    end process;
end behaviour;  