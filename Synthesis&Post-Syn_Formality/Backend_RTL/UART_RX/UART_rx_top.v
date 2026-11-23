module UART_rx_top #(
    parameter DATA_WIDTH = 8,
    FRAME_WIDTH = DATA_WIDTH + 'd3,
    PRESCALE_WIDTH = 'd6
  )(
    input wire clk,
    input wire reset,
    input wire  rx_in,
    input wire [PRESCALE_WIDTH - 1: 0] prescale,
    input wire parity_enable,
    input wire parity_type,
    output wire data_valid,
    output wire [DATA_WIDTH - 1 : 0] p_data,
    output wire parity_error,
    output wire framing_error
  );
  wire data_sampling_enable;
  wire [3:0] bit_count;
  wire [PRESCALE_WIDTH - 1: 0] edge_count;
  wire sampled_bit;
  wire start_glitch;
  wire deserializer_enable;
  wire edge_bit_counter_enable;
  wire parity_check_enable;
  wire start_check_enable;
  wire stop_check_enable;


  data_sampling #(
                  .PRESCALE_WIDTH(PRESCALE_WIDTH),
                  .DATA_WIDTH(DATA_WIDTH),
                  .FRAME_WIDTH(FRAME_WIDTH)
                ) u_data_sampling (
                  .clk(clk),
                  .rst(reset),
                  .prescale(prescale),
                  .data_sampling_enable(data_sampling_enable),
                  .rx_in(rx_in),
                  .edge_count(edge_count),
                  .sampled_bit(sampled_bit)
                );

  deserializer #(
                 .DATA_WIDTH(DATA_WIDTH)
               ) u_deserializer (
                 .clk(clk),
                 .rst(reset),
                 .sampled_bit(sampled_bit),
                 .deserializer_enable(deserializer_enable),
                 .p_data(p_data)
               );

  edge_bit_counter #(
                     .PRESCALE_WIDTH(PRESCALE_WIDTH),
                     .DATA_WIDTH(DATA_WIDTH),
                     .FRAME_WIDTH(FRAME_WIDTH)
                   ) u_edge_bit_counter (
                     .clk(clk),
                     .rst(reset),
                     .prescale(prescale),
                     .edge_counter_enable(edge_bit_counter_enable), //start bit detected
                     .bit_count(bit_count),
                     .edge_count(edge_count)
                   );

  parity_check #(
                 .DATA_WIDTH(DATA_WIDTH)
               ) u_parity_check (
                 .p_data(p_data),
                 .clk(clk),
                 .rst(reset),
                 .parity_check_enable(parity_check_enable),
                 .parity_type(parity_type),
                 .sampled_bit(sampled_bit), //parity bit
                 .parity_error(parity_error)
               );

  start_check u_start_check (
                .start_check_enable(start_check_enable), //check start bit at the beginning of frame
                .clk(clk),
                .rst(reset),
                .sampled_bit(sampled_bit), //start bit
                .start_glitch(start_glitch)
              );

  stop_check u_stop_check (
               .stop_check_enable(stop_check_enable),
               .clk(clk),
               .rst(reset),
               .sampled_bit(sampled_bit), //stop bit
               .stop_error(framing_error)
             );
  FSM  #(
         .DATA_WIDTH(DATA_WIDTH),
         .PRESCALE_WIDTH(PRESCALE_WIDTH),
         .FRAME_WIDTH(FRAME_WIDTH)
       ) u_FSM  (
         .clk(clk),
         .rst(reset),
         .start_glitch(start_glitch),
         .prescale(prescale),
         .stop_error(framing_error),
         .parity_error(parity_error),
         .edge_count(edge_count),
         .bit_count(bit_count),
         .data_valid(data_valid),
         .data_sampling_enable(data_sampling_enable),
         .deserializer_enable(deserializer_enable),
         .edge_bit_counter_enable(edge_bit_counter_enable),
         .parity_check_enable(parity_check_enable),
         .start_check_enable(start_check_enable),
         .stop_check_enable(stop_check_enable),
         .parity_enable(parity_enable),
         .rx_in(rx_in)
       );
endmodule
