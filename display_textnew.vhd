LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
USE IEEE.STD_LOGIC_UNSIGNED.all;
USE IEEE.STD_LOGIC_ARITH.all; 


-- Trial to Display the Score

entity text_display is
   port (
     signal clk : in std_logic;
	 signal pixel_row, pixel_column: in std_logic_vector(9 downto 0);
	signal counter_tens, counter_ones: in std_logic_vector(3 downto 0); 
	 signal text_output: out std_logic);
	
end entity text_display;

architecture arch of text_display is
	
	signal temp_char_address: std_logic_vector(5 downto 0) ;
	signal pix_row_font: std_logic_vector(2 downto 0); 
	signal pix_col_font: std_logic_vector (2 downto 0); 
	--signal unsigned_pix_row: unsigned(9 downto 0); 
	--signal unsigned_pix_col: unsigned(9 downto 0); 
	constant character_size: std_logic_vector(5 downto 0):= "001000"; 
	signal text_x_pos, text_y_pos,text_x_pos1 : std_logic_vector(9 downto 0); 
	

	
	component char_rom is 
	port
	(
		character_address	:	in STD_LOGIC_VECTOR (5 DOWNTO 0);
		font_row, font_col:  in STD_LOGIC_VECTOR (2 DOWNTO 0);
		clock				   : 	in STD_LOGIC ;
		rom_mux_output		:	out STD_LOGIC
	);
	end component char_rom;
	
	begin

display: component char_rom
	port map (character_address=>temp_char_address, font_row=>pixel_row(3 downto 1), font_col=> pixel_column(3 downto 1), clock=> clk, rom_mux_output=> text_output); 

	text_x_pos <= CONV_STD_LOGIC_VECTOR(343,10); 
	text_x_pos1<= CONV_STD_LOGIC_VECTOR(327,10);
	text_y_pos <= CONV_STD_LOGIC_VECTOR(88,10);
	
	
	
	
--Change the signals to unsigned	
--unsigned_pix_row<= unsigned(pixel_row); 
--unsigned_pix_col<= unsigned(pixel_column); 

