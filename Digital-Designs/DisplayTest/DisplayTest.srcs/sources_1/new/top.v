`timescale 1ns / 1ps
`include "displaySpecs.vh"
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

//`define SYNC_DE
`define SYNC
//`define DE


//TESTS (OLD PANEL 4DLCD)
//negedge DE (no)
//posedge DE (no)
//negedge SYNC (no)
//posedge SYNC (no) <- most likely to work?
//negedge SYNC_DE (no)
//posedge SYNC_DE (no)


//TESTS (NEW PANEL 4DLCD)
//negedge DE (doesn't work)
//posedge DE (doesn't work)
//negedge SYNC (took a while to startup but works equally as well as SYNC_DE)
//posedge SYNC (works but flickers, unclear as to why)
//negedge SYNC_DE (works but has alignment issues) (attempting only blocking DE based on HSYNC) (without DE vertical bounds it has lots of problems)
//posedge SYNC_DE (kinda works but has some extreme ghosting issues, (tested with no vertical DE bounds))

//NOTES
//POSEDGE SYNC
//flickers but pixels are putting out the correct value vertically, unclear about horizontal

//POSEDGE SYNC_DE
//weird ghosting and flickers ever 30s or so (ghosting as in very dim colours coming through)
//adding in constant DE doesn't resolve the issue

//MOVING BACK TO POSEDGE SYNC
//running with no block on when pixels can be written makes things worse
//drawing pixels only within bounds with horizontal indicators 


//NEW NEW NEW display not the 4DLCD one
//this one runs with sync posedge but flickers in and out of running
//SYNC-DE 


module top(
//    output wire [7:0]red,
//    output wire [7:0]blue,
//    output wire [7:0]green,
    output wire red,
    output wire blue,
    output wire green,
    
    output wire pxClk, //output 9mhz
    output reg disp,
    output wire HSync,
    output wire VSync,
    output wire DE,
    
    //input 100mhz
    input wire clk
    );
    
    wire clkLock;
    wire writeControl;
    reg [8:0]vPix = 0;
    reg [9:0]hPix = 0;
    wire clk100;
    reg [2:0]frameCTR = 0;
    
    clk_wiz_0 clk_wiz(    
        .clk_in100(clk),
        .clk100(clk100),
        .clk9(pxClk),
        .locked(clkLock)
    );
    
    `ifdef DE
        assign HSync = 0;
        assign VSync = 0;
    `else
        assign HSync = ~(hPix < `HSYNC_W) & disp;
        assign VSync = ~(vPix < `VSYNC_W) & disp;
    `endif
    
    //DE is high when drawing pixels
    
    `ifdef SYNC
        assign DE = 0; //(hPix >= `H_PX_START & hPix <= `H_FP_START & vPix >= `V_PX_START & vPix <= `V_FP_START);
        assign writeControl = (hPix >= `H_PX_START & hPix < `H_FP_START & vPix >= `V_PX_START & vPix < `V_FP_START) & disp;
    `else
        assign DE = (hPix >= `H_PX_START & hPix < `H_FP_START & vPix >= `V_PX_START & vPix < `V_FP_START);
        assign writeControl = (DE);
    `endif
    
//    assign red = {8{writeControl & hPix[0]}};
//    assign green =  {8{writeControl & vPix[1]}};
//    assign blue = {8{writeControl & ~hPix[0]}};
    assign red = writeControl & vPix[0];//frameCTR[2];
    assign green = writeControl & 1'b1;//frameCTR[1];// hPix[0]; //writeControl & vPix[1];
    assign blue = writeControl & ~vPix[0];//frameCTR[0];
    //assign blue = 8'h00;
    
    initial disp = 0;
    
            
    always @(posedge pxClk) begin
        disp <= disp | (~VSync & frameCTR[2]); //default high for the display to operate in normal mode
    
        if(hPix == (`H_FP_END-1) & vPix == (`V_FP_END-1)) begin
            hPix <= 0;
            vPix <= 0;
            frameCTR <= frameCTR + 1;
        end 
        else if(hPix == (`H_FP_END-1)) begin
            hPix <= 0;
            vPix <= vPix + 1;
        end
        else begin
            hPix <= hPix + 1;   
        end
    end
    
    
    
    
    
endmodule
