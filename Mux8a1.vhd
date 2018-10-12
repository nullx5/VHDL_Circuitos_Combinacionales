----------------------------------------------------------------------------------
-- Company: UNAD
-- Engineer: Juan León
-- Create Date:    12:25:03 10/08/2018 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux8a1 is
    Port ( E0 : in  STD_LOGIC_VECTOR (2 downto 0);
           E1 : in  STD_LOGIC_VECTOR (2 downto 0);
           E2 : in  STD_LOGIC_VECTOR (2 downto 0);
           E3 : in  STD_LOGIC_VECTOR (2 downto 0);
			  E4 : in  STD_LOGIC_VECTOR (2 downto 0);
			  E5 : in  STD_LOGIC_VECTOR (2 downto 0);
			  E6 : in  STD_LOGIC_VECTOR (2 downto 0);
			  E7 : in  STD_LOGIC_VECTOR (2 downto 0);
           Switch : in  STD_LOGIC_VECTOR (2 downto 0);
           F : out  STD_LOGIC_VECTOR (2 downto 0));
end Mux8a1;

architecture Behavioral of Mux8a1 is

begin
	with Switch select
		F <= E0 when "000",
			  E1 when "001",
			  E2 when "010",
			  E3 when "011",
			  E4 when "100",
			  E5 when "101",
			  E6 when "110",
			  E7 when others;
end Behavioral;

