`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/02/2023 12:30:30 PM
// Design Name: 
// Module Name: HX8357_TB
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module HX8357_TB();

  logic clk100 = 0;
  logic rst = 0;
  
//  logic data [7:0];
//  logic wr;
//  logic rd;
//  logic dc;
//  logic cs;

  always
    #5 clk100 <= ~clk100;
  
//  clocking ck @ (posedge clk100);
//    input data, wr;
//  endclocking
    
    
  HX8357 dut(
    // GENERAL SIGNALS
    .clk(clk100),
    .rst(rst),
    .led()
    
//      // LCD SIGNALS
//    .data(data), // data to the LCD
//    .wr(wr), // write clock (rising edge) 
//    .rd(rd), // read clock (rising edge)
//    .dc(dc), // indicates data being clocked
//    .cs(cs)  // chip select indicates read or write
  );
  
//  task monitor(input )
  
  initial begin
    @(posedge clk100);
    rst <= 1'b0;
    #100;
    @(posedge clk100);
    rst <= 1'b1;
  end


endmodule
