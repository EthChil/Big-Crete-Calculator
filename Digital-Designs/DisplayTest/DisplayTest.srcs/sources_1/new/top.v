`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/04/2022 10:25:35 PM
// Design Name: 
// Module Name: top
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


module top(
  // GENERAL SIGNALS
  input wire clk,
  input wire rst,
  
  // DEBUG LED
  output wire [7:0] led,
    
  // LCD SIGNALS
  output wire [7:0] data, // data to the LCD
  output wire wr, // write clock (rising edge)
  output wire rd, // read clock (rising edge)
  output wire dc, // indicates data being clocked
  output wire cs,  // chip select indicates read or write
  
  // KEYSWITCHES
  output reg [5:0] key_hs,
  input wire [4:0] key_ls,
  
  // RGB KEY LEDs
  output wire [4:0] blue_ls,
  output wire [4:0] green_ls,
  output wire [4:0] red_ls,
  
  output wire [2:0] rgb_hs,
  
  output wire LED_EN, 
  
  // MISC
  input wire battery_PG
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

// LEDS    
//assign LED_EN = 1'b1;
//assign rgb_hs = 3'b000;

//assign blue_ls = 4'b0000;
//assign green_ls = 4'b0000;
//assign red_ls = 4'b0000;

//// SWITCHES
//assign key_hs = 5'b00000;
//  input wire [4:0] key_ls,

// key makes it light up
assign blue_ls = key_ls;
assign green_ls = key_ls;
assign red_ls = key_ls;

initial begin
    key_hs <= 6'b000000;
end

always @(posedge clk) begin
    if(rst) begin
        key_hs <= 6'b000000;
    end else if(key_hs == 0) begin
        key_hs <= 6'b000001;
    end else begin
        key_hs <= key_hs << 1;
    end

end

assign bit_one_sum = key_hs[0] ^ key_hs[1];
assign bit_one_carry = key_hs[0] & key_hs[1];

assign bit_two_sum = (key_hs[2] ^ key_hs[3]) ^ bit_one_carry;
assign bit_two_carry = ((key_hs[2] ^ key_hs[3]) & bit_one_carry) | (key_hs[2] & key_hs[3]);

assign bit_three_sum = (key_hs[4] ^ key_hs[5]) ^ bit_two_carry;
assign bit_three_carry = ((key_hs[4] ^ key_hs[5]) & bit_two_carry) | (key_hs[4] & key_hs[5]);

assign rgb_hs = {bit_three_sum, bit_two_sum, bit_one_sum};




endmodule
