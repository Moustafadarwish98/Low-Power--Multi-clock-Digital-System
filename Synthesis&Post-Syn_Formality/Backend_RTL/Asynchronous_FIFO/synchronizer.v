module bit_sync #(
    parameter NUM_STAGES = 2,
    parameter DEPTH      = 8,
    parameter ADDR_WIDTH = $clog2(DEPTH)
  )(
    input  wire                    dest_clk,
    input  wire                    reset_n,
    input  wire [ADDR_WIDTH:0]      async_bus,
    output reg  [ADDR_WIDTH:0]      sync_bus
  );

  reg [NUM_STAGES-1:0] sync_reg [ADDR_WIDTH:0];

  integer i;

  always @(posedge dest_clk or negedge reset_n) begin
    if (!reset_n) begin
      for (i=0; i<=ADDR_WIDTH; i=i+1)
        sync_reg[i] <= 'b0;
    end else begin
      for (i=0; i<=ADDR_WIDTH; i=i+1)
        sync_reg[i] <= {sync_reg[i][NUM_STAGES-2:0], async_bus[i]};
    end
  end

  always @(*) begin
    for (i=0; i<=ADDR_WIDTH; i=i+1)
      sync_bus[i] = sync_reg[i][NUM_STAGES-1];
  end

endmodule
