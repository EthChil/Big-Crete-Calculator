`timescale 1 ps / 1 ps

`define ADC_OUTPUT_ADDR 7'h10

module ADC_Controller (
    input  logic clk,
    input  logic rst,

    // DRP interface
    output logic DCLK,
    output logic [15:0] DI,
    input logic [15:0] DO,
    output logic [6:0] DADDR,
    output logic DWE,
    output logic DEN,
    input logic DRDY
);

always @(posedge clk) begin
  if(rst) begin
    z <= 0;
  end else begin
    z <= a | b;
  end
end

// DWE when low is a read when high is a write

logic 

// inputs
// switches

// outputs
// RGB
// display

endmodule

