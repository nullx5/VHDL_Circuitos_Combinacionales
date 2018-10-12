----------------------------------------------------------------------------------
-- Company: UNAD
-- Engineer: Juan León
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity codificador is
    Port ( E3 : in  STD_LOGIC ;
           E2 : in  STD_LOGIC ;
           E1 : in  STD_LOGIC ;
           E0 : in  STD_LOGIC ;
           F0 : out STD_LOGIC ;
			  F1 : out STD_LOGIC ;
			  F2 : out STD_LOGIC );
			  
end codificador;

architecture Behavioral of codificador is
signal entradas : STD_LOGIC_VECTOR (3 downto 0);
signal salidas  : STD_LOGIC_VECTOR (2 downto 0);
begin

entradas <= E0 & E1 & E2 & E3;
salidas <= F0 & F1 & F2;
   with entradas select
      salidas <=  "000" when "0000",
                  "001" when  "0001",
						"010" when  "0010",
						"011" when  "0100",
						"100" when  "1000",
						"000" when  others; -- encoder Sin prioridad.
F0 <= salidas(0);
F1 <= salidas(1);
F2 <= salidas(2);

			

end Behavioral;

