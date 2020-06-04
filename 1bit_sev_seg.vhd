library IEEE;
use IEEE.std_logic_1164.all;

entity one_bit_seg7 is 
  port (one_bit_input : in std_logic;
		  leds : out std_logic_vector(7 downto 0));	
end entity one_bit_seg7;

architecture behaviour of one_bit_seg7 is
  begin
    process(one_bit_input)
      begin
        case one_bit_input is   --abcdefgDP--
			 when '0' => leds 	<= "11000000"; --0
			 when '1' => leds 	<= "11111001"; --1
		  end case;
	 end process;
end behaviour;