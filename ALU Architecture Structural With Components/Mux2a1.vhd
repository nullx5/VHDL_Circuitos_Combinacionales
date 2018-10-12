----------------------------------------------------------------------------------
-- Company: UNAD
-- Engineer: Juan León
-- Create Date:    18:27:33 10/10/2018 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity Mux2a1 is
    Port ( E0 : in  STD_LOGIC_VECTOR (3 downto 0);
           E1 : in  STD_LOGIC_VECTOR (3 downto 0);
			  S : in  STD_LOGIC;
           F3 : out  STD_LOGIC_VECTOR (3 downto 0));
end Mux2a1;

architecture Behavioral of Mux2a1 is

begin
	
	with S select
		F3 <= E0 when '0',
				E1 when others;

end Behavioral;

