----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:29:44 12/06/2015 
-- Design Name: 
-- Module Name:    pixel_threshold - Behavioral 
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

entity pixel_threshold is
    Port ( in_data : in  STD_LOGIC_VECTOR (15 downto 0);
           out_data : out  STD_LOGIC_VECTOR (15 downto 0));
end pixel_threshold;

architecture Behavioral of pixel_threshold is

signal hsvout, threshout : STD_LOGIC_VECTOR(25 downto 0);

begin

RGB2HSV: entity work.rgb2hsv
port map
(
in_data => in_data,
out_data => hsvout
);

THRESH: entity work.rgb_threshold
port map
(
in_data => hsvout,
out_data => threshout,
h_high => "0100001110",
h_low => "0001011010",
s_high => "11000000",
s_low => "01000000",
v_high => "11000000",
v_low => "01000000"
);

HSV2RGB: entity work.hsv2rgb
port map
(
in_data => threshout,
out_data => out_data
);

end Behavioral;

