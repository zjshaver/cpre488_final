-------------------------------------------------------------------------------
-- system_v_rgb2ycrcb_0_wrapper.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

library v_rgb2ycrcb_v6_00_a;
use v_rgb2ycrcb_v6_00_a.all;

entity system_v_rgb2ycrcb_0_wrapper is
  port (
    aclk : in std_logic;
    aclken : in std_logic;
    aresetn : in std_logic;
    irq : out std_logic;
    intc_if : out std_logic_vector(8 downto 0);
    s_axis_video_tdata : in std_logic_vector(23 downto 0);
    s_axis_video_tready : out std_logic;
    s_axis_video_tvalid : in std_logic;
    s_axis_video_tlast : in std_logic;
    s_axis_video_tuser_sof : in std_logic;
    m_axis_video_tdata : out std_logic_vector(23 downto 0);
    m_axis_video_tready : in std_logic;
    m_axis_video_tvalid : out std_logic;
    m_axis_video_tlast : out std_logic;
    m_axis_video_tuser_sof : out std_logic;
    s_axi_aclk : in std_logic;
    s_axi_aclken : in std_logic;
    s_axi_aresetn : in std_logic;
    s_axi_awaddr : in std_logic_vector(8 downto 0);
    s_axi_awvalid : in std_logic;
    s_axi_awready : out std_logic;
    s_axi_wdata : in std_logic_vector(31 downto 0);
    s_axi_wstrb : in std_logic_vector(3 downto 0);
    s_axi_wvalid : in std_logic;
    s_axi_wready : out std_logic;
    s_axi_bresp : out std_logic_vector(1 downto 0);
    s_axi_bvalid : out std_logic;
    s_axi_bready : in std_logic;
    s_axi_araddr : in std_logic_vector(8 downto 0);
    s_axi_arvalid : in std_logic;
    s_axi_arready : out std_logic;
    s_axi_rdata : out std_logic_vector(31 downto 0);
    s_axi_rresp : out std_logic_vector(1 downto 0);
    s_axi_rvalid : out std_logic;
    s_axi_rready : in std_logic
  );

  attribute x_core_info : STRING;
  attribute x_core_info of system_v_rgb2ycrcb_0_wrapper : entity is "v_rgb2ycrcb_v6_00_a";

end system_v_rgb2ycrcb_0_wrapper;

architecture STRUCTURE of system_v_rgb2ycrcb_0_wrapper is

  component v_rgb2ycrcb is
    generic (
      C_HAS_AXI4_LITE : INTEGER;
      C_HAS_DEBUG : INTEGER;
      C_HAS_INTC_IF : INTEGER;
      C_S_AXIS_VIDEO_DATA_WIDTH : INTEGER;
      C_S_AXIS_VIDEO_FORMAT : INTEGER;
      C_S_AXIS_VIDEO_TDATA_WIDTH : INTEGER;
      C_M_AXIS_VIDEO_DATA_WIDTH : INTEGER;
      C_M_AXIS_VIDEO_FORMAT : INTEGER;
      C_M_AXIS_VIDEO_TDATA_WIDTH : INTEGER;
      C_ACTIVE_ROWS : INTEGER;
      C_ACTIVE_COLS : INTEGER;
      C_MAX_COLS : INTEGER;
      C_YOFFSET : INTEGER;
      C_CBOFFSET : INTEGER;
      C_CROFFSET : INTEGER;
      C_HAS_CLIP : INTEGER;
      C_HAS_CLAMP : INTEGER;
      C_YMAX : INTEGER;
      C_CBMAX : INTEGER;
      C_CRMAX : INTEGER;
      C_YMIN : INTEGER;
      C_CBMIN : INTEGER;
      C_CRMIN : INTEGER;
      C_ACOEF : INTEGER;
      C_BCOEF : INTEGER;
      C_CCOEF : INTEGER;
      C_DCOEF : INTEGER;
      C_S_AXI_ADDR_WIDTH : INTEGER;
      C_S_AXI_DATA_WIDTH : INTEGER;
      C_S_AXI_CLK_FREQ_HZ : INTEGER;
      C_FAMILY : STRING
    );
    port (
      aclk : in std_logic;
      aclken : in std_logic;
      aresetn : in std_logic;
      irq : out std_logic;
      intc_if : out std_logic_vector(8 downto 0);
      s_axis_video_tdata : in std_logic_vector((C_S_AXIS_VIDEO_TDATA_WIDTH-1) downto 0);
      s_axis_video_tready : out std_logic;
      s_axis_video_tvalid : in std_logic;
      s_axis_video_tlast : in std_logic;
      s_axis_video_tuser_sof : in std_logic;
      m_axis_video_tdata : out std_logic_vector((C_M_AXIS_VIDEO_TDATA_WIDTH-1) downto 0);
      m_axis_video_tready : in std_logic;
      m_axis_video_tvalid : out std_logic;
      m_axis_video_tlast : out std_logic;
      m_axis_video_tuser_sof : out std_logic;
      s_axi_aclk : in std_logic;
      s_axi_aclken : in std_logic;
      s_axi_aresetn : in std_logic;
      s_axi_awaddr : in std_logic_vector((C_S_AXI_ADDR_WIDTH-1) downto 0);
      s_axi_awvalid : in std_logic;
      s_axi_awready : out std_logic;
      s_axi_wdata : in std_logic_vector((C_S_AXI_DATA_WIDTH-1) downto 0);
      s_axi_wstrb : in std_logic_vector(((C_S_AXI_DATA_WIDTH/8)-1) downto 0);
      s_axi_wvalid : in std_logic;
      s_axi_wready : out std_logic;
      s_axi_bresp : out std_logic_vector(1 downto 0);
      s_axi_bvalid : out std_logic;
      s_axi_bready : in std_logic;
      s_axi_araddr : in std_logic_vector((C_S_AXI_ADDR_WIDTH-1) downto 0);
      s_axi_arvalid : in std_logic;
      s_axi_arready : out std_logic;
      s_axi_rdata : out std_logic_vector((C_S_AXI_DATA_WIDTH-1) downto 0);
      s_axi_rresp : out std_logic_vector(1 downto 0);
      s_axi_rvalid : out std_logic;
      s_axi_rready : in std_logic
    );
  end component;

