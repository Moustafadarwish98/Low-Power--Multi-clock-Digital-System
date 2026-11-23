`timescale 1ns/1ps
module system_tb;
  // Parameters
  localparam REF_CLK_PERIOD = 10;          // 100 MHz REF clock
  localparam REF_HALF_PERIOD = REF_CLK_PERIOD / 2.0;
  localparam UART_CLK_PERIOD = 271.267;    // 3.6864 MHz UART clock
  localparam UART_HALF_PERIOD = UART_CLK_PERIOD / 2.0;
  localparam DATA_WIDTH_tb = 8;
  localparam FRAME_WIDTH_tb = DATA_WIDTH_tb + 'd3;
  localparam PRESCALE_WIDTH_tb = 'd6;
  localparam NUM_STAGES_tb = 2;
  localparam RF_DEPTH_tb     = 16;
  localparam RF_ADDR_WIDTH_tb = $clog2(RF_DEPTH_tb);
  localparam FIFO_DEPTH_tb = 8;
  localparam FIFO_ADDR_WIDTH_tb = $clog2(FIFO_DEPTH_tb);
  localparam ALU_OUT_WIDTH_tb = 2 * DATA_WIDTH_tb;

  //  Commands //

  // Register File Write master_UART_in
  localparam RF_WR_CMD = 8'hAA;
  // Register File Read master_UART_in
  localparam RF_RD_CMD = 8'hBB;
  // ALU Operation master_UART_in with operand
  localparam ALU_OPER_W_OP_CMD = 8'hCC;
  // ALU Operation master_UART_in with No operand
  localparam ALU_OPER_W_NOP_CMD = 8'hDD;

  // DUT Signals declaration
  reg reset_n_tb;
  reg UART_clk_tb;
  reg REF_clk_tb;
  reg UART_rx_in_tb;
  wire UART_tx_out_tb;
  wire parity_error_tb;
  wire framing_error_tb;

  integer error_count;

  // DUT Instantiation
  system_top #(
               .DATA_WIDTH(DATA_WIDTH_tb),
               .FRAME_WIDTH(FRAME_WIDTH_tb),
               .PRESCALE_WIDTH(PRESCALE_WIDTH_tb) ,
               .NUM_STAGES(NUM_STAGES_tb),
               .RF_DEPTH(RF_DEPTH_tb),
               .RF_ADDR_WIDTH(RF_ADDR_WIDTH_tb),
               .FIFO_DEPTH(FIFO_DEPTH_tb) ,
               .FIFO_ADDR_WIDTH(FIFO_ADDR_WIDTH_tb) ,
               .ALU_OUT_WIDTH(ALU_OUT_WIDTH_tb)
             ) dut_system_top (
               .RST_N(reset_n_tb),
               .UART_CLK(UART_clk_tb),
               .REF_CLK(REF_clk_tb),
               .UART_RX_IN(UART_rx_in_tb),
               .UART_TX_O(UART_tx_out_tb),
               .parity_error(parity_error_tb),
               .framing_error(framing_error_tb)
             );

  // Clock Generation
  always #(REF_HALF_PERIOD) REF_clk_tb = ~REF_clk_tb;
  always #(UART_HALF_PERIOD) UART_clk_tb = ~UART_clk_tb;

  // Dump file
  initial
  begin
    $dumpfile("system_top.vcd");
    $dumpvars;
  end

  // Test stimulus
  initial
  begin
    // Initialization
    initialize();

    // Apply reset
    reset();

    // Configuration //

    // Set Div Ratio  Value to 32
    $display("\nConfig: Set Div Ratio  Value to 32");
    Register_File_write_command(8'h03, 8'b00100000);
    Check_write_command(8'h03, 8'b00100000);
    // Read register 2
    Register_File_read_command(8'h03);
    Check_read_command(8'h03);

    // Set Prescale Value to 16
    $display("\nConfig: Set Prescale Value to 16");
    Register_File_write_command(8'h02, 8'b010000_01);
    Check_write_command(8'h02, 8'b010000_01);
    // Read register 2
    Register_File_read_command(8'h02);
    Check_read_command(8'h02);

    // Test case 1: Register File Write master_UART_in (0xAA)
    $display("\nTest case 1: Register File Write master_UART_in");
    Register_File_write_command(8'h04, 8'b0101_0110);
    Check_write_command(8'h04, 8'b0101_0110);

    // Test case 2: Register File Write master_UART_in (0xAA)
    $display("\nTest case 2: Register File 2 consecutives Write commands");
    Register_File_write_command(8'h07, 8'b1111_0000);
    Check_write_command(8'h07, 8'b1111_0000);

    // Test case 3: Register File Read master_UART_in (0xBB)
    $display("\nTest case 3: Register File Read master_UART_in");
    Register_File_read_command(8'h04);
    Check_read_command(8'h04);

    // Test case 4: Register File Read master_UART_in (0xBB)
    $display("\nTest case 2: Register File 2 consecutive Read commands");
    Register_File_read_command(8'h07);
    Check_read_command(8'h07);

    // Test case 5: Register File Write master_UART_in (0xAA) after Read
    $display("\nTest case 5: Register File Write master_UART_in (0xAA) after Read");
    Register_File_write_command(8'h0b, 8'b0111_0111);
    Check_write_command(8'h0b, 8'b0111_0111);

    // Test case 6: Register File Read master_UART_in (0xBB) after write
    $display("\nTest case 6: Register File Read master_UART_in (0xBB) after write");
    Register_File_read_command(8'h0b);
    Check_read_command(8'h0b);

    // Change Prescale Value to 8
    $display("\nChange Prescale Value to 8");
    Register_File_write_command(8'h02, 8'b001000_0_1);
    Check_write_command(8'h02, 8'b001000_0_1);
    Register_File_read_command(8'h02);
    Check_read_command(8'h02);

    // Test case 7: ALU Operation master_UART_in with operand (0xCC)
    $display("\nTest case 7: ALU Operation master_UART_in with operand (0xCC)");
    $display("B greater than A ");
    ALU_Operation_command_with_operand(8'd7, 8'd13, 4'b1100);
    Check_ALU_operation(4'b1100);

    // Test case 8: ALU Operation master_UART_in with operand (0xCC)
    $display("\nTest case 8: ALU Operation master_UART_in with operand (0xCC)");
    $display("A greater than B ");
    ALU_Operation_command_with_operand(8'd7, 8'd13, 4'b1011);
    Check_ALU_operation(4'b1011);

    // Test case 9: ALU Operation master_UART_in with operand (0xCC)
    $display("\nTest case 9: ALU Operation master_UART_in with operand (0xCC)");
    $display("A equal B ");
    ALU_Operation_command_with_operand(8'd7, 8'd7, 4'b1010);
    Check_ALU_operation(4'b1010);

    // Test case 10: ALU Operation master_UART_in with operand (0xCC)
    $display("\nTest case 10: ALU Operation master_UART_in with operand (0xCC)");
    $display("A XOR B ");
    ALU_Operation_command_with_operand(8'd7, 8'd7, 4'b1000);
    Check_ALU_operation(4'b1000);

    // Test case 11: ALU Operation master_UART_in with No operand (0xDD)
    $display("\nTest case 11: ALU Operation master_UART_in with No operand (0xDD)");
    $display("Addition");
    ALU_Operation_command_with_No_operand(4'b0000);
    Check_ALU_operation(4'b0000);

    // Test case 12: Change Prescale Value to 32, ALU Operation master_UART_in with No operand
    $display("\nTest case 12: Change Prescale Value to 32, ALU Operation master_UART_in with No operand");
    $display("Multiplication ");
    Register_File_write_command(8'h02, 8'b100000_0_1);
    Check_write_command(8'h02, 8'b100000_0_1);
    Register_File_read_command(8'h02);
    Check_read_command(8'h02);
    ALU_Operation_command_with_No_operand(4'b0010);
    Check_ALU_operation(4'b0010);

    // Test case 13: Register File Write master_UART_in (0xAA)
    $display("\nTest case 13: Register File Write master_UART_in (0xAA)");
    Register_File_write_command(8'h0f, 8'b0000_1000);
    Check_write_command(8'h0f, 8'b0000_1000);

    // Test case 14: Register File Read master_UART_in (0xBB)
    $display("\nTest case 14: Register File Read master_UART_in (0xBB)");
    Register_File_read_command(8'h0f);
    Check_read_command(8'h0f);

    if (error_count)
    begin
      $display("\nTests completed with %0d errors", error_count);
    end
    else
    begin
      $display("\nALL Tests Passed with %0d errors", error_count);
    end
    #10;
    $stop;
  end

  // Tasks //

  // Reset
  task reset;
    begin
      reset_n_tb = 1'b1;
      repeat(2) @(negedge REF_clk_tb);
      reset_n_tb = 1'b0;
      repeat(2) @(negedge REF_clk_tb);
      reset_n_tb = 1'b1;
    end
  endtask

  // initialize
  task initialize;
    begin
      reset_n_tb = 1'b1;
      UART_clk_tb = 0;
      REF_clk_tb = 0;
      UART_rx_in_tb = 1;
      error_count = 0;
    end
  endtask

  // Send Command
  task UART_frame;
    input [DATA_WIDTH_tb - 1 :0] master_UART_in;
    integer i;
    begin
      // Start bit = 0
      UART_rx_in_tb = 0;
      @(negedge dut_system_top.dut_UART.clk_tx);
      //  8-bit data (LSB first)
      for (i = 0; i < DATA_WIDTH_tb; i = i + 1)
      begin
        UART_rx_in_tb = master_UART_in[i];
        @(negedge dut_system_top.dut_UART.clk_tx);
      end
      // parity bit
      if(dut_system_top.dut_register_file.reg2[0])
      begin
        case(dut_system_top.dut_register_file.reg2[1])
          1'b0 :
            UART_rx_in_tb <= ^master_UART_in  ;     // Even Parity
          1'b1 :
            UART_rx_in_tb <= ~^master_UART_in ;     // Odd Parity
        endcase
        @ (negedge dut_system_top.dut_UART.clk_tx);
      end
      //  Stop bit = 1
      UART_rx_in_tb = 1;
      @(negedge dut_system_top.dut_UART.clk_tx);
      UART_rx_in_tb = 0; // For consecutive frames --> Directly to START state
      @(negedge dut_system_top.dut_UART.clk_tx);
    end
  endtask


  //  Register File Write //

  // Register File Write master_UART_in
  task Register_File_write_command;
    input  [DATA_WIDTH_tb-1:0]  address ;
    input  [DATA_WIDTH_tb-1:0]  data ;
    begin
      UART_frame(RF_WR_CMD);   // Write Command
      $display("----------------------------- Command Frame ------------------------------");
      frame_results();
      UART_frame(address);        // Write Address
      $display("----------------------------- Address Frame ------------------------------");
      frame_results();
      UART_frame(data);        // Write Data
      $display("----------------------------- DATA Frame ------------------------------");
      frame_results();
      UART_rx_in_tb = 1;
      $display("Data %b written in Address 0x%h", data, address);
    end
  endtask

  // Check Write Operation
  task Check_write_command;
    input  [DATA_WIDTH_tb-1:0]  address;
    input  [DATA_WIDTH_tb-1:0]  data;
    begin
      @(posedge REF_clk_tb);
      if(dut_system_top.dut_register_file.reg_file[address[RF_ADDR_WIDTH_tb-1:0]] == data)
      begin
        $display("Write Operation Passed in Address 0x%h with Data %b", address, dut_system_top.dut_register_file.reg_file[address[RF_ADDR_WIDTH_tb-1:0]] );
      end
      else
      begin
        $display("Write Operation Faield in Address 0x%h with Data %b", address, dut_system_top.dut_register_file.reg_file[address[RF_ADDR_WIDTH_tb-1:0]] );
        error_count = error_count + 1;
      end
    end
  endtask

  // Register File Read //

  // Register File Read master_UART_in
  task Register_File_read_command;
    input  [DATA_WIDTH_tb-1:0]  address;
    begin
      UART_frame(RF_RD_CMD);   // Read Command
      $display("----------------------------- Command Frame ------------------------------");
      frame_results();
      UART_frame(address);        // Read Address
      $display("----------------------------- Address Frame ------------------------------");
      frame_results();
      UART_rx_in_tb = 1;
      $display("Reading Data at Address 0x%h", address);
    end
  endtask

  // Check Read Operation
  task Check_read_command;
    input  [DATA_WIDTH_tb-1:0]  address;
    reg    [FRAME_WIDTH_tb - 1:0] system_output, expected_out;
    reg    parity_bit;
    integer  i;

    begin
      @(posedge dut_system_top.dut_UART.tx_busy)
       for(i=0; i<FRAME_WIDTH_tb; i=i+1)
       begin
         system_output[i] = UART_tx_out_tb;
         @(negedge dut_system_top.dut_UART.clk_tx);
       end

       // parity bit
       if(dut_system_top.dut_register_file.reg2[0] == 1'b1)   // check for Parity Enable if activated or not
       begin
         if(dut_system_top.dut_register_file.reg2[1] == 1'b0)
         begin
           parity_bit = ^dut_system_top.dut_register_file.reg_file[address[RF_ADDR_WIDTH_tb-1:0]] ;  // Even Parity
         end
         else
         begin
           parity_bit = ~^dut_system_top.dut_register_file.reg_file[address[RF_ADDR_WIDTH_tb-1:0]] ; // Odd Parity
         end
       end
       // expected output
       if(dut_system_top.dut_register_file.reg2[0] == 1'b1)
         expected_out = {1'b1, parity_bit, dut_system_top.dut_register_file.reg_file[address[RF_ADDR_WIDTH_tb-1:0]] , 1'b0} ; // there is parity bit
      else
        expected_out = {1'b1, 1'b1, dut_system_top.dut_register_file.reg_file[address[RF_ADDR_WIDTH_tb-1:0]] , 1'b0} ;  // no parity so send idle bit value
      // check output
      if(system_output == expected_out)
      begin
        $display("Read Operation Passed in Address 0x%h with Data %b, expected = %b", address, system_output[8:1],expected_out[8:1]);
      end
      else
      begin
        $display("Read Operation Faield in Address 0x%h with Data %b, expected = %b", address, system_output[8:1],expected_out[8:1]);
        error_count = error_count + 1;
      end
    end
  endtask

  // ALU Operation //

  // ALU Operation master_UART_in with operand
  task ALU_Operation_command_with_operand;
    input  [DATA_WIDTH_tb-1:0]  Operand_A;
    input  [DATA_WIDTH_tb-1:0]  Operand_B;
    input  [DATA_WIDTH_tb-1:0]  ALU_FUN;
    begin
      UART_frame(ALU_OPER_W_OP_CMD);        // Send ALU Operation master_UART_in with operand Command
      $display("----------------------------- Command Frame ------------------------------");
      frame_results();
      UART_frame(Operand_A);                // Send Operand A
      $display("----------------------------- Operand A Frame ------------------------------");
      frame_results();
      UART_frame(Operand_B);                // Send Operand B
      $display("----------------------------- Operand B Frame ------------------------------");
      frame_results();
      UART_frame(ALU_FUN);                  // Send ALU FUN
      $display("----------------------------- ALU FUN Frame ------------------------------");
      frame_results();
      UART_rx_in_tb = 1;
      $display("Sent Operand A = %0d and Operand B = %0d with ALU FUN %b", Operand_A, Operand_B, ALU_FUN[3:0]);
    end
  endtask

  // ALU Operation master_UART_in with No operand
  task ALU_Operation_command_with_No_operand;
    input  [DATA_WIDTH_tb-1:0]  ALU_FUN;
    begin
      UART_frame(ALU_OPER_W_NOP_CMD);        // Send ALU Operation master_UART_in with No operand Command
      $display("----------------------------- Command Frame ------------------------------");
      frame_results();
      UART_frame(ALU_FUN);                   // Send ALU FUN
      $display("----------------------------- ALU FUN Frame ------------------------------");
      frame_results();
      UART_rx_in_tb = 1;
      $display("Sent ALU FUN %b", ALU_FUN[3:0]);
    end
  endtask

  // Check ALU Operation
  task Check_ALU_operation;
    input  [DATA_WIDTH_tb-1:0]     ALU_FUN;
    integer                        i;
    reg    [FRAME_WIDTH_tb-1:0]                  ALU_first_byte_expected, ALU_first_byte_out,
           ALU_second_byte_expected, ALU_second_byte_out;
    reg                            ALU_first_byte_expected_parity_bit , ALU_second_byte_expected_parity_bit;
    reg    [ALU_OUT_WIDTH_tb-1:0]   ALU_OUT;

    begin
      @(posedge dut_system_top.dut_UART.tx_busy)
       for(i=0; i<FRAME_WIDTH_tb; i=i+1)
       begin
         ALU_first_byte_out[i] = UART_tx_out_tb ;
         @(negedge dut_system_top.dut_UART.clk_tx) ;
       end
       @(posedge dut_system_top.dut_UART.tx_busy)
        for(i=0; i<FRAME_WIDTH_tb; i=i+1)
        begin
          ALU_second_byte_out[i] = UART_tx_out_tb;
          @(negedge dut_system_top.dut_UART.clk_tx) ;
        end

        case (ALU_FUN)
          4'b0000 :
          begin
            ALU_OUT = dut_system_top.dut_register_file.reg_file[0] + dut_system_top.dut_register_file.reg_file[1];    // Addition
          end

          4'b0001 :
          begin
            ALU_OUT = dut_system_top.dut_register_file.reg_file[0] - dut_system_top.dut_register_file.reg_file[1];    // Subtraction
          end

          4'b0010 :
          begin
            ALU_OUT = dut_system_top.dut_register_file.reg_file[0] * dut_system_top.dut_register_file.reg_file[1];    // Multiplication
          end

          4'b0011 :
          begin
            ALU_OUT = dut_system_top.dut_register_file.reg_file[0] / dut_system_top.dut_register_file.reg_file[1];    // Divison
          end

          4'b0100 :
          begin
            ALU_OUT = dut_system_top.dut_register_file.reg_file[0] & dut_system_top.dut_register_file.reg_file[1];   // Logical AND
          end

          4'b0101 :
          begin
            ALU_OUT = dut_system_top.dut_register_file.reg_file[0] | dut_system_top.dut_register_file.reg_file[1];   // Logical OR
          end

          4'b0110 :
          begin
            ALU_OUT = ~ (dut_system_top.dut_register_file.reg_file[0] & dut_system_top.dut_register_file.reg_file[1]); // Logical NAND
          end

          4'b0111 :
          begin
            ALU_OUT = ~ (dut_system_top.dut_register_file.reg_file[0] | dut_system_top.dut_register_file.reg_file[1]); // Logical NOR
          end

          4'b1000 :
          begin
            ALU_OUT = dut_system_top.dut_register_file.reg_file[0] ^ dut_system_top.dut_register_file.reg_file[1];    // Logical XOR
          end

          4'b1001 :
          begin
            ALU_OUT = ~ (dut_system_top.dut_register_file.reg_file[0] ^ dut_system_top.dut_register_file.reg_file[1]); // Logical XNOR
          end

          4'b1010 :
          begin
            if (dut_system_top.dut_register_file.reg_file[0] == dut_system_top.dut_register_file.reg_file[1])    // Equal
            begin
              ALU_OUT = 'd1;
            end
            else
            begin
              ALU_OUT = 'd0;
            end
          end

          4'b1011 :
          begin
            if (dut_system_top.dut_register_file.reg_file[0] > dut_system_top.dut_register_file.reg_file[1])   // Greater than
            begin
              ALU_OUT = 'd2;
            end
            else
            begin
              ALU_OUT = 'd0;
            end
          end

          4'b1100 :
          begin
            if (dut_system_top.dut_register_file.reg_file[0] < dut_system_top.dut_register_file.reg_file[1])   // Less than
            begin
              ALU_OUT = 'd3;
            end
            else
            begin
              ALU_OUT = 'd0;
            end
          end

          4'b1101 :
          begin
            ALU_OUT = dut_system_top.dut_register_file.reg_file[0] >> 1;    // Logical Shift left
          end

          4'b1110 :
          begin
            ALU_OUT = dut_system_top.dut_register_file.reg_file[0] << 1;   // Logical Shift right
          end

          default :
          begin
            ALU_OUT = 'b0;
          end
        endcase
        //  expected ALU_OUT  //

        // ALU 1st Byte expected parity
        if(dut_system_top.dut_register_file.reg2[0])
        begin
          if(dut_system_top.dut_register_file.reg2[1] == 1'b0)
          begin
            ALU_first_byte_expected_parity_bit = ^ALU_OUT[DATA_WIDTH_tb-1:0];     // Even Parity
          end
          else
          begin
            ALU_first_byte_expected_parity_bit = ~^ALU_OUT[DATA_WIDTH_tb-1:0];    // Odd Parity
          end
        end

        // ALU 2nd Byte expected parity
        if(dut_system_top.dut_register_file.reg2[0])
        begin
          if(dut_system_top.dut_register_file.reg2[1] == 1'b0)
          begin
            ALU_second_byte_expected_parity_bit = ^ALU_OUT[ALU_OUT_WIDTH_tb-1:DATA_WIDTH_tb];     // Even Parity
          end
          else
          begin
            ALU_second_byte_expected_parity_bit = ~^ALU_OUT[ALU_OUT_WIDTH_tb-1:DATA_WIDTH_tb];    // Odd Parity
          end
        end
        // ALU_first_byte_expected
        if(dut_system_top.dut_register_file.reg2[0])
        begin
          ALU_first_byte_expected = {1'b1, ALU_first_byte_expected_parity_bit, ALU_OUT[DATA_WIDTH_tb-1:0], 1'b0};   // there is parity bit
        end
        else
        begin
          ALU_first_byte_expected = {1'b1, 1'b1, ALU_OUT[DATA_WIDTH_tb-1:0], 1'b0} ;     // no parity so send idle bit value
        end
        // ALU_second_byte_expected
        if(dut_system_top.dut_register_file.reg2[0])
        begin
          ALU_second_byte_expected = {1'b1, ALU_second_byte_expected_parity_bit, ALU_OUT[ALU_OUT_WIDTH_tb-1:DATA_WIDTH_tb], 1'b0};   // there is parity bit
        end
        else
        begin
          ALU_second_byte_expected = {1'b1, 1'b1, ALU_OUT[ALU_OUT_WIDTH_tb-1:DATA_WIDTH_tb], 1'b0} ; // no parity so send idle bit value
        end
        // check output
        if(ALU_first_byte_out == ALU_first_byte_expected && ALU_second_byte_out == ALU_second_byte_expected)
        begin
          $display("ALU Operation Passed with Operand A = %0d and Operand B = %0d . Result = %0d", dut_system_top.dut_register_file.reg0, dut_system_top.dut_register_file.reg1, ALU_OUT);
        end
        else
        begin
          $display("ALU Operation Failed with Operand A = %0d and Operand B = %0d with Result = %0d | for 1st byte got = %b and expected %b | for 2nd byte = %b and expected %b", dut_system_top.dut_register_file.reg0, dut_system_top.dut_register_file.reg1, ALU_OUT, ALU_first_byte_out, ALU_first_byte_expected, ALU_second_byte_out, ALU_second_byte_expected);
          error_count = error_count + 1;
        end
      end
    endtask

    task frame_results;

      // Frame results
      $display("\n----------------------------- Frame Results ------------------------------");
      $display("parity_error    = %b", dut_system_top.dut_UART.dut_UART_RX.u_parity_check.parity_error);
      $display("framing_error      = %b", dut_system_top.dut_UART.dut_UART_RX.u_stop_check.stop_error);
      $display("Data received   = %b,, in hex = 0x%h", dut_system_top.dut_UART.dut_UART_RX.p_data, dut_system_top.dut_UART.dut_UART_RX.p_data);
      $display("data_valid      = %b", dut_system_top.dut_UART.dut_UART_RX.data_valid);
      $display("------------------------------ End Results -------------------------------\n");
    endtask

  endmodule
