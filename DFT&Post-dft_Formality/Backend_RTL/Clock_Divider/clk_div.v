module clk_div #(
    parameter WIDTH = 8
  ) (
    input  wire             clk_ref,
    input  wire             rst_n,
    input  wire             clk_en,
    input  wire [WIDTH-1:0] div_ratio,
    output wire             div_clk
  );

  reg [WIDTH-1:0] count;
  reg             flag;
  reg             div_clk_reg;

  reg [WIDTH-1:0] prev_div_ratio; // store previous ratio

  // odd/even detection 
  wire odd_div = div_ratio[0];
  wire [WIDTH-1:0] half_div       = div_ratio >> 1;
  wire [WIDTH-1:0] half_div_plus1 = half_div + 1'b1;

assign div_clk = (!rst_n) ? 1'b0 :
                 (div_ratio <= 1) ? clk_ref : div_clk_reg;

  always @(posedge clk_ref or negedge rst_n)
  begin
    if (!rst_n)
    begin
      div_clk_reg <= 1'b0;   
      count       <= {WIDTH{1'b0}};
      flag        <= 1'b0;
      prev_div_ratio <= {WIDTH{1'b0}};
    end
    else if (clk_en && (div_ratio > 1))
    begin
      // if div_ratio changed → restart cleanly
      if (div_ratio != prev_div_ratio)
      begin
        div_clk_reg <= 1'b1;   // restart high
        count       <= {WIDTH{1'b0}};
        flag        <= 1'b0;
        prev_div_ratio <= div_ratio;
      end
      else
      begin
        if (!odd_div)
        begin
          // even division
          if (count == half_div - 1)
          begin
            div_clk_reg <= ~div_clk_reg;
            count       <= {WIDTH{1'b0}};
          end
          else
          begin
            count <= count + 1'b1;
          end
        end
        else
        begin
          // odd division
          if ((!flag && count == half_div - 1) ||
              (flag && count == half_div_plus1 - 1))
          begin
            div_clk_reg <= ~div_clk_reg;
            count       <= {WIDTH{1'b0}};
            flag        <= ~flag;
          end
          else
          begin
            count <= count + 1'b1;
          end
        end
      end
    end
    else
    begin
      div_clk_reg <= 1'b0;   
      count       <= {WIDTH{1'b0}};
      flag        <= 1'b0;
      prev_div_ratio <= div_ratio;
    end
  end

endmodule
