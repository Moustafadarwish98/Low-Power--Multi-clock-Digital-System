module parity_check #(
    parameter DATA_WIDTH = 'd8
  ) (
    input wire [DATA_WIDTH - 1: 0] p_data,
    input wire parity_check_enable,
    input wire parity_type,
    input wire clk,
    input wire rst,
    input wire sampled_bit,
    output reg parity_error
  );

  reg rx_parity;
  always @(*) begin
    if (parity_type) begin
        rx_parity = ~^p_data;
    end
    else begin
        rx_parity =  ^p_data;
    end
  end
  
  always @(posedge clk or negedge rst)
  begin
    if(!rst)
    begin
      parity_error <= 'd0;
    end
    else if (parity_check_enable)
    begin
      if (rx_parity == sampled_bit)
      begin
        parity_error <= 'd0;
      end
      else
      begin
        parity_error <= 'd1;
      end
    end
  end
endmodule
