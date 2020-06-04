library IEEE; 
use IEEE.std_logic_1164.all; 
use IEEE.std_logic_unsigned.all; 
use IEEE.numeric_std.ALL;


entity Massive_Counter is
  
port( Clk,Enable: in std_logic; 
    Q_Out, Q_Out1: out std_logic_vector(3 downto 0)); 
end entity Massive_Counter; 


architecture structural of Massive_Counter is

component BCD_Counter is
  
port( Clk,Enable : in std_logic; 
    Q_Out: out std_logic_vector(3 downto 0)); 
end component BCD_counter; 


signal Enable_tens: std_logic; 
signal Q_tens, Q_ones: std_logic_vector (3 downto 0); 

begin 
  
  BCD_ones: BCD_counter
    port map (Clk=>Clk, Enable=>Enable, Q_Out=> Q_ones); 
      
      
   BCD_tens: BCD_counter
    port map (Clk=>Clk, Enable=> Enable_tens, Q_Out=>Q_tens);
     
    

  Enable_tens<= '1' when Q_ones="1001" and Enable='1' else
                '0'; 
  Q_Out<=Q_tens; 
  Q_Out1<= Q_ones;
  
    
  end architecture structural; 
     

  
  

  
  
