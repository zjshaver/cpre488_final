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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity rgb_threshold is
    Port ( in_data : in  STD_LOGIC_VECTOR (24 downto 0);
           h_high : in  STD_LOGIC_VECTOR (7 downto 0);
           h_low : in  STD_LOGIC_VECTOR (7 downto 0);
           s_high : in  STD_LOGIC_VECTOR (7 downto 0);
           s_low : in  STD_LOGIC_VECTOR (7 downto 0);
           v_high : in  STD_LOGIC_VECTOR (7 downto 0);
           v_low : in  STD_LOGIC_VECTOR (7 downto 0);
			  out_data : out STD_LOGIC_VECTOR (23 downto 0));
end rgb_threshold;

architecture Behavioral of rgb_threshold is

begin


end Behavioral;

