`timescale 1ns / 1ps
`include "displaySpecs.vh"

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/06/2022 01:01:35 AM
// Design Name: 
// Module Name: topTB
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


module topTB();
    
//    wire [7:0]red;
//    wire [7:0]blue;
//    wire [7:0]green;
    wire red;
    wire blue;
    wire green;
    
    wire pxClk;
    wire disp;
    wire HSync;
    wire VSync;
    wire DE;
    
    reg clk100 = 0;
    
    always
        #5 clk100 <= ~clk100;
    
    top DUT(
        .red(red),
        .blue(blue),
        .green(green),
    
        .pxClk(pxClk), //output 9mhz
        .disp(disp),
        .HSync(HSync),
        .VSync(VSync),
        .DE(DE),
        
        //input 100mhz
        .clk(clk100)
    );
    
    int consecHSYNC = 0;
    int latch = 0;
    
    int Hstage = 0;
    int H_length = 1;
    int H_pulseWidth = 0;
    int H_displayPeriod = 0;
    int H_backPorch = 0;
    int H_frontPorch = 1;
    
    int Vstage = 0;
    int V_length = 1;
    int V_pulseWidth = 0;
    int V_displayPeriod = 0;
    int V_backPorch = 0;
    int V_frontPorch = 1;
    
    
    always @(negedge pxClk) begin
        #1;
        
        //HORIZONTAL
        if(~HSync) begin //HSYNC width
            H_pulseWidth++;
            
            if(latch == 0) begin
                if(consecHSYNC == 1) begin
                    Vstage = 0; //entered vertical front porch
                    
                    
                end
                latch = 1;
                consecHSYNC++;
            end 
            
            Hstage = 1;
        end
        
        if(HSync) begin
            latch = 0;
        end
        
        if(~DE & Hstage == 1) begin //back porch
            H_backPorch++;
        end
        
        if(~DE & Hstage == 0) begin //front porch
            H_frontPorch++;
        end
        
        if(DE) begin
            consecHSYNC = 0;
            H_displayPeriod++;
            Hstage = 2;
            Vstage = 3; //in vertical display zone
        end
        
        if((~DE & Hstage == 2)) begin
            H_pulseWidth = 0;
            Hstage = 0;
            H_displayPeriod = 0;
            H_frontPorch = 1;
            H_backPorch = 0;
            H_length = 1;
            
            //VERTICAL
            if(~VSync) begin //HSYNC width
                V_pulseWidth++;
                Vstage = 1;
            end
            
            if(Vstage == 2) begin //back porch
                V_backPorch++;
            end
            
            if(Vstage == 1) begin //front porch
                V_frontPorch++;
            end
            
            if(Vstage == 3) begin
                V_displayPeriod++;
            end
            
            if(Vstage == 0) begin
                V_pulseWidth = 0;
                Vstage = 1;
                V_displayPeriod = 0;
                V_frontPorch = 1;
                V_backPorch = 0;
                V_length = 1;
            end
            else begin
                V_length++;
            end
        end
        else begin
            H_length++;
        end
        
    end
    
    always @(negedge HSync) begin
         if((consecHSYNC > 1)) begin
            //VERTICAL
            if(~VSync) begin //HSYNC width
                V_pulseWidth++;
                Vstage = 2;
            end
            
            if(Vstage == 2) begin //back porch
                V_backPorch++;
            end
            
            if(Vstage == 1) begin //front porch
                V_frontPorch++;
            end
            
            if(Vstage == 3) begin
                V_displayPeriod++;
            end
            
            if(Vstage == 0) begin
                V_pulseWidth = 0;
                Vstage = 1;
                V_displayPeriod = 0;
                V_frontPorch = 2;
                V_backPorch = 0;
                V_length = 2;
            end
            else begin
                V_length++;
            end
         end
    end
    
endmodule
