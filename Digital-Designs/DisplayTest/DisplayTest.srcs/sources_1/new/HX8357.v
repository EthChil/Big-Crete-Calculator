`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/02/2023 12:10:54 PM
// Design Name: 
// Module Name: HX8357
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

module HX8357(
  // GENERAL SIGNALS
  input wire clk,
  input wire rst,
  
  output wire [7:0] led,
    
  // LCD SIGNALS
  output wire [7:0] data, // data to the LCD
  output wire wr, // write clock (rising edge)
  output wire rd, // read clock (rising edge)
  output wire dc, // indicates data being clocked
  output wire cs  // chip select indicates read or write
  
);

top_gram lcd (
  .state(led),
  .clk(clk),
  .rst(rst),
  
  .data(data),
  .rd(rd),
  .wr(wr),
  .dc(dc),
  .cs(cs)
);


endmodule
