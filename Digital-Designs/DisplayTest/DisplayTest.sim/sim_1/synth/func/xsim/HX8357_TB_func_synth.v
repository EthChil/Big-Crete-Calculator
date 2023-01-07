// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Wed Jan  4 16:19:14 2023
// Host        : Nikon-DSLR running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/ethan/Documents/GitHub/Big-Crete-Calculator/Digital-Designs/DisplayTest/DisplayTest.sim/sim_1/synth/func/xsim/HX8357_TB_func_synth.v
// Design      : HX8357
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tftg256-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module HX8357
   (clk,
    rst,
    led,
    data,
    wr,
    rd,
    dc,
    cs);
  input clk;
  input rst;
  output [7:0]led;
  output [7:0]data;
  output wr;
  output rd;
  output dc;
  output cs;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire cs;
  wire cs_OBUF;
  wire [7:0]data;
  wire [7:0]data_OBUF;
  wire dc;
  wire dc_OBUF;
  wire [7:0]led;
  wire [3:0]led_OBUF;
  wire rd;
  wire rst;
  wire rst_IBUF;
  wire wr;
  wire wr_OBUF;

  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF cs_OBUF_inst
       (.I(cs_OBUF),
        .O(cs));
  OBUF \data_OBUF[0]_inst 
       (.I(data_OBUF[0]),
        .O(data[0]));
  OBUF \data_OBUF[1]_inst 
       (.I(data_OBUF[1]),
        .O(data[1]));
  OBUF \data_OBUF[2]_inst 
       (.I(data_OBUF[2]),
        .O(data[2]));
  OBUF \data_OBUF[3]_inst 
       (.I(data_OBUF[3]),
        .O(data[3]));
  OBUF \data_OBUF[4]_inst 
       (.I(data_OBUF[4]),
        .O(data[4]));
  OBUF \data_OBUF[5]_inst 
       (.I(data_OBUF[5]),
        .O(data[5]));
  OBUF \data_OBUF[6]_inst 
       (.I(data_OBUF[6]),
        .O(data[6]));
  OBUF \data_OBUF[7]_inst 
       (.I(data_OBUF[7]),
        .O(data[7]));
  OBUF dc_OBUF_inst
       (.I(dc_OBUF),
        .O(dc));
  top_gram lcd
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .cs(cs_OBUF),
        .data_OBUF(data_OBUF),
        .dc(dc_OBUF),
        .rst_IBUF(rst_IBUF),
        .state(led_OBUF),
        .wr(wr_OBUF));
  OBUF \led_OBUF[0]_inst 
       (.I(led_OBUF[0]),
        .O(led[0]));
  OBUF \led_OBUF[1]_inst 
       (.I(led_OBUF[1]),
        .O(led[1]));
  OBUF \led_OBUF[2]_inst 
       (.I(led_OBUF[2]),
        .O(led[2]));
  OBUF \led_OBUF[3]_inst 
       (.I(led_OBUF[3]),
        .O(led[3]));
  OBUF \led_OBUF[4]_inst 
       (.I(led_OBUF[3]),
        .O(led[4]));
  OBUF \led_OBUF[5]_inst 
       (.I(led_OBUF[3]),
        .O(led[5]));
  OBUF \led_OBUF[6]_inst 
       (.I(led_OBUF[3]),
        .O(led[6]));
  OBUF \led_OBUF[7]_inst 
       (.I(led_OBUF[3]),
        .O(led[7]));
  OBUF rd_OBUF_inst
       (.I(1'b1),
        .O(rd));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  OBUF wr_OBUF_inst
       (.I(wr_OBUF),
        .O(wr));
endmodule

module top_gram
   (state,
    data_OBUF,
    wr,
    dc,
    cs,
    clk_IBUF_BUFG,
    rst_IBUF);
  output [3:0]state;
  output [7:0]data_OBUF;
  output wr;
  output dc;
  output cs;
  input clk_IBUF_BUFG;
  input rst_IBUF;

  wire clk_IBUF_BUFG;
  wire [6:0]cmd_ptr;
  wire \cmd_ptr[5]_i_2_n_0 ;
  wire \cmd_ptr[6]_i_2_n_0 ;
  wire \cmd_ptr[6]_i_4_n_0 ;
  wire \cmd_ptr[6]_i_5_n_0 ;
  wire \cmd_ptr[6]_i_6_n_0 ;
  wire \cmd_ptr[6]_i_7_n_0 ;
  wire cmd_ptr_reg_rep_i_1_n_0;
  wire cmd_ptr_reg_rep_i_2_n_0;
  wire cmd_ptr_reg_rep_i_3_n_0;
  wire cmd_ptr_reg_rep_i_4_n_0;
  wire cmd_ptr_reg_rep_i_5_n_0;
  wire cmd_ptr_reg_rep_i_6_n_0;
  wire cmd_ptr_reg_rep_i_7_n_0;
  wire cmd_ptr_reg_rep_i_8_n_0;
  wire cmd_ptr_reg_rep_n_10;
  wire cmd_ptr_reg_rep_n_11;
  wire cmd_ptr_reg_rep_n_12;
  wire cmd_ptr_reg_rep_n_13;
  wire cmd_ptr_reg_rep_n_14;
  wire cmd_ptr_reg_rep_n_15;
  wire cmd_ptr_reg_rep_n_8;
  wire cmd_ptr_reg_rep_n_9;
  wire cs;
  wire cs_i_1_n_0;
  wire cs_i_2_n_0;
  wire [1:1]data3;
  wire \data[0]_i_1_n_0 ;
  wire \data[1]_i_1_n_0 ;
  wire \data[2]_i_1_n_0 ;
  wire \data[3]_i_1_n_0 ;
  wire \data[3]_i_2_n_0 ;
  wire \data[3]_i_3_n_0 ;
  wire \data[3]_i_4_n_0 ;
  wire \data[4]_i_1_n_0 ;
  wire \data[5]_i_1_n_0 ;
  wire \data[5]_i_2_n_0 ;
  wire \data[5]_i_3_n_0 ;
  wire \data[5]_i_4_n_0 ;
  wire \data[5]_i_5_n_0 ;
  wire \data[5]_i_6_n_0 ;
  wire \data[5]_i_7_n_0 ;
  wire \data[5]_i_8_n_0 ;
  wire \data[6]_i_1_n_0 ;
  wire \data[7]_i_1_n_0 ;
  wire [7:0]data_OBUF;
  wire [7:0]data_ctr;
  wire \data_ctr[0]_i_1_n_0 ;
  wire \data_ctr[1]_i_1_n_0 ;
  wire \data_ctr[2]_i_1_n_0 ;
  wire \data_ctr[2]_i_2_n_0 ;
  wire \data_ctr[3]_i_1_n_0 ;
  wire \data_ctr[3]_i_2_n_0 ;
  wire \data_ctr[4]_i_1_n_0 ;
  wire \data_ctr[4]_i_2_n_0 ;
  wire \data_ctr[5]_i_1_n_0 ;
  wire \data_ctr[6]_i_1_n_0 ;
  wire \data_ctr[6]_i_2_n_0 ;
  wire \data_ctr[7]_i_1_n_0 ;
  wire \data_ctr[7]_i_2_n_0 ;
  wire \data_ctr[7]_i_3_n_0 ;
  wire \data_ctr[7]_i_4_n_0 ;
  wire \data_ctr[7]_i_5_n_0 ;
  wire \data_ctr[7]_i_6_n_0 ;
  wire \data_ctr[7]_i_7_n_0 ;
  wire \data_ctr[7]_i_8_n_0 ;
  wire \data_ctr_reg[6]_i_3_n_0 ;
  wire dc;
  wire dc_i_1_n_0;
  wire dc_i_2_n_0;
  wire dc_i_3_n_0;
  wire g0_b0__0_n_0;
  wire g0_b0_i_1_n_0;
  wire g0_b0_n_0;
  wire g0_b1__0_n_0;
  wire g0_b1_n_0;
  wire g0_b2__0_n_0;
  wire g0_b2_n_0;
  wire g0_b3__0_n_0;
  wire g0_b3_n_0;
  wire g0_b4__0_n_0;
  wire g0_b4_n_0;
  wire g0_b5__0_n_0;
  wire g0_b5_n_0;
  wire g0_b6__0_n_0;
  wire g0_b6_n_0;
  wire g0_b7__0_n_0;
  wire g0_b7_n_0;
  wire g1_b0_n_0;
  wire g1_b1_i_1_n_0;
  wire g1_b1_i_2_n_0;
  wire g1_b1_i_3_n_0;
  wire g1_b1_i_4_n_0;
  wire g1_b1_n_0;
  wire g1_b2__0_n_0;
  wire g1_b2_n_0;
  wire g1_b3_n_0;
  wire g1_b4_i_1_n_0;
  wire g1_b4_i_2_n_0;
  wire g1_b4_i_3_n_0;
  wire g1_b4_i_4_n_0;
  wire g1_b4_n_0;
  wire g1_b5__0_i_1_n_0;
  wire g1_b5__0_n_0;
  wire g1_b5_n_0;
  wire g1_b6__0_n_0;
  wire g1_b6_n_0;
  wire [8:0]p_1_in;
  wire [0:0]pixel;
  wire \pixel[15]_i_1_n_0 ;
  wire \pixel[15]_i_3_n_0 ;
  wire \pixel_reg_n_0_[15] ;
  wire px_ptr;
  wire px_ptr0;
  wire px_ptr_i_1_n_0;
  wire [8:0]px_x;
  wire \px_x[8]_i_1_n_0 ;
  wire \px_x[8]_i_3_n_0 ;
  wire \px_x[8]_i_4_n_0 ;
  wire [8:0]px_y;
  wire \px_y[0]_i_1_n_0 ;
  wire \px_y[1]_i_1_n_0 ;
  wire \px_y[2]_i_1_n_0 ;
  wire \px_y[3]_i_1_n_0 ;
  wire \px_y[4]_i_1_n_0 ;
  wire \px_y[5]_i_1_n_0 ;
  wire \px_y[5]_i_2_n_0 ;
  wire \px_y[6]_i_1_n_0 ;
  wire \px_y[7]_i_1_n_0 ;
  wire \px_y[8]_i_1_n_0 ;
  wire \px_y[8]_i_2_n_0 ;
  wire \px_y[8]_i_3_n_0 ;
  wire \px_y[8]_i_4_n_0 ;
  wire rst_IBUF;
  wire [6:0]sel;
  wire [0:0]src_state;
  wire \src_state[0]_i_1_n_0 ;
  wire \src_state[0]_i_2_n_0 ;
  wire \src_state[0]_i_3_n_0 ;
  wire [3:0]state;
  wire \state[0]_i_1_n_0 ;
  wire \state[0]_i_2_n_0 ;
  wire \state[0]_i_3_n_0 ;
  wire \state[0]_i_4_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state[1]_i_3_n_0 ;
  wire \state[1]_i_4_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state[2]_i_2_n_0 ;
  wire \state[2]_i_3_n_0 ;
  wire \state[2]_i_4_n_0 ;
  wire \state[2]_i_5_n_0 ;
  wire \state[2]_i_6_n_0 ;
  wire \state[7]_i_10_n_0 ;
  wire \state[7]_i_11_n_0 ;
  wire \state[7]_i_12_n_0 ;
  wire \state[7]_i_13_n_0 ;
  wire \state[7]_i_14_n_0 ;
  wire \state[7]_i_15_n_0 ;
  wire \state[7]_i_16_n_0 ;
  wire \state[7]_i_17_n_0 ;
  wire \state[7]_i_18_n_0 ;
  wire \state[7]_i_19_n_0 ;
  wire \state[7]_i_1_n_0 ;
  wire \state[7]_i_20_n_0 ;
  wire \state[7]_i_21_n_0 ;
  wire \state[7]_i_22_n_0 ;
  wire \state[7]_i_23_n_0 ;
  wire \state[7]_i_24_n_0 ;
  wire \state[7]_i_25_n_0 ;
  wire \state[7]_i_26_n_0 ;
  wire \state[7]_i_27_n_0 ;
  wire \state[7]_i_28_n_0 ;
  wire \state[7]_i_29_n_0 ;
  wire \state[7]_i_2_n_0 ;
  wire \state[7]_i_3_n_0 ;
  wire \state[7]_i_4_n_0 ;
  wire \state[7]_i_5_n_0 ;
  wire \state[7]_i_6_n_0 ;
  wire \state[7]_i_7_n_0 ;
  wire \state[7]_i_8_n_0 ;
  wire \state[7]_i_9_n_0 ;
  wire [7:0]wait_ctr;
  wire \wait_ctr[0]_i_1_n_0 ;
  wire \wait_ctr[1]_i_1_n_0 ;
  wire \wait_ctr[2]_i_1_n_0 ;
  wire \wait_ctr[3]_i_1_n_0 ;
  wire \wait_ctr[4]_i_1_n_0 ;
  wire \wait_ctr[5]_i_1_n_0 ;
  wire \wait_ctr[5]_i_2_n_0 ;
  wire \wait_ctr[6]_i_1_n_0 ;
  wire \wait_ctr[7]_i_1_n_0 ;
  wire \wait_ctr[7]_i_2_n_0 ;
  wire \wait_ctr[7]_i_3_n_0 ;
  wire \wait_ctr[7]_i_4_n_0 ;
  wire wr;
  wire wr_i_1_n_0;
  wire wr_i_2_n_0;
  wire wr_i_3_n_0;
  wire wr_i_4_n_0;
  wire [15:8]NLW_cmd_ptr_reg_rep_DOADO_UNCONNECTED;
  wire [15:0]NLW_cmd_ptr_reg_rep_DOBDO_UNCONNECTED;
  wire [1:0]NLW_cmd_ptr_reg_rep_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_cmd_ptr_reg_rep_DOPBDOP_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \cmd_ptr[0]_i_1 
       (.I0(state[0]),
        .I1(cmd_ptr[0]),
        .O(sel[0]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h1E)) 
    \cmd_ptr[1]_i_1 
       (.I0(state[0]),
        .I1(cmd_ptr[0]),
        .I2(cmd_ptr[1]),
        .O(sel[1]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h57A8)) 
    \cmd_ptr[2]_i_1 
       (.I0(cmd_ptr[1]),
        .I1(cmd_ptr[0]),
        .I2(state[0]),
        .I3(cmd_ptr[2]),
        .O(sel[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h5A6AAAAA)) 
    \cmd_ptr[3]_i_1 
       (.I0(cmd_ptr[3]),
        .I1(state[0]),
        .I2(cmd_ptr[2]),
        .I3(cmd_ptr[0]),
        .I4(cmd_ptr[1]),
        .O(sel[3]));
  LUT6 #(
    .INIT(64'h6C6CCCCC6CCCCCCC)) 
    \cmd_ptr[4]_i_1 
       (.I0(cmd_ptr[3]),
        .I1(cmd_ptr[4]),
        .I2(cmd_ptr[2]),
        .I3(cmd_ptr[0]),
        .I4(cmd_ptr[1]),
        .I5(state[0]),
        .O(sel[4]));
  LUT6 #(
    .INIT(64'hFFFF37FF0000C800)) 
    \cmd_ptr[5]_i_1 
       (.I0(state[0]),
        .I1(cmd_ptr[2]),
        .I2(cmd_ptr[0]),
        .I3(cmd_ptr[1]),
        .I4(\cmd_ptr[5]_i_2_n_0 ),
        .I5(cmd_ptr[5]),
        .O(sel[5]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \cmd_ptr[5]_i_2 
       (.I0(cmd_ptr[4]),
        .I1(cmd_ptr[3]),
        .O(\cmd_ptr[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \cmd_ptr[6]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[3]),
        .O(px_ptr0));
  LUT5 #(
    .INIT(32'hAAAABAAA)) 
    \cmd_ptr[6]_i_2 
       (.I0(\cmd_ptr[6]_i_4_n_0 ),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[3]),
        .O(\cmd_ptr[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF858F0F0F0F0F0F0)) 
    \cmd_ptr[6]_i_3 
       (.I0(cmd_ptr[5]),
        .I1(\cmd_ptr[6]_i_5_n_0 ),
        .I2(cmd_ptr[6]),
        .I3(\cmd_ptr[6]_i_6_n_0 ),
        .I4(cmd_ptr[3]),
        .I5(cmd_ptr[4]),
        .O(sel[6]));
  LUT6 #(
    .INIT(64'h8888888888888880)) 
    \cmd_ptr[6]_i_4 
       (.I0(\cmd_ptr[6]_i_7_n_0 ),
        .I1(\state[2]_i_5_n_0 ),
        .I2(\data_ctr[6]_i_2_n_0 ),
        .I3(data_ctr[7]),
        .I4(data_ctr[6]),
        .I5(data_ctr[5]),
        .O(\cmd_ptr[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hC800)) 
    \cmd_ptr[6]_i_5 
       (.I0(state[0]),
        .I1(cmd_ptr[2]),
        .I2(cmd_ptr[0]),
        .I3(cmd_ptr[1]),
        .O(\cmd_ptr[6]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h5F7F)) 
    \cmd_ptr[6]_i_6 
       (.I0(cmd_ptr[2]),
        .I1(cmd_ptr[0]),
        .I2(cmd_ptr[1]),
        .I3(state[0]),
        .O(\cmd_ptr[6]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cmd_ptr[6]_i_7 
       (.I0(state[2]),
        .I1(state[1]),
        .O(\cmd_ptr[6]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_ptr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\cmd_ptr[6]_i_2_n_0 ),
        .D(sel[0]),
        .Q(cmd_ptr[0]),
        .R(px_ptr0));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_ptr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\cmd_ptr[6]_i_2_n_0 ),
        .D(sel[1]),
        .Q(cmd_ptr[1]),
        .R(px_ptr0));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_ptr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\cmd_ptr[6]_i_2_n_0 ),
        .D(sel[2]),
        .Q(cmd_ptr[2]),
        .R(px_ptr0));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_ptr_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\cmd_ptr[6]_i_2_n_0 ),
        .D(sel[3]),
        .Q(cmd_ptr[3]),
        .R(px_ptr0));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_ptr_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\cmd_ptr[6]_i_2_n_0 ),
        .D(sel[4]),
        .Q(cmd_ptr[4]),
        .R(px_ptr0));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_ptr_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\cmd_ptr[6]_i_2_n_0 ),
        .D(sel[5]),
        .Q(cmd_ptr[5]),
        .R(px_ptr0));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_ptr_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\cmd_ptr[6]_i_2_n_0 ),
        .D(sel[6]),
        .Q(cmd_ptr[6]),
        .R(px_ptr0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "lcd/cmd_ptr_reg_rep" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h00B60006000600000000000400B300FA00FF0057008300FF000300B900000001),
    .INIT_01(256'h00AA0083001C001C00150000000600B10005000100CC0085000100B000250001),
    .INIT_02(256'h000D002A002A000000400002000700B40008001E003C000100500050000600C0),
    .INIT_03(256'h00000011000200000002004400000001003500000001003600550001003A0078),
    .INIT_04(256'h0000000000000000000000000000000000000000003200FF00000029009600FF),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    cmd_ptr_reg_rep
       (.ADDRARDADDR({1'b0,1'b0,1'b0,cmd_ptr_reg_rep_i_2_n_0,cmd_ptr_reg_rep_i_3_n_0,cmd_ptr_reg_rep_i_4_n_0,cmd_ptr_reg_rep_i_5_n_0,cmd_ptr_reg_rep_i_6_n_0,cmd_ptr_reg_rep_i_7_n_0,cmd_ptr_reg_rep_i_8_n_0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({NLW_cmd_ptr_reg_rep_DOADO_UNCONNECTED[15:8],cmd_ptr_reg_rep_n_8,cmd_ptr_reg_rep_n_9,cmd_ptr_reg_rep_n_10,cmd_ptr_reg_rep_n_11,cmd_ptr_reg_rep_n_12,cmd_ptr_reg_rep_n_13,cmd_ptr_reg_rep_n_14,cmd_ptr_reg_rep_n_15}),
        .DOBDO(NLW_cmd_ptr_reg_rep_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_cmd_ptr_reg_rep_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_cmd_ptr_reg_rep_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(cmd_ptr_reg_rep_i_1_n_0),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'hAAAABAAB)) 
    cmd_ptr_reg_rep_i_1
       (.I0(\cmd_ptr[6]_i_4_n_0 ),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[3]),
        .O(cmd_ptr_reg_rep_i_1_n_0));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    cmd_ptr_reg_rep_i_2
       (.I0(sel[6]),
        .I1(state[3]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[2]),
        .O(cmd_ptr_reg_rep_i_2_n_0));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    cmd_ptr_reg_rep_i_3
       (.I0(sel[5]),
        .I1(state[3]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[2]),
        .O(cmd_ptr_reg_rep_i_3_n_0));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    cmd_ptr_reg_rep_i_4
       (.I0(sel[4]),
        .I1(state[3]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[2]),
        .O(cmd_ptr_reg_rep_i_4_n_0));
  LUT6 #(
    .INIT(64'h000000005F7FA080)) 
    cmd_ptr_reg_rep_i_5
       (.I0(cmd_ptr[1]),
        .I1(cmd_ptr[0]),
        .I2(cmd_ptr[2]),
        .I3(state[0]),
        .I4(cmd_ptr[3]),
        .I5(px_ptr0),
        .O(cmd_ptr_reg_rep_i_5_n_0));
  LUT5 #(
    .INIT(32'h000056AA)) 
    cmd_ptr_reg_rep_i_6
       (.I0(cmd_ptr[2]),
        .I1(state[0]),
        .I2(cmd_ptr[0]),
        .I3(cmd_ptr[1]),
        .I4(px_ptr0),
        .O(cmd_ptr_reg_rep_i_6_n_0));
  LUT6 #(
    .INIT(64'h5566556655665560)) 
    cmd_ptr_reg_rep_i_7
       (.I0(cmd_ptr[1]),
        .I1(cmd_ptr[0]),
        .I2(state[3]),
        .I3(state[0]),
        .I4(state[1]),
        .I5(state[2]),
        .O(cmd_ptr_reg_rep_i_7_n_0));
  LUT5 #(
    .INIT(32'hA5A5A5A4)) 
    cmd_ptr_reg_rep_i_8
       (.I0(cmd_ptr[0]),
        .I1(state[3]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[2]),
        .O(cmd_ptr_reg_rep_i_8_n_0));
  LUT4 #(
    .INIT(16'h1451)) 
    cs_i_1
       (.I0(state[3]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .O(cs_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hE3)) 
    cs_i_2
       (.I0(dc_i_3_n_0),
        .I1(state[2]),
        .I2(state[1]),
        .O(cs_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    cs_reg
       (.C(clk_IBUF_BUFG),
        .CE(cs_i_1_n_0),
        .D(cs_i_2_n_0),
        .Q(cs),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFB40)) 
    \data[0]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(\pixel_reg_n_0_[15] ),
        .I3(cmd_ptr_reg_rep_n_15),
        .O(\data[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFB40)) 
    \data[1]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(\pixel_reg_n_0_[15] ),
        .I3(cmd_ptr_reg_rep_n_14),
        .O(\data[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0B8B8FFF0B8B8)) 
    \data[2]_i_1 
       (.I0(\pixel_reg_n_0_[15] ),
        .I1(state[0]),
        .I2(cmd_ptr_reg_rep_n_13),
        .I3(\data[5]_i_8_n_0 ),
        .I4(state[1]),
        .I5(cmd_ptr_reg_rep_n_10),
        .O(\data[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2E2FFE2E2E2)) 
    \data[3]_i_1 
       (.I0(\pixel_reg_n_0_[15] ),
        .I1(\data[3]_i_2_n_0 ),
        .I2(cmd_ptr_reg_rep_n_12),
        .I3(\data[3]_i_3_n_0 ),
        .I4(\data[3]_i_4_n_0 ),
        .I5(cmd_ptr_reg_rep_n_13),
        .O(\data[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data[3]_i_2 
       (.I0(state[1]),
        .I1(state[0]),
        .O(\data[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \data[3]_i_3 
       (.I0(cmd_ptr_reg_rep_n_14),
        .I1(cmd_ptr_reg_rep_n_15),
        .I2(cmd_ptr_reg_rep_n_11),
        .I3(cmd_ptr_reg_rep_n_9),
        .I4(cmd_ptr_reg_rep_n_8),
        .O(\data[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data[3]_i_4 
       (.I0(state[1]),
        .I1(cmd_ptr_reg_rep_n_10),
        .O(\data[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFB40)) 
    \data[4]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(\pixel_reg_n_0_[15] ),
        .I3(cmd_ptr_reg_rep_n_11),
        .O(\data[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF70)) 
    \data[5]_i_1 
       (.I0(\data[5]_i_3_n_0 ),
        .I1(\data[5]_i_4_n_0 ),
        .I2(\data[5]_i_5_n_0 ),
        .I3(\cmd_ptr[6]_i_4_n_0 ),
        .I4(\data[5]_i_6_n_0 ),
        .I5(\data[5]_i_7_n_0 ),
        .O(\data[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0B8B8FFF0B8B8)) 
    \data[5]_i_2 
       (.I0(\pixel_reg_n_0_[15] ),
        .I1(state[0]),
        .I2(cmd_ptr_reg_rep_n_10),
        .I3(\data[5]_i_8_n_0 ),
        .I4(state[1]),
        .I5(cmd_ptr_reg_rep_n_13),
        .O(\data[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \data[5]_i_3 
       (.I0(cmd_ptr_reg_rep_n_8),
        .I1(cmd_ptr_reg_rep_n_9),
        .I2(cmd_ptr_reg_rep_n_10),
        .I3(cmd_ptr_reg_rep_n_11),
        .O(\data[5]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \data[5]_i_4 
       (.I0(cmd_ptr_reg_rep_n_14),
        .I1(cmd_ptr_reg_rep_n_15),
        .I2(cmd_ptr_reg_rep_n_12),
        .I3(cmd_ptr_reg_rep_n_13),
        .O(\data[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \data[5]_i_5 
       (.I0(state[3]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state[2]),
        .O(\data[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    \data[5]_i_6 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state[3]),
        .I4(px_ptr),
        .O(\data[5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \data[5]_i_7 
       (.I0(state[3]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(\state[7]_i_17_n_0 ),
        .I4(state[2]),
        .O(\data[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \data[5]_i_8 
       (.I0(cmd_ptr_reg_rep_n_8),
        .I1(cmd_ptr_reg_rep_n_9),
        .I2(cmd_ptr_reg_rep_n_11),
        .I3(cmd_ptr_reg_rep_n_15),
        .I4(cmd_ptr_reg_rep_n_14),
        .I5(cmd_ptr_reg_rep_n_12),
        .O(\data[5]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hFB40)) 
    \data[6]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(\pixel_reg_n_0_[15] ),
        .I3(cmd_ptr_reg_rep_n_9),
        .O(\data[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hFB40)) 
    \data[7]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(\pixel_reg_n_0_[15] ),
        .I3(cmd_ptr_reg_rep_n_8),
        .O(\data[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB800B8FF)) 
    \data_ctr[0]_i_1 
       (.I0(g1_b0_n_0),
        .I1(\data_ctr[7]_i_5_n_0 ),
        .I2(g0_b0_n_0),
        .I3(state[0]),
        .I4(data_ctr[0]),
        .O(\data_ctr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF909F9F9F9090909)) 
    \data_ctr[1]_i_1 
       (.I0(data_ctr[0]),
        .I1(data_ctr[1]),
        .I2(state[0]),
        .I3(g1_b1_n_0),
        .I4(\data_ctr[7]_i_5_n_0 ),
        .I5(g0_b1_n_0),
        .O(\data_ctr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF909F9F9F9090909)) 
    \data_ctr[2]_i_1 
       (.I0(data_ctr[2]),
        .I1(\data_ctr[2]_i_2_n_0 ),
        .I2(state[0]),
        .I3(g1_b2_n_0),
        .I4(\data_ctr[7]_i_5_n_0 ),
        .I5(g0_b2_n_0),
        .O(\data_ctr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \data_ctr[2]_i_2 
       (.I0(data_ctr[1]),
        .I1(data_ctr[0]),
        .O(\data_ctr[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF909F9F9F9090909)) 
    \data_ctr[3]_i_1 
       (.I0(data_ctr[3]),
        .I1(\data_ctr[3]_i_2_n_0 ),
        .I2(state[0]),
        .I3(g1_b0_n_0),
        .I4(\data_ctr[7]_i_5_n_0 ),
        .I5(g0_b3_n_0),
        .O(\data_ctr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \data_ctr[3]_i_2 
       (.I0(data_ctr[0]),
        .I1(data_ctr[1]),
        .I2(data_ctr[2]),
        .O(\data_ctr[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF909F9F9F9090909)) 
    \data_ctr[4]_i_1 
       (.I0(data_ctr[4]),
        .I1(\data_ctr[4]_i_2_n_0 ),
        .I2(state[0]),
        .I3(g1_b1_n_0),
        .I4(\data_ctr[7]_i_5_n_0 ),
        .I5(g0_b4_n_0),
        .O(\data_ctr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \data_ctr[4]_i_2 
       (.I0(data_ctr[2]),
        .I1(data_ctr[1]),
        .I2(data_ctr[0]),
        .I3(data_ctr[3]),
        .O(\data_ctr[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF909F9F9F9090909)) 
    \data_ctr[5]_i_1 
       (.I0(data_ctr[5]),
        .I1(\data_ctr[6]_i_2_n_0 ),
        .I2(state[0]),
        .I3(g1_b5_n_0),
        .I4(\data_ctr[7]_i_5_n_0 ),
        .I5(g0_b5_n_0),
        .O(\data_ctr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFA900A9)) 
    \data_ctr[6]_i_1 
       (.I0(data_ctr[6]),
        .I1(\data_ctr[6]_i_2_n_0 ),
        .I2(data_ctr[5]),
        .I3(state[0]),
        .I4(\data_ctr_reg[6]_i_3_n_0 ),
        .O(\data_ctr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_ctr[6]_i_2 
       (.I0(data_ctr[3]),
        .I1(data_ctr[0]),
        .I2(data_ctr[1]),
        .I3(data_ctr[2]),
        .I4(data_ctr[4]),
        .O(\data_ctr[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAABAA)) 
    \data_ctr[7]_i_1 
       (.I0(\cmd_ptr[6]_i_4_n_0 ),
        .I1(\data_ctr[7]_i_3_n_0 ),
        .I2(state[3]),
        .I3(state[0]),
        .I4(state[2]),
        .O(\data_ctr[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF909F9F9F9090909)) 
    \data_ctr[7]_i_2 
       (.I0(data_ctr[7]),
        .I1(\data_ctr[7]_i_4_n_0 ),
        .I2(state[0]),
        .I3(g1_b2_n_0),
        .I4(\data_ctr[7]_i_5_n_0 ),
        .I5(g0_b7_n_0),
        .O(\data_ctr[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hD5D555555555FF55)) 
    \data_ctr[7]_i_3 
       (.I0(state[1]),
        .I1(\data_ctr[7]_i_6_n_0 ),
        .I2(\data_ctr[7]_i_7_n_0 ),
        .I3(\data[5]_i_8_n_0 ),
        .I4(cmd_ptr_reg_rep_n_13),
        .I5(cmd_ptr_reg_rep_n_10),
        .O(\data_ctr[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \data_ctr[7]_i_4 
       (.I0(data_ctr[5]),
        .I1(\data_ctr[6]_i_2_n_0 ),
        .I2(data_ctr[6]),
        .O(\data_ctr[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \data_ctr[7]_i_5 
       (.I0(cmd_ptr[5]),
        .I1(cmd_ptr[3]),
        .I2(cmd_ptr[4]),
        .I3(\data_ctr[7]_i_8_n_0 ),
        .I4(cmd_ptr[6]),
        .O(\data_ctr[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \data_ctr[7]_i_6 
       (.I0(cmd_ptr_reg_rep_n_8),
        .I1(cmd_ptr_reg_rep_n_9),
        .I2(cmd_ptr_reg_rep_n_11),
        .I3(cmd_ptr_reg_rep_n_12),
        .O(\data_ctr[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_ctr[7]_i_7 
       (.I0(cmd_ptr_reg_rep_n_15),
        .I1(cmd_ptr_reg_rep_n_14),
        .O(\data_ctr[7]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \data_ctr[7]_i_8 
       (.I0(cmd_ptr[2]),
        .I1(cmd_ptr[0]),
        .I2(cmd_ptr[1]),
        .O(\data_ctr[7]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_ctr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_ctr[7]_i_1_n_0 ),
        .D(\data_ctr[0]_i_1_n_0 ),
        .Q(data_ctr[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_ctr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_ctr[7]_i_1_n_0 ),
        .D(\data_ctr[1]_i_1_n_0 ),
        .Q(data_ctr[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_ctr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_ctr[7]_i_1_n_0 ),
        .D(\data_ctr[2]_i_1_n_0 ),
        .Q(data_ctr[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_ctr_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_ctr[7]_i_1_n_0 ),
        .D(\data_ctr[3]_i_1_n_0 ),
        .Q(data_ctr[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_ctr_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_ctr[7]_i_1_n_0 ),
        .D(\data_ctr[4]_i_1_n_0 ),
        .Q(data_ctr[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_ctr_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_ctr[7]_i_1_n_0 ),
        .D(\data_ctr[5]_i_1_n_0 ),
        .Q(data_ctr[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_ctr_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_ctr[7]_i_1_n_0 ),
        .D(\data_ctr[6]_i_1_n_0 ),
        .Q(data_ctr[6]),
        .R(1'b0));
  MUXF7 \data_ctr_reg[6]_i_3 
       (.I0(g0_b6_n_0),
        .I1(g1_b6_n_0),
        .O(\data_ctr_reg[6]_i_3_n_0 ),
        .S(\data_ctr[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_ctr_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_ctr[7]_i_1_n_0 ),
        .D(\data_ctr[7]_i_2_n_0 ),
        .Q(data_ctr[7]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \data_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\data[5]_i_1_n_0 ),
        .D(\data[0]_i_1_n_0 ),
        .Q(data_OBUF[0]),
        .S(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \data_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\data[5]_i_1_n_0 ),
        .D(\data[1]_i_1_n_0 ),
        .Q(data_OBUF[1]),
        .S(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\data[5]_i_1_n_0 ),
        .D(\data[2]_i_1_n_0 ),
        .Q(data_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\data[5]_i_1_n_0 ),
        .D(\data[3]_i_1_n_0 ),
        .Q(data_OBUF[3]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \data_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\data[5]_i_1_n_0 ),
        .D(\data[4]_i_1_n_0 ),
        .Q(data_OBUF[4]),
        .S(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\data[5]_i_1_n_0 ),
        .D(\data[5]_i_2_n_0 ),
        .Q(data_OBUF[5]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \data_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\data[5]_i_1_n_0 ),
        .D(\data[6]_i_1_n_0 ),
        .Q(data_OBUF[6]),
        .S(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \data_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\data[5]_i_1_n_0 ),
        .D(\data[7]_i_1_n_0 ),
        .Q(data_OBUF[7]),
        .S(1'b0));
  LUT5 #(
    .INIT(32'h03103303)) 
    dc_i_1
       (.I0(dc_i_3_n_0),
        .I1(state[3]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[1]),
        .O(dc_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'hB)) 
    dc_i_2
       (.I0(state[2]),
        .I1(state[0]),
        .O(dc_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    dc_i_3
       (.I0(cmd_ptr_reg_rep_n_11),
        .I1(cmd_ptr_reg_rep_n_10),
        .I2(cmd_ptr_reg_rep_n_9),
        .I3(cmd_ptr_reg_rep_n_8),
        .I4(\data[5]_i_4_n_0 ),
        .O(dc_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    dc_reg
       (.C(clk_IBUF_BUFG),
        .CE(dc_i_1_n_0),
        .D(dc_i_2_n_0),
        .Q(dc),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h825C412086E701FE)) 
    g0_b0
       (.I0(cmd_ptr[0]),
        .I1(g1_b1_i_1_n_0),
        .I2(g0_b0_i_1_n_0),
        .I3(g1_b1_i_2_n_0),
        .I4(g1_b1_i_3_n_0),
        .I5(g1_b1_i_4_n_0),
        .O(g0_b0_n_0));
  LUT6 #(
    .INIT(64'h825C412086E701FE)) 
    g0_b0__0
       (.I0(cmd_ptr[0]),
        .I1(g1_b4_i_1_n_0),
        .I2(g1_b5__0_i_1_n_0),
        .I3(g1_b4_i_2_n_0),
        .I4(g1_b4_i_3_n_0),
        .I5(g1_b4_i_4_n_0),
        .O(g0_b0__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h78)) 
    g0_b0_i_1
       (.I0(cmd_ptr[0]),
        .I1(cmd_ptr[1]),
        .I2(cmd_ptr[2]),
        .O(g0_b0_i_1_n_0));
  LUT6 #(
    .INIT(64'h14219981C100D3F4)) 
    g0_b1
       (.I0(cmd_ptr[0]),
        .I1(g1_b1_i_1_n_0),
        .I2(g0_b0_i_1_n_0),
        .I3(g1_b1_i_2_n_0),
        .I4(g1_b1_i_3_n_0),
        .I5(g1_b1_i_4_n_0),
        .O(g0_b1_n_0));
  LUT6 #(
    .INIT(64'h14219981C100D3F4)) 
    g0_b1__0
       (.I0(cmd_ptr[0]),
        .I1(g1_b4_i_1_n_0),
        .I2(g1_b5__0_i_1_n_0),
        .I3(g1_b4_i_2_n_0),
        .I4(g1_b4_i_3_n_0),
        .I5(g1_b4_i_4_n_0),
        .O(g0_b1__0_n_0));
  LUT6 #(
    .INIT(64'h086443913571D8E0)) 
    g0_b2
       (.I0(cmd_ptr[0]),
        .I1(g1_b1_i_1_n_0),
        .I2(g0_b0_i_1_n_0),
        .I3(g1_b1_i_2_n_0),
        .I4(g1_b1_i_3_n_0),
        .I5(g1_b1_i_4_n_0),
        .O(g0_b2_n_0));
  LUT6 #(
    .INIT(64'h086443913571D8E0)) 
    g0_b2__0
       (.I0(cmd_ptr[0]),
        .I1(g1_b4_i_1_n_0),
        .I2(g1_b5__0_i_1_n_0),
        .I3(g1_b4_i_2_n_0),
        .I4(g1_b4_i_3_n_0),
        .I5(g1_b4_i_4_n_0),
        .O(g0_b2__0_n_0));
  LUT6 #(
    .INIT(64'h0003D0D070100268)) 
    g0_b3
       (.I0(cmd_ptr[0]),
        .I1(g1_b1_i_1_n_0),
        .I2(g0_b0_i_1_n_0),
        .I3(g1_b1_i_2_n_0),
        .I4(g1_b1_i_3_n_0),
        .I5(g1_b1_i_4_n_0),
        .O(g0_b3_n_0));
  LUT6 #(
    .INIT(64'h0003D0D070100268)) 
    g0_b3__0
       (.I0(cmd_ptr[0]),
        .I1(g1_b4_i_1_n_0),
        .I2(g1_b5__0_i_1_n_0),
        .I3(g1_b4_i_2_n_0),
        .I4(g1_b4_i_3_n_0),
        .I5(g1_b4_i_4_n_0),
        .O(g0_b3__0_n_0));
  LUT6 #(
    .INIT(64'h8067029C360843E8)) 
    g0_b4
       (.I0(cmd_ptr[0]),
        .I1(g1_b1_i_1_n_0),
        .I2(g0_b0_i_1_n_0),
        .I3(g1_b1_i_2_n_0),
        .I4(g1_b1_i_3_n_0),
        .I5(g1_b1_i_4_n_0),
        .O(g0_b4_n_0));
  LUT6 #(
    .INIT(64'h8067029C360843E8)) 
    g0_b4__0
       (.I0(cmd_ptr[0]),
        .I1(g1_b4_i_1_n_0),
        .I2(g1_b5__0_i_1_n_0),
        .I3(g1_b4_i_2_n_0),
        .I4(g1_b4_i_3_n_0),
        .I5(g1_b4_i_4_n_0),
        .O(g0_b4__0_n_0));
  LUT6 #(
    .INIT(64'h0063921042094368)) 
    g0_b5
       (.I0(cmd_ptr[0]),
        .I1(g1_b1_i_1_n_0),
        .I2(g0_b0_i_1_n_0),
        .I3(g1_b1_i_2_n_0),
        .I4(g1_b1_i_3_n_0),
        .I5(g1_b1_i_4_n_0),
        .O(g0_b5_n_0));
  LUT6 #(
    .INIT(64'h0063921042094368)) 
    g0_b5__0
       (.I0(cmd_ptr[0]),
        .I1(g1_b4_i_1_n_0),
        .I2(g1_b5__0_i_1_n_0),
        .I3(g1_b4_i_2_n_0),
        .I4(g1_b4_i_3_n_0),
        .I5(g1_b4_i_4_n_0),
        .O(g0_b5__0_n_0));
  LUT6 #(
    .INIT(64'h0806040E001002E0)) 
    g0_b6
       (.I0(cmd_ptr[0]),
        .I1(g1_b1_i_1_n_0),
        .I2(g0_b0_i_1_n_0),
        .I3(g1_b1_i_2_n_0),
        .I4(g1_b1_i_3_n_0),
        .I5(g1_b1_i_4_n_0),
        .O(g0_b6_n_0));
  LUT6 #(
    .INIT(64'h0806040E001002E0)) 
    g0_b6__0
       (.I0(cmd_ptr[0]),
        .I1(g1_b4_i_1_n_0),
        .I2(g1_b5__0_i_1_n_0),
        .I3(g1_b4_i_2_n_0),
        .I4(g1_b4_i_3_n_0),
        .I5(g1_b4_i_4_n_0),
        .O(g0_b6__0_n_0));
  LUT6 #(
    .INIT(64'h00000202C2384378)) 
    g0_b7
       (.I0(cmd_ptr[0]),
        .I1(g1_b1_i_1_n_0),
        .I2(g0_b0_i_1_n_0),
        .I3(g1_b1_i_2_n_0),
        .I4(g1_b1_i_3_n_0),
        .I5(g1_b1_i_4_n_0),
        .O(g0_b7_n_0));
  LUT6 #(
    .INIT(64'h00000202C2384378)) 
    g0_b7__0
       (.I0(cmd_ptr[0]),
        .I1(g1_b4_i_1_n_0),
        .I2(g1_b5__0_i_1_n_0),
        .I3(g1_b4_i_2_n_0),
        .I4(g1_b4_i_3_n_0),
        .I5(g1_b4_i_4_n_0),
        .O(g0_b7__0_n_0));
  LUT6 #(
    .INIT(64'h000000000000002A)) 
    g1_b0
       (.I0(cmd_ptr[0]),
        .I1(g1_b1_i_1_n_0),
        .I2(g0_b0_i_1_n_0),
        .I3(g1_b1_i_2_n_0),
        .I4(g1_b1_i_3_n_0),
        .I5(g1_b1_i_4_n_0),
        .O(g1_b0_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    g1_b1
       (.I0(g1_b1_i_1_n_0),
        .I1(g1_b1_i_2_n_0),
        .I2(g1_b1_i_3_n_0),
        .I3(g1_b1_i_4_n_0),
        .O(g1_b1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    g1_b1_i_1
       (.I0(cmd_ptr[0]),
        .I1(cmd_ptr[1]),
        .O(g1_b1_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    g1_b1_i_2
       (.I0(cmd_ptr[1]),
        .I1(cmd_ptr[0]),
        .I2(cmd_ptr[2]),
        .I3(cmd_ptr[3]),
        .O(g1_b1_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    g1_b1_i_3
       (.I0(cmd_ptr[2]),
        .I1(cmd_ptr[0]),
        .I2(cmd_ptr[1]),
        .I3(cmd_ptr[3]),
        .I4(cmd_ptr[4]),
        .O(g1_b1_i_3_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    g1_b1_i_4
       (.I0(cmd_ptr[2]),
        .I1(cmd_ptr[0]),
        .I2(cmd_ptr[1]),
        .I3(cmd_ptr[4]),
        .I4(cmd_ptr[3]),
        .I5(cmd_ptr[5]),
        .O(g1_b1_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000000000023)) 
    g1_b2
       (.I0(cmd_ptr[0]),
        .I1(g1_b1_i_1_n_0),
        .I2(g0_b0_i_1_n_0),
        .I3(g1_b1_i_2_n_0),
        .I4(g1_b1_i_3_n_0),
        .I5(g1_b1_i_4_n_0),
        .O(g1_b2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000023)) 
    g1_b2__0
       (.I0(cmd_ptr[0]),
        .I1(g1_b4_i_1_n_0),
        .I2(g1_b5__0_i_1_n_0),
        .I3(g1_b4_i_2_n_0),
        .I4(g1_b4_i_3_n_0),
        .I5(g1_b4_i_4_n_0),
        .O(g1_b2__0_n_0));
  LUT6 #(
    .INIT(64'h000000000000002A)) 
    g1_b3
       (.I0(cmd_ptr[0]),
        .I1(g1_b4_i_1_n_0),
        .I2(g1_b5__0_i_1_n_0),
        .I3(g1_b4_i_2_n_0),
        .I4(g1_b4_i_3_n_0),
        .I5(g1_b4_i_4_n_0),
        .O(g1_b3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    g1_b4
       (.I0(g1_b4_i_1_n_0),
        .I1(g1_b4_i_2_n_0),
        .I2(g1_b4_i_3_n_0),
        .I3(g1_b4_i_4_n_0),
        .O(g1_b4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h9)) 
    g1_b4_i_1
       (.I0(cmd_ptr[0]),
        .I1(cmd_ptr[1]),
        .O(g1_b4_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    g1_b4_i_2
       (.I0(cmd_ptr[3]),
        .I1(cmd_ptr[0]),
        .I2(cmd_ptr[1]),
        .I3(cmd_ptr[2]),
        .O(g1_b4_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hCCCCCCC9)) 
    g1_b4_i_3
       (.I0(cmd_ptr[3]),
        .I1(cmd_ptr[4]),
        .I2(cmd_ptr[0]),
        .I3(cmd_ptr[1]),
        .I4(cmd_ptr[2]),
        .O(g1_b4_i_3_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    g1_b4_i_4
       (.I0(cmd_ptr[5]),
        .I1(cmd_ptr[3]),
        .I2(cmd_ptr[0]),
        .I3(cmd_ptr[1]),
        .I4(cmd_ptr[2]),
        .I5(cmd_ptr[4]),
        .O(g1_b4_i_4_n_0));
  LUT6 #(
    .INIT(64'h000000000000003A)) 
    g1_b5
       (.I0(cmd_ptr[0]),
        .I1(g1_b1_i_1_n_0),
        .I2(g0_b0_i_1_n_0),
        .I3(g1_b1_i_2_n_0),
        .I4(g1_b1_i_3_n_0),
        .I5(g1_b1_i_4_n_0),
        .O(g1_b5_n_0));
  LUT6 #(
    .INIT(64'h000000000000003A)) 
    g1_b5__0
       (.I0(cmd_ptr[0]),
        .I1(g1_b4_i_1_n_0),
        .I2(g1_b5__0_i_1_n_0),
        .I3(g1_b4_i_2_n_0),
        .I4(g1_b4_i_3_n_0),
        .I5(g1_b4_i_4_n_0),
        .O(g1_b5__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    g1_b5__0_i_1
       (.I0(cmd_ptr[2]),
        .I1(cmd_ptr[1]),
        .I2(cmd_ptr[0]),
        .O(g1_b5__0_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000002)) 
    g1_b6
       (.I0(cmd_ptr[0]),
        .I1(g1_b1_i_1_n_0),
        .I2(g1_b1_i_2_n_0),
        .I3(g1_b1_i_3_n_0),
        .I4(g1_b1_i_4_n_0),
        .O(g1_b6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    g1_b6__0
       (.I0(cmd_ptr[0]),
        .I1(g1_b4_i_1_n_0),
        .I2(g1_b4_i_2_n_0),
        .I3(g1_b4_i_3_n_0),
        .I4(g1_b4_i_4_n_0),
        .O(g1_b6__0_n_0));
  LUT6 #(
    .INIT(64'hAAAAACAAAAAAAAA0)) 
    \pixel[15]_i_1 
       (.I0(\pixel_reg_n_0_[15] ),
        .I1(pixel),
        .I2(state[3]),
        .I3(state[0]),
        .I4(state[1]),
        .I5(state[2]),
        .O(\pixel[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \pixel[15]_i_2 
       (.I0(\pixel[15]_i_3_n_0 ),
        .I1(px_x[4]),
        .I2(px_x[7]),
        .I3(px_x[5]),
        .I4(px_x[6]),
        .I5(px_x[8]),
        .O(pixel));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \pixel[15]_i_3 
       (.I0(px_x[1]),
        .I1(px_x[0]),
        .I2(px_x[3]),
        .I3(px_x[2]),
        .O(\pixel[15]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\pixel[15]_i_1_n_0 ),
        .Q(\pixel_reg_n_0_[15] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hAA9AAAA8)) 
    px_ptr_i_1
       (.I0(px_ptr),
        .I1(state[3]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[2]),
        .O(px_ptr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    px_ptr_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(px_ptr_i_1_n_0),
        .Q(px_ptr),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \px_x[0]_i_1 
       (.I0(\px_x[8]_i_4_n_0 ),
        .I1(px_x[0]),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \px_x[1]_i_1 
       (.I0(\px_x[8]_i_4_n_0 ),
        .I1(px_x[0]),
        .I2(px_x[1]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \px_x[2]_i_1 
       (.I0(\px_x[8]_i_4_n_0 ),
        .I1(px_x[1]),
        .I2(px_x[0]),
        .I3(px_x[2]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \px_x[3]_i_1 
       (.I0(\px_x[8]_i_4_n_0 ),
        .I1(px_x[2]),
        .I2(px_x[0]),
        .I3(px_x[1]),
        .I4(px_x[3]),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \px_x[4]_i_1 
       (.I0(\px_x[8]_i_4_n_0 ),
        .I1(px_x[3]),
        .I2(px_x[1]),
        .I3(px_x[0]),
        .I4(px_x[2]),
        .I5(px_x[4]),
        .O(p_1_in[4]));
  LUT3 #(
    .INIT(8'h48)) 
    \px_x[5]_i_1 
       (.I0(\px_x[8]_i_3_n_0 ),
        .I1(\px_x[8]_i_4_n_0 ),
        .I2(px_x[5]),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \px_x[6]_i_1 
       (.I0(\px_x[8]_i_3_n_0 ),
        .I1(px_x[5]),
        .I2(\px_x[8]_i_4_n_0 ),
        .I3(px_x[6]),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \px_x[7]_i_1 
       (.I0(px_x[6]),
        .I1(px_x[5]),
        .I2(\px_x[8]_i_3_n_0 ),
        .I3(\px_x[8]_i_4_n_0 ),
        .I4(px_x[7]),
        .O(p_1_in[7]));
  LUT5 #(
    .INIT(32'h00100003)) 
    \px_x[8]_i_1 
       (.I0(px_ptr),
        .I1(state[3]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[2]),
        .O(\px_x[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \px_x[8]_i_2 
       (.I0(px_x[7]),
        .I1(px_x[5]),
        .I2(px_x[6]),
        .I3(\px_x[8]_i_3_n_0 ),
        .I4(\px_x[8]_i_4_n_0 ),
        .I5(px_x[8]),
        .O(p_1_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \px_x[8]_i_3 
       (.I0(px_x[4]),
        .I1(px_x[3]),
        .I2(px_x[1]),
        .I3(px_x[0]),
        .I4(px_x[2]),
        .O(\px_x[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \px_x[8]_i_4 
       (.I0(state[2]),
        .I1(\state[7]_i_17_n_0 ),
        .O(\px_x[8]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \px_x_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\px_x[8]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(px_x[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \px_x_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\px_x[8]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(px_x[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \px_x_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\px_x[8]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(px_x[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \px_x_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\px_x[8]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(px_x[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \px_x_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\px_x[8]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(px_x[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \px_x_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\px_x[8]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(px_x[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \px_x_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\px_x[8]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(px_x[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \px_x_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\px_x[8]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(px_x[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \px_x_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\px_x[8]_i_1_n_0 ),
        .D(p_1_in[8]),
        .Q(px_x[8]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \px_y[0]_i_1 
       (.I0(\state[7]_i_8_n_0 ),
        .I1(px_y[0]),
        .O(\px_y[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \px_y[1]_i_1 
       (.I0(\state[7]_i_8_n_0 ),
        .I1(px_y[0]),
        .I2(px_y[1]),
        .O(\px_y[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \px_y[2]_i_1 
       (.I0(\state[7]_i_8_n_0 ),
        .I1(px_y[0]),
        .I2(px_y[1]),
        .I3(px_y[2]),
        .O(\px_y[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \px_y[3]_i_1 
       (.I0(px_y[0]),
        .I1(px_y[1]),
        .I2(px_y[2]),
        .I3(\state[7]_i_8_n_0 ),
        .I4(px_y[3]),
        .O(\px_y[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \px_y[4]_i_1 
       (.I0(px_y[2]),
        .I1(px_y[1]),
        .I2(px_y[0]),
        .I3(px_y[3]),
        .I4(\state[7]_i_8_n_0 ),
        .I5(px_y[4]),
        .O(\px_y[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \px_y[5]_i_1 
       (.I0(\px_y[5]_i_2_n_0 ),
        .I1(\state[7]_i_8_n_0 ),
        .I2(px_y[5]),
        .O(\px_y[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \px_y[5]_i_2 
       (.I0(px_y[4]),
        .I1(px_y[3]),
        .I2(px_y[0]),
        .I3(px_y[1]),
        .I4(px_y[2]),
        .O(\px_y[5]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h84)) 
    \px_y[6]_i_1 
       (.I0(\px_y[8]_i_4_n_0 ),
        .I1(\state[7]_i_8_n_0 ),
        .I2(px_y[6]),
        .O(\px_y[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hB040)) 
    \px_y[7]_i_1 
       (.I0(\px_y[8]_i_4_n_0 ),
        .I1(px_y[6]),
        .I2(\state[7]_i_8_n_0 ),
        .I3(px_y[7]),
        .O(\px_y[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \px_y[8]_i_1 
       (.I0(\px_y[8]_i_3_n_0 ),
        .I1(state[3]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[2]),
        .O(\px_y[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hDF002000)) 
    \px_y[8]_i_2 
       (.I0(px_y[6]),
        .I1(\px_y[8]_i_4_n_0 ),
        .I2(px_y[7]),
        .I3(\state[7]_i_8_n_0 ),
        .I4(px_y[8]),
        .O(\px_y[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \px_y[8]_i_3 
       (.I0(px_ptr),
        .I1(\state[7]_i_17_n_0 ),
        .I2(state[2]),
        .I3(state[0]),
        .I4(state[1]),
        .I5(state[3]),
        .O(\px_y[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \px_y[8]_i_4 
       (.I0(px_y[2]),
        .I1(px_y[1]),
        .I2(px_y[0]),
        .I3(px_y[3]),
        .I4(px_y[4]),
        .I5(px_y[5]),
        .O(\px_y[8]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \px_y_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\px_y[8]_i_1_n_0 ),
        .D(\px_y[0]_i_1_n_0 ),
        .Q(px_y[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \px_y_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\px_y[8]_i_1_n_0 ),
        .D(\px_y[1]_i_1_n_0 ),
        .Q(px_y[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \px_y_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\px_y[8]_i_1_n_0 ),
        .D(\px_y[2]_i_1_n_0 ),
        .Q(px_y[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \px_y_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\px_y[8]_i_1_n_0 ),
        .D(\px_y[3]_i_1_n_0 ),
        .Q(px_y[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \px_y_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\px_y[8]_i_1_n_0 ),
        .D(\px_y[4]_i_1_n_0 ),
        .Q(px_y[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \px_y_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\px_y[8]_i_1_n_0 ),
        .D(\px_y[5]_i_1_n_0 ),
        .Q(px_y[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \px_y_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\px_y[8]_i_1_n_0 ),
        .D(\px_y[6]_i_1_n_0 ),
        .Q(px_y[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \px_y_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\px_y[8]_i_1_n_0 ),
        .D(\px_y[7]_i_1_n_0 ),
        .Q(px_y[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \px_y_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\px_y[8]_i_1_n_0 ),
        .D(\px_y[8]_i_2_n_0 ),
        .Q(px_y[8]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFEAAAE)) 
    \src_state[0]_i_1 
       (.I0(\src_state[0]_i_2_n_0 ),
        .I1(src_state),
        .I2(\cmd_ptr[6]_i_4_n_0 ),
        .I3(\state[0]_i_2_n_0 ),
        .I4(\src_state[0]_i_3_n_0 ),
        .O(\src_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \src_state[0]_i_2 
       (.I0(state[3]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[2]),
        .O(\src_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \src_state[0]_i_3 
       (.I0(cmd_ptr_reg_rep_n_13),
        .I1(cmd_ptr_reg_rep_n_10),
        .I2(state[2]),
        .I3(\data[5]_i_8_n_0 ),
        .O(\src_state[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \src_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\src_state[0]_i_1_n_0 ),
        .Q(src_state),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFABAA)) 
    \state[0]_i_1 
       (.I0(\state[0]_i_2_n_0 ),
        .I1(state[3]),
        .I2(state[0]),
        .I3(\state[2]_i_4_n_0 ),
        .I4(\state[0]_i_3_n_0 ),
        .I5(\state[0]_i_4_n_0 ),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \state[0]_i_2 
       (.I0(\data[5]_i_5_n_0 ),
        .I1(\data[5]_i_4_n_0 ),
        .I2(cmd_ptr_reg_rep_n_8),
        .I3(cmd_ptr_reg_rep_n_9),
        .I4(cmd_ptr_reg_rep_n_10),
        .I5(cmd_ptr_reg_rep_n_11),
        .O(\state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \state[0]_i_3 
       (.I0(rst_IBUF),
        .I1(\state[7]_i_10_n_0 ),
        .I2(state[3]),
        .I3(src_state),
        .I4(state[2]),
        .I5(state[1]),
        .O(\state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF00004C44)) 
    \state[0]_i_4 
       (.I0(state[0]),
        .I1(rst_IBUF),
        .I2(state[1]),
        .I3(\state[7]_i_8_n_0 ),
        .I4(state[3]),
        .I5(\state[7]_i_5_n_0 ),
        .O(\state[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEFE)) 
    \state[1]_i_1 
       (.I0(\state[1]_i_2_n_0 ),
        .I1(px_ptr0),
        .I2(\state[2]_i_5_n_0 ),
        .I3(\state[1]_i_3_n_0 ),
        .I4(\state[2]_i_2_n_0 ),
        .I5(\state[1]_i_4_n_0 ),
        .O(\state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80808080FF808080)) 
    \state[1]_i_2 
       (.I0(\data[5]_i_3_n_0 ),
        .I1(\data[5]_i_4_n_0 ),
        .I2(\data[5]_i_5_n_0 ),
        .I3(data3),
        .I4(\state[2]_i_5_n_0 ),
        .I5(state[1]),
        .O(\state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \state[1]_i_3 
       (.I0(state[2]),
        .I1(\state[7]_i_15_n_0 ),
        .I2(\state[7]_i_14_n_0 ),
        .I3(\state[7]_i_13_n_0 ),
        .I4(\state[7]_i_12_n_0 ),
        .O(\state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hB0A0)) 
    \state[1]_i_4 
       (.I0(\px_y[8]_i_3_n_0 ),
        .I1(state[3]),
        .I2(rst_IBUF),
        .I3(\wait_ctr[7]_i_3_n_0 ),
        .O(\state[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \state[1]_i_5 
       (.I0(data_ctr[5]),
        .I1(data_ctr[6]),
        .I2(data_ctr[7]),
        .I3(\data_ctr[6]_i_2_n_0 ),
        .O(data3));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFEEEEEE)) 
    \state[2]_i_1 
       (.I0(\state[2]_i_2_n_0 ),
        .I1(\state[2]_i_3_n_0 ),
        .I2(\state[2]_i_4_n_0 ),
        .I3(\state[2]_i_5_n_0 ),
        .I4(rst_IBUF),
        .I5(\state[2]_i_6_n_0 ),
        .O(\state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \state[2]_i_2 
       (.I0(\px_y[8]_i_3_n_0 ),
        .I1(\state[7]_i_16_n_0 ),
        .O(\state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \state[2]_i_3 
       (.I0(rst_IBUF),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state[3]),
        .I4(state[2]),
        .O(\state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000002FFFFFFFF)) 
    \state[2]_i_4 
       (.I0(\state[7]_i_12_n_0 ),
        .I1(\state[7]_i_13_n_0 ),
        .I2(\state[7]_i_14_n_0 ),
        .I3(\state[7]_i_15_n_0 ),
        .I4(state[2]),
        .I5(state[1]),
        .O(\state[2]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \state[2]_i_5 
       (.I0(state[3]),
        .I1(state[0]),
        .O(\state[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000880000008F)) 
    \state[2]_i_6 
       (.I0(\state[7]_i_9_n_0 ),
        .I1(rst_IBUF),
        .I2(\state[7]_i_10_n_0 ),
        .I3(state[3]),
        .I4(\data[3]_i_2_n_0 ),
        .I5(state[2]),
        .O(\state[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF08)) 
    \state[7]_i_1 
       (.I0(\state[7]_i_3_n_0 ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(\state[7]_i_4_n_0 ),
        .I4(\state[7]_i_5_n_0 ),
        .I5(\state[7]_i_6_n_0 ),
        .O(\state[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \state[7]_i_10 
       (.I0(wait_ctr[2]),
        .I1(wr_i_4_n_0),
        .I2(wait_ctr[1]),
        .I3(wait_ctr[0]),
        .O(\state[7]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \state[7]_i_11 
       (.I0(state[3]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(rst_IBUF),
        .O(\state[7]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h9A950000)) 
    \state[7]_i_12 
       (.I0(wait_ctr[7]),
        .I1(g1_b2__0_n_0),
        .I2(\state[7]_i_19_n_0 ),
        .I3(g0_b7__0_n_0),
        .I4(\state[7]_i_20_n_0 ),
        .O(\state[7]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF656A)) 
    \state[7]_i_13 
       (.I0(wait_ctr[5]),
        .I1(g1_b5__0_n_0),
        .I2(\state[7]_i_19_n_0 ),
        .I3(g0_b5__0_n_0),
        .I4(\state[7]_i_21_n_0 ),
        .O(\state[7]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF656A)) 
    \state[7]_i_14 
       (.I0(wait_ctr[1]),
        .I1(g1_b4_n_0),
        .I2(\state[7]_i_19_n_0 ),
        .I3(g0_b1__0_n_0),
        .I4(\state[7]_i_22_n_0 ),
        .O(\state[7]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF656A)) 
    \state[7]_i_15 
       (.I0(wait_ctr[4]),
        .I1(g1_b4_n_0),
        .I2(\state[7]_i_19_n_0 ),
        .I3(g0_b4__0_n_0),
        .I4(\state[7]_i_23_n_0 ),
        .O(\state[7]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \state[7]_i_16 
       (.I0(\state[7]_i_24_n_0 ),
        .I1(px_y[0]),
        .I2(px_y[1]),
        .I3(px_y[2]),
        .O(\state[7]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \state[7]_i_17 
       (.I0(px_x[6]),
        .I1(px_x[5]),
        .I2(px_x[7]),
        .I3(px_x[8]),
        .I4(px_x[4]),
        .I5(\pixel[15]_i_3_n_0 ),
        .O(\state[7]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \state[7]_i_18 
       (.I0(\state[7]_i_25_n_0 ),
        .I1(\state[7]_i_23_n_0 ),
        .I2(\state[7]_i_26_n_0 ),
        .I3(\state[7]_i_22_n_0 ),
        .I4(\state[7]_i_21_n_0 ),
        .I5(\state[7]_i_27_n_0 ),
        .O(\state[7]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \state[7]_i_19 
       (.I0(cmd_ptr[5]),
        .I1(cmd_ptr[3]),
        .I2(\state[7]_i_28_n_0 ),
        .I3(cmd_ptr[4]),
        .I4(cmd_ptr[6]),
        .O(\state[7]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAAAAAFFEAAAAA)) 
    \state[7]_i_2 
       (.I0(\state[7]_i_7_n_0 ),
        .I1(\state[7]_i_8_n_0 ),
        .I2(\state[7]_i_9_n_0 ),
        .I3(\state[7]_i_10_n_0 ),
        .I4(\state[7]_i_11_n_0 ),
        .I5(state[2]),
        .O(\state[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEEB22281114DDD7)) 
    \state[7]_i_20 
       (.I0(g0_b6__0_n_0),
        .I1(cmd_ptr[6]),
        .I2(\state[7]_i_29_n_0 ),
        .I3(cmd_ptr[5]),
        .I4(g1_b6__0_n_0),
        .I5(wait_ctr[6]),
        .O(\state[7]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h1114DDD7EEEB2228)) 
    \state[7]_i_21 
       (.I0(g0_b2__0_n_0),
        .I1(cmd_ptr[6]),
        .I2(\state[7]_i_29_n_0 ),
        .I3(cmd_ptr[5]),
        .I4(g1_b2__0_n_0),
        .I5(wait_ctr[2]),
        .O(\state[7]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h1114DDD7EEEB2228)) 
    \state[7]_i_22 
       (.I0(g0_b0__0_n_0),
        .I1(cmd_ptr[6]),
        .I2(\state[7]_i_29_n_0 ),
        .I3(cmd_ptr[5]),
        .I4(g1_b3_n_0),
        .I5(wait_ctr[0]),
        .O(\state[7]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h1114DDD7EEEB2228)) 
    \state[7]_i_23 
       (.I0(g0_b3__0_n_0),
        .I1(cmd_ptr[6]),
        .I2(\state[7]_i_29_n_0 ),
        .I3(cmd_ptr[5]),
        .I4(g1_b3_n_0),
        .I5(wait_ctr[3]),
        .O(\state[7]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \state[7]_i_24 
       (.I0(px_y[3]),
        .I1(px_y[4]),
        .I2(px_y[6]),
        .I3(px_y[5]),
        .I4(px_y[7]),
        .I5(px_y[8]),
        .O(\state[7]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h1114DDD7EEEB2228)) 
    \state[7]_i_25 
       (.I0(g0_b4__0_n_0),
        .I1(cmd_ptr[6]),
        .I2(\state[7]_i_29_n_0 ),
        .I3(cmd_ptr[5]),
        .I4(g1_b4_n_0),
        .I5(wait_ctr[4]),
        .O(\state[7]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h1114DDD7EEEB2228)) 
    \state[7]_i_26 
       (.I0(g0_b1__0_n_0),
        .I1(cmd_ptr[6]),
        .I2(\state[7]_i_29_n_0 ),
        .I3(cmd_ptr[5]),
        .I4(g1_b4_n_0),
        .I5(wait_ctr[1]),
        .O(\state[7]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h1114DDD7EEEB2228)) 
    \state[7]_i_27 
       (.I0(g0_b5__0_n_0),
        .I1(cmd_ptr[6]),
        .I2(\state[7]_i_29_n_0 ),
        .I3(cmd_ptr[5]),
        .I4(g1_b5__0_n_0),
        .I5(wait_ctr[5]),
        .O(\state[7]_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \state[7]_i_28 
       (.I0(cmd_ptr[0]),
        .I1(cmd_ptr[1]),
        .I2(cmd_ptr[2]),
        .O(\state[7]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \state[7]_i_29 
       (.I0(cmd_ptr[3]),
        .I1(cmd_ptr[0]),
        .I2(cmd_ptr[1]),
        .I3(cmd_ptr[2]),
        .I4(cmd_ptr[4]),
        .O(\state[7]_i_29_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \state[7]_i_3 
       (.I0(\state[7]_i_12_n_0 ),
        .I1(\state[7]_i_13_n_0 ),
        .I2(\state[7]_i_14_n_0 ),
        .I3(\state[7]_i_15_n_0 ),
        .O(\state[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFBFBFBFBFFBFBFBF)) 
    \state[7]_i_4 
       (.I0(state[3]),
        .I1(rst_IBUF),
        .I2(state[0]),
        .I3(\state[7]_i_16_n_0 ),
        .I4(state[2]),
        .I5(state[1]),
        .O(\state[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h00D0)) 
    \state[7]_i_5 
       (.I0(\state[7]_i_17_n_0 ),
        .I1(px_ptr),
        .I2(state[2]),
        .I3(state[1]),
        .O(\state[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \state[7]_i_6 
       (.I0(wait_ctr[0]),
        .I1(wait_ctr[1]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(wait_ctr[2]),
        .I5(wr_i_4_n_0),
        .O(\state[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8080800080808080)) 
    \state[7]_i_7 
       (.I0(rst_IBUF),
        .I1(\state[2]_i_5_n_0 ),
        .I2(state[1]),
        .I3(state[2]),
        .I4(\state[7]_i_18_n_0 ),
        .I5(\state[7]_i_12_n_0 ),
        .O(\state[7]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \state[7]_i_8 
       (.I0(state[2]),
        .I1(\state[7]_i_16_n_0 ),
        .O(\state[7]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \state[7]_i_9 
       (.I0(\state[7]_i_17_n_0 ),
        .I1(px_ptr),
        .O(\state[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[7]_i_1_n_0 ),
        .D(\state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[7]_i_1_n_0 ),
        .D(\state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[7]_i_1_n_0 ),
        .D(\state[2]_i_1_n_0 ),
        .Q(state[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[7]_i_1_n_0 ),
        .D(\state[7]_i_2_n_0 ),
        .Q(state[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wait_ctr[0]_i_1 
       (.I0(\wait_ctr[7]_i_3_n_0 ),
        .I1(wait_ctr[0]),
        .O(\wait_ctr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \wait_ctr[1]_i_1 
       (.I0(\wait_ctr[7]_i_3_n_0 ),
        .I1(wait_ctr[0]),
        .I2(wait_ctr[1]),
        .O(\wait_ctr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \wait_ctr[2]_i_1 
       (.I0(\wait_ctr[7]_i_3_n_0 ),
        .I1(wait_ctr[0]),
        .I2(wait_ctr[1]),
        .I3(wait_ctr[2]),
        .O(\wait_ctr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \wait_ctr[3]_i_1 
       (.I0(\wait_ctr[7]_i_3_n_0 ),
        .I1(wait_ctr[2]),
        .I2(wait_ctr[1]),
        .I3(wait_ctr[0]),
        .I4(wait_ctr[3]),
        .O(\wait_ctr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \wait_ctr[4]_i_1 
       (.I0(\wait_ctr[7]_i_3_n_0 ),
        .I1(wait_ctr[0]),
        .I2(wait_ctr[1]),
        .I3(wait_ctr[2]),
        .I4(wait_ctr[3]),
        .I5(wait_ctr[4]),
        .O(\wait_ctr[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA2AAA00008000)) 
    \wait_ctr[5]_i_1 
       (.I0(\wait_ctr[7]_i_3_n_0 ),
        .I1(wait_ctr[4]),
        .I2(wait_ctr[3]),
        .I3(wait_ctr[2]),
        .I4(\wait_ctr[5]_i_2_n_0 ),
        .I5(wait_ctr[5]),
        .O(\wait_ctr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \wait_ctr[5]_i_2 
       (.I0(wait_ctr[1]),
        .I1(wait_ctr[0]),
        .O(\wait_ctr[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \wait_ctr[6]_i_1 
       (.I0(\wait_ctr[7]_i_3_n_0 ),
        .I1(\wait_ctr[7]_i_4_n_0 ),
        .I2(wait_ctr[6]),
        .O(\wait_ctr[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1312)) 
    \wait_ctr[7]_i_1 
       (.I0(state[2]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .O(\wait_ctr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \wait_ctr[7]_i_2 
       (.I0(\wait_ctr[7]_i_3_n_0 ),
        .I1(wait_ctr[6]),
        .I2(\wait_ctr[7]_i_4_n_0 ),
        .I3(wait_ctr[7]),
        .O(\wait_ctr[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0F22)) 
    \wait_ctr[7]_i_3 
       (.I0(\state[7]_i_10_n_0 ),
        .I1(state[2]),
        .I2(state[0]),
        .I3(state[1]),
        .O(\wait_ctr[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \wait_ctr[7]_i_4 
       (.I0(wait_ctr[5]),
        .I1(wait_ctr[4]),
        .I2(wait_ctr[3]),
        .I3(wait_ctr[2]),
        .I4(wait_ctr[1]),
        .I5(wait_ctr[0]),
        .O(\wait_ctr[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_ctr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\wait_ctr[7]_i_1_n_0 ),
        .D(\wait_ctr[0]_i_1_n_0 ),
        .Q(wait_ctr[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_ctr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\wait_ctr[7]_i_1_n_0 ),
        .D(\wait_ctr[1]_i_1_n_0 ),
        .Q(wait_ctr[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_ctr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\wait_ctr[7]_i_1_n_0 ),
        .D(\wait_ctr[2]_i_1_n_0 ),
        .Q(wait_ctr[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_ctr_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\wait_ctr[7]_i_1_n_0 ),
        .D(\wait_ctr[3]_i_1_n_0 ),
        .Q(wait_ctr[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_ctr_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\wait_ctr[7]_i_1_n_0 ),
        .D(\wait_ctr[4]_i_1_n_0 ),
        .Q(wait_ctr[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_ctr_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\wait_ctr[7]_i_1_n_0 ),
        .D(\wait_ctr[5]_i_1_n_0 ),
        .Q(wait_ctr[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_ctr_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\wait_ctr[7]_i_1_n_0 ),
        .D(\wait_ctr[6]_i_1_n_0 ),
        .Q(wait_ctr[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_ctr_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\wait_ctr[7]_i_1_n_0 ),
        .D(\wait_ctr[7]_i_2_n_0 ),
        .Q(wait_ctr[7]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h070D)) 
    wr_i_1
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[3]),
        .I3(state[0]),
        .O(wr_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF0000FFD5)) 
    wr_i_2
       (.I0(state[0]),
        .I1(wait_ctr[0]),
        .I2(wait_ctr[1]),
        .I3(wait_ctr[2]),
        .I4(wr_i_3_n_0),
        .I5(wr_i_4_n_0),
        .O(wr_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h6)) 
    wr_i_3
       (.I0(state[1]),
        .I1(state[2]),
        .O(wr_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    wr_i_4
       (.I0(wait_ctr[7]),
        .I1(wait_ctr[4]),
        .I2(wait_ctr[3]),
        .I3(wait_ctr[5]),
        .I4(wait_ctr[6]),
        .O(wr_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    wr_reg
       (.C(clk_IBUF_BUFG),
        .CE(wr_i_1_n_0),
        .D(wr_i_2_n_0),
        .Q(wr),
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
