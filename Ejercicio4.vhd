----------------------------------------------------------------------------------
-- Company: UNAD
-- Engineer: Juan León
-- Create Date:    16:01:37 10/09/2018 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;


entity Ejercicio4 is
    Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
           B : in  STD_LOGIC_VECTOR (7 downto 0);
           Selector : in  STD_LOGIC;
           Salida : out  STD_LOGIC_VECTOR (7 downto 0));
end Ejercicio4;

architecture Behavioral of Ejercicio4 is

begin

	with Selector select
		Salida <= A + b when '0',
					 A - b when others;

end Behavioral;

