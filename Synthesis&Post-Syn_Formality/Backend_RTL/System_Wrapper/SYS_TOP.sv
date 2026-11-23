// System control
`include "../System_control/system_control.sv"
// Reset Synchronizer
`include "../Reset_Synchronizer/reset_sync.v"
// Register file
`include "../RegFile/registerfile.v"
// Pulse Generator
`include "../Pulse_gen/pulse_gen.v"
// Clock divider
`include "../Clock_Divider/clk_div.v"
// Data synchronizer
`include "../Data_Synchronizer/data_sync.v"
// Clock gating
`include "../Clock_gating/clk_gating.v"
// Clock divider mux
`include "../Clock_Divider_Mux/clk_div_mux.v"
// Asynchronous FIFO
`include "../Asynchronous_FIFO/FIFO_top.v"
`include "../Asynchronous_FIFO/synchronizer.v"
`include "../Asynchronous_FIFO/FIFO_mem.v"
`include "../Asynchronous_FIFO/read_control.v"
`include "../Asynchronous_FIFO/write_control.v"
// ALU
`include "../16_bit_ALU/ALU_16b.v"
// UART top
`include "../UART/UART_top.v"
// UART TX
`include "../UART_TX/UART_tx_top.sv"
`include "../UART_TX/FSM_tx.sv"
`include "../UART_TX/mux.v"
`include "../UART_TX/parity_calc.v"
`include "../UART_TX/serializer.v"
// UART RX
`include "../UART_RX/UART_rx_top.v"
`include "../UART_RX/data_sampling.sv"
`include "../UART_RX/deserializer.v"
`include "../UART_RX/edge_bit_counter.v"
`include "../UART_RX/FSM.sv"
`include "../UART_RX/parity_check.v"
`include "../UART_RX/stop_check.v"
`include "../UART_RX/start_check.v"

