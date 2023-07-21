`include "src/game_of_life.v"

module top_module;
    // Define the parameters for the module
    parameter ARR_X_LEN = 16;
    parameter ARR_Y_LEN = 16;

    // Define the local parameters for the module
    localparam ARR_Y_ADDRW = $clog2(ARR_Y_LEN);

    // Declare the inputs and outputs of the module
    reg clk;
    reg reset;
    reg load;
    reg run;
    reg [ARR_Y_ADDRW-1:0]   y_addr;
    reg [ARR_X_LEN-1:0]     inp_data;
    wire [ARR_X_LEN-1:0]    out_data;

    // Instantiate the module
    game_of_life #(
        .ARR_X_LEN(ARR_X_LEN),
        .ARR_Y_LEN(ARR_Y_LEN)
    ) dut (
    .clk        (clk),
    .reset      (reset),
    .inp_load   (load),
    .inp_y_addr (y_addr),
    .inp_data   (inp_data),
    .run(run),
    .out_data(out_data)
    );

    // Define the clock signal
    always #5 clk = ~clk;

    integer i;
    reg[ARR_X_LEN-1:0]		temp;

    // Define the testbench
    initial begin
        $display("START");

        // Initialize the inputs
        clk     = 0;
        reset   = 0;
        load    = 0;
        run     = 0;
        y_addr  = 0;
        inp_data = 0;

        // Wait for the reset signal to be asserted
        @(posedge clk) #1;
        reset = 1;

        // Deassert the reset signal
        @(posedge clk) #1;
        reset = 0;

        // Load the input data
        @(posedge clk) #1;
        load        = 1;
        y_addr      = 14;
        inp_data    = 16'h07;

        // Run the module
        @(posedge clk) #1;
        load = 0;
        run = 1;

        // Wait for the output data to be generated
        repeat(10) begin
            $display("Time : %t", $time);

            for(i = ARR_Y_LEN - 1; i >= 0; i = i - 1) begin
                temp = (dut.state >> (i*ARR_X_LEN));
                $display("%b", temp);
            end
            @(posedge clk) #1;
        end
        run = 0;

        // End the simulation
        @(posedge clk) #1;
        $finish;
    end
endmodule
