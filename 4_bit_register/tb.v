`timescale 1ns / 1ps

module register_tb;
    reg [3:0] data_input;
    reg clock;
    reg reset;
    wire [3:0] data_output;
    register UUT (
        .data_input(data_input),
        .clock(clock),
        .reset(reset),
        .data_output(data_output)
    );
    initial begin
        data_input = 4'b0000;
        clock = 0;
        reset = 0;
        reset = 1;
        #10; 
        reset = 0;
        data_input = 4'b1010;
        #10;
        data_input = 4'b1100;
        #10; 
        $finish;
    end
endmodule
