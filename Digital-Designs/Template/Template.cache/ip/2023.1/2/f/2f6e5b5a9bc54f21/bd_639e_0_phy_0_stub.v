// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Wed Oct  4 10:48:15 2023
// Host        : Nikon-DSLR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_639e_0_phy_0_stub.v
// Design      : bd_639e_0_phy_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(core_clk, core_rst, rxbyteclkhs, 
  system_rst_out, init_done, cl_rxclkactivehs, cl_stopstate, cl_enable, cl_rxulpsclknot, 
  cl_ulpsactivenot, dl0_rxdatahs, dl0_rxvalidhs, dl0_rxactivehs, dl0_rxsynchs, 
  dl0_forcerxmode, dl0_stopstate, dl0_enable, dl0_ulpsactivenot, dl0_rxclkesc, dl0_rxlpdtesc, 
  dl0_rxulpsesc, dl0_rxtriggeresc, dl0_rxdataesc, dl0_rxvalidesc, dl0_errsoths, 
  dl0_errsotsynchs, dl0_erresc, dl0_errsyncesc, dl0_errcontrol, dl1_rxdatahs, dl1_rxvalidhs, 
  dl1_rxactivehs, dl1_rxsynchs, dl1_forcerxmode, dl1_stopstate, dl1_enable, 
  dl1_ulpsactivenot, dl1_rxclkesc, dl1_rxlpdtesc, dl1_rxulpsesc, dl1_rxtriggeresc, 
  dl1_rxdataesc, dl1_rxvalidesc, dl1_errsoths, dl1_errsotsynchs, dl1_erresc, dl1_errsyncesc, 
  dl1_errcontrol, dl2_rxdatahs, dl2_rxvalidhs, dl2_rxactivehs, dl2_rxsynchs, dl2_forcerxmode, 
  dl2_stopstate, dl2_enable, dl2_ulpsactivenot, dl2_rxclkesc, dl2_rxlpdtesc, dl2_rxulpsesc, 
  dl2_rxtriggeresc, dl2_rxdataesc, dl2_rxvalidesc, dl2_errsoths, dl2_errsotsynchs, 
  dl2_erresc, dl2_errsyncesc, dl2_errcontrol, dl3_rxdatahs, dl3_rxvalidhs, dl3_rxactivehs, 
  dl3_rxsynchs, dl3_forcerxmode, dl3_stopstate, dl3_enable, dl3_ulpsactivenot, dl3_rxclkesc, 
  dl3_rxlpdtesc, dl3_rxulpsesc, dl3_rxtriggeresc, dl3_rxdataesc, dl3_rxvalidesc, 
  dl3_errsoths, dl3_errsotsynchs, dl3_erresc, dl3_errsyncesc, dl3_errcontrol, s_axi_aclk, 
  s_axi_aresetn, s_axi_awaddr, s_axi_awready, s_axi_awvalid, s_axi_araddr, s_axi_arready, 
  s_axi_arvalid, s_axi_wdata, s_axi_wstrb, s_axi_wready, s_axi_wvalid, s_axi_rdata, 
  s_axi_rresp, s_axi_rready, s_axi_rvalid, s_axi_bresp, s_axi_bready, s_axi_bvalid, clk_hs_rxp, 
  clk_hs_rxn, data_hs_rxp, data_hs_rxn, clk_lp_rxp, clk_lp_rxn, data_lp_rxp, data_lp_rxn)
