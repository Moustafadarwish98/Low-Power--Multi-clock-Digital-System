module parity_calc (
    input wire clk,
    input wire reset_n,
    input wire [7:0] p_data,
    input wire data_valid,
    input wire busy,
    input wire parity_typ,
    output reg parity_bit
);

  always @(posedge clk or negedge reset_n) begin
    if (!reset_n)
      parity_bit <= 1'b0;
    else if (data_valid && !busy ) begin
      if (!parity_typ)
        parity_bit <= ^p_data;     
      else
        parity_bit <= ~^p_data;    
    end
  end


endmodule
