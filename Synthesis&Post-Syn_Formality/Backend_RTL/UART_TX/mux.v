module mux (
    input wire [1:0] mux_sel,
    input wire start_bit,
    input wire stop_bit,
    input wire serial_data,
    input wire parity_bit,
    output reg tx_out
  );

  always @(*)
  begin
    case (mux_sel)
      2'b00 :
        tx_out = start_bit;
      2'b01 :
        tx_out = stop_bit;
      2'b10 :
        tx_out = serial_data;
      2'b11 :
        tx_out = parity_bit;
      default:
        tx_out = stop_bit;
    endcase
  end

endmodule
