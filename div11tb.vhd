--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:04:43 04/15/2021
-- Design Name:   
-- Module Name:   C:/users/crossover/Desktop/My Mac Desktop/UNI/Term 8/VHDL/az02.5/salam1/div11tb.vhd
-- Project Name:  salam1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: div11
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY div11tb IS
END div11tb;
 
ARCHITECTURE behavior OF div11tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT div11
    PORT(
         i : IN  std_logic_vector(0 to 15);
         o : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal i : std_logic_vector(0 to 15) := (others => '0');

 	--Outputs
   signal o : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: div11 PORT MAP (
          i => i,
          o => o
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;
i <= "0000000000000011";

wait for 100 ns;
i <= "0000000000010001";	

      wait for 100 ns;
i <= "0011001100110011";
	


      -- insert stimulus here 

   wait;
end process;

END;
