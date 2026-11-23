module read_control #(
    parameter DATA_WIDTH = 8,
    parameter DEPTH      = 8,
    parameter ADDR_WIDTH = $clog2(DEPTH)
  ) (
    input  wire                    r_clk,
    input  wire                    r_reset_n,
    input  wire                    r_inc,
    input  wire [ADDR_WIDTH : 0]   rq2_wptr,

    output wire  [ADDR_WIDTH - 1:0] r_addr,
    output reg  [ADDR_WIDTH : 0]   r_ptr,
    output reg                     r_empty
  );

  reg [ADDR_WIDTH:0] r_ptr_bin;

  wire do_inc ;
  assign do_inc = r_inc & !r_empty;

  // next-state values
  reg [ADDR_WIDTH:0] r_bin_next;
  reg [ADDR_WIDTH:0] r_gray_next;
  reg r_empty_next;

  always @(*)
  begin
    r_bin_next = r_ptr_bin + do_inc;
    r_gray_next = (r_bin_next >> 1) ^ r_bin_next;
    r_empty_next = (r_gray_next == rq2_wptr);
  end

  always @(posedge r_clk or negedge r_reset_n)
  begin
    if (!r_reset_n)
    begin
      r_ptr_bin <= 0;
      r_ptr     <= 0;
      r_empty   <= 1;
    end
    else
    begin
      r_ptr_bin <= r_bin_next;
      r_ptr     <= r_gray_next;
      r_empty   <= r_empty_next;
    end
  end

  assign r_addr = r_ptr_bin[ADDR_WIDTH-1:0];

endmodule
