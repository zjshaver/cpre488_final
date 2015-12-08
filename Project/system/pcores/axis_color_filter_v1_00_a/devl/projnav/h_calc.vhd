----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:10:38 12/06/2015 
-- Design Name: 
-- Module Name:    h_calc - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or to_unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity h_calc is
    Port ( cmax5 : in  STD_LOGIC_VECTOR (4 downto 0);
           delta5 : in  STD_LOGIC_VECTOR (4 downto 0);
           r5 : in  STD_LOGIC_VECTOR (4 downto 0);
           g5 : in  STD_LOGIC_VECTOR (4 downto 0);
           b5 : in  STD_LOGIC_VECTOR (4 downto 0);
           h10 : out  STD_LOGIC_VECTOR (9 downto 0));
end h_calc;

architecture Behavioral of h_calc is

signal r16, g16, b16 : STD_LOGIC_VECTOR(15 downto 0);
signal delta16 : STD_LOGIC_VECTOR(15 downto 0);
signal bcalc32, gcalc32, rcalc32 : STD_LOGIC_VECTOR(31 downto 0);


begin

r16 <= "00000000000" & r5;
g16 <= "00000000000" & g5;
b16 <= "00000000000" & b5;
delta16 <= "00000000000" & delta5;

process(r16, g16, delta16)
begin
	bcalc32 <= std_logic_vector((((signed(r16) - signed(g16)) / signed(delta16)) + 4) * 60);
end process;

process(r16, b16, delta16)
begin
	gcalc32 <= std_logic_vector((((signed(b16) - signed(r16)) / signed(delta16)) + 2) * 60);
end process;

process(g16, b16, delta16)
begin
	rcalc32 <= std_logic_vector((((signed(g16) - signed(b16)) / signed(delta16)) mod 6) * 60);
end process;

process(cmax5, r5, g5, b5, rcalc32, gcalc32, bcalc32)
begin
	if(unsigned(r5) = unsigned(cmax5)) then
		h10 <= rcalc32(9 downto 0);
	else
		if(unsigned(g5) = unsigned(cmax5)) then
			h10 <= gcalc32(9 downto 0);
		else
			h10 <= bcalc32(9 downto 0);
		end if;
	end if;
end process;

end Behavioral;

