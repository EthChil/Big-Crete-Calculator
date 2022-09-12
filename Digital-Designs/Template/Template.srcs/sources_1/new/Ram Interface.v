`default_nettype none

module Template(
//RAM Connection
output wire [15:0] ddr3_addr,
output wire [2:0] ddr3_ba,
output wire ddr3_cas_n,
output wire ddr3_ck_n,
output wire ddr3_ck_p,
output wire ddr3_cke,
output wire ddr3_ras_n,
output wire ddr3_reset_n,
output wire ddr3_we_n,
inout wire [63:0]ddr3_dq,
inout wire [7:0]ddr3_dqs_n,
inout wire [7:0]ddr3_dqs_p,
output wire init_calib_complete,
output wire ddr3_cs_n,
output wire ddr3_odt,

//Display
output reg [7:0]Red,
output reg [7:0]Green,
output reg [7:0]Blue,
output reg DCLK, //10Mhz

input wire clk100, //100Mhz
input wire rst
);
    
    reg [3:0] count_ten = 4'b0;
    
    initial begin
        DCLK <= 0;
        Red <= 0;
        Green <= 0;
        Blue <= 0;
    end

    reg [29:0] app_addr;  
    reg [2:0] app_cmd; 
    reg app_en;  
    reg [511:0] app_wdf_data;  
    reg app_wdf_end;  
    reg app_wdf_wren;  
    wire [511:0]app_rd_data;  
    wire app_rd_data_end;  
    wire app_rd_data_valid;  
    wire app_rdy; 
    wire app_wdf_rdy;  
    wire app_sr_req;  
    wire app_ref_req; //request ram refresh
    wire app_zq_req; //request ZQ callib
    wire app_sr_active;  
    wire app_ref_ack;
    wire app_zq_ack;
    wire ui_clk;  
    wire ui_clk_sync_rst; 
    
    wire locked;
    wire clk_ram;
    wire ram_ref_clk;
    
    assign app_sr_req = 0;
    assign app_ref_req = 0;
    assign app_zq_req = 0;
    
    //Handle DCLK (10 MHz)
    always @(posedge clk100) begin
        if(count_ten == 4'd10) begin
            count_ten <= 0;
            DCLK <= ~DCLK;
            Red <= Red + 1;
            Blue <= Blue + 1;
            Green <= Green + 1;
        end
        count_ten <= count_ten + 1;
    end
    
    clk_wiz_0 clk (
        // Clock out ports
        .clk_out1(clk_ram),
        .clk_out2(ram_ref_clk),
        
        // Status and control signals
        .reset(rst),
        .locked(locked),
        
       // Clock in ports
        .clk_in1(clk100)
    );

    mig_7series_0 RamBuf (
    // Memory interface ports
    .ddr3_addr                      (ddr3_addr),  // output [15:0]		ddr3_addr
    .ddr3_ba                        (ddr3_ba),  // output [2:0]		ddr3_ba
    .ddr3_cas_n                     (ddr3_cas_n),  // output			ddr3_cas_n
    .ddr3_ck_n                      (ddr3_ck_n),  // output [0:0]		ddr3_ck_n
    .ddr3_ck_p                      (ddr3_ck_p),  // output [0:0]		ddr3_ck_p
    .ddr3_cke                       (ddr3_cke),  // output [0:0]		ddr3_cke
    .ddr3_ras_n                     (ddr3_ras_n),  // output			ddr3_ras_n
    .ddr3_reset_n                   (ddr3_reset_n),  // output			ddr3_reset_n
    .ddr3_we_n                      (ddr3_we_n),  // output			ddr3_we_n
    .ddr3_dq                        (ddr3_dq),  // inout [63:0]		ddr3_dq
    .ddr3_dqs_n                     (ddr3_dqs_n),  // inout [7:0]		ddr3_dqs_n
    .ddr3_dqs_p                     (ddr3_dqs_p),  // inout [7:0]		ddr3_dqs_p
    .init_calib_complete            (init_calib_complete),  // output			init_calib_complete


	.ddr3_cs_n                      (ddr3_cs_n),  // output [0:0]		ddr3_cs_n
    .ddr3_odt                       (ddr3_odt),  // output [0:0]		ddr3_odt

    // Application interface ports
    .app_addr                       (app_addr),  // input [29:0]		app_addr
    .app_cmd                        (app_cmd),  // input [2:0]		app_cmd
    .app_en                         (app_en),  // input				app_en
    .app_wdf_data                   (app_wdf_data),  // input [511:0]		app_wdf_data
    .app_wdf_end                    (app_wdf_end),  // input				app_wdf_end
    .app_wdf_wren                   (app_wdf_wren),  // input				app_wdf_wren
    .app_rd_data                    (app_rd_data),  // output [511:0]		app_rd_data
    .app_rd_data_end                (app_rd_data_end),  // output			app_rd_data_end
    .app_rd_data_valid              (app_rd_data_valid),  // output			app_rd_data_valid
    .app_rdy                        (app_rdy),  // output			app_rdy
    .app_wdf_rdy                    (app_wdf_rdy),  // output			app_wdf_rdy
    .app_sr_req                     (app_sr_req),  // input			app_sr_req
    .app_ref_req                    (app_ref_req),  // input			app_ref_req
    .app_zq_req                     (app_zq_req),  // input			app_zq_req
    .app_sr_active                  (app_sr_active),  // output			app_sr_active
    .app_ref_ack                    (app_ref_ack),  // output			app_ref_ack
    .app_zq_ack                     (app_zq_ack),  // output			app_zq_ack
    .ui_clk                         (ui_clk),  // output			ui_clk
    .ui_clk_sync_rst                (ui_clk_sync_rst),  // output			ui_clk_sync_rst
    
    // System Clock Ports
    .sys_clk_i                      (clk_ram),  //325.25 Mhz
    .clk_ref_i                      (ram_ref_clk),
    .sys_rst                        (~locked) // input sys_rst
    );
    

    
    localparam WRITE_DATA = 0;
    localparam WRITE_CMD = 1;
    localparam READ_CMD = 2;
    localparam READ_DATA = 3;
    
    reg [1:0] state = WRITE_DATA;
    
     always @(posedge ui_clk) begin
        app_addr <= 0;
        
        case(state)
            WRITE_DATA: begin
                app_wdf_end <= 1;
                app_wdf_wren <= 1;
                app_wdf_data <= 1; //data to write

                if(app_wdf_rdy)
                    state <= WRITE_CMD;
            end
            WRITE_CMD: begin
                app_en <= 1;
                app_cmd <= 0; //command to write
                app_addr <= 0;
                
                if(app_rdy)
                    state <= READ_CMD;
            end
            READ_CMD: begin
                app_en <= 1;
                app_cmd <= 3'b001; //command to read
                
                if(app_rdy)
                    state <= READ_DATA;
            end
            READ_DATA: begin
                if(app_rd_data_valid) begin
                    if(app_rd_data == 1)
                        state <= WRITE_DATA;
                    else
                        state <= READ_CMD;
                end
            end
            default: state <= WRITE_DATA;
        endcase
     end
 
  
endmodule
