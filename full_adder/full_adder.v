`timescale 1ns / 1ps
module full_adder (
    input A,
    input B,
    input Cin,
    output Sum,
    output Cout
);

wire Sum1, Sum2;
wire C1, C2;

half_adder HA1 (.A(A), .B(B), .Sum(Sum1), .Carry(C1));

half_adder HA2 (.A(Sum1), .B(Cin), .Sum(Sum2), .Carry(C2));

assign Sum = Sum2;

assign Cout = C1 | C2;

endmodule

module half_adder (
    input A,
    input B,
    output Sum,
    output Carry
);

assign Sum = A ^ B; 
assign Carry = A & B; 

endmodule
