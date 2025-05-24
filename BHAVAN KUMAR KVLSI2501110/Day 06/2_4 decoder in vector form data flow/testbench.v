// Code your testbench here
// or browse Examples
module decoder2_4_test;
  reg [1:0]i;
  wire [3:0]y;
  decoder2_4 dut(y,i);
  initial begin 
    {i}=0;
#5  {i}=1;
#5  {i}=2;
#5  {i}=3;
  end 
  initial begin 
    $monitor("sim time=%0t,i=%b,y=%b",$time,i,y);
    $dumpfile("dump.vcd");
    $dumpvars(1,decoder2_4_test);
  end 
endmodule



