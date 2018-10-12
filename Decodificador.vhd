----------------------------------------------------------------------------------
-- Company: UNAD
-- Engineer: Juan León
-- Create Date:    11:07:07 10/09/2018 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Decodificador is
    Port ( E0 : in  STD_LOGIC;
           E1 : in  STD_LOGIC;
           F0 : out  STD_LOGIC;
           F1 : out  STD_LOGIC;
           F2 : out  STD_LOGIC;
           F3 : out  STD_LOGIC);
end Decodificador;

architecture Behavioral of Decodificador is

signal entradas : STD_LOGIC_VECTOR (1 downto 0);
signal salidas  : STD_LOGIC_VECTOR (3 downto 0);

begin

entradas <= E0 & E1;
	
	with entradas select
		salidas <= "0001" when "00",
					  "0010" when "01",
					  "0100" when "10",
					  "1000" when others;
F3 <= salidas(3);
F2 <= salidas(2);
F1 <= salidas(1);
F0 <= salidas(0);
			
end Behavioral;