temp_char_address<= "110000" when counter_ones="0000" and ( '0' & text_x_pos<= pixel_column+ character_size) and ('0' & pixel_column <= text_x_pos + character_size)   --number 0
												and ('0' & text_y_pos <= pixel_row +character_size)and ('0' & pixel_row <= text_y_pos +character_size) else
							"110001" when counter_ones="0001" and ( '0' & text_x_pos<= pixel_column+ character_size) and ('0' & pixel_column <= text_x_pos + character_size) --number 1
												and ('0' & text_y_pos <= pixel_row +character_size)and ('0' & pixel_row <= text_y_pos +character_size) else 
							"110010" when counter_ones="0010" and ( '0' & text_x_pos<= pixel_column+ character_size) and ('0' & pixel_column <= text_x_pos + character_size) --number 2
												and ('0' & text_y_pos <= pixel_row +character_size)and ('0' & pixel_row <= text_y_pos +character_size) else
							"110011" when counter_ones="0011" and ( '0' & text_x_pos<= pixel_column+ character_size) and ('0' & pixel_column <= text_x_pos + character_size) --number 3
												and ('0' & text_y_pos <= pixel_row +character_size)and ('0' & pixel_row <= text_y_pos +character_size) else
							"110100" when counter_ones="0100" and ( '0' & text_x_pos<= pixel_column+ character_size) and ('0' & pixel_column <= text_x_pos + character_size) --number 4
												and ('0' & text_y_pos <= pixel_row +character_size)and ('0' & pixel_row <= text_y_pos +character_size) else
							"110101" when counter_ones="0101" and ( '0' & text_x_pos<= pixel_column+ character_size) and ('0' & pixel_column <= text_x_pos + character_size) -- number 5
												and ('0' & text_y_pos <= pixel_row +character_size)and ('0' & pixel_row <= text_y_pos +character_size) else
							"110110" when counter_ones="0110" and ( '0' & text_x_pos<= pixel_column+ character_size) and ('0' & pixel_column <= text_x_pos + character_size) --number 6
												and ('0' & text_y_pos <= pixel_row +character_size)and ('0' & pixel_row <= text_y_pos +character_size) else
							"110111" when counter_ones="0111" and ( '0' & text_x_pos<= pixel_column+ character_size) and ('0' & pixel_column <= text_x_pos + character_size) --number 7
												and ('0' & text_y_pos <= pixel_row +character_size)and ('0' & pixel_row <= text_y_pos +character_size) else
							"111000" when	counter_ones="1000" and ( '0' & text_x_pos<= pixel_column+ character_size) and ('0' & pixel_column <= text_x_pos + character_size) --number 8
												and ('0' & text_y_pos <= pixel_row +character_size)and ('0' & pixel_row <= text_y_pos +character_size) else
							"111001" when counter_ones="1001" and ( '0' & text_x_pos<= pixel_column+ character_size) and ('0' & pixel_column <= text_x_pos + character_size) --number 9
												and ('0' & text_y_pos <= pixel_row +character_size)and ('0' & pixel_row <= text_y_pos +character_size) else   ------ FOR THE TENS DIGIT
							"110000" when counter_tens="0000" and ( '0' & text_x_pos1<= pixel_column+ character_size) and ('0' & pixel_column <= text_x_pos1 + character_size)   --number 0
												and ('0' & text_y_pos <= pixel_row +character_size)and ('0' & pixel_row <= text_y_pos +character_size) else
							"110001" when counter_tens="0001" and ( '0' & text_x_pos1<= pixel_column+ character_size) and ('0' & pixel_column <= text_x_pos1 + character_size) --number 1
												and ('0' & text_y_pos <= pixel_row +character_size)and ('0' & pixel_row <= text_y_pos +character_size) else 
							"110010" when counter_tens="0010" and ( '0' & text_x_pos1<= pixel_column+ character_size) and ('0' & pixel_column <= text_x_pos1 + character_size) --number 2
												and ('0' & text_y_pos <= pixel_row +character_size)and ('0' & pixel_row <= text_y_pos +character_size) else
							"110011" when counter_tens="0011" and ( '0' & text_x_pos1<= pixel_column+ character_size) and ('0' & pixel_column <= text_x_pos1 + character_size) --number 3
												and ('0' & text_y_pos <= pixel_row +character_size)and ('0' & pixel_row <= text_y_pos +character_size) else
							"110100" when counter_tens="0100" and ( '0' & text_x_pos1<= pixel_column+ character_size) and ('0' & pixel_column <= text_x_pos1 + character_size) --number 4
												and ('0' & text_y_pos <= pixel_row +character_size)and ('0' & pixel_row <= text_y_pos +character_size) else
							"110101" when counter_tens="0101" and ( '0' & text_x_pos1<= pixel_column+ character_size) and ('0' & pixel_column <= text_x_pos1 + character_size) -- number 5
												and ('0' & text_y_pos <= pixel_row +character_size)and ('0' & pixel_row <= text_y_pos +character_size) else
							"110110" when counter_tens="0110" and ( '0' & text_x_pos1<= pixel_column+ character_size) and ('0' & pixel_column <= text_x_pos1 + character_size) --number 6
												and ('0' & text_y_pos <= pixel_row +character_size)and ('0' & pixel_row <= text_y_pos +character_size) else
							"110111" when counter_tens="0111" and ( '0' & text_x_pos1<= pixel_column+ character_size) and ('0' & pixel_column <= text_x_pos1 + character_size) --number 7
												and ('0' & text_y_pos <= pixel_row +character_size)and ('0' & pixel_row <= text_y_pos +character_size) else
							"111000" when	counter_tens="1000" and ( '0' & text_x_pos1<= pixel_column+ character_size) and ('0' & pixel_column <= text_x_pos1 + character_size) --number 8
												and ('0' & text_y_pos <= pixel_row +character_size)and ('0' & pixel_row <= text_y_pos +character_size) else
							"111001" when counter_tens="1001" and ( '0' & text_x_pos1<= pixel_column+ character_size) and ('0' & pixel_column <= text_x_pos1 + character_size) --number 9
												and ('0' & text_y_pos <= pixel_row +character_size)and ('0' & pixel_row <= text_y_pos +character_size) else
							"100000";--Display it blank screen. 
							
							
							
							
							
							
							
							
							
							
	end arch;