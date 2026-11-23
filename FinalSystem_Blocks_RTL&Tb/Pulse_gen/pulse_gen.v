module pulse_synchronizer #(
    parameter integer NUM_STAGES = 2
  )(
    input  wire clk,
    input  wire rst_n,
    input  wire level_sig,
    output wire pulse_sig
  );
  // Synchronizer
  reg [NUM_STAGES-1:0] sync_reg;
  reg                  prev_stage;

  // Synchronizer flops
  always @(posedge clk or negedge rst_n)
  begin
    if (!rst_n)
    begin
      sync_reg   <= {NUM_STAGES{1'b0}};
      prev_stage <= 1'b0;
    end
    else
    begin
      sync_reg   <= {sync_reg[NUM_STAGES-2:0], level_sig};
      prev_stage <= sync_reg[NUM_STAGES-1];
    end
  end

  // Pulse generation (detect rising edge)
  assign pulse_sig = sync_reg[NUM_STAGES-1] & !prev_stage;

endmodule
