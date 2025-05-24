// Code your testbench here
// or browse Examples
module d_latch_test;
  reg clk,rst,d;
  wire q;
  d_latch dut(clk,rst,d,q);
  initial begin
    clk=0;rst=1;
    #12 rst=0;d=0;
    #12 d=1;
    #20 $finish;
  end
  always 
    #5 clk=~clk;
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,clk,rst,d,q);
  end
endmodule 