// Code your testbench here
// or browse Examples
module sr_ff_test;
  reg clk,rst,s,r;
  wire q;
  sr_ff dut (clk,rst,s,r,q);
  initial begin
    clk=0;rst=1;
    #6 rst=0;{s,r}=0;
    #10 {s,r}=1;
    #10 {s,r}=2;
    #10 {s,r}=3;
    #20 $finish;
  end
  always 
    #5 clk=~clk;
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,clk,rst,s,r,q);
  end
endmodule 

