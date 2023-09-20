
`timescale 1ns / 1ps
module priority_encoder(
  input [3:0] data,
  output reg [1:0] encoded_output,
  output reg output1
);
  always @(*) begin
    valid_output = 0;
    if ([3] == 1'b1) begin
      encoded_output = 2'b11;
      output1 = 1'b1; 
    end
    else if (data[2] == 1'b1) begin
      encoded_output = 2'b10;
      output1 = 1'b1;
    end
    else if (data[1] == 1'b1) begin
      encoded_output = 2'b01;
      output1 = 1'b1;
    end
    else if (data[0] == 1'b1) begin
      encoded_output = 2'b00;
      output1 = 1'b1;
    end
    else begin
      encoded_output = 2'bxx;
     output1 = 1'b0; 
    end
  end

endmodule
