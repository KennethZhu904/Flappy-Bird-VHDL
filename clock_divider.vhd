library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity clk_div is
  port (Clk : in std_logic;
        Clk_1hz : out std_logic);
end entity clk_div;

architecture behaviour of clk_div is
  signal count: integer := 0;
  signal Clk1hz_temp: std_logic := '0';
begin
  process(Clk)
    begin
      if (rising_edge(Clk)) then
        count <= count + 1;
        if (count > 499999) then
          count <= 0;
          Clk1hz_temp <= NOT Clk1hz_temp;
        end if;
      end if;
  end process;
  Clk_1hz <= Clk1hz_temp;
end behaviour;    