----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:01:30 04/15/2021 
-- Design Name: 
-- Module Name:    div11 - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity div11 is
port(
i : in std_logic_vector (0 to 15);
o : out std_logic);
end div11;

architecture Behavioral of div11 is

--component 
component d16 is
port ( i : in std_logic_vector (0 to 15);
int0 : out integer;
int1 : out integer;
int2 : out integer;
int3 : out integer);
end component d16;

--signal

signal int0 : integer ;
signal int1 : integer ;
signal int2 : integer ;
signal int3 : integer ;
signal zero : integer ;
begin

--port maps
p1 : d16 port map (i,int0,int1,int2,int3);

zero <= int0 - int1 + int2 - int3;
process ( zero )
begin
if ((zero mod 11 )= 0 ) 
	then 
		o <= '1';
	else
		o <= '0';
end if;
end process;
end Behavioral;
