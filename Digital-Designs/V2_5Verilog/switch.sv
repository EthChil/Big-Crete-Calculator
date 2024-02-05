

// for the switches there are different methods of interacting with them
// V2.5 and V2 have all the switches directly wired to a pin so you do need to scan through them

/*
1  2  3  4  5
6  7  8  9  10
11 12 13 14 15
16 17 18 19 20
21 22 23 24
25   26    27
*/

module switch (
    input  logic clk,
    input  logic nrst,

    // raw switch controls
    // assume that 0 is the left of the switch pad and 4 is right
    input logic [4:0] SWL,
    // assume that 0 is the top of the switch pad and 5 is the bottom
    output logic [5:0] SWH,

    // processed switch interface this matches SWL and SWH assumptions
    output logic [4:0] switches [6]
);

typedef enum {START, INC, SCAN} switch_fsm_t;

switch_fsm_t state;

always @(posedge clk or negedge nrst) begin
  if(nrst) begin
    switches <= '0;
    SWH <= '0;
    sate <= START;
  end else begin
    case(state)
      START: begin
        // start from top
        SWH <= 6'b000001;
        state <= SCAN;
      end
      INC: begin
        // move down
        SWH <= SWH << 1;
        state <= SCAN;
      end
      SCAN: begin
        // decode selected row and store in array
        // then go to next state
        case(SWH)
          6'b000001: begin switches[0] <= SWL; state <= INC; end
          6'b000010: begin switches[1] <= SWL; state <= INC; end
          6'b000100: begin switches[2] <= SWL; state <= INC; end
          6'b001000: begin switches[3] <= SWL; state <= INC; end
          6'b010000: begin switches[4] <= SWL; state <= INC; end
          6'b100000: begin switches[5] <= SWL; state <= START; end
          default: state <= START;
        endcase
      end
      default: begin
        state <= START;
        SWH <= '0;
      end
    endcase
  end
end


endmodule
