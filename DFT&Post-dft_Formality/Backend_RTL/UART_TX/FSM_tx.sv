/*
  typedef enum logic [2:0] {
    IDLE    = 3'b000,
    START   = 3'b001,
    DATA    = 3'b010,
    PARITY  = 3'b011,
    DONE    = 3'b100
  } state_t;

  //state registers
  state_t current_state, next_state;
*/
module FSM_tx (
    input wire serial_done,
    input wire data_valid,
    input wire parity_en,
    input wire clk,
    input wire reset_n,
    output reg serial_en,
    output reg [1:0] mux_sel,
    output reg busy,
    output reg valid_to_capture
  );
  localparam IDLE = 3'b000;
  localparam START = 3'b001;
  localparam  DATA = 3'b010;
  localparam PARITY = 3'b011;
  localparam DONE = 3'b100;

  // Internal state registers
  reg [2:0] current_state;
  reg [2:0] next_state;

  // Internal register to hold busy value
  reg busy_reg;

  // State transition (sequential logic)
  always @(posedge clk or negedge reset_n)
  begin
    if (!reset_n)
    begin
      current_state <= IDLE;
      busy <= 1'b1;
    end
    else
    begin
      current_state <= next_state;
      busy <= busy_reg;
    end
  end

  // Next state logic (combinational)
  always @(*)
  begin
    case (current_state)
      IDLE:
        if (data_valid && !busy_reg)
          next_state = START;
        else
          next_state = IDLE;

      START:
        next_state = DATA;

      DATA:
        if (serial_done)
          next_state = (parity_en ? PARITY : DONE);
        else
          next_state = DATA;

      PARITY:
        next_state = DONE;

      DONE:
        next_state = IDLE;
      default:
        next_state = IDLE;
    endcase
  end

  // Output logic (combinational)
  always @(*)
  begin
    case (current_state)
      IDLE:
      begin
        serial_en = 1'b0;
        mux_sel = 2'b01;   // stop bit
        busy_reg = 1'b0;
        valid_to_capture = 1'b1;
      end

      START:
      begin
        serial_en = 1'b1;
        mux_sel = 2'b00;   // start bit
        busy_reg = 1'b1;
        valid_to_capture = 1'b0;
      end

      DATA:
      begin
        serial_en = 1'b1;
        mux_sel = 2'b10;   // data
        busy_reg = 1'b1;
        valid_to_capture = 1'b0;
      end

      PARITY:
      begin
        serial_en = 1'b0;
        mux_sel = 2'b11;   // parity bit
        busy_reg = 1'b1;
        valid_to_capture = 1'b0;
      end

      DONE:
      begin
        serial_en = 1'b0;
        mux_sel = 2'b01;   // stop bit
        busy_reg = 1'b1;
        valid_to_capture = 1'b0;
      end

      default:
      begin
        serial_en = 1'b0;
        mux_sel = 2'b01;
        busy_reg = 1'b0;
        valid_to_capture = 1'b0;
      end
    endcase
  end
endmodule
