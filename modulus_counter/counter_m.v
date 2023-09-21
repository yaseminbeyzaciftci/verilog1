`timescale 1ns / 1ps
module modulus_counter_with_enable (
  input  clk,     
  input  rst,        
  input enable,    
  output [2:0] count 
);
parameter MOD_VALUE = 8; 
reg [2:0] count_reg; 
always @(posedge clk or posedge rst) begin
  if (rst) begin
    count_reg <= 3'b000;
  end else if (enable) begin
    if (count_reg == MOD_VALUE - 1) begin
      count_reg <= 3'b000; 
    end else begin
      count_reg <= count_reg + 1; 
    end
  end
end
assign count = count_reg;
endmodule


