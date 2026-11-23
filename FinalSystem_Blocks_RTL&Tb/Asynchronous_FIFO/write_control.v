module write_control #(
    parameter DATA_WIDTH = 8,
    parameter DEPTH      = 8,
    parameter ADDR_WIDTH = $clog2(DEPTH)
  ) (
    input  wire                    w_clk,
    input  wire                    w_reset_n,
    input  wire                    w_inc,
    input  wire [ADDR_WIDTH : 0]   wq2_rptr,

    output wire  [ADDR_WIDTH - 1:0] w_addr,
    output reg  [ADDR_WIDTH : 0]   w_ptr,
    output reg                     w_full
  );

  reg [ADDR_WIDTH:0] w_ptr_bin;

  wire do_inc;
  assign do_inc = w_inc & !w_full;

  // next-state values
  reg [ADDR_WIDTH:0] w_bin_next;
  reg [ADDR_WIDTH:0] w_gray_next;
  reg w_full_next;

  always @(*)
  begin
    w_bin_next  = w_ptr_bin + do_inc;

    w_gray_next= (w_bin_next >> 1) ^ w_bin_next;

    w_full_next =       (w_gray_next[ADDR_WIDTH] != wq2_rptr[ADDR_WIDTH]) &&
                (w_gray_next[ADDR_WIDTH-1] != wq2_rptr[ADDR_WIDTH-1]) &&
                (w_gray_next[ADDR_WIDTH-2:0] == wq2_rptr[ADDR_WIDTH-2:0]);
  end

  always @(posedge w_clk or negedge w_reset_n)
  begin
    if (!w_reset_n)
    begin
      w_ptr_bin <= 0;
      w_ptr     <= 0;
      w_full    <= 0;
    end
    else
    begin
      w_ptr_bin <= w_bin_next;
      w_ptr     <= w_gray_next;
      w_full    <= w_full_next;
    end
  end

  assign w_addr = w_ptr_bin[ADDR_WIDTH-1:0];
  
endmodule
