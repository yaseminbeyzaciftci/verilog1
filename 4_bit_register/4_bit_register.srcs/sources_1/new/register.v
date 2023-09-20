`timescale 1ns / 1ps
module register (
    input wire [3:0] data_input,
    input wire clock,
    input wire reset,
    output wire [3:0] data_output
);

    reg [3:0] register_data;

    always @(posedge clock or posedge reset) begin
        if (reset) begin
            register_data <= 4'b0000;
        end else if (clock) begin
            register_data <= data_input;
        end
    end

    assign data_output = register_data;

endmodule

