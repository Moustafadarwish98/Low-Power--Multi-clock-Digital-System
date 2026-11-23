module edge_bit_counter #(
    parameter PRESCALE_WIDTH = 'd6,
    DATA_WIDTH = 'd8,
    FRAME_WIDTH = DATA_WIDTH + 'd3
  ) (
    input wire clk,
    input wire rst,
    input wire edge_counter_enable,
    input wire [PRESCALE_WIDTH - 1: 0] prescale,
    output reg [3:0] bit_count, // counts up to 11 , needs 4 bits
    output reg [PRESCALE_WIDTH - 1: 0] edge_count // counts up to prescale 8 -> 3 bits, 16 -> 4 bits, 32 -> 5 bits
  );
  always @(posedge clk or negedge rst)
    begin
        if (!rst)
        begin
        edge_count <= 'd0;
        bit_count <= 'd0;
        end
        else if (edge_counter_enable)
        begin
        if (edge_count == prescale - 'd1)
        begin
            edge_count <= 'd0;
            if (bit_count < FRAME_WIDTH - 'd1)
            begin
            bit_count <= bit_count + 'd1;
            end else begin
            bit_count <= 'd0;
            end
        end
        else
        begin
            edge_count <= edge_count + 'd1;
        end
        end else begin
        edge_count <= 'd0;
        bit_count <= 'd0;
        end
    end
endmodule
