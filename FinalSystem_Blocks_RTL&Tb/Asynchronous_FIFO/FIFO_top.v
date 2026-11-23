module FIFO_top #(
    parameter DATA_WIDTH = 8,
    parameter NUM_STAGES = 2,
    parameter DEPTH = 8,
    parameter ADDR_WIDTH = $clog2(DEPTH)
  ) (
    input wire w_clk,
    input wire w_reset_n,
    input wire w_inc,
    input wire [DATA_WIDTH - 1:0] w_data,

    input wire r_clk,
    input wire r_reset_n,
    input wire r_inc,

    output wire full,
    output wire empty,
    output wire [DATA_WIDTH - 1:0] r_data
  );

  wire [ADDR_WIDTH - 1: 0] w_addr;
  wire [ADDR_WIDTH - 1: 0] r_addr;
  wire [ADDR_WIDTH : 0] w_ptr;
  wire [ADDR_WIDTH : 0] r_ptr;
  wire [ADDR_WIDTH : 0] rq2_wptr;
  wire [ADDR_WIDTH : 0] wq2_rptr;



  FIFO_mem  #(.DATA_WIDTH(DATA_WIDTH),.ADDR_WIDTH(ADDR_WIDTH),.DEPTH(DEPTH)) dual_port_RAM (
              .w_data(w_data),
              .r_data(r_data),
              .w_clk_en(w_inc & !full),
              .w_clk(w_clk),
              .w_addr(w_addr),
              .w_rstn(w_reset_n),
              .r_addr(r_addr));

  bit_sync  #(.NUM_STAGES(NUM_STAGES), .ADDR_WIDTH(ADDR_WIDTH),.DEPTH(DEPTH)) read_ptr_sync (
              .dest_clk(w_clk),
              .reset_n(w_reset_n),
              .async_bus(r_ptr),
              .sync_bus(wq2_rptr));

  bit_sync  #(.NUM_STAGES(NUM_STAGES), .ADDR_WIDTH(ADDR_WIDTH),.DEPTH(DEPTH)) write_ptr_sync (
              .dest_clk(r_clk),
              .reset_n(r_reset_n),
              .async_bus(w_ptr),
              .sync_bus(rq2_wptr));

  write_control #(.DATA_WIDTH(DATA_WIDTH),.ADDR_WIDTH(ADDR_WIDTH),.DEPTH(DEPTH)) write_con (
                  .w_clk(w_clk),
                  .w_reset_n(w_reset_n),
                  .w_inc(w_inc),
                  .wq2_rptr(wq2_rptr),
                  .w_addr(w_addr),
                  .w_ptr(w_ptr),
                  .w_full(full));

  read_control #(.DATA_WIDTH(DATA_WIDTH),.ADDR_WIDTH(ADDR_WIDTH),.DEPTH(DEPTH)) read_con (
                 .r_clk(r_clk),
                 .r_reset_n(r_reset_n),
                 .r_inc(r_inc),
                 .rq2_wptr(rq2_wptr),
                 .r_addr(r_addr),
                 .r_ptr(r_ptr),
                 .r_empty(empty));

endmodule