/* synthesis syn_black_box black_box_pad_pin="core_rst,system_rst_out,init_done,cl_rxclkactivehs,cl_stopstate,cl_enable,cl_rxulpsclknot,cl_ulpsactivenot,dl0_rxdatahs[7:0],dl0_rxvalidhs,dl0_rxactivehs,dl0_rxsynchs,dl0_forcerxmode,dl0_stopstate,dl0_enable,dl0_ulpsactivenot,dl0_rxclkesc,dl0_rxlpdtesc,dl0_rxulpsesc,dl0_rxtriggeresc[3:0],dl0_rxdataesc[7:0],dl0_rxvalidesc,dl0_errsoths,dl0_errsotsynchs,dl0_erresc,dl0_errsyncesc,dl0_errcontrol,dl1_rxdatahs[7:0],dl1_rxvalidhs,dl1_rxactivehs,dl1_rxsynchs,dl1_forcerxmode,dl1_stopstate,dl1_enable,dl1_ulpsactivenot,dl1_rxclkesc,dl1_rxlpdtesc,dl1_rxulpsesc,dl1_rxtriggeresc[3:0],dl1_rxdataesc[7:0],dl1_rxvalidesc,dl1_errsoths,dl1_errsotsynchs,dl1_erresc,dl1_errsyncesc,dl1_errcontrol,dl2_rxdatahs[7:0],dl2_rxvalidhs,dl2_rxactivehs,dl2_rxsynchs,dl2_forcerxmode,dl2_stopstate,dl2_enable,dl2_ulpsactivenot,dl2_rxclkesc,dl2_rxlpdtesc,dl2_rxulpsesc,dl2_rxtriggeresc[3:0],dl2_rxdataesc[7:0],dl2_rxvalidesc,dl2_errsoths,dl2_errsotsynchs,dl2_erresc,dl2_errsyncesc,dl2_errcontrol,dl3_rxdatahs[7:0],dl3_rxvalidhs,dl3_rxactivehs,dl3_rxsynchs,dl3_forcerxmode,dl3_stopstate,dl3_enable,dl3_ulpsactivenot,dl3_rxclkesc,dl3_rxlpdtesc,dl3_rxulpsesc,dl3_rxtriggeresc[3:0],dl3_rxdataesc[7:0],dl3_rxvalidesc,dl3_errsoths,dl3_errsotsynchs,dl3_erresc,dl3_errsyncesc,dl3_errcontrol,s_axi_aresetn,s_axi_awaddr[6:0],s_axi_awready,s_axi_awvalid,s_axi_araddr[6:0],s_axi_arready,s_axi_arvalid,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wready,s_axi_wvalid,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rready,s_axi_rvalid,s_axi_bresp[1:0],s_axi_bready,s_axi_bvalid,clk_hs_rxp,clk_hs_rxn,data_hs_rxp[3:0],data_hs_rxn[3:0],clk_lp_rxp,clk_lp_rxn,data_lp_rxp[3:0],data_lp_rxn[3:0]" */
/* synthesis syn_force_seq_prim="core_clk" */
/* synthesis syn_force_seq_prim="rxbyteclkhs" */
/* synthesis syn_force_seq_prim="s_axi_aclk" */;
  input core_clk /* synthesis syn_isclock = 1 */;
  input core_rst;
  output rxbyteclkhs /* synthesis syn_isclock = 1 */;
  output system_rst_out;
  output init_done;
  output cl_rxclkactivehs;
  output cl_stopstate;
  input cl_enable;
  output cl_rxulpsclknot;
  output cl_ulpsactivenot;
  output [7:0]dl0_rxdatahs;
  output dl0_rxvalidhs;
  output dl0_rxactivehs;
  output dl0_rxsynchs;
  input dl0_forcerxmode;
  output dl0_stopstate;
  input dl0_enable;
  output dl0_ulpsactivenot;
  output dl0_rxclkesc;
  output dl0_rxlpdtesc;
  output dl0_rxulpsesc;
  output [3:0]dl0_rxtriggeresc;
  output [7:0]dl0_rxdataesc;
  output dl0_rxvalidesc;
  output dl0_errsoths;
  output dl0_errsotsynchs;
  output dl0_erresc;
  output dl0_errsyncesc;
  output dl0_errcontrol;
  output [7:0]dl1_rxdatahs;
  output dl1_rxvalidhs;
  output dl1_rxactivehs;
  output dl1_rxsynchs;
  input dl1_forcerxmode;
  output dl1_stopstate;
  input dl1_enable;
  output dl1_ulpsactivenot;
  output dl1_rxclkesc;
  output dl1_rxlpdtesc;
  output dl1_rxulpsesc;
  output [3:0]dl1_rxtriggeresc;
  output [7:0]dl1_rxdataesc;
  output dl1_rxvalidesc;
  output dl1_errsoths;
  output dl1_errsotsynchs;
  output dl1_erresc;
  output dl1_errsyncesc;
  output dl1_errcontrol;
  output [7:0]dl2_rxdatahs;
  output dl2_rxvalidhs;
  output dl2_rxactivehs;
  output dl2_rxsynchs;
  input dl2_forcerxmode;
  output dl2_stopstate;
  input dl2_enable;
  output dl2_ulpsactivenot;
  output dl2_rxclkesc;
  output dl2_rxlpdtesc;
  output dl2_rxulpsesc;
  output [3:0]dl2_rxtriggeresc;
  output [7:0]dl2_rxdataesc;
  output dl2_rxvalidesc;
  output dl2_errsoths;
  output dl2_errsotsynchs;
  output dl2_erresc;
  output dl2_errsyncesc;
  output dl2_errcontrol;
  output [7:0]dl3_rxdatahs;
  output dl3_rxvalidhs;
  output dl3_rxactivehs;
  output dl3_rxsynchs;
  input dl3_forcerxmode;
  output dl3_stopstate;
  input dl3_enable;
  output dl3_ulpsactivenot;
  output dl3_rxclkesc;
  output dl3_rxlpdtesc;
  output dl3_rxulpsesc;
  output [3:0]dl3_rxtriggeresc;
  output [7:0]dl3_rxdataesc;
  output dl3_rxvalidesc;
  output dl3_errsoths;
  output dl3_errsotsynchs;
  output dl3_erresc;
  output dl3_errsyncesc;
  output dl3_errcontrol;
  input s_axi_aclk /* synthesis syn_isclock = 1 */;
  input s_axi_aresetn;
  input [6:0]s_axi_awaddr;
  output s_axi_awready;
  input s_axi_awvalid;
  input [6:0]s_axi_araddr;
  output s_axi_arready;
  input s_axi_arvalid;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  output s_axi_wready;
  input s_axi_wvalid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  input s_axi_rready;
  output s_axi_rvalid;
  output [1:0]s_axi_bresp;
  input s_axi_bready;
  output s_axi_bvalid;
  input clk_hs_rxp;
  input clk_hs_rxn;
  input [3:0]data_hs_rxp;
  input [3:0]data_hs_rxn;
  input clk_lp_rxp;
  input clk_lp_rxn;
  input [3:0]data_lp_rxp;
  input [3:0]data_lp_rxn;
endmodule
