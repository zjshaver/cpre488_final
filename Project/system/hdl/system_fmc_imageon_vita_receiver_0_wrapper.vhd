-------------------------------------------------------------------------------
-- system_fmc_imageon_vita_receiver_0_wrapper.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

library fmc_imageon_vita_receiver_v1_13_a;
use fmc_imageon_vita_receiver_v1_13_a.all;

entity system_fmc_imageon_vita_receiver_0_wrapper is
  port (
    S_AXI_ACLK : in std_logic;
    S_AXI_ARESETN : in std_logic;
    S_AXI_AWADDR : in std_logic_vector(31 downto 0);
    S_AXI_AWVALID : in std_logic;
    S_AXI_WDATA : in std_logic_vector(31 downto 0);
    S_AXI_WSTRB : in std_logic_vector(3 downto 0);
    S_AXI_WVALID : in std_logic;
    S_AXI_BREADY : in std_logic;
    S_AXI_ARADDR : in std_logic_vector(31 downto 0);
    S_AXI_ARVALID : in std_logic;
    S_AXI_RREADY : in std_logic;
    S_AXI_ARREADY : out std_logic;
    S_AXI_RDATA : out std_logic_vector(31 downto 0);
    S_AXI_RRESP : out std_logic_vector(1 downto 0);
    S_AXI_RVALID : out std_logic;
    S_AXI_WREADY : out std_logic;
    S_AXI_BRESP : out std_logic_vector(1 downto 0);
    S_AXI_BVALID : out std_logic;
    S_AXI_AWREADY : out std_logic;
    clk200 : in std_logic;
    clk : in std_logic;
    clk4x : in std_logic;
    reset : in std_logic;
    oe : in std_logic;
    io_vita_clk_pll : out std_logic;
    io_vita_reset_n : out std_logic;
    io_vita_trigger : out std_logic_vector(2 downto 0);
    io_vita_monitor : in std_logic_vector(1 downto 0);
    io_vita_spi_sclk : out std_logic;
    io_vita_spi_ssel_n : out std_logic;
    io_vita_spi_mosi : out std_logic;
    io_vita_spi_miso : in std_logic;
    io_vita_clk_out_p : in std_logic;
    io_vita_clk_out_n : in std_logic;
    io_vita_sync_p : in std_logic;
    io_vita_sync_n : in std_logic;
    io_vita_data_p : in std_logic_vector(7 downto 0);
    io_vita_data_n : in std_logic_vector(7 downto 0);
    trigger1 : in std_logic;
    fsync : out std_logic;
    xsvi_vsync_o : out std_logic;
    xsvi_hsync_o : out std_logic;
    xsvi_vblank_o : out std_logic;
    xsvi_hblank_o : out std_logic;
    xsvi_active_video_o : out std_logic;
    xsvi_video_data_o : out std_logic_vector(7 downto 0);
    debug_host_o : out std_logic_vector(231 downto 0);
    debug_spi_o : out std_logic_vector(95 downto 0);
    debug_iserdes_o : out std_logic_vector(229 downto 0);
    debug_decoder_o : out std_logic_vector(186 downto 0);
    debug_crc_o : out std_logic_vector(87 downto 0);
    debug_triggen_o : out std_logic_vector(9 downto 0);
    debug_video_o : out std_logic_vector(31 downto 0)
  );
end system_fmc_imageon_vita_receiver_0_wrapper;

