`timescale 1ns / 1ps
`timescale 1ns/1ns

module tb_d_latch;
  reg D;
  reg EN;
  wire Q;
  d_latch d_latch_inst (
    .D(D),
    .EN(EN),
    .Q(Q)
  );

  reg clk = 0;
  always #5 clk = ~clk;

 
  initial begin
    D = 0;
    EN = 0;
    #10 
    D = 1;
    #10 
    D = 0;
    #10
     EN = 1;
    #10 
    D = 1;
    #10 
    D = 0;
    #10 
    EN = 0;
    #10
     D = 1;
    #10 
    D = 0;
    $finish;
  end
endmodule

