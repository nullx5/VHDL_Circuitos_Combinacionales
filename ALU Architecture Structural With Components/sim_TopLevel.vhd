
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

 
ENTITY sim_TopLevel IS
END sim_TopLevel;
 
ARCHITECTURE behavior OF sim_TopLevel IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Top_Level
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         Sel : IN  std_logic;
         F : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal Sel : std_logic := '0';

 	--Outputs
   signal F : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Top_Level PORT MAP (
          A => A,
          B => B,
          Sel => Sel,
          F => F
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

			A <= "0100";
			B <= "0100";
			Sel <= '0';
			
		wait for 100 ns;
			Sel <= '1';
		wait for 100 ns;

			A <= "0111";
			B <= "0100";
			Sel <= '0';
		wait for 100 ns;
		   Sel <= '1';
		wait for 100 ns;

			A <= "0110";
			B <= "0110";
			Sel <= '0';	
		wait for 100 ns;
		   Sel <= '1';
		wait for 100 ns;
        	

			A <= "0111";
			B <= "0111";
			Sel <= '0';
		wait for 100 ns;
		   Sel <= '1';
		wait for 100 ns;
         	

      -- insert stimulus here 

      wait;
   end process;

END;
