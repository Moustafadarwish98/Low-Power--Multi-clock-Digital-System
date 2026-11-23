module UART_top#(
    parameter DATA_WIDTH = 8,
    FRAME_WIDTH = DATA_WIDTH + 'd3,
    PRESCALE_WIDTH = 'd6
  ) (
    input wire	clk_tx,
    input wire	[DATA_WIDTH - 1:0]	tx_p_data,
    input wire	tx_data_valid,
    input wire	reset,
    input wire	parity_type,
    input wire	parity_enable,
    input wire	clk_rx,
    input wire	rx_in,
    input wire	[PRESCALE_WIDTH - 1:0]	prescale,
    output wire	tx_data_out,
    output wire	tx_busy,
    output wire	[DATA_WIDTH - 1:0]	rx_p_data_out,
    output wire	rx_data_valid,
    output wire	parity_error,
    output wire	framing_error
  );

  UART_rx_top #(
                .DATA_WIDTH(DATA_WIDTH),
                .FRAME_WIDTH(FRAME_WIDTH),
                .PRESCALE_WIDTH(PRESCALE_WIDTH)
              ) dut_UART_RX(
                .clk(clk_rx),
                .reset(reset),
                .rx_in(rx_in),
                .prescale(prescale),
                .parity_enable(parity_enable),
                .parity_type(parity_type),
                .data_valid(rx_data_valid),
                .p_data(rx_p_data_out),
                .parity_error(parity_error),
                .framing_error(framing_error)
              );

  UART_tx_top#(
               .DATA_WIDTH(DATA_WIDTH)
             ) dut_UART_TX (
               .p_data(tx_p_data),
               .data_valid(tx_data_valid),
               .parity_en(parity_enable),
               .parity_typ(parity_type),
               .clk(clk_tx),
               .reset_n(reset),
               .tx_out(tx_data_out),
               .busy(tx_busy)
             );


endmodule
