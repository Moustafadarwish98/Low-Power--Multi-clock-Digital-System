module clock_gating(
    input clk,
    input clk_enable,
    output gated_clock
  );
  reg out_latch;

  // Active low latch
  always @(clk or clk_enable)
  begin
    if (~clk)
    begin
      out_latch <= clk_enable;
    end
  end

  assign gated_clock = clk & out_latch;

endmodule

/*
TLATNCAX12M U0_TLATNCAX12M (
.E(CLK_EN),
.CK(CLK),
.ECK(GATED_CLK)
);
*/