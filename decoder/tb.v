`timescale 1ns / 1ps
module testbench;
  reg [1:0] input_data;
  wire [3:0] output_data;
  decoder decoder(
    .input_data(input_data),
    .output_data(output_data)
  );
  initial begin
    input_data = 2'b00;
    input_data = 2'b00;
    #10; 
    if (output_data !== 4'b0001) $display("Test Senaryosu 1 Hata!");
    input_data = 2'b01;
    #10; 
    if (output_data !== 4'b0010) $display("Test Senaryosu 2 Hata!");
    input_data = 2'b10;
    #10; 
    if (output_data !== 4'b0100) $display("Test Senaryosu 3 Hata!");
    input_data = 2'b11; 
    #10; 
    if (output_data !== 4'b1000) $display("Test Senaryosu 4 Hata!"); 
    input_data = 2'b10; 
    #10; 
    if (output_data !== 4'b0000) $display("Test Senaryosu 5 Hata!"); 
    $finish;
  end
endmodule
