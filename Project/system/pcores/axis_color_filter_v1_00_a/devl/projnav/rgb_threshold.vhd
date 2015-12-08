----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:33:28 12/06/2015 
-- Design Name: 
-- Module Name:    rgb_threshold - Behavioral 
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
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity rgb_threshold is
    Port ( in_data : in  STD_LOGIC_VECTOR (25 downto 0);
           h_high : in  STD_LOGIC_VECTOR (9 downto 0);
           h_low : in  STD_LOGIC_VECTOR (9 downto 0);
           s_high : in  STD_LOGIC_VECTOR (7 downto 0);
           s_low : in  STD_LOGIC_VECTOR (7 downto 0);
           v_high : in  STD_LOGIC_VECTOR (7 downto 0);
           v_low : in  STD_LOGIC_VECTOR (7 downto 0);
			  out_data : out STD_LOGIC_VECTOR (25 downto 0));
end rgb_threshold;

architecture Behavioral of rgb_threshold is

signal h10 : STD_LOGIC_VECTOR(9 downto 0);
signal s8, v8 : STD_LOGIC_VECTOR(7 downto 0);

begin

h10 <= in_data(25 downto 16);
s8 <= in_data(15 downto 8);
v8 <= in_data(7 downto 0);

process(h_high, h_low, h10, s_high, s_low, s8, v_high, v_low, v8)
begin
	if(unsigned(h10) > unsigned(h_high) or unsigned(h10) < unsigned(h_low) or unsigned(s8) > unsigned(s_high) or unsigned(s8) < unsigned(s_low) or unsigned(v8) > unsigned(v_high) or unsigned(v8) < unsigned(v_low)) then
		out_data <= "00000000000000000011111111";
	else
		out_data <= "00000000000000000000000000";
	end if;
end process;

end Behavioral;

