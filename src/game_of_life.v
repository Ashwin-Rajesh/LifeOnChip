module game_of_life #(
    parameter  ARR_X_LEN = 8,
    parameter  ARR_Y_LEN = 8
) (
    input                   clk,
    input                   reset,

    // High to run GoL
    input                   run,

    // Load interface
    input                           inp_load,
    input [$clog2(ARR_Y_LEN)-1:0] 	inp_y_addr,
    input [ARR_X_LEN-1:0]   		inp_data,

    // Output interface
    input                           out_load,
    input                           out_shift,
    output [ARR_X_LEN-1:0]  		out_data,

    inout vccd1,
    inout vssd1
); 
    // Cell connections
    wire[ARR_X_LEN*ARR_Y_LEN:0]   state;
    wire[ARR_X_LEN*ARR_Y_LEN:0]   cell_outs;

    assign state[ARR_X_LEN*ARR_Y_LEN]       = 1'b0;       // Boundary bits are set to 0
    assign cell_outs[ARR_X_LEN*ARR_Y_LEN]   = 1'b0;       // Boundary bits are set to 0
    assign out_data = cell_outs[ARR_X_LEN-1:0];

    // Output of y address decoder
    reg[ARR_Y_LEN-1:0]              select;
    always @* begin
        select            = 0;
        select[inp_y_addr]    = 1'b1;
    end

    genvar i, j;
    generate
        for(i = 0; i < ARR_Y_LEN; i = i + 1) begin: _arr_rows
            for(j = 0; j < ARR_X_LEN; j = j + 1) begin : _arr_cells
                life_cell arr_cell(
                    .clk    (clk),
                    .reset  (reset),

                    .run    (run),
                    .u  (state[xy_to_addr(j    , i + 1)]),
                    .d  (state[xy_to_addr(j    , i - 1)]),
                    .l  (state[xy_to_addr(j - 1, i    )]),
                    .r  (state[xy_to_addr(j + 1, i    )]),
                    .ul (state[xy_to_addr(j - 1, i + 1)]),
                    .ur (state[xy_to_addr(j + 1, i + 1)]),
                    .dl (state[xy_to_addr(j - 1, i - 1)]),
                    .dr (state[xy_to_addr(j + 1, i - 1)]),

                    .load_in(inp_load && select[i]),
                    .in_data(inp_data[j]),

                    .load_out       (out_load),
                    .shift          (out_shift),
                    .prev_out_data  (cell_outs[xy_to_addr(j, i + 1)]),
                    .out_data       (cell_outs[xy_to_addr(j, i)]),

                    .state(state[xy_to_addr(j, i)]),

                    .vccd1(vccd1),
                    .vssd1(vssd1)
                );
            end
        end
    endgenerate

    // Get array address from x and y coordinates
    function [7:0] xy_to_addr(
        input integer x,
        input integer y
    );
        begin
            if(x < 0)
                x = -1;
            if(y < 0)
                y = -1;
            
            if(x > ARR_X_LEN)
                x = -1;
            if(y > ARR_Y_LEN)
                y = -1;
            
            if(x == -1 || y == -1)
                xy_to_addr = ARR_X_LEN * ARR_Y_LEN;
            else
                xy_to_addr = x + (y * ARR_X_LEN);
        end
    endfunction

endmodule
