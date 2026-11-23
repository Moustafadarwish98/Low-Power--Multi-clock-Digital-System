module UART_tx_top#(
    parameter DATA_WIDTH = 8
  ) (
    input wire [DATA_WIDTH - 1:0] p_data,
    input wire data_valid,
    input wire parity_en,
    input wire parity_typ,
    input wire clk,
    input wire reset_n,
    output wire tx_out,
    output wire busy
  );
  wire serial_en;
  wire serial_done;
  wire [1:0] mux_sel;
  wire serial_data;
  wire parity_bit;
  wire valid_to_capture;
  wire start_bit = 1'b0;
  wire stop_bit = 1'b1;

  FSM_tx dut_fsm(
           .data_valid(data_valid),
           .parity_en(parity_en),
           .busy(busy),
           .mux_sel(mux_sel),
           .serial_en(serial_en),
           .serial_done(serial_done),
           .clk(clk),
           .reset_n(reset_n),
           .valid_to_capture(valid_to_capture));

  serializer dut_serializer(
               .p_data(p_data)
               ,.serial_en(serial_en),
               .serial_done(serial_done),
               .serial_data(serial_data),
               .clk(clk),
               .reset_n(reset_n),
               .valid_to_capture(valid_to_capture));

  parity_calc dut_parity(
                .parity_typ(parity_typ),
                .data_valid(data_valid),
                .p_data(p_data),
                .parity_bit(parity_bit),
                .clk(clk),
                .reset_n(reset_n),
                .busy(busy));

  mux dut_mux(
        .tx_out(tx_out),
        .start_bit(start_bit),
        .stop_bit(stop_bit),
        .serial_data(serial_data),
        .parity_bit(parity_bit),
        .mux_sel(mux_sel));

endmodule
