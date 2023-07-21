
// Individual cell
module life_cell(
    // Clock and reseet
    input clk,
    input reset,
    // Run control and neighbour connections
    input run,
    input u, d, l, r, ul, ur, dl, dr,
    // Load input
    input   load_in,
    input   in_data,
    // Load to output
    input   load_out,
    input   prev_out_data,
    input   shift,
    output  out_data,
    // For neighbour connections
    output state,

    // Power pins
    inout vccd1,
    inout vssd1
);
    reg state;                                      // Internal state
    reg out_data;

    always @(posedge clk) begin
        if(reset)
            out_data <= 1'b0;
        else if(load_out)
            out_data <= state;
        else if(shift)
            out_data <= prev_out_data;
    end

    always @(posedge clk) begin
        if(reset)
            state <= 0;
        else if(run)
            state <= get_next_state(u, d, l, r, ul, ur, dl, dr, state);
        else if(load_in)
            state <= in_data;
    end

    // Get next state of a cell from neighbour states and current state                    
    function get_next_state(
        // Neighbour states
        input a, b, c, d, e, f, g, h,
        // Own state
        input curr
    );
        integer count;
        begin
            count = (a + b + c + d + e + f + g + h);
            
            if(count == 0)
                get_next_state = 1'b0;
            else if(count == 1)
                get_next_state = 1'b0;
            else if(count == 2)
                get_next_state = curr;
            else if(count == 3)
                get_next_state = 1'b1;
            else
                get_next_state = 1'b0;
        end
    endfunction

endmodule
