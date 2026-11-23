/////////////////////////////////////////////////////////////
//////////////////// data synchronizer //////////////////////
/////////////////////////////////////////////////////////////

module data_sync #(
    parameter NUM_STAGES = 2,
    parameter BIT_WIDTH  = 8
)(
    input  wire                  dest_clk,
    input  wire                  dest_reset_n,   // active low reset
    input  wire [BIT_WIDTH-1:0]  unsync_bus,     // Input data bus from source domain
    input  wire                  bus_enable,     // Control signal (from source domain)
    output reg  [BIT_WIDTH-1:0]  sync_bus,       // Synchronized bus
    output reg                   enable_pulse    // Single-cycle pulse
);

    // Internal signals
    reg   [NUM_STAGES-1:0] en_sync_reg;       // Multi-flop synchronizer
    reg                    pulse_enable_flop; // For edge detection
    wire                   enable_pulse_wire;
    wire  [BIT_WIDTH-1:0]  sync_bus_c;

    // ----------------- Multi-flop synchronizer -----------------
    always @(posedge dest_clk or negedge dest_reset_n) begin
        if (!dest_reset_n)
            en_sync_reg <= 'b0;
        else
            en_sync_reg <= {en_sync_reg[NUM_STAGES-2:0], bus_enable};
    end

    // ----------------- Pulse generator -----------------
    always @(posedge dest_clk or negedge dest_reset_n) begin
        if (!dest_reset_n)
            pulse_enable_flop <= 1'b0;
        else
            pulse_enable_flop <= en_sync_reg[NUM_STAGES-1];
    end

    assign enable_pulse_wire = en_sync_reg[NUM_STAGES-1] && !pulse_enable_flop;

    // ----------------- Multiplexing -----------------
    assign sync_bus_c = enable_pulse_wire ? unsync_bus : sync_bus;

    // ----------------- Destination domain flop -----------------
    always @(posedge dest_clk or negedge dest_reset_n) begin
        if (!dest_reset_n)
            sync_bus <= 'b0;
        else
            sync_bus <= sync_bus_c;
    end

    // ----------------- Delay generated pulse -----------------
    always @(posedge dest_clk or negedge dest_reset_n) begin
        if (!dest_reset_n)
            enable_pulse <= 1'b0;
        else
            enable_pulse <= enable_pulse_wire;
    end

endmodule

