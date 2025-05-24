// Code your testbench here
// or browse Examples
module mux4_1_test;
  reg [3:0]i;
  reg [1:0]s;
  wire y;
  mux4_1 dut(y,i,s);
  initial begin
    {s}=0;{i}=1;
#5  {s}=1;{i}=2;
#5  {s}=2;{i}=4;
#5  {s}=3;{i}=8;      
   end 
 initial begin 
    $monitor("sim time=%0t,i=%b,s=%b,y=%b",$time,i,s,y);
    $dumpfile("dump.vcd");
    $dumpvars(1,mux4_1_test);
  end 
endmodule
 