// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Wed Jan  4 17:19:32 2023
// Host        : Nikon-DSLR running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/ethan/Documents/GitHub/Big-Crete-Calculator/Digital-Designs/DisplayTest/DisplayTest.sim/sim_1/impl/func/xsim/HX8357_TB_func_impl.v
// Design      : HX8357
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tftg256-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "59bd0ead" *) (* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) 
(* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
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
       (.Q(data_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .cs(cs_OBUF),
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
    Q,
    wr,
    dc,
    cs,
    clk_IBUF_BUFG,
    rst_IBUF);
  output [3:0]state;
  output [7:0]Q;
  output wr;
  output dc;
  output cs;
  input clk_IBUF_BUFG;
  input rst_IBUF;

  wire [7:0]Q;
  wire clk_IBUF_BUFG;
  wire [6:0]cmd_ptr;
  wire \cmd_ptr[5]_i_2_n_0 ;
  wire \cmd_ptr[6]_i_2_n_0 ;
  wire \cmd_ptr[6]_i_4_n_0 ;
  wire \cmd_ptr[6]_i_5_n_0 ;
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
  wire \data[0]_i_1_n_0 ;
  wire \data[1]_i_1_n_0 ;
  wire \data[2]_i_1_n_0 ;
  wire \data[2]_i_2_n_0 ;
  wire \data[3]_i_1_n_0 ;
  wire \data[3]_i_2_n_0 ;
  wire \data[4]_i_1_n_0 ;
  wire \data[5]_i_1_n_0 ;
  wire \data[5]_i_2_n_0 ;
  wire \data[5]_i_3_n_0 ;
  wire \data[5]_i_4_n_0 ;
  wire \data[6]_i_1_n_0 ;
  wire \data[7]_i_1_n_0 ;
  wire \data[7]_i_2_n_0 ;
  wire \data[7]_i_3_n_0 ;
  wire \data[7]_i_4_n_0 ;
  wire \data[7]_i_5_n_0 ;
  wire \data[7]_i_6_n_0 ;
  wire \data[7]_i_7_n_0 ;
  wire [7:0]data_ctr;
  wire \data_ctr[2]_i_2_n_0 ;
  wire \data_ctr[6]_i_2_n_0 ;
  wire \data_ctr[7]_i_1_n_0 ;
  wire \data_ctr[7]_i_3_n_0 ;
  wire \data_ctr[7]_i_4_n_0 ;
  wire \data_ctr[7]_i_5_n_0 ;
  wire \data_ctr[7]_i_6_n_0 ;
  wire \data_ctr[7]_i_7_n_0 ;
  wire \data_ctr[7]_i_8_n_0 ;
  wire \data_ctr[7]_i_9_n_0 ;
  wire \data_ctr_reg[3]_i_2_n_0 ;
  wire \data_ctr_reg[5]_i_2_n_0 ;
  wire \data_ctr_reg[6]_i_3_n_0 ;
  wire dc;
  wire dc_i_1_n_0;
  wire dc_i_2_n_0;
  wire g0_b0__0_n_0;
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
  wire g1_b0__0_n_0;
  wire g1_b0_i_1_n_0;
  wire g1_b0_i_2_n_0;
  wire g1_b0_i_3_n_0;
  wire g1_b0_n_0;
  wire g1_b1__0_i_1_n_0;
  wire g1_b1__0_i_2_n_0;
  wire g1_b1__0_i_3_n_0;
  wire g1_b1__0_i_4_n_0;
  wire g1_b1__0_n_0;
  wire g1_b1_n_0;
  wire g1_b2__0_n_0;
  wire g1_b2_n_0;
  wire g1_b3__0_n_0;
  wire g1_b3_n_0;
  wire g1_b4__0_n_0;
  wire g1_b4_n_0;
  wire g1_b5__0_i_1_n_0;
  wire g1_b5__0_n_0;
  wire g1_b5_i_1_n_0;
  wire g1_b5_n_0;
  wire g1_b6__0_n_0;
  wire g1_b6_n_0;
  wire [23:17]p_0_in;
  wire [7:0]p_1_in;
  wire \pixel[0]_i_2_n_0 ;
  wire \pixel[0]_i_3_n_0 ;
  wire \pixel[0]_i_4_n_0 ;
  wire \pixel[0]_i_5_n_0 ;
  wire \pixel[0]_i_6_n_0 ;
  wire \pixel[0]_i_7_n_0 ;
  wire \pixel[0]_i_8_n_0 ;
  wire \pixel[12]_i_2_n_0 ;
  wire \pixel[12]_i_3_n_0 ;
  wire \pixel[12]_i_4_n_0 ;
  wire \pixel[12]_i_5_n_0 ;
  wire \pixel[4]_i_2_n_0 ;
  wire \pixel[4]_i_3_n_0 ;
  wire \pixel[4]_i_4_n_0 ;
  wire \pixel[4]_i_5_n_0 ;
  wire \pixel[8]_i_2_n_0 ;
  wire \pixel[8]_i_3_n_0 ;
  wire \pixel[8]_i_4_n_0 ;
  wire \pixel[8]_i_5_n_0 ;
  wire [15:0]pixel_reg;
  wire \pixel_reg[0]_i_1_n_0 ;
  wire \pixel_reg[0]_i_1_n_4 ;
  wire \pixel_reg[0]_i_1_n_5 ;
  wire \pixel_reg[0]_i_1_n_6 ;
  wire \pixel_reg[0]_i_1_n_7 ;
  wire \pixel_reg[12]_i_1_n_4 ;
  wire \pixel_reg[12]_i_1_n_5 ;
  wire \pixel_reg[12]_i_1_n_6 ;
  wire \pixel_reg[12]_i_1_n_7 ;
  wire \pixel_reg[4]_i_1_n_0 ;
  wire \pixel_reg[4]_i_1_n_4 ;
  wire \pixel_reg[4]_i_1_n_5 ;
  wire \pixel_reg[4]_i_1_n_6 ;
  wire \pixel_reg[4]_i_1_n_7 ;
  wire \pixel_reg[8]_i_1_n_0 ;
  wire \pixel_reg[8]_i_1_n_4 ;
  wire \pixel_reg[8]_i_1_n_5 ;
  wire \pixel_reg[8]_i_1_n_6 ;
  wire \pixel_reg[8]_i_1_n_7 ;
  wire px_ptr;
  wire px_ptr_i_1_n_0;
  wire px_ptr_i_2_n_0;
  wire [8:0]px_x;
  wire \px_x[0]_i_1_n_0 ;
  wire \px_x[0]_i_2_n_0 ;
  wire \px_x[1]_i_1_n_0 ;
  wire \px_x[2]_i_1_n_0 ;
  wire \px_x[3]_i_1_n_0 ;
  wire \px_x[4]_i_1_n_0 ;
  wire \px_x[5]_i_1_n_0 ;
  wire \px_x[6]_i_1_n_0 ;
  wire \px_x[7]_i_1_n_0 ;
  wire \px_x[8]_i_1_n_0 ;
  wire \px_x[8]_i_2_n_0 ;
  wire \px_x[8]_i_3_n_0 ;
  wire \px_x[8]_i_4_n_0 ;
  wire [8:0]px_y;
  wire \px_y[0]_i_1_n_0 ;
  wire \px_y[0]_i_2_n_0 ;
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
  wire rd0;
  wire rst_IBUF;
  wire [6:0]sel;
  wire [0:0]src_state;
  wire \src_state[0]_i_1_n_0 ;
  wire \src_state[0]_i_2_n_0 ;
  wire \src_state[0]_i_3_n_0 ;
  wire [3:0]state;
  wire state1_carry__0_i_1_n_0;
  wire state1_carry__0_i_2_n_0;
  wire state1_carry__0_i_3_n_0;
  wire state1_carry__0_i_4_n_0;
  wire state1_carry__0_i_8_n_0;
  wire state1_carry__0_n_0;
  wire state1_carry__1_i_1_n_0;
  wire state1_carry__1_i_2_n_0;
  wire state1_carry__1_i_3_n_0;
  wire state1_carry__1_n_3;
  wire state1_carry_i_1_n_0;
  wire state1_carry_i_2_n_0;
  wire state1_carry_i_3_n_0;
  wire state1_carry_i_4_n_0;
  wire state1_carry_n_0;
  wire \state[0]_i_1_n_0 ;
  wire \state[0]_i_2_n_0 ;
  wire \state[0]_i_3_n_0 ;
  wire \state[0]_i_4_n_0 ;
  wire \state[0]_i_5_n_0 ;
  wire \state[0]_i_6_n_0 ;
  wire \state[0]_i_7_n_0 ;
  wire \state[1]_i_10_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state[1]_i_3_n_0 ;
  wire \state[1]_i_4_n_0 ;
  wire \state[1]_i_5_n_0 ;
  wire \state[1]_i_6_n_0 ;
  wire \state[1]_i_7_n_0 ;
  wire \state[1]_i_8_n_0 ;
  wire \state[1]_i_9_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state[2]_i_2_n_0 ;
  wire \state[2]_i_3_n_0 ;
  wire \state[2]_i_4_n_0 ;
  wire \state[7]_i_10_n_0 ;
  wire \state[7]_i_11_n_0 ;
  wire \state[7]_i_1_n_0 ;
  wire \state[7]_i_2_n_0 ;
  wire \state[7]_i_3_n_0 ;
  wire \state[7]_i_4_n_0 ;
  wire \state[7]_i_5_n_0 ;
  wire \state[7]_i_6_n_0 ;
  wire \state[7]_i_7_n_0 ;
  wire \state[7]_i_8_n_0 ;
  wire \state[7]_i_9_n_0 ;
  wire [25:0]wait_ctr;
  wire \wait_ctr[0]_i_1_n_0 ;
  wire \wait_ctr[0]_i_2_n_0 ;
  wire \wait_ctr[25]_i_1_n_0 ;
  wire \wait_ctr[25]_i_2_n_0 ;
  wire \wait_ctr[25]_i_4_n_0 ;
  wire \wait_ctr_reg[12]_i_1_n_0 ;
  wire \wait_ctr_reg[12]_i_1_n_4 ;
  wire \wait_ctr_reg[12]_i_1_n_5 ;
  wire \wait_ctr_reg[12]_i_1_n_6 ;
  wire \wait_ctr_reg[12]_i_1_n_7 ;
  wire \wait_ctr_reg[16]_i_1_n_0 ;
  wire \wait_ctr_reg[16]_i_1_n_4 ;
  wire \wait_ctr_reg[16]_i_1_n_5 ;
  wire \wait_ctr_reg[16]_i_1_n_6 ;
  wire \wait_ctr_reg[16]_i_1_n_7 ;
  wire \wait_ctr_reg[20]_i_1_n_0 ;
  wire \wait_ctr_reg[20]_i_1_n_4 ;
  wire \wait_ctr_reg[20]_i_1_n_5 ;
  wire \wait_ctr_reg[20]_i_1_n_6 ;
  wire \wait_ctr_reg[20]_i_1_n_7 ;
  wire \wait_ctr_reg[24]_i_1_n_0 ;
  wire \wait_ctr_reg[24]_i_1_n_4 ;
  wire \wait_ctr_reg[24]_i_1_n_5 ;
  wire \wait_ctr_reg[24]_i_1_n_6 ;
  wire \wait_ctr_reg[24]_i_1_n_7 ;
  wire \wait_ctr_reg[25]_i_3_n_7 ;
  wire \wait_ctr_reg[4]_i_1_n_0 ;
  wire \wait_ctr_reg[4]_i_1_n_4 ;
  wire \wait_ctr_reg[4]_i_1_n_5 ;
  wire \wait_ctr_reg[4]_i_1_n_6 ;
  wire \wait_ctr_reg[4]_i_1_n_7 ;
  wire \wait_ctr_reg[8]_i_1_n_0 ;
  wire \wait_ctr_reg[8]_i_1_n_4 ;
  wire \wait_ctr_reg[8]_i_1_n_5 ;
  wire \wait_ctr_reg[8]_i_1_n_6 ;
  wire \wait_ctr_reg[8]_i_1_n_7 ;
  wire wr;
  wire wr_i_10_n_0;
  wire wr_i_11_n_0;
  wire wr_i_1_n_0;
  wire wr_i_2_n_0;
  wire wr_i_3_n_0;
  wire wr_i_4_n_0;
  wire wr_i_5_n_0;
  wire wr_i_6_n_0;
  wire wr_i_7_n_0;
  wire wr_i_8_n_0;
  wire wr_i_9_n_0;
  wire [15:8]NLW_cmd_ptr_reg_rep_DOADO_UNCONNECTED;
  wire [15:0]NLW_cmd_ptr_reg_rep_DOBDO_UNCONNECTED;
  wire [1:0]NLW_cmd_ptr_reg_rep_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_cmd_ptr_reg_rep_DOPBDOP_UNCONNECTED;
  wire [2:0]\NLW_pixel_reg[0]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_pixel_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_pixel_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_pixel_reg[8]_i_1_CO_UNCONNECTED ;
  wire [2:0]NLW_state1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_state1_carry_O_UNCONNECTED;
  wire [2:0]NLW_state1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_state1_carry__0_O_UNCONNECTED;
  wire [3:1]NLW_state1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_state1_carry__1_O_UNCONNECTED;
  wire [2:0]\NLW_wait_ctr_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_wait_ctr_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_wait_ctr_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_wait_ctr_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_wait_ctr_reg[25]_i_3_CO_UNCONNECTED ;
  wire [3:1]\NLW_wait_ctr_reg[25]_i_3_O_UNCONNECTED ;
  wire [2:0]\NLW_wait_ctr_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_wait_ctr_reg[8]_i_1_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h9)) 
    \cmd_ptr[0]_i_1 
       (.I0(state[0]),
        .I1(cmd_ptr[0]),
        .O(sel[0]));
  LUT3 #(
    .INIT(8'h1E)) 
    \cmd_ptr[1]_i_1 
       (.I0(state[0]),
        .I1(cmd_ptr[0]),
        .I2(cmd_ptr[1]),
        .O(sel[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h57A8)) 
    \cmd_ptr[2]_i_1 
       (.I0(cmd_ptr[1]),
        .I1(cmd_ptr[0]),
        .I2(state[0]),
        .I3(cmd_ptr[2]),
        .O(sel[2]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h1FFFE000)) 
    \cmd_ptr[3]_i_1 
       (.I0(cmd_ptr[0]),
        .I1(state[0]),
        .I2(cmd_ptr[2]),
        .I3(cmd_ptr[1]),
        .I4(cmd_ptr[3]),
        .O(sel[3]));
  LUT6 #(
    .INIT(64'h7F7F7FFF80808000)) 
    \cmd_ptr[4]_i_1 
       (.I0(cmd_ptr[3]),
        .I1(cmd_ptr[1]),
        .I2(cmd_ptr[2]),
        .I3(cmd_ptr[0]),
        .I4(state[0]),
        .I5(cmd_ptr[4]),
        .O(sel[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \cmd_ptr[5]_i_1 
       (.I0(\cmd_ptr[5]_i_2_n_0 ),
        .I1(cmd_ptr[2]),
        .I2(cmd_ptr[1]),
        .I3(cmd_ptr[3]),
        .I4(cmd_ptr[4]),
        .I5(cmd_ptr[5]),
        .O(sel[5]));
  LUT2 #(
    .INIT(4'hE)) 
    \cmd_ptr[5]_i_2 
       (.I0(cmd_ptr[0]),
        .I1(state[0]),
        .O(\cmd_ptr[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \cmd_ptr[6]_i_1 
       (.I0(state[2]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .O(rd0));
  LUT5 #(
    .INIT(32'h03000008)) 
    \cmd_ptr[6]_i_2 
       (.I0(\cmd_ptr[6]_i_4_n_0 ),
        .I1(state[2]),
        .I2(state[3]),
        .I3(state[0]),
        .I4(state[1]),
        .O(\cmd_ptr[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7F7F7FFF80808000)) 
    \cmd_ptr[6]_i_3 
       (.I0(cmd_ptr[5]),
        .I1(cmd_ptr[4]),
        .I2(\cmd_ptr[6]_i_5_n_0 ),
        .I3(state[0]),
        .I4(cmd_ptr[0]),
        .I5(cmd_ptr[6]),
        .O(sel[6]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \cmd_ptr[6]_i_4 
       (.I0(data_ctr[6]),
        .I1(data_ctr[4]),
        .I2(\data_ctr[6]_i_2_n_0 ),
        .I3(data_ctr[5]),
        .I4(data_ctr[7]),
        .O(\cmd_ptr[6]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \cmd_ptr[6]_i_5 
       (.I0(cmd_ptr[3]),
        .I1(cmd_ptr[1]),
        .I2(cmd_ptr[2]),
        .O(\cmd_ptr[6]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_ptr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\cmd_ptr[6]_i_2_n_0 ),
        .D(sel[0]),
        .Q(cmd_ptr[0]),
        .R(rd0));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_ptr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\cmd_ptr[6]_i_2_n_0 ),
        .D(sel[1]),
        .Q(cmd_ptr[1]),
        .R(rd0));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_ptr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\cmd_ptr[6]_i_2_n_0 ),
        .D(sel[2]),
        .Q(cmd_ptr[2]),
        .R(rd0));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_ptr_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\cmd_ptr[6]_i_2_n_0 ),
        .D(sel[3]),
        .Q(cmd_ptr[3]),
        .R(rd0));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_ptr_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\cmd_ptr[6]_i_2_n_0 ),
        .D(sel[4]),
        .Q(cmd_ptr[4]),
        .R(rd0));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_ptr_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\cmd_ptr[6]_i_2_n_0 ),
        .D(sel[5]),
        .Q(cmd_ptr[5]),
        .R(rd0));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_ptr_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\cmd_ptr[6]_i_2_n_0 ),
        .D(sel[6]),
        .Q(cmd_ptr[6]),
        .R(rd0));
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
    .INIT_00(256'h000600000000000400B300FA00FF0057008300FF000300B90000000100FF00FF),
    .INIT_01(256'h001C001C00150000000600B10005000100CC0085000100B00025000100B60006),
    .INIT_02(256'h002A000000400002000700B40008001E003C000100500050000600C000AA0083),
    .INIT_03(256'h000200000002004400000001003500000001003600550001003A0078000D002A),
    .INIT_04(256'h00000000000000000000000000000000003200FF00000029009600FF00000011),
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
    .INIT(32'h0300000B)) 
    cmd_ptr_reg_rep_i_1
       (.I0(\cmd_ptr[6]_i_4_n_0 ),
        .I1(state[2]),
        .I2(state[3]),
        .I3(state[0]),
        .I4(state[1]),
        .O(cmd_ptr_reg_rep_i_1_n_0));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    cmd_ptr_reg_rep_i_2
       (.I0(cmd_ptr[6]),
        .I1(\cmd_ptr[5]_i_2_n_0 ),
        .I2(\cmd_ptr[6]_i_5_n_0 ),
        .I3(cmd_ptr[4]),
        .I4(cmd_ptr[5]),
        .I5(rd0),
        .O(cmd_ptr_reg_rep_i_2_n_0));
  LUT6 #(
    .INIT(64'h000000006A6A6AAA)) 
    cmd_ptr_reg_rep_i_3
       (.I0(cmd_ptr[5]),
        .I1(cmd_ptr[4]),
        .I2(\cmd_ptr[6]_i_5_n_0 ),
        .I3(state[0]),
        .I4(cmd_ptr[0]),
        .I5(rd0),
        .O(cmd_ptr_reg_rep_i_3_n_0));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    cmd_ptr_reg_rep_i_4
       (.I0(cmd_ptr[4]),
        .I1(\cmd_ptr[5]_i_2_n_0 ),
        .I2(cmd_ptr[2]),
        .I3(cmd_ptr[1]),
        .I4(cmd_ptr[3]),
        .I5(rd0),
        .O(cmd_ptr_reg_rep_i_4_n_0));
  LUT6 #(
    .INIT(64'h000000006A6A6AAA)) 
    cmd_ptr_reg_rep_i_5
       (.I0(cmd_ptr[3]),
        .I1(cmd_ptr[1]),
        .I2(cmd_ptr[2]),
        .I3(state[0]),
        .I4(cmd_ptr[0]),
        .I5(rd0),
        .O(cmd_ptr_reg_rep_i_5_n_0));
  LUT5 #(
    .INIT(32'h000056AA)) 
    cmd_ptr_reg_rep_i_6
       (.I0(cmd_ptr[2]),
        .I1(state[0]),
        .I2(cmd_ptr[0]),
        .I3(cmd_ptr[1]),
        .I4(rd0),
        .O(cmd_ptr_reg_rep_i_6_n_0));
  LUT6 #(
    .INIT(64'h5656565656565650)) 
    cmd_ptr_reg_rep_i_7
       (.I0(cmd_ptr[1]),
        .I1(cmd_ptr[0]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[3]),
        .I5(state[2]),
        .O(cmd_ptr_reg_rep_i_7_n_0));
  LUT5 #(
    .INIT(32'h99999998)) 
    cmd_ptr_reg_rep_i_8
       (.I0(cmd_ptr[0]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state[3]),
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
  LUT4 #(
    .INIT(16'hC05F)) 
    cs_i_2
       (.I0(\state[1]_i_5_n_0 ),
        .I1(wr_i_3_n_0),
        .I2(state[1]),
        .I3(state[2]),
        .O(cs_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    cs_reg
       (.C(clk_IBUF_BUFG),
        .CE(cs_i_1_n_0),
        .D(cs_i_2_n_0),
        .Q(cs),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hC0C0C0C0FFC0EAEA)) 
    \data[0]_i_1 
       (.I0(pixel_reg[8]),
        .I1(\data[7]_i_4_n_0 ),
        .I2(cmd_ptr_reg_rep_n_15),
        .I3(pixel_reg[0]),
        .I4(px_ptr),
        .I5(\data[7]_i_5_n_0 ),
        .O(\data[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC0C0C0C0FFC0EAEA)) 
    \data[1]_i_1 
       (.I0(pixel_reg[9]),
        .I1(\data[7]_i_4_n_0 ),
        .I2(cmd_ptr_reg_rep_n_14),
        .I3(pixel_reg[1]),
        .I4(px_ptr),
        .I5(\data[7]_i_5_n_0 ),
        .O(\data[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAFAA2F2)) 
    \data[2]_i_1 
       (.I0(state[1]),
        .I1(\data_ctr[7]_i_4_n_0 ),
        .I2(cmd_ptr_reg_rep_n_13),
        .I3(state[0]),
        .I4(state[2]),
        .I5(\data[2]_i_2_n_0 ),
        .O(\data[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00A000C0)) 
    \data[2]_i_2 
       (.I0(pixel_reg[2]),
        .I1(pixel_reg[10]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(px_ptr),
        .O(\data[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFAAAEAAABAAAAAA)) 
    \data[3]_i_1 
       (.I0(\data[3]_i_2_n_0 ),
        .I1(px_ptr),
        .I2(state[1]),
        .I3(state[0]),
        .I4(pixel_reg[11]),
        .I5(pixel_reg[3]),
        .O(\data[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFAFA3030FAFF3030)) 
    \data[3]_i_2 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(cmd_ptr_reg_rep_n_12),
        .I3(\data_ctr[7]_i_8_n_0 ),
        .I4(state[1]),
        .I5(cmd_ptr_reg_rep_n_13),
        .O(\data[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hC0C0C0C0FFC0EAEA)) 
    \data[4]_i_1 
       (.I0(pixel_reg[12]),
        .I1(\data[7]_i_4_n_0 ),
        .I2(cmd_ptr_reg_rep_n_11),
        .I3(pixel_reg[4]),
        .I4(px_ptr),
        .I5(\data[7]_i_5_n_0 ),
        .O(\data[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0004)) 
    \data[5]_i_1 
       (.I0(cmd_ptr_reg_rep_n_13),
        .I1(state[1]),
        .I2(cmd_ptr_reg_rep_n_12),
        .I3(\data[5]_i_2_n_0 ),
        .I4(\data[5]_i_3_n_0 ),
        .I5(\data[5]_i_4_n_0 ),
        .O(\data[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data[5]_i_2 
       (.I0(cmd_ptr_reg_rep_n_11),
        .I1(cmd_ptr_reg_rep_n_8),
        .I2(cmd_ptr_reg_rep_n_9),
        .I3(cmd_ptr_reg_rep_n_14),
        .I4(cmd_ptr_reg_rep_n_15),
        .O(\data[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFA22)) 
    \data[5]_i_3 
       (.I0(cmd_ptr_reg_rep_n_10),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .O(\data[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00A000C0)) 
    \data[5]_i_4 
       (.I0(pixel_reg[5]),
        .I1(pixel_reg[13]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(px_ptr),
        .O(\data[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hC0C0C0C0FFC0EAEA)) 
    \data[6]_i_1 
       (.I0(pixel_reg[14]),
        .I1(\data[7]_i_4_n_0 ),
        .I2(cmd_ptr_reg_rep_n_9),
        .I3(pixel_reg[6]),
        .I4(px_ptr),
        .I5(\data[7]_i_5_n_0 ),
        .O(\data[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAEAAAAAAAAA)) 
    \data[7]_i_1 
       (.I0(\data[7]_i_3_n_0 ),
        .I1(\state[0]_i_4_n_0 ),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[1]),
        .I5(state[0]),
        .O(\data[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC0C0C0C0FFC0EAEA)) 
    \data[7]_i_2 
       (.I0(pixel_reg[15]),
        .I1(\data[7]_i_4_n_0 ),
        .I2(cmd_ptr_reg_rep_n_8),
        .I3(pixel_reg[7]),
        .I4(px_ptr),
        .I5(\data[7]_i_5_n_0 ),
        .O(\data[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFD00)) 
    \data[7]_i_3 
       (.I0(cmd_ptr_reg_rep_n_13),
        .I1(\state[1]_i_10_n_0 ),
        .I2(\data[7]_i_6_n_0 ),
        .I3(\state[1]_i_6_n_0 ),
        .I4(\data[7]_i_7_n_0 ),
        .I5(\data_ctr[7]_i_3_n_0 ),
        .O(\data[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \data[7]_i_4 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .O(\data[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \data[7]_i_5 
       (.I0(state[1]),
        .I1(state[0]),
        .O(\data[7]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \data[7]_i_6 
       (.I0(cmd_ptr_reg_rep_n_9),
        .I1(cmd_ptr_reg_rep_n_10),
        .I2(cmd_ptr_reg_rep_n_12),
        .O(\data[7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00001000)) 
    \data[7]_i_7 
       (.I0(state[0]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[2]),
        .I4(wr_i_3_n_0),
        .O(\data[7]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB800B8FF)) 
    \data_ctr[0]_i_1 
       (.I0(g1_b0_n_0),
        .I1(\data_ctr[7]_i_7_n_0 ),
        .I2(g0_b0_n_0),
        .I3(state[0]),
        .I4(data_ctr[0]),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'hF909F9F9F9090909)) 
    \data_ctr[1]_i_1 
       (.I0(data_ctr[1]),
        .I1(data_ctr[0]),
        .I2(state[0]),
        .I3(g1_b1_n_0),
        .I4(\data_ctr[7]_i_7_n_0 ),
        .I5(g0_b1_n_0),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'hF909F9F9F9090909)) 
    \data_ctr[2]_i_1 
       (.I0(data_ctr[2]),
        .I1(\data_ctr[2]_i_2_n_0 ),
        .I2(state[0]),
        .I3(g1_b2_n_0),
        .I4(\data_ctr[7]_i_7_n_0 ),
        .I5(g0_b2_n_0),
        .O(p_1_in[2]));
  LUT2 #(
    .INIT(4'hE)) 
    \data_ctr[2]_i_2 
       (.I0(data_ctr[0]),
        .I1(data_ctr[1]),
        .O(\data_ctr[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAA90000AAA9)) 
    \data_ctr[3]_i_1 
       (.I0(data_ctr[3]),
        .I1(data_ctr[1]),
        .I2(data_ctr[0]),
        .I3(data_ctr[2]),
        .I4(state[0]),
        .I5(\data_ctr_reg[3]_i_2_n_0 ),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'hF909F9F9F9090909)) 
    \data_ctr[4]_i_1 
       (.I0(data_ctr[4]),
        .I1(\data_ctr[6]_i_2_n_0 ),
        .I2(state[0]),
        .I3(g1_b4_n_0),
        .I4(\data_ctr[7]_i_7_n_0 ),
        .I5(g0_b4_n_0),
        .O(p_1_in[4]));
  LUT5 #(
    .INIT(32'hFFA900A9)) 
    \data_ctr[5]_i_1 
       (.I0(data_ctr[5]),
        .I1(\data_ctr[6]_i_2_n_0 ),
        .I2(data_ctr[4]),
        .I3(state[0]),
        .I4(\data_ctr_reg[5]_i_2_n_0 ),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'hFFFFAAA90000AAA9)) 
    \data_ctr[6]_i_1 
       (.I0(data_ctr[6]),
        .I1(data_ctr[4]),
        .I2(\data_ctr[6]_i_2_n_0 ),
        .I3(data_ctr[5]),
        .I4(state[0]),
        .I5(\data_ctr_reg[6]_i_3_n_0 ),
        .O(p_1_in[6]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \data_ctr[6]_i_2 
       (.I0(data_ctr[2]),
        .I1(data_ctr[0]),
        .I2(data_ctr[1]),
        .I3(data_ctr[3]),
        .O(\data_ctr[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFEAAAEAA)) 
    \data_ctr[7]_i_1 
       (.I0(\data_ctr[7]_i_3_n_0 ),
        .I1(\data_ctr[7]_i_4_n_0 ),
        .I2(cmd_ptr_reg_rep_n_13),
        .I3(\state[1]_i_6_n_0 ),
        .I4(\data_ctr[7]_i_5_n_0 ),
        .O(\data_ctr[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF909F9F9F9090909)) 
    \data_ctr[7]_i_2 
       (.I0(data_ctr[7]),
        .I1(\data_ctr[7]_i_6_n_0 ),
        .I2(state[0]),
        .I3(g1_b2_n_0),
        .I4(\data_ctr[7]_i_7_n_0 ),
        .I5(g0_b7_n_0),
        .O(p_1_in[7]));
  LUT5 #(
    .INIT(32'h01000000)) 
    \data_ctr[7]_i_3 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[3]),
        .I3(state[2]),
        .I4(\cmd_ptr[6]_i_4_n_0 ),
        .O(\data_ctr[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \data_ctr[7]_i_4 
       (.I0(\data_ctr[7]_i_8_n_0 ),
        .I1(cmd_ptr_reg_rep_n_12),
        .O(\data_ctr[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hBFFF)) 
    \data_ctr[7]_i_5 
       (.I0(\state[1]_i_10_n_0 ),
        .I1(cmd_ptr_reg_rep_n_12),
        .I2(cmd_ptr_reg_rep_n_10),
        .I3(cmd_ptr_reg_rep_n_9),
        .O(\data_ctr[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \data_ctr[7]_i_6 
       (.I0(data_ctr[5]),
        .I1(\data_ctr[6]_i_2_n_0 ),
        .I2(data_ctr[4]),
        .I3(data_ctr[6]),
        .O(\data_ctr[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFFFF00800000)) 
    \data_ctr[7]_i_7 
       (.I0(cmd_ptr[5]),
        .I1(cmd_ptr[4]),
        .I2(cmd_ptr[3]),
        .I3(\data_ctr[7]_i_9_n_0 ),
        .I4(cmd_ptr[0]),
        .I5(cmd_ptr[6]),
        .O(\data_ctr[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \data_ctr[7]_i_8 
       (.I0(cmd_ptr_reg_rep_n_15),
        .I1(cmd_ptr_reg_rep_n_14),
        .I2(cmd_ptr_reg_rep_n_9),
        .I3(cmd_ptr_reg_rep_n_8),
        .I4(cmd_ptr_reg_rep_n_11),
        .I5(cmd_ptr_reg_rep_n_10),
        .O(\data_ctr[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \data_ctr[7]_i_9 
       (.I0(cmd_ptr[2]),
        .I1(cmd_ptr[1]),
        .O(\data_ctr[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_ctr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_ctr[7]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(data_ctr[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_ctr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_ctr[7]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(data_ctr[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_ctr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_ctr[7]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(data_ctr[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_ctr_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_ctr[7]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(data_ctr[3]),
        .R(1'b0));
  MUXF7 \data_ctr_reg[3]_i_2 
       (.I0(g0_b3_n_0),
        .I1(g1_b3_n_0),
        .O(\data_ctr_reg[3]_i_2_n_0 ),
        .S(\data_ctr[7]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_ctr_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_ctr[7]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(data_ctr[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_ctr_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_ctr[7]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(data_ctr[5]),
        .R(1'b0));
  MUXF7 \data_ctr_reg[5]_i_2 
       (.I0(g0_b5_n_0),
        .I1(g1_b5_n_0),
        .O(\data_ctr_reg[5]_i_2_n_0 ),
        .S(\data_ctr[7]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_ctr_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_ctr[7]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(data_ctr[6]),
        .R(1'b0));
  MUXF7 \data_ctr_reg[6]_i_3 
       (.I0(g0_b6_n_0),
        .I1(g1_b6_n_0),
        .O(\data_ctr_reg[6]_i_3_n_0 ),
        .S(\data_ctr[7]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_ctr_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_ctr[7]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(data_ctr[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\data[7]_i_1_n_0 ),
        .D(\data[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\data[7]_i_1_n_0 ),
        .D(\data[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\data[7]_i_1_n_0 ),
        .D(\data[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\data[7]_i_1_n_0 ),
        .D(\data[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\data[7]_i_1_n_0 ),
        .D(\data[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\data[7]_i_1_n_0 ),
        .D(\data[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\data[7]_i_1_n_0 ),
        .D(\data[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\data[7]_i_1_n_0 ),
        .D(\data[7]_i_2_n_0 ),
        .Q(Q[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h07090701)) 
    dc_i_1
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[2]),
        .I4(\state[1]_i_5_n_0 ),
        .O(dc_i_1_n_0));
  LUT3 #(
    .INIT(8'h8F)) 
    dc_i_2
       (.I0(state[2]),
        .I1(wr_i_3_n_0),
        .I2(state[1]),
        .O(dc_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    dc_reg
       (.C(clk_IBUF_BUFG),
        .CE(dc_i_1_n_0),
        .D(dc_i_2_n_0),
        .Q(dc),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h03D104281B360DFB)) 
    g0_b0
       (.I0(cmd_ptr[0]),
        .I1(cmd_ptr[1]),
        .I2(g1_b5_i_1_n_0),
        .I3(g1_b0_i_1_n_0),
        .I4(g1_b0_i_2_n_0),
        .I5(g1_b0_i_3_n_0),
        .O(g0_b0_n_0));
  LUT6 #(
    .INIT(64'h097104821B9C07FB)) 
    g0_b0__0
       (.I0(cmd_ptr[0]),
        .I1(g1_b1__0_i_1_n_0),
        .I2(g1_b5__0_i_1_n_0),
        .I3(g1_b1__0_i_2_n_0),
        .I4(g1_b1__0_i_3_n_0),
        .I5(g1_b1__0_i_4_n_0),
        .O(g0_b0__0_n_0));
  LUT6 #(
    .INIT(64'h502CCC0D04094F79)) 
    g0_b1
       (.I0(cmd_ptr[0]),
        .I1(cmd_ptr[1]),
        .I2(g1_b5_i_1_n_0),
        .I3(g1_b0_i_1_n_0),
        .I4(g1_b0_i_2_n_0),
        .I5(g1_b0_i_3_n_0),
        .O(g0_b1_n_0));
  LUT6 #(
    .INIT(64'h5086660704034FD3)) 
    g0_b1__0
       (.I0(cmd_ptr[0]),
        .I1(g1_b1__0_i_1_n_0),
        .I2(g1_b5__0_i_1_n_0),
        .I3(g1_b1__0_i_2_n_0),
        .I4(g1_b1__0_i_3_n_0),
        .I5(g1_b1__0_i_4_n_0),
        .O(g0_b1__0_n_0));
  LUT6 #(
    .INIT(64'h81310E44756DC929)) 
    g0_b2
       (.I0(cmd_ptr[0]),
        .I1(cmd_ptr[1]),
        .I2(g1_b5_i_1_n_0),
        .I3(g1_b0_i_1_n_0),
        .I4(g1_b0_i_2_n_0),
        .I5(g1_b0_i_3_n_0),
        .O(g0_b2_n_0));
  LUT6 #(
    .INIT(64'h21910E44D5C76383)) 
    g0_b2__0
       (.I0(cmd_ptr[0]),
        .I1(g1_b1__0_i_1_n_0),
        .I2(g1_b5__0_i_1_n_0),
        .I3(g1_b1__0_i_2_n_0),
        .I4(g1_b1__0_i_3_n_0),
        .I5(g1_b1__0_i_4_n_0),
        .O(g0_b2__0_n_0));
  LUT6 #(
    .INIT(64'h000F4941604003A9)) 
    g0_b3
       (.I0(cmd_ptr[0]),
        .I1(cmd_ptr[1]),
        .I2(g1_b5_i_1_n_0),
        .I3(g1_b0_i_1_n_0),
        .I4(g1_b0_i_2_n_0),
        .I5(g1_b0_i_3_n_0),
        .O(g0_b3_n_0));
  LUT6 #(
    .INIT(64'h000F4341C04009A3)) 
    g0_b3__0
       (.I0(cmd_ptr[0]),
        .I1(g1_b1__0_i_1_n_0),
        .I2(g1_b5__0_i_1_n_0),
        .I3(g1_b1__0_i_2_n_0),
        .I4(g1_b1__0_i_3_n_0),
        .I5(g1_b1__0_i_4_n_0),
        .O(g0_b3__0_n_0));
  LUT6 #(
    .INIT(64'h01360AD072810FA9)) 
    g0_b4
       (.I0(cmd_ptr[0]),
        .I1(cmd_ptr[1]),
        .I2(g1_b5_i_1_n_0),
        .I3(g1_b0_i_1_n_0),
        .I4(g1_b0_i_2_n_0),
        .I5(g1_b0_i_3_n_0),
        .O(g0_b4_n_0));
  LUT6 #(
    .INIT(64'h019C0A70D8210FA3)) 
    g0_b4__0
       (.I0(cmd_ptr[0]),
        .I1(g1_b1__0_i_1_n_0),
        .I2(g1_b5__0_i_1_n_0),
        .I3(g1_b1__0_i_2_n_0),
        .I4(g1_b1__0_i_3_n_0),
        .I5(g1_b1__0_i_4_n_0),
        .O(g0_b4__0_n_0));
  LUT6 #(
    .INIT(64'h012E4241028507A9)) 
    g0_b5
       (.I0(cmd_ptr[0]),
        .I1(cmd_ptr[1]),
        .I2(g1_b5_i_1_n_0),
        .I3(g1_b0_i_1_n_0),
        .I4(g1_b0_i_2_n_0),
        .I5(g1_b0_i_3_n_0),
        .O(g0_b5_n_0));
  LUT6 #(
    .INIT(64'h018E484108250DA3)) 
    g0_b5__0
       (.I0(cmd_ptr[0]),
        .I1(g1_b1__0_i_1_n_0),
        .I2(g1_b5__0_i_1_n_0),
        .I3(g1_b1__0_i_2_n_0),
        .I4(g1_b1__0_i_3_n_0),
        .I5(g1_b1__0_i_4_n_0),
        .O(g0_b5__0_n_0));
  LUT6 #(
    .INIT(64'h8012109200400B29)) 
    g0_b6
       (.I0(cmd_ptr[0]),
        .I1(cmd_ptr[1]),
        .I2(g1_b5_i_1_n_0),
        .I3(g1_b0_i_1_n_0),
        .I4(g1_b0_i_2_n_0),
        .I5(g1_b0_i_3_n_0),
        .O(g0_b6_n_0));
  LUT6 #(
    .INIT(64'h2018103800400B83)) 
    g0_b6__0
       (.I0(cmd_ptr[0]),
        .I1(g1_b1__0_i_1_n_0),
        .I2(g1_b5__0_i_1_n_0),
        .I3(g1_b1__0_i_2_n_0),
        .I4(g1_b1__0_i_3_n_0),
        .I5(g1_b1__0_i_4_n_0),
        .O(g0_b6__0_n_0));
  LUT6 #(
    .INIT(64'h0000020B02E107E9)) 
    g0_b7
       (.I0(cmd_ptr[0]),
        .I1(cmd_ptr[1]),
        .I2(g1_b5_i_1_n_0),
        .I3(g1_b0_i_1_n_0),
        .I4(g1_b0_i_2_n_0),
        .I5(g1_b0_i_3_n_0),
        .O(g0_b7_n_0));
  LUT6 #(
    .INIT(64'h0000080B08E10DE3)) 
    g0_b7__0
       (.I0(cmd_ptr[0]),
        .I1(g1_b1__0_i_1_n_0),
        .I2(g1_b5__0_i_1_n_0),
        .I3(g1_b1__0_i_2_n_0),
        .I4(g1_b1__0_i_3_n_0),
        .I5(g1_b1__0_i_4_n_0),
        .O(g0_b7__0_n_0));
  LUT4 #(
    .INIT(16'h0002)) 
    g1_b0
       (.I0(cmd_ptr[0]),
        .I1(g1_b0_i_1_n_0),
        .I2(g1_b0_i_2_n_0),
        .I3(g1_b0_i_3_n_0),
        .O(g1_b0_n_0));
  LUT4 #(
    .INIT(16'h0002)) 
    g1_b0__0
       (.I0(cmd_ptr[0]),
        .I1(g1_b1__0_i_2_n_0),
        .I2(g1_b1__0_i_3_n_0),
        .I3(g1_b1__0_i_4_n_0),
        .O(g1_b0__0_n_0));
  LUT4 #(
    .INIT(16'h7F80)) 
    g1_b0_i_1
       (.I0(cmd_ptr[0]),
        .I1(cmd_ptr[2]),
        .I2(cmd_ptr[1]),
        .I3(cmd_ptr[3]),
        .O(g1_b0_i_1_n_0));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    g1_b0_i_2
       (.I0(cmd_ptr[0]),
        .I1(cmd_ptr[3]),
        .I2(cmd_ptr[1]),
        .I3(cmd_ptr[2]),
        .I4(cmd_ptr[4]),
        .O(g1_b0_i_2_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    g1_b0_i_3
       (.I0(cmd_ptr[0]),
        .I1(cmd_ptr[2]),
        .I2(cmd_ptr[1]),
        .I3(cmd_ptr[3]),
        .I4(cmd_ptr[4]),
        .I5(cmd_ptr[5]),
        .O(g1_b0_i_3_n_0));
  LUT5 #(
    .INIT(32'h00000006)) 
    g1_b1
       (.I0(cmd_ptr[0]),
        .I1(cmd_ptr[1]),
        .I2(g1_b0_i_1_n_0),
        .I3(g1_b0_i_2_n_0),
        .I4(g1_b0_i_3_n_0),
        .O(g1_b1_n_0));
  LUT4 #(
    .INIT(16'h0002)) 
    g1_b1__0
       (.I0(g1_b1__0_i_1_n_0),
        .I1(g1_b1__0_i_2_n_0),
        .I2(g1_b1__0_i_3_n_0),
        .I3(g1_b1__0_i_4_n_0),
        .O(g1_b1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    g1_b1__0_i_1
       (.I0(cmd_ptr[1]),
        .I1(cmd_ptr[0]),
        .O(g1_b1__0_i_1_n_0));
  LUT4 #(
    .INIT(16'hFE01)) 
    g1_b1__0_i_2
       (.I0(cmd_ptr[2]),
        .I1(cmd_ptr[0]),
        .I2(cmd_ptr[1]),
        .I3(cmd_ptr[3]),
        .O(g1_b1__0_i_2_n_0));
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    g1_b1__0_i_3
       (.I0(cmd_ptr[4]),
        .I1(cmd_ptr[2]),
        .I2(cmd_ptr[0]),
        .I3(cmd_ptr[1]),
        .I4(cmd_ptr[3]),
        .O(g1_b1__0_i_3_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    g1_b1__0_i_4
       (.I0(cmd_ptr[5]),
        .I1(cmd_ptr[3]),
        .I2(cmd_ptr[1]),
        .I3(cmd_ptr[0]),
        .I4(cmd_ptr[2]),
        .I5(cmd_ptr[4]),
        .O(g1_b1__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000000000026)) 
    g1_b2
       (.I0(cmd_ptr[0]),
        .I1(cmd_ptr[1]),
        .I2(g1_b5_i_1_n_0),
        .I3(g1_b0_i_1_n_0),
        .I4(g1_b0_i_2_n_0),
        .I5(g1_b0_i_3_n_0),
        .O(g1_b2_n_0));
  LUT6 #(
    .INIT(64'h000000000000008C)) 
    g1_b2__0
       (.I0(cmd_ptr[0]),
        .I1(g1_b1__0_i_1_n_0),
        .I2(g1_b5__0_i_1_n_0),
        .I3(g1_b1__0_i_2_n_0),
        .I4(g1_b1__0_i_3_n_0),
        .I5(g1_b1__0_i_4_n_0),
        .O(g1_b2__0_n_0));
  LUT6 #(
    .INIT(64'h00000000000000A2)) 
    g1_b3
       (.I0(cmd_ptr[0]),
        .I1(cmd_ptr[1]),
        .I2(g1_b5_i_1_n_0),
        .I3(g1_b0_i_1_n_0),
        .I4(g1_b0_i_2_n_0),
        .I5(g1_b0_i_3_n_0),
        .O(g1_b3_n_0));
  LUT6 #(
    .INIT(64'h00000000000000A8)) 
    g1_b3__0
       (.I0(cmd_ptr[0]),
        .I1(g1_b1__0_i_1_n_0),
        .I2(g1_b5__0_i_1_n_0),
        .I3(g1_b1__0_i_2_n_0),
        .I4(g1_b1__0_i_3_n_0),
        .I5(g1_b1__0_i_4_n_0),
        .O(g1_b3__0_n_0));
  LUT6 #(
    .INIT(64'h000000000000006E)) 
    g1_b4
       (.I0(cmd_ptr[0]),
        .I1(cmd_ptr[1]),
        .I2(g1_b5_i_1_n_0),
        .I3(g1_b0_i_1_n_0),
        .I4(g1_b0_i_2_n_0),
        .I5(g1_b0_i_3_n_0),
        .O(g1_b4_n_0));
  LUT6 #(
    .INIT(64'h00000000000000CE)) 
    g1_b4__0
       (.I0(cmd_ptr[0]),
        .I1(g1_b1__0_i_1_n_0),
        .I2(g1_b5__0_i_1_n_0),
        .I3(g1_b1__0_i_2_n_0),
        .I4(g1_b1__0_i_3_n_0),
        .I5(g1_b1__0_i_4_n_0),
        .O(g1_b4__0_n_0));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    g1_b5
       (.I0(cmd_ptr[0]),
        .I1(cmd_ptr[1]),
        .I2(g1_b5_i_1_n_0),
        .I3(g1_b0_i_1_n_0),
        .I4(g1_b0_i_2_n_0),
        .I5(g1_b0_i_3_n_0),
        .O(g1_b5_n_0));
  LUT6 #(
    .INIT(64'h00000000000000E8)) 
    g1_b5__0
       (.I0(cmd_ptr[0]),
        .I1(g1_b1__0_i_1_n_0),
        .I2(g1_b5__0_i_1_n_0),
        .I3(g1_b1__0_i_2_n_0),
        .I4(g1_b1__0_i_3_n_0),
        .I5(g1_b1__0_i_4_n_0),
        .O(g1_b5__0_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    g1_b5__0_i_1
       (.I0(cmd_ptr[1]),
        .I1(cmd_ptr[0]),
        .I2(cmd_ptr[2]),
        .O(g1_b5__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h78)) 
    g1_b5_i_1
       (.I0(cmd_ptr[1]),
        .I1(cmd_ptr[0]),
        .I2(cmd_ptr[2]),
        .O(g1_b5_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000002)) 
    g1_b6
       (.I0(cmd_ptr[0]),
        .I1(cmd_ptr[1]),
        .I2(g1_b0_i_1_n_0),
        .I3(g1_b0_i_2_n_0),
        .I4(g1_b0_i_3_n_0),
        .O(g1_b6_n_0));
  LUT5 #(
    .INIT(32'h00000008)) 
    g1_b6__0
       (.I0(cmd_ptr[0]),
        .I1(g1_b1__0_i_1_n_0),
        .I2(g1_b1__0_i_2_n_0),
        .I3(g1_b1__0_i_3_n_0),
        .I4(g1_b1__0_i_4_n_0),
        .O(g1_b6__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    \pixel[0]_i_2 
       (.I0(\pixel[0]_i_7_n_0 ),
        .I1(pixel_reg[0]),
        .O(\pixel[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \pixel[0]_i_3 
       (.I0(\pixel[0]_i_7_n_0 ),
        .I1(pixel_reg[3]),
        .O(\pixel[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \pixel[0]_i_4 
       (.I0(\pixel[0]_i_7_n_0 ),
        .I1(pixel_reg[2]),
        .O(\pixel[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \pixel[0]_i_5 
       (.I0(\pixel[0]_i_7_n_0 ),
        .I1(pixel_reg[1]),
        .O(\pixel[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hD)) 
    \pixel[0]_i_6 
       (.I0(pixel_reg[0]),
        .I1(\pixel[0]_i_7_n_0 ),
        .O(\pixel[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \pixel[0]_i_7 
       (.I0(px_x[8]),
        .I1(\pixel[0]_i_8_n_0 ),
        .I2(px_x[7]),
        .I3(px_x[5]),
        .I4(px_x[6]),
        .I5(px_x[4]),
        .O(\pixel[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \pixel[0]_i_8 
       (.I0(px_x[1]),
        .I1(px_x[2]),
        .I2(px_x[3]),
        .I3(px_x[0]),
        .O(\pixel[0]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \pixel[12]_i_2 
       (.I0(\pixel[0]_i_7_n_0 ),
        .I1(pixel_reg[15]),
        .O(\pixel[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \pixel[12]_i_3 
       (.I0(\pixel[0]_i_7_n_0 ),
        .I1(pixel_reg[14]),
        .O(\pixel[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \pixel[12]_i_4 
       (.I0(\pixel[0]_i_7_n_0 ),
        .I1(pixel_reg[13]),
        .O(\pixel[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \pixel[12]_i_5 
       (.I0(\pixel[0]_i_7_n_0 ),
        .I1(pixel_reg[12]),
        .O(\pixel[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \pixel[4]_i_2 
       (.I0(\pixel[0]_i_7_n_0 ),
        .I1(pixel_reg[7]),
        .O(\pixel[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \pixel[4]_i_3 
       (.I0(\pixel[0]_i_7_n_0 ),
        .I1(pixel_reg[6]),
        .O(\pixel[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \pixel[4]_i_4 
       (.I0(\pixel[0]_i_7_n_0 ),
        .I1(pixel_reg[5]),
        .O(\pixel[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \pixel[4]_i_5 
       (.I0(\pixel[0]_i_7_n_0 ),
        .I1(pixel_reg[4]),
        .O(\pixel[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \pixel[8]_i_2 
       (.I0(\pixel[0]_i_7_n_0 ),
        .I1(pixel_reg[11]),
        .O(\pixel[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \pixel[8]_i_3 
       (.I0(\pixel[0]_i_7_n_0 ),
        .I1(pixel_reg[10]),
        .O(\pixel[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \pixel[8]_i_4 
       (.I0(\pixel[0]_i_7_n_0 ),
        .I1(pixel_reg[9]),
        .O(\pixel[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \pixel[8]_i_5 
       (.I0(\pixel[0]_i_7_n_0 ),
        .I1(pixel_reg[8]),
        .O(\pixel[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(px_ptr_i_1_n_0),
        .D(\pixel_reg[0]_i_1_n_7 ),
        .Q(pixel_reg[0]),
        .R(rd0));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \pixel_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\pixel_reg[0]_i_1_n_0 ,\NLW_pixel_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\pixel[0]_i_2_n_0 }),
        .O({\pixel_reg[0]_i_1_n_4 ,\pixel_reg[0]_i_1_n_5 ,\pixel_reg[0]_i_1_n_6 ,\pixel_reg[0]_i_1_n_7 }),
        .S({\pixel[0]_i_3_n_0 ,\pixel[0]_i_4_n_0 ,\pixel[0]_i_5_n_0 ,\pixel[0]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(px_ptr_i_1_n_0),
        .D(\pixel_reg[8]_i_1_n_5 ),
        .Q(pixel_reg[10]),
        .R(rd0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(px_ptr_i_1_n_0),
        .D(\pixel_reg[8]_i_1_n_4 ),
        .Q(pixel_reg[11]),
        .R(rd0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(px_ptr_i_1_n_0),
        .D(\pixel_reg[12]_i_1_n_7 ),
        .Q(pixel_reg[12]),
        .R(rd0));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \pixel_reg[12]_i_1 
       (.CI(\pixel_reg[8]_i_1_n_0 ),
        .CO(\NLW_pixel_reg[12]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pixel_reg[12]_i_1_n_4 ,\pixel_reg[12]_i_1_n_5 ,\pixel_reg[12]_i_1_n_6 ,\pixel_reg[12]_i_1_n_7 }),
        .S({\pixel[12]_i_2_n_0 ,\pixel[12]_i_3_n_0 ,\pixel[12]_i_4_n_0 ,\pixel[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(px_ptr_i_1_n_0),
        .D(\pixel_reg[12]_i_1_n_6 ),
        .Q(pixel_reg[13]),
        .R(rd0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(px_ptr_i_1_n_0),
        .D(\pixel_reg[12]_i_1_n_5 ),
        .Q(pixel_reg[14]),
        .R(rd0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(px_ptr_i_1_n_0),
        .D(\pixel_reg[12]_i_1_n_4 ),
        .Q(pixel_reg[15]),
        .R(rd0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(px_ptr_i_1_n_0),
        .D(\pixel_reg[0]_i_1_n_6 ),
        .Q(pixel_reg[1]),
        .R(rd0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(px_ptr_i_1_n_0),
        .D(\pixel_reg[0]_i_1_n_5 ),
        .Q(pixel_reg[2]),
        .R(rd0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(px_ptr_i_1_n_0),
        .D(\pixel_reg[0]_i_1_n_4 ),
        .Q(pixel_reg[3]),
        .R(rd0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(px_ptr_i_1_n_0),
        .D(\pixel_reg[4]_i_1_n_7 ),
        .Q(pixel_reg[4]),
        .R(rd0));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \pixel_reg[4]_i_1 
       (.CI(\pixel_reg[0]_i_1_n_0 ),
        .CO({\pixel_reg[4]_i_1_n_0 ,\NLW_pixel_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pixel_reg[4]_i_1_n_4 ,\pixel_reg[4]_i_1_n_5 ,\pixel_reg[4]_i_1_n_6 ,\pixel_reg[4]_i_1_n_7 }),
        .S({\pixel[4]_i_2_n_0 ,\pixel[4]_i_3_n_0 ,\pixel[4]_i_4_n_0 ,\pixel[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(px_ptr_i_1_n_0),
        .D(\pixel_reg[4]_i_1_n_6 ),
        .Q(pixel_reg[5]),
        .R(rd0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(px_ptr_i_1_n_0),
        .D(\pixel_reg[4]_i_1_n_5 ),
        .Q(pixel_reg[6]),
        .R(rd0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(px_ptr_i_1_n_0),
        .D(\pixel_reg[4]_i_1_n_4 ),
        .Q(pixel_reg[7]),
        .R(rd0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(px_ptr_i_1_n_0),
        .D(\pixel_reg[8]_i_1_n_7 ),
        .Q(pixel_reg[8]),
        .R(rd0));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \pixel_reg[8]_i_1 
       (.CI(\pixel_reg[4]_i_1_n_0 ),
        .CO({\pixel_reg[8]_i_1_n_0 ,\NLW_pixel_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pixel_reg[8]_i_1_n_4 ,\pixel_reg[8]_i_1_n_5 ,\pixel_reg[8]_i_1_n_6 ,\pixel_reg[8]_i_1_n_7 }),
        .S({\pixel[8]_i_2_n_0 ,\pixel[8]_i_3_n_0 ,\pixel[8]_i_4_n_0 ,\pixel[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(px_ptr_i_1_n_0),
        .D(\pixel_reg[8]_i_1_n_6 ),
        .Q(pixel_reg[9]),
        .R(rd0));
  LUT4 #(
    .INIT(16'h0200)) 
    px_ptr_i_1
       (.I0(state[2]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .O(px_ptr_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    px_ptr_i_2
       (.I0(px_ptr),
        .O(px_ptr_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    px_ptr_reg
       (.C(clk_IBUF_BUFG),
        .CE(px_ptr_i_1_n_0),
        .D(px_ptr_i_2_n_0),
        .Q(px_ptr),
        .R(rd0));
  LUT6 #(
    .INIT(64'h4444444444444440)) 
    \px_x[0]_i_1 
       (.I0(px_x[0]),
        .I1(state[2]),
        .I2(px_x[3]),
        .I3(px_x[2]),
        .I4(px_x[1]),
        .I5(\px_x[0]_i_2_n_0 ),
        .O(\px_x[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hDFFFFFFF)) 
    \px_x[0]_i_2 
       (.I0(px_x[8]),
        .I1(px_x[4]),
        .I2(px_x[7]),
        .I3(px_x[5]),
        .I4(px_x[6]),
        .O(\px_x[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \px_x[1]_i_1 
       (.I0(\px_x[8]_i_4_n_0 ),
        .I1(px_x[0]),
        .I2(px_x[1]),
        .O(\px_x[1]_i_1_n_0 ));
  (* \PinAttr:I3:HOLD_DETOUR  = "193" *) 
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \px_x[2]_i_1 
       (.I0(\px_x[8]_i_4_n_0 ),
        .I1(px_x[1]),
        .I2(px_x[0]),
        .I3(px_x[2]),
        .O(\px_x[2]_i_1_n_0 ));
  (* \PinAttr:I1:HOLD_DETOUR  = "193" *) 
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \px_x[3]_i_1 
       (.I0(\px_x[8]_i_4_n_0 ),
        .I1(px_x[2]),
        .I2(px_x[0]),
        .I3(px_x[1]),
        .I4(px_x[3]),
        .O(\px_x[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \px_x[4]_i_1 
       (.I0(\px_x[8]_i_4_n_0 ),
        .I1(px_x[3]),
        .I2(px_x[1]),
        .I3(px_x[0]),
        .I4(px_x[2]),
        .I5(px_x[4]),
        .O(\px_x[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \px_x[5]_i_1 
       (.I0(\px_x[8]_i_4_n_0 ),
        .I1(px_x[5]),
        .I2(\px_x[8]_i_3_n_0 ),
        .O(\px_x[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \px_x[6]_i_1 
       (.I0(\px_x[8]_i_3_n_0 ),
        .I1(px_x[5]),
        .I2(\px_x[8]_i_4_n_0 ),
        .I3(px_x[6]),
        .O(\px_x[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \px_x[7]_i_1 
       (.I0(px_x[5]),
        .I1(\px_x[8]_i_3_n_0 ),
        .I2(px_x[6]),
        .I3(\px_x[8]_i_4_n_0 ),
        .I4(px_x[7]),
        .O(\px_x[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00040003)) 
    \px_x[8]_i_1 
       (.I0(px_ptr),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state[3]),
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
        .O(\px_x[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \px_x[8]_i_3 
       (.I0(px_x[4]),
        .I1(px_x[3]),
        .I2(px_x[1]),
        .I3(px_x[0]),
        .I4(px_x[2]),
        .O(\px_x[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \px_x[8]_i_4 
       (.I0(px_x[1]),
        .I1(px_x[2]),
        .I2(px_x[3]),
        .I3(px_x[0]),
        .I4(\px_x[0]_i_2_n_0 ),
        .I5(state[2]),
        .O(\px_x[8]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \px_x_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\px_x[8]_i_1_n_0 ),
        .D(\px_x[0]_i_1_n_0 ),
        .Q(px_x[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \px_x_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\px_x[8]_i_1_n_0 ),
        .D(\px_x[1]_i_1_n_0 ),
        .Q(px_x[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \px_x_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\px_x[8]_i_1_n_0 ),
        .D(\px_x[2]_i_1_n_0 ),
        .Q(px_x[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \px_x_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\px_x[8]_i_1_n_0 ),
        .D(\px_x[3]_i_1_n_0 ),
        .Q(px_x[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \px_x_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\px_x[8]_i_1_n_0 ),
        .D(\px_x[4]_i_1_n_0 ),
        .Q(px_x[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \px_x_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\px_x[8]_i_1_n_0 ),
        .D(\px_x[5]_i_1_n_0 ),
        .Q(px_x[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \px_x_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\px_x[8]_i_1_n_0 ),
        .D(\px_x[6]_i_1_n_0 ),
        .Q(px_x[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \px_x_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\px_x[8]_i_1_n_0 ),
        .D(\px_x[7]_i_1_n_0 ),
        .Q(px_x[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \px_x_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\px_x[8]_i_1_n_0 ),
        .D(\px_x[8]_i_2_n_0 ),
        .Q(px_x[8]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h40)) 
    \px_y[0]_i_1 
       (.I0(px_y[0]),
        .I1(state[2]),
        .I2(\px_y[0]_i_2_n_0 ),
        .O(\px_y[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \px_y[0]_i_2 
       (.I0(px_y[5]),
        .I1(px_y[6]),
        .I2(px_y[7]),
        .I3(px_y[8]),
        .I4(\state[7]_i_11_n_0 ),
        .O(\px_y[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \px_y[1]_i_1 
       (.I0(\px_y[8]_i_4_n_0 ),
        .I1(px_y[0]),
        .I2(px_y[1]),
        .O(\px_y[1]_i_1_n_0 ));
  (* \PinAttr:I3:HOLD_DETOUR  = "194" *) 
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \px_y[2]_i_1 
       (.I0(\px_y[8]_i_4_n_0 ),
        .I1(px_y[1]),
        .I2(px_y[0]),
        .I3(px_y[2]),
        .O(\px_y[2]_i_1_n_0 ));
  (* \PinAttr:I1:HOLD_DETOUR  = "194" *) 
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \px_y[3]_i_1 
       (.I0(\px_y[8]_i_4_n_0 ),
        .I1(px_y[2]),
        .I2(px_y[0]),
        .I3(px_y[1]),
        .I4(px_y[3]),
        .O(\px_y[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \px_y[4]_i_1 
       (.I0(px_y[2]),
        .I1(px_y[0]),
        .I2(px_y[1]),
        .I3(px_y[3]),
        .I4(\px_y[8]_i_4_n_0 ),
        .I5(px_y[4]),
        .O(\px_y[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \px_y[5]_i_1 
       (.I0(\px_y[5]_i_2_n_0 ),
        .I1(\px_y[8]_i_4_n_0 ),
        .I2(px_y[5]),
        .O(\px_y[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \px_y[5]_i_2 
       (.I0(px_y[4]),
        .I1(px_y[3]),
        .I2(px_y[1]),
        .I3(px_y[0]),
        .I4(px_y[2]),
        .O(\px_y[5]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h84)) 
    \px_y[6]_i_1 
       (.I0(\px_y[8]_i_3_n_0 ),
        .I1(\px_y[8]_i_4_n_0 ),
        .I2(px_y[6]),
        .O(\px_y[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hB040)) 
    \px_y[7]_i_1 
       (.I0(\px_y[8]_i_3_n_0 ),
        .I1(px_y[6]),
        .I2(\px_y[8]_i_4_n_0 ),
        .I3(px_y[7]),
        .O(\px_y[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00040003)) 
    \px_y[8]_i_1 
       (.I0(\state[0]_i_4_n_0 ),
        .I1(state[2]),
        .I2(state[3]),
        .I3(state[1]),
        .I4(state[0]),
        .O(\px_y[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hDF002000)) 
    \px_y[8]_i_2 
       (.I0(px_y[6]),
        .I1(\px_y[8]_i_3_n_0 ),
        .I2(px_y[7]),
        .I3(\px_y[8]_i_4_n_0 ),
        .I4(px_y[8]),
        .O(\px_y[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \px_y[8]_i_3 
       (.I0(px_y[2]),
        .I1(px_y[0]),
        .I2(px_y[1]),
        .I3(px_y[3]),
        .I4(px_y[4]),
        .I5(px_y[5]),
        .O(\px_y[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \px_y[8]_i_4 
       (.I0(\state[7]_i_9_n_0 ),
        .I1(state[2]),
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
  LUT6 #(
    .INIT(64'hFEAEFEAEFEFEFEAE)) 
    \src_state[0]_i_1 
       (.I0(px_ptr_i_1_n_0),
        .I1(src_state),
        .I2(\data[7]_i_3_n_0 ),
        .I3(\src_state[0]_i_2_n_0 ),
        .I4(\src_state[0]_i_3_n_0 ),
        .I5(\data_ctr[7]_i_4_n_0 ),
        .O(\src_state[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \src_state[0]_i_2 
       (.I0(state[1]),
        .I1(state[2]),
        .O(\src_state[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \src_state[0]_i_3 
       (.I0(state[1]),
        .I1(cmd_ptr_reg_rep_n_13),
        .O(\src_state[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \src_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\src_state[0]_i_1_n_0 ),
        .Q(src_state),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 state1_carry
       (.CI(1'b0),
        .CO({state1_carry_n_0,NLW_state1_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_state1_carry_O_UNCONNECTED[3:0]),
        .S({state1_carry_i_1_n_0,state1_carry_i_2_n_0,state1_carry_i_3_n_0,state1_carry_i_4_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 state1_carry__0
       (.CI(state1_carry_n_0),
        .CO({state1_carry__0_n_0,NLW_state1_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_state1_carry__0_O_UNCONNECTED[3:0]),
        .S({state1_carry__0_i_1_n_0,state1_carry__0_i_2_n_0,state1_carry__0_i_3_n_0,state1_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    state1_carry__0_i_1
       (.I0(p_0_in[23]),
        .I1(wait_ctr[23]),
        .I2(p_0_in[22]),
        .I3(wait_ctr[22]),
        .I4(p_0_in[21]),
        .I5(wait_ctr[21]),
        .O(state1_carry__0_i_1_n_0));
  MUXF7 state1_carry__0_i_10
       (.I0(g0_b0__0_n_0),
        .I1(g1_b0__0_n_0),
        .O(p_0_in[17]),
        .S(state1_carry__1_i_2_n_0));
  MUXF7 state1_carry__0_i_11
       (.I0(g0_b3__0_n_0),
        .I1(g1_b3__0_n_0),
        .O(p_0_in[20]),
        .S(state1_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h82)) 
    state1_carry__0_i_2
       (.I0(state1_carry__0_i_8_n_0),
        .I1(p_0_in[18]),
        .I2(wait_ctr[18]),
        .O(state1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h1001)) 
    state1_carry__0_i_3
       (.I0(wait_ctr[15]),
        .I1(wait_ctr[16]),
        .I2(p_0_in[17]),
        .I3(wait_ctr[17]),
        .O(state1_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    state1_carry__0_i_4
       (.I0(wait_ctr[12]),
        .I1(wait_ctr[13]),
        .I2(wait_ctr[14]),
        .O(state1_carry__0_i_4_n_0));
  MUXF7 state1_carry__0_i_5
       (.I0(g0_b6__0_n_0),
        .I1(g1_b6__0_n_0),
        .O(p_0_in[23]),
        .S(state1_carry__1_i_2_n_0));
  MUXF7 state1_carry__0_i_6
       (.I0(g0_b5__0_n_0),
        .I1(g1_b5__0_n_0),
        .O(p_0_in[22]),
        .S(state1_carry__1_i_2_n_0));
  MUXF7 state1_carry__0_i_7
       (.I0(g0_b4__0_n_0),
        .I1(g1_b4__0_n_0),
        .O(p_0_in[21]),
        .S(state1_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'hE21D00000000E21D)) 
    state1_carry__0_i_8
       (.I0(g0_b2__0_n_0),
        .I1(state1_carry__1_i_2_n_0),
        .I2(g1_b2__0_n_0),
        .I3(wait_ctr[19]),
        .I4(p_0_in[20]),
        .I5(wait_ctr[20]),
        .O(state1_carry__0_i_8_n_0));
  MUXF7 state1_carry__0_i_9
       (.I0(g0_b1__0_n_0),
        .I1(g1_b1__0_n_0),
        .O(p_0_in[18]),
        .S(state1_carry__1_i_2_n_0));
  CARRY4 state1_carry__1
       (.CI(state1_carry__0_n_0),
        .CO({NLW_state1_carry__1_CO_UNCONNECTED[3:1],state1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_state1_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,state1_carry__1_i_1_n_0}));
  LUT5 #(
    .INIT(32'h0000B847)) 
    state1_carry__1_i_1
       (.I0(g1_b2__0_n_0),
        .I1(state1_carry__1_i_2_n_0),
        .I2(g0_b7__0_n_0),
        .I3(wait_ctr[24]),
        .I4(wait_ctr[25]),
        .O(state1_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    state1_carry__1_i_2
       (.I0(cmd_ptr[5]),
        .I1(state1_carry__1_i_3_n_0),
        .I2(cmd_ptr[6]),
        .O(state1_carry__1_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    state1_carry__1_i_3
       (.I0(cmd_ptr[3]),
        .I1(cmd_ptr[1]),
        .I2(cmd_ptr[0]),
        .I3(cmd_ptr[2]),
        .I4(cmd_ptr[4]),
        .O(state1_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    state1_carry_i_1
       (.I0(wait_ctr[9]),
        .I1(wait_ctr[10]),
        .I2(wait_ctr[11]),
        .O(state1_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    state1_carry_i_2
       (.I0(wait_ctr[8]),
        .I1(wait_ctr[7]),
        .I2(wait_ctr[6]),
        .O(state1_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    state1_carry_i_3
       (.I0(wait_ctr[5]),
        .I1(wait_ctr[4]),
        .I2(wait_ctr[3]),
        .O(state1_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    state1_carry_i_4
       (.I0(wait_ctr[0]),
        .I1(wait_ctr[1]),
        .I2(wait_ctr[2]),
        .O(state1_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \state[0]_i_1 
       (.I0(\state[0]_i_2_n_0 ),
        .I1(\state[0]_i_3_n_0 ),
        .I2(\state[0]_i_4_n_0 ),
        .I3(\state[0]_i_5_n_0 ),
        .I4(\state[0]_i_6_n_0 ),
        .I5(\state[0]_i_7_n_0 ),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000004000FF00)) 
    \state[0]_i_2 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(\state[7]_i_9_n_0 ),
        .I3(rst_IBUF),
        .I4(state[0]),
        .I5(state[3]),
        .O(\state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFFFFF00000000)) 
    \state[0]_i_3 
       (.I0(cmd_ptr_reg_rep_n_13),
        .I1(\state[1]_i_10_n_0 ),
        .I2(cmd_ptr_reg_rep_n_12),
        .I3(cmd_ptr_reg_rep_n_10),
        .I4(cmd_ptr_reg_rep_n_9),
        .I5(\state[1]_i_6_n_0 ),
        .O(\state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \state[0]_i_4 
       (.I0(px_x[1]),
        .I1(px_x[2]),
        .I2(px_x[3]),
        .I3(px_x[0]),
        .I4(\px_x[0]_i_2_n_0 ),
        .I5(px_ptr),
        .O(\state[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \state[0]_i_5 
       (.I0(state[1]),
        .I1(state[3]),
        .I2(state[2]),
        .O(\state[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \state[0]_i_6 
       (.I0(rst_IBUF),
        .I1(state[1]),
        .I2(state[3]),
        .I3(state[2]),
        .I4(\state[7]_i_7_n_0 ),
        .O(\state[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h404040404040FF40)) 
    \state[0]_i_7 
       (.I0(\state[7]_i_7_n_0 ),
        .I1(\state[2]_i_3_n_0 ),
        .I2(src_state),
        .I3(\state[7]_i_4_n_0 ),
        .I4(state[0]),
        .I5(state[3]),
        .O(\state[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAFFEAEA)) 
    \state[1]_i_1 
       (.I0(\state[1]_i_2_n_0 ),
        .I1(\state[1]_i_3_n_0 ),
        .I2(\state[1]_i_4_n_0 ),
        .I3(\state[1]_i_5_n_0 ),
        .I4(\state[1]_i_6_n_0 ),
        .I5(\state[1]_i_7_n_0 ),
        .O(\state[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \state[1]_i_10 
       (.I0(cmd_ptr_reg_rep_n_15),
        .I1(cmd_ptr_reg_rep_n_11),
        .I2(cmd_ptr_reg_rep_n_8),
        .I3(cmd_ptr_reg_rep_n_14),
        .O(\state[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF2F22)) 
    \state[1]_i_2 
       (.I0(\state[7]_i_8_n_0 ),
        .I1(\state[7]_i_9_n_0 ),
        .I2(state[2]),
        .I3(\state[1]_i_8_n_0 ),
        .I4(rd0),
        .I5(\state[1]_i_9_n_0 ),
        .O(\state[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \state[1]_i_3 
       (.I0(state[0]),
        .I1(state[3]),
        .O(\state[1]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \state[1]_i_4 
       (.I0(state1_carry__1_n_3),
        .I1(state[2]),
        .O(\state[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFF7FFFFF)) 
    \state[1]_i_5 
       (.I0(cmd_ptr_reg_rep_n_9),
        .I1(cmd_ptr_reg_rep_n_10),
        .I2(cmd_ptr_reg_rep_n_12),
        .I3(\state[1]_i_10_n_0 ),
        .I4(cmd_ptr_reg_rep_n_13),
        .O(\state[1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \state[1]_i_6 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[2]),
        .O(\state[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAE00000000)) 
    \state[1]_i_7 
       (.I0(\state[7]_i_8_n_0 ),
        .I1(\state[7]_i_7_n_0 ),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[1]),
        .I5(rst_IBUF),
        .O(\state[1]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \state[1]_i_8 
       (.I0(state[3]),
        .I1(state[0]),
        .I2(rst_IBUF),
        .O(\state[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000880F)) 
    \state[1]_i_9 
       (.I0(wr_i_3_n_0),
        .I1(rst_IBUF),
        .I2(\cmd_ptr[6]_i_4_n_0 ),
        .I3(state[1]),
        .I4(state[3]),
        .I5(state[0]),
        .O(\state[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFAAABAAA)) 
    \state[2]_i_1 
       (.I0(\state[2]_i_2_n_0 ),
        .I1(\state[7]_i_7_n_0 ),
        .I2(state[0]),
        .I3(\state[2]_i_3_n_0 ),
        .I4(rst_IBUF),
        .I5(\state[2]_i_4_n_0 ),
        .O(\state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \state[2]_i_2 
       (.I0(\state[0]_i_4_n_0 ),
        .I1(state[2]),
        .I2(state[3]),
        .I3(state[1]),
        .I4(state[0]),
        .I5(\state[7]_i_9_n_0 ),
        .O(\state[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \state[2]_i_3 
       (.I0(state[1]),
        .I1(state[3]),
        .I2(state[2]),
        .O(\state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0011000F00000000)) 
    \state[2]_i_4 
       (.I0(\state[0]_i_4_n_0 ),
        .I1(state[1]),
        .I2(\state[7]_i_4_n_0 ),
        .I3(state[3]),
        .I4(state[0]),
        .I5(rst_IBUF),
        .O(\state[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFBFBFBFFFB)) 
    \state[7]_i_1 
       (.I0(state[3]),
        .I1(rst_IBUF),
        .I2(\state[7]_i_3_n_0 ),
        .I3(\state[7]_i_4_n_0 ),
        .I4(state[0]),
        .I5(state[1]),
        .O(\state[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \state[7]_i_10 
       (.I0(wr_i_11_n_0),
        .I1(wr_i_10_n_0),
        .I2(wr_i_9_n_0),
        .I3(wr_i_8_n_0),
        .I4(wr_i_7_n_0),
        .O(\state[7]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[7]_i_11 
       (.I0(px_y[4]),
        .I1(px_y[3]),
        .I2(px_y[2]),
        .I3(px_y[1]),
        .O(\state[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \state[7]_i_2 
       (.I0(\state[7]_i_5_n_0 ),
        .I1(\state[7]_i_6_n_0 ),
        .I2(\state[7]_i_7_n_0 ),
        .I3(\state[7]_i_8_n_0 ),
        .I4(\state[7]_i_9_n_0 ),
        .I5(rst_IBUF),
        .O(\state[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBB000F00)) 
    \state[7]_i_3 
       (.I0(\state[0]_i_4_n_0 ),
        .I1(\state[7]_i_9_n_0 ),
        .I2(\state[7]_i_7_n_0 ),
        .I3(state[0]),
        .I4(state[2]),
        .O(\state[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h5FDD)) 
    \state[7]_i_4 
       (.I0(state[1]),
        .I1(state1_carry__1_n_3),
        .I2(wr_i_3_n_0),
        .I3(state[2]),
        .O(\state[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \state[7]_i_5 
       (.I0(rst_IBUF),
        .I1(state[0]),
        .I2(state[3]),
        .I3(\state[7]_i_4_n_0 ),
        .O(\state[7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \state[7]_i_6 
       (.I0(rst_IBUF),
        .I1(state[1]),
        .I2(state[3]),
        .I3(state[2]),
        .I4(state[0]),
        .O(\state[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFBF)) 
    \state[7]_i_7 
       (.I0(wait_ctr[0]),
        .I1(wait_ctr[1]),
        .I2(wait_ctr[2]),
        .I3(\state[7]_i_10_n_0 ),
        .O(\state[7]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00000200)) 
    \state[7]_i_8 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[3]),
        .I3(state[2]),
        .I4(\state[0]_i_4_n_0 ),
        .O(\state[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFBFF)) 
    \state[7]_i_9 
       (.I0(\state[7]_i_11_n_0 ),
        .I1(px_y[8]),
        .I2(px_y[7]),
        .I3(px_y[6]),
        .I4(px_y[5]),
        .I5(px_y[0]),
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
  LUT4 #(
    .INIT(16'hAFE0)) 
    \wait_ctr[0]_i_1 
       (.I0(\wait_ctr[0]_i_2_n_0 ),
        .I1(\wait_ctr[25]_i_4_n_0 ),
        .I2(\wait_ctr[25]_i_2_n_0 ),
        .I3(wait_ctr[0]),
        .O(\wait_ctr[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00001000)) 
    \wait_ctr[0]_i_2 
       (.I0(\state[7]_i_9_n_0 ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\state[0]_i_4_n_0 ),
        .O(\wait_ctr[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0001050505050004)) 
    \wait_ctr[25]_i_1 
       (.I0(state[3]),
        .I1(state[0]),
        .I2(\wait_ctr[25]_i_4_n_0 ),
        .I3(wait_ctr[0]),
        .I4(state[2]),
        .I5(state[1]),
        .O(\wait_ctr[25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h007E)) 
    \wait_ctr[25]_i_2 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[3]),
        .O(\wait_ctr[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCDDDDCCCCCFFF)) 
    \wait_ctr[25]_i_4 
       (.I0(state[0]),
        .I1(wr_i_4_n_0),
        .I2(wait_ctr[2]),
        .I3(wait_ctr[1]),
        .I4(state[2]),
        .I5(state[1]),
        .O(\wait_ctr[25]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_ctr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\wait_ctr[0]_i_1_n_0 ),
        .Q(wait_ctr[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_ctr_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\wait_ctr[25]_i_2_n_0 ),
        .D(\wait_ctr_reg[12]_i_1_n_6 ),
        .Q(wait_ctr[10]),
        .R(\wait_ctr[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_ctr_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\wait_ctr[25]_i_2_n_0 ),
        .D(\wait_ctr_reg[12]_i_1_n_5 ),
        .Q(wait_ctr[11]),
        .R(\wait_ctr[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_ctr_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\wait_ctr[25]_i_2_n_0 ),
        .D(\wait_ctr_reg[12]_i_1_n_4 ),
        .Q(wait_ctr[12]),
        .R(\wait_ctr[25]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \wait_ctr_reg[12]_i_1 
       (.CI(\wait_ctr_reg[8]_i_1_n_0 ),
        .CO({\wait_ctr_reg[12]_i_1_n_0 ,\NLW_wait_ctr_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_ctr_reg[12]_i_1_n_4 ,\wait_ctr_reg[12]_i_1_n_5 ,\wait_ctr_reg[12]_i_1_n_6 ,\wait_ctr_reg[12]_i_1_n_7 }),
        .S(wait_ctr[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_ctr_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\wait_ctr[25]_i_2_n_0 ),
        .D(\wait_ctr_reg[16]_i_1_n_7 ),
        .Q(wait_ctr[13]),
        .R(\wait_ctr[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_ctr_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\wait_ctr[25]_i_2_n_0 ),
        .D(\wait_ctr_reg[16]_i_1_n_6 ),
        .Q(wait_ctr[14]),
        .R(\wait_ctr[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_ctr_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\wait_ctr[25]_i_2_n_0 ),
        .D(\wait_ctr_reg[16]_i_1_n_5 ),
        .Q(wait_ctr[15]),
        .R(\wait_ctr[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_ctr_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\wait_ctr[25]_i_2_n_0 ),
        .D(\wait_ctr_reg[16]_i_1_n_4 ),
        .Q(wait_ctr[16]),
        .R(\wait_ctr[25]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \wait_ctr_reg[16]_i_1 
       (.CI(\wait_ctr_reg[12]_i_1_n_0 ),
        .CO({\wait_ctr_reg[16]_i_1_n_0 ,\NLW_wait_ctr_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_ctr_reg[16]_i_1_n_4 ,\wait_ctr_reg[16]_i_1_n_5 ,\wait_ctr_reg[16]_i_1_n_6 ,\wait_ctr_reg[16]_i_1_n_7 }),
        .S(wait_ctr[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_ctr_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\wait_ctr[25]_i_2_n_0 ),
        .D(\wait_ctr_reg[20]_i_1_n_7 ),
        .Q(wait_ctr[17]),
        .R(\wait_ctr[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_ctr_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\wait_ctr[25]_i_2_n_0 ),
        .D(\wait_ctr_reg[20]_i_1_n_6 ),
        .Q(wait_ctr[18]),
        .R(\wait_ctr[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_ctr_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\wait_ctr[25]_i_2_n_0 ),
        .D(\wait_ctr_reg[20]_i_1_n_5 ),
        .Q(wait_ctr[19]),
        .R(\wait_ctr[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_ctr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\wait_ctr[25]_i_2_n_0 ),
        .D(\wait_ctr_reg[4]_i_1_n_7 ),
        .Q(wait_ctr[1]),
        .R(\wait_ctr[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_ctr_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\wait_ctr[25]_i_2_n_0 ),
        .D(\wait_ctr_reg[20]_i_1_n_4 ),
        .Q(wait_ctr[20]),
        .R(\wait_ctr[25]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \wait_ctr_reg[20]_i_1 
       (.CI(\wait_ctr_reg[16]_i_1_n_0 ),
        .CO({\wait_ctr_reg[20]_i_1_n_0 ,\NLW_wait_ctr_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_ctr_reg[20]_i_1_n_4 ,\wait_ctr_reg[20]_i_1_n_5 ,\wait_ctr_reg[20]_i_1_n_6 ,\wait_ctr_reg[20]_i_1_n_7 }),
        .S(wait_ctr[20:17]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_ctr_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\wait_ctr[25]_i_2_n_0 ),
        .D(\wait_ctr_reg[24]_i_1_n_7 ),
        .Q(wait_ctr[21]),
        .R(\wait_ctr[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_ctr_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\wait_ctr[25]_i_2_n_0 ),
        .D(\wait_ctr_reg[24]_i_1_n_6 ),
        .Q(wait_ctr[22]),
        .R(\wait_ctr[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_ctr_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\wait_ctr[25]_i_2_n_0 ),
        .D(\wait_ctr_reg[24]_i_1_n_5 ),
        .Q(wait_ctr[23]),
        .R(\wait_ctr[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_ctr_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\wait_ctr[25]_i_2_n_0 ),
        .D(\wait_ctr_reg[24]_i_1_n_4 ),
        .Q(wait_ctr[24]),
        .R(\wait_ctr[25]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \wait_ctr_reg[24]_i_1 
       (.CI(\wait_ctr_reg[20]_i_1_n_0 ),
        .CO({\wait_ctr_reg[24]_i_1_n_0 ,\NLW_wait_ctr_reg[24]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_ctr_reg[24]_i_1_n_4 ,\wait_ctr_reg[24]_i_1_n_5 ,\wait_ctr_reg[24]_i_1_n_6 ,\wait_ctr_reg[24]_i_1_n_7 }),
        .S(wait_ctr[24:21]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_ctr_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\wait_ctr[25]_i_2_n_0 ),
        .D(\wait_ctr_reg[25]_i_3_n_7 ),
        .Q(wait_ctr[25]),
        .R(\wait_ctr[25]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \wait_ctr_reg[25]_i_3 
       (.CI(\wait_ctr_reg[24]_i_1_n_0 ),
        .CO(\NLW_wait_ctr_reg[25]_i_3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_wait_ctr_reg[25]_i_3_O_UNCONNECTED [3:1],\wait_ctr_reg[25]_i_3_n_7 }),
        .S({1'b0,1'b0,1'b0,wait_ctr[25]}));
  FDRE #(
    .INIT(1'b0)) 
    \wait_ctr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\wait_ctr[25]_i_2_n_0 ),
        .D(\wait_ctr_reg[4]_i_1_n_6 ),
        .Q(wait_ctr[2]),
        .R(\wait_ctr[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_ctr_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\wait_ctr[25]_i_2_n_0 ),
        .D(\wait_ctr_reg[4]_i_1_n_5 ),
        .Q(wait_ctr[3]),
        .R(\wait_ctr[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_ctr_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\wait_ctr[25]_i_2_n_0 ),
        .D(\wait_ctr_reg[4]_i_1_n_4 ),
        .Q(wait_ctr[4]),
        .R(\wait_ctr[25]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \wait_ctr_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\wait_ctr_reg[4]_i_1_n_0 ,\NLW_wait_ctr_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(wait_ctr[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_ctr_reg[4]_i_1_n_4 ,\wait_ctr_reg[4]_i_1_n_5 ,\wait_ctr_reg[4]_i_1_n_6 ,\wait_ctr_reg[4]_i_1_n_7 }),
        .S(wait_ctr[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_ctr_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\wait_ctr[25]_i_2_n_0 ),
        .D(\wait_ctr_reg[8]_i_1_n_7 ),
        .Q(wait_ctr[5]),
        .R(\wait_ctr[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_ctr_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\wait_ctr[25]_i_2_n_0 ),
        .D(\wait_ctr_reg[8]_i_1_n_6 ),
        .Q(wait_ctr[6]),
        .R(\wait_ctr[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_ctr_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\wait_ctr[25]_i_2_n_0 ),
        .D(\wait_ctr_reg[8]_i_1_n_5 ),
        .Q(wait_ctr[7]),
        .R(\wait_ctr[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_ctr_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\wait_ctr[25]_i_2_n_0 ),
        .D(\wait_ctr_reg[8]_i_1_n_4 ),
        .Q(wait_ctr[8]),
        .R(\wait_ctr[25]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \wait_ctr_reg[8]_i_1 
       (.CI(\wait_ctr_reg[4]_i_1_n_0 ),
        .CO({\wait_ctr_reg[8]_i_1_n_0 ,\NLW_wait_ctr_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_ctr_reg[8]_i_1_n_4 ,\wait_ctr_reg[8]_i_1_n_5 ,\wait_ctr_reg[8]_i_1_n_6 ,\wait_ctr_reg[8]_i_1_n_7 }),
        .S(wait_ctr[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_ctr_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\wait_ctr[25]_i_2_n_0 ),
        .D(\wait_ctr_reg[12]_i_1_n_7 ),
        .Q(wait_ctr[9]),
        .R(\wait_ctr[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h050D0F05)) 
    wr_i_1
       (.I0(state[1]),
        .I1(wr_i_3_n_0),
        .I2(state[3]),
        .I3(state[0]),
        .I4(state[2]),
        .O(wr_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    wr_i_10
       (.I0(wait_ctr[19]),
        .I1(wait_ctr[18]),
        .I2(wait_ctr[25]),
        .I3(wait_ctr[24]),
        .O(wr_i_10_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    wr_i_11
       (.I0(wait_ctr[21]),
        .I1(wait_ctr[20]),
        .I2(wait_ctr[15]),
        .I3(wait_ctr[16]),
        .I4(wait_ctr[17]),
        .O(wr_i_11_n_0));
  LUT6 #(
    .INIT(64'hFF00FF00FFFFFFD5)) 
    wr_i_2
       (.I0(state[0]),
        .I1(wait_ctr[1]),
        .I2(wait_ctr[0]),
        .I3(wr_i_4_n_0),
        .I4(wait_ctr[2]),
        .I5(wr_i_5_n_0),
        .O(wr_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    wr_i_3
       (.I0(wr_i_6_n_0),
        .I1(wr_i_7_n_0),
        .I2(wr_i_8_n_0),
        .I3(wr_i_9_n_0),
        .I4(wr_i_10_n_0),
        .I5(wr_i_11_n_0),
        .O(wr_i_3_n_0));
  LUT3 #(
    .INIT(8'h82)) 
    wr_i_4
       (.I0(\state[7]_i_10_n_0 ),
        .I1(state[2]),
        .I2(state[1]),
        .O(wr_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    wr_i_5
       (.I0(state[1]),
        .I1(state[2]),
        .O(wr_i_5_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    wr_i_6
       (.I0(wait_ctr[2]),
        .I1(wait_ctr[1]),
        .I2(wait_ctr[0]),
        .O(wr_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    wr_i_7
       (.I0(wait_ctr[3]),
        .I1(wait_ctr[8]),
        .I2(wait_ctr[5]),
        .I3(wait_ctr[4]),
        .O(wr_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    wr_i_8
       (.I0(wait_ctr[9]),
        .I1(wait_ctr[10]),
        .I2(wait_ctr[11]),
        .I3(wait_ctr[12]),
        .I4(wait_ctr[13]),
        .I5(wait_ctr[14]),
        .O(wr_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    wr_i_9
       (.I0(wait_ctr[23]),
        .I1(wait_ctr[22]),
        .I2(wait_ctr[7]),
        .I3(wait_ctr[6]),
        .O(wr_i_9_n_0));
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
