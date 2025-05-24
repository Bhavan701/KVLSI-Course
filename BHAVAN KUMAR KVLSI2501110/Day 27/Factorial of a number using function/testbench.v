// Code your testbench here
// or browse Examples
module factorial_test;
  reg [31:0]N;
  wire [63:0]y;
  factorial dut(N,y);
  initial begin
    N=0;
    #5 N=4;
    #5 N=5;
    #6 N=6;
    #5 N=1;
  end 
  initial begin
    $monitor ("%0d factorial is = %0d",N,y);
  end 
endmodule 