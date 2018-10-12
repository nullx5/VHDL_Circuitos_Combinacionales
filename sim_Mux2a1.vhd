
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY sim_Mux2a1 IS
END sim_Mux2a1;
 
ARCHITECTURE behavior OF sim_Mux2a1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Mux2a1
    PORT(
         E0 : IN  std_logic_vector(31 downto 0);
         E1 : IN  std_logic_vector(31 downto 0);
         Switch : IN  std_logic;
         F : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal E0 : std_logic_vector(31 downto 0) := (others => '0');
   signal E1 : std_logic_vector(31 downto 0) := (others => '0');
   signal Switch : std_logic := '0';

 	--Outputs
   signal F : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Mux2a1 PORT MAP (
          E0 => E0,
          E1 => E1,
          Switch => Switch,
          F => F
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		
			E0 <= "01000110010000010100100101001100";
			E1 <= "01001000010000010100001101001011";
			Switch <= '0';
			wait for 100 ns;
			Switch <= '1';
			wait for 100 ns;
			
			
		wait for 100 ns;	
			E0 <= "01001000010000010100001101001011";
			E1 <= "01000110010000010100100101001100";
			Switch <= '0';
			wait for 100 ns;
			Switch <= '1';
			wait for 100 ns;
			
			
		
			

      -- insert stimulus here 

      wait;
   end process;

END;
