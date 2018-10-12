----------------------------------------------------------------------------------
-- Company:UNAD 
-- Engineer: Juan León
-- Create Date:    10:48:15 10/08/2018 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux4a1 is
    Port ( E0 : in  STD_LOGIC_VECTOR (3 downto 0);
           E1 : in  STD_LOGIC_VECTOR (3 downto 0);
           E2 : in  STD_LOGIC_VECTOR (3 downto 0);
           E3 : in  STD_LOGIC_VECTOR (3 downto 0);
           Switch : in  STD_LOGIC_VECTOR (1 downto 0);
           F : out  STD_LOGIC_VECTOR (3 downto 0));
end Mux4a1;

architecture Behavioral of Mux4a1 is

begin
	 with Switch select
		F <= E0 when "00",
			  E1 when "01",
			  E2 when "10",
			  E3 when others;

end Behavioral;

