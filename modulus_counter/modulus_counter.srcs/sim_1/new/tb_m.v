`timescale 1ns / 1ps
module modulus_counter_tb;
  reg clk;      
  reg rst;    
  reg enable; 
  wire [2:0] count; 
  modulus_counter_with_enable uut (
    .clk(clk),
    .rst(rst),
    .enable(enable),
    .count(count));
  always begin
    #5 clk = ~clk;
  end
  initial begin
    clk = 0;
    rst = 0;
    enable = 0;#10;
    rst = 1;#10;
    rst = 0;
    enable = 1;
    $monitor("Count = %b", count); #60;
    $finish;
  end
endmodule


