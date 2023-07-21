#!python3 

import sys

ARR_X_LEN = 8
ARR_Y_LEN = 8

if(len(sys.argv) == 3):
    ARR_X_LEN = int(sys.argv[1])
    ARR_Y_LEN = int(sys.argv[2])

code_beg = """
// Code generated from gen_arr.py

module game_of_life #(
    parameter  ARR_X_LEN = """ + str(ARR_X_LEN) + """,
    parameter  ARR_Y_LEN = """ + str(ARR_Y_LEN) + """
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
    output [ARR_X_LEN-1:0]  		out_data
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

"""

code_end = """

endmodule
"""

def state_xy(x, y):
    if(x < 0):
        x = -1
    if(y < 0):
        y = -1
        
    if(x >= ARR_X_LEN):
        x = -1
    if(y >= ARR_Y_LEN):
        y = -1

    if(x == -1 or y == -1):
        return "1'b0"
    else:
        return f"state[{x} + {y} * ARR_X_LEN]"

def out_xy(x, y):
    if(x < 0):
        x = -1
    if(y < 0):
        y = -1
        
    if(x >= ARR_X_LEN):
        x = -1
    if(y >= ARR_Y_LEN):
        y = -1

    if(x == -1 or y == -1):
        return "1'b0"
    else:
        return f"cell_outs[{x} + {y} * ARR_X_LEN]"

print(code_beg)

for y in range(ARR_Y_LEN):
    for x in range(ARR_X_LEN):
        print(f"""
    life_cell arr_cell_x{x}_y{y}(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  ({state_xy(x    ,y + 1)}),
        .d  ({state_xy(x    ,y - 1)}),
        .l  ({state_xy(x - 1,y    )}),
        .r  ({state_xy(x + 1,y    )}),
        .ul ({state_xy(x - 1,y + 1)}),
        .ur ({state_xy(x + 1,y + 1)}),
        .dl ({state_xy(x - 1,y - 1)}),
        .dr ({state_xy(x + 1,y - 1)}),

        .load_in(inp_load && select[{y}]),
        .in_data(inp_data[{x}]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  ({out_xy(x, y + 1)}),
        .out_data       ({out_xy(x, y)}),

        .state({state_xy(x, y)})
    );
""")

print(code_end)
