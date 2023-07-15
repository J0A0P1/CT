library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity BinToDec7Seg is
	 port(binInput  : in std_logic_vector(7 downto 0);
			HEX0, HEX1, HEX4, HEX5 : out std_logic_vector(6 downto 0));
end BinToDec7Seg;

architecture Behavioral of BinToDec7Seg is
	begin
	 HEX0 <=     "1111001" when (binInput = "00000001") else --1 (01)
					 "0100010" when (binInput = "00000010") else --2 (02)
					 "0110000" when (binInput = "00000011") else --3 (03)
					 "0011001" when (binInput = "00000100") else --4 (04)
					 "0010010" when (binInput = "00000101") else --5 (05)
					 "0000010" when (binInput = "00000110") else --6 (06)
					 "1111000" when (binInput = "00000111") else --7 (07)
					 "0000000" when (binInput = "00001000") else --8 (08)
					 "0010000" when (binInput = "00001001") else --9 (09)
					 "0000001" when (binInput = "00001010") else --0 (10)
					 "1111001" when (binInput = "00001011") else --1 (11)
					 "0100010" when (binInput = "00001100") else --2 (12)
					 "0110000" when (binInput = "00001101") else --3 (13)
					 "0011001" when (binInput = "00001110") else --4 (14)
					 "0010010" when (binInput = "00001111") else --5 (15)					 
					 "1000000"; --0
	
	HEX1 <= "0000001" when (binInput = "00000001") else --0 (01)
					 "0000001" when (binInput = "00000010") else --0 (02)
					 "0000001" when (binInput = "00000011") else --0 (03)
					 "0000001" when (binInput = "00000100") else --0 (04)
					 "0000001" when (binInput = "00000101") else --0 (05)
					 "0000001" when (binInput = "00000110") else --0 (06)
					 "0000001" when (binInput = "00000111") else --0 (07)
					 "0000001" when (binInput = "00001000") else --0 (08)
					 "0000001" when (binInput = "00001001") else --0 (09)
					 "1111001" when (binInput = "00001010") else --1 (10)
					 "1111001" when (binInput = "00001011") else --1 (11)
					 "1111001" when (binInput = "00001100") else --1 (12)
					 "1111001" when (binInput = "00001101") else --1 (13)
					 "1111001" when (binInput = "00001110") else --1 (14)
					 "1111001" when (binInput = "00001111") else --1 (15)
					 "1000000"; --0
					 
	HEX4 <= 		 "0100010" when (binInput = "00011001") else --2 (25)
					 "0110000" when (binInput = "00100001") else --3 (33)
					 "1000000"; --0
	
	HEX5 <= 		 "0010010" when (binInput = "00011001") else --5 (25)
					 "0110000" when (binInput = "00100001") else --3 (33)
					 "1000000"; --0
end Behavioral; 