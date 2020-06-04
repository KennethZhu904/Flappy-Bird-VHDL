LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
USE IEEE.STD_LOGIC_UNSIGNED.all;
USE IEEE.STD_LOGIC_ARITH.all; 


-- This component implemented the text for the main menu.

entity text_display_main_menu is
   port (
     signal clk : in std_logic;
	 signal pixel_row, pixel_column: in std_logic_vector(9 downto 0);
	signal menu_on: in std_logic; 
	 signal text_output: out std_logic);
	
end entity text_display_main_menu;

architecture arch of text_display_main_menu is
	
	signal temp_char_address: std_logic_vector(5 downto 0) ;
	signal pix_row_font: std_logic_vector(2 downto 0); 
	signal pix_col_font: std_logic_vector (2 downto 0); 
	constant character_size: std_logic_vector(5 downto 0):= "001000"; 
	
	--Declaration of all the signals for displaying position for each letter. 
	signal FLAPPY_COMPSYS_y_pos, F_x_pos, L_x_pos,A_x_pos,P_x_pos, P1_x_pos,Y_x_pos  : std_logic_vector(9 downto 0); 
	signal COMPSYS_y_pos, C_x_pos,O_x_pos,M_x_pos,P3_x_pos,S1_x_pos,Y1_x_pos, S2_x_pos : std_logic_vector(9 downto 0); 
	signal Training_and_Game_y_pos,T_x_pos,R_x_pos,A1_x_pos,I_x_pos,N_x_pos,I1_x_pos,N1_x_pos,G_x_pos,dash_x_pos,one_x_pos : std_logic_vector(9 downto 0); 
	signal G1_x_pos,A2_x_pos,M1_x_pos,E1_x_pos,mode_y_position : std_logic_vector(9 downto 0); 
	signal S3_x_pos,T1_x_pos,A3_x_pos,R1_x_pos, T2_x_pos, G2_x_pos, A4_x_pos,M2_x_pos,E2_x_pos,Wposition,START_GAME_y_position,Switch_yPosition: std_logic_vector(9 downto 0);
	

	
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


	
	
	--Position of y pos for COMPSYS charater and position x for COMPSYS character for each invividual branch. 
	FLAPPY_COMPSYS_y_pos<=CONV_STD_LOGIC_VECTOR(40,10);
	F_x_pos<= CONV_STD_LOGIC_VECTOR(231,10);
	L_x_pos<= CONV_STD_LOGIC_VECTOR(247,10);
	A_x_pos<= CONV_STD_LOGIC_VECTOR(263,10);
	P_x_pos<= CONV_STD_LOGIC_VECTOR(279,10);
	P1_x_pos<= CONV_STD_LOGIC_VECTOR(295,10);
	Y_x_pos<= CONV_STD_LOGIC_VECTOR(311,10);


--Position of individual x letters
	C_x_pos<=CONV_STD_LOGIC_VECTOR(343,10);
	O_x_pos<=CONV_STD_LOGIC_VECTOR(359,10);
	M_x_pos<=CONV_STD_LOGIC_VECTOR(375,10);
	P3_x_pos<=CONV_STD_LOGIC_VECTOR(391,10);
	S1_x_pos<=CONV_STD_LOGIC_VECTOR(407,10);
	Y1_x_pos<=CONV_STD_LOGIC_VECTOR(423,10);
	S2_x_pos<=CONV_STD_LOGIC_VECTOR(439,10); 	
	
--Position of individual letter for different x position for "Training". 	

