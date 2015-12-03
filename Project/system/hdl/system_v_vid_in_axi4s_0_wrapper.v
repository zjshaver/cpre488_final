//-----------------------------------------------------------------------------
// system_v_vid_in_axi4s_0_wrapper.v
//-----------------------------------------------------------------------------

(* x_core_info = "v_vid_in_axi4s_v2_00_a" *)
module system_v_vid_in_axi4s_0_wrapper
  (
    vid_in_clk,
    rst,
    vid_de,
    vid_vblank,
    vid_hblank,
    vid_vsync,
    vid_hsync,
    vid_data,
    aclk,
    aclken,
    aresetn,
    m_axis_video_tdata,
    m_axis_video_tvalid,
    m_axis_video_tready,
    m_axis_video_tuser,
    m_axis_video_tlast,
    vtd_active_video,
    vtd_vblank,
    vtd_hblank,
    vtd_vsync,
    vtd_hsync,
    wr_error,
    empty,
    axis_enable
  );
  input vid_in_clk;
  input rst;
  input vid_de;
  input vid_vblank;
  input vid_hblank;
  input vid_vsync;
  input vid_hsync;
  input [7:0] vid_data;
  input aclk;
  input aclken;
  input aresetn;
  output [7:0] m_axis_video_tdata;
  output m_axis_video_tvalid;
  input m_axis_video_tready;
  output m_axis_video_tuser;
  output m_axis_video_tlast;
  output vtd_active_video;
  output vtd_vblank;
  output vtd_hblank;
  output vtd_vsync;
  output vtd_hsync;
  output wr_error;
  output empty;
  input axis_enable;

  v_vid_in_axi4s
    #(
      .C_M_AXIS_VIDEO_DATA_WIDTH ( 8 ),
      .C_M_AXIS_VIDEO_FORMAT ( 12 ),
      .VID_IN_DATA_WIDTH ( 8 ),
      .C_M_AXIS_VIDEO_TDATA_WIDTH ( 8 ),
      .PADDING_BITS ( 0 ),
      .RAM_ADDR_BITS ( 10 ),
      .HYSTERESIS_LEVEL ( 12 )
    )
    v_vid_in_axi4s_0 (
      .vid_in_clk ( vid_in_clk ),
      .rst ( rst ),
      .vid_de ( vid_de ),
      .vid_vblank ( vid_vblank ),
      .vid_hblank ( vid_hblank ),
      .vid_vsync ( vid_vsync ),
      .vid_hsync ( vid_hsync ),
      .vid_data ( vid_data ),
      .aclk ( aclk ),
      .aclken ( aclken ),
      .aresetn ( aresetn ),
      .m_axis_video_tdata ( m_axis_video_tdata ),
      .m_axis_video_tvalid ( m_axis_video_tvalid ),
      .m_axis_video_tready ( m_axis_video_tready ),
      .m_axis_video_tuser ( m_axis_video_tuser ),
      .m_axis_video_tlast ( m_axis_video_tlast ),
      .vtd_active_video ( vtd_active_video ),
      .vtd_vblank ( vtd_vblank ),
      .vtd_hblank ( vtd_hblank ),
      .vtd_vsync ( vtd_vsync ),
      .vtd_hsync ( vtd_hsync ),
      .wr_error ( wr_error ),
      .empty ( empty ),
      .axis_enable ( axis_enable )
    );

endmodule