architecture STRUCTURE of system_fmc_imageon_vita_receiver_0_wrapper is

  component fmc_imageon_vita_receiver is
    generic (
      C_S_AXI_DATA_WIDTH : INTEGER;
      C_S_AXI_ADDR_WIDTH : INTEGER;
      C_S_AXI_MIN_SIZE : std_logic_vector;
      C_USE_WSTRB : INTEGER;
      C_DPHASE_TIMEOUT : INTEGER;
      C_BASEADDR : std_logic_vector;
      C_HIGHADDR : std_logic_vector;
      C_FAMILY : STRING;
      C_NUM_REG : INTEGER;
      C_NUM_MEM : INTEGER;
      C_SLV_AWIDTH : INTEGER;
      C_SLV_DWIDTH : INTEGER;
      C_XSVI_DATA_WIDTH : INTEGER;
      C_XSVI_DIRECT_OUTPUT : INTEGER;
      C_XSVI_USE_SYNCGEN : INTEGER
    );
    port (
      S_AXI_ACLK : in std_logic;
      S_AXI_ARESETN : in std_logic;
      S_AXI_AWADDR : in std_logic_vector((C_S_AXI_ADDR_WIDTH-1) downto 0);
      S_AXI_AWVALID : in std_logic;
      S_AXI_WDATA : in std_logic_vector((C_S_AXI_DATA_WIDTH-1) downto 0);
      S_AXI_WSTRB : in std_logic_vector(((C_S_AXI_DATA_WIDTH/8)-1) downto 0);
      S_AXI_WVALID : in std_logic;
      S_AXI_BREADY : in std_logic;
      S_AXI_ARADDR : in std_logic_vector((C_S_AXI_ADDR_WIDTH-1) downto 0);
      S_AXI_ARVALID : in std_logic;
      S_AXI_RREADY : in std_logic;
      S_AXI_ARREADY : out std_logic;
      S_AXI_RDATA : out std_logic_vector((C_S_AXI_DATA_WIDTH-1) downto 0);
      S_AXI_RRESP : out std_logic_vector(1 downto 0);
      S_AXI_RVALID : out std_logic;
      S_AXI_WREADY : out std_logic;
      S_AXI_BRESP : out std_logic_vector(1 downto 0);
      S_AXI_BVALID : out std_logic;
      S_AXI_AWREADY : out std_logic;
      clk200 : in std_logic;
      clk : in std_logic;
      clk4x : in std_logic;
      reset : in std_logic;
      oe : in std_logic;
      io_vita_clk_pll : out std_logic;
      io_vita_reset_n : out std_logic;
      io_vita_trigger : out std_logic_vector(2 downto 0);
      io_vita_monitor : in std_logic_vector(1 downto 0);
      io_vita_spi_sclk : out std_logic;
      io_vita_spi_ssel_n : out std_logic;
      io_vita_spi_mosi : out std_logic;
      io_vita_spi_miso : in std_logic;
      io_vita_clk_out_p : in std_logic;
      io_vita_clk_out_n : in std_logic;
      io_vita_sync_p : in std_logic;
      io_vita_sync_n : in std_logic;
      io_vita_data_p : in std_logic_vector(7 downto 0);
      io_vita_data_n : in std_logic_vector(7 downto 0);
      trigger1 : in std_logic;
      fsync : out std_logic;
      xsvi_vsync_o : out std_logic;
      xsvi_hsync_o : out std_logic;
      xsvi_vblank_o : out std_logic;
      xsvi_hblank_o : out std_logic;
      xsvi_active_video_o : out std_logic;
      xsvi_video_data_o : out std_logic_vector((C_XSVI_DATA_WIDTH-1) downto 0);
      debug_host_o : out std_logic_vector(231 downto 0);
      debug_spi_o : out std_logic_vector( 95 downto 0);
      debug_iserdes_o : out std_logic_vector(229 downto 0);
      debug_decoder_o : out std_logic_vector(186 downto 0);
      debug_crc_o : out std_logic_vector( 87 downto 0);
      debug_triggen_o : out std_logic_vector(  9 downto 0);
      debug_video_o : out std_logic_vector( 31 downto 0)
    );
  end component;

begin

  fmc_imageon_vita_receiver_0 : fmc_imageon_vita_receiver
    generic map (
      C_S_AXI_DATA_WIDTH => 32,
      C_S_AXI_ADDR_WIDTH => 32,
      C_S_AXI_MIN_SIZE => X"000001ff",
      C_USE_WSTRB => 0,
      C_DPHASE_TIMEOUT => 8,
      C_BASEADDR => X"52100000",
      C_HIGHADDR => X"5210ffff",
      C_FAMILY => "zynq",
      C_NUM_REG => 1,
      C_NUM_MEM => 1,
      C_SLV_AWIDTH => 32,
      C_SLV_DWIDTH => 32,
      C_XSVI_DATA_WIDTH => 8,
      C_XSVI_DIRECT_OUTPUT => 0,
      C_XSVI_USE_SYNCGEN => 1
    )
    port map (
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_AWADDR => S_AXI_AWADDR,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_WDATA => S_AXI_WDATA,
      S_AXI_WSTRB => S_AXI_WSTRB,
      S_AXI_WVALID => S_AXI_WVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_ARADDR => S_AXI_ARADDR,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_RDATA => S_AXI_RDATA,
      S_AXI_RRESP => S_AXI_RRESP,
      S_AXI_RVALID => S_AXI_RVALID,
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_BRESP => S_AXI_BRESP,
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_AWREADY => S_AXI_AWREADY,
      clk200 => clk200,
      clk => clk,
      clk4x => clk4x,
      reset => reset,
      oe => oe,
      io_vita_clk_pll => io_vita_clk_pll,
      io_vita_reset_n => io_vita_reset_n,
      io_vita_trigger => io_vita_trigger,
      io_vita_monitor => io_vita_monitor,
      io_vita_spi_sclk => io_vita_spi_sclk,
      io_vita_spi_ssel_n => io_vita_spi_ssel_n,
      io_vita_spi_mosi => io_vita_spi_mosi,
      io_vita_spi_miso => io_vita_spi_miso,
      io_vita_clk_out_p => io_vita_clk_out_p,
      io_vita_clk_out_n => io_vita_clk_out_n,
      io_vita_sync_p => io_vita_sync_p,
      io_vita_sync_n => io_vita_sync_n,
      io_vita_data_p => io_vita_data_p,
      io_vita_data_n => io_vita_data_n,
      trigger1 => trigger1,
      fsync => fsync,
      xsvi_vsync_o => xsvi_vsync_o,
      xsvi_hsync_o => xsvi_hsync_o,
      xsvi_vblank_o => xsvi_vblank_o,
      xsvi_hblank_o => xsvi_hblank_o,
      xsvi_active_video_o => xsvi_active_video_o,
      xsvi_video_data_o => xsvi_video_data_o,
      debug_host_o => debug_host_o,
      debug_spi_o => debug_spi_o,
      debug_iserdes_o => debug_iserdes_o,
      debug_decoder_o => debug_decoder_o,
      debug_crc_o => debug_crc_o,
      debug_triggen_o => debug_triggen_o,
      debug_video_o => debug_video_o
    );

end architecture STRUCTURE;

