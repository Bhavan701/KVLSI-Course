// Code your testbench here
// or browse Examples
module t_latch_test;
  reg clk,rst,t;
  wire q;
  t_latch dut(clk,rst,t,q);
  initial begin
    clk=0;rst=1;
    #6 rst=0;t=0;
    #10 t=1;
    #20 $finish;
  end
  always 
    #5 clk=~clk;
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,clk,rst,t,q);
  end
endmodule 