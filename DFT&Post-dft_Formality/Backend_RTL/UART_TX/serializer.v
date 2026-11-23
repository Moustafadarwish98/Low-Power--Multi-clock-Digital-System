module serializer (
    input  wire [7:0] p_data,
    input  wire serial_en,
    input  wire clk,
    input  wire valid_to_capture,
    input  wire reset_n,
    output reg  serial_data,
    output reg  serial_done
);

  reg [2:0] count;
  reg [7:0] captured_data;

  always @(posedge clk or negedge reset_n) begin
    if (!reset_n) begin
      count         <= 3'd0;
      serial_data   <= 1'b0;
      serial_done   <= 1'b0;
      captured_data <= 8'd0;
    end
    else begin
      // capture parallel data when enabled
      if (valid_to_capture) begin
        captured_data <= p_data;
      end

      if (serial_en) begin
        serial_data <= captured_data[count];

        if (count == 3'd7) begin
          serial_done <= 1'b1;
          count       <= 3'd0;
        end
        else begin
          serial_done <= 1'b0;
          count       <= count + 3'd1;
        end
      end
      else begin
        count       <= 3'd0;
        serial_done <= 1'b0;
      end
    end
  end

endmodule
