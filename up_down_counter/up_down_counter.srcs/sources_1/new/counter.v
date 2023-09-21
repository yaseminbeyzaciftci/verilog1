`timescale 1ns / 1ps
module up_down_counter (
  input wire clk,       
  input wire rst,       
  output [3:0] count 
);
reg [3:0] count_reg, count_next;
always @(posedge clk or posedge rst) begin
  if (~rst) begin
    count_reg <= 'b0; 
  end else
  count_reg<=count_next;
  end
  always @(*)begin
  count_next = count_reg+1;
end
assign count= count_reg;
endmodule
