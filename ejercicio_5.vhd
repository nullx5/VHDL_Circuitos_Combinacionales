----------------------------------------------------------------------------------
-- Company: UNAD
-- Engineer: Juan León
-- Create Date:    13:25:42 10/10/2018 
---------------------------------------D_LOGIC-------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

entity Ejercicio5 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Salida : out  STD_LOGIC
end Ejercicio5;

architecture Behavioral of Ejercicio5 is

begin
	

	Salida <= unsigned(A) + unsigned(B) when unsigned(A) > unsigned(B)else unsigned(A) - unsigned(B);
			

end Behavioral;
