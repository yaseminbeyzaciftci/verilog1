`timescale 1ns / 1ps
module decoder(
input [1:0] input_data, 
output reg [3:0] output_data);

  always @(*) begin
    case(input_data)
      2'b00:
        output_data = 4'b0001;
      2'b01:
        output_data = 4'b0010;
      2'b10:
        output_data = 4'b0100;
      2'b11:
        output_data = 4'b1000;
      default:
        output_data = 4'b0000; 
    endcase
  end

endmodule

