module stop_check (
    input wire stop_check_enable,
    input wire clk,
    input wire rst,
    input wire sampled_bit,
    output reg stop_error
  );
  always @(posedge clk or negedge rst)
  begin
    if(!rst)
    begin
      stop_error <= 'd0;
    end
    else if (stop_check_enable)
    begin
      if (sampled_bit == 'd1)
      begin
        stop_error <= 'd0;
      end
      else
      begin
        stop_error <= 'd1;
      end
    end
  end
endmodule
