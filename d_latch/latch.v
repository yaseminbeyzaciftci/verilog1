`timescale 1ns / 1ps
module d_latch (
  input D,    
  input EN,   
  output Q    
);

  assign Q = (EN) ? D : 1'b0; 
endmodule
