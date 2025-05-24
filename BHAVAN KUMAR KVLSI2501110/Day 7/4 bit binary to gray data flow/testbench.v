// Code your testbench here
// or browse Examples
module binary4_gray_test;
  reg [3:0]b;
  wire [3:0]g;
  binary4_gray dut(g,b);
  initial begin 
    {b}={4'b0000};
#5  {b}={4'b0000};
#5  {b}={4'b0001};
#5  {b}={4'b0010};
#5  {b}={4'b0011};
#5  {b}={4'b0100};
#5  {b}={4'b0101};
#5  {b}={4'b0110};
#5  {b}={4'b0111};
#5  {b}={4'b1000};
#5  {b}={4'b1001};
#5  {b}={4'b1010};
#5  {b}={4'b1011};
#5  {b}={4'b1100};
#5  {b}={4'b1101};
#5  {b}={4'b1110};
#5  {b}={4'b1111};
  end 
  initial begin 
    $monitor("sim time+%0t,b=%b,g=%b",$time,b,g);
    $dumpfile("dump.vcd");
    $dumpvars(1,binary4_gray_test);
  end 
endmodule