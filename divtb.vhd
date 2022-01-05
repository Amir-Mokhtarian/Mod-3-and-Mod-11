-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY testbench IS
  END testbench;

  ARCHITECTURE behavior OF testbench IS 

  -- Component Declaration
          COMPONENT div3 is
port(
i : in std_logic_vector (0 to 15);
o : out std_logic);
end COMPONENT div3;

          SIGNAL signal1 :  std_logic_vector (0 to 15);
          SIGNAL signal2 :  std_logic;
          

  BEGIN

  -- Component Instantiation
          uut: div3 PORT MAP(
                  i => signal1,
                  o => signal2
          );
stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
signal1 <= "0000000000000011";

wait for 100 ns;
signal1 <= "0000000000000001";

  wait;
end process;
  END;
