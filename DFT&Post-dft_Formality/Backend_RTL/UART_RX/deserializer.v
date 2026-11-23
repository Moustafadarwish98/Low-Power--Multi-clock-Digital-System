module deserializer #(
    parameter DATA_WIDTH = 8
  ) (
    input wire clk,
    input wire rst,
    input wire sampled_bit,
    input wire deserializer_enable,
    output reg [DATA_WIDTH - 1: 0] p_data
  );
  reg [DATA_WIDTH - 1: 0] p_data_reg;
  reg [3:0] bit_count;

  always @(posedge clk or negedge rst)
  begin
    if (!rst)
    begin
      p_data_reg <= 'd0;
      p_data <= 'd0;
      bit_count <= 'd0;
    end
    else if (deserializer_enable)
    begin
      if (bit_count < DATA_WIDTH)
      begin
        p_data_reg[bit_count] <= sampled_bit;
        bit_count <= bit_count + 'd1;
      end
      if (bit_count == DATA_WIDTH)
      begin
        p_data <= p_data_reg;
        bit_count <= 0;
      end 
    end
  end
endmodule
