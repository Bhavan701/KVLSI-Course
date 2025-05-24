// Code your testbench here
// or browse Examples
module even_test;
  reg [31:0] N;
  wire y;
  even dut (N, y);
  initial begin
    #10 N=2;
    #10 N = 3;
    #10 N = 100;
    #10 N = 255;
    #10 N = 0;
    #10 N = 1;  
  end
  initial
  forever @(N)
    begin
     #1;
    if (y)
      $display("The number %0d is even", N);
    else
      $display("The number %0d is odd", N);
  end
endmodule
