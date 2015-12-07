----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:30:35 12/06/2015 
-- Design Name: 
-- Module Name:    rgb2hsv - Behavioral 
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

entity rgb2hsv is
    Port ( in_data : in  STD_LOGIC_VECTOR (15 downto 0);
           out_data : out  STD_LOGIC_VECTOR (25 downto 0));
end rgb2hsv;

architecture Behavioral of rgb2hsv is

signal r5,g5,b5 : STD_LOGIC_VECTOR(4 downto 0);

signal s8, v8 : STD_LOGIC_VECTOR(7 downto 0);
signal h10 : STD_LOGIC_VECTOR(9 downto 0);

signal rg5_gt : STD_LOGIC_VECTOR(4 downto 0);
signal cmax5 : STD_LOGIC_VECTOR(4 downto 0);
signal cmax10 : STD_LOGIC_VECTOR(9 downto 0);
signal cmaxh10 : STD_LOGIC_VECTOR(9 downto 0);

signal rg5_lt : STD_LOGIC_VECTOR(4 downto 0);
signal cmin5 : STD_LOGIC_VECTOR(4 downto 0);

signal delta5 : STD_LOGIC_VECTOR(4 downto 0);
signal delta10 : STD_LOGIC_VECTOR(9 downto 0);
signal delta10x31 : STD_LOGIC_VECTOR(9 downto 0);
signal deltas10 : STD_LOGIC_VECTOR(9 downto 0);

begin

r5 <= in_data(14 downto 10);
g5 <= in_data(9 downto 5);
b5 <= in_data(4 downto 0);

process(r5, g5)
begin
	if(unsigned(r5) > unsigned(g5)) then
		rg5_gt <= r5;
		rg5_lt <= g5;
	else
		rg5_gt <= g5;
		rg5_lt <= r5;
	end if;
end process;

process(b5, rg5_gt)
begin
	if(unsigned(rg5_gt) > unsigned(b5)) then
		cmax5 <= rg5_gt;
	else
		cmax5 <= b5;
	end if;
end process;

process(b5, rg5_lt)
begin
	if(unsigned(rg5_lt) < unsigned(b5)) then
		cmax5 <= rg5_lt;
	else
		cmax5 <= b5;
	end if;
end process;

process(cmax5, cmin5)
begin
	delta5 <= std_logic_vector(to_unsigned(to_integer(unsigned(cmax5)) - to_integer(unsigned(cmin5)), 5));
end process;

process(delta5, cmax5)
begin
	delta10 <= "00000" & delta5;
	cmax10 <= "00000" & cmax5;
	delta10x31 <= std_logic_vector(to_unsigned(to_integer(unsigned(delta10)) * 31, 10));
	deltas10 <= std_logic_vector(to_unsigned(to_integer(unsigned(delta10x31)) / to_integer(unsigned(cmax10)), 10));
	if(unsigned(cmax5) = 0) then
		s8 <= "00000000";
	else
		s8 <= deltas10(7 downto 0);
	end if;
end process;

v8 <= cmax5 & "000";

H_CALC: entity work.h_calc
port map
(
cmax5 => cmax5,
delta5 => delta5,
r5 => r5,
g5 => g5,
b5 => b5,
h10 => cmaxh10
);

process(cmaxh10, delta5)
begin
	if(unsigned(delta5) = 0) then
		h10 <= "0000000000";
	else
		h10 <= cmaxh10;
	end if;
end process;

out_data <= h10 & s8 & v8;

end Behavioral;

