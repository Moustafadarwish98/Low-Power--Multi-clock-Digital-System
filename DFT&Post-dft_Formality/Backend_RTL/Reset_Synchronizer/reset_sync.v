//used to synchronize the de-assertion of the active low reset.
module reset_sync #(
    parameter NUM_STAGES = 2
  ) (
    input wire destination_domain_clk,
    input wire async_reset_n,
    output wire sync_reset
  );

  reg [NUM_STAGES - 1: 0] sync_reg ;

  always @(posedge destination_domain_clk or negedge async_reset_n)
  begin
    if (!async_reset_n)
    begin
      sync_reg <= 'b0;
    end
    else
    begin
      sync_reg <= {sync_reg[NUM_STAGES - 2: 0],1'b1};
    end
  end

  assign sync_reset = sync_reg[NUM_STAGES-1];

endmodule
