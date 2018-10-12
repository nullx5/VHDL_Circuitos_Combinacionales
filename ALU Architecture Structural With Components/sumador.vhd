----------------------------------------------------------------------------------
-- Company: UNAD
-- Engineer: Juan León
-- Create Date:    18:15:54 10/10/2018 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;


entity sumador is
    Port ( A1 : in  STD_LOGIC_VECTOR (3 downto 0);
           B1 : in  STD_LOGIC_VECTOR (3 downto 0);
           F1 : out  STD_LOGIC_VECTOR (3 downto 0));
end sumador;

architecture Behavioral of sumador is

begin
	F1 <= A1 + B1;

end Behavioral;

