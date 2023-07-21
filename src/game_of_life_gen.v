
// Code generated from gen_arr.py

module game_of_life #(
    parameter  ARR_X_LEN = 16,
    parameter  ARR_Y_LEN = 16
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



    life_cell arr_cell_x0_y0(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[0 + 1 * ARR_X_LEN]),
        .d  (1'b0),
        .l  (1'b0),
        .r  (state[1 + 0 * ARR_X_LEN]),
        .ul (1'b0),
        .ur (state[1 + 1 * ARR_X_LEN]),
        .dl (1'b0),
        .dr (1'b0),

        .load_in(inp_load && select[0]),
        .in_data(inp_data[0]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[0 + 1 * ARR_X_LEN]),
        .out_data       (cell_outs[0 + 0 * ARR_X_LEN]),

        .state(state[0 + 0 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x1_y0(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[1 + 1 * ARR_X_LEN]),
        .d  (1'b0),
        .l  (state[0 + 0 * ARR_X_LEN]),
        .r  (state[2 + 0 * ARR_X_LEN]),
        .ul (state[0 + 1 * ARR_X_LEN]),
        .ur (state[2 + 1 * ARR_X_LEN]),
        .dl (1'b0),
        .dr (1'b0),

        .load_in(inp_load && select[0]),
        .in_data(inp_data[1]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[1 + 1 * ARR_X_LEN]),
        .out_data       (cell_outs[1 + 0 * ARR_X_LEN]),

        .state(state[1 + 0 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x2_y0(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[2 + 1 * ARR_X_LEN]),
        .d  (1'b0),
        .l  (state[1 + 0 * ARR_X_LEN]),
        .r  (state[3 + 0 * ARR_X_LEN]),
        .ul (state[1 + 1 * ARR_X_LEN]),
        .ur (state[3 + 1 * ARR_X_LEN]),
        .dl (1'b0),
        .dr (1'b0),

        .load_in(inp_load && select[0]),
        .in_data(inp_data[2]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[2 + 1 * ARR_X_LEN]),
        .out_data       (cell_outs[2 + 0 * ARR_X_LEN]),

        .state(state[2 + 0 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x3_y0(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[3 + 1 * ARR_X_LEN]),
        .d  (1'b0),
        .l  (state[2 + 0 * ARR_X_LEN]),
        .r  (state[4 + 0 * ARR_X_LEN]),
        .ul (state[2 + 1 * ARR_X_LEN]),
        .ur (state[4 + 1 * ARR_X_LEN]),
        .dl (1'b0),
        .dr (1'b0),

        .load_in(inp_load && select[0]),
        .in_data(inp_data[3]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[3 + 1 * ARR_X_LEN]),
        .out_data       (cell_outs[3 + 0 * ARR_X_LEN]),

        .state(state[3 + 0 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x4_y0(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[4 + 1 * ARR_X_LEN]),
        .d  (1'b0),
        .l  (state[3 + 0 * ARR_X_LEN]),
        .r  (state[5 + 0 * ARR_X_LEN]),
        .ul (state[3 + 1 * ARR_X_LEN]),
        .ur (state[5 + 1 * ARR_X_LEN]),
        .dl (1'b0),
        .dr (1'b0),

        .load_in(inp_load && select[0]),
        .in_data(inp_data[4]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[4 + 1 * ARR_X_LEN]),
        .out_data       (cell_outs[4 + 0 * ARR_X_LEN]),

        .state(state[4 + 0 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x5_y0(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[5 + 1 * ARR_X_LEN]),
        .d  (1'b0),
        .l  (state[4 + 0 * ARR_X_LEN]),
        .r  (state[6 + 0 * ARR_X_LEN]),
        .ul (state[4 + 1 * ARR_X_LEN]),
        .ur (state[6 + 1 * ARR_X_LEN]),
        .dl (1'b0),
        .dr (1'b0),

        .load_in(inp_load && select[0]),
        .in_data(inp_data[5]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[5 + 1 * ARR_X_LEN]),
        .out_data       (cell_outs[5 + 0 * ARR_X_LEN]),

        .state(state[5 + 0 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x6_y0(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[6 + 1 * ARR_X_LEN]),
        .d  (1'b0),
        .l  (state[5 + 0 * ARR_X_LEN]),
        .r  (state[7 + 0 * ARR_X_LEN]),
        .ul (state[5 + 1 * ARR_X_LEN]),
        .ur (state[7 + 1 * ARR_X_LEN]),
        .dl (1'b0),
        .dr (1'b0),

        .load_in(inp_load && select[0]),
        .in_data(inp_data[6]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[6 + 1 * ARR_X_LEN]),
        .out_data       (cell_outs[6 + 0 * ARR_X_LEN]),

        .state(state[6 + 0 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x7_y0(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[7 + 1 * ARR_X_LEN]),
        .d  (1'b0),
        .l  (state[6 + 0 * ARR_X_LEN]),
        .r  (state[8 + 0 * ARR_X_LEN]),
        .ul (state[6 + 1 * ARR_X_LEN]),
        .ur (state[8 + 1 * ARR_X_LEN]),
        .dl (1'b0),
        .dr (1'b0),

        .load_in(inp_load && select[0]),
        .in_data(inp_data[7]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[7 + 1 * ARR_X_LEN]),
        .out_data       (cell_outs[7 + 0 * ARR_X_LEN]),

        .state(state[7 + 0 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x8_y0(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[8 + 1 * ARR_X_LEN]),
        .d  (1'b0),
        .l  (state[7 + 0 * ARR_X_LEN]),
        .r  (state[9 + 0 * ARR_X_LEN]),
        .ul (state[7 + 1 * ARR_X_LEN]),
        .ur (state[9 + 1 * ARR_X_LEN]),
        .dl (1'b0),
        .dr (1'b0),

        .load_in(inp_load && select[0]),
        .in_data(inp_data[8]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[8 + 1 * ARR_X_LEN]),
        .out_data       (cell_outs[8 + 0 * ARR_X_LEN]),

        .state(state[8 + 0 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x9_y0(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[9 + 1 * ARR_X_LEN]),
        .d  (1'b0),
        .l  (state[8 + 0 * ARR_X_LEN]),
        .r  (state[10 + 0 * ARR_X_LEN]),
        .ul (state[8 + 1 * ARR_X_LEN]),
        .ur (state[10 + 1 * ARR_X_LEN]),
        .dl (1'b0),
        .dr (1'b0),

        .load_in(inp_load && select[0]),
        .in_data(inp_data[9]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[9 + 1 * ARR_X_LEN]),
        .out_data       (cell_outs[9 + 0 * ARR_X_LEN]),

        .state(state[9 + 0 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x10_y0(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[10 + 1 * ARR_X_LEN]),
        .d  (1'b0),
        .l  (state[9 + 0 * ARR_X_LEN]),
        .r  (state[11 + 0 * ARR_X_LEN]),
        .ul (state[9 + 1 * ARR_X_LEN]),
        .ur (state[11 + 1 * ARR_X_LEN]),
        .dl (1'b0),
        .dr (1'b0),

        .load_in(inp_load && select[0]),
        .in_data(inp_data[10]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[10 + 1 * ARR_X_LEN]),
        .out_data       (cell_outs[10 + 0 * ARR_X_LEN]),

        .state(state[10 + 0 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x11_y0(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[11 + 1 * ARR_X_LEN]),
        .d  (1'b0),
        .l  (state[10 + 0 * ARR_X_LEN]),
        .r  (state[12 + 0 * ARR_X_LEN]),
        .ul (state[10 + 1 * ARR_X_LEN]),
        .ur (state[12 + 1 * ARR_X_LEN]),
        .dl (1'b0),
        .dr (1'b0),

        .load_in(inp_load && select[0]),
        .in_data(inp_data[11]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[11 + 1 * ARR_X_LEN]),
        .out_data       (cell_outs[11 + 0 * ARR_X_LEN]),

        .state(state[11 + 0 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x12_y0(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[12 + 1 * ARR_X_LEN]),
        .d  (1'b0),
        .l  (state[11 + 0 * ARR_X_LEN]),
        .r  (state[13 + 0 * ARR_X_LEN]),
        .ul (state[11 + 1 * ARR_X_LEN]),
        .ur (state[13 + 1 * ARR_X_LEN]),
        .dl (1'b0),
        .dr (1'b0),

        .load_in(inp_load && select[0]),
        .in_data(inp_data[12]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[12 + 1 * ARR_X_LEN]),
        .out_data       (cell_outs[12 + 0 * ARR_X_LEN]),

        .state(state[12 + 0 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x13_y0(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[13 + 1 * ARR_X_LEN]),
        .d  (1'b0),
        .l  (state[12 + 0 * ARR_X_LEN]),
        .r  (state[14 + 0 * ARR_X_LEN]),
        .ul (state[12 + 1 * ARR_X_LEN]),
        .ur (state[14 + 1 * ARR_X_LEN]),
        .dl (1'b0),
        .dr (1'b0),

        .load_in(inp_load && select[0]),
        .in_data(inp_data[13]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[13 + 1 * ARR_X_LEN]),
        .out_data       (cell_outs[13 + 0 * ARR_X_LEN]),

        .state(state[13 + 0 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x14_y0(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[14 + 1 * ARR_X_LEN]),
        .d  (1'b0),
        .l  (state[13 + 0 * ARR_X_LEN]),
        .r  (state[15 + 0 * ARR_X_LEN]),
        .ul (state[13 + 1 * ARR_X_LEN]),
        .ur (state[15 + 1 * ARR_X_LEN]),
        .dl (1'b0),
        .dr (1'b0),

        .load_in(inp_load && select[0]),
        .in_data(inp_data[14]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[14 + 1 * ARR_X_LEN]),
        .out_data       (cell_outs[14 + 0 * ARR_X_LEN]),

        .state(state[14 + 0 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x15_y0(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[15 + 1 * ARR_X_LEN]),
        .d  (1'b0),
        .l  (state[14 + 0 * ARR_X_LEN]),
        .r  (1'b0),
        .ul (state[14 + 1 * ARR_X_LEN]),
        .ur (1'b0),
        .dl (1'b0),
        .dr (1'b0),

        .load_in(inp_load && select[0]),
        .in_data(inp_data[15]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[15 + 1 * ARR_X_LEN]),
        .out_data       (cell_outs[15 + 0 * ARR_X_LEN]),

        .state(state[15 + 0 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x0_y1(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[0 + 2 * ARR_X_LEN]),
        .d  (state[0 + 0 * ARR_X_LEN]),
        .l  (1'b0),
        .r  (state[1 + 1 * ARR_X_LEN]),
        .ul (1'b0),
        .ur (state[1 + 2 * ARR_X_LEN]),
        .dl (1'b0),
        .dr (state[1 + 0 * ARR_X_LEN]),

        .load_in(inp_load && select[1]),
        .in_data(inp_data[0]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[0 + 2 * ARR_X_LEN]),
        .out_data       (cell_outs[0 + 1 * ARR_X_LEN]),

        .state(state[0 + 1 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x1_y1(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[1 + 2 * ARR_X_LEN]),
        .d  (state[1 + 0 * ARR_X_LEN]),
        .l  (state[0 + 1 * ARR_X_LEN]),
        .r  (state[2 + 1 * ARR_X_LEN]),
        .ul (state[0 + 2 * ARR_X_LEN]),
        .ur (state[2 + 2 * ARR_X_LEN]),
        .dl (state[0 + 0 * ARR_X_LEN]),
        .dr (state[2 + 0 * ARR_X_LEN]),

        .load_in(inp_load && select[1]),
        .in_data(inp_data[1]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[1 + 2 * ARR_X_LEN]),
        .out_data       (cell_outs[1 + 1 * ARR_X_LEN]),

        .state(state[1 + 1 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x2_y1(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[2 + 2 * ARR_X_LEN]),
        .d  (state[2 + 0 * ARR_X_LEN]),
        .l  (state[1 + 1 * ARR_X_LEN]),
        .r  (state[3 + 1 * ARR_X_LEN]),
        .ul (state[1 + 2 * ARR_X_LEN]),
        .ur (state[3 + 2 * ARR_X_LEN]),
        .dl (state[1 + 0 * ARR_X_LEN]),
        .dr (state[3 + 0 * ARR_X_LEN]),

        .load_in(inp_load && select[1]),
        .in_data(inp_data[2]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[2 + 2 * ARR_X_LEN]),
        .out_data       (cell_outs[2 + 1 * ARR_X_LEN]),

        .state(state[2 + 1 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x3_y1(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[3 + 2 * ARR_X_LEN]),
        .d  (state[3 + 0 * ARR_X_LEN]),
        .l  (state[2 + 1 * ARR_X_LEN]),
        .r  (state[4 + 1 * ARR_X_LEN]),
        .ul (state[2 + 2 * ARR_X_LEN]),
        .ur (state[4 + 2 * ARR_X_LEN]),
        .dl (state[2 + 0 * ARR_X_LEN]),
        .dr (state[4 + 0 * ARR_X_LEN]),

        .load_in(inp_load && select[1]),
        .in_data(inp_data[3]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[3 + 2 * ARR_X_LEN]),
        .out_data       (cell_outs[3 + 1 * ARR_X_LEN]),

        .state(state[3 + 1 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x4_y1(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[4 + 2 * ARR_X_LEN]),
        .d  (state[4 + 0 * ARR_X_LEN]),
        .l  (state[3 + 1 * ARR_X_LEN]),
        .r  (state[5 + 1 * ARR_X_LEN]),
        .ul (state[3 + 2 * ARR_X_LEN]),
        .ur (state[5 + 2 * ARR_X_LEN]),
        .dl (state[3 + 0 * ARR_X_LEN]),
        .dr (state[5 + 0 * ARR_X_LEN]),

        .load_in(inp_load && select[1]),
        .in_data(inp_data[4]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[4 + 2 * ARR_X_LEN]),
        .out_data       (cell_outs[4 + 1 * ARR_X_LEN]),

        .state(state[4 + 1 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x5_y1(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[5 + 2 * ARR_X_LEN]),
        .d  (state[5 + 0 * ARR_X_LEN]),
        .l  (state[4 + 1 * ARR_X_LEN]),
        .r  (state[6 + 1 * ARR_X_LEN]),
        .ul (state[4 + 2 * ARR_X_LEN]),
        .ur (state[6 + 2 * ARR_X_LEN]),
        .dl (state[4 + 0 * ARR_X_LEN]),
        .dr (state[6 + 0 * ARR_X_LEN]),

        .load_in(inp_load && select[1]),
        .in_data(inp_data[5]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[5 + 2 * ARR_X_LEN]),
        .out_data       (cell_outs[5 + 1 * ARR_X_LEN]),

        .state(state[5 + 1 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x6_y1(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[6 + 2 * ARR_X_LEN]),
        .d  (state[6 + 0 * ARR_X_LEN]),
        .l  (state[5 + 1 * ARR_X_LEN]),
        .r  (state[7 + 1 * ARR_X_LEN]),
        .ul (state[5 + 2 * ARR_X_LEN]),
        .ur (state[7 + 2 * ARR_X_LEN]),
        .dl (state[5 + 0 * ARR_X_LEN]),
        .dr (state[7 + 0 * ARR_X_LEN]),

        .load_in(inp_load && select[1]),
        .in_data(inp_data[6]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[6 + 2 * ARR_X_LEN]),
        .out_data       (cell_outs[6 + 1 * ARR_X_LEN]),

        .state(state[6 + 1 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x7_y1(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[7 + 2 * ARR_X_LEN]),
        .d  (state[7 + 0 * ARR_X_LEN]),
        .l  (state[6 + 1 * ARR_X_LEN]),
        .r  (state[8 + 1 * ARR_X_LEN]),
        .ul (state[6 + 2 * ARR_X_LEN]),
        .ur (state[8 + 2 * ARR_X_LEN]),
        .dl (state[6 + 0 * ARR_X_LEN]),
        .dr (state[8 + 0 * ARR_X_LEN]),

        .load_in(inp_load && select[1]),
        .in_data(inp_data[7]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[7 + 2 * ARR_X_LEN]),
        .out_data       (cell_outs[7 + 1 * ARR_X_LEN]),

        .state(state[7 + 1 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x8_y1(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[8 + 2 * ARR_X_LEN]),
        .d  (state[8 + 0 * ARR_X_LEN]),
        .l  (state[7 + 1 * ARR_X_LEN]),
        .r  (state[9 + 1 * ARR_X_LEN]),
        .ul (state[7 + 2 * ARR_X_LEN]),
        .ur (state[9 + 2 * ARR_X_LEN]),
        .dl (state[7 + 0 * ARR_X_LEN]),
        .dr (state[9 + 0 * ARR_X_LEN]),

        .load_in(inp_load && select[1]),
        .in_data(inp_data[8]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[8 + 2 * ARR_X_LEN]),
        .out_data       (cell_outs[8 + 1 * ARR_X_LEN]),

        .state(state[8 + 1 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x9_y1(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[9 + 2 * ARR_X_LEN]),
        .d  (state[9 + 0 * ARR_X_LEN]),
        .l  (state[8 + 1 * ARR_X_LEN]),
        .r  (state[10 + 1 * ARR_X_LEN]),
        .ul (state[8 + 2 * ARR_X_LEN]),
        .ur (state[10 + 2 * ARR_X_LEN]),
        .dl (state[8 + 0 * ARR_X_LEN]),
        .dr (state[10 + 0 * ARR_X_LEN]),

        .load_in(inp_load && select[1]),
        .in_data(inp_data[9]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[9 + 2 * ARR_X_LEN]),
        .out_data       (cell_outs[9 + 1 * ARR_X_LEN]),

        .state(state[9 + 1 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x10_y1(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[10 + 2 * ARR_X_LEN]),
        .d  (state[10 + 0 * ARR_X_LEN]),
        .l  (state[9 + 1 * ARR_X_LEN]),
        .r  (state[11 + 1 * ARR_X_LEN]),
        .ul (state[9 + 2 * ARR_X_LEN]),
        .ur (state[11 + 2 * ARR_X_LEN]),
        .dl (state[9 + 0 * ARR_X_LEN]),
        .dr (state[11 + 0 * ARR_X_LEN]),

        .load_in(inp_load && select[1]),
        .in_data(inp_data[10]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[10 + 2 * ARR_X_LEN]),
        .out_data       (cell_outs[10 + 1 * ARR_X_LEN]),

        .state(state[10 + 1 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x11_y1(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[11 + 2 * ARR_X_LEN]),
        .d  (state[11 + 0 * ARR_X_LEN]),
        .l  (state[10 + 1 * ARR_X_LEN]),
        .r  (state[12 + 1 * ARR_X_LEN]),
        .ul (state[10 + 2 * ARR_X_LEN]),
        .ur (state[12 + 2 * ARR_X_LEN]),
        .dl (state[10 + 0 * ARR_X_LEN]),
        .dr (state[12 + 0 * ARR_X_LEN]),

        .load_in(inp_load && select[1]),
        .in_data(inp_data[11]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[11 + 2 * ARR_X_LEN]),
        .out_data       (cell_outs[11 + 1 * ARR_X_LEN]),

        .state(state[11 + 1 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x12_y1(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[12 + 2 * ARR_X_LEN]),
        .d  (state[12 + 0 * ARR_X_LEN]),
        .l  (state[11 + 1 * ARR_X_LEN]),
        .r  (state[13 + 1 * ARR_X_LEN]),
        .ul (state[11 + 2 * ARR_X_LEN]),
        .ur (state[13 + 2 * ARR_X_LEN]),
        .dl (state[11 + 0 * ARR_X_LEN]),
        .dr (state[13 + 0 * ARR_X_LEN]),

        .load_in(inp_load && select[1]),
        .in_data(inp_data[12]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[12 + 2 * ARR_X_LEN]),
        .out_data       (cell_outs[12 + 1 * ARR_X_LEN]),

        .state(state[12 + 1 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x13_y1(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[13 + 2 * ARR_X_LEN]),
        .d  (state[13 + 0 * ARR_X_LEN]),
        .l  (state[12 + 1 * ARR_X_LEN]),
        .r  (state[14 + 1 * ARR_X_LEN]),
        .ul (state[12 + 2 * ARR_X_LEN]),
        .ur (state[14 + 2 * ARR_X_LEN]),
        .dl (state[12 + 0 * ARR_X_LEN]),
        .dr (state[14 + 0 * ARR_X_LEN]),

        .load_in(inp_load && select[1]),
        .in_data(inp_data[13]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[13 + 2 * ARR_X_LEN]),
        .out_data       (cell_outs[13 + 1 * ARR_X_LEN]),

        .state(state[13 + 1 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x14_y1(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[14 + 2 * ARR_X_LEN]),
        .d  (state[14 + 0 * ARR_X_LEN]),
        .l  (state[13 + 1 * ARR_X_LEN]),
        .r  (state[15 + 1 * ARR_X_LEN]),
        .ul (state[13 + 2 * ARR_X_LEN]),
        .ur (state[15 + 2 * ARR_X_LEN]),
        .dl (state[13 + 0 * ARR_X_LEN]),
        .dr (state[15 + 0 * ARR_X_LEN]),

        .load_in(inp_load && select[1]),
        .in_data(inp_data[14]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[14 + 2 * ARR_X_LEN]),
        .out_data       (cell_outs[14 + 1 * ARR_X_LEN]),

        .state(state[14 + 1 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x15_y1(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[15 + 2 * ARR_X_LEN]),
        .d  (state[15 + 0 * ARR_X_LEN]),
        .l  (state[14 + 1 * ARR_X_LEN]),
        .r  (1'b0),
        .ul (state[14 + 2 * ARR_X_LEN]),
        .ur (1'b0),
        .dl (state[14 + 0 * ARR_X_LEN]),
        .dr (1'b0),

        .load_in(inp_load && select[1]),
        .in_data(inp_data[15]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[15 + 2 * ARR_X_LEN]),
        .out_data       (cell_outs[15 + 1 * ARR_X_LEN]),

        .state(state[15 + 1 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x0_y2(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[0 + 3 * ARR_X_LEN]),
        .d  (state[0 + 1 * ARR_X_LEN]),
        .l  (1'b0),
        .r  (state[1 + 2 * ARR_X_LEN]),
        .ul (1'b0),
        .ur (state[1 + 3 * ARR_X_LEN]),
        .dl (1'b0),
        .dr (state[1 + 1 * ARR_X_LEN]),

        .load_in(inp_load && select[2]),
        .in_data(inp_data[0]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[0 + 3 * ARR_X_LEN]),
        .out_data       (cell_outs[0 + 2 * ARR_X_LEN]),

        .state(state[0 + 2 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x1_y2(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[1 + 3 * ARR_X_LEN]),
        .d  (state[1 + 1 * ARR_X_LEN]),
        .l  (state[0 + 2 * ARR_X_LEN]),
        .r  (state[2 + 2 * ARR_X_LEN]),
        .ul (state[0 + 3 * ARR_X_LEN]),
        .ur (state[2 + 3 * ARR_X_LEN]),
        .dl (state[0 + 1 * ARR_X_LEN]),
        .dr (state[2 + 1 * ARR_X_LEN]),

        .load_in(inp_load && select[2]),
        .in_data(inp_data[1]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[1 + 3 * ARR_X_LEN]),
        .out_data       (cell_outs[1 + 2 * ARR_X_LEN]),

        .state(state[1 + 2 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x2_y2(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[2 + 3 * ARR_X_LEN]),
        .d  (state[2 + 1 * ARR_X_LEN]),
        .l  (state[1 + 2 * ARR_X_LEN]),
        .r  (state[3 + 2 * ARR_X_LEN]),
        .ul (state[1 + 3 * ARR_X_LEN]),
        .ur (state[3 + 3 * ARR_X_LEN]),
        .dl (state[1 + 1 * ARR_X_LEN]),
        .dr (state[3 + 1 * ARR_X_LEN]),

        .load_in(inp_load && select[2]),
        .in_data(inp_data[2]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[2 + 3 * ARR_X_LEN]),
        .out_data       (cell_outs[2 + 2 * ARR_X_LEN]),

        .state(state[2 + 2 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x3_y2(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[3 + 3 * ARR_X_LEN]),
        .d  (state[3 + 1 * ARR_X_LEN]),
        .l  (state[2 + 2 * ARR_X_LEN]),
        .r  (state[4 + 2 * ARR_X_LEN]),
        .ul (state[2 + 3 * ARR_X_LEN]),
        .ur (state[4 + 3 * ARR_X_LEN]),
        .dl (state[2 + 1 * ARR_X_LEN]),
        .dr (state[4 + 1 * ARR_X_LEN]),

        .load_in(inp_load && select[2]),
        .in_data(inp_data[3]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[3 + 3 * ARR_X_LEN]),
        .out_data       (cell_outs[3 + 2 * ARR_X_LEN]),

        .state(state[3 + 2 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x4_y2(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[4 + 3 * ARR_X_LEN]),
        .d  (state[4 + 1 * ARR_X_LEN]),
        .l  (state[3 + 2 * ARR_X_LEN]),
        .r  (state[5 + 2 * ARR_X_LEN]),
        .ul (state[3 + 3 * ARR_X_LEN]),
        .ur (state[5 + 3 * ARR_X_LEN]),
        .dl (state[3 + 1 * ARR_X_LEN]),
        .dr (state[5 + 1 * ARR_X_LEN]),

        .load_in(inp_load && select[2]),
        .in_data(inp_data[4]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[4 + 3 * ARR_X_LEN]),
        .out_data       (cell_outs[4 + 2 * ARR_X_LEN]),

        .state(state[4 + 2 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x5_y2(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[5 + 3 * ARR_X_LEN]),
        .d  (state[5 + 1 * ARR_X_LEN]),
        .l  (state[4 + 2 * ARR_X_LEN]),
        .r  (state[6 + 2 * ARR_X_LEN]),
        .ul (state[4 + 3 * ARR_X_LEN]),
        .ur (state[6 + 3 * ARR_X_LEN]),
        .dl (state[4 + 1 * ARR_X_LEN]),
        .dr (state[6 + 1 * ARR_X_LEN]),

        .load_in(inp_load && select[2]),
        .in_data(inp_data[5]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[5 + 3 * ARR_X_LEN]),
        .out_data       (cell_outs[5 + 2 * ARR_X_LEN]),

        .state(state[5 + 2 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x6_y2(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[6 + 3 * ARR_X_LEN]),
        .d  (state[6 + 1 * ARR_X_LEN]),
        .l  (state[5 + 2 * ARR_X_LEN]),
        .r  (state[7 + 2 * ARR_X_LEN]),
        .ul (state[5 + 3 * ARR_X_LEN]),
        .ur (state[7 + 3 * ARR_X_LEN]),
        .dl (state[5 + 1 * ARR_X_LEN]),
        .dr (state[7 + 1 * ARR_X_LEN]),

        .load_in(inp_load && select[2]),
        .in_data(inp_data[6]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[6 + 3 * ARR_X_LEN]),
        .out_data       (cell_outs[6 + 2 * ARR_X_LEN]),

        .state(state[6 + 2 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x7_y2(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[7 + 3 * ARR_X_LEN]),
        .d  (state[7 + 1 * ARR_X_LEN]),
        .l  (state[6 + 2 * ARR_X_LEN]),
        .r  (state[8 + 2 * ARR_X_LEN]),
        .ul (state[6 + 3 * ARR_X_LEN]),
        .ur (state[8 + 3 * ARR_X_LEN]),
        .dl (state[6 + 1 * ARR_X_LEN]),
        .dr (state[8 + 1 * ARR_X_LEN]),

        .load_in(inp_load && select[2]),
        .in_data(inp_data[7]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[7 + 3 * ARR_X_LEN]),
        .out_data       (cell_outs[7 + 2 * ARR_X_LEN]),

        .state(state[7 + 2 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x8_y2(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[8 + 3 * ARR_X_LEN]),
        .d  (state[8 + 1 * ARR_X_LEN]),
        .l  (state[7 + 2 * ARR_X_LEN]),
        .r  (state[9 + 2 * ARR_X_LEN]),
        .ul (state[7 + 3 * ARR_X_LEN]),
        .ur (state[9 + 3 * ARR_X_LEN]),
        .dl (state[7 + 1 * ARR_X_LEN]),
        .dr (state[9 + 1 * ARR_X_LEN]),

        .load_in(inp_load && select[2]),
        .in_data(inp_data[8]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[8 + 3 * ARR_X_LEN]),
        .out_data       (cell_outs[8 + 2 * ARR_X_LEN]),

        .state(state[8 + 2 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x9_y2(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[9 + 3 * ARR_X_LEN]),
        .d  (state[9 + 1 * ARR_X_LEN]),
        .l  (state[8 + 2 * ARR_X_LEN]),
        .r  (state[10 + 2 * ARR_X_LEN]),
        .ul (state[8 + 3 * ARR_X_LEN]),
        .ur (state[10 + 3 * ARR_X_LEN]),
        .dl (state[8 + 1 * ARR_X_LEN]),
        .dr (state[10 + 1 * ARR_X_LEN]),

        .load_in(inp_load && select[2]),
        .in_data(inp_data[9]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[9 + 3 * ARR_X_LEN]),
        .out_data       (cell_outs[9 + 2 * ARR_X_LEN]),

        .state(state[9 + 2 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x10_y2(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[10 + 3 * ARR_X_LEN]),
        .d  (state[10 + 1 * ARR_X_LEN]),
        .l  (state[9 + 2 * ARR_X_LEN]),
        .r  (state[11 + 2 * ARR_X_LEN]),
        .ul (state[9 + 3 * ARR_X_LEN]),
        .ur (state[11 + 3 * ARR_X_LEN]),
        .dl (state[9 + 1 * ARR_X_LEN]),
        .dr (state[11 + 1 * ARR_X_LEN]),

        .load_in(inp_load && select[2]),
        .in_data(inp_data[10]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[10 + 3 * ARR_X_LEN]),
        .out_data       (cell_outs[10 + 2 * ARR_X_LEN]),

        .state(state[10 + 2 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x11_y2(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[11 + 3 * ARR_X_LEN]),
        .d  (state[11 + 1 * ARR_X_LEN]),
        .l  (state[10 + 2 * ARR_X_LEN]),
        .r  (state[12 + 2 * ARR_X_LEN]),
        .ul (state[10 + 3 * ARR_X_LEN]),
        .ur (state[12 + 3 * ARR_X_LEN]),
        .dl (state[10 + 1 * ARR_X_LEN]),
        .dr (state[12 + 1 * ARR_X_LEN]),

        .load_in(inp_load && select[2]),
        .in_data(inp_data[11]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[11 + 3 * ARR_X_LEN]),
        .out_data       (cell_outs[11 + 2 * ARR_X_LEN]),

        .state(state[11 + 2 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x12_y2(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[12 + 3 * ARR_X_LEN]),
        .d  (state[12 + 1 * ARR_X_LEN]),
        .l  (state[11 + 2 * ARR_X_LEN]),
        .r  (state[13 + 2 * ARR_X_LEN]),
        .ul (state[11 + 3 * ARR_X_LEN]),
        .ur (state[13 + 3 * ARR_X_LEN]),
        .dl (state[11 + 1 * ARR_X_LEN]),
        .dr (state[13 + 1 * ARR_X_LEN]),

        .load_in(inp_load && select[2]),
        .in_data(inp_data[12]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[12 + 3 * ARR_X_LEN]),
        .out_data       (cell_outs[12 + 2 * ARR_X_LEN]),

        .state(state[12 + 2 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x13_y2(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[13 + 3 * ARR_X_LEN]),
        .d  (state[13 + 1 * ARR_X_LEN]),
        .l  (state[12 + 2 * ARR_X_LEN]),
        .r  (state[14 + 2 * ARR_X_LEN]),
        .ul (state[12 + 3 * ARR_X_LEN]),
        .ur (state[14 + 3 * ARR_X_LEN]),
        .dl (state[12 + 1 * ARR_X_LEN]),
        .dr (state[14 + 1 * ARR_X_LEN]),

        .load_in(inp_load && select[2]),
        .in_data(inp_data[13]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[13 + 3 * ARR_X_LEN]),
        .out_data       (cell_outs[13 + 2 * ARR_X_LEN]),

        .state(state[13 + 2 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x14_y2(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[14 + 3 * ARR_X_LEN]),
        .d  (state[14 + 1 * ARR_X_LEN]),
        .l  (state[13 + 2 * ARR_X_LEN]),
        .r  (state[15 + 2 * ARR_X_LEN]),
        .ul (state[13 + 3 * ARR_X_LEN]),
        .ur (state[15 + 3 * ARR_X_LEN]),
        .dl (state[13 + 1 * ARR_X_LEN]),
        .dr (state[15 + 1 * ARR_X_LEN]),

        .load_in(inp_load && select[2]),
        .in_data(inp_data[14]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[14 + 3 * ARR_X_LEN]),
        .out_data       (cell_outs[14 + 2 * ARR_X_LEN]),

        .state(state[14 + 2 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x15_y2(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[15 + 3 * ARR_X_LEN]),
        .d  (state[15 + 1 * ARR_X_LEN]),
        .l  (state[14 + 2 * ARR_X_LEN]),
        .r  (1'b0),
        .ul (state[14 + 3 * ARR_X_LEN]),
        .ur (1'b0),
        .dl (state[14 + 1 * ARR_X_LEN]),
        .dr (1'b0),

        .load_in(inp_load && select[2]),
        .in_data(inp_data[15]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[15 + 3 * ARR_X_LEN]),
        .out_data       (cell_outs[15 + 2 * ARR_X_LEN]),

        .state(state[15 + 2 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x0_y3(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[0 + 4 * ARR_X_LEN]),
        .d  (state[0 + 2 * ARR_X_LEN]),
        .l  (1'b0),
        .r  (state[1 + 3 * ARR_X_LEN]),
        .ul (1'b0),
        .ur (state[1 + 4 * ARR_X_LEN]),
        .dl (1'b0),
        .dr (state[1 + 2 * ARR_X_LEN]),

        .load_in(inp_load && select[3]),
        .in_data(inp_data[0]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[0 + 4 * ARR_X_LEN]),
        .out_data       (cell_outs[0 + 3 * ARR_X_LEN]),

        .state(state[0 + 3 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x1_y3(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[1 + 4 * ARR_X_LEN]),
        .d  (state[1 + 2 * ARR_X_LEN]),
        .l  (state[0 + 3 * ARR_X_LEN]),
        .r  (state[2 + 3 * ARR_X_LEN]),
        .ul (state[0 + 4 * ARR_X_LEN]),
        .ur (state[2 + 4 * ARR_X_LEN]),
        .dl (state[0 + 2 * ARR_X_LEN]),
        .dr (state[2 + 2 * ARR_X_LEN]),

        .load_in(inp_load && select[3]),
        .in_data(inp_data[1]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[1 + 4 * ARR_X_LEN]),
        .out_data       (cell_outs[1 + 3 * ARR_X_LEN]),

        .state(state[1 + 3 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x2_y3(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[2 + 4 * ARR_X_LEN]),
        .d  (state[2 + 2 * ARR_X_LEN]),
        .l  (state[1 + 3 * ARR_X_LEN]),
        .r  (state[3 + 3 * ARR_X_LEN]),
        .ul (state[1 + 4 * ARR_X_LEN]),
        .ur (state[3 + 4 * ARR_X_LEN]),
        .dl (state[1 + 2 * ARR_X_LEN]),
        .dr (state[3 + 2 * ARR_X_LEN]),

        .load_in(inp_load && select[3]),
        .in_data(inp_data[2]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[2 + 4 * ARR_X_LEN]),
        .out_data       (cell_outs[2 + 3 * ARR_X_LEN]),

        .state(state[2 + 3 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x3_y3(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[3 + 4 * ARR_X_LEN]),
        .d  (state[3 + 2 * ARR_X_LEN]),
        .l  (state[2 + 3 * ARR_X_LEN]),
        .r  (state[4 + 3 * ARR_X_LEN]),
        .ul (state[2 + 4 * ARR_X_LEN]),
        .ur (state[4 + 4 * ARR_X_LEN]),
        .dl (state[2 + 2 * ARR_X_LEN]),
        .dr (state[4 + 2 * ARR_X_LEN]),

        .load_in(inp_load && select[3]),
        .in_data(inp_data[3]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[3 + 4 * ARR_X_LEN]),
        .out_data       (cell_outs[3 + 3 * ARR_X_LEN]),

        .state(state[3 + 3 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x4_y3(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[4 + 4 * ARR_X_LEN]),
        .d  (state[4 + 2 * ARR_X_LEN]),
        .l  (state[3 + 3 * ARR_X_LEN]),
        .r  (state[5 + 3 * ARR_X_LEN]),
        .ul (state[3 + 4 * ARR_X_LEN]),
        .ur (state[5 + 4 * ARR_X_LEN]),
        .dl (state[3 + 2 * ARR_X_LEN]),
        .dr (state[5 + 2 * ARR_X_LEN]),

        .load_in(inp_load && select[3]),
        .in_data(inp_data[4]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[4 + 4 * ARR_X_LEN]),
        .out_data       (cell_outs[4 + 3 * ARR_X_LEN]),

        .state(state[4 + 3 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x5_y3(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[5 + 4 * ARR_X_LEN]),
        .d  (state[5 + 2 * ARR_X_LEN]),
        .l  (state[4 + 3 * ARR_X_LEN]),
        .r  (state[6 + 3 * ARR_X_LEN]),
        .ul (state[4 + 4 * ARR_X_LEN]),
        .ur (state[6 + 4 * ARR_X_LEN]),
        .dl (state[4 + 2 * ARR_X_LEN]),
        .dr (state[6 + 2 * ARR_X_LEN]),

        .load_in(inp_load && select[3]),
        .in_data(inp_data[5]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[5 + 4 * ARR_X_LEN]),
        .out_data       (cell_outs[5 + 3 * ARR_X_LEN]),

        .state(state[5 + 3 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x6_y3(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[6 + 4 * ARR_X_LEN]),
        .d  (state[6 + 2 * ARR_X_LEN]),
        .l  (state[5 + 3 * ARR_X_LEN]),
        .r  (state[7 + 3 * ARR_X_LEN]),
        .ul (state[5 + 4 * ARR_X_LEN]),
        .ur (state[7 + 4 * ARR_X_LEN]),
        .dl (state[5 + 2 * ARR_X_LEN]),
        .dr (state[7 + 2 * ARR_X_LEN]),

        .load_in(inp_load && select[3]),
        .in_data(inp_data[6]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[6 + 4 * ARR_X_LEN]),
        .out_data       (cell_outs[6 + 3 * ARR_X_LEN]),

        .state(state[6 + 3 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x7_y3(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[7 + 4 * ARR_X_LEN]),
        .d  (state[7 + 2 * ARR_X_LEN]),
        .l  (state[6 + 3 * ARR_X_LEN]),
        .r  (state[8 + 3 * ARR_X_LEN]),
        .ul (state[6 + 4 * ARR_X_LEN]),
        .ur (state[8 + 4 * ARR_X_LEN]),
        .dl (state[6 + 2 * ARR_X_LEN]),
        .dr (state[8 + 2 * ARR_X_LEN]),

        .load_in(inp_load && select[3]),
        .in_data(inp_data[7]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[7 + 4 * ARR_X_LEN]),
        .out_data       (cell_outs[7 + 3 * ARR_X_LEN]),

        .state(state[7 + 3 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x8_y3(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[8 + 4 * ARR_X_LEN]),
        .d  (state[8 + 2 * ARR_X_LEN]),
        .l  (state[7 + 3 * ARR_X_LEN]),
        .r  (state[9 + 3 * ARR_X_LEN]),
        .ul (state[7 + 4 * ARR_X_LEN]),
        .ur (state[9 + 4 * ARR_X_LEN]),
        .dl (state[7 + 2 * ARR_X_LEN]),
        .dr (state[9 + 2 * ARR_X_LEN]),

        .load_in(inp_load && select[3]),
        .in_data(inp_data[8]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[8 + 4 * ARR_X_LEN]),
        .out_data       (cell_outs[8 + 3 * ARR_X_LEN]),

        .state(state[8 + 3 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x9_y3(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[9 + 4 * ARR_X_LEN]),
        .d  (state[9 + 2 * ARR_X_LEN]),
        .l  (state[8 + 3 * ARR_X_LEN]),
        .r  (state[10 + 3 * ARR_X_LEN]),
        .ul (state[8 + 4 * ARR_X_LEN]),
        .ur (state[10 + 4 * ARR_X_LEN]),
        .dl (state[8 + 2 * ARR_X_LEN]),
        .dr (state[10 + 2 * ARR_X_LEN]),

        .load_in(inp_load && select[3]),
        .in_data(inp_data[9]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[9 + 4 * ARR_X_LEN]),
        .out_data       (cell_outs[9 + 3 * ARR_X_LEN]),

        .state(state[9 + 3 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x10_y3(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[10 + 4 * ARR_X_LEN]),
        .d  (state[10 + 2 * ARR_X_LEN]),
        .l  (state[9 + 3 * ARR_X_LEN]),
        .r  (state[11 + 3 * ARR_X_LEN]),
        .ul (state[9 + 4 * ARR_X_LEN]),
        .ur (state[11 + 4 * ARR_X_LEN]),
        .dl (state[9 + 2 * ARR_X_LEN]),
        .dr (state[11 + 2 * ARR_X_LEN]),

        .load_in(inp_load && select[3]),
        .in_data(inp_data[10]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[10 + 4 * ARR_X_LEN]),
        .out_data       (cell_outs[10 + 3 * ARR_X_LEN]),

        .state(state[10 + 3 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x11_y3(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[11 + 4 * ARR_X_LEN]),
        .d  (state[11 + 2 * ARR_X_LEN]),
        .l  (state[10 + 3 * ARR_X_LEN]),
        .r  (state[12 + 3 * ARR_X_LEN]),
        .ul (state[10 + 4 * ARR_X_LEN]),
        .ur (state[12 + 4 * ARR_X_LEN]),
        .dl (state[10 + 2 * ARR_X_LEN]),
        .dr (state[12 + 2 * ARR_X_LEN]),

        .load_in(inp_load && select[3]),
        .in_data(inp_data[11]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[11 + 4 * ARR_X_LEN]),
        .out_data       (cell_outs[11 + 3 * ARR_X_LEN]),

        .state(state[11 + 3 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x12_y3(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[12 + 4 * ARR_X_LEN]),
        .d  (state[12 + 2 * ARR_X_LEN]),
        .l  (state[11 + 3 * ARR_X_LEN]),
        .r  (state[13 + 3 * ARR_X_LEN]),
        .ul (state[11 + 4 * ARR_X_LEN]),
        .ur (state[13 + 4 * ARR_X_LEN]),
        .dl (state[11 + 2 * ARR_X_LEN]),
        .dr (state[13 + 2 * ARR_X_LEN]),

        .load_in(inp_load && select[3]),
        .in_data(inp_data[12]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[12 + 4 * ARR_X_LEN]),
        .out_data       (cell_outs[12 + 3 * ARR_X_LEN]),

        .state(state[12 + 3 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x13_y3(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[13 + 4 * ARR_X_LEN]),
        .d  (state[13 + 2 * ARR_X_LEN]),
        .l  (state[12 + 3 * ARR_X_LEN]),
        .r  (state[14 + 3 * ARR_X_LEN]),
        .ul (state[12 + 4 * ARR_X_LEN]),
        .ur (state[14 + 4 * ARR_X_LEN]),
        .dl (state[12 + 2 * ARR_X_LEN]),
        .dr (state[14 + 2 * ARR_X_LEN]),

        .load_in(inp_load && select[3]),
        .in_data(inp_data[13]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[13 + 4 * ARR_X_LEN]),
        .out_data       (cell_outs[13 + 3 * ARR_X_LEN]),

        .state(state[13 + 3 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x14_y3(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[14 + 4 * ARR_X_LEN]),
        .d  (state[14 + 2 * ARR_X_LEN]),
        .l  (state[13 + 3 * ARR_X_LEN]),
        .r  (state[15 + 3 * ARR_X_LEN]),
        .ul (state[13 + 4 * ARR_X_LEN]),
        .ur (state[15 + 4 * ARR_X_LEN]),
        .dl (state[13 + 2 * ARR_X_LEN]),
        .dr (state[15 + 2 * ARR_X_LEN]),

        .load_in(inp_load && select[3]),
        .in_data(inp_data[14]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[14 + 4 * ARR_X_LEN]),
        .out_data       (cell_outs[14 + 3 * ARR_X_LEN]),

        .state(state[14 + 3 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x15_y3(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[15 + 4 * ARR_X_LEN]),
        .d  (state[15 + 2 * ARR_X_LEN]),
        .l  (state[14 + 3 * ARR_X_LEN]),
        .r  (1'b0),
        .ul (state[14 + 4 * ARR_X_LEN]),
        .ur (1'b0),
        .dl (state[14 + 2 * ARR_X_LEN]),
        .dr (1'b0),

        .load_in(inp_load && select[3]),
        .in_data(inp_data[15]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[15 + 4 * ARR_X_LEN]),
        .out_data       (cell_outs[15 + 3 * ARR_X_LEN]),

        .state(state[15 + 3 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x0_y4(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[0 + 5 * ARR_X_LEN]),
        .d  (state[0 + 3 * ARR_X_LEN]),
        .l  (1'b0),
        .r  (state[1 + 4 * ARR_X_LEN]),
        .ul (1'b0),
        .ur (state[1 + 5 * ARR_X_LEN]),
        .dl (1'b0),
        .dr (state[1 + 3 * ARR_X_LEN]),

        .load_in(inp_load && select[4]),
        .in_data(inp_data[0]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[0 + 5 * ARR_X_LEN]),
        .out_data       (cell_outs[0 + 4 * ARR_X_LEN]),

        .state(state[0 + 4 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x1_y4(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[1 + 5 * ARR_X_LEN]),
        .d  (state[1 + 3 * ARR_X_LEN]),
        .l  (state[0 + 4 * ARR_X_LEN]),
        .r  (state[2 + 4 * ARR_X_LEN]),
        .ul (state[0 + 5 * ARR_X_LEN]),
        .ur (state[2 + 5 * ARR_X_LEN]),
        .dl (state[0 + 3 * ARR_X_LEN]),
        .dr (state[2 + 3 * ARR_X_LEN]),

        .load_in(inp_load && select[4]),
        .in_data(inp_data[1]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[1 + 5 * ARR_X_LEN]),
        .out_data       (cell_outs[1 + 4 * ARR_X_LEN]),

        .state(state[1 + 4 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x2_y4(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[2 + 5 * ARR_X_LEN]),
        .d  (state[2 + 3 * ARR_X_LEN]),
        .l  (state[1 + 4 * ARR_X_LEN]),
        .r  (state[3 + 4 * ARR_X_LEN]),
        .ul (state[1 + 5 * ARR_X_LEN]),
        .ur (state[3 + 5 * ARR_X_LEN]),
        .dl (state[1 + 3 * ARR_X_LEN]),
        .dr (state[3 + 3 * ARR_X_LEN]),

        .load_in(inp_load && select[4]),
        .in_data(inp_data[2]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[2 + 5 * ARR_X_LEN]),
        .out_data       (cell_outs[2 + 4 * ARR_X_LEN]),

        .state(state[2 + 4 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x3_y4(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[3 + 5 * ARR_X_LEN]),
        .d  (state[3 + 3 * ARR_X_LEN]),
        .l  (state[2 + 4 * ARR_X_LEN]),
        .r  (state[4 + 4 * ARR_X_LEN]),
        .ul (state[2 + 5 * ARR_X_LEN]),
        .ur (state[4 + 5 * ARR_X_LEN]),
        .dl (state[2 + 3 * ARR_X_LEN]),
        .dr (state[4 + 3 * ARR_X_LEN]),

        .load_in(inp_load && select[4]),
        .in_data(inp_data[3]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[3 + 5 * ARR_X_LEN]),
        .out_data       (cell_outs[3 + 4 * ARR_X_LEN]),

        .state(state[3 + 4 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x4_y4(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[4 + 5 * ARR_X_LEN]),
        .d  (state[4 + 3 * ARR_X_LEN]),
        .l  (state[3 + 4 * ARR_X_LEN]),
        .r  (state[5 + 4 * ARR_X_LEN]),
        .ul (state[3 + 5 * ARR_X_LEN]),
        .ur (state[5 + 5 * ARR_X_LEN]),
        .dl (state[3 + 3 * ARR_X_LEN]),
        .dr (state[5 + 3 * ARR_X_LEN]),

        .load_in(inp_load && select[4]),
        .in_data(inp_data[4]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[4 + 5 * ARR_X_LEN]),
        .out_data       (cell_outs[4 + 4 * ARR_X_LEN]),

        .state(state[4 + 4 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x5_y4(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[5 + 5 * ARR_X_LEN]),
        .d  (state[5 + 3 * ARR_X_LEN]),
        .l  (state[4 + 4 * ARR_X_LEN]),
        .r  (state[6 + 4 * ARR_X_LEN]),
        .ul (state[4 + 5 * ARR_X_LEN]),
        .ur (state[6 + 5 * ARR_X_LEN]),
        .dl (state[4 + 3 * ARR_X_LEN]),
        .dr (state[6 + 3 * ARR_X_LEN]),

        .load_in(inp_load && select[4]),
        .in_data(inp_data[5]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[5 + 5 * ARR_X_LEN]),
        .out_data       (cell_outs[5 + 4 * ARR_X_LEN]),

        .state(state[5 + 4 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x6_y4(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[6 + 5 * ARR_X_LEN]),
        .d  (state[6 + 3 * ARR_X_LEN]),
        .l  (state[5 + 4 * ARR_X_LEN]),
        .r  (state[7 + 4 * ARR_X_LEN]),
        .ul (state[5 + 5 * ARR_X_LEN]),
        .ur (state[7 + 5 * ARR_X_LEN]),
        .dl (state[5 + 3 * ARR_X_LEN]),
        .dr (state[7 + 3 * ARR_X_LEN]),

        .load_in(inp_load && select[4]),
        .in_data(inp_data[6]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[6 + 5 * ARR_X_LEN]),
        .out_data       (cell_outs[6 + 4 * ARR_X_LEN]),

        .state(state[6 + 4 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x7_y4(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[7 + 5 * ARR_X_LEN]),
        .d  (state[7 + 3 * ARR_X_LEN]),
        .l  (state[6 + 4 * ARR_X_LEN]),
        .r  (state[8 + 4 * ARR_X_LEN]),
        .ul (state[6 + 5 * ARR_X_LEN]),
        .ur (state[8 + 5 * ARR_X_LEN]),
        .dl (state[6 + 3 * ARR_X_LEN]),
        .dr (state[8 + 3 * ARR_X_LEN]),

        .load_in(inp_load && select[4]),
        .in_data(inp_data[7]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[7 + 5 * ARR_X_LEN]),
        .out_data       (cell_outs[7 + 4 * ARR_X_LEN]),

        .state(state[7 + 4 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x8_y4(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[8 + 5 * ARR_X_LEN]),
        .d  (state[8 + 3 * ARR_X_LEN]),
        .l  (state[7 + 4 * ARR_X_LEN]),
        .r  (state[9 + 4 * ARR_X_LEN]),
        .ul (state[7 + 5 * ARR_X_LEN]),
        .ur (state[9 + 5 * ARR_X_LEN]),
        .dl (state[7 + 3 * ARR_X_LEN]),
        .dr (state[9 + 3 * ARR_X_LEN]),

        .load_in(inp_load && select[4]),
        .in_data(inp_data[8]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[8 + 5 * ARR_X_LEN]),
        .out_data       (cell_outs[8 + 4 * ARR_X_LEN]),

        .state(state[8 + 4 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x9_y4(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[9 + 5 * ARR_X_LEN]),
        .d  (state[9 + 3 * ARR_X_LEN]),
        .l  (state[8 + 4 * ARR_X_LEN]),
        .r  (state[10 + 4 * ARR_X_LEN]),
        .ul (state[8 + 5 * ARR_X_LEN]),
        .ur (state[10 + 5 * ARR_X_LEN]),
        .dl (state[8 + 3 * ARR_X_LEN]),
        .dr (state[10 + 3 * ARR_X_LEN]),

        .load_in(inp_load && select[4]),
        .in_data(inp_data[9]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[9 + 5 * ARR_X_LEN]),
        .out_data       (cell_outs[9 + 4 * ARR_X_LEN]),

        .state(state[9 + 4 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x10_y4(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[10 + 5 * ARR_X_LEN]),
        .d  (state[10 + 3 * ARR_X_LEN]),
        .l  (state[9 + 4 * ARR_X_LEN]),
        .r  (state[11 + 4 * ARR_X_LEN]),
        .ul (state[9 + 5 * ARR_X_LEN]),
        .ur (state[11 + 5 * ARR_X_LEN]),
        .dl (state[9 + 3 * ARR_X_LEN]),
        .dr (state[11 + 3 * ARR_X_LEN]),

        .load_in(inp_load && select[4]),
        .in_data(inp_data[10]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[10 + 5 * ARR_X_LEN]),
        .out_data       (cell_outs[10 + 4 * ARR_X_LEN]),

        .state(state[10 + 4 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x11_y4(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[11 + 5 * ARR_X_LEN]),
        .d  (state[11 + 3 * ARR_X_LEN]),
        .l  (state[10 + 4 * ARR_X_LEN]),
        .r  (state[12 + 4 * ARR_X_LEN]),
        .ul (state[10 + 5 * ARR_X_LEN]),
        .ur (state[12 + 5 * ARR_X_LEN]),
        .dl (state[10 + 3 * ARR_X_LEN]),
        .dr (state[12 + 3 * ARR_X_LEN]),

        .load_in(inp_load && select[4]),
        .in_data(inp_data[11]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[11 + 5 * ARR_X_LEN]),
        .out_data       (cell_outs[11 + 4 * ARR_X_LEN]),

        .state(state[11 + 4 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x12_y4(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[12 + 5 * ARR_X_LEN]),
        .d  (state[12 + 3 * ARR_X_LEN]),
        .l  (state[11 + 4 * ARR_X_LEN]),
        .r  (state[13 + 4 * ARR_X_LEN]),
        .ul (state[11 + 5 * ARR_X_LEN]),
        .ur (state[13 + 5 * ARR_X_LEN]),
        .dl (state[11 + 3 * ARR_X_LEN]),
        .dr (state[13 + 3 * ARR_X_LEN]),

        .load_in(inp_load && select[4]),
        .in_data(inp_data[12]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[12 + 5 * ARR_X_LEN]),
        .out_data       (cell_outs[12 + 4 * ARR_X_LEN]),

        .state(state[12 + 4 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x13_y4(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[13 + 5 * ARR_X_LEN]),
        .d  (state[13 + 3 * ARR_X_LEN]),
        .l  (state[12 + 4 * ARR_X_LEN]),
        .r  (state[14 + 4 * ARR_X_LEN]),
        .ul (state[12 + 5 * ARR_X_LEN]),
        .ur (state[14 + 5 * ARR_X_LEN]),
        .dl (state[12 + 3 * ARR_X_LEN]),
        .dr (state[14 + 3 * ARR_X_LEN]),

        .load_in(inp_load && select[4]),
        .in_data(inp_data[13]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[13 + 5 * ARR_X_LEN]),
        .out_data       (cell_outs[13 + 4 * ARR_X_LEN]),

        .state(state[13 + 4 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x14_y4(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[14 + 5 * ARR_X_LEN]),
        .d  (state[14 + 3 * ARR_X_LEN]),
        .l  (state[13 + 4 * ARR_X_LEN]),
        .r  (state[15 + 4 * ARR_X_LEN]),
        .ul (state[13 + 5 * ARR_X_LEN]),
        .ur (state[15 + 5 * ARR_X_LEN]),
        .dl (state[13 + 3 * ARR_X_LEN]),
        .dr (state[15 + 3 * ARR_X_LEN]),

        .load_in(inp_load && select[4]),
        .in_data(inp_data[14]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[14 + 5 * ARR_X_LEN]),
        .out_data       (cell_outs[14 + 4 * ARR_X_LEN]),

        .state(state[14 + 4 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x15_y4(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[15 + 5 * ARR_X_LEN]),
        .d  (state[15 + 3 * ARR_X_LEN]),
        .l  (state[14 + 4 * ARR_X_LEN]),
        .r  (1'b0),
        .ul (state[14 + 5 * ARR_X_LEN]),
        .ur (1'b0),
        .dl (state[14 + 3 * ARR_X_LEN]),
        .dr (1'b0),

        .load_in(inp_load && select[4]),
        .in_data(inp_data[15]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[15 + 5 * ARR_X_LEN]),
        .out_data       (cell_outs[15 + 4 * ARR_X_LEN]),

        .state(state[15 + 4 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x0_y5(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[0 + 6 * ARR_X_LEN]),
        .d  (state[0 + 4 * ARR_X_LEN]),
        .l  (1'b0),
        .r  (state[1 + 5 * ARR_X_LEN]),
        .ul (1'b0),
        .ur (state[1 + 6 * ARR_X_LEN]),
        .dl (1'b0),
        .dr (state[1 + 4 * ARR_X_LEN]),

        .load_in(inp_load && select[5]),
        .in_data(inp_data[0]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[0 + 6 * ARR_X_LEN]),
        .out_data       (cell_outs[0 + 5 * ARR_X_LEN]),

        .state(state[0 + 5 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x1_y5(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[1 + 6 * ARR_X_LEN]),
        .d  (state[1 + 4 * ARR_X_LEN]),
        .l  (state[0 + 5 * ARR_X_LEN]),
        .r  (state[2 + 5 * ARR_X_LEN]),
        .ul (state[0 + 6 * ARR_X_LEN]),
        .ur (state[2 + 6 * ARR_X_LEN]),
        .dl (state[0 + 4 * ARR_X_LEN]),
        .dr (state[2 + 4 * ARR_X_LEN]),

        .load_in(inp_load && select[5]),
        .in_data(inp_data[1]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[1 + 6 * ARR_X_LEN]),
        .out_data       (cell_outs[1 + 5 * ARR_X_LEN]),

        .state(state[1 + 5 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x2_y5(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[2 + 6 * ARR_X_LEN]),
        .d  (state[2 + 4 * ARR_X_LEN]),
        .l  (state[1 + 5 * ARR_X_LEN]),
        .r  (state[3 + 5 * ARR_X_LEN]),
        .ul (state[1 + 6 * ARR_X_LEN]),
        .ur (state[3 + 6 * ARR_X_LEN]),
        .dl (state[1 + 4 * ARR_X_LEN]),
        .dr (state[3 + 4 * ARR_X_LEN]),

        .load_in(inp_load && select[5]),
        .in_data(inp_data[2]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[2 + 6 * ARR_X_LEN]),
        .out_data       (cell_outs[2 + 5 * ARR_X_LEN]),

        .state(state[2 + 5 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x3_y5(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[3 + 6 * ARR_X_LEN]),
        .d  (state[3 + 4 * ARR_X_LEN]),
        .l  (state[2 + 5 * ARR_X_LEN]),
        .r  (state[4 + 5 * ARR_X_LEN]),
        .ul (state[2 + 6 * ARR_X_LEN]),
        .ur (state[4 + 6 * ARR_X_LEN]),
        .dl (state[2 + 4 * ARR_X_LEN]),
        .dr (state[4 + 4 * ARR_X_LEN]),

        .load_in(inp_load && select[5]),
        .in_data(inp_data[3]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[3 + 6 * ARR_X_LEN]),
        .out_data       (cell_outs[3 + 5 * ARR_X_LEN]),

        .state(state[3 + 5 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x4_y5(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[4 + 6 * ARR_X_LEN]),
        .d  (state[4 + 4 * ARR_X_LEN]),
        .l  (state[3 + 5 * ARR_X_LEN]),
        .r  (state[5 + 5 * ARR_X_LEN]),
        .ul (state[3 + 6 * ARR_X_LEN]),
        .ur (state[5 + 6 * ARR_X_LEN]),
        .dl (state[3 + 4 * ARR_X_LEN]),
        .dr (state[5 + 4 * ARR_X_LEN]),

        .load_in(inp_load && select[5]),
        .in_data(inp_data[4]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[4 + 6 * ARR_X_LEN]),
        .out_data       (cell_outs[4 + 5 * ARR_X_LEN]),

        .state(state[4 + 5 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x5_y5(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[5 + 6 * ARR_X_LEN]),
        .d  (state[5 + 4 * ARR_X_LEN]),
        .l  (state[4 + 5 * ARR_X_LEN]),
        .r  (state[6 + 5 * ARR_X_LEN]),
        .ul (state[4 + 6 * ARR_X_LEN]),
        .ur (state[6 + 6 * ARR_X_LEN]),
        .dl (state[4 + 4 * ARR_X_LEN]),
        .dr (state[6 + 4 * ARR_X_LEN]),

        .load_in(inp_load && select[5]),
        .in_data(inp_data[5]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[5 + 6 * ARR_X_LEN]),
        .out_data       (cell_outs[5 + 5 * ARR_X_LEN]),

        .state(state[5 + 5 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x6_y5(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[6 + 6 * ARR_X_LEN]),
        .d  (state[6 + 4 * ARR_X_LEN]),
        .l  (state[5 + 5 * ARR_X_LEN]),
        .r  (state[7 + 5 * ARR_X_LEN]),
        .ul (state[5 + 6 * ARR_X_LEN]),
        .ur (state[7 + 6 * ARR_X_LEN]),
        .dl (state[5 + 4 * ARR_X_LEN]),
        .dr (state[7 + 4 * ARR_X_LEN]),

        .load_in(inp_load && select[5]),
        .in_data(inp_data[6]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[6 + 6 * ARR_X_LEN]),
        .out_data       (cell_outs[6 + 5 * ARR_X_LEN]),

        .state(state[6 + 5 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x7_y5(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[7 + 6 * ARR_X_LEN]),
        .d  (state[7 + 4 * ARR_X_LEN]),
        .l  (state[6 + 5 * ARR_X_LEN]),
        .r  (state[8 + 5 * ARR_X_LEN]),
        .ul (state[6 + 6 * ARR_X_LEN]),
        .ur (state[8 + 6 * ARR_X_LEN]),
        .dl (state[6 + 4 * ARR_X_LEN]),
        .dr (state[8 + 4 * ARR_X_LEN]),

        .load_in(inp_load && select[5]),
        .in_data(inp_data[7]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[7 + 6 * ARR_X_LEN]),
        .out_data       (cell_outs[7 + 5 * ARR_X_LEN]),

        .state(state[7 + 5 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x8_y5(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[8 + 6 * ARR_X_LEN]),
        .d  (state[8 + 4 * ARR_X_LEN]),
        .l  (state[7 + 5 * ARR_X_LEN]),
        .r  (state[9 + 5 * ARR_X_LEN]),
        .ul (state[7 + 6 * ARR_X_LEN]),
        .ur (state[9 + 6 * ARR_X_LEN]),
        .dl (state[7 + 4 * ARR_X_LEN]),
        .dr (state[9 + 4 * ARR_X_LEN]),

        .load_in(inp_load && select[5]),
        .in_data(inp_data[8]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[8 + 6 * ARR_X_LEN]),
        .out_data       (cell_outs[8 + 5 * ARR_X_LEN]),

        .state(state[8 + 5 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x9_y5(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[9 + 6 * ARR_X_LEN]),
        .d  (state[9 + 4 * ARR_X_LEN]),
        .l  (state[8 + 5 * ARR_X_LEN]),
        .r  (state[10 + 5 * ARR_X_LEN]),
        .ul (state[8 + 6 * ARR_X_LEN]),
        .ur (state[10 + 6 * ARR_X_LEN]),
        .dl (state[8 + 4 * ARR_X_LEN]),
        .dr (state[10 + 4 * ARR_X_LEN]),

        .load_in(inp_load && select[5]),
        .in_data(inp_data[9]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[9 + 6 * ARR_X_LEN]),
        .out_data       (cell_outs[9 + 5 * ARR_X_LEN]),

        .state(state[9 + 5 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x10_y5(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[10 + 6 * ARR_X_LEN]),
        .d  (state[10 + 4 * ARR_X_LEN]),
        .l  (state[9 + 5 * ARR_X_LEN]),
        .r  (state[11 + 5 * ARR_X_LEN]),
        .ul (state[9 + 6 * ARR_X_LEN]),
        .ur (state[11 + 6 * ARR_X_LEN]),
        .dl (state[9 + 4 * ARR_X_LEN]),
        .dr (state[11 + 4 * ARR_X_LEN]),

        .load_in(inp_load && select[5]),
        .in_data(inp_data[10]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[10 + 6 * ARR_X_LEN]),
        .out_data       (cell_outs[10 + 5 * ARR_X_LEN]),

        .state(state[10 + 5 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x11_y5(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[11 + 6 * ARR_X_LEN]),
        .d  (state[11 + 4 * ARR_X_LEN]),
        .l  (state[10 + 5 * ARR_X_LEN]),
        .r  (state[12 + 5 * ARR_X_LEN]),
        .ul (state[10 + 6 * ARR_X_LEN]),
        .ur (state[12 + 6 * ARR_X_LEN]),
        .dl (state[10 + 4 * ARR_X_LEN]),
        .dr (state[12 + 4 * ARR_X_LEN]),

        .load_in(inp_load && select[5]),
        .in_data(inp_data[11]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[11 + 6 * ARR_X_LEN]),
        .out_data       (cell_outs[11 + 5 * ARR_X_LEN]),

        .state(state[11 + 5 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x12_y5(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[12 + 6 * ARR_X_LEN]),
        .d  (state[12 + 4 * ARR_X_LEN]),
        .l  (state[11 + 5 * ARR_X_LEN]),
        .r  (state[13 + 5 * ARR_X_LEN]),
        .ul (state[11 + 6 * ARR_X_LEN]),
        .ur (state[13 + 6 * ARR_X_LEN]),
        .dl (state[11 + 4 * ARR_X_LEN]),
        .dr (state[13 + 4 * ARR_X_LEN]),

        .load_in(inp_load && select[5]),
        .in_data(inp_data[12]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[12 + 6 * ARR_X_LEN]),
        .out_data       (cell_outs[12 + 5 * ARR_X_LEN]),

        .state(state[12 + 5 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x13_y5(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[13 + 6 * ARR_X_LEN]),
        .d  (state[13 + 4 * ARR_X_LEN]),
        .l  (state[12 + 5 * ARR_X_LEN]),
        .r  (state[14 + 5 * ARR_X_LEN]),
        .ul (state[12 + 6 * ARR_X_LEN]),
        .ur (state[14 + 6 * ARR_X_LEN]),
        .dl (state[12 + 4 * ARR_X_LEN]),
        .dr (state[14 + 4 * ARR_X_LEN]),

        .load_in(inp_load && select[5]),
        .in_data(inp_data[13]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[13 + 6 * ARR_X_LEN]),
        .out_data       (cell_outs[13 + 5 * ARR_X_LEN]),

        .state(state[13 + 5 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x14_y5(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[14 + 6 * ARR_X_LEN]),
        .d  (state[14 + 4 * ARR_X_LEN]),
        .l  (state[13 + 5 * ARR_X_LEN]),
        .r  (state[15 + 5 * ARR_X_LEN]),
        .ul (state[13 + 6 * ARR_X_LEN]),
        .ur (state[15 + 6 * ARR_X_LEN]),
        .dl (state[13 + 4 * ARR_X_LEN]),
        .dr (state[15 + 4 * ARR_X_LEN]),

        .load_in(inp_load && select[5]),
        .in_data(inp_data[14]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[14 + 6 * ARR_X_LEN]),
        .out_data       (cell_outs[14 + 5 * ARR_X_LEN]),

        .state(state[14 + 5 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x15_y5(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[15 + 6 * ARR_X_LEN]),
        .d  (state[15 + 4 * ARR_X_LEN]),
        .l  (state[14 + 5 * ARR_X_LEN]),
        .r  (1'b0),
        .ul (state[14 + 6 * ARR_X_LEN]),
        .ur (1'b0),
        .dl (state[14 + 4 * ARR_X_LEN]),
        .dr (1'b0),

        .load_in(inp_load && select[5]),
        .in_data(inp_data[15]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[15 + 6 * ARR_X_LEN]),
        .out_data       (cell_outs[15 + 5 * ARR_X_LEN]),

        .state(state[15 + 5 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x0_y6(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[0 + 7 * ARR_X_LEN]),
        .d  (state[0 + 5 * ARR_X_LEN]),
        .l  (1'b0),
        .r  (state[1 + 6 * ARR_X_LEN]),
        .ul (1'b0),
        .ur (state[1 + 7 * ARR_X_LEN]),
        .dl (1'b0),
        .dr (state[1 + 5 * ARR_X_LEN]),

        .load_in(inp_load && select[6]),
        .in_data(inp_data[0]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[0 + 7 * ARR_X_LEN]),
        .out_data       (cell_outs[0 + 6 * ARR_X_LEN]),

        .state(state[0 + 6 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x1_y6(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[1 + 7 * ARR_X_LEN]),
        .d  (state[1 + 5 * ARR_X_LEN]),
        .l  (state[0 + 6 * ARR_X_LEN]),
        .r  (state[2 + 6 * ARR_X_LEN]),
        .ul (state[0 + 7 * ARR_X_LEN]),
        .ur (state[2 + 7 * ARR_X_LEN]),
        .dl (state[0 + 5 * ARR_X_LEN]),
        .dr (state[2 + 5 * ARR_X_LEN]),

        .load_in(inp_load && select[6]),
        .in_data(inp_data[1]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[1 + 7 * ARR_X_LEN]),
        .out_data       (cell_outs[1 + 6 * ARR_X_LEN]),

        .state(state[1 + 6 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x2_y6(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[2 + 7 * ARR_X_LEN]),
        .d  (state[2 + 5 * ARR_X_LEN]),
        .l  (state[1 + 6 * ARR_X_LEN]),
        .r  (state[3 + 6 * ARR_X_LEN]),
        .ul (state[1 + 7 * ARR_X_LEN]),
        .ur (state[3 + 7 * ARR_X_LEN]),
        .dl (state[1 + 5 * ARR_X_LEN]),
        .dr (state[3 + 5 * ARR_X_LEN]),

        .load_in(inp_load && select[6]),
        .in_data(inp_data[2]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[2 + 7 * ARR_X_LEN]),
        .out_data       (cell_outs[2 + 6 * ARR_X_LEN]),

        .state(state[2 + 6 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x3_y6(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[3 + 7 * ARR_X_LEN]),
        .d  (state[3 + 5 * ARR_X_LEN]),
        .l  (state[2 + 6 * ARR_X_LEN]),
        .r  (state[4 + 6 * ARR_X_LEN]),
        .ul (state[2 + 7 * ARR_X_LEN]),
        .ur (state[4 + 7 * ARR_X_LEN]),
        .dl (state[2 + 5 * ARR_X_LEN]),
        .dr (state[4 + 5 * ARR_X_LEN]),

        .load_in(inp_load && select[6]),
        .in_data(inp_data[3]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[3 + 7 * ARR_X_LEN]),
        .out_data       (cell_outs[3 + 6 * ARR_X_LEN]),

        .state(state[3 + 6 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x4_y6(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[4 + 7 * ARR_X_LEN]),
        .d  (state[4 + 5 * ARR_X_LEN]),
        .l  (state[3 + 6 * ARR_X_LEN]),
        .r  (state[5 + 6 * ARR_X_LEN]),
        .ul (state[3 + 7 * ARR_X_LEN]),
        .ur (state[5 + 7 * ARR_X_LEN]),
        .dl (state[3 + 5 * ARR_X_LEN]),
        .dr (state[5 + 5 * ARR_X_LEN]),

        .load_in(inp_load && select[6]),
        .in_data(inp_data[4]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[4 + 7 * ARR_X_LEN]),
        .out_data       (cell_outs[4 + 6 * ARR_X_LEN]),

        .state(state[4 + 6 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x5_y6(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[5 + 7 * ARR_X_LEN]),
        .d  (state[5 + 5 * ARR_X_LEN]),
        .l  (state[4 + 6 * ARR_X_LEN]),
        .r  (state[6 + 6 * ARR_X_LEN]),
        .ul (state[4 + 7 * ARR_X_LEN]),
        .ur (state[6 + 7 * ARR_X_LEN]),
        .dl (state[4 + 5 * ARR_X_LEN]),
        .dr (state[6 + 5 * ARR_X_LEN]),

        .load_in(inp_load && select[6]),
        .in_data(inp_data[5]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[5 + 7 * ARR_X_LEN]),
        .out_data       (cell_outs[5 + 6 * ARR_X_LEN]),

        .state(state[5 + 6 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x6_y6(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[6 + 7 * ARR_X_LEN]),
        .d  (state[6 + 5 * ARR_X_LEN]),
        .l  (state[5 + 6 * ARR_X_LEN]),
        .r  (state[7 + 6 * ARR_X_LEN]),
        .ul (state[5 + 7 * ARR_X_LEN]),
        .ur (state[7 + 7 * ARR_X_LEN]),
        .dl (state[5 + 5 * ARR_X_LEN]),
        .dr (state[7 + 5 * ARR_X_LEN]),

        .load_in(inp_load && select[6]),
        .in_data(inp_data[6]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[6 + 7 * ARR_X_LEN]),
        .out_data       (cell_outs[6 + 6 * ARR_X_LEN]),

        .state(state[6 + 6 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x7_y6(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[7 + 7 * ARR_X_LEN]),
        .d  (state[7 + 5 * ARR_X_LEN]),
        .l  (state[6 + 6 * ARR_X_LEN]),
        .r  (state[8 + 6 * ARR_X_LEN]),
        .ul (state[6 + 7 * ARR_X_LEN]),
        .ur (state[8 + 7 * ARR_X_LEN]),
        .dl (state[6 + 5 * ARR_X_LEN]),
        .dr (state[8 + 5 * ARR_X_LEN]),

        .load_in(inp_load && select[6]),
        .in_data(inp_data[7]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[7 + 7 * ARR_X_LEN]),
        .out_data       (cell_outs[7 + 6 * ARR_X_LEN]),

        .state(state[7 + 6 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x8_y6(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[8 + 7 * ARR_X_LEN]),
        .d  (state[8 + 5 * ARR_X_LEN]),
        .l  (state[7 + 6 * ARR_X_LEN]),
        .r  (state[9 + 6 * ARR_X_LEN]),
        .ul (state[7 + 7 * ARR_X_LEN]),
        .ur (state[9 + 7 * ARR_X_LEN]),
        .dl (state[7 + 5 * ARR_X_LEN]),
        .dr (state[9 + 5 * ARR_X_LEN]),

        .load_in(inp_load && select[6]),
        .in_data(inp_data[8]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[8 + 7 * ARR_X_LEN]),
        .out_data       (cell_outs[8 + 6 * ARR_X_LEN]),

        .state(state[8 + 6 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x9_y6(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[9 + 7 * ARR_X_LEN]),
        .d  (state[9 + 5 * ARR_X_LEN]),
        .l  (state[8 + 6 * ARR_X_LEN]),
        .r  (state[10 + 6 * ARR_X_LEN]),
        .ul (state[8 + 7 * ARR_X_LEN]),
        .ur (state[10 + 7 * ARR_X_LEN]),
        .dl (state[8 + 5 * ARR_X_LEN]),
        .dr (state[10 + 5 * ARR_X_LEN]),

        .load_in(inp_load && select[6]),
        .in_data(inp_data[9]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[9 + 7 * ARR_X_LEN]),
        .out_data       (cell_outs[9 + 6 * ARR_X_LEN]),

        .state(state[9 + 6 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x10_y6(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[10 + 7 * ARR_X_LEN]),
        .d  (state[10 + 5 * ARR_X_LEN]),
        .l  (state[9 + 6 * ARR_X_LEN]),
        .r  (state[11 + 6 * ARR_X_LEN]),
        .ul (state[9 + 7 * ARR_X_LEN]),
        .ur (state[11 + 7 * ARR_X_LEN]),
        .dl (state[9 + 5 * ARR_X_LEN]),
        .dr (state[11 + 5 * ARR_X_LEN]),

        .load_in(inp_load && select[6]),
        .in_data(inp_data[10]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[10 + 7 * ARR_X_LEN]),
        .out_data       (cell_outs[10 + 6 * ARR_X_LEN]),

        .state(state[10 + 6 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x11_y6(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[11 + 7 * ARR_X_LEN]),
        .d  (state[11 + 5 * ARR_X_LEN]),
        .l  (state[10 + 6 * ARR_X_LEN]),
        .r  (state[12 + 6 * ARR_X_LEN]),
        .ul (state[10 + 7 * ARR_X_LEN]),
        .ur (state[12 + 7 * ARR_X_LEN]),
        .dl (state[10 + 5 * ARR_X_LEN]),
        .dr (state[12 + 5 * ARR_X_LEN]),

        .load_in(inp_load && select[6]),
        .in_data(inp_data[11]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[11 + 7 * ARR_X_LEN]),
        .out_data       (cell_outs[11 + 6 * ARR_X_LEN]),

        .state(state[11 + 6 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x12_y6(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[12 + 7 * ARR_X_LEN]),
        .d  (state[12 + 5 * ARR_X_LEN]),
        .l  (state[11 + 6 * ARR_X_LEN]),
        .r  (state[13 + 6 * ARR_X_LEN]),
        .ul (state[11 + 7 * ARR_X_LEN]),
        .ur (state[13 + 7 * ARR_X_LEN]),
        .dl (state[11 + 5 * ARR_X_LEN]),
        .dr (state[13 + 5 * ARR_X_LEN]),

        .load_in(inp_load && select[6]),
        .in_data(inp_data[12]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[12 + 7 * ARR_X_LEN]),
        .out_data       (cell_outs[12 + 6 * ARR_X_LEN]),

        .state(state[12 + 6 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x13_y6(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[13 + 7 * ARR_X_LEN]),
        .d  (state[13 + 5 * ARR_X_LEN]),
        .l  (state[12 + 6 * ARR_X_LEN]),
        .r  (state[14 + 6 * ARR_X_LEN]),
        .ul (state[12 + 7 * ARR_X_LEN]),
        .ur (state[14 + 7 * ARR_X_LEN]),
        .dl (state[12 + 5 * ARR_X_LEN]),
        .dr (state[14 + 5 * ARR_X_LEN]),

        .load_in(inp_load && select[6]),
        .in_data(inp_data[13]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[13 + 7 * ARR_X_LEN]),
        .out_data       (cell_outs[13 + 6 * ARR_X_LEN]),

        .state(state[13 + 6 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x14_y6(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[14 + 7 * ARR_X_LEN]),
        .d  (state[14 + 5 * ARR_X_LEN]),
        .l  (state[13 + 6 * ARR_X_LEN]),
        .r  (state[15 + 6 * ARR_X_LEN]),
        .ul (state[13 + 7 * ARR_X_LEN]),
        .ur (state[15 + 7 * ARR_X_LEN]),
        .dl (state[13 + 5 * ARR_X_LEN]),
        .dr (state[15 + 5 * ARR_X_LEN]),

        .load_in(inp_load && select[6]),
        .in_data(inp_data[14]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[14 + 7 * ARR_X_LEN]),
        .out_data       (cell_outs[14 + 6 * ARR_X_LEN]),

        .state(state[14 + 6 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x15_y6(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[15 + 7 * ARR_X_LEN]),
        .d  (state[15 + 5 * ARR_X_LEN]),
        .l  (state[14 + 6 * ARR_X_LEN]),
        .r  (1'b0),
        .ul (state[14 + 7 * ARR_X_LEN]),
        .ur (1'b0),
        .dl (state[14 + 5 * ARR_X_LEN]),
        .dr (1'b0),

        .load_in(inp_load && select[6]),
        .in_data(inp_data[15]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[15 + 7 * ARR_X_LEN]),
        .out_data       (cell_outs[15 + 6 * ARR_X_LEN]),

        .state(state[15 + 6 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x0_y7(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[0 + 8 * ARR_X_LEN]),
        .d  (state[0 + 6 * ARR_X_LEN]),
        .l  (1'b0),
        .r  (state[1 + 7 * ARR_X_LEN]),
        .ul (1'b0),
        .ur (state[1 + 8 * ARR_X_LEN]),
        .dl (1'b0),
        .dr (state[1 + 6 * ARR_X_LEN]),

        .load_in(inp_load && select[7]),
        .in_data(inp_data[0]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[0 + 8 * ARR_X_LEN]),
        .out_data       (cell_outs[0 + 7 * ARR_X_LEN]),

        .state(state[0 + 7 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x1_y7(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[1 + 8 * ARR_X_LEN]),
        .d  (state[1 + 6 * ARR_X_LEN]),
        .l  (state[0 + 7 * ARR_X_LEN]),
        .r  (state[2 + 7 * ARR_X_LEN]),
        .ul (state[0 + 8 * ARR_X_LEN]),
        .ur (state[2 + 8 * ARR_X_LEN]),
        .dl (state[0 + 6 * ARR_X_LEN]),
        .dr (state[2 + 6 * ARR_X_LEN]),

        .load_in(inp_load && select[7]),
        .in_data(inp_data[1]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[1 + 8 * ARR_X_LEN]),
        .out_data       (cell_outs[1 + 7 * ARR_X_LEN]),

        .state(state[1 + 7 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x2_y7(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[2 + 8 * ARR_X_LEN]),
        .d  (state[2 + 6 * ARR_X_LEN]),
        .l  (state[1 + 7 * ARR_X_LEN]),
        .r  (state[3 + 7 * ARR_X_LEN]),
        .ul (state[1 + 8 * ARR_X_LEN]),
        .ur (state[3 + 8 * ARR_X_LEN]),
        .dl (state[1 + 6 * ARR_X_LEN]),
        .dr (state[3 + 6 * ARR_X_LEN]),

        .load_in(inp_load && select[7]),
        .in_data(inp_data[2]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[2 + 8 * ARR_X_LEN]),
        .out_data       (cell_outs[2 + 7 * ARR_X_LEN]),

        .state(state[2 + 7 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x3_y7(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[3 + 8 * ARR_X_LEN]),
        .d  (state[3 + 6 * ARR_X_LEN]),
        .l  (state[2 + 7 * ARR_X_LEN]),
        .r  (state[4 + 7 * ARR_X_LEN]),
        .ul (state[2 + 8 * ARR_X_LEN]),
        .ur (state[4 + 8 * ARR_X_LEN]),
        .dl (state[2 + 6 * ARR_X_LEN]),
        .dr (state[4 + 6 * ARR_X_LEN]),

        .load_in(inp_load && select[7]),
        .in_data(inp_data[3]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[3 + 8 * ARR_X_LEN]),
        .out_data       (cell_outs[3 + 7 * ARR_X_LEN]),

        .state(state[3 + 7 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x4_y7(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[4 + 8 * ARR_X_LEN]),
        .d  (state[4 + 6 * ARR_X_LEN]),
        .l  (state[3 + 7 * ARR_X_LEN]),
        .r  (state[5 + 7 * ARR_X_LEN]),
        .ul (state[3 + 8 * ARR_X_LEN]),
        .ur (state[5 + 8 * ARR_X_LEN]),
        .dl (state[3 + 6 * ARR_X_LEN]),
        .dr (state[5 + 6 * ARR_X_LEN]),

        .load_in(inp_load && select[7]),
        .in_data(inp_data[4]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[4 + 8 * ARR_X_LEN]),
        .out_data       (cell_outs[4 + 7 * ARR_X_LEN]),

        .state(state[4 + 7 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x5_y7(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[5 + 8 * ARR_X_LEN]),
        .d  (state[5 + 6 * ARR_X_LEN]),
        .l  (state[4 + 7 * ARR_X_LEN]),
        .r  (state[6 + 7 * ARR_X_LEN]),
        .ul (state[4 + 8 * ARR_X_LEN]),
        .ur (state[6 + 8 * ARR_X_LEN]),
        .dl (state[4 + 6 * ARR_X_LEN]),
        .dr (state[6 + 6 * ARR_X_LEN]),

        .load_in(inp_load && select[7]),
        .in_data(inp_data[5]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[5 + 8 * ARR_X_LEN]),
        .out_data       (cell_outs[5 + 7 * ARR_X_LEN]),

        .state(state[5 + 7 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x6_y7(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[6 + 8 * ARR_X_LEN]),
        .d  (state[6 + 6 * ARR_X_LEN]),
        .l  (state[5 + 7 * ARR_X_LEN]),
        .r  (state[7 + 7 * ARR_X_LEN]),
        .ul (state[5 + 8 * ARR_X_LEN]),
        .ur (state[7 + 8 * ARR_X_LEN]),
        .dl (state[5 + 6 * ARR_X_LEN]),
        .dr (state[7 + 6 * ARR_X_LEN]),

        .load_in(inp_load && select[7]),
        .in_data(inp_data[6]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[6 + 8 * ARR_X_LEN]),
        .out_data       (cell_outs[6 + 7 * ARR_X_LEN]),

        .state(state[6 + 7 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x7_y7(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[7 + 8 * ARR_X_LEN]),
        .d  (state[7 + 6 * ARR_X_LEN]),
        .l  (state[6 + 7 * ARR_X_LEN]),
        .r  (state[8 + 7 * ARR_X_LEN]),
        .ul (state[6 + 8 * ARR_X_LEN]),
        .ur (state[8 + 8 * ARR_X_LEN]),
        .dl (state[6 + 6 * ARR_X_LEN]),
        .dr (state[8 + 6 * ARR_X_LEN]),

        .load_in(inp_load && select[7]),
        .in_data(inp_data[7]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[7 + 8 * ARR_X_LEN]),
        .out_data       (cell_outs[7 + 7 * ARR_X_LEN]),

        .state(state[7 + 7 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x8_y7(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[8 + 8 * ARR_X_LEN]),
        .d  (state[8 + 6 * ARR_X_LEN]),
        .l  (state[7 + 7 * ARR_X_LEN]),
        .r  (state[9 + 7 * ARR_X_LEN]),
        .ul (state[7 + 8 * ARR_X_LEN]),
        .ur (state[9 + 8 * ARR_X_LEN]),
        .dl (state[7 + 6 * ARR_X_LEN]),
        .dr (state[9 + 6 * ARR_X_LEN]),

        .load_in(inp_load && select[7]),
        .in_data(inp_data[8]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[8 + 8 * ARR_X_LEN]),
        .out_data       (cell_outs[8 + 7 * ARR_X_LEN]),

        .state(state[8 + 7 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x9_y7(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[9 + 8 * ARR_X_LEN]),
        .d  (state[9 + 6 * ARR_X_LEN]),
        .l  (state[8 + 7 * ARR_X_LEN]),
        .r  (state[10 + 7 * ARR_X_LEN]),
        .ul (state[8 + 8 * ARR_X_LEN]),
        .ur (state[10 + 8 * ARR_X_LEN]),
        .dl (state[8 + 6 * ARR_X_LEN]),
        .dr (state[10 + 6 * ARR_X_LEN]),

        .load_in(inp_load && select[7]),
        .in_data(inp_data[9]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[9 + 8 * ARR_X_LEN]),
        .out_data       (cell_outs[9 + 7 * ARR_X_LEN]),

        .state(state[9 + 7 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x10_y7(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[10 + 8 * ARR_X_LEN]),
        .d  (state[10 + 6 * ARR_X_LEN]),
        .l  (state[9 + 7 * ARR_X_LEN]),
        .r  (state[11 + 7 * ARR_X_LEN]),
        .ul (state[9 + 8 * ARR_X_LEN]),
        .ur (state[11 + 8 * ARR_X_LEN]),
        .dl (state[9 + 6 * ARR_X_LEN]),
        .dr (state[11 + 6 * ARR_X_LEN]),

        .load_in(inp_load && select[7]),
        .in_data(inp_data[10]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[10 + 8 * ARR_X_LEN]),
        .out_data       (cell_outs[10 + 7 * ARR_X_LEN]),

        .state(state[10 + 7 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x11_y7(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[11 + 8 * ARR_X_LEN]),
        .d  (state[11 + 6 * ARR_X_LEN]),
        .l  (state[10 + 7 * ARR_X_LEN]),
        .r  (state[12 + 7 * ARR_X_LEN]),
        .ul (state[10 + 8 * ARR_X_LEN]),
        .ur (state[12 + 8 * ARR_X_LEN]),
        .dl (state[10 + 6 * ARR_X_LEN]),
        .dr (state[12 + 6 * ARR_X_LEN]),

        .load_in(inp_load && select[7]),
        .in_data(inp_data[11]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[11 + 8 * ARR_X_LEN]),
        .out_data       (cell_outs[11 + 7 * ARR_X_LEN]),

        .state(state[11 + 7 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x12_y7(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[12 + 8 * ARR_X_LEN]),
        .d  (state[12 + 6 * ARR_X_LEN]),
        .l  (state[11 + 7 * ARR_X_LEN]),
        .r  (state[13 + 7 * ARR_X_LEN]),
        .ul (state[11 + 8 * ARR_X_LEN]),
        .ur (state[13 + 8 * ARR_X_LEN]),
        .dl (state[11 + 6 * ARR_X_LEN]),
        .dr (state[13 + 6 * ARR_X_LEN]),

        .load_in(inp_load && select[7]),
        .in_data(inp_data[12]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[12 + 8 * ARR_X_LEN]),
        .out_data       (cell_outs[12 + 7 * ARR_X_LEN]),

        .state(state[12 + 7 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x13_y7(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[13 + 8 * ARR_X_LEN]),
        .d  (state[13 + 6 * ARR_X_LEN]),
        .l  (state[12 + 7 * ARR_X_LEN]),
        .r  (state[14 + 7 * ARR_X_LEN]),
        .ul (state[12 + 8 * ARR_X_LEN]),
        .ur (state[14 + 8 * ARR_X_LEN]),
        .dl (state[12 + 6 * ARR_X_LEN]),
        .dr (state[14 + 6 * ARR_X_LEN]),

        .load_in(inp_load && select[7]),
        .in_data(inp_data[13]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[13 + 8 * ARR_X_LEN]),
        .out_data       (cell_outs[13 + 7 * ARR_X_LEN]),

        .state(state[13 + 7 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x14_y7(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[14 + 8 * ARR_X_LEN]),
        .d  (state[14 + 6 * ARR_X_LEN]),
        .l  (state[13 + 7 * ARR_X_LEN]),
        .r  (state[15 + 7 * ARR_X_LEN]),
        .ul (state[13 + 8 * ARR_X_LEN]),
        .ur (state[15 + 8 * ARR_X_LEN]),
        .dl (state[13 + 6 * ARR_X_LEN]),
        .dr (state[15 + 6 * ARR_X_LEN]),

        .load_in(inp_load && select[7]),
        .in_data(inp_data[14]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[14 + 8 * ARR_X_LEN]),
        .out_data       (cell_outs[14 + 7 * ARR_X_LEN]),

        .state(state[14 + 7 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x15_y7(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[15 + 8 * ARR_X_LEN]),
        .d  (state[15 + 6 * ARR_X_LEN]),
        .l  (state[14 + 7 * ARR_X_LEN]),
        .r  (1'b0),
        .ul (state[14 + 8 * ARR_X_LEN]),
        .ur (1'b0),
        .dl (state[14 + 6 * ARR_X_LEN]),
        .dr (1'b0),

        .load_in(inp_load && select[7]),
        .in_data(inp_data[15]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[15 + 8 * ARR_X_LEN]),
        .out_data       (cell_outs[15 + 7 * ARR_X_LEN]),

        .state(state[15 + 7 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x0_y8(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[0 + 9 * ARR_X_LEN]),
        .d  (state[0 + 7 * ARR_X_LEN]),
        .l  (1'b0),
        .r  (state[1 + 8 * ARR_X_LEN]),
        .ul (1'b0),
        .ur (state[1 + 9 * ARR_X_LEN]),
        .dl (1'b0),
        .dr (state[1 + 7 * ARR_X_LEN]),

        .load_in(inp_load && select[8]),
        .in_data(inp_data[0]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[0 + 9 * ARR_X_LEN]),
        .out_data       (cell_outs[0 + 8 * ARR_X_LEN]),

        .state(state[0 + 8 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x1_y8(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[1 + 9 * ARR_X_LEN]),
        .d  (state[1 + 7 * ARR_X_LEN]),
        .l  (state[0 + 8 * ARR_X_LEN]),
        .r  (state[2 + 8 * ARR_X_LEN]),
        .ul (state[0 + 9 * ARR_X_LEN]),
        .ur (state[2 + 9 * ARR_X_LEN]),
        .dl (state[0 + 7 * ARR_X_LEN]),
        .dr (state[2 + 7 * ARR_X_LEN]),

        .load_in(inp_load && select[8]),
        .in_data(inp_data[1]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[1 + 9 * ARR_X_LEN]),
        .out_data       (cell_outs[1 + 8 * ARR_X_LEN]),

        .state(state[1 + 8 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x2_y8(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[2 + 9 * ARR_X_LEN]),
        .d  (state[2 + 7 * ARR_X_LEN]),
        .l  (state[1 + 8 * ARR_X_LEN]),
        .r  (state[3 + 8 * ARR_X_LEN]),
        .ul (state[1 + 9 * ARR_X_LEN]),
        .ur (state[3 + 9 * ARR_X_LEN]),
        .dl (state[1 + 7 * ARR_X_LEN]),
        .dr (state[3 + 7 * ARR_X_LEN]),

        .load_in(inp_load && select[8]),
        .in_data(inp_data[2]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[2 + 9 * ARR_X_LEN]),
        .out_data       (cell_outs[2 + 8 * ARR_X_LEN]),

        .state(state[2 + 8 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x3_y8(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[3 + 9 * ARR_X_LEN]),
        .d  (state[3 + 7 * ARR_X_LEN]),
        .l  (state[2 + 8 * ARR_X_LEN]),
        .r  (state[4 + 8 * ARR_X_LEN]),
        .ul (state[2 + 9 * ARR_X_LEN]),
        .ur (state[4 + 9 * ARR_X_LEN]),
        .dl (state[2 + 7 * ARR_X_LEN]),
        .dr (state[4 + 7 * ARR_X_LEN]),

        .load_in(inp_load && select[8]),
        .in_data(inp_data[3]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[3 + 9 * ARR_X_LEN]),
        .out_data       (cell_outs[3 + 8 * ARR_X_LEN]),

        .state(state[3 + 8 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x4_y8(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[4 + 9 * ARR_X_LEN]),
        .d  (state[4 + 7 * ARR_X_LEN]),
        .l  (state[3 + 8 * ARR_X_LEN]),
        .r  (state[5 + 8 * ARR_X_LEN]),
        .ul (state[3 + 9 * ARR_X_LEN]),
        .ur (state[5 + 9 * ARR_X_LEN]),
        .dl (state[3 + 7 * ARR_X_LEN]),
        .dr (state[5 + 7 * ARR_X_LEN]),

        .load_in(inp_load && select[8]),
        .in_data(inp_data[4]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[4 + 9 * ARR_X_LEN]),
        .out_data       (cell_outs[4 + 8 * ARR_X_LEN]),

        .state(state[4 + 8 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x5_y8(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[5 + 9 * ARR_X_LEN]),
        .d  (state[5 + 7 * ARR_X_LEN]),
        .l  (state[4 + 8 * ARR_X_LEN]),
        .r  (state[6 + 8 * ARR_X_LEN]),
        .ul (state[4 + 9 * ARR_X_LEN]),
        .ur (state[6 + 9 * ARR_X_LEN]),
        .dl (state[4 + 7 * ARR_X_LEN]),
        .dr (state[6 + 7 * ARR_X_LEN]),

        .load_in(inp_load && select[8]),
        .in_data(inp_data[5]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[5 + 9 * ARR_X_LEN]),
        .out_data       (cell_outs[5 + 8 * ARR_X_LEN]),

        .state(state[5 + 8 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x6_y8(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[6 + 9 * ARR_X_LEN]),
        .d  (state[6 + 7 * ARR_X_LEN]),
        .l  (state[5 + 8 * ARR_X_LEN]),
        .r  (state[7 + 8 * ARR_X_LEN]),
        .ul (state[5 + 9 * ARR_X_LEN]),
        .ur (state[7 + 9 * ARR_X_LEN]),
        .dl (state[5 + 7 * ARR_X_LEN]),
        .dr (state[7 + 7 * ARR_X_LEN]),

        .load_in(inp_load && select[8]),
        .in_data(inp_data[6]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[6 + 9 * ARR_X_LEN]),
        .out_data       (cell_outs[6 + 8 * ARR_X_LEN]),

        .state(state[6 + 8 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x7_y8(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[7 + 9 * ARR_X_LEN]),
        .d  (state[7 + 7 * ARR_X_LEN]),
        .l  (state[6 + 8 * ARR_X_LEN]),
        .r  (state[8 + 8 * ARR_X_LEN]),
        .ul (state[6 + 9 * ARR_X_LEN]),
        .ur (state[8 + 9 * ARR_X_LEN]),
        .dl (state[6 + 7 * ARR_X_LEN]),
        .dr (state[8 + 7 * ARR_X_LEN]),

        .load_in(inp_load && select[8]),
        .in_data(inp_data[7]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[7 + 9 * ARR_X_LEN]),
        .out_data       (cell_outs[7 + 8 * ARR_X_LEN]),

        .state(state[7 + 8 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x8_y8(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[8 + 9 * ARR_X_LEN]),
        .d  (state[8 + 7 * ARR_X_LEN]),
        .l  (state[7 + 8 * ARR_X_LEN]),
        .r  (state[9 + 8 * ARR_X_LEN]),
        .ul (state[7 + 9 * ARR_X_LEN]),
        .ur (state[9 + 9 * ARR_X_LEN]),
        .dl (state[7 + 7 * ARR_X_LEN]),
        .dr (state[9 + 7 * ARR_X_LEN]),

        .load_in(inp_load && select[8]),
        .in_data(inp_data[8]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[8 + 9 * ARR_X_LEN]),
        .out_data       (cell_outs[8 + 8 * ARR_X_LEN]),

        .state(state[8 + 8 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x9_y8(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[9 + 9 * ARR_X_LEN]),
        .d  (state[9 + 7 * ARR_X_LEN]),
        .l  (state[8 + 8 * ARR_X_LEN]),
        .r  (state[10 + 8 * ARR_X_LEN]),
        .ul (state[8 + 9 * ARR_X_LEN]),
        .ur (state[10 + 9 * ARR_X_LEN]),
        .dl (state[8 + 7 * ARR_X_LEN]),
        .dr (state[10 + 7 * ARR_X_LEN]),

        .load_in(inp_load && select[8]),
        .in_data(inp_data[9]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[9 + 9 * ARR_X_LEN]),
        .out_data       (cell_outs[9 + 8 * ARR_X_LEN]),

        .state(state[9 + 8 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x10_y8(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[10 + 9 * ARR_X_LEN]),
        .d  (state[10 + 7 * ARR_X_LEN]),
        .l  (state[9 + 8 * ARR_X_LEN]),
        .r  (state[11 + 8 * ARR_X_LEN]),
        .ul (state[9 + 9 * ARR_X_LEN]),
        .ur (state[11 + 9 * ARR_X_LEN]),
        .dl (state[9 + 7 * ARR_X_LEN]),
        .dr (state[11 + 7 * ARR_X_LEN]),

        .load_in(inp_load && select[8]),
        .in_data(inp_data[10]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[10 + 9 * ARR_X_LEN]),
        .out_data       (cell_outs[10 + 8 * ARR_X_LEN]),

        .state(state[10 + 8 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x11_y8(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[11 + 9 * ARR_X_LEN]),
        .d  (state[11 + 7 * ARR_X_LEN]),
        .l  (state[10 + 8 * ARR_X_LEN]),
        .r  (state[12 + 8 * ARR_X_LEN]),
        .ul (state[10 + 9 * ARR_X_LEN]),
        .ur (state[12 + 9 * ARR_X_LEN]),
        .dl (state[10 + 7 * ARR_X_LEN]),
        .dr (state[12 + 7 * ARR_X_LEN]),

        .load_in(inp_load && select[8]),
        .in_data(inp_data[11]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[11 + 9 * ARR_X_LEN]),
        .out_data       (cell_outs[11 + 8 * ARR_X_LEN]),

        .state(state[11 + 8 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x12_y8(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[12 + 9 * ARR_X_LEN]),
        .d  (state[12 + 7 * ARR_X_LEN]),
        .l  (state[11 + 8 * ARR_X_LEN]),
        .r  (state[13 + 8 * ARR_X_LEN]),
        .ul (state[11 + 9 * ARR_X_LEN]),
        .ur (state[13 + 9 * ARR_X_LEN]),
        .dl (state[11 + 7 * ARR_X_LEN]),
        .dr (state[13 + 7 * ARR_X_LEN]),

        .load_in(inp_load && select[8]),
        .in_data(inp_data[12]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[12 + 9 * ARR_X_LEN]),
        .out_data       (cell_outs[12 + 8 * ARR_X_LEN]),

        .state(state[12 + 8 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x13_y8(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[13 + 9 * ARR_X_LEN]),
        .d  (state[13 + 7 * ARR_X_LEN]),
        .l  (state[12 + 8 * ARR_X_LEN]),
        .r  (state[14 + 8 * ARR_X_LEN]),
        .ul (state[12 + 9 * ARR_X_LEN]),
        .ur (state[14 + 9 * ARR_X_LEN]),
        .dl (state[12 + 7 * ARR_X_LEN]),
        .dr (state[14 + 7 * ARR_X_LEN]),

        .load_in(inp_load && select[8]),
        .in_data(inp_data[13]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[13 + 9 * ARR_X_LEN]),
        .out_data       (cell_outs[13 + 8 * ARR_X_LEN]),

        .state(state[13 + 8 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x14_y8(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[14 + 9 * ARR_X_LEN]),
        .d  (state[14 + 7 * ARR_X_LEN]),
        .l  (state[13 + 8 * ARR_X_LEN]),
        .r  (state[15 + 8 * ARR_X_LEN]),
        .ul (state[13 + 9 * ARR_X_LEN]),
        .ur (state[15 + 9 * ARR_X_LEN]),
        .dl (state[13 + 7 * ARR_X_LEN]),
        .dr (state[15 + 7 * ARR_X_LEN]),

        .load_in(inp_load && select[8]),
        .in_data(inp_data[14]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[14 + 9 * ARR_X_LEN]),
        .out_data       (cell_outs[14 + 8 * ARR_X_LEN]),

        .state(state[14 + 8 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x15_y8(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[15 + 9 * ARR_X_LEN]),
        .d  (state[15 + 7 * ARR_X_LEN]),
        .l  (state[14 + 8 * ARR_X_LEN]),
        .r  (1'b0),
        .ul (state[14 + 9 * ARR_X_LEN]),
        .ur (1'b0),
        .dl (state[14 + 7 * ARR_X_LEN]),
        .dr (1'b0),

        .load_in(inp_load && select[8]),
        .in_data(inp_data[15]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[15 + 9 * ARR_X_LEN]),
        .out_data       (cell_outs[15 + 8 * ARR_X_LEN]),

        .state(state[15 + 8 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x0_y9(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[0 + 10 * ARR_X_LEN]),
        .d  (state[0 + 8 * ARR_X_LEN]),
        .l  (1'b0),
        .r  (state[1 + 9 * ARR_X_LEN]),
        .ul (1'b0),
        .ur (state[1 + 10 * ARR_X_LEN]),
        .dl (1'b0),
        .dr (state[1 + 8 * ARR_X_LEN]),

        .load_in(inp_load && select[9]),
        .in_data(inp_data[0]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[0 + 10 * ARR_X_LEN]),
        .out_data       (cell_outs[0 + 9 * ARR_X_LEN]),

        .state(state[0 + 9 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x1_y9(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[1 + 10 * ARR_X_LEN]),
        .d  (state[1 + 8 * ARR_X_LEN]),
        .l  (state[0 + 9 * ARR_X_LEN]),
        .r  (state[2 + 9 * ARR_X_LEN]),
        .ul (state[0 + 10 * ARR_X_LEN]),
        .ur (state[2 + 10 * ARR_X_LEN]),
        .dl (state[0 + 8 * ARR_X_LEN]),
        .dr (state[2 + 8 * ARR_X_LEN]),

        .load_in(inp_load && select[9]),
        .in_data(inp_data[1]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[1 + 10 * ARR_X_LEN]),
        .out_data       (cell_outs[1 + 9 * ARR_X_LEN]),

        .state(state[1 + 9 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x2_y9(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[2 + 10 * ARR_X_LEN]),
        .d  (state[2 + 8 * ARR_X_LEN]),
        .l  (state[1 + 9 * ARR_X_LEN]),
        .r  (state[3 + 9 * ARR_X_LEN]),
        .ul (state[1 + 10 * ARR_X_LEN]),
        .ur (state[3 + 10 * ARR_X_LEN]),
        .dl (state[1 + 8 * ARR_X_LEN]),
        .dr (state[3 + 8 * ARR_X_LEN]),

        .load_in(inp_load && select[9]),
        .in_data(inp_data[2]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[2 + 10 * ARR_X_LEN]),
        .out_data       (cell_outs[2 + 9 * ARR_X_LEN]),

        .state(state[2 + 9 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x3_y9(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[3 + 10 * ARR_X_LEN]),
        .d  (state[3 + 8 * ARR_X_LEN]),
        .l  (state[2 + 9 * ARR_X_LEN]),
        .r  (state[4 + 9 * ARR_X_LEN]),
        .ul (state[2 + 10 * ARR_X_LEN]),
        .ur (state[4 + 10 * ARR_X_LEN]),
        .dl (state[2 + 8 * ARR_X_LEN]),
        .dr (state[4 + 8 * ARR_X_LEN]),

        .load_in(inp_load && select[9]),
        .in_data(inp_data[3]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[3 + 10 * ARR_X_LEN]),
        .out_data       (cell_outs[3 + 9 * ARR_X_LEN]),

        .state(state[3 + 9 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x4_y9(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[4 + 10 * ARR_X_LEN]),
        .d  (state[4 + 8 * ARR_X_LEN]),
        .l  (state[3 + 9 * ARR_X_LEN]),
        .r  (state[5 + 9 * ARR_X_LEN]),
        .ul (state[3 + 10 * ARR_X_LEN]),
        .ur (state[5 + 10 * ARR_X_LEN]),
        .dl (state[3 + 8 * ARR_X_LEN]),
        .dr (state[5 + 8 * ARR_X_LEN]),

        .load_in(inp_load && select[9]),
        .in_data(inp_data[4]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[4 + 10 * ARR_X_LEN]),
        .out_data       (cell_outs[4 + 9 * ARR_X_LEN]),

        .state(state[4 + 9 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x5_y9(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[5 + 10 * ARR_X_LEN]),
        .d  (state[5 + 8 * ARR_X_LEN]),
        .l  (state[4 + 9 * ARR_X_LEN]),
        .r  (state[6 + 9 * ARR_X_LEN]),
        .ul (state[4 + 10 * ARR_X_LEN]),
        .ur (state[6 + 10 * ARR_X_LEN]),
        .dl (state[4 + 8 * ARR_X_LEN]),
        .dr (state[6 + 8 * ARR_X_LEN]),

        .load_in(inp_load && select[9]),
        .in_data(inp_data[5]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[5 + 10 * ARR_X_LEN]),
        .out_data       (cell_outs[5 + 9 * ARR_X_LEN]),

        .state(state[5 + 9 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x6_y9(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[6 + 10 * ARR_X_LEN]),
        .d  (state[6 + 8 * ARR_X_LEN]),
        .l  (state[5 + 9 * ARR_X_LEN]),
        .r  (state[7 + 9 * ARR_X_LEN]),
        .ul (state[5 + 10 * ARR_X_LEN]),
        .ur (state[7 + 10 * ARR_X_LEN]),
        .dl (state[5 + 8 * ARR_X_LEN]),
        .dr (state[7 + 8 * ARR_X_LEN]),

        .load_in(inp_load && select[9]),
        .in_data(inp_data[6]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[6 + 10 * ARR_X_LEN]),
        .out_data       (cell_outs[6 + 9 * ARR_X_LEN]),

        .state(state[6 + 9 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x7_y9(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[7 + 10 * ARR_X_LEN]),
        .d  (state[7 + 8 * ARR_X_LEN]),
        .l  (state[6 + 9 * ARR_X_LEN]),
        .r  (state[8 + 9 * ARR_X_LEN]),
        .ul (state[6 + 10 * ARR_X_LEN]),
        .ur (state[8 + 10 * ARR_X_LEN]),
        .dl (state[6 + 8 * ARR_X_LEN]),
        .dr (state[8 + 8 * ARR_X_LEN]),

        .load_in(inp_load && select[9]),
        .in_data(inp_data[7]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[7 + 10 * ARR_X_LEN]),
        .out_data       (cell_outs[7 + 9 * ARR_X_LEN]),

        .state(state[7 + 9 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x8_y9(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[8 + 10 * ARR_X_LEN]),
        .d  (state[8 + 8 * ARR_X_LEN]),
        .l  (state[7 + 9 * ARR_X_LEN]),
        .r  (state[9 + 9 * ARR_X_LEN]),
        .ul (state[7 + 10 * ARR_X_LEN]),
        .ur (state[9 + 10 * ARR_X_LEN]),
        .dl (state[7 + 8 * ARR_X_LEN]),
        .dr (state[9 + 8 * ARR_X_LEN]),

        .load_in(inp_load && select[9]),
        .in_data(inp_data[8]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[8 + 10 * ARR_X_LEN]),
        .out_data       (cell_outs[8 + 9 * ARR_X_LEN]),

        .state(state[8 + 9 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x9_y9(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[9 + 10 * ARR_X_LEN]),
        .d  (state[9 + 8 * ARR_X_LEN]),
        .l  (state[8 + 9 * ARR_X_LEN]),
        .r  (state[10 + 9 * ARR_X_LEN]),
        .ul (state[8 + 10 * ARR_X_LEN]),
        .ur (state[10 + 10 * ARR_X_LEN]),
        .dl (state[8 + 8 * ARR_X_LEN]),
        .dr (state[10 + 8 * ARR_X_LEN]),

        .load_in(inp_load && select[9]),
        .in_data(inp_data[9]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[9 + 10 * ARR_X_LEN]),
        .out_data       (cell_outs[9 + 9 * ARR_X_LEN]),

        .state(state[9 + 9 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x10_y9(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[10 + 10 * ARR_X_LEN]),
        .d  (state[10 + 8 * ARR_X_LEN]),
        .l  (state[9 + 9 * ARR_X_LEN]),
        .r  (state[11 + 9 * ARR_X_LEN]),
        .ul (state[9 + 10 * ARR_X_LEN]),
        .ur (state[11 + 10 * ARR_X_LEN]),
        .dl (state[9 + 8 * ARR_X_LEN]),
        .dr (state[11 + 8 * ARR_X_LEN]),

        .load_in(inp_load && select[9]),
        .in_data(inp_data[10]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[10 + 10 * ARR_X_LEN]),
        .out_data       (cell_outs[10 + 9 * ARR_X_LEN]),

        .state(state[10 + 9 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x11_y9(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[11 + 10 * ARR_X_LEN]),
        .d  (state[11 + 8 * ARR_X_LEN]),
        .l  (state[10 + 9 * ARR_X_LEN]),
        .r  (state[12 + 9 * ARR_X_LEN]),
        .ul (state[10 + 10 * ARR_X_LEN]),
        .ur (state[12 + 10 * ARR_X_LEN]),
        .dl (state[10 + 8 * ARR_X_LEN]),
        .dr (state[12 + 8 * ARR_X_LEN]),

        .load_in(inp_load && select[9]),
        .in_data(inp_data[11]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[11 + 10 * ARR_X_LEN]),
        .out_data       (cell_outs[11 + 9 * ARR_X_LEN]),

        .state(state[11 + 9 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x12_y9(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[12 + 10 * ARR_X_LEN]),
        .d  (state[12 + 8 * ARR_X_LEN]),
        .l  (state[11 + 9 * ARR_X_LEN]),
        .r  (state[13 + 9 * ARR_X_LEN]),
        .ul (state[11 + 10 * ARR_X_LEN]),
        .ur (state[13 + 10 * ARR_X_LEN]),
        .dl (state[11 + 8 * ARR_X_LEN]),
        .dr (state[13 + 8 * ARR_X_LEN]),

        .load_in(inp_load && select[9]),
        .in_data(inp_data[12]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[12 + 10 * ARR_X_LEN]),
        .out_data       (cell_outs[12 + 9 * ARR_X_LEN]),

        .state(state[12 + 9 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x13_y9(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[13 + 10 * ARR_X_LEN]),
        .d  (state[13 + 8 * ARR_X_LEN]),
        .l  (state[12 + 9 * ARR_X_LEN]),
        .r  (state[14 + 9 * ARR_X_LEN]),
        .ul (state[12 + 10 * ARR_X_LEN]),
        .ur (state[14 + 10 * ARR_X_LEN]),
        .dl (state[12 + 8 * ARR_X_LEN]),
        .dr (state[14 + 8 * ARR_X_LEN]),

        .load_in(inp_load && select[9]),
        .in_data(inp_data[13]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[13 + 10 * ARR_X_LEN]),
        .out_data       (cell_outs[13 + 9 * ARR_X_LEN]),

        .state(state[13 + 9 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x14_y9(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[14 + 10 * ARR_X_LEN]),
        .d  (state[14 + 8 * ARR_X_LEN]),
        .l  (state[13 + 9 * ARR_X_LEN]),
        .r  (state[15 + 9 * ARR_X_LEN]),
        .ul (state[13 + 10 * ARR_X_LEN]),
        .ur (state[15 + 10 * ARR_X_LEN]),
        .dl (state[13 + 8 * ARR_X_LEN]),
        .dr (state[15 + 8 * ARR_X_LEN]),

        .load_in(inp_load && select[9]),
        .in_data(inp_data[14]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[14 + 10 * ARR_X_LEN]),
        .out_data       (cell_outs[14 + 9 * ARR_X_LEN]),

        .state(state[14 + 9 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x15_y9(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[15 + 10 * ARR_X_LEN]),
        .d  (state[15 + 8 * ARR_X_LEN]),
        .l  (state[14 + 9 * ARR_X_LEN]),
        .r  (1'b0),
        .ul (state[14 + 10 * ARR_X_LEN]),
        .ur (1'b0),
        .dl (state[14 + 8 * ARR_X_LEN]),
        .dr (1'b0),

        .load_in(inp_load && select[9]),
        .in_data(inp_data[15]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[15 + 10 * ARR_X_LEN]),
        .out_data       (cell_outs[15 + 9 * ARR_X_LEN]),

        .state(state[15 + 9 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x0_y10(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[0 + 11 * ARR_X_LEN]),
        .d  (state[0 + 9 * ARR_X_LEN]),
        .l  (1'b0),
        .r  (state[1 + 10 * ARR_X_LEN]),
        .ul (1'b0),
        .ur (state[1 + 11 * ARR_X_LEN]),
        .dl (1'b0),
        .dr (state[1 + 9 * ARR_X_LEN]),

        .load_in(inp_load && select[10]),
        .in_data(inp_data[0]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[0 + 11 * ARR_X_LEN]),
        .out_data       (cell_outs[0 + 10 * ARR_X_LEN]),

        .state(state[0 + 10 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x1_y10(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[1 + 11 * ARR_X_LEN]),
        .d  (state[1 + 9 * ARR_X_LEN]),
        .l  (state[0 + 10 * ARR_X_LEN]),
        .r  (state[2 + 10 * ARR_X_LEN]),
        .ul (state[0 + 11 * ARR_X_LEN]),
        .ur (state[2 + 11 * ARR_X_LEN]),
        .dl (state[0 + 9 * ARR_X_LEN]),
        .dr (state[2 + 9 * ARR_X_LEN]),

        .load_in(inp_load && select[10]),
        .in_data(inp_data[1]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[1 + 11 * ARR_X_LEN]),
        .out_data       (cell_outs[1 + 10 * ARR_X_LEN]),

        .state(state[1 + 10 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x2_y10(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[2 + 11 * ARR_X_LEN]),
        .d  (state[2 + 9 * ARR_X_LEN]),
        .l  (state[1 + 10 * ARR_X_LEN]),
        .r  (state[3 + 10 * ARR_X_LEN]),
        .ul (state[1 + 11 * ARR_X_LEN]),
        .ur (state[3 + 11 * ARR_X_LEN]),
        .dl (state[1 + 9 * ARR_X_LEN]),
        .dr (state[3 + 9 * ARR_X_LEN]),

        .load_in(inp_load && select[10]),
        .in_data(inp_data[2]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[2 + 11 * ARR_X_LEN]),
        .out_data       (cell_outs[2 + 10 * ARR_X_LEN]),

        .state(state[2 + 10 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x3_y10(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[3 + 11 * ARR_X_LEN]),
        .d  (state[3 + 9 * ARR_X_LEN]),
        .l  (state[2 + 10 * ARR_X_LEN]),
        .r  (state[4 + 10 * ARR_X_LEN]),
        .ul (state[2 + 11 * ARR_X_LEN]),
        .ur (state[4 + 11 * ARR_X_LEN]),
        .dl (state[2 + 9 * ARR_X_LEN]),
        .dr (state[4 + 9 * ARR_X_LEN]),

        .load_in(inp_load && select[10]),
        .in_data(inp_data[3]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[3 + 11 * ARR_X_LEN]),
        .out_data       (cell_outs[3 + 10 * ARR_X_LEN]),

        .state(state[3 + 10 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x4_y10(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[4 + 11 * ARR_X_LEN]),
        .d  (state[4 + 9 * ARR_X_LEN]),
        .l  (state[3 + 10 * ARR_X_LEN]),
        .r  (state[5 + 10 * ARR_X_LEN]),
        .ul (state[3 + 11 * ARR_X_LEN]),
        .ur (state[5 + 11 * ARR_X_LEN]),
        .dl (state[3 + 9 * ARR_X_LEN]),
        .dr (state[5 + 9 * ARR_X_LEN]),

        .load_in(inp_load && select[10]),
        .in_data(inp_data[4]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[4 + 11 * ARR_X_LEN]),
        .out_data       (cell_outs[4 + 10 * ARR_X_LEN]),

        .state(state[4 + 10 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x5_y10(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[5 + 11 * ARR_X_LEN]),
        .d  (state[5 + 9 * ARR_X_LEN]),
        .l  (state[4 + 10 * ARR_X_LEN]),
        .r  (state[6 + 10 * ARR_X_LEN]),
        .ul (state[4 + 11 * ARR_X_LEN]),
        .ur (state[6 + 11 * ARR_X_LEN]),
        .dl (state[4 + 9 * ARR_X_LEN]),
        .dr (state[6 + 9 * ARR_X_LEN]),

        .load_in(inp_load && select[10]),
        .in_data(inp_data[5]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[5 + 11 * ARR_X_LEN]),
        .out_data       (cell_outs[5 + 10 * ARR_X_LEN]),

        .state(state[5 + 10 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x6_y10(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[6 + 11 * ARR_X_LEN]),
        .d  (state[6 + 9 * ARR_X_LEN]),
        .l  (state[5 + 10 * ARR_X_LEN]),
        .r  (state[7 + 10 * ARR_X_LEN]),
        .ul (state[5 + 11 * ARR_X_LEN]),
        .ur (state[7 + 11 * ARR_X_LEN]),
        .dl (state[5 + 9 * ARR_X_LEN]),
        .dr (state[7 + 9 * ARR_X_LEN]),

        .load_in(inp_load && select[10]),
        .in_data(inp_data[6]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[6 + 11 * ARR_X_LEN]),
        .out_data       (cell_outs[6 + 10 * ARR_X_LEN]),

        .state(state[6 + 10 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x7_y10(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[7 + 11 * ARR_X_LEN]),
        .d  (state[7 + 9 * ARR_X_LEN]),
        .l  (state[6 + 10 * ARR_X_LEN]),
        .r  (state[8 + 10 * ARR_X_LEN]),
        .ul (state[6 + 11 * ARR_X_LEN]),
        .ur (state[8 + 11 * ARR_X_LEN]),
        .dl (state[6 + 9 * ARR_X_LEN]),
        .dr (state[8 + 9 * ARR_X_LEN]),

        .load_in(inp_load && select[10]),
        .in_data(inp_data[7]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[7 + 11 * ARR_X_LEN]),
        .out_data       (cell_outs[7 + 10 * ARR_X_LEN]),

        .state(state[7 + 10 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x8_y10(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[8 + 11 * ARR_X_LEN]),
        .d  (state[8 + 9 * ARR_X_LEN]),
        .l  (state[7 + 10 * ARR_X_LEN]),
        .r  (state[9 + 10 * ARR_X_LEN]),
        .ul (state[7 + 11 * ARR_X_LEN]),
        .ur (state[9 + 11 * ARR_X_LEN]),
        .dl (state[7 + 9 * ARR_X_LEN]),
        .dr (state[9 + 9 * ARR_X_LEN]),

        .load_in(inp_load && select[10]),
        .in_data(inp_data[8]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[8 + 11 * ARR_X_LEN]),
        .out_data       (cell_outs[8 + 10 * ARR_X_LEN]),

        .state(state[8 + 10 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x9_y10(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[9 + 11 * ARR_X_LEN]),
        .d  (state[9 + 9 * ARR_X_LEN]),
        .l  (state[8 + 10 * ARR_X_LEN]),
        .r  (state[10 + 10 * ARR_X_LEN]),
        .ul (state[8 + 11 * ARR_X_LEN]),
        .ur (state[10 + 11 * ARR_X_LEN]),
        .dl (state[8 + 9 * ARR_X_LEN]),
        .dr (state[10 + 9 * ARR_X_LEN]),

        .load_in(inp_load && select[10]),
        .in_data(inp_data[9]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[9 + 11 * ARR_X_LEN]),
        .out_data       (cell_outs[9 + 10 * ARR_X_LEN]),

        .state(state[9 + 10 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x10_y10(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[10 + 11 * ARR_X_LEN]),
        .d  (state[10 + 9 * ARR_X_LEN]),
        .l  (state[9 + 10 * ARR_X_LEN]),
        .r  (state[11 + 10 * ARR_X_LEN]),
        .ul (state[9 + 11 * ARR_X_LEN]),
        .ur (state[11 + 11 * ARR_X_LEN]),
        .dl (state[9 + 9 * ARR_X_LEN]),
        .dr (state[11 + 9 * ARR_X_LEN]),

        .load_in(inp_load && select[10]),
        .in_data(inp_data[10]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[10 + 11 * ARR_X_LEN]),
        .out_data       (cell_outs[10 + 10 * ARR_X_LEN]),

        .state(state[10 + 10 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x11_y10(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[11 + 11 * ARR_X_LEN]),
        .d  (state[11 + 9 * ARR_X_LEN]),
        .l  (state[10 + 10 * ARR_X_LEN]),
        .r  (state[12 + 10 * ARR_X_LEN]),
        .ul (state[10 + 11 * ARR_X_LEN]),
        .ur (state[12 + 11 * ARR_X_LEN]),
        .dl (state[10 + 9 * ARR_X_LEN]),
        .dr (state[12 + 9 * ARR_X_LEN]),

        .load_in(inp_load && select[10]),
        .in_data(inp_data[11]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[11 + 11 * ARR_X_LEN]),
        .out_data       (cell_outs[11 + 10 * ARR_X_LEN]),

        .state(state[11 + 10 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x12_y10(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[12 + 11 * ARR_X_LEN]),
        .d  (state[12 + 9 * ARR_X_LEN]),
        .l  (state[11 + 10 * ARR_X_LEN]),
        .r  (state[13 + 10 * ARR_X_LEN]),
        .ul (state[11 + 11 * ARR_X_LEN]),
        .ur (state[13 + 11 * ARR_X_LEN]),
        .dl (state[11 + 9 * ARR_X_LEN]),
        .dr (state[13 + 9 * ARR_X_LEN]),

        .load_in(inp_load && select[10]),
        .in_data(inp_data[12]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[12 + 11 * ARR_X_LEN]),
        .out_data       (cell_outs[12 + 10 * ARR_X_LEN]),

        .state(state[12 + 10 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x13_y10(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[13 + 11 * ARR_X_LEN]),
        .d  (state[13 + 9 * ARR_X_LEN]),
        .l  (state[12 + 10 * ARR_X_LEN]),
        .r  (state[14 + 10 * ARR_X_LEN]),
        .ul (state[12 + 11 * ARR_X_LEN]),
        .ur (state[14 + 11 * ARR_X_LEN]),
        .dl (state[12 + 9 * ARR_X_LEN]),
        .dr (state[14 + 9 * ARR_X_LEN]),

        .load_in(inp_load && select[10]),
        .in_data(inp_data[13]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[13 + 11 * ARR_X_LEN]),
        .out_data       (cell_outs[13 + 10 * ARR_X_LEN]),

        .state(state[13 + 10 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x14_y10(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[14 + 11 * ARR_X_LEN]),
        .d  (state[14 + 9 * ARR_X_LEN]),
        .l  (state[13 + 10 * ARR_X_LEN]),
        .r  (state[15 + 10 * ARR_X_LEN]),
        .ul (state[13 + 11 * ARR_X_LEN]),
        .ur (state[15 + 11 * ARR_X_LEN]),
        .dl (state[13 + 9 * ARR_X_LEN]),
        .dr (state[15 + 9 * ARR_X_LEN]),

        .load_in(inp_load && select[10]),
        .in_data(inp_data[14]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[14 + 11 * ARR_X_LEN]),
        .out_data       (cell_outs[14 + 10 * ARR_X_LEN]),

        .state(state[14 + 10 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x15_y10(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[15 + 11 * ARR_X_LEN]),
        .d  (state[15 + 9 * ARR_X_LEN]),
        .l  (state[14 + 10 * ARR_X_LEN]),
        .r  (1'b0),
        .ul (state[14 + 11 * ARR_X_LEN]),
        .ur (1'b0),
        .dl (state[14 + 9 * ARR_X_LEN]),
        .dr (1'b0),

        .load_in(inp_load && select[10]),
        .in_data(inp_data[15]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[15 + 11 * ARR_X_LEN]),
        .out_data       (cell_outs[15 + 10 * ARR_X_LEN]),

        .state(state[15 + 10 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x0_y11(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[0 + 12 * ARR_X_LEN]),
        .d  (state[0 + 10 * ARR_X_LEN]),
        .l  (1'b0),
        .r  (state[1 + 11 * ARR_X_LEN]),
        .ul (1'b0),
        .ur (state[1 + 12 * ARR_X_LEN]),
        .dl (1'b0),
        .dr (state[1 + 10 * ARR_X_LEN]),

        .load_in(inp_load && select[11]),
        .in_data(inp_data[0]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[0 + 12 * ARR_X_LEN]),
        .out_data       (cell_outs[0 + 11 * ARR_X_LEN]),

        .state(state[0 + 11 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x1_y11(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[1 + 12 * ARR_X_LEN]),
        .d  (state[1 + 10 * ARR_X_LEN]),
        .l  (state[0 + 11 * ARR_X_LEN]),
        .r  (state[2 + 11 * ARR_X_LEN]),
        .ul (state[0 + 12 * ARR_X_LEN]),
        .ur (state[2 + 12 * ARR_X_LEN]),
        .dl (state[0 + 10 * ARR_X_LEN]),
        .dr (state[2 + 10 * ARR_X_LEN]),

        .load_in(inp_load && select[11]),
        .in_data(inp_data[1]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[1 + 12 * ARR_X_LEN]),
        .out_data       (cell_outs[1 + 11 * ARR_X_LEN]),

        .state(state[1 + 11 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x2_y11(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[2 + 12 * ARR_X_LEN]),
        .d  (state[2 + 10 * ARR_X_LEN]),
        .l  (state[1 + 11 * ARR_X_LEN]),
        .r  (state[3 + 11 * ARR_X_LEN]),
        .ul (state[1 + 12 * ARR_X_LEN]),
        .ur (state[3 + 12 * ARR_X_LEN]),
        .dl (state[1 + 10 * ARR_X_LEN]),
        .dr (state[3 + 10 * ARR_X_LEN]),

        .load_in(inp_load && select[11]),
        .in_data(inp_data[2]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[2 + 12 * ARR_X_LEN]),
        .out_data       (cell_outs[2 + 11 * ARR_X_LEN]),

        .state(state[2 + 11 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x3_y11(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[3 + 12 * ARR_X_LEN]),
        .d  (state[3 + 10 * ARR_X_LEN]),
        .l  (state[2 + 11 * ARR_X_LEN]),
        .r  (state[4 + 11 * ARR_X_LEN]),
        .ul (state[2 + 12 * ARR_X_LEN]),
        .ur (state[4 + 12 * ARR_X_LEN]),
        .dl (state[2 + 10 * ARR_X_LEN]),
        .dr (state[4 + 10 * ARR_X_LEN]),

        .load_in(inp_load && select[11]),
        .in_data(inp_data[3]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[3 + 12 * ARR_X_LEN]),
        .out_data       (cell_outs[3 + 11 * ARR_X_LEN]),

        .state(state[3 + 11 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x4_y11(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[4 + 12 * ARR_X_LEN]),
        .d  (state[4 + 10 * ARR_X_LEN]),
        .l  (state[3 + 11 * ARR_X_LEN]),
        .r  (state[5 + 11 * ARR_X_LEN]),
        .ul (state[3 + 12 * ARR_X_LEN]),
        .ur (state[5 + 12 * ARR_X_LEN]),
        .dl (state[3 + 10 * ARR_X_LEN]),
        .dr (state[5 + 10 * ARR_X_LEN]),

        .load_in(inp_load && select[11]),
        .in_data(inp_data[4]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[4 + 12 * ARR_X_LEN]),
        .out_data       (cell_outs[4 + 11 * ARR_X_LEN]),

        .state(state[4 + 11 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x5_y11(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[5 + 12 * ARR_X_LEN]),
        .d  (state[5 + 10 * ARR_X_LEN]),
        .l  (state[4 + 11 * ARR_X_LEN]),
        .r  (state[6 + 11 * ARR_X_LEN]),
        .ul (state[4 + 12 * ARR_X_LEN]),
        .ur (state[6 + 12 * ARR_X_LEN]),
        .dl (state[4 + 10 * ARR_X_LEN]),
        .dr (state[6 + 10 * ARR_X_LEN]),

        .load_in(inp_load && select[11]),
        .in_data(inp_data[5]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[5 + 12 * ARR_X_LEN]),
        .out_data       (cell_outs[5 + 11 * ARR_X_LEN]),

        .state(state[5 + 11 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x6_y11(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[6 + 12 * ARR_X_LEN]),
        .d  (state[6 + 10 * ARR_X_LEN]),
        .l  (state[5 + 11 * ARR_X_LEN]),
        .r  (state[7 + 11 * ARR_X_LEN]),
        .ul (state[5 + 12 * ARR_X_LEN]),
        .ur (state[7 + 12 * ARR_X_LEN]),
        .dl (state[5 + 10 * ARR_X_LEN]),
        .dr (state[7 + 10 * ARR_X_LEN]),

        .load_in(inp_load && select[11]),
        .in_data(inp_data[6]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[6 + 12 * ARR_X_LEN]),
        .out_data       (cell_outs[6 + 11 * ARR_X_LEN]),

        .state(state[6 + 11 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x7_y11(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[7 + 12 * ARR_X_LEN]),
        .d  (state[7 + 10 * ARR_X_LEN]),
        .l  (state[6 + 11 * ARR_X_LEN]),
        .r  (state[8 + 11 * ARR_X_LEN]),
        .ul (state[6 + 12 * ARR_X_LEN]),
        .ur (state[8 + 12 * ARR_X_LEN]),
        .dl (state[6 + 10 * ARR_X_LEN]),
        .dr (state[8 + 10 * ARR_X_LEN]),

        .load_in(inp_load && select[11]),
        .in_data(inp_data[7]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[7 + 12 * ARR_X_LEN]),
        .out_data       (cell_outs[7 + 11 * ARR_X_LEN]),

        .state(state[7 + 11 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x8_y11(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[8 + 12 * ARR_X_LEN]),
        .d  (state[8 + 10 * ARR_X_LEN]),
        .l  (state[7 + 11 * ARR_X_LEN]),
        .r  (state[9 + 11 * ARR_X_LEN]),
        .ul (state[7 + 12 * ARR_X_LEN]),
        .ur (state[9 + 12 * ARR_X_LEN]),
        .dl (state[7 + 10 * ARR_X_LEN]),
        .dr (state[9 + 10 * ARR_X_LEN]),

        .load_in(inp_load && select[11]),
        .in_data(inp_data[8]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[8 + 12 * ARR_X_LEN]),
        .out_data       (cell_outs[8 + 11 * ARR_X_LEN]),

        .state(state[8 + 11 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x9_y11(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[9 + 12 * ARR_X_LEN]),
        .d  (state[9 + 10 * ARR_X_LEN]),
        .l  (state[8 + 11 * ARR_X_LEN]),
        .r  (state[10 + 11 * ARR_X_LEN]),
        .ul (state[8 + 12 * ARR_X_LEN]),
        .ur (state[10 + 12 * ARR_X_LEN]),
        .dl (state[8 + 10 * ARR_X_LEN]),
        .dr (state[10 + 10 * ARR_X_LEN]),

        .load_in(inp_load && select[11]),
        .in_data(inp_data[9]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[9 + 12 * ARR_X_LEN]),
        .out_data       (cell_outs[9 + 11 * ARR_X_LEN]),

        .state(state[9 + 11 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x10_y11(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[10 + 12 * ARR_X_LEN]),
        .d  (state[10 + 10 * ARR_X_LEN]),
        .l  (state[9 + 11 * ARR_X_LEN]),
        .r  (state[11 + 11 * ARR_X_LEN]),
        .ul (state[9 + 12 * ARR_X_LEN]),
        .ur (state[11 + 12 * ARR_X_LEN]),
        .dl (state[9 + 10 * ARR_X_LEN]),
        .dr (state[11 + 10 * ARR_X_LEN]),

        .load_in(inp_load && select[11]),
        .in_data(inp_data[10]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[10 + 12 * ARR_X_LEN]),
        .out_data       (cell_outs[10 + 11 * ARR_X_LEN]),

        .state(state[10 + 11 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x11_y11(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[11 + 12 * ARR_X_LEN]),
        .d  (state[11 + 10 * ARR_X_LEN]),
        .l  (state[10 + 11 * ARR_X_LEN]),
        .r  (state[12 + 11 * ARR_X_LEN]),
        .ul (state[10 + 12 * ARR_X_LEN]),
        .ur (state[12 + 12 * ARR_X_LEN]),
        .dl (state[10 + 10 * ARR_X_LEN]),
        .dr (state[12 + 10 * ARR_X_LEN]),

        .load_in(inp_load && select[11]),
        .in_data(inp_data[11]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[11 + 12 * ARR_X_LEN]),
        .out_data       (cell_outs[11 + 11 * ARR_X_LEN]),

        .state(state[11 + 11 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x12_y11(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[12 + 12 * ARR_X_LEN]),
        .d  (state[12 + 10 * ARR_X_LEN]),
        .l  (state[11 + 11 * ARR_X_LEN]),
        .r  (state[13 + 11 * ARR_X_LEN]),
        .ul (state[11 + 12 * ARR_X_LEN]),
        .ur (state[13 + 12 * ARR_X_LEN]),
        .dl (state[11 + 10 * ARR_X_LEN]),
        .dr (state[13 + 10 * ARR_X_LEN]),

        .load_in(inp_load && select[11]),
        .in_data(inp_data[12]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[12 + 12 * ARR_X_LEN]),
        .out_data       (cell_outs[12 + 11 * ARR_X_LEN]),

        .state(state[12 + 11 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x13_y11(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[13 + 12 * ARR_X_LEN]),
        .d  (state[13 + 10 * ARR_X_LEN]),
        .l  (state[12 + 11 * ARR_X_LEN]),
        .r  (state[14 + 11 * ARR_X_LEN]),
        .ul (state[12 + 12 * ARR_X_LEN]),
        .ur (state[14 + 12 * ARR_X_LEN]),
        .dl (state[12 + 10 * ARR_X_LEN]),
        .dr (state[14 + 10 * ARR_X_LEN]),

        .load_in(inp_load && select[11]),
        .in_data(inp_data[13]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[13 + 12 * ARR_X_LEN]),
        .out_data       (cell_outs[13 + 11 * ARR_X_LEN]),

        .state(state[13 + 11 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x14_y11(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[14 + 12 * ARR_X_LEN]),
        .d  (state[14 + 10 * ARR_X_LEN]),
        .l  (state[13 + 11 * ARR_X_LEN]),
        .r  (state[15 + 11 * ARR_X_LEN]),
        .ul (state[13 + 12 * ARR_X_LEN]),
        .ur (state[15 + 12 * ARR_X_LEN]),
        .dl (state[13 + 10 * ARR_X_LEN]),
        .dr (state[15 + 10 * ARR_X_LEN]),

        .load_in(inp_load && select[11]),
        .in_data(inp_data[14]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[14 + 12 * ARR_X_LEN]),
        .out_data       (cell_outs[14 + 11 * ARR_X_LEN]),

        .state(state[14 + 11 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x15_y11(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[15 + 12 * ARR_X_LEN]),
        .d  (state[15 + 10 * ARR_X_LEN]),
        .l  (state[14 + 11 * ARR_X_LEN]),
        .r  (1'b0),
        .ul (state[14 + 12 * ARR_X_LEN]),
        .ur (1'b0),
        .dl (state[14 + 10 * ARR_X_LEN]),
        .dr (1'b0),

        .load_in(inp_load && select[11]),
        .in_data(inp_data[15]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[15 + 12 * ARR_X_LEN]),
        .out_data       (cell_outs[15 + 11 * ARR_X_LEN]),

        .state(state[15 + 11 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x0_y12(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[0 + 13 * ARR_X_LEN]),
        .d  (state[0 + 11 * ARR_X_LEN]),
        .l  (1'b0),
        .r  (state[1 + 12 * ARR_X_LEN]),
        .ul (1'b0),
        .ur (state[1 + 13 * ARR_X_LEN]),
        .dl (1'b0),
        .dr (state[1 + 11 * ARR_X_LEN]),

        .load_in(inp_load && select[12]),
        .in_data(inp_data[0]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[0 + 13 * ARR_X_LEN]),
        .out_data       (cell_outs[0 + 12 * ARR_X_LEN]),

        .state(state[0 + 12 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x1_y12(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[1 + 13 * ARR_X_LEN]),
        .d  (state[1 + 11 * ARR_X_LEN]),
        .l  (state[0 + 12 * ARR_X_LEN]),
        .r  (state[2 + 12 * ARR_X_LEN]),
        .ul (state[0 + 13 * ARR_X_LEN]),
        .ur (state[2 + 13 * ARR_X_LEN]),
        .dl (state[0 + 11 * ARR_X_LEN]),
        .dr (state[2 + 11 * ARR_X_LEN]),

        .load_in(inp_load && select[12]),
        .in_data(inp_data[1]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[1 + 13 * ARR_X_LEN]),
        .out_data       (cell_outs[1 + 12 * ARR_X_LEN]),

        .state(state[1 + 12 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x2_y12(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[2 + 13 * ARR_X_LEN]),
        .d  (state[2 + 11 * ARR_X_LEN]),
        .l  (state[1 + 12 * ARR_X_LEN]),
        .r  (state[3 + 12 * ARR_X_LEN]),
        .ul (state[1 + 13 * ARR_X_LEN]),
        .ur (state[3 + 13 * ARR_X_LEN]),
        .dl (state[1 + 11 * ARR_X_LEN]),
        .dr (state[3 + 11 * ARR_X_LEN]),

        .load_in(inp_load && select[12]),
        .in_data(inp_data[2]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[2 + 13 * ARR_X_LEN]),
        .out_data       (cell_outs[2 + 12 * ARR_X_LEN]),

        .state(state[2 + 12 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x3_y12(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[3 + 13 * ARR_X_LEN]),
        .d  (state[3 + 11 * ARR_X_LEN]),
        .l  (state[2 + 12 * ARR_X_LEN]),
        .r  (state[4 + 12 * ARR_X_LEN]),
        .ul (state[2 + 13 * ARR_X_LEN]),
        .ur (state[4 + 13 * ARR_X_LEN]),
        .dl (state[2 + 11 * ARR_X_LEN]),
        .dr (state[4 + 11 * ARR_X_LEN]),

        .load_in(inp_load && select[12]),
        .in_data(inp_data[3]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[3 + 13 * ARR_X_LEN]),
        .out_data       (cell_outs[3 + 12 * ARR_X_LEN]),

        .state(state[3 + 12 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x4_y12(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[4 + 13 * ARR_X_LEN]),
        .d  (state[4 + 11 * ARR_X_LEN]),
        .l  (state[3 + 12 * ARR_X_LEN]),
        .r  (state[5 + 12 * ARR_X_LEN]),
        .ul (state[3 + 13 * ARR_X_LEN]),
        .ur (state[5 + 13 * ARR_X_LEN]),
        .dl (state[3 + 11 * ARR_X_LEN]),
        .dr (state[5 + 11 * ARR_X_LEN]),

        .load_in(inp_load && select[12]),
        .in_data(inp_data[4]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[4 + 13 * ARR_X_LEN]),
        .out_data       (cell_outs[4 + 12 * ARR_X_LEN]),

        .state(state[4 + 12 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x5_y12(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[5 + 13 * ARR_X_LEN]),
        .d  (state[5 + 11 * ARR_X_LEN]),
        .l  (state[4 + 12 * ARR_X_LEN]),
        .r  (state[6 + 12 * ARR_X_LEN]),
        .ul (state[4 + 13 * ARR_X_LEN]),
        .ur (state[6 + 13 * ARR_X_LEN]),
        .dl (state[4 + 11 * ARR_X_LEN]),
        .dr (state[6 + 11 * ARR_X_LEN]),

        .load_in(inp_load && select[12]),
        .in_data(inp_data[5]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[5 + 13 * ARR_X_LEN]),
        .out_data       (cell_outs[5 + 12 * ARR_X_LEN]),

        .state(state[5 + 12 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x6_y12(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[6 + 13 * ARR_X_LEN]),
        .d  (state[6 + 11 * ARR_X_LEN]),
        .l  (state[5 + 12 * ARR_X_LEN]),
        .r  (state[7 + 12 * ARR_X_LEN]),
        .ul (state[5 + 13 * ARR_X_LEN]),
        .ur (state[7 + 13 * ARR_X_LEN]),
        .dl (state[5 + 11 * ARR_X_LEN]),
        .dr (state[7 + 11 * ARR_X_LEN]),

        .load_in(inp_load && select[12]),
        .in_data(inp_data[6]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[6 + 13 * ARR_X_LEN]),
        .out_data       (cell_outs[6 + 12 * ARR_X_LEN]),

        .state(state[6 + 12 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x7_y12(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[7 + 13 * ARR_X_LEN]),
        .d  (state[7 + 11 * ARR_X_LEN]),
        .l  (state[6 + 12 * ARR_X_LEN]),
        .r  (state[8 + 12 * ARR_X_LEN]),
        .ul (state[6 + 13 * ARR_X_LEN]),
        .ur (state[8 + 13 * ARR_X_LEN]),
        .dl (state[6 + 11 * ARR_X_LEN]),
        .dr (state[8 + 11 * ARR_X_LEN]),

        .load_in(inp_load && select[12]),
        .in_data(inp_data[7]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[7 + 13 * ARR_X_LEN]),
        .out_data       (cell_outs[7 + 12 * ARR_X_LEN]),

        .state(state[7 + 12 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x8_y12(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[8 + 13 * ARR_X_LEN]),
        .d  (state[8 + 11 * ARR_X_LEN]),
        .l  (state[7 + 12 * ARR_X_LEN]),
        .r  (state[9 + 12 * ARR_X_LEN]),
        .ul (state[7 + 13 * ARR_X_LEN]),
        .ur (state[9 + 13 * ARR_X_LEN]),
        .dl (state[7 + 11 * ARR_X_LEN]),
        .dr (state[9 + 11 * ARR_X_LEN]),

        .load_in(inp_load && select[12]),
        .in_data(inp_data[8]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[8 + 13 * ARR_X_LEN]),
        .out_data       (cell_outs[8 + 12 * ARR_X_LEN]),

        .state(state[8 + 12 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x9_y12(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[9 + 13 * ARR_X_LEN]),
        .d  (state[9 + 11 * ARR_X_LEN]),
        .l  (state[8 + 12 * ARR_X_LEN]),
        .r  (state[10 + 12 * ARR_X_LEN]),
        .ul (state[8 + 13 * ARR_X_LEN]),
        .ur (state[10 + 13 * ARR_X_LEN]),
        .dl (state[8 + 11 * ARR_X_LEN]),
        .dr (state[10 + 11 * ARR_X_LEN]),

        .load_in(inp_load && select[12]),
        .in_data(inp_data[9]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[9 + 13 * ARR_X_LEN]),
        .out_data       (cell_outs[9 + 12 * ARR_X_LEN]),

        .state(state[9 + 12 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x10_y12(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[10 + 13 * ARR_X_LEN]),
        .d  (state[10 + 11 * ARR_X_LEN]),
        .l  (state[9 + 12 * ARR_X_LEN]),
        .r  (state[11 + 12 * ARR_X_LEN]),
        .ul (state[9 + 13 * ARR_X_LEN]),
        .ur (state[11 + 13 * ARR_X_LEN]),
        .dl (state[9 + 11 * ARR_X_LEN]),
        .dr (state[11 + 11 * ARR_X_LEN]),

        .load_in(inp_load && select[12]),
        .in_data(inp_data[10]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[10 + 13 * ARR_X_LEN]),
        .out_data       (cell_outs[10 + 12 * ARR_X_LEN]),

        .state(state[10 + 12 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x11_y12(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[11 + 13 * ARR_X_LEN]),
        .d  (state[11 + 11 * ARR_X_LEN]),
        .l  (state[10 + 12 * ARR_X_LEN]),
        .r  (state[12 + 12 * ARR_X_LEN]),
        .ul (state[10 + 13 * ARR_X_LEN]),
        .ur (state[12 + 13 * ARR_X_LEN]),
        .dl (state[10 + 11 * ARR_X_LEN]),
        .dr (state[12 + 11 * ARR_X_LEN]),

        .load_in(inp_load && select[12]),
        .in_data(inp_data[11]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[11 + 13 * ARR_X_LEN]),
        .out_data       (cell_outs[11 + 12 * ARR_X_LEN]),

        .state(state[11 + 12 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x12_y12(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[12 + 13 * ARR_X_LEN]),
        .d  (state[12 + 11 * ARR_X_LEN]),
        .l  (state[11 + 12 * ARR_X_LEN]),
        .r  (state[13 + 12 * ARR_X_LEN]),
        .ul (state[11 + 13 * ARR_X_LEN]),
        .ur (state[13 + 13 * ARR_X_LEN]),
        .dl (state[11 + 11 * ARR_X_LEN]),
        .dr (state[13 + 11 * ARR_X_LEN]),

        .load_in(inp_load && select[12]),
        .in_data(inp_data[12]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[12 + 13 * ARR_X_LEN]),
        .out_data       (cell_outs[12 + 12 * ARR_X_LEN]),

        .state(state[12 + 12 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x13_y12(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[13 + 13 * ARR_X_LEN]),
        .d  (state[13 + 11 * ARR_X_LEN]),
        .l  (state[12 + 12 * ARR_X_LEN]),
        .r  (state[14 + 12 * ARR_X_LEN]),
        .ul (state[12 + 13 * ARR_X_LEN]),
        .ur (state[14 + 13 * ARR_X_LEN]),
        .dl (state[12 + 11 * ARR_X_LEN]),
        .dr (state[14 + 11 * ARR_X_LEN]),

        .load_in(inp_load && select[12]),
        .in_data(inp_data[13]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[13 + 13 * ARR_X_LEN]),
        .out_data       (cell_outs[13 + 12 * ARR_X_LEN]),

        .state(state[13 + 12 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x14_y12(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[14 + 13 * ARR_X_LEN]),
        .d  (state[14 + 11 * ARR_X_LEN]),
        .l  (state[13 + 12 * ARR_X_LEN]),
        .r  (state[15 + 12 * ARR_X_LEN]),
        .ul (state[13 + 13 * ARR_X_LEN]),
        .ur (state[15 + 13 * ARR_X_LEN]),
        .dl (state[13 + 11 * ARR_X_LEN]),
        .dr (state[15 + 11 * ARR_X_LEN]),

        .load_in(inp_load && select[12]),
        .in_data(inp_data[14]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[14 + 13 * ARR_X_LEN]),
        .out_data       (cell_outs[14 + 12 * ARR_X_LEN]),

        .state(state[14 + 12 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x15_y12(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[15 + 13 * ARR_X_LEN]),
        .d  (state[15 + 11 * ARR_X_LEN]),
        .l  (state[14 + 12 * ARR_X_LEN]),
        .r  (1'b0),
        .ul (state[14 + 13 * ARR_X_LEN]),
        .ur (1'b0),
        .dl (state[14 + 11 * ARR_X_LEN]),
        .dr (1'b0),

        .load_in(inp_load && select[12]),
        .in_data(inp_data[15]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[15 + 13 * ARR_X_LEN]),
        .out_data       (cell_outs[15 + 12 * ARR_X_LEN]),

        .state(state[15 + 12 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x0_y13(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[0 + 14 * ARR_X_LEN]),
        .d  (state[0 + 12 * ARR_X_LEN]),
        .l  (1'b0),
        .r  (state[1 + 13 * ARR_X_LEN]),
        .ul (1'b0),
        .ur (state[1 + 14 * ARR_X_LEN]),
        .dl (1'b0),
        .dr (state[1 + 12 * ARR_X_LEN]),

        .load_in(inp_load && select[13]),
        .in_data(inp_data[0]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[0 + 14 * ARR_X_LEN]),
        .out_data       (cell_outs[0 + 13 * ARR_X_LEN]),

        .state(state[0 + 13 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x1_y13(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[1 + 14 * ARR_X_LEN]),
        .d  (state[1 + 12 * ARR_X_LEN]),
        .l  (state[0 + 13 * ARR_X_LEN]),
        .r  (state[2 + 13 * ARR_X_LEN]),
        .ul (state[0 + 14 * ARR_X_LEN]),
        .ur (state[2 + 14 * ARR_X_LEN]),
        .dl (state[0 + 12 * ARR_X_LEN]),
        .dr (state[2 + 12 * ARR_X_LEN]),

        .load_in(inp_load && select[13]),
        .in_data(inp_data[1]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[1 + 14 * ARR_X_LEN]),
        .out_data       (cell_outs[1 + 13 * ARR_X_LEN]),

        .state(state[1 + 13 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x2_y13(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[2 + 14 * ARR_X_LEN]),
        .d  (state[2 + 12 * ARR_X_LEN]),
        .l  (state[1 + 13 * ARR_X_LEN]),
        .r  (state[3 + 13 * ARR_X_LEN]),
        .ul (state[1 + 14 * ARR_X_LEN]),
        .ur (state[3 + 14 * ARR_X_LEN]),
        .dl (state[1 + 12 * ARR_X_LEN]),
        .dr (state[3 + 12 * ARR_X_LEN]),

        .load_in(inp_load && select[13]),
        .in_data(inp_data[2]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[2 + 14 * ARR_X_LEN]),
        .out_data       (cell_outs[2 + 13 * ARR_X_LEN]),

        .state(state[2 + 13 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x3_y13(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[3 + 14 * ARR_X_LEN]),
        .d  (state[3 + 12 * ARR_X_LEN]),
        .l  (state[2 + 13 * ARR_X_LEN]),
        .r  (state[4 + 13 * ARR_X_LEN]),
        .ul (state[2 + 14 * ARR_X_LEN]),
        .ur (state[4 + 14 * ARR_X_LEN]),
        .dl (state[2 + 12 * ARR_X_LEN]),
        .dr (state[4 + 12 * ARR_X_LEN]),

        .load_in(inp_load && select[13]),
        .in_data(inp_data[3]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[3 + 14 * ARR_X_LEN]),
        .out_data       (cell_outs[3 + 13 * ARR_X_LEN]),

        .state(state[3 + 13 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x4_y13(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[4 + 14 * ARR_X_LEN]),
        .d  (state[4 + 12 * ARR_X_LEN]),
        .l  (state[3 + 13 * ARR_X_LEN]),
        .r  (state[5 + 13 * ARR_X_LEN]),
        .ul (state[3 + 14 * ARR_X_LEN]),
        .ur (state[5 + 14 * ARR_X_LEN]),
        .dl (state[3 + 12 * ARR_X_LEN]),
        .dr (state[5 + 12 * ARR_X_LEN]),

        .load_in(inp_load && select[13]),
        .in_data(inp_data[4]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[4 + 14 * ARR_X_LEN]),
        .out_data       (cell_outs[4 + 13 * ARR_X_LEN]),

        .state(state[4 + 13 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x5_y13(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[5 + 14 * ARR_X_LEN]),
        .d  (state[5 + 12 * ARR_X_LEN]),
        .l  (state[4 + 13 * ARR_X_LEN]),
        .r  (state[6 + 13 * ARR_X_LEN]),
        .ul (state[4 + 14 * ARR_X_LEN]),
        .ur (state[6 + 14 * ARR_X_LEN]),
        .dl (state[4 + 12 * ARR_X_LEN]),
        .dr (state[6 + 12 * ARR_X_LEN]),

        .load_in(inp_load && select[13]),
        .in_data(inp_data[5]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[5 + 14 * ARR_X_LEN]),
        .out_data       (cell_outs[5 + 13 * ARR_X_LEN]),

        .state(state[5 + 13 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x6_y13(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[6 + 14 * ARR_X_LEN]),
        .d  (state[6 + 12 * ARR_X_LEN]),
        .l  (state[5 + 13 * ARR_X_LEN]),
        .r  (state[7 + 13 * ARR_X_LEN]),
        .ul (state[5 + 14 * ARR_X_LEN]),
        .ur (state[7 + 14 * ARR_X_LEN]),
        .dl (state[5 + 12 * ARR_X_LEN]),
        .dr (state[7 + 12 * ARR_X_LEN]),

        .load_in(inp_load && select[13]),
        .in_data(inp_data[6]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[6 + 14 * ARR_X_LEN]),
        .out_data       (cell_outs[6 + 13 * ARR_X_LEN]),

        .state(state[6 + 13 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x7_y13(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[7 + 14 * ARR_X_LEN]),
        .d  (state[7 + 12 * ARR_X_LEN]),
        .l  (state[6 + 13 * ARR_X_LEN]),
        .r  (state[8 + 13 * ARR_X_LEN]),
        .ul (state[6 + 14 * ARR_X_LEN]),
        .ur (state[8 + 14 * ARR_X_LEN]),
        .dl (state[6 + 12 * ARR_X_LEN]),
        .dr (state[8 + 12 * ARR_X_LEN]),

        .load_in(inp_load && select[13]),
        .in_data(inp_data[7]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[7 + 14 * ARR_X_LEN]),
        .out_data       (cell_outs[7 + 13 * ARR_X_LEN]),

        .state(state[7 + 13 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x8_y13(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[8 + 14 * ARR_X_LEN]),
        .d  (state[8 + 12 * ARR_X_LEN]),
        .l  (state[7 + 13 * ARR_X_LEN]),
        .r  (state[9 + 13 * ARR_X_LEN]),
        .ul (state[7 + 14 * ARR_X_LEN]),
        .ur (state[9 + 14 * ARR_X_LEN]),
        .dl (state[7 + 12 * ARR_X_LEN]),
        .dr (state[9 + 12 * ARR_X_LEN]),

        .load_in(inp_load && select[13]),
        .in_data(inp_data[8]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[8 + 14 * ARR_X_LEN]),
        .out_data       (cell_outs[8 + 13 * ARR_X_LEN]),

        .state(state[8 + 13 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x9_y13(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[9 + 14 * ARR_X_LEN]),
        .d  (state[9 + 12 * ARR_X_LEN]),
        .l  (state[8 + 13 * ARR_X_LEN]),
        .r  (state[10 + 13 * ARR_X_LEN]),
        .ul (state[8 + 14 * ARR_X_LEN]),
        .ur (state[10 + 14 * ARR_X_LEN]),
        .dl (state[8 + 12 * ARR_X_LEN]),
        .dr (state[10 + 12 * ARR_X_LEN]),

        .load_in(inp_load && select[13]),
        .in_data(inp_data[9]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[9 + 14 * ARR_X_LEN]),
        .out_data       (cell_outs[9 + 13 * ARR_X_LEN]),

        .state(state[9 + 13 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x10_y13(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[10 + 14 * ARR_X_LEN]),
        .d  (state[10 + 12 * ARR_X_LEN]),
        .l  (state[9 + 13 * ARR_X_LEN]),
        .r  (state[11 + 13 * ARR_X_LEN]),
        .ul (state[9 + 14 * ARR_X_LEN]),
        .ur (state[11 + 14 * ARR_X_LEN]),
        .dl (state[9 + 12 * ARR_X_LEN]),
        .dr (state[11 + 12 * ARR_X_LEN]),

        .load_in(inp_load && select[13]),
        .in_data(inp_data[10]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[10 + 14 * ARR_X_LEN]),
        .out_data       (cell_outs[10 + 13 * ARR_X_LEN]),

        .state(state[10 + 13 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x11_y13(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[11 + 14 * ARR_X_LEN]),
        .d  (state[11 + 12 * ARR_X_LEN]),
        .l  (state[10 + 13 * ARR_X_LEN]),
        .r  (state[12 + 13 * ARR_X_LEN]),
        .ul (state[10 + 14 * ARR_X_LEN]),
        .ur (state[12 + 14 * ARR_X_LEN]),
        .dl (state[10 + 12 * ARR_X_LEN]),
        .dr (state[12 + 12 * ARR_X_LEN]),

        .load_in(inp_load && select[13]),
        .in_data(inp_data[11]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[11 + 14 * ARR_X_LEN]),
        .out_data       (cell_outs[11 + 13 * ARR_X_LEN]),

        .state(state[11 + 13 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x12_y13(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[12 + 14 * ARR_X_LEN]),
        .d  (state[12 + 12 * ARR_X_LEN]),
        .l  (state[11 + 13 * ARR_X_LEN]),
        .r  (state[13 + 13 * ARR_X_LEN]),
        .ul (state[11 + 14 * ARR_X_LEN]),
        .ur (state[13 + 14 * ARR_X_LEN]),
        .dl (state[11 + 12 * ARR_X_LEN]),
        .dr (state[13 + 12 * ARR_X_LEN]),

        .load_in(inp_load && select[13]),
        .in_data(inp_data[12]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[12 + 14 * ARR_X_LEN]),
        .out_data       (cell_outs[12 + 13 * ARR_X_LEN]),

        .state(state[12 + 13 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x13_y13(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[13 + 14 * ARR_X_LEN]),
        .d  (state[13 + 12 * ARR_X_LEN]),
        .l  (state[12 + 13 * ARR_X_LEN]),
        .r  (state[14 + 13 * ARR_X_LEN]),
        .ul (state[12 + 14 * ARR_X_LEN]),
        .ur (state[14 + 14 * ARR_X_LEN]),
        .dl (state[12 + 12 * ARR_X_LEN]),
        .dr (state[14 + 12 * ARR_X_LEN]),

        .load_in(inp_load && select[13]),
        .in_data(inp_data[13]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[13 + 14 * ARR_X_LEN]),
        .out_data       (cell_outs[13 + 13 * ARR_X_LEN]),

        .state(state[13 + 13 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x14_y13(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[14 + 14 * ARR_X_LEN]),
        .d  (state[14 + 12 * ARR_X_LEN]),
        .l  (state[13 + 13 * ARR_X_LEN]),
        .r  (state[15 + 13 * ARR_X_LEN]),
        .ul (state[13 + 14 * ARR_X_LEN]),
        .ur (state[15 + 14 * ARR_X_LEN]),
        .dl (state[13 + 12 * ARR_X_LEN]),
        .dr (state[15 + 12 * ARR_X_LEN]),

        .load_in(inp_load && select[13]),
        .in_data(inp_data[14]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[14 + 14 * ARR_X_LEN]),
        .out_data       (cell_outs[14 + 13 * ARR_X_LEN]),

        .state(state[14 + 13 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x15_y13(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[15 + 14 * ARR_X_LEN]),
        .d  (state[15 + 12 * ARR_X_LEN]),
        .l  (state[14 + 13 * ARR_X_LEN]),
        .r  (1'b0),
        .ul (state[14 + 14 * ARR_X_LEN]),
        .ur (1'b0),
        .dl (state[14 + 12 * ARR_X_LEN]),
        .dr (1'b0),

        .load_in(inp_load && select[13]),
        .in_data(inp_data[15]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[15 + 14 * ARR_X_LEN]),
        .out_data       (cell_outs[15 + 13 * ARR_X_LEN]),

        .state(state[15 + 13 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x0_y14(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[0 + 15 * ARR_X_LEN]),
        .d  (state[0 + 13 * ARR_X_LEN]),
        .l  (1'b0),
        .r  (state[1 + 14 * ARR_X_LEN]),
        .ul (1'b0),
        .ur (state[1 + 15 * ARR_X_LEN]),
        .dl (1'b0),
        .dr (state[1 + 13 * ARR_X_LEN]),

        .load_in(inp_load && select[14]),
        .in_data(inp_data[0]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[0 + 15 * ARR_X_LEN]),
        .out_data       (cell_outs[0 + 14 * ARR_X_LEN]),

        .state(state[0 + 14 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x1_y14(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[1 + 15 * ARR_X_LEN]),
        .d  (state[1 + 13 * ARR_X_LEN]),
        .l  (state[0 + 14 * ARR_X_LEN]),
        .r  (state[2 + 14 * ARR_X_LEN]),
        .ul (state[0 + 15 * ARR_X_LEN]),
        .ur (state[2 + 15 * ARR_X_LEN]),
        .dl (state[0 + 13 * ARR_X_LEN]),
        .dr (state[2 + 13 * ARR_X_LEN]),

        .load_in(inp_load && select[14]),
        .in_data(inp_data[1]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[1 + 15 * ARR_X_LEN]),
        .out_data       (cell_outs[1 + 14 * ARR_X_LEN]),

        .state(state[1 + 14 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x2_y14(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[2 + 15 * ARR_X_LEN]),
        .d  (state[2 + 13 * ARR_X_LEN]),
        .l  (state[1 + 14 * ARR_X_LEN]),
        .r  (state[3 + 14 * ARR_X_LEN]),
        .ul (state[1 + 15 * ARR_X_LEN]),
        .ur (state[3 + 15 * ARR_X_LEN]),
        .dl (state[1 + 13 * ARR_X_LEN]),
        .dr (state[3 + 13 * ARR_X_LEN]),

        .load_in(inp_load && select[14]),
        .in_data(inp_data[2]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[2 + 15 * ARR_X_LEN]),
        .out_data       (cell_outs[2 + 14 * ARR_X_LEN]),

        .state(state[2 + 14 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x3_y14(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[3 + 15 * ARR_X_LEN]),
        .d  (state[3 + 13 * ARR_X_LEN]),
        .l  (state[2 + 14 * ARR_X_LEN]),
        .r  (state[4 + 14 * ARR_X_LEN]),
        .ul (state[2 + 15 * ARR_X_LEN]),
        .ur (state[4 + 15 * ARR_X_LEN]),
        .dl (state[2 + 13 * ARR_X_LEN]),
        .dr (state[4 + 13 * ARR_X_LEN]),

        .load_in(inp_load && select[14]),
        .in_data(inp_data[3]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[3 + 15 * ARR_X_LEN]),
        .out_data       (cell_outs[3 + 14 * ARR_X_LEN]),

        .state(state[3 + 14 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x4_y14(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[4 + 15 * ARR_X_LEN]),
        .d  (state[4 + 13 * ARR_X_LEN]),
        .l  (state[3 + 14 * ARR_X_LEN]),
        .r  (state[5 + 14 * ARR_X_LEN]),
        .ul (state[3 + 15 * ARR_X_LEN]),
        .ur (state[5 + 15 * ARR_X_LEN]),
        .dl (state[3 + 13 * ARR_X_LEN]),
        .dr (state[5 + 13 * ARR_X_LEN]),

        .load_in(inp_load && select[14]),
        .in_data(inp_data[4]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[4 + 15 * ARR_X_LEN]),
        .out_data       (cell_outs[4 + 14 * ARR_X_LEN]),

        .state(state[4 + 14 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x5_y14(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[5 + 15 * ARR_X_LEN]),
        .d  (state[5 + 13 * ARR_X_LEN]),
        .l  (state[4 + 14 * ARR_X_LEN]),
        .r  (state[6 + 14 * ARR_X_LEN]),
        .ul (state[4 + 15 * ARR_X_LEN]),
        .ur (state[6 + 15 * ARR_X_LEN]),
        .dl (state[4 + 13 * ARR_X_LEN]),
        .dr (state[6 + 13 * ARR_X_LEN]),

        .load_in(inp_load && select[14]),
        .in_data(inp_data[5]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[5 + 15 * ARR_X_LEN]),
        .out_data       (cell_outs[5 + 14 * ARR_X_LEN]),

        .state(state[5 + 14 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x6_y14(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[6 + 15 * ARR_X_LEN]),
        .d  (state[6 + 13 * ARR_X_LEN]),
        .l  (state[5 + 14 * ARR_X_LEN]),
        .r  (state[7 + 14 * ARR_X_LEN]),
        .ul (state[5 + 15 * ARR_X_LEN]),
        .ur (state[7 + 15 * ARR_X_LEN]),
        .dl (state[5 + 13 * ARR_X_LEN]),
        .dr (state[7 + 13 * ARR_X_LEN]),

        .load_in(inp_load && select[14]),
        .in_data(inp_data[6]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[6 + 15 * ARR_X_LEN]),
        .out_data       (cell_outs[6 + 14 * ARR_X_LEN]),

        .state(state[6 + 14 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x7_y14(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[7 + 15 * ARR_X_LEN]),
        .d  (state[7 + 13 * ARR_X_LEN]),
        .l  (state[6 + 14 * ARR_X_LEN]),
        .r  (state[8 + 14 * ARR_X_LEN]),
        .ul (state[6 + 15 * ARR_X_LEN]),
        .ur (state[8 + 15 * ARR_X_LEN]),
        .dl (state[6 + 13 * ARR_X_LEN]),
        .dr (state[8 + 13 * ARR_X_LEN]),

        .load_in(inp_load && select[14]),
        .in_data(inp_data[7]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[7 + 15 * ARR_X_LEN]),
        .out_data       (cell_outs[7 + 14 * ARR_X_LEN]),

        .state(state[7 + 14 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x8_y14(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[8 + 15 * ARR_X_LEN]),
        .d  (state[8 + 13 * ARR_X_LEN]),
        .l  (state[7 + 14 * ARR_X_LEN]),
        .r  (state[9 + 14 * ARR_X_LEN]),
        .ul (state[7 + 15 * ARR_X_LEN]),
        .ur (state[9 + 15 * ARR_X_LEN]),
        .dl (state[7 + 13 * ARR_X_LEN]),
        .dr (state[9 + 13 * ARR_X_LEN]),

        .load_in(inp_load && select[14]),
        .in_data(inp_data[8]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[8 + 15 * ARR_X_LEN]),
        .out_data       (cell_outs[8 + 14 * ARR_X_LEN]),

        .state(state[8 + 14 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x9_y14(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[9 + 15 * ARR_X_LEN]),
        .d  (state[9 + 13 * ARR_X_LEN]),
        .l  (state[8 + 14 * ARR_X_LEN]),
        .r  (state[10 + 14 * ARR_X_LEN]),
        .ul (state[8 + 15 * ARR_X_LEN]),
        .ur (state[10 + 15 * ARR_X_LEN]),
        .dl (state[8 + 13 * ARR_X_LEN]),
        .dr (state[10 + 13 * ARR_X_LEN]),

        .load_in(inp_load && select[14]),
        .in_data(inp_data[9]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[9 + 15 * ARR_X_LEN]),
        .out_data       (cell_outs[9 + 14 * ARR_X_LEN]),

        .state(state[9 + 14 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x10_y14(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[10 + 15 * ARR_X_LEN]),
        .d  (state[10 + 13 * ARR_X_LEN]),
        .l  (state[9 + 14 * ARR_X_LEN]),
        .r  (state[11 + 14 * ARR_X_LEN]),
        .ul (state[9 + 15 * ARR_X_LEN]),
        .ur (state[11 + 15 * ARR_X_LEN]),
        .dl (state[9 + 13 * ARR_X_LEN]),
        .dr (state[11 + 13 * ARR_X_LEN]),

        .load_in(inp_load && select[14]),
        .in_data(inp_data[10]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[10 + 15 * ARR_X_LEN]),
        .out_data       (cell_outs[10 + 14 * ARR_X_LEN]),

        .state(state[10 + 14 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x11_y14(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[11 + 15 * ARR_X_LEN]),
        .d  (state[11 + 13 * ARR_X_LEN]),
        .l  (state[10 + 14 * ARR_X_LEN]),
        .r  (state[12 + 14 * ARR_X_LEN]),
        .ul (state[10 + 15 * ARR_X_LEN]),
        .ur (state[12 + 15 * ARR_X_LEN]),
        .dl (state[10 + 13 * ARR_X_LEN]),
        .dr (state[12 + 13 * ARR_X_LEN]),

        .load_in(inp_load && select[14]),
        .in_data(inp_data[11]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[11 + 15 * ARR_X_LEN]),
        .out_data       (cell_outs[11 + 14 * ARR_X_LEN]),

        .state(state[11 + 14 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x12_y14(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[12 + 15 * ARR_X_LEN]),
        .d  (state[12 + 13 * ARR_X_LEN]),
        .l  (state[11 + 14 * ARR_X_LEN]),
        .r  (state[13 + 14 * ARR_X_LEN]),
        .ul (state[11 + 15 * ARR_X_LEN]),
        .ur (state[13 + 15 * ARR_X_LEN]),
        .dl (state[11 + 13 * ARR_X_LEN]),
        .dr (state[13 + 13 * ARR_X_LEN]),

        .load_in(inp_load && select[14]),
        .in_data(inp_data[12]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[12 + 15 * ARR_X_LEN]),
        .out_data       (cell_outs[12 + 14 * ARR_X_LEN]),

        .state(state[12 + 14 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x13_y14(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[13 + 15 * ARR_X_LEN]),
        .d  (state[13 + 13 * ARR_X_LEN]),
        .l  (state[12 + 14 * ARR_X_LEN]),
        .r  (state[14 + 14 * ARR_X_LEN]),
        .ul (state[12 + 15 * ARR_X_LEN]),
        .ur (state[14 + 15 * ARR_X_LEN]),
        .dl (state[12 + 13 * ARR_X_LEN]),
        .dr (state[14 + 13 * ARR_X_LEN]),

        .load_in(inp_load && select[14]),
        .in_data(inp_data[13]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[13 + 15 * ARR_X_LEN]),
        .out_data       (cell_outs[13 + 14 * ARR_X_LEN]),

        .state(state[13 + 14 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x14_y14(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[14 + 15 * ARR_X_LEN]),
        .d  (state[14 + 13 * ARR_X_LEN]),
        .l  (state[13 + 14 * ARR_X_LEN]),
        .r  (state[15 + 14 * ARR_X_LEN]),
        .ul (state[13 + 15 * ARR_X_LEN]),
        .ur (state[15 + 15 * ARR_X_LEN]),
        .dl (state[13 + 13 * ARR_X_LEN]),
        .dr (state[15 + 13 * ARR_X_LEN]),

        .load_in(inp_load && select[14]),
        .in_data(inp_data[14]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[14 + 15 * ARR_X_LEN]),
        .out_data       (cell_outs[14 + 14 * ARR_X_LEN]),

        .state(state[14 + 14 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x15_y14(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (state[15 + 15 * ARR_X_LEN]),
        .d  (state[15 + 13 * ARR_X_LEN]),
        .l  (state[14 + 14 * ARR_X_LEN]),
        .r  (1'b0),
        .ul (state[14 + 15 * ARR_X_LEN]),
        .ur (1'b0),
        .dl (state[14 + 13 * ARR_X_LEN]),
        .dr (1'b0),

        .load_in(inp_load && select[14]),
        .in_data(inp_data[15]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (cell_outs[15 + 15 * ARR_X_LEN]),
        .out_data       (cell_outs[15 + 14 * ARR_X_LEN]),

        .state(state[15 + 14 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x0_y15(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (1'b0),
        .d  (state[0 + 14 * ARR_X_LEN]),
        .l  (1'b0),
        .r  (state[1 + 15 * ARR_X_LEN]),
        .ul (1'b0),
        .ur (1'b0),
        .dl (1'b0),
        .dr (state[1 + 14 * ARR_X_LEN]),

        .load_in(inp_load && select[15]),
        .in_data(inp_data[0]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (1'b0),
        .out_data       (cell_outs[0 + 15 * ARR_X_LEN]),

        .state(state[0 + 15 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x1_y15(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (1'b0),
        .d  (state[1 + 14 * ARR_X_LEN]),
        .l  (state[0 + 15 * ARR_X_LEN]),
        .r  (state[2 + 15 * ARR_X_LEN]),
        .ul (1'b0),
        .ur (1'b0),
        .dl (state[0 + 14 * ARR_X_LEN]),
        .dr (state[2 + 14 * ARR_X_LEN]),

        .load_in(inp_load && select[15]),
        .in_data(inp_data[1]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (1'b0),
        .out_data       (cell_outs[1 + 15 * ARR_X_LEN]),

        .state(state[1 + 15 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x2_y15(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (1'b0),
        .d  (state[2 + 14 * ARR_X_LEN]),
        .l  (state[1 + 15 * ARR_X_LEN]),
        .r  (state[3 + 15 * ARR_X_LEN]),
        .ul (1'b0),
        .ur (1'b0),
        .dl (state[1 + 14 * ARR_X_LEN]),
        .dr (state[3 + 14 * ARR_X_LEN]),

        .load_in(inp_load && select[15]),
        .in_data(inp_data[2]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (1'b0),
        .out_data       (cell_outs[2 + 15 * ARR_X_LEN]),

        .state(state[2 + 15 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x3_y15(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (1'b0),
        .d  (state[3 + 14 * ARR_X_LEN]),
        .l  (state[2 + 15 * ARR_X_LEN]),
        .r  (state[4 + 15 * ARR_X_LEN]),
        .ul (1'b0),
        .ur (1'b0),
        .dl (state[2 + 14 * ARR_X_LEN]),
        .dr (state[4 + 14 * ARR_X_LEN]),

        .load_in(inp_load && select[15]),
        .in_data(inp_data[3]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (1'b0),
        .out_data       (cell_outs[3 + 15 * ARR_X_LEN]),

        .state(state[3 + 15 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x4_y15(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (1'b0),
        .d  (state[4 + 14 * ARR_X_LEN]),
        .l  (state[3 + 15 * ARR_X_LEN]),
        .r  (state[5 + 15 * ARR_X_LEN]),
        .ul (1'b0),
        .ur (1'b0),
        .dl (state[3 + 14 * ARR_X_LEN]),
        .dr (state[5 + 14 * ARR_X_LEN]),

        .load_in(inp_load && select[15]),
        .in_data(inp_data[4]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (1'b0),
        .out_data       (cell_outs[4 + 15 * ARR_X_LEN]),

        .state(state[4 + 15 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x5_y15(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (1'b0),
        .d  (state[5 + 14 * ARR_X_LEN]),
        .l  (state[4 + 15 * ARR_X_LEN]),
        .r  (state[6 + 15 * ARR_X_LEN]),
        .ul (1'b0),
        .ur (1'b0),
        .dl (state[4 + 14 * ARR_X_LEN]),
        .dr (state[6 + 14 * ARR_X_LEN]),

        .load_in(inp_load && select[15]),
        .in_data(inp_data[5]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (1'b0),
        .out_data       (cell_outs[5 + 15 * ARR_X_LEN]),

        .state(state[5 + 15 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x6_y15(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (1'b0),
        .d  (state[6 + 14 * ARR_X_LEN]),
        .l  (state[5 + 15 * ARR_X_LEN]),
        .r  (state[7 + 15 * ARR_X_LEN]),
        .ul (1'b0),
        .ur (1'b0),
        .dl (state[5 + 14 * ARR_X_LEN]),
        .dr (state[7 + 14 * ARR_X_LEN]),

        .load_in(inp_load && select[15]),
        .in_data(inp_data[6]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (1'b0),
        .out_data       (cell_outs[6 + 15 * ARR_X_LEN]),

        .state(state[6 + 15 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x7_y15(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (1'b0),
        .d  (state[7 + 14 * ARR_X_LEN]),
        .l  (state[6 + 15 * ARR_X_LEN]),
        .r  (state[8 + 15 * ARR_X_LEN]),
        .ul (1'b0),
        .ur (1'b0),
        .dl (state[6 + 14 * ARR_X_LEN]),
        .dr (state[8 + 14 * ARR_X_LEN]),

        .load_in(inp_load && select[15]),
        .in_data(inp_data[7]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (1'b0),
        .out_data       (cell_outs[7 + 15 * ARR_X_LEN]),

        .state(state[7 + 15 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x8_y15(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (1'b0),
        .d  (state[8 + 14 * ARR_X_LEN]),
        .l  (state[7 + 15 * ARR_X_LEN]),
        .r  (state[9 + 15 * ARR_X_LEN]),
        .ul (1'b0),
        .ur (1'b0),
        .dl (state[7 + 14 * ARR_X_LEN]),
        .dr (state[9 + 14 * ARR_X_LEN]),

        .load_in(inp_load && select[15]),
        .in_data(inp_data[8]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (1'b0),
        .out_data       (cell_outs[8 + 15 * ARR_X_LEN]),

        .state(state[8 + 15 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x9_y15(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (1'b0),
        .d  (state[9 + 14 * ARR_X_LEN]),
        .l  (state[8 + 15 * ARR_X_LEN]),
        .r  (state[10 + 15 * ARR_X_LEN]),
        .ul (1'b0),
        .ur (1'b0),
        .dl (state[8 + 14 * ARR_X_LEN]),
        .dr (state[10 + 14 * ARR_X_LEN]),

        .load_in(inp_load && select[15]),
        .in_data(inp_data[9]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (1'b0),
        .out_data       (cell_outs[9 + 15 * ARR_X_LEN]),

        .state(state[9 + 15 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x10_y15(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (1'b0),
        .d  (state[10 + 14 * ARR_X_LEN]),
        .l  (state[9 + 15 * ARR_X_LEN]),
        .r  (state[11 + 15 * ARR_X_LEN]),
        .ul (1'b0),
        .ur (1'b0),
        .dl (state[9 + 14 * ARR_X_LEN]),
        .dr (state[11 + 14 * ARR_X_LEN]),

        .load_in(inp_load && select[15]),
        .in_data(inp_data[10]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (1'b0),
        .out_data       (cell_outs[10 + 15 * ARR_X_LEN]),

        .state(state[10 + 15 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x11_y15(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (1'b0),
        .d  (state[11 + 14 * ARR_X_LEN]),
        .l  (state[10 + 15 * ARR_X_LEN]),
        .r  (state[12 + 15 * ARR_X_LEN]),
        .ul (1'b0),
        .ur (1'b0),
        .dl (state[10 + 14 * ARR_X_LEN]),
        .dr (state[12 + 14 * ARR_X_LEN]),

        .load_in(inp_load && select[15]),
        .in_data(inp_data[11]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (1'b0),
        .out_data       (cell_outs[11 + 15 * ARR_X_LEN]),

        .state(state[11 + 15 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x12_y15(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (1'b0),
        .d  (state[12 + 14 * ARR_X_LEN]),
        .l  (state[11 + 15 * ARR_X_LEN]),
        .r  (state[13 + 15 * ARR_X_LEN]),
        .ul (1'b0),
        .ur (1'b0),
        .dl (state[11 + 14 * ARR_X_LEN]),
        .dr (state[13 + 14 * ARR_X_LEN]),

        .load_in(inp_load && select[15]),
        .in_data(inp_data[12]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (1'b0),
        .out_data       (cell_outs[12 + 15 * ARR_X_LEN]),

        .state(state[12 + 15 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x13_y15(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (1'b0),
        .d  (state[13 + 14 * ARR_X_LEN]),
        .l  (state[12 + 15 * ARR_X_LEN]),
        .r  (state[14 + 15 * ARR_X_LEN]),
        .ul (1'b0),
        .ur (1'b0),
        .dl (state[12 + 14 * ARR_X_LEN]),
        .dr (state[14 + 14 * ARR_X_LEN]),

        .load_in(inp_load && select[15]),
        .in_data(inp_data[13]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (1'b0),
        .out_data       (cell_outs[13 + 15 * ARR_X_LEN]),

        .state(state[13 + 15 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x14_y15(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (1'b0),
        .d  (state[14 + 14 * ARR_X_LEN]),
        .l  (state[13 + 15 * ARR_X_LEN]),
        .r  (state[15 + 15 * ARR_X_LEN]),
        .ul (1'b0),
        .ur (1'b0),
        .dl (state[13 + 14 * ARR_X_LEN]),
        .dr (state[15 + 14 * ARR_X_LEN]),

        .load_in(inp_load && select[15]),
        .in_data(inp_data[14]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (1'b0),
        .out_data       (cell_outs[14 + 15 * ARR_X_LEN]),

        .state(state[14 + 15 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );


    life_cell arr_cell_x15_y15(
        .clk    (clk),
        .reset  (reset),

        .run    (run),
        .u  (1'b0),
        .d  (state[15 + 14 * ARR_X_LEN]),
        .l  (state[14 + 15 * ARR_X_LEN]),
        .r  (1'b0),
        .ul (1'b0),
        .ur (1'b0),
        .dl (state[14 + 14 * ARR_X_LEN]),
        .dr (1'b0),

        .load_in(inp_load && select[15]),
        .in_data(inp_data[15]),

        .load_out       (out_load),
        .shift          (out_shift),
        .prev_out_data  (1'b0),
        .out_data       (cell_outs[15 + 15 * ARR_X_LEN]),

        .state(state[15 + 15 * ARR_X_LEN]),

        .vccd1(vccd1),
        .vssd1(vssd1)
    );



endmodule

