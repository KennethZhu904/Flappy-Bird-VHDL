library IEEE; 
use IEEE.std_logic_1164.all; 
use IEEE.std_logic_unsigned.all; 
use IEEE.numeric_std.ALL;

entity BCD_counter is
  
port( Clk,Enable,Init: in std_logic; 
    Q_Out: out std_logic_vector(3 downto 0)); 
end entity BCD_counter; 


architecture behaviour of BCD_counter is
begin
  process(Clk)
    variable temp_QOut1: std_logic_vector(3 downto 0):="0000";
  begin
  ---If the clock event and clock 1
  ---if init =1 
  ---case Direction --if direction is 1 to 0, if direction initalise 0
  -- elsif if enable=1 
  -- case Direction  direction 0- count; 1 count down
  --end if 
  --end if
  
 
 if(Clk='1' and Clk'event) then
	if (Init='0') then
		
		temp_QOut1:="0000"; Q_Out<=temp_Qout1;
	elsif (Enable='0') then
		 
		if (temp_QOut1<"1001") then
				temp_QOut1:=temp_QOut1+"0001";
		else
        temp_QOut1:="0000"; 
		end if;
		Q_Out<=temp_Qout1;
			
		
		  
	end if;
end if; 
		 
  end process; 
end architecture behaviour; 
