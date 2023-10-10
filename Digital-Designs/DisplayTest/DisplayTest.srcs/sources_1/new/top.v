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
  output reg [4:0] blue_ls,
  output reg [4:0] green_ls,
  output reg [4:0] red_ls,
  
  output reg [2:0] rgb_hs,
  
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
//assign blue_ls = key_ls;
//assign green_ls = key_ls;
//assign red_ls = key_ls;

//reg [24:0] counter;
//reg [14:0] counter2;
//reg toggle;

//wire one_hot;

//assign one_hot = (key_ls[0] + key_ls[1] + key_ls[2] + key_ls[3] + key_ls[4]) <= 1;

//assign red_ls = toggle ? 5'd1 : 5'd0;

//assign rgb_hs = 3'd0;


//always @(posedge clk) begin
//    if(~rst) begin
//        key_hs <= 6'b000000;
//        counter2 <= 15'd0;
//    end else if(key_hs == 6'd0) begin
//        key_hs <= 6'b000001;
//    end else begin
//        counter2 <= counter2 + 1;
//        if(& counter2) begin
//            key_hs <= key_hs << 1;
//        end
//    end
//end

//always @(posedge clk) begin
//    if(~rst) begin
//        red_ls <= 5'd0;
//        green_ls <= 5'd0;
//        blue_ls <= 5'd0;
//        counter <= 25'd0;
//        toggle <= 1'b0;
//    end else begin
//        counter <= counter + 1;
//        if(& counter) toggle <= ~toggle;
        
//        // green
//        if(key_ls > 5'd0 && one_hot) green_ls <= key_ls;
//        else green_ls <= 5'd0;
        
//        // red
//        if(key_hs == 6'b000001) red_ls[0] <= toggle;
//        else red_ls[0] <= 5'd0;
        
//        case (key_hs)
//            6'b000001: rgb_hs <= 3'd0;
//            6'b000010: rgb_hs <= 3'd1;
//            6'b000100: rgb_hs <= 3'd2;
//            6'b001000: rgb_hs <= 3'd3;
//            6'b010000: rgb_hs <= 3'd4;
//            6'b100000: rgb_hs <= 3'd5;
//            default: rgb_hs <= 3'd0;
//        endcase 
//    end
//end


reg [4:0] switch_state [5:0];

always @(posedge clk) begin
    if(~rst) begin
        switch_state <= {6{5'd0}};
        key_hs <= 6'd0;
    end else begin
        case (key_hs)
            6'b000001: begin 
                key_hs <= 6'b000010;
                switch_state[0] <= key_ls;
            end
            6'b000010: begin
                key_hs <= 6'b000100;
                switch_state[0] <= key_ls;
            end
            6'b000100: begin
                key_hs <= 6'b001000;
                switch_state[0] <= key_ls;
            end
            6'b001000: begin
                key_hs <= 6'b010000;
                switch_state[0] <= key_ls;
            end
            6'b010000: begin
                key_hs <= 6'b100000;
                switch_state[0] <= key_ls;
            end
            6'b100000: begin
                key_hs <= 6'b000001;
                switch_state[0] <= key_ls;
            end
            default: key_hs <= 6'b000001;
        endcase
    end
end


reg [4:0] red [5:0];
reg [4:0] green [5:0];
reg [4:0] blue [5:0]; // note blue isn't hooked up

reg [2:0] px_x;

always @(posedge clk) begin
    if(~rst) begin
        red_ls <= 5'd0;
        green_ls <= 5'd0;
        blue_ls <= 5'd0;
        rgb_hs <= 3'd0;
    end else begin
        if(rgb_hs == 3'd5 && px_x == 3'd4) rgb_hs <= 3'd0;
        else if(px_x == 3'd4) rgb_hs <= rgb_hs + 1;
        else px_x <= px_x + 1;
        
        red_ls <= (1'b1 << px_x) & red[px_x];
        green_ls <= (1'b1 << px_x) & green[px_x];
        blue_ls <= (1'b1 << px_x) & blue[px_x];
    end
end


always @(posedge clk) begin
    if(~rst) begin
        green <= {5'd0, 5'd0, 5'd0, 5'd0, 5'd0, 5'd0};
        red <= {6{5'd0}};
        blue <= {6{5'd0}};
    end else begin
        green <= switch_state;
    end
end


//always @(posedge clk) begin
//    if(rst) begin
//        red_ls <= 5'd0;
//        green_ls <= 5'd0;
//        blue_ls <= 5'd0;
//    end else begin


    
//end

//assign bit_one_sum = key_hs[0] ^ key_hs[1];
//assign bit_one_carry = key_hs[0] & key_hs[1];

//assign bit_two_sum = (key_hs[2] ^ key_hs[3]) ^ bit_one_carry;
//assign bit_two_carry = ((key_hs[2] ^ key_hs[3]) & bit_one_carry) | (key_hs[2] & key_hs[3]);

//assign bit_three_sum = (key_hs[4] ^ key_hs[5]) ^ bit_two_carry;
//assign bit_three_carry = ((key_hs[4] ^ key_hs[5]) & bit_two_carry) | (key_hs[4] & key_hs[5]);

//assign rgb_hs = {bit_three_sum, bit_two_sum, bit_one_sum};




endmodule