Training_and_Game_y_pos <=CONV_STD_LOGIC_VECTOR(360,10);
	T_x_pos<=CONV_STD_LOGIC_VECTOR(55,10); 
	R_x_pos<=CONV_STD_LOGIC_VECTOR(71,10); 
	A1_x_pos<=CONV_STD_LOGIC_VECTOR(87,10); --- Also use for S (displaying the switch command for training)
	I_x_pos<=CONV_STD_LOGIC_VECTOR(103,10); ---Also use for W (displaying the switch command for training)
	N_x_pos<=CONV_STD_LOGIC_VECTOR(119,10); --- Also use for 1 (displaying the switch command for training)
	I1_x_pos<=CONV_STD_LOGIC_VECTOR(135,10); --Also use for - (displaying the switch command for training)
	N1_x_pos<=CONV_STD_LOGIC_VECTOR(151,10); --Also use for 0 (displaying the switch command for training)
	G_x_pos<=CONV_STD_LOGIC_VECTOR(167,10); 

--Position of individual letter for different x positon for "Game" mode
--The dash and one are for the switch command below that text display
	
	G1_x_pos<=CONV_STD_LOGIC_VECTOR(407,10); 
	A2_x_pos<=CONV_STD_LOGIC_VECTOR(423,10); --- Also use for S (displaying the switch command for game mode)
	M1_x_pos<=CONV_STD_LOGIC_VECTOR(439,10); --- Also use for W (displaying the switch command for game mode)
	E1_x_pos <=CONV_STD_LOGIC_VECTOR(455,10); --- Also use for 1 (displaying the switch command for game mode)
	dash_x_pos<=CONV_STD_LOGIC_VECTOR(471,10);
	one_x_pos<=CONV_STD_LOGIC_VECTOR(487,10);
	
	mode_y_position<=CONV_STD_LOGIC_VECTOR(392,10);
	
	
-- Start the game (all letter's  position) 
S3_x_pos<=CONV_STD_LOGIC_VECTOR(231,10); 
T1_x_pos<=CONV_STD_LOGIC_VECTOR(247,10); 
A3_x_pos<=CONV_STD_LOGIC_VECTOR(263,10); 
R1_x_pos<=CONV_STD_LOGIC_VECTOR(279,10); 
T2_x_pos<=CONV_STD_LOGIC_VECTOR(295,10); --Also use for position of S for displaying the switch option to start the game)

G2_x_pos<=CONV_STD_LOGIC_VECTOR(327,10); ---Also use the position for 2 (for displaying switch option to start the game)
A4_x_pos<=CONV_STD_LOGIC_VECTOR(343,10); --Also use the position for letter '-' (for displaying switch option to start the game)
M2_x_pos<=CONV_STD_LOGIC_VECTOR(359,10); --Also use the position for letter '1' (for displaying switch option to start the game)
E2_x_pos <=CONV_STD_LOGIC_VECTOR(375,10); 
Wposition<= CONV_STD_LOGIC_VECTOR(311,10);

--Y position to show the labels "Start Game" and showing the Switches picture
START_GAME_y_position<= CONV_STD_LOGIC_VECTOR(215,10);
Switch_yPosition<=CONV_STD_LOGIC_VECTOR(247,10);
	

