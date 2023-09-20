`timescale 1ns / 1ps

module testbench_priority_encoder();

  reg [3:0] data_input;
  wire [1:0] encoded_output;
  wire valid_output;

  priority_encoder uut (
    .data_input(data_input),
    .encoded_output(encoded_output),
    .valid_output(valid_output)
  );

  initial begin
    $dumpfile("priority_encoder.vcd");
    $dumpvars(0, testbench_priority_encoder);

    data_input = 4'b0000;
    #10;
    
    data_input = 4'b0001;
    #10;
    
    data_input = 4'b0010;
    #10;
    
    data_input = 4'b0100;
    #10;
    
    data_input = 4'b1000;
    #10;
    
    data_input = 4'b1111;
    #10;
    
    $finish;
  end

endmodule
