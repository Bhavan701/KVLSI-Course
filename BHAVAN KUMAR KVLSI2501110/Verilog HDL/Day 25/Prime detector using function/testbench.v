// Code your testbench here
// or browse Examples
module prime_detector_test;
  reg [31:0] a;
  prime_detector dut (a);
  initial begin
    a = 2;
  end
endmodule