--Code to display the text on the screen 
temp_char_address<= "000110" when menu_on='1' and ( '0' & F_x_pos<= pixel_column+ character_size) and ('0' & pixel_column <= F_x_pos + character_size)           --Letter F
												and ('0' & FLAPPY_COMPSYS_y_pos<= pixel_row +character_size)and ('0' & pixel_row <= FLAPPY_COMPSYS_y_pos +character_size) else
							"001100" when menu_on='1' and ( '0' & L_x_pos<= pixel_column+ character_size) and ('0' & pixel_column <= L_x_pos + character_size)   --number L
												and ('0' & FLAPPY_COMPSYS_y_pos <= pixel_row +character_size)and ('0' & pixel_row <= FLAPPY_COMPSYS_y_pos +character_size) else 
							"000001" when menu_on='1' and ( '0' & A_x_pos<= pixel_column+ character_size) and ('0' & pixel_column <= A_x_pos + character_size)    --Letter A
												and ('0' & FLAPPY_COMPSYS_y_pos <= pixel_row +character_size)and ('0' & pixel_row <= FLAPPY_COMPSYS_y_pos +character_size) else	
							"010000" when menu_on='1' and ( '0' & P_x_pos<= pixel_column+ character_size) and ('0' & pixel_column <= P_x_pos + character_size)     --Letter P
												and ('0' & FLAPPY_COMPSYS_y_pos <= pixel_row +character_size)and ('0' & pixel_row <= FLAPPY_COMPSYS_y_pos +character_size) else	
                            "010000" when menu_on='1' and ( '0' & P1_x_pos<= pixel_column+ character_size) and ('0' & pixel_column <= P1_x_pos + character_size)    --Letter P
												and ('0' & FLAPPY_COMPSYS_y_pos <= pixel_row +character_size)and ('0' & pixel_row <= FLAPPY_COMPSYS_y_pos +character_size) else	
							"011001" when menu_on='1' and ( '0' & Y_x_pos<= pixel_column+ character_size) and ('0' & pixel_column <= Y_x_pos + character_size)       --Letter Y
												and ('0' & FLAPPY_COMPSYS_y_pos <= pixel_row +character_size)and ('0' & pixel_row <= FLAPPY_COMPSYS_y_pos +character_size) else	
							"000011" when menu_on='1' and ( '0' & C_x_pos<= pixel_column+ character_size) and ('0' & pixel_column <= C_x_pos + character_size)       --Letter C
												and ('0' & FLAPPY_COMPSYS_y_pos <= pixel_row +character_size)and ('0' & pixel_row <= FLAPPY_COMPSYS_y_pos +character_size) else
							"001111" when menu_on='1' and ( '0' & O_x_pos<= pixel_column+ character_size) and ('0' & pixel_column <= O_x_pos + character_size) --Letter O
												and ('0' & FLAPPY_COMPSYS_y_pos <= pixel_row +character_size)and ('0' & pixel_row <= FLAPPY_COMPSYS_y_pos +character_size) else
							"001101" when menu_on='1' and ( '0' & M_x_pos<= pixel_column+ character_size) and ('0' & pixel_column <= M_x_pos + character_size) --Letter M
												and ('0' & FLAPPY_COMPSYS_y_pos <= pixel_row +character_size)and ('0' & pixel_row <= FLAPPY_COMPSYS_y_pos +character_size) else
							"010000" when menu_on='1' and ( '0' & P3_x_pos<= pixel_column+ character_size) and ('0' & pixel_column <= P3_x_pos + character_size) --Letter P
												and ('0' & FLAPPY_COMPSYS_y_pos <= pixel_row +character_size)and ('0' & pixel_row <= FLAPPY_COMPSYS_y_pos +character_size) else
							"010011" when menu_on='1' and ( '0' & S1_x_pos<= pixel_column+ character_size) and ('0' & pixel_column <= S1_x_pos + character_size) --Letter S
												and ('0' & FLAPPY_COMPSYS_y_pos <= pixel_row +character_size)and ('0' & pixel_row <= FLAPPY_COMPSYS_y_pos +character_size) else	
							"011001" when menu_on='1' and ( '0' & Y1_x_pos<= pixel_column+ character_size) and ('0' & pixel_column <= Y1_x_pos + character_size) --Letter Y
												and ('0' & FLAPPY_COMPSYS_y_pos <= pixel_row +character_size)and ('0' & pixel_row <= FLAPPY_COMPSYS_y_pos +character_size) else
							"010011" when menu_on='1' and ( '0' & S2_x_pos<= pixel_column+ character_size) and ('0' & pixel_column <= S2_x_pos + character_size) --Letter S
												and ('0' & FLAPPY_COMPSYS_y_pos <= pixel_row +character_size)and ('0' & pixel_row <= FLAPPY_COMPSYS_y_pos +character_size) else
							"010100" when menu_on='1' and ( '0' & T_x_pos<= pixel_column+ character_size) and ('0' & pixel_column <= T_x_pos + character_size) --Letter T
												and ('0' & Training_and_Game_y_pos <= pixel_row +character_size)and ('0' & pixel_row <= Training_and_Game_y_pos +character_size) else
							"010010" when menu_on='1' and ( '0' & R_x_pos<= pixel_column+ character_size) and ('0' & pixel_column <= R_x_pos + character_size) --Letter R
												and ('0' & Training_and_Game_y_pos <= pixel_row +character_size)and ('0' & pixel_row <= Training_and_Game_y_pos +character_size) else
							"000001" when menu_on='1' and ( '0' & A1_x_pos<= pixel_column+ character_size) and ('0' & pixel_column <= A1_x_pos + character_size) --Letter A
												and ('0' & Training_and_Game_y_pos <= pixel_row +character_size)and ('0' & pixel_row <= Training_and_Game_y_pos +character_size) else
							"001001" when menu_on='1' and ( '0' & I_x_pos<= pixel_column+ character_size) and ('0' & pixel_column <=I_x_pos + character_size) --Letter I
												and ('0' & Training_and_Game_y_pos <= pixel_row +character_size)and ('0' & pixel_row <= Training_and_Game_y_pos +character_size) else
							"001110" when menu_on='1' and ( '0' & N_x_pos<= pixel_column+ character_size) and ('0' & pixel_column <= N_x_pos + character_size) --Letter N
												and ('0' & Training_and_Game_y_pos <= pixel_row +character_size)and ('0' & pixel_row <= Training_and_Game_y_pos +character_size) else
							"001001" when menu_on='1' and ( '0' & I1_x_pos<= pixel_column+ character_size) and ('0' & pixel_column <= I1_x_pos + character_size) --Letter I
												and ('0' & Training_and_Game_y_pos <= pixel_row +character_size)and ('0' & pixel_row <= Training_and_Game_y_pos +character_size) else
							"001110" when menu_on='1' and ( '0' & N1_x_pos<= pixel_column+ character_size) and ('0' & pixel_column <= N1_x_pos + character_size) --Letter N
												and ('0' & Training_and_Game_y_pos <= pixel_row +character_size)and ('0' & pixel_row <= Training_and_Game_y_pos +character_size) else
							"000111" when menu_on='1' and ( '0' & G_x_pos<= pixel_column+ character_size) and ('0' & pixel_column <= G_x_pos + character_size) --Letter G
												and ('0' & Training_and_Game_y_pos <= pixel_row +character_size)and ('0' & pixel_row <= Training_and_Game_y_pos +character_size) else
							"000111" when menu_on='1' and ( '0' & G1_x_pos<= pixel_column+ character_size) and ('0' & pixel_column <= G1_x_pos + character_size) --Letter G
												and ('0' & Training_and_Game_y_pos <= pixel_row +character_size)and ('0' & pixel_row <= Training_and_Game_y_pos +character_size) else
							"000001" when menu_on='1' and ( '0' & A2_x_pos<= pixel_column+ character_size) and ('0' & pixel_column <= A2_x_pos + character_size) --Letter A
												and ('0' & Training_and_Game_y_pos <= pixel_row +character_size)and ('0' & pixel_row <= Training_and_Game_y_pos +character_size) else
							"001101" when menu_on='1' and ( '0' & M1_x_pos<= pixel_column+ character_size) and ('0' & pixel_column <= M1_x_pos + character_size) --Letter M
												and ('0' & Training_and_Game_y_pos <= pixel_row +character_size)and ('0' & pixel_row <= Training_and_Game_y_pos +character_size) else
							"000101" when menu_on='1' and ( '0' & E1_x_pos<= pixel_column+ character_size) and ('0' & pixel_column <= E1_x_pos + character_size) --Letter E
												and ('0' & Training_and_Game_y_pos <= pixel_row +character_size)and ('0' & pixel_row <= Training_and_Game_y_pos +character_size) else-------------------Text below display the mode settings. 
							"010011" when menu_on='1' and ( '0' & A1_x_pos<= pixel_column+ character_size) and ('0' & pixel_column <= A1_x_pos + character_size) --Letter S
												and ('0' & mode_y_position <= pixel_row +character_size)and ('0' & pixel_row <= mode_y_position +character_size) else
							"010111" when menu_on='1' and ( '0' & I_x_pos<= pixel_column+ character_size) and ('0' & pixel_column <=I_x_pos + character_size) --Letter W
												and ('0' & mode_y_position <= pixel_row +character_size)and ('0' & pixel_row <= mode_y_position +character_size) else
							"110001" when menu_on='1' and ( '0' & N_x_pos<= pixel_column+ character_size) and ('0' & pixel_column <= N_x_pos + character_size) --Letter '1'
												and ('0' & mode_y_position <= pixel_row +character_size)and ('0' & pixel_row <=mode_y_position +character_size) else
							"101101" when menu_on='1' and ( '0' & I1_x_pos<= pixel_column+ character_size) and ('0' & pixel_column <= I1_x_pos + character_size) --Letter '-'
												and ('0' & mode_y_position <= pixel_row +character_size)and ('0' & pixel_row <= mode_y_position +character_size) else
							"110000" when menu_on='1' and ( '0' & N1_x_pos<= pixel_column+ character_size) and ('0' & pixel_column <= N1_x_pos + character_size) --Letter 0
												and ('0' &  mode_y_position <= pixel_row +character_size)and ('0' & pixel_row <=  mode_y_position +character_size) else
							"010011" when menu_on='1' and ( '0' & A2_x_pos<= pixel_column+ character_size) and ('0' & pixel_column <= A2_x_pos + character_size) --Letter S
												and ('0' & mode_y_position <= pixel_row +character_size)and ('0' & pixel_row <= mode_y_position +character_size) else
							"010111" when menu_on='1' and ( '0' & M1_x_pos<= pixel_column+ character_size) and ('0' & pixel_column <= M1_x_pos + character_size) --Letter W
												and ('0' & mode_y_position <= pixel_row +character_size)and ('0' & pixel_row <= mode_y_position +character_size) else
							"110001" when menu_on='1' and ( '0' & E1_x_pos<= pixel_column+ character_size) and ('0' & pixel_column <= E1_x_pos + character_size) --Letter 1
												and ('0' & mode_y_position <= pixel_row +character_size)and ('0' & pixel_row <= mode_y_position +character_size) else
							"101101" when menu_on='1' and ( '0' & dash_x_pos<= pixel_column+ character_size) and ('0' & pixel_column <= dash_x_pos + character_size) --Letter '-'
												and ('0' & mode_y_position <= pixel_row +character_size)and ('0' & pixel_row <= mode_y_position +character_size) else
							"110001" when menu_on='1' and ( '0' & one_x_pos<= pixel_column+ character_size) and ('0' & pixel_column <= one_x_pos + character_size) --Letter 1
												and ('0' & mode_y_position <= pixel_row +character_size)and ('0' & pixel_row <= mode_y_position +character_size) else---------COMMENCING THE START GAME CODE
							"010011" when menu_on='1' and ( '0' & S3_x_pos<= pixel_column+ character_size) and ('0' & pixel_column <= S3_x_pos + character_size) --Letter S
												and ('0' & START_GAME_y_position <= pixel_row +character_size)and ('0' & pixel_row <= START_GAME_y_position +character_size) else
							"010100" when menu_on='1' and ( '0' & T1_x_pos<= pixel_column+ character_size) and ('0' & pixel_column <= T1_x_pos + character_size) --Letter t
												and ('0' & START_GAME_y_position <= pixel_row +character_size)and ('0' & pixel_row <= START_GAME_y_position +character_size) else
							"000001" when menu_on='1' and ( '0' & A3_x_pos<= pixel_column+ character_size) and ('0' & pixel_column <= A3_x_pos + character_size) --Letter a
												and ('0' & START_GAME_y_position <= pixel_row +character_size)and ('0' & pixel_row <= START_GAME_y_position +character_size) else
							"010010" when menu_on='1' and ( '0' & R1_x_pos<= pixel_column+ character_size) and ('0' & pixel_column <= R1_x_pos + character_size) --Letter r
												and ('0' & START_GAME_y_position <= pixel_row +character_size)and ('0' & pixel_row <= START_GAME_y_position +character_size) else
							"010100" when menu_on='1' and ( '0' & T2_x_pos<= pixel_column+ character_size) and ('0' & pixel_column <= T2_x_pos + character_size) --Letter t
												and ('0' & START_GAME_y_position <= pixel_row +character_size)and ('0' & pixel_row <= START_GAME_y_position +character_size) else
							"000111" when menu_on='1' and ( '0' & G2_x_pos<= pixel_column+ character_size) and ('0' & pixel_column <= G2_x_pos + character_size) --Letter G
												and ('0' & START_GAME_y_position <= pixel_row +character_size)and ('0' & pixel_row <= START_GAME_y_position +character_size) else
							"000001" when menu_on='1' and ( '0' & A4_x_pos<= pixel_column+ character_size) and ('0' & pixel_column <= A4_x_pos + character_size) --Letter A
												and ('0' & START_GAME_y_position <= pixel_row +character_size)and ('0' & pixel_row <= START_GAME_y_position +character_size) else
							"001101" when menu_on='1' and ( '0' & M2_x_pos<= pixel_column+ character_size) and ('0' & pixel_column <= M2_x_pos + character_size) --Letter M
												and ('0' & START_GAME_y_position <= pixel_row +character_size)and ('0' & pixel_row <= START_GAME_y_position +character_size) else
							"000101" when menu_on='1' and ( '0' & E2_x_pos<= pixel_column+ character_size) and ('0' & pixel_column <= E2_x_pos + character_size) --Letter E
												and ('0' & START_GAME_y_position <= pixel_row +character_size)and ('0' & pixel_row <= START_GAME_y_position +character_size) else
							"010011" when menu_on='1' and ( '0' & T2_x_pos<= pixel_column+ character_size) and ('0' & pixel_column <= T2_x_pos + character_size) --Letter S
												and ('0' & Switch_yPosition <= pixel_row +character_size)and ('0' & pixel_row <= Switch_yPosition +character_size) else
							"010111" when menu_on='1' and ( '0' & Wposition<= pixel_column+ character_size) and ('0' & pixel_column <= Wposition + character_size) --Letter W
												and ('0' & Switch_yPosition <= pixel_row +character_size)and ('0' & pixel_row <= Switch_yPosition +character_size) else					
							"110010" when menu_on='1' and ( '0' & G2_x_pos<= pixel_column+ character_size) and ('0' & pixel_column <= G2_x_pos + character_size) --Letter '2'
												and ('0' & Switch_yPosition <= pixel_row +character_size)and ('0' & pixel_row <= Switch_yPosition +character_size) else
							"101101" when menu_on='1' and ( '0' & A4_x_pos<= pixel_column+ character_size) and ('0' & pixel_column <= A4_x_pos + character_size) --Letter -
												and ('0' & Switch_yPosition <= pixel_row +character_size)and ('0' & pixel_row <= Switch_yPosition +character_size) else
							"110001" when menu_on='1' and ( '0' & M2_x_pos<= pixel_column+ character_size) and ('0' & pixel_column <= M2_x_pos + character_size) --Letter 1
												and ('0' & Switch_yPosition <= pixel_row +character_size)and ('0' & pixel_row <= Switch_yPosition +character_size) else
							"100000";--Display it blank screen. 
							
							
							
							
							
							
							
							
							
							
	end arch;