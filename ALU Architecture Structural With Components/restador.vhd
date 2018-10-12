----------------------------------------------------------------------------------
-- Company: UNAD
-- Engineer: Juan León
-- Create Date:    18:22:51 10/10/2018 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;


entity restador is
    Port ( A2 : in  STD_LOGIC_VECTOR (3 downto 0);
           B2 : in  STD_LOGIC_VECTOR (3 downto 0);
           F2 : out  STD_LOGIC_VECTOR (3 downto 0));
end restador;

architecture Behavioral of restador is

begin
 F2 <= A2 - B2;

end Behavioral;

