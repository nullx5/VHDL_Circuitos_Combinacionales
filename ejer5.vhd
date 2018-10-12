----------------------------------------------------------------------------------
-- Company: UNAD
-- Engineer: Juan León
-- Create Date:    13:25:42 10/10/2018 
---------------------------------------D_LOGIC-------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity Ejercicio5 is
    Port ( A : in        STD_LOGIC_VECTOR (5 downto 0);
           B : in        STD_LOGIC_VECTOR (5 downto 0);
           Salida : out  STD_LOGIC_VECTOR (5 downto 0));
end Ejercicio5;

architecture Behavioral of Ejercicio5 is
begin
	
 
	Salida  <= (A + B) when (A > B)  else
				  (A - B) when (A < B) else
				  "000000";

end Behavioral;