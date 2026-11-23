module registerfile #(
    parameter WORD_SIZE = 8,
    parameter DEPTH     = 16,
    parameter ADDR_SIZE = $clog2(DEPTH)
  ) (
    input  wire                   clk,
    input  wire                   rst_n,
    input  wire                   wr_en,
    input  wire                   rd_en,
    input  wire [ADDR_SIZE-1:0]   address,
    input  wire [WORD_SIZE-1:0]   wr_data,
    output reg  [WORD_SIZE-1:0]   rd_data,
    output reg                    rd_data_valid,
    output wire [WORD_SIZE-1:0]   reg0,
    output wire [WORD_SIZE-1:0]   reg1,
    output wire [WORD_SIZE-1:0]   reg2,
    output wire [WORD_SIZE-1:0]   reg3
  );

  // register file 
  reg [WORD_SIZE-1:0] reg_file [0:DEPTH-1];
  integer i;

  always @(posedge clk or negedge rst_n)
  begin
    if (!rst_n)
    begin
      rd_data     <= {WORD_SIZE{1'b0}};
      rd_data_valid <= 1'b0;

      for (i = 0; i < DEPTH; i = i + 1)
      begin
        if (i == 2)
        // reg2[0]: Parity Enable (default = 1), reg2[1]: Parity Type (default = 0), reg2[7:2]: Prescale (default = 8) 
          reg_file[i] <= 'b001000_01; 
        else if (i == 3)
        // reg3[7:0]: Division ratio (default = 32)
          reg_file[i] <= 'b0010_0000; 
        else
          reg_file[i] <= {WORD_SIZE{1'b0}};
      end
    end
    else if (wr_en && !rd_en)
    begin
      // write operation
      reg_file[address] <= wr_data;
      rd_data_valid <= 1'b0;
    end
    else if (rd_en && !wr_en)
    begin
      // read operation
      rd_data     <= reg_file[address];
      rd_data_valid <= 1'b1;
    end
    else
    begin
      rd_data_valid <= 1'b0;
    end
  end

  assign reg0 = reg_file[0];
  assign reg1 = reg_file[1];
  assign reg2 = reg_file[2];
  assign reg3 = reg_file[3];

endmodule
