--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

 
ENTITY sim_decodificador IS
END sim_decodificador;
 
ARCHITECTURE behavior OF sim_decodificador IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Decodificador
    PORT(
         E0 : IN  std_logic;
         E1 : IN  std_logic;
         F0 : OUT  std_logic;
         F1 : OUT  std_logic;
         F2 : OUT  std_logic;
         F3 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal E0 : std_logic := '0';
   signal E1 : std_logic := '0';

 	--Outputs
   signal F0 : std_logic;
   signal F1 : std_logic;
   signal F2 : std_logic;
   signal F3 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Decodificador PORT MAP (
          E0 => E0,
          E1 => E1,
          F0 => F0,
          F1 => F1,
          F2 => F2,
          F3 => F3
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
         wait for 100 ns;	
			E0 <= '0';
			E1 <=  '0';
		  wait for 100 ns;	
			E0 <= '0';
			E1 <=  '1';
			wait for 100 ns;	
			E0 <= '1';
			E1 <=  '0';
			wait for 100 ns;	
			E0 <= '1';
			E1 <=  '1';

      -- insert stimulus here 

      wait;
   end process;

END;
