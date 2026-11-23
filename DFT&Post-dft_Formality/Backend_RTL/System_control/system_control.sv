/*
typedef enum bit [3:0] {
		IDLE        	= 4'b0000,
		RF_WR_ADDR 		= 4'b0001,
		RF_WR_DATA  	= 4'b0011,
		RF_RD_ADDR  	= 4'b0010,
		FIFO_WRITE_RF 	= 4'b0110,
		OPERAND_A   	= 4'b0111,
		OPERAND_B 		= 4'b0101,
		ALU_FUN  	= 4'b0100,
		ALU_OUT_STORE    = 4'b1100,
		ALU_FIRST_BYTE    = 4'b1101,
		ALU_SECOND_BYTE    = 4'b1111
} state;						
state 	current_state, next_state;
*/
module system_controller #(
    parameter RF_DEPTH  = 16,
    parameter ADDR_WIDTH = $clog2(RF_DEPTH),   // width of regfile address bus
    parameter DATA_WIDTH = 8,    // width of regfile data bus
    parameter ALU_OUT_WIDTH = 2 * DATA_WIDTH
  )(
    input  wire                       clk,          // system clock (REF_CLK domain)
    input  wire                       reset_n,          // async active-low reset_n

    // UART RX interface (already synchronized)
    input  wire [DATA_WIDTH-1:0]      UART_rx_data,  // byte received from UART
    input  wire                       UART_rx_valid, // asserted when UART_rx_data is valid

    // ALU interface
    input  wire [DATA_WIDTH*2-1:0]    ALU_out,       // ALU output (2× width)
    input  wire                       ALU_out_valid, // asserted when ALU_out is valid
    output reg                        ALU_enable,        // ALU enable (start operation)
    output reg  [3:0]                 ALU_fun,       // ALU function select

    // FIFO interface (write side in REF_CLK domain)
    input  wire                       FIFO_full,     // asserted when FIFO is full
    output reg  [DATA_WIDTH-1:0]      FIFO_wr_data,  // data to write into FIFO
    output reg                        FIFO_wr_inc,   // 1-cycle pulse to increment FIFO write

    // Clock enables
    output reg                        gated_clk_enable,       // enable for ALU gated clock
    output reg                        div_clk_enable,     // clock divider enable (always ON)

    // Register File interface
    input  wire [DATA_WIDTH-1:0]      rd_reg,        // data read from regfile
    input  wire                       rd_reg_valid,  // asserted when rd_reg is valid
    output reg  [DATA_WIDTH-1:0]      wr_reg,        // data to write into regfile
    output reg  [ADDR_WIDTH-1:0]      addr,          // regfile address bus
    output reg                        read_enable,          // read enable
    output reg                        write_enable           // write enable
  );

  // ==========================================================================
  // FSM State Encoding --> binary encoding (Gray encoding won't help here as in a transition more than one bit can change)
  // Each state corresponds to a "frame" or step in a command sequence.
  // ==========================================================================
  localparam [3:0]
             IDLE          = 4'b0000, // waiting for a command frame from UART
             RF_WR_ADDR    = 4'b0001, // waiting for regfile write address
             RF_WR_DATA    = 4'b0011, // waiting for regfile write data
             RF_RD_ADDR    = 4'b0010, // waiting for regfile read address
             FIFO_WRITE_RF = 4'b0110, // push regfile read result into FIFO
             OPERAND_A     = 4'b0111, // waiting for ALU operand A
             OPERAND_B     = 4'b0101, // waiting for ALU operand B
             ALU_FUN    = 4'b0100, // waiting for ALU function code
             ALU_OUT_STORE  = 4'b1100, // waiting for ALU_out_valid to latch result
             ALU_FIRST_BYTE  = 4'b1101, // push lower ALU_out byte to FIFO
             ALU_SECOND_BYTE  = 4'b1111; // push upper ALU_out byte to FIFO

  // FSM states
  reg [3:0] current_state, next_state;

  // ==========================================================================
  // Helper registers for multi-cycle operations
  // ==========================================================================
  reg [ADDR_WIDTH-1:0]     addr_reg;          // holds address during RF write
  reg                      addr_reg_check;    // checks to save RF write addr
  reg [DATA_WIDTH*2-1:0]   ALU_out_reg;       // holds ALU output when valid
  reg                      ALU_out_reg_check; // checks to save ALU_OUT
  // ==========================================================================
  // State Transition (Sequential logic)
  // ==========================================================================

  always @(posedge clk or negedge reset_n)
  begin
    if (!reset_n)
      current_state <= IDLE;
    else
      current_state <= next_state;
  end

  // ==========================================================================
  // Next State logic (Combinational)
  // ==========================================================================
  always @(*)
  begin
    next_state = IDLE; 
    case (current_state)
      // ------------------------------------------------
      // IDLE: decode command opcode from UART
      // ------------------------------------------------
      IDLE:
      begin
        if (UART_rx_valid)
        begin
          if      (UART_rx_data == 8'hAA)
            next_state = RF_WR_ADDR; // regfile write
          else if (UART_rx_data == 8'hBB)
            next_state = RF_RD_ADDR; // regfile read
          else if (UART_rx_data == 8'hCC)
            next_state = OPERAND_A;  // ALU with operands
          else if (UART_rx_data == 8'hDD)
            next_state = ALU_FUN;    // ALU without operands
          else
            next_state = IDLE;       // invalid command
        end
        else
        begin
          next_state = IDLE;
        end
      end
      // ------------------------------------------------
      // Register File Write: Addr → Data
      // ------------------------------------------------
      RF_WR_ADDR:
      begin
        if (UART_rx_valid)
          next_state = RF_WR_DATA;
        else
          next_state = RF_WR_ADDR;
      end

      RF_WR_DATA:
      begin
        if (UART_rx_valid)
          next_state = IDLE;
        else
          next_state = RF_WR_DATA;
      end
      // ------------------------------------------------
      // Register File Read: Addr → FIFO
      // ------------------------------------------------
      RF_RD_ADDR:
      begin
        if (UART_rx_valid)
          next_state = FIFO_WRITE_RF;
        else
          next_state = RF_RD_ADDR;
      end

      FIFO_WRITE_RF:
      begin
        if (rd_reg_valid && !FIFO_full)
          next_state = IDLE;
        else
          next_state = FIFO_WRITE_RF;
      end
      // ------------------------------------------------
      // ALU Operation with Operands
      // ------------------------------------------------
      OPERAND_A:
      begin
        if (UART_rx_valid)
          next_state = OPERAND_B;
        else
          next_state = OPERAND_A;
      end

      OPERAND_B:
      begin
        if (UART_rx_valid)
          next_state = ALU_FUN;
        else
          next_state = OPERAND_B;
      end

      // ------------------------------------------------
      // ALU Function and Output handling
      // ------------------------------------------------
      ALU_FUN:
      begin
        if (UART_rx_valid)
          next_state = ALU_OUT_STORE;
        else
          next_state = ALU_FUN;
      end

      ALU_OUT_STORE:
      begin
        if (ALU_out_valid)
          next_state = ALU_FIRST_BYTE;
        else
          next_state = ALU_OUT_STORE;
      end

      // ------------------------------------------------
      // ALU Result transmission (2 bytes)
      // ------------------------------------------------
      ALU_FIRST_BYTE:
      begin
        if (!FIFO_full)
          next_state = ALU_SECOND_BYTE;
        else
          next_state = ALU_FIRST_BYTE;
      end

      ALU_SECOND_BYTE:
      begin
        if (!FIFO_full)
          next_state = IDLE;
        else
          next_state = ALU_SECOND_BYTE;
      end

      // ------------------------------------------------
      // Default
      // ------------------------------------------------
      default:
        next_state = IDLE;
    endcase
  end
  // ==========================================================================
  // Output Logic (Combinational)
  // ==========================================================================
  always @(*)
  begin
    // ---------------- Default values ----------------
    write_enable       = 1'b0;
    read_enable        = 1'b0;
    gated_clk_enable   = 1'b0;
    div_clk_enable     = 1'b1;   // clock divider always enabled
    ALU_enable         = 1'b0;
    FIFO_wr_inc        = 1'b0;

    addr               = {ADDR_WIDTH{1'b0}};
    wr_reg             = {DATA_WIDTH{1'b0}};
    ALU_fun            = 4'b0000;
    FIFO_wr_data       = {DATA_WIDTH{1'b0}};

    ALU_out_reg_check  = 1'b0;
    addr_reg_check     = 1'b0;

    // ---------------- Output behavior per state ----------------
    case (current_state)
      RF_WR_ADDR:
      begin
        if (UART_rx_valid)
          addr_reg_check = 1'b1;
      end

      RF_WR_DATA:
      begin
        if (UART_rx_valid)
        begin
          write_enable = 1'b1;
          addr         = addr_reg;
          wr_reg       = UART_rx_data;
        end
      end

      RF_RD_ADDR:
      begin
        if (UART_rx_valid)
        begin
          read_enable = 1'b1;
          addr        = UART_rx_data[ADDR_WIDTH-1:0];
        end
      end

      FIFO_WRITE_RF:
      begin
        if (rd_reg_valid && !FIFO_full)
        begin
          FIFO_wr_data = rd_reg;
          FIFO_wr_inc  = 1'b1;
        end
      end

      OPERAND_A:
      begin
        if (UART_rx_valid)
        begin
          write_enable = 1'b1;
          addr         = {ADDR_WIDTH{1'b0}}; // Reg0
          wr_reg       = UART_rx_data;
        end
      end

      OPERAND_B:
      begin
        if (UART_rx_valid)
        begin
          write_enable = 1'b1;
          addr         = {{(ADDR_WIDTH-1){1'b0}}, 1'b1}; // Reg1
          wr_reg       = UART_rx_data;
        end
      end

      ALU_FUN:
      begin
        gated_clk_enable = 1'b1;
        if (UART_rx_valid)
        begin
          ALU_enable = 1'b1;
          ALU_fun    = UART_rx_data[3:0];
        end
      end

      ALU_OUT_STORE:
      begin
        gated_clk_enable = 1'b1;
        if (ALU_out_valid)
          ALU_out_reg_check = 1'b1;
      end

      ALU_FIRST_BYTE:
      begin
        gated_clk_enable = 1'b1;
        if (!FIFO_full)
        begin
          FIFO_wr_inc  = 1'b1;
          FIFO_wr_data = ALU_out_reg[DATA_WIDTH-1:0];
        end
      end

      ALU_SECOND_BYTE:
      begin
        gated_clk_enable = 1'b1;
        if (!FIFO_full)
        begin
          FIFO_wr_inc  = 1'b1;
          FIFO_wr_data = ALU_out_reg[ALU_OUT_WIDTH-1:DATA_WIDTH];
        end
      end

      default:
      begin
        write_enable       = 1'b0;
        read_enable        = 1'b0;
        gated_clk_enable   = 1'b0;
        div_clk_enable     = 1'b1;   // clock divider always enabled
        ALU_enable         = 1'b0;
        FIFO_wr_inc        = 1'b0;

        addr               = {ADDR_WIDTH{1'b0}};
        wr_reg             = {DATA_WIDTH{1'b0}};
        ALU_fun            = 4'b0000;
        FIFO_wr_data       = {DATA_WIDTH{1'b0}};

        ALU_out_reg_check  = 1'b0;
        addr_reg_check     = 1'b0;
      end
    endcase
  end
  // ==========================================================================
  // Sequential storage for multi-cycle fields
  // ==========================================================================

  // Store register file address during RF write
  always @(posedge clk or negedge reset_n)
  begin
    if (!reset_n)
      addr_reg <= {ADDR_WIDTH{1'b0}};
    else if (addr_reg_check)
      addr_reg <= UART_rx_data[ADDR_WIDTH-1:0];
  end

  // Store ALU output when ALU_out_valid
  always @(posedge clk or negedge reset_n)
  begin
    if (!reset_n)
      ALU_out_reg <= {ALU_OUT_WIDTH{1'b0}};
    else if (ALU_out_reg_check)
      ALU_out_reg <= ALU_out;
  end

endmodule

