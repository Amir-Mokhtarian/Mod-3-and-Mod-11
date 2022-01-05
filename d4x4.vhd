----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:37:35 04/14/2021 
-- Design Name: 
-- Module Name:    d16 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity d16 is
port ( i : in std_logic_vector (0 to 15);
int0 : out integer;
int1 : out integer;
int2 : out integer;
int3 : out integer);
end d16;

architecture Behavioral of d16 is

signal a0 : std_logic_vector (0 to 3);
signal a1 : std_logic_vector (0 to 3);
signal a2 : std_logic_vector (0 to 3);
signal a3 : std_logic_vector (0 to 3);
 
begin

a3 <= i (0 to 3); --por arzesh
a2 <= i (4 to 7);
a1 <= i (8 to 11);
a0 <= i (12 to 15); -- kam arzesh

int0 <= to_integer (unsigned(a0));
int1 <= to_integer (unsigned(a1));
int2 <= to_integer (unsigned(a2));
int3 <= to_integer (unsigned(a3));

end Behavioral;

