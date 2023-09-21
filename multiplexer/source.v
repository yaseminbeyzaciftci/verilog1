`timescale 1ns / 1ps

module source(
 input x,
 input y,
 input z,
 output reg f
    );
    always @(*)
    begin
    case(z)
    1: f=x;
    0: f=y;
    endcase
    end
endmodule
