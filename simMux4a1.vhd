
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY simMux4a1 IS
END simMux4a1;
 
ARCHITECTURE behavior OF simMux4a1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Mux4a1
    PORT(
         E0 : IN  std_logic_vector(3 downto 0);
         E1 : IN  std_logic_vector(3 downto 0);
         E2 : IN  std_logic_vector(3 downto 0);
         E3 : IN  std_logic_vector(3 downto 0);
         Switch : IN  std_logic_vector(1 downto 0);
         F : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal E0 : std_logic_vector(3 downto 0) := (others => '0');
   signal E1 : std_logic_vector(3 downto 0) := (others => '0');
   signal E2 : std_logic_vector(3 downto 0) := (others => '0');
   signal E3 : std_logic_vector(3 downto 0) := (others => '0');
   signal Switch : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal F : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Mux4a1 PORT MAP (
          E0 => E0,
          E1 => E1,
          E2 => E2,
          E3 => E3,
          Switch => Switch,
          F => F
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;
			E0 <= "0011"; --valor fijo de entrada 
			E1 <= "1100"; --valor fijo de entrada 
			E2 <= "0110"; --valor fijo de entrada
			E3 <= "1110"; --valor fijo de entrada
		--Selector
			Switch  <= "00";
			wait for 100 ns;
			Switch  <= "01";
			wait for 100 ns;
			Switch  <= "10";
			wait for 100 ns;
			Switch  <= "11";
			wait for 100 ns;

      -- insert stimulus here 

      wait;
   end process;

END;
