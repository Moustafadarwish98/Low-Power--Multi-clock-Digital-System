`timescale 1ns/1ps

module FIFO_tb();

  // Parameters
  parameter DATA_WIDTH = 8;
  parameter DEPTH      = 8;
  parameter ADDR_WIDTH = $clog2(DEPTH);
  parameter NUM_STAGES = 2;

  // Clock periods
  localparam W_CLK_PERIOD       = 10;   // 100 MHz
  localparam W_CLK_HALF_PERIOD  = W_CLK_PERIOD/2.0;
  localparam R_CLK_PERIOD       = 25;   // 40 MHz
  localparam R_CLK_HALF_PERIOD  = R_CLK_PERIOD/2.0;

  // DUT signals
  reg  w_clk, r_clk;
  reg  [DATA_WIDTH-1:0] w_data;
  wire [DATA_WIDTH-1:0] r_data;
  wire full;
  wire empty;
  reg  w_inc;
  reg  r_inc;
  reg  w_reset_n;
  reg  r_reset_n;

  // DUT instantiation
  FIFO_top #(
             .DATA_WIDTH(DATA_WIDTH),
             .DEPTH(DEPTH),
             .ADDR_WIDTH(ADDR_WIDTH),
             .NUM_STAGES(NUM_STAGES)
           ) dut (
             .w_clk(w_clk),
             .r_clk(r_clk),

             .w_reset_n(w_reset_n),
             .w_inc(w_inc),
             .w_data(w_data),

             .r_reset_n(r_reset_n),
             .r_inc(r_inc),

             .full(full),
             .empty(empty),
             .r_data(r_data)
           );

  // Golden memory & pointers
  reg [DATA_WIDTH-1:0] gold_mem [0:DEPTH-1]; // golden FIFO
  integer wb_ptr = 0;       // write pointer
  integer rb_ptr = 0;       // read pointer
  integer stored_count = 0; // number of valid entries in gold_mem

  // Error counter
  integer error_count = 0;

  integer i;

  initial
  begin
    $dumpfile("fifo_tb.vcd");
    $dumpvars();
  end


  // Clock generation
  always #( W_CLK_HALF_PERIOD )  w_clk = ~w_clk;   // write clock faster
  always #( R_CLK_HALF_PERIOD )  r_clk = ~r_clk;   // read clock slower

  initial
  begin
    initialization();

    #(W_CLK_PERIOD);
    apply_reset();

    $display(" Reset applied and released.", );
  end

  task initialization;
    begin
      w_clk     = 0;
      r_clk     = 0;
      w_reset_n = 1;
      r_reset_n = 1;
      w_inc     = 0;
      r_inc     = 0;
      w_data    = 0;

      wb_ptr = 0;
      rb_ptr = 0;
      stored_count = 0;
      error_count = 0;
    end
  endtask

  task apply_reset;
    begin
      w_reset_n = 0;
      r_reset_n = 0;
      #(W_CLK_PERIOD);
      w_reset_n = 1;
      r_reset_n = 1;
    end
  endtask

  task write_case1;
    begin
      // TEST CASE 1: Write 9 values
      $display("\n--- WRITE: Test Case 1---");
      for (i = 0; i < 9; i = i + 1)
      begin
        @(posedge w_clk);
        if (!full)
        begin
          w_data = i + 4 * i;
          w_inc  = 1;
          $display(" WRITE: w_data=%0d, wb_ptr=%0d, stored=%0d, full=%b",
                   w_data, wb_ptr, stored_count, full);
        end
        @(posedge w_clk);
        w_inc = 0;
      end
      $display("\n--- WRITE: END Test Case 1---");

    end
  endtask

  task write_case2;
    begin
      // TEST CASE 2:  fill fifo
      $display("\n--- WRITE: Test Case 2 (Fill FIFO) ---");
      for (i = 0; i < DEPTH * 2; i = i + 1)
      begin
        @(posedge w_clk);
        if (!full)
        begin
          w_data = 2*i + 2 * i;
          w_inc  = 1;
          $display(" WRITE: w_data=%0d, wb_ptr=%0d, stored=%0d, full=%b",
                   w_data, wb_ptr, stored_count, full);
        end
        else
        begin
          w_inc = 0; // stall
          $display(" WRITE: FIFO FULL STALL (data=%0d)", w_data);
          $display("\n--- WRITE: END Test Case 2 (Fill FIFO) ---");
          $display(" WRITE: w_data=%0d, wb_ptr=%0d, stored=%0d, full=%b",
                   w_data, wb_ptr, stored_count, full);
        end
      end
      w_inc = 0;
    end
  endtask

  // Write process
  initial
  begin
    @(posedge w_reset_n);

    write_case1();

    write_case2();

  end

  // (store written values)
  always @(posedge w_clk)
  begin
    if (w_inc && !full)
    begin
      gold_mem[wb_ptr] = w_data;
      if (wb_ptr == DEPTH-1)
        wb_ptr = 0;
      else
        wb_ptr = wb_ptr + 1;

      if (stored_count < DEPTH)
        stored_count = stored_count + 1;
      else
        $display(" WARNING: gold_mem overflow", );
    end
  end

  // Read process
  initial
  begin
    @(posedge r_reset_n);

    read_case1();

    read_case2();

    read_case3();

    repeat (2) @(posedge r_clk);
    // Finish
    $display("\n--- TESTS COMPLETE ---");
    if (error_count == 0)
      $display("RESULT: All data checks PASSED ");
    else
      $display("RESULT: Test FAILED with %0d errors ", error_count);
    $finish;
  end

  task read_case1;
    begin
      // TEST CASE 1: Read while writing
      $display("\n--- READ: Test Case 1 (parallel with writes) ---");
      r_inc = 1;
      repeat(DEPTH + 4) @(posedge r_clk);
      r_inc = 0;
      $display("\n--- READ: END Test Case 1 (parallel with writes) ---");
    end
  endtask

  task read_case2;
    begin
      // TEST CASE 2: Idle phase
      $display("\n--- READ: Test Case 2 (idle,FIFO filling) ---");
      repeat(DEPTH + 2) @(posedge r_clk);
      $display("\n--- READ: END Test Case 2 (idle,FIFO filling) ---");
    end
  endtask

  task read_case3;
    begin
      // TEST CASE 3: Empty FIFO completely
      $display("\n--- READ: Test Case 3 (read all FIFO) ---");
      r_inc = 1;
      repeat(DEPTH + 3) @(posedge r_clk);
      r_inc = 0;
      $display("\n--- READ: END Test Case 3 (read all FIFO) ---");
    end
  endtask

  // CHECK (read compare)
  always @(posedge r_clk)
  begin
    if (r_inc && !empty)
    begin
      if (stored_count == 0)
      begin
        $display(" READ: r_data=%0d, expected=%0d, rb_ptr=%0d, stored=%0d, empty=%b",
                 r_data, gold_mem[rb_ptr], rb_ptr, stored_count, empty);
      end
      if (r_data !== gold_mem[rb_ptr])
      begin
        $display(" ERROR: mismatch | expected=%0d got=%0d",
                 gold_mem[rb_ptr], r_data);
        error_count = error_count + 1;
      end
      else
      begin
        $display(" Match | expected=%0d got=%0d",
                 gold_mem[rb_ptr], r_data);
      end

      if (rb_ptr == DEPTH-1)
        rb_ptr = 0;
      else
        rb_ptr = rb_ptr + 1;

      if (stored_count > 0)
        stored_count = stored_count - 1;
    end
  end

endmodule
