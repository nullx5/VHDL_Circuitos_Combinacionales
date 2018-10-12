
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY sim_Ejercicio5 IS
END sim_Ejercicio5;
 
ARCHITECTURE behavior OF sim_Ejercicio5 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Ejercicio5
    PORT(
         A : IN  std_logic_vector(5 downto 0);
         B : IN  std_logic_vector(5 downto 0);
         Salida : OUT  std_logic_vector(5 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(5 downto 0) := (others => '0');
   signal B : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal Salida : std_logic_vector(5 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Ejercicio5 PORT MAP (
          A => A,
          B => B,
          Salida => Salida
        );



   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		A <= "000111";
		B <= "000011";
		
		wait for 100 ns;	
		
		A <= "001111";
		B <= "000111";
		
		wait for 100 ns;	
		
		A <= "000011";
		B <= "001111";
		
		wait for 100 ns;	
		
		A <= "000111";
		B <= "011111";
		

      -- insert stimulus here 

      wait;
   end process;

END;
