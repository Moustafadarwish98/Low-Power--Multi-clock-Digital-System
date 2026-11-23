/*typedef enum reg [2:0]
        {
          IDLE = 3'b000,
          START = 3'b001,
          DATA = 3'b011,
          PARITY = 3'b010,
          STOP = 3'b110,
          ERROR_CHECK = 3'b100} state;
  state current_state;
  state next_state;
  */

module FSM #(
    parameter DATA_WIDTH = 'd8,
    PRESCALE_WIDTH = 'd6,
    FRAME_WIDTH = DATA_WIDTH + 3 //start, stop, parity (if enabled)

  ) (
    input wire clk,
    input wire rst,
    input wire parity_enable,
    input wire  rx_in,
    input wire [3:0] bit_count,
    input wire [PRESCALE_WIDTH - 1: 0] edge_count,
    input wire parity_error,
    input wire stop_error,
    input wire start_glitch,
    input wire [PRESCALE_WIDTH - 1:0] prescale,

    output reg parity_check_enable,
    output reg edge_bit_counter_enable,
    output reg data_sampling_enable,
    output reg start_check_enable,
    output reg stop_check_enable,
    output reg deserializer_enable,
    output reg data_valid
  );
  localparam [2:0]
             IDLE        = 3'b000,
             START       = 3'b001,
             DATA        = 3'b011,
             PARITY      = 3'b010,
             STOP        = 3'b110,
             ERROR_CHECK = 3'b100;

  reg [2:0] current_state;
  reg [2:0] next_state;

  // State transition logic (Sequential)
  always @(posedge clk or negedge rst)
  begin
    if (!rst)
    begin
      current_state <= IDLE;
    end
    else
    begin
      current_state <= next_state;
    end
  end

  // Next state logic (Combinational)
  always @(*)
  begin
    case (current_state)
      IDLE:
      begin
        if (rx_in == 'd0 & !start_glitch)
        begin
          next_state = START;
        end
        else
        begin
          next_state = current_state;
        end
      end
      START:
      begin
        if (edge_count == (prescale - 1))
        begin
          if (start_glitch)
          begin
            next_state = IDLE;
          end
          else
          begin
            next_state = DATA;
          end
        end
        else
        begin
          next_state = current_state;
        end
      end
      DATA:
        if (bit_count == DATA_WIDTH & edge_count == (prescale - 1))
        begin
          if (parity_enable)
          begin
            next_state = PARITY;
          end
          else
          begin
            next_state = STOP;
          end
        end
        else
        begin
          next_state = current_state;
        end
      PARITY:
      begin
        if (bit_count == FRAME_WIDTH - 'd2 & edge_count == (prescale - 1))
        begin
          next_state = STOP;
        end
        else
        begin
          next_state = current_state;
        end

      end
      STOP:
      begin
        if (parity_enable)
        begin
          if (bit_count == FRAME_WIDTH - 'd1 & edge_count == (prescale - 1))
          begin
            next_state = ERROR_CHECK;
          end
          else
          begin
            next_state = current_state;
          end
        end
        else
        begin
          if (bit_count == FRAME_WIDTH - 'd2 & edge_count == (prescale - 1))
          begin
            next_state = ERROR_CHECK;
          end
          else
          begin
            next_state = current_state;
          end
        end

      end
      ERROR_CHECK:
      begin
        if (edge_count == (prescale - 1))
        begin
          if (rx_in)
          begin
            next_state = IDLE;
          end
          else
          begin
            next_state = START;
          end
        end
        else
        begin
          next_state = current_state;
        end
      end
      default:
      begin
        $display("Entered Default state");
        next_state = IDLE ;
      end
    endcase
  end
  // Output logic (Combinational)
  always @(*)
  begin
    parity_check_enable = 0;
    start_check_enable = 0;
    stop_check_enable = 0;
    data_valid = 0;
    edge_bit_counter_enable = 0;
    data_sampling_enable = 0;
    deserializer_enable = 0;

    case (current_state)
      IDLE:
      begin
        if (rx_in == 'd0)
        begin
          parity_check_enable = 0;
          start_check_enable = 0;
          stop_check_enable = 0;
          data_valid = 0;
          edge_bit_counter_enable = 0;
          data_sampling_enable = 1;
          deserializer_enable = 0;
        end
        else
        begin
          parity_check_enable = 0;
          start_check_enable = 0;
          stop_check_enable = 0;
          data_valid = 0;
          edge_bit_counter_enable = 0;
          data_sampling_enable = 0;
          deserializer_enable = 0;
        end
      end
      START:
      begin
        parity_check_enable = 0;
        stop_check_enable = 0;
        data_valid = 0;
        edge_bit_counter_enable = 1;
        data_sampling_enable = 1;
        deserializer_enable = 0;
        if(edge_count == ((prescale>>1) + 2))
        begin
          start_check_enable = 1;
        end
        else
        begin
          start_check_enable = 0;
        end
      end
      DATA:
      begin
        parity_check_enable = 0;
        start_check_enable = 0;
        stop_check_enable = 0;
        data_valid = 0;
        edge_bit_counter_enable = 1;
        data_sampling_enable = 1;
        if (edge_count == ((prescale>>1)  + 2))
        begin
          deserializer_enable = 1;
        end
        else
        begin
          deserializer_enable = 0;
        end
      end
      PARITY:
      begin
        if (edge_count == ((prescale>>1)  - 2))
        begin
          deserializer_enable = 1;
        end
        else
        begin
          deserializer_enable = 0;
        end

        if (edge_count == ((prescale>>1)  + 2) & parity_enable)
        begin
          parity_check_enable = 1;
        end
        else
        begin
          parity_check_enable = 0;
        end
        start_check_enable = 0;
        stop_check_enable = 0;
        data_valid = 0;
        edge_bit_counter_enable = 1;
        data_sampling_enable = 1;
      end
      STOP:
      begin
        if (edge_count == ((prescale>>1) - 2) & !parity_enable)
        begin
          deserializer_enable = 1;
        end
        else
        begin
          deserializer_enable = 0;
        end
        start_check_enable = 0;
        data_valid = 0;
        edge_bit_counter_enable = 1;
        data_sampling_enable = 1;
        parity_check_enable = 0;
        if (edge_count == ((prescale>>1)  + 2))
        begin
          stop_check_enable = 1;
        end
        else
        begin
          stop_check_enable = 0;
        end
      end
      ERROR_CHECK:
      begin
        deserializer_enable = 0;
        parity_check_enable = 0;
        start_check_enable = 0;
        stop_check_enable = 0;
        data_sampling_enable = 1;

        if (parity_error | stop_error)
        begin
          data_valid = 0;
        end
        else
        begin
          data_valid = 1;
        end

        if (edge_count == (prescale - 1))
        begin
          edge_bit_counter_enable = 0;
        end
        else
        begin
          edge_bit_counter_enable = 1;
        end
      end
      default:
      begin
        $display("Entered default output");
        parity_check_enable = 0;
        start_check_enable = 0;
        stop_check_enable = 0;
        data_valid = 0;
        edge_bit_counter_enable = 0;
        data_sampling_enable = 0;
        deserializer_enable = 0;
      end
    endcase
  end
endmodule
