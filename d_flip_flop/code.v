`timescale 1ns / 1ps
module d_flip_flop (
  input wire D,    
  input wire clk,  
  input wire reset, 
  output wire Q    
);

  reg Q_reg; 
  always @(posedge clk or posedge reset) begin
    if (reset) begin
      Q_reg <= 1'b0; 
    end else begin
      Q_reg <= D;   
    end
  end
  assign Q = Q_reg;
endmodule