module SYS_TOP #(
    parameter DATA_WIDTH = 8,
    FRAME_WIDTH = DATA_WIDTH + 3,
    PRESCALE_WIDTH = 6,
    NUM_STAGES = 2,
    RF_DEPTH     = 16,
    RF_ADDR_WIDTH = $clog2(RF_DEPTH),
    FIFO_DEPTH = 8,
    FIFO_ADDR_WIDTH = $clog2(FIFO_DEPTH),
    ALU_OUT_WIDTH = 2 * DATA_WIDTH
  )
  (
    input   wire                          RST_N,
    input   wire                          UART_CLK,
    input   wire                          REF_CLK,
    input   wire                          UART_RX_IN,
    output  wire                          UART_TX_O,
    output  wire                          parity_error,
    output  wire                          framing_error
  );

  // Clocks wires
  wire							clk_tx;
  wire							clk_rx;
  wire							clk_div_enable;
  wire							clk_gate_enable;
  wire							ALU_clk;
  wire	[DATA_WIDTH-1:0]		div_ratio;
  wire	[DATA_WIDTH-1:0]		div_ratio_rx;   // clkdivmux to RX

  // Reset wires
  wire 							sync_reset_RF;
  wire 							sync_reset_UART;

  // UART wires
  wire	[DATA_WIDTH-1:0]		UART_config;
  wire	[DATA_WIDTH-1:0]		UART_rx_data_unsync;
  wire							UART_rx_valid_unsync;
  wire	[DATA_WIDTH-1:0]		UART_rx_data_sync;
  wire							UART_rx_valid_sync;
  wire							UART_tx_busy;

  // Register file wires
  wire 							write_enable;
  wire 							read_enable;
  wire	[RF_ADDR_WIDTH-1:0]		addr;
  wire	[DATA_WIDTH-1:0]		wr_reg;
  wire	[DATA_WIDTH-1:0]		Rd_Reg;
  wire							read_reg_valid;

  // ALU wires
  wire	[DATA_WIDTH-1:0]		Operand_A;
  wire	[DATA_WIDTH-1:0]		Operand_B;
  wire	[3:0]					ALU_FUN;
  wire							ALU_enable;
  wire	[ALU_OUT_WIDTH-1:0]		ALU_OUT;
  wire							ALU_out_valid;

  // Fiffo wires
  wire							FIFO_full;
  wire	[DATA_WIDTH-1:0]		FIFO_wr_data;
  wire							FIFO_wr_inc;
  wire							FIFO_empty_UART_tx;
  wire	[DATA_WIDTH-1:0]		FIFO_rd_data;
  wire							FIFO_rd_inc;

  //////////////////// Reset synchronizers /////////////////////
  reset_sync #(
               .NUM_STAGES(NUM_STAGES)
             ) dut_RST_SYNC_REF(
               .destination_domain_clk(REF_CLK),
               .async_reset_n(RST_N),
               .sync_reset(sync_reset_RF)
             );

  reset_sync #(
               .NUM_STAGES(NUM_STAGES)
             ) dut_RST_SYNC_UART(
               .destination_domain_clk(UART_CLK),
               .async_reset_n(RST_N),
               .sync_reset(sync_reset_UART)
             );

  ///////////////////// Data Synchronizers /////////////////////
  data_sync #(
              .NUM_STAGES(NUM_STAGES),
              .BIT_WIDTH (DATA_WIDTH)
            ) dut_DATA_SYNC (
              .unsync_bus(UART_rx_data_unsync), // Input data bus from source domain
              .dest_clk(REF_CLK),
              .dest_reset_n(sync_reset_RF),
              .bus_enable(UART_rx_valid_unsync),  // Control signal (from source domain)
              .enable_pulse(UART_rx_valid_sync),  // Single-cycle puls
              .sync_bus(UART_rx_data_sync)
            );

  //////////////////////// Pulse Generator /////////////////////
  pulse_synchronizer #(
                       .NUM_STAGES(NUM_STAGES)
                     )dut_PULSE_GEN (
                       .clk(clk_tx),
                       .rst_n(sync_reset_UART),
                       .level_sig(UART_tx_busy),
                       .pulse_sig(FIFO_rd_inc)
                     );

  //////////// Clock Divider for UART_TX Clock /////////////////
  clk_div #(
            .WIDTH(DATA_WIDTH)
          ) dut_TX_CLOCK_DIVIDER(
            .clk_ref(UART_CLK),
            .rst_n(sync_reset_UART),
            .clk_en(clk_div_enable),
            .div_ratio(div_ratio),
            .div_clk(clk_tx)
          );

  //////////// Clock Divider for UART_RX Clock /////////////////
  clk_div #(
            .WIDTH(DATA_WIDTH)
          ) dut_Clock_Divider_RX(
            .clk_ref(UART_CLK),
            .rst_n(sync_reset_UART),
            .clk_en(clk_div_enable),
            .div_ratio(div_ratio_rx),
            .div_clk(clk_rx)
          );

  ///////////////////////Clock MUX /////////////////////
  clk_div_mux #(
                .WIDTH(DATA_WIDTH)
              ) dut_CLOCK_DIVIDER_MUX (
                .in(UART_config[7:2]),
                .out(div_ratio_rx)
              );

  ///////////////////////// Clock Gating ///////////////////////
  clock_gating dut_CLK_GATE (
                 .clk(REF_CLK),
                 .clk_enable(clk_gate_enable),
                 .gated_clock(ALU_clk)
               );

  //////////////////////////// ALU /////////////////////////////
  ALU #(
        .DATA_WIDTH(DATA_WIDTH),
        .OUT_WIDTH(ALU_OUT_WIDTH)
      ) dut_ALU (
        .A(Operand_A),
        .B(Operand_B),
        .enable(ALU_enable),
        .ALU_fun(ALU_FUN),
        .clk(ALU_clk),
        .reset_n(sync_reset_RF),
        .ALU_out(ALU_OUT),
        .out_valid(ALU_out_valid)
      );

  ///////////////////////// Async FIFO /////////////////////////
  FIFO_top #(
             .DATA_WIDTH(DATA_WIDTH),
             .NUM_STAGES(NUM_STAGES),
             .ADDR_WIDTH(FIFO_ADDR_WIDTH),
             .DEPTH(FIFO_DEPTH)
           ) dut_Async_fifo (
             .w_clk(REF_CLK),
             .w_reset_n(sync_reset_RF),
             .w_inc(FIFO_wr_inc),
             .w_data(FIFO_wr_data),
             .r_clk(clk_tx),
             .r_reset_n(sync_reset_UART),
             .r_inc(FIFO_rd_inc),
             .full(FIFO_full),
             .empty(FIFO_empty_UART_tx),
             .r_data(FIFO_rd_data)
           );

  /////////////////////// Register File ////////////////////////
  registerfile #(
                 .WORD_SIZE(DATA_WIDTH),
                 .DEPTH(RF_DEPTH),
                 .ADDR_SIZE(RF_ADDR_WIDTH)
               ) dut_register_file(
                 .clk(REF_CLK),
                 .rst_n(sync_reset_RF),
                 .wr_en(write_enable),
                 .rd_en(read_enable),
                 .address(addr),
                 .wr_data(wr_reg),
                 .rd_data(Rd_Reg),
                 .rd_data_valid(read_reg_valid),
                 .reg0(Operand_A),
                 .reg1(Operand_B),
                 .reg2(UART_config),
                 .reg3(div_ratio)
               );

  /////////////////////////// UART /////////////////////////////
  UART_top#(
            .DATA_WIDTH(DATA_WIDTH),
            .FRAME_WIDTH(FRAME_WIDTH),
            .PRESCALE_WIDTH(PRESCALE_WIDTH)
          ) dut_UART(
            .clk_tx(clk_tx),
            .tx_p_data(FIFO_rd_data),
            .tx_data_valid(!FIFO_empty_UART_tx),
            .reset(sync_reset_UART),
            .parity_type(UART_config[1]),
            .parity_enable(UART_config[0]),
            .clk_rx(clk_rx),
            .rx_in(UART_RX_IN),
            .prescale(UART_config[7:2]),
            .tx_data_out(UART_TX_O),
            .tx_busy(UART_tx_busy),
            .rx_p_data_out(UART_rx_data_unsync),
            .rx_data_valid(UART_rx_valid_unsync),
            .parity_error(parity_error),
            .framing_error(framing_error)
          );

  //////////////////// System Controller ///////////////////////
  system_controller #(
                      .RF_DEPTH(RF_DEPTH),
                      .ADDR_WIDTH(RF_ADDR_WIDTH),
                      .DATA_WIDTH(DATA_WIDTH),
                      .ALU_OUT_WIDTH(ALU_OUT_WIDTH)
                    )dut_SYSTEM_CTRL(
                      .clk(REF_CLK),
                      .reset_n(sync_reset_RF),

                      // UART RX interface (synchronized)
                      .UART_rx_data(UART_rx_data_sync),
                      .UART_rx_valid(UART_rx_valid_sync),

                      // FIFO interface (write side in REF_CLK domain)
                      .FIFO_full(FIFO_full),
                      .FIFO_wr_data(FIFO_wr_data),
                      .FIFO_wr_inc(FIFO_wr_inc),

                      // Clock enables
                      .gated_clk_enable(clk_gate_enable),
                      .div_clk_enable(clk_div_enable),

                      // Register File interface
                      .rd_reg(Rd_Reg),
                      .rd_reg_valid(read_reg_valid),
                      .wr_reg(wr_reg),
                      .addr(addr),
                      .read_enable(read_enable),
                      .write_enable(write_enable),

                      // ALU interface
                      .ALU_out(ALU_OUT),
                      .ALU_out_valid(ALU_out_valid),
                      .ALU_enable(ALU_enable),
                      .ALU_fun(ALU_FUN)
                    );
endmodule
