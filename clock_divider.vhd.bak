library IEEE; 
use IEEE.std_logic_1164.all; 
use IEEE.std_logic_unsigned.all; 
use IEEE.numeric_std.ALL;


entity LED_Clk_Divider is 
  generic (period : positive := 1000); --In ms
  port (clk: std_logic; 
    clock_out: out std_logic); 
  end LED_Clk_Divider; 
  
  
  architecture behaviour of LED_Clk_Divider is 
  
  --Initialise signals that will execute once.
  signal count: integer:=1;
  signal temp:  std_logic:='0';
  
  begin
    --Will execute repeatly
    process(clk)
      begin
      if (rising_edge(clk)) then 
      count<= count+1; 
      
     -- Count is 250,000 instead of 500,000. This is because
      -- we want half duty cycle. 
      
      -- 250,000 counts will depend on the period. 1sec=250,000 counts
      if (count=25000*period) then 
        temp<=NOT temp; 
        count<=1; 
      end if; 
    end if; 
    
      
    end process; 
    
      clock_out<=temp; 
  end behaviour; 




