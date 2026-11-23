module data_sampling #(
    parameter PRESCALE_WIDTH = 6,
    DATA_WIDTH = 8,
    FRAME_WIDTH = DATA_WIDTH + 3
  ) (
    input wire clk,
    input wire rst,
    input wire [PRESCALE_WIDTH - 1:0] prescale,
    input wire data_sampling_enable,
    input wire  rx_in,
    input wire [PRESCALE_WIDTH - 1:0] edge_count,
    output reg sampled_bit
  );

  reg [2:0] sampled_bits;

  always @(posedge clk or negedge rst)
  begin
    if (!rst)
    begin
      sampled_bit <= 'd1;
      sampled_bits <= 3'b111;
    end
    else if (data_sampling_enable)
    begin
      if (edge_count == (prescale>>1) -'d2)
      begin
        sampled_bits[0] <= rx_in;
      end
      else if (edge_count == (prescale>>1) - 'd1)
      begin
        sampled_bits[1] <= rx_in;
      end
      else if (edge_count == (prescale>>1))
      begin
        sampled_bits[2] <= rx_in;
      end
      if ((sampled_bits[0] & sampled_bits[1]) | (sampled_bits[0] & sampled_bits[2]) | (sampled_bits[1] & sampled_bits[2]))
      begin
        sampled_bit <= 'd1;
      end
      else
      begin
        sampled_bit <= 0 ;
      end
    end
  end
endmodule
