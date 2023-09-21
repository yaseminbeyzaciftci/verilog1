`timescale 1ns / 1ps

module tb_up_down_counter;

  reg clk;     
  reg rst;     
  wire [3:0] count; 
  up_down_counter uut (
    .clk(clk),
    .rst(rst),
    .count(count)
  );

  always begin
    #5 clk = ~clk;
  end
always begin 
clk=1;
#10;
clk=0;
#10;
end
  initial begin
    rst = 0;
    #10;
    rst = 1;

  end
endmodule

