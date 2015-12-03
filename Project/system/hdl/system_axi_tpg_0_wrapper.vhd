-------------------------------------------------------------------------------
-- system_axi_tpg_0_wrapper.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

library axi_tpg_v2_00_a;
use axi_tpg_v2_00_a.all;

entity system_axi_tpg_0_wrapper is
  port (
    S_AXI_ACLK : in std_logic;
    S_AXI_ARESETN : in std_logic;
    S_AXI_AWADDR : in std_logic_vector(31 downto 0);
    S_AXI_AWVALID : in std_logic;
    S_AXI_AWREADY : out std_logic;
    S_AXI_WDATA : in std_logic_vector(31 downto 0);
    S_AXI_WSTRB : in std_logic_vector(3 downto 0);
    S_AXI_WVALID : in std_logic;
    S_AXI_WREADY : out std_logic;
    S_AXI_BRESP : out std_logic_vector(1 downto 0);
    S_AXI_BVALID : out std_logic;
    S_AXI_BREADY : in std_logic;
    S_AXI_ARADDR : in std_logic_vector(31 downto 0);
    S_AXI_ARVALID : in std_logic;
    S_AXI_ARREADY : out std_logic;
    S_AXI_RDATA : out std_logic_vector(31 downto 0);
    S_AXI_RRESP : out std_logic_vector(1 downto 0);
    S_AXI_RVALID : out std_logic;
    S_AXI_RREADY : in std_logic;
    clk : in std_logic;
    hsync_in : in std_logic;
    vsync_in : in std_logic;
    hblank_in : in std_logic;
    vblank_in : in std_logic;
    active_video_in : in std_logic;
    video_data_in : in std_logic_vector(15 downto 0);
    hsync_out : out std_logic;
    vsync_out : out std_logic;
    hblank_out : out std_logic;
    vblank_out : out std_logic;
    active_video_out : out std_logic;
    video_data_out : out std_logic_vector(15 downto 0);
    VDMA_wd_clk : out std_logic;
    VDMA_wd_reset : out std_logic;
    VDMA_video_out_full : in std_logic;
    VDMA_video_out_we : out std_logic;
    VDMA_video_data_out : out std_logic_vector(15 downto 0);
    ZP_debug : out std_logic_vector(57 downto 0);
    TPG_debug : out std_logic_vector(38 downto 0)
  );
end system_axi_tpg_0_wrapper;

architecture STRUCTURE of system_axi_tpg_0_wrapper is

  component axi_tpg is
    generic (
      C_BASEADDR : std_logic_vector;
      C_HIGHADDR : std_logic_vector;
      C_S_AXI_ADDR_WIDTH : INTEGER;
      C_S_AXI_DATA_WIDTH : INTEGER;
      C_S_AXI_CLK_FREQ_HZ : INTEGER;
      C_FAMILY : STRING;
      C_CHROMA_FORMAT : INTEGER;
      C_DATA_WIDTH : INTEGER;
      C_NUM_CHANNELS : INTEGER
    );
    port (
      S_AXI_ACLK : in std_logic;
      S_AXI_ARESETN : in std_logic;
      S_AXI_AWADDR : in std_logic_vector((C_S_AXI_ADDR_WIDTH-1) downto 0);
      S_AXI_AWVALID : in std_logic;
      S_AXI_AWREADY : out std_logic;
      S_AXI_WDATA : in std_logic_vector((C_S_AXI_DATA_WIDTH-1) downto 0);
      S_AXI_WSTRB : in std_logic_vector(((C_S_AXI_DATA_WIDTH/8)-1) downto 0);
      S_AXI_WVALID : in std_logic;
      S_AXI_WREADY : out std_logic;
      S_AXI_BRESP : out std_logic_vector(1 downto 0);
      S_AXI_BVALID : out std_logic;
      S_AXI_BREADY : in std_logic;
      S_AXI_ARADDR : in std_logic_vector((C_S_AXI_ADDR_WIDTH-1) downto 0);
      S_AXI_ARVALID : in std_logic;
      S_AXI_ARREADY : out std_logic;
      S_AXI_RDATA : out std_logic_vector((C_S_AXI_DATA_WIDTH-1) downto 0);
      S_AXI_RRESP : out std_logic_vector(1 downto 0);
      S_AXI_RVALID : out std_logic;
      S_AXI_RREADY : in std_logic;
      clk : in std_logic;
      hsync_in : in std_logic;
      vsync_in : in std_logic;
      hblank_in : in std_logic;
      vblank_in : in std_logic;
      active_video_in : in std_logic;
      video_data_in : in std_logic_vector((C_NUM_CHANNELS*C_DATA_WIDTH)-1 downto 0);
      hsync_out : out std_logic;
      vsync_out : out std_logic;
      hblank_out : out std_logic;
      vblank_out : out std_logic;
      active_video_out : out std_logic;
      video_data_out : out std_logic_vector((C_NUM_CHANNELS*C_DATA_WIDTH)-1 downto 0);
      VDMA_wd_clk : out std_logic;
      VDMA_wd_reset : out std_logic;
      VDMA_video_out_full : in std_logic;
      VDMA_video_out_we : out std_logic;
      VDMA_video_data_out : out std_logic_vector((C_NUM_CHANNELS*C_DATA_WIDTH)-1 downto 0);
      ZP_debug : out std_logic_vector(57 downto 0);
      TPG_debug : out std_logic_vector(38 downto 0)
    );
  end component;

begin

  axi_tpg_0 : axi_tpg
    generic map (
      C_BASEADDR => X"51200000",
      C_HIGHADDR => X"5120ffff",
      C_S_AXI_ADDR_WIDTH => 32,
      C_S_AXI_DATA_WIDTH => 32,
      C_S_AXI_CLK_FREQ_HZ => 50000000,
      C_FAMILY => "zynq",
      C_CHROMA_FORMAT => 0,
      C_DATA_WIDTH => 8,
      C_NUM_CHANNELS => 2
    )
    port map (
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_AWADDR => S_AXI_AWADDR,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_WDATA => S_AXI_WDATA,
      S_AXI_WSTRB => S_AXI_WSTRB,
      S_AXI_WVALID => S_AXI_WVALID,
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_BRESP => S_AXI_BRESP,
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_ARADDR => S_AXI_ARADDR,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_RDATA => S_AXI_RDATA,
      S_AXI_RRESP => S_AXI_RRESP,
      S_AXI_RVALID => S_AXI_RVALID,
      S_AXI_RREADY => S_AXI_RREADY,
      clk => clk,
      hsync_in => hsync_in,
      vsync_in => vsync_in,
      hblank_in => hblank_in,
      vblank_in => vblank_in,
      active_video_in => active_video_in,
      video_data_in => video_data_in,
      hsync_out => hsync_out,
      vsync_out => vsync_out,
      hblank_out => hblank_out,
      vblank_out => vblank_out,
      active_video_out => active_video_out,
      video_data_out => video_data_out,
      VDMA_wd_clk => VDMA_wd_clk,
      VDMA_wd_reset => VDMA_wd_reset,
      VDMA_video_out_full => VDMA_video_out_full,
      VDMA_video_out_we => VDMA_video_out_we,
      VDMA_video_data_out => VDMA_video_data_out,
      ZP_debug => ZP_debug,
      TPG_debug => TPG_debug
    );

end architecture STRUCTURE;

