`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/01/2023 06:11:59 PM
// Design Name: 
// Module Name: top_gram
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


// notes
// there appears to be a square worth of space where stuff is funky the rest appears fine
// attempting to run 24bit didn't resolve this, 24bit colour will be a battle for a future day

module top_gram #(
  parameter SETUP = 1,
  parameter HOLD = 2,
  parameter WIDTH = 320, //320
  parameter HEIGHT = 480 //480
) (
  // GENERAL SIGNALS
  input wire clk,
  input wire rst,
  
  output reg [2:0] state,
    
  // LCD SIGNALS
  output wire [7:0] data, // data to the LCD
  output reg wr, // write clock (rising edge)
  output reg rd, // read clock (rising edge)
  output reg dc, // indicates data being clocked
  output reg cs  // chip select indicates read or write
);
    
    // rough breakdown
    // use a statemachine to drive the interface
    // states
    // init (sets defaults and jumps into startup commands)
    // handle startup
    // wait
    // write cmd (write command)
    // write data (write data if applicable)
    // handle display (calls write cmd and write data for gram)
    
    // custom commands
    localparam WAIT_CMD = 8'hFF;
    localparam END_CMD = 8'h00;

    localparam INIT = 3'd0;
    localparam WRITE = 3'd1;
    localparam WAIT = 3'd2;
    localparam HANDLE_STARTUP_CMD = 3'd3;
    localparam HANDLE_STARTUP_DATA = 3'd4;
    localparam HANDLE_DISPLAY = 3'd5;
    localparam DO_NOTHING = 3'd6;
    
    //reg [2:0] state;
    reg [2:0] src_state; // used to callback to calling state
    
    // pointer within stack of startup cmds
    reg [7:0] cmd_ptr;
    // stack of register cmds
    reg [7:0] startup_cmds [0:127];
    
    // used to determine when wait has completed (also used for setup and hold)
    reg [25:0] wait_ctr;
    // used to keep track of data to drive
    reg [7:0] data_ctr;
    
    reg [8:0] px_x;
    reg [8:0] px_y;
    
    reg [7:0] data_buf;
    
    reg [17:0] ctr;
    
    reg [15:0] pixel;
    reg px_ptr;
    reg display_data;
    
    
    initial begin
      $readmemh("lcd_startup.mem", startup_cmds);
    end
    
    // NOTES
    // state machine diagrams should be parseable
    // block diagrams should be parseable
    
    // reset should set state to init
    // hookup reset
    
    // data is either (flopped) or straight piped  
    assign data = (display_data) ? ((px_ptr) ? pixel[7:0] : pixel[15:8]) : data_buf;
    
    always @(posedge clk) begin
      if(~rst) begin
        state <= INIT;
      end
    
      case(state)
        INIT: begin // load default values and jump into startup
          // default values
          dc <= 1'b1;
          cs <= 1'b1;
          wr <= 1'b1;
          rd <= 1'b1;
          data_buf <= 0;
          display_data <= 0;
          
          //px_x <= WIDTH-1;
//          px_x <= WIDTH;
//          px_y <= 0;
          ctr <= 0;
          
          px_ptr <= 1'b0;
          pixel <= 16'h0000;
          
          cmd_ptr <= 8'h00;
          state <= HANDLE_STARTUP_CMD;
        end
        // handle display state
        // handle startup state
        // wait state
        // handle command state
        // handle data state
        
        WRITE: begin // wait hold, drive edge, wait setup then jump to write data if applicable or (handle_startup or handle_display)
          // past SETUP wr is high
          wr <= (wait_ctr >= SETUP);

//          if(ctr == (WIDTH*2)+10) begin
//            pixel <= 16'h0000; 
//          end else if(ctr == (WIDTH*5)+10) begin
//            pixel <= 16'h0000;
//          end else if(ctr == (WIDTH*10)+10) begin
//            pixel <= 16'h0000;
//          end else if(ctr == (WIDTH*15)+10) begin
//            pixel <= 16'h0000;
//          end else if(ctr == (WIDTH*20)+10) begin
//            pixel <= 16'h0000;
//          end else if(ctr == (WIDTH*25)+10) begin
//            pixel <= 16'h0000;
//          end else if(ctr == (WIDTH*30)+10) begin
//            pixel <= 16'h0000;
//          end else begin
//            pixel <= 16'hFFFF;
//          end

          if(ctr%WIDTH == 10) begin
            pixel <= 16'h0000;
          end else begin
            pixel <= 16'hFFFF;
          end
       
          // if in hold move to data or startup
          if(wait_ctr == HOLD) begin
            state <= src_state;
            wait_ctr <= 0;
          end else begin
            // increment wait
            wait_ctr <= wait_ctr + 1;
          end
        end
        
        WAIT: begin // wait some number of cycles
//          if(wait_ctr == {startup_cmds[cmd_ptr-1], {17{1'b0}} }) begin
          if(wait_ctr == startup_cmds[cmd_ptr-1]) begin
            state <= HANDLE_STARTUP_CMD;
          end
          wait_ctr <= wait_ctr + 1;
        end
        
        HANDLE_STARTUP_CMD: begin // increment startup, drive value, jump to write cmd
          wr <= 1'b0;
          wait_ctr <= 0;
          
          if(startup_cmds[cmd_ptr] == WAIT_CMD) begin
            cs <= 1'b1;
          
            // custom wait cmd
            state <= WAIT;
          end 
          else if(startup_cmds[cmd_ptr] == END_CMD) begin
            // end of startup
            dc <= 1'b0;
            cs <= 1'b0;
            data_buf <= 8'h2c;
            
            // write command and jump to handle display
            state <= WRITE;
            src_state <= HANDLE_DISPLAY;
          end else begin
            // regular command
            dc <= 1'b0;
            cs <= 1'b0;
            
            // set data ctr
            data_ctr <= startup_cmds[cmd_ptr+1];
            
            // push data
            data_buf <= startup_cmds[cmd_ptr];

            // handle state change
            src_state <= HANDLE_STARTUP_DATA;
            state <= WRITE;
          end
          
          // increment pointer
          cmd_ptr <= cmd_ptr + 2; 
        end
        
        HANDLE_STARTUP_DATA: begin
          cs <= 1'b0;
          wr <= 1'b0;
          wait_ctr <= 0;
        
          if(data_ctr == 0) begin
            // out of data go back to handle startup
            state <= HANDLE_STARTUP_CMD;
          end else begin
            dc <= 1'b1;
            data_ctr <= data_ctr - 1;
            data_buf <= startup_cmds[cmd_ptr];
            cmd_ptr <= cmd_ptr + 1;
            
            // write data and callback to startup data
            state <= WRITE;
            src_state <= HANDLE_STARTUP_DATA;
          end
        end
        
        HANDLE_DISPLAY: begin // TODO
          // if start of frame send GRAM cmd
          // set dc and write
          dc <= 1'b1;
          cs <= 1'b0;
          wr <= 1'b0;
          display_data <= 1'b1;
          
          // reset wait
          wait_ctr <= 0;         
          
          // px_ptr
          px_ptr <= ~px_ptr;
            
          // if top half of pixel draw without increment
          if(px_ptr) begin
            state <= WRITE;
            
//            if(px_x == WIDTH && px_y == HEIGHT-1) begin      
//              src_state <= DO_NOTHING;
//            end else begin
//              src_state <= HANDLE_DISPLAY;
//            end
            if(ctr == WIDTH * HEIGHT-1) begin      
              src_state <= DO_NOTHING;
            end else begin
              src_state <= HANDLE_DISPLAY;
            end
          end else begin
//            if(px_x == WIDTH) begin
//              px_x <= 0;
//              px_y <= px_y + 1;
//            end else begin
//              px_x <= px_x + 1;
//            end
            ctr <= ctr + 1;

            src_state <= HANDLE_DISPLAY;
            //data <= pixel[15:8];
            state <= WRITE;
          end
        end
        
        DO_NOTHING: begin
//          px_x <= WIDTH-1;
//          px_x <= WIDTH;
//          px_y <= 0;
          ctr <= 0;
          display_data <= 1'b0;
          
          px_ptr <= 1'b0;
          pixel <= 16'h0000;
        
          //if(wait_ctr == 8'd100) begin
          if(& wait_ctr) begin
             // end of startup
            dc <= 1'b0;
            cs <= 1'b0;
            data_buf <= 8'h2c;
            wait_ctr <= 0;
            
            // write command and jump to handle display
            state <= WRITE;
            src_state <= HANDLE_DISPLAY;
          end else begin
            // default values
            dc <= 1'b1;
            cs <= 1'b1;
            wr <= 1'b1;
            rd <= 1'b1;
            
            wait_ctr <= wait_ctr + 1;
          end
        end

        default: begin
          state <= INIT;
        end
      endcase
    end
endmodule
