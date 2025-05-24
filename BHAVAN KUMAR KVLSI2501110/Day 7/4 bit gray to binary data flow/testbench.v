// Code your testbench here
// or browse Examples
module gray4_binary_test;
  reg [3:0]g;
  wire [3:0]b;
  gray4_binary dut(b,g);
  initial begin 
    {g}={4'b0000};
    #5  {g}={4'b0000};
    #5  {g}={4'b0001};
    #5  {g}={4'b0010};
    #5  {g}={4'b0011};
    #5  {g}={4'b0100};
    #5  {g}={4'b0101};
    #5  {g}={4'b0110};
    #5  {g}={4'b0111};
    #5  {g}={4'b1000};
    #5  {g}={4'b1001};
    #5  {g}={4'b1010};
    #5  {g}={4'b1011};
    #5  {g}={4'b1100};
    #5  {g}={4'b1101};
    #5  {g}={4'b1110};
    #5  {g}={4'b1111};
  end 
  initial begin 
    $monitor("sim time+%0t,g=%b,b=%b",$time,g,b);
    $dumpfile("dump.vcd");
    $dumpvars(1,gray4_binary_test);
  end 
endmodule