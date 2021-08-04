vlib work
vlib activehdl

vlib activehdl/xpm
vlib activehdl/xil_defaultlib

vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xpm  -sv2k12 "+incdir+../../Digital Designs/Template/Template.srcs/sources_1/new" \
"E:/Vivado/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"E:/Vivado/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../Digital Designs/Template/Template.srcs/sources_1/new" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/clocking/mig_7series_v4_2_clk_ibuf.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/clocking/mig_7series_v4_2_infrastructure.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/clocking/mig_7series_v4_2_iodelay_ctrl.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/clocking/mig_7series_v4_2_tempmon.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/controller/mig_7series_v4_2_arb_mux.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/controller/mig_7series_v4_2_arb_row_col.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/controller/mig_7series_v4_2_arb_select.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/controller/mig_7series_v4_2_bank_cntrl.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/controller/mig_7series_v4_2_bank_common.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/controller/mig_7series_v4_2_bank_compare.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/controller/mig_7series_v4_2_bank_mach.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/controller/mig_7series_v4_2_bank_queue.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/controller/mig_7series_v4_2_bank_state.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/controller/mig_7series_v4_2_col_mach.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/controller/mig_7series_v4_2_mc.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/controller/mig_7series_v4_2_rank_cntrl.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/controller/mig_7series_v4_2_rank_common.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/controller/mig_7series_v4_2_rank_mach.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/controller/mig_7series_v4_2_round_robin_arb.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/ecc/mig_7series_v4_2_ecc_buf.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/ecc/mig_7series_v4_2_ecc_dec_fix.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/ecc/mig_7series_v4_2_ecc_gen.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/ecc/mig_7series_v4_2_ecc_merge_enc.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/ecc/mig_7series_v4_2_fi_xor.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/ip_top/mig_7series_v4_2_memc_ui_top_std.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/ip_top/mig_7series_v4_2_mem_intfc.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_group_io.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_lane.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_ddr_calib_top.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_ddr_if_post_fifo.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy_wrapper.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_ddr_of_pre_fifo.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_4lanes.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ck_addr_cmd_delay.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal_hr.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_init.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_cntlr.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_data.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_edge.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_lim.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_mux.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_po_cntlr.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_samp.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_oclkdelay_cal.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_prbs_rdlvl.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_rdlvl.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_tempmon.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_top.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrcal.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl_off_delay.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_ddr_prbs_gen.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_ddr_skip_calib_tap.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_poc_cc.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_poc_edge_store.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_poc_meta.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_poc_pd.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_poc_tap_base.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/phy/mig_7series_v4_2_poc_top.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/ui/mig_7series_v4_2_ui_cmd.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/ui/mig_7series_v4_2_ui_rd_data.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/ui/mig_7series_v4_2_ui_top.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/ui/mig_7series_v4_2_ui_wr_data.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/RamBuf_mig_sim.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/ip/RamBuf/RamBuf/user_design/rtl/RamBuf.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/new/Blank.v" \
"../../Digital Designs/Template/Template.srcs/sources_1/new/Ram Interface.v" \

vlog -work xil_defaultlib \
"glbl.v"

