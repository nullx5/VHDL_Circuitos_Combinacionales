
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY sim_Mux8a1 IS
END sim_Mux8a1;
 
ARCHITECTURE behavior OF sim_Mux8a1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Mux8a1
    PORT(
         E0 : IN  std_logic_vector(2 downto 0);
         E1 : IN  std_logic_vector(2 downto 0);
         E2 : IN  std_logic_vector(2 downto 0);
         E3 : IN  std_logic_vector(2 downto 0);
         E4 : IN  std_logic_vector(2 downto 0);
         E5 : IN  std_logic_vector(2 downto 0);
         E6 : IN  std_logic_vector(2 downto 0);
         E7 : IN  std_logic_vector(2 downto 0);
         Switch : IN  std_logic_vector(2 downto 0);
         F : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal E0 : std_logic_vector(2 downto 0) := (others => '0');
   signal E1 : std_logic_vector(2 downto 0) := (others => '0');
   signal E2 : std_logic_vector(2 downto 0) := (others => '0');
   signal E3 : std_logic_vector(2 downto 0) := (others => '0');
   signal E4 : std_logic_vector(2 downto 0) := (others => '0');
   signal E5 : std_logic_vector(2 downto 0) := (others => '0');
   signal E6 : std_logic_vector(2 downto 0) := (others => '0');
   signal E7 : std_logic_vector(2 downto 0) := (others => '0');
   signal Switch : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal F : std_logic_vector(2 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Mux8a1 PORT MAP (
          E0 => E0,
          E1 => E1,
          E2 => E2,
          E3 => E3,
          E4 => E4,
          E5 => E5,
          E6 => E6,
          E7 => E7,
          Switch => Switch,
          F => F
        );



   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
			 E0 <= "110";
          E1 <= "111";
          E2 <= "001";
          E3 <= "111";
          E4 <= "000";
          E5 <= "010";
          E6 <= "100";
          E7 <= "101";
			 Switch <= "000";
			 wait for 100 ns;
			  Switch <= "001";
			 wait for 100 ns;
			 Switch <= "010";
			 wait for 100 ns;
			 Switch <= "011";
			 wait for 100 ns;
			 Switch <= "100";
			 wait for 100 ns;
			 Switch <= "101";
			 wait for 100 ns;
			 Switch <= "110";
			 wait for 100 ns;
			 Switch <= "111";
			 wait for 100 ns;
 

      -- insert stimulus here 

      wait;
   end process;

END;
