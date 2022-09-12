// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Tue Sep  6 01:41:32 2022
// Host        : Nikon-DSLR running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               {C:/Users/ethan/Documents/GitHub/Big-Crete-Calculator/Digital Designs/Display Test/Display
//               Test.sim/sim_1/synth/timing/xsim/topTB_time_synth.v}
// Design      : top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tftg256-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module clk_wiz_0
   (clk100,
    clk9,
    locked,
    clk_in100);
  output clk100;
  output clk9;
  output locked;
  input clk_in100;

  wire clk100;
  wire clk9;
  wire clk_in100;
  wire locked;

  clk_wiz_0_clk_wiz inst
       (.clk100(clk100),
        .clk9(clk9),
        .clk_in100(clk_in100),
        .locked(locked));
endmodule

module clk_wiz_0_clk_wiz
   (clk100,
    clk9,
    locked,
    clk_in100);
  output clk100;
  output clk9;
  output locked;
  input clk_in100;

  wire clk100;
  wire clk100_clk_wiz_0;
  wire clk9;
  wire clk9_clk_wiz_0;
  wire clk_in100;
  wire clk_in100_clk_wiz_0;
  wire clkfbout_buf_clk_wiz_0;
  wire clkfbout_clk_wiz_0;
  wire locked;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcm_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcm_adv_inst_DO_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_clk_wiz_0),
        .O(clkfbout_buf_clk_wiz_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    clkin1_ibufg
       (.I(clk_in100),
        .O(clk_in100_clk_wiz_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(clk100_clk_wiz_0),
        .O(clk100));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout2_buf
       (.I(clk9_clk_wiz_0),
        .O(clk9));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(9.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(10.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(9.000000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(100),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(clkfbout_buf_clk_wiz_0),
        .CLKFBOUT(clkfbout_clk_wiz_0),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(clk_in100_clk_wiz_0),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clk100_clk_wiz_0),
        .CLKOUT0B(NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(clk9_clk_wiz_0),
        .CLKOUT1B(NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcm_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcm_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(locked),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(1'b0));
endmodule

(* NotValidForBitStream *)
module top
   (red,
    blue,
    green,
    pxClk,
    disp,
    HSync,
    VSync,
    DE,
    clk);
  output [7:0]red;
  output [7:0]blue;
  output [7:0]green;
  output pxClk;
  output disp;
  output HSync;
  output VSync;
  output DE;
  input clk;

  wire DE;
  wire DE_OBUF;
  wire DE_OBUF_inst_i_2_n_0;
  wire DE_OBUF_inst_i_3_n_0;
  wire DE_OBUF_inst_i_4_n_0;
  wire DE_OBUF_inst_i_5_n_0;
  wire HSync;
  wire HSync_OBUF;
  wire HSync_OBUF_inst_i_2_n_0;
  wire VSync;
  wire VSync_OBUF;
  wire VSync_OBUF_inst_i_2_n_0;
  wire [7:0]blue;
  wire [0:0]blue_OBUF;
  (* IBUF_LOW_PWR *) wire clk;
  wire disp;
  wire [7:0]green;
  wire [9:0]hPix;
  wire \hPix[6]_i_2_n_0 ;
  wire \hPix[7]_i_2_n_0 ;
  wire \hPix[8]_i_2_n_0 ;
  wire \hPix[8]_i_3_n_0 ;
  wire \hPix_reg_n_0_[0] ;
  wire \hPix_reg_n_0_[1] ;
  wire \hPix_reg_n_0_[2] ;
  wire \hPix_reg_n_0_[3] ;
  wire \hPix_reg_n_0_[4] ;
  wire \hPix_reg_n_0_[5] ;
  wire \hPix_reg_n_0_[6] ;
  wire \hPix_reg_n_0_[7] ;
  wire \hPix_reg_n_0_[8] ;
  wire \hPix_reg_n_0_[9] ;
  wire [8:0]p_0_in;
  wire pxClk;
  wire pxClk_OBUF;
  wire [7:0]red;
  wire \red[0]_i_1_n_0 ;
  wire \red[0]_i_2_n_0 ;
  wire \red[0]_i_3_n_0 ;
  wire [0:0]red_OBUF;
  wire vPix;
  wire \vPix[8]_i_3_n_0 ;
  wire [0:0]vPix_reg;
  wire [8:1]vPix_reg__0;
  wire NLW_clk_wiz_clk100_UNCONNECTED;
  wire NLW_clk_wiz_locked_UNCONNECTED;

initial begin
 $sdf_annotate("topTB_time_synth.sdf",,,,"tool_control");
end
  OBUF DE_OBUF_inst
       (.I(DE_OBUF),
        .O(DE));
  LUT6 #(
    .INIT(64'h00008F00FF008F00)) 
    DE_OBUF_inst_i_1
       (.I0(DE_OBUF_inst_i_2_n_0),
        .I1(\hPix_reg_n_0_[3] ),
        .I2(DE_OBUF_inst_i_3_n_0),
        .I3(\hPix_reg_n_0_[9] ),
        .I4(DE_OBUF_inst_i_4_n_0),
        .I5(DE_OBUF_inst_i_5_n_0),
        .O(DE_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    DE_OBUF_inst_i_2
       (.I0(\hPix_reg_n_0_[1] ),
        .I1(\hPix_reg_n_0_[0] ),
        .O(DE_OBUF_inst_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    DE_OBUF_inst_i_3
       (.I0(\hPix_reg_n_0_[7] ),
        .I1(\hPix_reg_n_0_[8] ),
        .I2(\hPix_reg_n_0_[5] ),
        .I3(\hPix_reg_n_0_[6] ),
        .O(DE_OBUF_inst_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    DE_OBUF_inst_i_4
       (.I0(\hPix_reg_n_0_[4] ),
        .I1(\hPix_reg_n_0_[2] ),
        .I2(\hPix_reg_n_0_[3] ),
        .O(DE_OBUF_inst_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    DE_OBUF_inst_i_5
       (.I0(\hPix_reg_n_0_[5] ),
        .I1(\hPix_reg_n_0_[6] ),
        .I2(\hPix_reg_n_0_[7] ),
        .I3(\hPix_reg_n_0_[8] ),
        .O(DE_OBUF_inst_i_5_n_0));
  OBUF HSync_OBUF_inst
       (.I(HSync_OBUF),
        .O(HSync));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    HSync_OBUF_inst_i_1
       (.I0(\hPix_reg_n_0_[6] ),
        .I1(\hPix_reg_n_0_[5] ),
        .I2(\hPix_reg_n_0_[8] ),
        .I3(\hPix_reg_n_0_[7] ),
        .I4(HSync_OBUF_inst_i_2_n_0),
        .O(HSync_OBUF));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFEFEFE)) 
    HSync_OBUF_inst_i_2
       (.I0(\hPix_reg_n_0_[3] ),
        .I1(\hPix_reg_n_0_[9] ),
        .I2(\hPix_reg_n_0_[4] ),
        .I3(\hPix_reg_n_0_[2] ),
        .I4(\hPix_reg_n_0_[1] ),
        .I5(\hPix_reg_n_0_[0] ),
        .O(HSync_OBUF_inst_i_2_n_0));
  OBUF VSync_OBUF_inst
       (.I(VSync_OBUF),
        .O(VSync));
  LUT5 #(
    .INIT(32'h00000001)) 
    VSync_OBUF_inst_i_1
       (.I0(vPix_reg__0[5]),
        .I1(vPix_reg__0[8]),
        .I2(vPix_reg__0[3]),
        .I3(vPix_reg__0[4]),
        .I4(VSync_OBUF_inst_i_2_n_0),
        .O(VSync_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFFFFE0)) 
    VSync_OBUF_inst_i_2
       (.I0(vPix_reg),
        .I1(vPix_reg__0[1]),
        .I2(vPix_reg__0[2]),
        .I3(vPix_reg__0[7]),
        .I4(vPix_reg__0[6]),
        .O(VSync_OBUF_inst_i_2_n_0));
  OBUF \blue_OBUF[0]_inst 
       (.I(blue_OBUF),
        .O(blue[0]));
  OBUF \blue_OBUF[1]_inst 
       (.I(blue_OBUF),
        .O(blue[1]));
  OBUF \blue_OBUF[2]_inst 
       (.I(blue_OBUF),
        .O(blue[2]));
  OBUF \blue_OBUF[3]_inst 
       (.I(blue_OBUF),
        .O(blue[3]));
  OBUF \blue_OBUF[4]_inst 
       (.I(blue_OBUF),
        .O(blue[4]));
  OBUF \blue_OBUF[5]_inst 
       (.I(blue_OBUF),
        .O(blue[5]));
  OBUF \blue_OBUF[6]_inst 
       (.I(blue_OBUF),
        .O(blue[6]));
  OBUF \blue_OBUF[7]_inst 
       (.I(blue_OBUF),
        .O(blue[7]));
  FDRE #(
    .INIT(1'b0)) 
    \blue_reg[7] 
       (.C(pxClk_OBUF),
        .CE(\red[0]_i_1_n_0 ),
        .D(\red[0]_i_1_n_0 ),
        .Q(blue_OBUF),
        .R(\red[0]_i_2_n_0 ));
  (* IMPORTED_FROM = "c:/Users/ethan/Documents/GitHub/Big-Crete-Calculator/Digital Designs/Display Test/Display Test.gen/sources_1/ip/clk_wiz_0/clk_wiz_0.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  clk_wiz_0 clk_wiz
       (.clk100(NLW_clk_wiz_clk100_UNCONNECTED),
        .clk9(pxClk_OBUF),
        .clk_in100(clk),
        .locked(NLW_clk_wiz_locked_UNCONNECTED));
  OBUF disp_OBUF_inst
       (.I(1'b1),
        .O(disp));
  OBUFT \green_OBUF[0]_inst 
       (.I(1'b0),
        .O(green[0]),
        .T(1'b1));
  OBUFT \green_OBUF[1]_inst 
       (.I(1'b0),
        .O(green[1]),
        .T(1'b1));
  OBUFT \green_OBUF[2]_inst 
       (.I(1'b0),
        .O(green[2]),
        .T(1'b1));
  OBUFT \green_OBUF[3]_inst 
       (.I(1'b0),
        .O(green[3]),
        .T(1'b1));
  OBUFT \green_OBUF[4]_inst 
       (.I(1'b0),
        .O(green[4]),
        .T(1'b1));
  OBUFT \green_OBUF[5]_inst 
       (.I(1'b0),
        .O(green[5]),
        .T(1'b1));
  OBUFT \green_OBUF[6]_inst 
       (.I(1'b0),
        .O(green[6]),
        .T(1'b1));
  OBUFT \green_OBUF[7]_inst 
       (.I(1'b0),
        .O(green[7]),
        .T(1'b1));
  LUT1 #(
    .INIT(2'h1)) 
    \hPix[0]_i_1 
       (.I0(\hPix_reg_n_0_[0] ),
        .O(hPix[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \hPix[1]_i_1 
       (.I0(\hPix_reg_n_0_[1] ),
        .I1(\hPix_reg_n_0_[0] ),
        .O(hPix[1]));
  LUT6 #(
    .INIT(64'h0000DFFFFFFF0000)) 
    \hPix[2]_i_1 
       (.I0(\hPix_reg_n_0_[9] ),
        .I1(\hPix_reg_n_0_[3] ),
        .I2(\hPix_reg_n_0_[4] ),
        .I3(DE_OBUF_inst_i_5_n_0),
        .I4(\hPix_reg_n_0_[2] ),
        .I5(DE_OBUF_inst_i_2_n_0),
        .O(hPix[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \hPix[3]_i_1 
       (.I0(\hPix_reg_n_0_[3] ),
        .I1(\hPix_reg_n_0_[2] ),
        .I2(\hPix_reg_n_0_[1] ),
        .I3(\hPix_reg_n_0_[0] ),
        .O(hPix[3]));
  LUT6 #(
    .INIT(64'h0FF0F070F0F0F0F0)) 
    \hPix[4]_i_1 
       (.I0(DE_OBUF_inst_i_5_n_0),
        .I1(\hPix_reg_n_0_[9] ),
        .I2(\hPix_reg_n_0_[4] ),
        .I3(\hPix_reg_n_0_[2] ),
        .I4(\hPix_reg_n_0_[3] ),
        .I5(DE_OBUF_inst_i_2_n_0),
        .O(hPix[4]));
  LUT6 #(
    .INIT(64'hF3F1F3F1FFFF0000)) 
    \hPix[5]_i_1 
       (.I0(\hPix_reg_n_0_[6] ),
        .I1(\hPix_reg_n_0_[2] ),
        .I2(\hPix[8]_i_2_n_0 ),
        .I3(\hPix[6]_i_2_n_0 ),
        .I4(\hPix[8]_i_3_n_0 ),
        .I5(\hPix_reg_n_0_[5] ),
        .O(hPix[5]));
  LUT6 #(
    .INIT(64'hBAFFFF00BA00FF00)) 
    \hPix[6]_i_1 
       (.I0(\hPix[8]_i_2_n_0 ),
        .I1(\hPix_reg_n_0_[2] ),
        .I2(\hPix[6]_i_2_n_0 ),
        .I3(\hPix_reg_n_0_[6] ),
        .I4(\hPix_reg_n_0_[5] ),
        .I5(\hPix[8]_i_3_n_0 ),
        .O(hPix[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \hPix[6]_i_2 
       (.I0(\hPix_reg_n_0_[8] ),
        .I1(\hPix_reg_n_0_[7] ),
        .O(\hPix[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFC0AFC0AFC0FFC0)) 
    \hPix[7]_i_1 
       (.I0(\hPix[8]_i_2_n_0 ),
        .I1(\hPix[8]_i_3_n_0 ),
        .I2(\hPix[7]_i_2_n_0 ),
        .I3(\hPix_reg_n_0_[7] ),
        .I4(\hPix_reg_n_0_[2] ),
        .I5(\hPix_reg_n_0_[8] ),
        .O(hPix[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \hPix[7]_i_2 
       (.I0(\hPix_reg_n_0_[6] ),
        .I1(\hPix_reg_n_0_[5] ),
        .O(\hPix[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBC8CCCCCCCCCCCCC)) 
    \hPix[8]_i_1 
       (.I0(\hPix[8]_i_2_n_0 ),
        .I1(\hPix_reg_n_0_[8] ),
        .I2(\hPix_reg_n_0_[7] ),
        .I3(\hPix[8]_i_3_n_0 ),
        .I4(\hPix_reg_n_0_[6] ),
        .I5(\hPix_reg_n_0_[5] ),
        .O(hPix[8]));
  LUT6 #(
    .INIT(64'h7FFF7FFFFF7FFFFF)) 
    \hPix[8]_i_2 
       (.I0(\hPix_reg_n_0_[1] ),
        .I1(\hPix_reg_n_0_[0] ),
        .I2(\hPix_reg_n_0_[4] ),
        .I3(\hPix_reg_n_0_[3] ),
        .I4(\hPix_reg_n_0_[9] ),
        .I5(\hPix_reg_n_0_[2] ),
        .O(\hPix[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \hPix[8]_i_3 
       (.I0(\hPix_reg_n_0_[4] ),
        .I1(\hPix_reg_n_0_[1] ),
        .I2(\hPix_reg_n_0_[0] ),
        .I3(\hPix_reg_n_0_[3] ),
        .I4(\hPix_reg_n_0_[2] ),
        .O(\hPix[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h68AAAAAAAAAAAAAA)) 
    \hPix[9]_i_1 
       (.I0(\hPix_reg_n_0_[9] ),
        .I1(\hPix_reg_n_0_[3] ),
        .I2(\hPix_reg_n_0_[2] ),
        .I3(DE_OBUF_inst_i_5_n_0),
        .I4(\hPix_reg_n_0_[4] ),
        .I5(DE_OBUF_inst_i_2_n_0),
        .O(hPix[9]));
  FDRE #(
    .INIT(1'b0)) 
    \hPix_reg[0] 
       (.C(pxClk_OBUF),
        .CE(1'b1),
        .D(hPix[0]),
        .Q(\hPix_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hPix_reg[1] 
       (.C(pxClk_OBUF),
        .CE(1'b1),
        .D(hPix[1]),
        .Q(\hPix_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hPix_reg[2] 
       (.C(pxClk_OBUF),
        .CE(1'b1),
        .D(hPix[2]),
        .Q(\hPix_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hPix_reg[3] 
       (.C(pxClk_OBUF),
        .CE(1'b1),
        .D(hPix[3]),
        .Q(\hPix_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hPix_reg[4] 
       (.C(pxClk_OBUF),
        .CE(1'b1),
        .D(hPix[4]),
        .Q(\hPix_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hPix_reg[5] 
       (.C(pxClk_OBUF),
        .CE(1'b1),
        .D(hPix[5]),
        .Q(\hPix_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hPix_reg[6] 
       (.C(pxClk_OBUF),
        .CE(1'b1),
        .D(hPix[6]),
        .Q(\hPix_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hPix_reg[7] 
       (.C(pxClk_OBUF),
        .CE(1'b1),
        .D(hPix[7]),
        .Q(\hPix_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hPix_reg[8] 
       (.C(pxClk_OBUF),
        .CE(1'b1),
        .D(hPix[8]),
        .Q(\hPix_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hPix_reg[9] 
       (.C(pxClk_OBUF),
        .CE(1'b1),
        .D(hPix[9]),
        .Q(\hPix_reg_n_0_[9] ),
        .R(1'b0));
  OBUF pxClk_OBUF_inst
       (.I(pxClk_OBUF),
        .O(pxClk));
  LUT6 #(
    .INIT(64'hFBFFFFFFFFFFFFFF)) 
    \red[0]_i_1 
       (.I0(\hPix_reg_n_0_[2] ),
        .I1(\hPix_reg_n_0_[9] ),
        .I2(\hPix_reg_n_0_[3] ),
        .I3(DE_OBUF_inst_i_2_n_0),
        .I4(\hPix_reg_n_0_[4] ),
        .I5(DE_OBUF_inst_i_5_n_0),
        .O(\red[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0070707000000000)) 
    \red[0]_i_2 
       (.I0(DE_OBUF_inst_i_5_n_0),
        .I1(DE_OBUF_inst_i_4_n_0),
        .I2(\hPix_reg_n_0_[9] ),
        .I3(DE_OBUF_inst_i_3_n_0),
        .I4(\red[0]_i_3_n_0 ),
        .I5(vPix_reg),
        .O(\red[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000F7F)) 
    \red[0]_i_3 
       (.I0(\hPix_reg_n_0_[1] ),
        .I1(\hPix_reg_n_0_[0] ),
        .I2(\hPix_reg_n_0_[3] ),
        .I3(\hPix_reg_n_0_[2] ),
        .I4(\hPix_reg_n_0_[4] ),
        .O(\red[0]_i_3_n_0 ));
  OBUF \red_OBUF[0]_inst 
       (.I(red_OBUF),
        .O(red[0]));
  OBUF \red_OBUF[1]_inst 
       (.I(red_OBUF),
        .O(red[1]));
  OBUF \red_OBUF[2]_inst 
       (.I(red_OBUF),
        .O(red[2]));
  OBUF \red_OBUF[3]_inst 
       (.I(red_OBUF),
        .O(red[3]));
  OBUF \red_OBUF[4]_inst 
       (.I(red_OBUF),
        .O(red[4]));
  OBUF \red_OBUF[5]_inst 
       (.I(red_OBUF),
        .O(red[5]));
  OBUF \red_OBUF[6]_inst 
       (.I(red_OBUF),
        .O(red[6]));
  OBUF \red_OBUF[7]_inst 
       (.I(red_OBUF),
        .O(red[7]));
  FDRE #(
    .INIT(1'b0)) 
    \red_reg[0] 
       (.C(pxClk_OBUF),
        .CE(\red[0]_i_1_n_0 ),
        .D(\red[0]_i_2_n_0 ),
        .Q(red_OBUF),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \vPix[0]_i_1 
       (.I0(vPix_reg),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \vPix[1]_i_1 
       (.I0(vPix_reg),
        .I1(vPix_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \vPix[2]_i_1 
       (.I0(vPix_reg__0[2]),
        .I1(vPix_reg),
        .I2(vPix_reg__0[1]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \vPix[3]_i_1 
       (.I0(vPix_reg__0[1]),
        .I1(vPix_reg),
        .I2(vPix_reg__0[2]),
        .I3(vPix_reg__0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \vPix[4]_i_1 
       (.I0(vPix_reg__0[4]),
        .I1(vPix_reg__0[1]),
        .I2(vPix_reg),
        .I3(vPix_reg__0[2]),
        .I4(vPix_reg__0[3]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \vPix[5]_i_1 
       (.I0(vPix_reg__0[5]),
        .I1(vPix_reg__0[3]),
        .I2(vPix_reg__0[2]),
        .I3(vPix_reg),
        .I4(vPix_reg__0[1]),
        .I5(vPix_reg__0[4]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \vPix[6]_i_1 
       (.I0(vPix_reg__0[6]),
        .I1(vPix_reg__0[4]),
        .I2(\vPix[8]_i_3_n_0 ),
        .I3(vPix_reg__0[5]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \vPix[7]_i_1 
       (.I0(vPix_reg__0[7]),
        .I1(vPix_reg__0[5]),
        .I2(\vPix[8]_i_3_n_0 ),
        .I3(vPix_reg__0[4]),
        .I4(vPix_reg__0[6]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \vPix[8]_i_1 
       (.I0(DE_OBUF_inst_i_5_n_0),
        .I1(\hPix_reg_n_0_[4] ),
        .I2(DE_OBUF_inst_i_2_n_0),
        .I3(\hPix_reg_n_0_[3] ),
        .I4(\hPix_reg_n_0_[9] ),
        .I5(\hPix_reg_n_0_[2] ),
        .O(vPix));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \vPix[8]_i_2 
       (.I0(vPix_reg__0[8]),
        .I1(vPix_reg__0[6]),
        .I2(vPix_reg__0[4]),
        .I3(\vPix[8]_i_3_n_0 ),
        .I4(vPix_reg__0[5]),
        .I5(vPix_reg__0[7]),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \vPix[8]_i_3 
       (.I0(vPix_reg__0[3]),
        .I1(vPix_reg__0[2]),
        .I2(vPix_reg),
        .I3(vPix_reg__0[1]),
        .O(\vPix[8]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vPix_reg[0] 
       (.C(pxClk_OBUF),
        .CE(vPix),
        .D(p_0_in[0]),
        .Q(vPix_reg),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vPix_reg[1] 
       (.C(pxClk_OBUF),
        .CE(vPix),
        .D(p_0_in[1]),
        .Q(vPix_reg__0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vPix_reg[2] 
       (.C(pxClk_OBUF),
        .CE(vPix),
        .D(p_0_in[2]),
        .Q(vPix_reg__0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vPix_reg[3] 
       (.C(pxClk_OBUF),
        .CE(vPix),
        .D(p_0_in[3]),
        .Q(vPix_reg__0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vPix_reg[4] 
       (.C(pxClk_OBUF),
        .CE(vPix),
        .D(p_0_in[4]),
        .Q(vPix_reg__0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vPix_reg[5] 
       (.C(pxClk_OBUF),
        .CE(vPix),
        .D(p_0_in[5]),
        .Q(vPix_reg__0[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vPix_reg[6] 
       (.C(pxClk_OBUF),
        .CE(vPix),
        .D(p_0_in[6]),
        .Q(vPix_reg__0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vPix_reg[7] 
       (.C(pxClk_OBUF),
        .CE(vPix),
        .D(p_0_in[7]),
        .Q(vPix_reg__0[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vPix_reg[8] 
       (.C(pxClk_OBUF),
        .CE(vPix),
        .D(p_0_in[8]),
        .Q(vPix_reg__0[8]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
