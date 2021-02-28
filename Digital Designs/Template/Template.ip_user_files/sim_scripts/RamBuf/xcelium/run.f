-makelib xcelium_lib/xpm -sv \
  "I:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "I:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/clocking/mig_7series_v4_2_clk_ibuf.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/clocking/mig_7series_v4_2_infrastructure.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/clocking/mig_7series_v4_2_iodelay_ctrl.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/clocking/mig_7series_v4_2_tempmon.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/controller/mig_7series_v4_2_arb_mux.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/controller/mig_7series_v4_2_arb_row_col.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/controller/mig_7series_v4_2_arb_select.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/controller/mig_7series_v4_2_bank_cntrl.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/controller/mig_7series_v4_2_bank_common.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/controller/mig_7series_v4_2_bank_compare.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/controller/mig_7series_v4_2_bank_mach.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/controller/mig_7series_v4_2_bank_queue.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/controller/mig_7series_v4_2_bank_state.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/controller/mig_7series_v4_2_col_mach.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/controller/mig_7series_v4_2_mc.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/controller/mig_7series_v4_2_rank_cntrl.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/controller/mig_7series_v4_2_rank_common.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/controller/mig_7series_v4_2_rank_mach.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/controller/mig_7series_v4_2_round_robin_arb.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/ecc/mig_7series_v4_2_ecc_buf.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/ecc/mig_7series_v4_2_ecc_dec_fix.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/ecc/mig_7series_v4_2_ecc_gen.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/ecc/mig_7series_v4_2_ecc_merge_enc.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/ecc/mig_7series_v4_2_fi_xor.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/ip_top/mig_7series_v4_2_memc_ui_top_std.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/ip_top/mig_7series_v4_2_mem_intfc.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_group_io.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_lane.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_ddr_calib_top.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_ddr_if_post_fifo.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy_wrapper.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_ddr_of_pre_fifo.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_4lanes.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ck_addr_cmd_delay.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal_hr.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_init.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_cntlr.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_data.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_edge.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_lim.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_mux.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_po_cntlr.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_samp.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_oclkdelay_cal.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_prbs_rdlvl.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_rdlvl.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_tempmon.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_top.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrcal.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl_off_delay.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_ddr_prbs_gen.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_ddr_skip_calib_tap.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_poc_cc.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_poc_edge_store.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_poc_meta.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_poc_pd.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_poc_tap_base.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_poc_top.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/ui/mig_7series_v4_2_ui_cmd.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/ui/mig_7series_v4_2_ui_rd_data.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/ui/mig_7series_v4_2_ui_top.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/ui/mig_7series_v4_2_ui_wr_data.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/RamBuf_mig_sim.v" \
  "../../../../Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/RamBuf.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

