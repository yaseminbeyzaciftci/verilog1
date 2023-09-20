`timescale 1ns / 1ps
module tb_d_flip_flop;
  reg D;
  reg clk;
  reg reset;
  wire Q;

  d_flip_flop d_ff_inst (
    .D(D),
    .clk(clk),
    .reset(reset),
    .Q(Q)
  );

  always begin
    #5 clk = ~clk; 
  end

  initial begin
    D = 0;
    clk = 0;
    reset = 0;
    $display("Time D clk reset Q");
    $monitor("%2t %b %b %b %b", $time, D, clk, reset, Q);
    #10 D = 1;
    #10 D = 0;
    #10 D = 1;
    #10 D = 0;
    #10 reset = 1;
    #10 reset = 0;
    #10 D = 1;
    #10 D = 0;
    $finish;
  end
endmodule

