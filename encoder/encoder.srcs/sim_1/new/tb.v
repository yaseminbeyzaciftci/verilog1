`timescale 1ns / 1ps
module testbench;
  reg [3:0] data;
  wire [1:0] y;
  encoder my_encoder (
    .data(data),
    .y(y)
  );

  initial begin
    $monitor("data=%b, y=%b", data, y);
    data = 4'b0001;
    #10;
    data = 4'b0010;
    #10;
    data = 4'b0100;
    #10;
    data = 4'b1000;
    #10;
    data = 4'b1010; 
    #10;
    $finish;
  end
endmodule

