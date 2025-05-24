// Code your testbench here
// or browse Examples
module dff_test;
  reg clk,rst,d;
  wire q;
  integer i;
  dff dut (d,clk,rst,q);
  always 
    #5 clk=~clk;
  initial begin
    clk=0;rst=1;
    #5 rst=0;d=0;
    #5 d=1;
    #20 $finish;
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1,clk,rst,d,q);
  end
endmodule 
    
    