module start_check(
    input wire start_check_enable,
    input wire clk,
    input wire rst,
    input wire sampled_bit,
    output reg start_glitch
  );
  always @(posedge clk or negedge rst)
  begin
    if(!rst)
    begin
      start_glitch <= 'd0;
    end 
    else if (start_check_enable)
    begin
      if (sampled_bit == 'd0)
      begin
        start_glitch <= 'd0;
      end
      else
      begin
        start_glitch <= 'd1;
      end
    end
  end
endmodule
