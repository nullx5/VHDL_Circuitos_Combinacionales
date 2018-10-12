----------------------------------------------------------------------------------
-- Company: UNAD
-- Engineer: Juan León
-- Create Date:    18:47:43 10/10/2018 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Top_Level is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           Sel : in  STD_LOGIC;
           F : out  STD_LOGIC_VECTOR (3 downto 0));
end Top_Level;

architecture Behavioral of Top_Level is
signal suma, resta : STD_LOGIC_VECTOR (3 downto 0);

COMPONENT sumador
	PORT(
		A1 : IN std_logic_vector(3 downto 0);
		B1 : IN std_logic_vector(3 downto 0);          
		F1 : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;
	
COMPONENT restador
	PORT(
		A2 : IN std_logic_vector(3 downto 0);
		B2 : IN std_logic_vector(3 downto 0);          
		F2 : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;
	
	COMPONENT Mux2a1
	PORT(
		E0 : IN std_logic_vector(3 downto 0);
		E1 : IN std_logic_vector(3 downto 0);
		S : IN std_logic;          
		F3 : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

begin
	Inst_sumador: sumador PORT MAP(
		A1 => A,
		B1 => B,
		F1 => suma
	);
	
	Inst_restador: restador PORT MAP(
		A2 => A,
		B2 => B,
		F2 => resta
	);
	
	Inst_Mux2a1: Mux2a1 PORT MAP(
		E0 => suma,
		E1 => resta,
		S => sel,
		F3 => F
	);

end Behavioral;