begin

  v_rgb2ycrcb_0 : v_rgb2ycrcb
    generic map (
      C_HAS_AXI4_LITE => 1,
      C_HAS_DEBUG => 1,
      C_HAS_INTC_IF => 0,
      C_S_AXIS_VIDEO_DATA_WIDTH => 8,
      C_S_AXIS_VIDEO_FORMAT => 2,
      C_S_AXIS_VIDEO_TDATA_WIDTH => 24,
      C_M_AXIS_VIDEO_DATA_WIDTH => 8,
      C_M_AXIS_VIDEO_FORMAT => 1,
      C_M_AXIS_VIDEO_TDATA_WIDTH => 24,
      C_ACTIVE_ROWS => 1080,
      C_ACTIVE_COLS => 1920,
      C_MAX_COLS => 1920,
      C_YOFFSET => 16,
      C_CBOFFSET => 128,
      C_CROFFSET => 128,
      C_HAS_CLIP => 1,
      C_HAS_CLAMP => 1,
      C_YMAX => 255,
      C_CBMAX => 255,
      C_CRMAX => 255,
      C_YMIN => 0,
      C_CBMIN => 0,
      C_CRMIN => 0,
      C_ACOEF => 16829,
      C_BCOEF => 6415,
      C_CCOEF => 46727,
      C_DCOEF => 37827,
      C_S_AXI_ADDR_WIDTH => 9,
      C_S_AXI_DATA_WIDTH => 32,
      C_S_AXI_CLK_FREQ_HZ => 50000000,
      C_FAMILY => "zynq"
    )
    port map (
      aclk => aclk,
      aclken => aclken,
      aresetn => aresetn,
      irq => irq,
      intc_if => intc_if,
      s_axis_video_tdata => s_axis_video_tdata,
      s_axis_video_tready => s_axis_video_tready,
      s_axis_video_tvalid => s_axis_video_tvalid,
      s_axis_video_tlast => s_axis_video_tlast,
      s_axis_video_tuser_sof => s_axis_video_tuser_sof,
      m_axis_video_tdata => m_axis_video_tdata,
      m_axis_video_tready => m_axis_video_tready,
      m_axis_video_tvalid => m_axis_video_tvalid,
      m_axis_video_tlast => m_axis_video_tlast,
      m_axis_video_tuser_sof => m_axis_video_tuser_sof,
      s_axi_aclk => s_axi_aclk,
      s_axi_aclken => s_axi_aclken,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_awaddr => s_axi_awaddr,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_awready => s_axi_awready,
      s_axi_wdata => s_axi_wdata,
      s_axi_wstrb => s_axi_wstrb,
      s_axi_wvalid => s_axi_wvalid,
      s_axi_wready => s_axi_wready,
      s_axi_bresp => s_axi_bresp,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_bready => s_axi_bready,
      s_axi_araddr => s_axi_araddr,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_arready => s_axi_arready,
      s_axi_rdata => s_axi_rdata,
      s_axi_rresp => s_axi_rresp,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_rready => s_axi_rready
    );

end architecture STRUCTURE;

