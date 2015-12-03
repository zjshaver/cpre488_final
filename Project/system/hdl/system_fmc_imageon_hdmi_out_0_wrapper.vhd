-------------------------------------------------------------------------------
-- system_fmc_imageon_hdmi_out_0_wrapper.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

library fmc_imageon_hdmi_out_v1_05_a;
use fmc_imageon_hdmi_out_v1_05_a.all;

entity system_fmc_imageon_hdmi_out_0_wrapper is
  port (
    clk : in std_logic;
    reset : in std_logic;
    oe : in std_logic;
    embed_syncs : in std_logic;
    audio_spdif : in std_logic;
    xsvi_vblank_i : in std_logic;
    xsvi_hblank_i : in std_logic;
    xsvi_active_video_i : in std_logic;
    xsvi_video_data_i : in std_logic_vector(15 downto 0);
    io_hdmio_spdif : out std_logic;
    io_hdmio_video : out std_logic_vector(15 downto 0);
    io_hdmio_clk : out std_logic;
    debug_o : out std_logic_vector(39 downto 0)
  );
end system_fmc_imageon_hdmi_out_0_wrapper;

architecture STRUCTURE of system_fmc_imageon_hdmi_out_0_wrapper is

  component fmc_imageon_hdmi_out is
    generic (
      C_FAMILY : STRING;
      C_DATA_WIDTH : INTEGER
    );
    port (
      clk : in std_logic;
      reset : in std_logic;
      oe : in std_logic;
      embed_syncs : in std_logic;
      audio_spdif : in std_logic;
      xsvi_vblank_i : in std_logic;
      xsvi_hblank_i : in std_logic;
      xsvi_active_video_i : in std_logic;
      xsvi_video_data_i : in std_logic_vector((C_DATA_WIDTH-1) downto 0);
      io_hdmio_spdif : out std_logic;
      io_hdmio_video : out std_logic_vector(15 downto 0);
      io_hdmio_clk : out std_logic;
      debug_o : out std_logic_vector(39 downto 0)
    );
  end component;

begin

  fmc_imageon_hdmi_out_0 : fmc_imageon_hdmi_out
    generic map (
      C_FAMILY => "zynq",
      C_DATA_WIDTH => 16
    )
    port map (
      clk => clk,
      reset => reset,
      oe => oe,
      embed_syncs => embed_syncs,
      audio_spdif => audio_spdif,
      xsvi_vblank_i => xsvi_vblank_i,
      xsvi_hblank_i => xsvi_hblank_i,
      xsvi_active_video_i => xsvi_active_video_i,
      xsvi_video_data_i => xsvi_video_data_i,
      io_hdmio_spdif => io_hdmio_spdif,
      io_hdmio_video => io_hdmio_video,
      io_hdmio_clk => io_hdmio_clk,
      debug_o => debug_o
    );

end architecture STRUCTURE;

