module ALU #( parameter DATA_WIDTH = 8, OUT_WIDTH = DATA_WIDTH*2 ) (
    input  wire [DATA_WIDTH-1:0]  A,
    input  wire [DATA_WIDTH-1:0]  B,
    input  wire                   enable,
    input  wire [3:0]             ALU_fun,
    input  wire                   clk,
    input  wire                   reset_n,
    output reg  [OUT_WIDTH-1:0]   ALU_out,
    output reg                    out_valid
  );

  // Internal signals
  reg [OUT_WIDTH-1:0] ALU_out_comb;
  reg                 out_valid_comb;

  // Registered outputs
  always @(posedge clk or negedge reset_n)
  begin
    if (!reset_n)
    begin
      ALU_out   <= 'b0;
      out_valid <= 1'b0;
    end
    else
    begin
      ALU_out   <= ALU_out_comb;
      out_valid <= out_valid_comb;
    end
  end

  //  ALU functionality
  always @(*)
  begin
    ALU_out_comb   = 'b0;
    out_valid_comb = 1'b0;

    if (enable)
    begin
      out_valid_comb = 1'b1;
      case (ALU_fun)
        4'b0000 :
          ALU_out_comb = A + B;
        4'b0001 :
          ALU_out_comb = A - B;
        4'b0010 :
          ALU_out_comb = A * B;
        4'b0011 :
          ALU_out_comb = (B != 0) ? (A / B) : 'b0;
        4'b0100 :
          ALU_out_comb = A & B;
        4'b0101 :
          ALU_out_comb = A | B;
        4'b0110 :
          ALU_out_comb = ~(A & B);
        4'b0111 :
          ALU_out_comb = ~(A | B);
        4'b1000 :
          ALU_out_comb = A ^ B;
        4'b1001 :
          ALU_out_comb = ~(A ^ B);
        4'b1010 :
          ALU_out_comb = (A == B) ? 'd1 : 'd0;
        4'b1011 :
          ALU_out_comb = (A > B)  ? 'd2 : 'd0;
        4'b1100 :
          ALU_out_comb = (A < B)  ? 'd3 : 'd0;
        4'b1101 :
          ALU_out_comb = A >> 1;
        4'b1110 :
          ALU_out_comb = A << 1;
        default :
          ALU_out_comb = 'b0;
      endcase
    end
  end

endmodule
