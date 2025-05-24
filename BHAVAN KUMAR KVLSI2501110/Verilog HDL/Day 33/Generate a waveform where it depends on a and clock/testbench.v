// Code your testbench here
// or browse Examples
module clk_gen_test;
  reg clk,rst,a;
  wire q;
  clk_gen dut(clk,rst,a,q);
  initial begin
    clk=0;rst=1;
    #12 rst=0;
    #2 a=1;
    #7 a=0;
    #2 a=1;
    #6 a=0;
    #20 $finish;
  end
  always 
    #5 clk=~clk;
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1,clk_gen_test);
  end
endmodule