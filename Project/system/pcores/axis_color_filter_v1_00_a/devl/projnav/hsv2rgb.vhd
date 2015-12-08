----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:35:40 12/06/2015 
-- Design Name: 
-- Module Name:    hsv2rgb - Behavioral 
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

entity hsv2rgb is
    Port ( in_data : in  STD_LOGIC_VECTOR (25 downto 0);
           out_data : out  STD_LOGIC_VECTOR (15 downto 0));
end hsv2rgb;

architecture Behavioral of hsv2rgb is

signal v8 : STD_LOGIC_VECTOR(7 downto 0);

begin

v8 <= in_data(7 downto 0);

process(v8)
begin
	if(unsigned(v8) > 0) then
		out_data <= "1111111111111111";
	else
		out_data <= "0000000000000000";
	end if;
end process;

end Behavioral;

