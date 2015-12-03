-------------------------------------------------------------------------------
-- system_v_tc_0_wrapper.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

library v_tc_v5_00_a;
use v_tc_v5_00_a.all;

entity system_v_tc_0_wrapper is
  port (
    S_AXI_ACLK : in std_logic;
    S_AXI_ARESETN : in std_logic;
    S_AXI_ACLKEN : in std_logic;
    S_AXI_AWADDR : in std_logic_vector(8 downto 0);
    S_AXI_AWVALID : in std_logic;
    S_AXI_AWREADY : out std_logic;
    S_AXI_WDATA : in std_logic_vector(31 downto 0);
    S_AXI_WSTRB : in std_logic_vector(3 downto 0);
    S_AXI_WVALID : in std_logic;
    S_AXI_WREADY : out std_logic;
    S_AXI_BRESP : out std_logic_vector(1 downto 0);
    S_AXI_BVALID : out std_logic;
    S_AXI_BREADY : in std_logic;
    S_AXI_ARADDR : in std_logic_vector(8 downto 0);
    S_AXI_ARVALID : in std_logic;
    S_AXI_ARREADY : out std_logic;
    S_AXI_RDATA : out std_logic_vector(31 downto 0);
    S_AXI_RRESP : out std_logic_vector(1 downto 0);
    S_AXI_RVALID : out std_logic;
    S_AXI_RREADY : in std_logic;
    irq : out std_logic;
    vblank_in : in std_logic;
    vsync_in : in std_logic;
    hblank_in : in std_logic;
    hsync_in : in std_logic;
    active_video_in : in std_logic;
    active_chroma_in : in std_logic;
    vblank_out : out std_logic;
    vsync_out : out std_logic;
    hblank_out : out std_logic;
    hsync_out : out std_logic;
    active_video_out : out std_logic;
    active_chroma_out : out std_logic;
    fsync_out : out std_logic_vector(0 to 0);
    clk : in std_logic;
    resetn : in std_logic;
    clken : in std_logic;
    det_clken : in std_logic;
    gen_clken : in std_logic;
    fsync_in : in std_logic
  );
end system_v_tc_0_wrapper;

architecture STRUCTURE of system_v_tc_0_wrapper is

  component v_tc is
    generic (
      C_GEN_AUTO_SWITCH : integer;
      C_MAX_PIXELS : integer;
      C_MAX_LINES : integer;
      C_NUM_FSYNCS : integer;
      C_DETECT_EN : integer;
      C_GENERATE_EN : integer;
      C_DET_HSYNC_EN : integer;
      C_DET_VSYNC_EN : integer;
      C_DET_HBLANK_EN : integer;
      C_DET_VBLANK_EN : integer;
      C_DET_AVIDEO_EN : integer;
      C_DET_ACHROMA_EN : integer;
      C_GEN_HSYNC_EN : integer;
      C_GEN_VSYNC_EN : integer;
      C_GEN_HBLANK_EN : integer;
      C_GEN_VBLANK_EN : integer;
      C_GEN_AVIDEO_EN : integer;
      C_GEN_ACHROMA_EN : integer;
      C_S_AXI_ADDR_WIDTH : INTEGER;
      C_S_AXI_DATA_WIDTH : INTEGER;
      C_S_AXI_CLK_FREQ_HZ : INTEGER;
      C_FAMILY : STRING
    );
    port (
      S_AXI_ACLK : in std_logic;
      S_AXI_ARESETN : in std_logic;
      S_AXI_ACLKEN : in std_logic;
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
      irq : out std_logic;
      vblank_in : in std_logic;
      vsync_in : in std_logic;
      hblank_in : in std_logic;
      hsync_in : in std_logic;
      active_video_in : in std_logic;
      active_chroma_in : in std_logic;
      vblank_out : out std_logic;
      vsync_out : out std_logic;
      hblank_out : out std_logic;
      hsync_out : out std_logic;
      active_video_out : out std_logic;
      active_chroma_out : out std_logic;
      fsync_out : out std_logic_vector(C_NUM_FSYNCS-1 to 0);
      clk : in std_logic;
      resetn : in std_logic;
      clken : in std_logic;
      det_clken : in std_logic;
      gen_clken : in std_logic;
      fsync_in : in std_logic
    );
  end component;

begin

  v_tc_0 : v_tc
    generic map (
      C_GEN_AUTO_SWITCH => 1,
      C_MAX_PIXELS => 4096,
      C_MAX_LINES => 4096,
      C_NUM_FSYNCS => 1,
      C_DETECT_EN => 1,
      C_GENERATE_EN => 1,
      C_DET_HSYNC_EN => 1,
      C_DET_VSYNC_EN => 1,
      C_DET_HBLANK_EN => 1,
      C_DET_VBLANK_EN => 1,
      C_DET_AVIDEO_EN => 1,
      C_DET_ACHROMA_EN => 0,
      C_GEN_HSYNC_EN => 1,
      C_GEN_VSYNC_EN => 1,
      C_GEN_HBLANK_EN => 1,
      C_GEN_VBLANK_EN => 1,
      C_GEN_AVIDEO_EN => 1,
      C_GEN_ACHROMA_EN => 1,
      C_S_AXI_ADDR_WIDTH => 9,
      C_S_AXI_DATA_WIDTH => 32,
      C_S_AXI_CLK_FREQ_HZ => 50000000,
      C_FAMILY => "zynq"
    )
    port map (
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ACLKEN => S_AXI_ACLKEN,
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
      irq => irq,
      vblank_in => vblank_in,
      vsync_in => vsync_in,
      hblank_in => hblank_in,
      hsync_in => hsync_in,
      active_video_in => active_video_in,
      active_chroma_in => active_chroma_in,
      vblank_out => vblank_out,
      vsync_out => vsync_out,
      hblank_out => hblank_out,
      hsync_out => hsync_out,
      active_video_out => active_video_out,
      active_chroma_out => active_chroma_out,
      fsync_out => fsync_out,
      clk => clk,
      resetn => resetn,
      clken => clken,
      det_clken => det_clken,
      gen_clken => gen_clken,
      fsync_in => fsync_in
    );

end architecture STRUCTURE;

