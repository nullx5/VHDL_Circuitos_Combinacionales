----------------------------------------------------------------------------------
-- Company: UNAD
-- Engineer: Juan León 
-- Create Date:    13:11:04 10/08/2018 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux2a1 is
    Port ( E0 : in  STD_LOGIC_VECTOR (31 downto 0);
           E1 : in  STD_LOGIC_VECTOR (31 downto 0);
           Switch : in  STD_LOGIC;
           F : out  STD_LOGIC_VECTOR (31 downto 0));
end Mux2a1;

architecture Behavioral of Mux2a1 is

begin
	with Switch select
		F <= E0 when '0',
			  E1 when '1';
end Behavioral;

