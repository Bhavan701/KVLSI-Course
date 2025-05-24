// Code your testbench here
// or browse Examples
module jk_latch_test;
  reg clk,rst,j,k;
  wire q;
  jk_latch dut(clk,rst,j,k,q);
  initial begin
    clk=0;rst=1;
    #12 rst=0; j=0;k=0;
    #7 j=0;k=1;
    #10 j=1;k=0;
    #7 j=1;k=1;
    #20 $finish;
      end 
  always 
    #5 clk=(~clk);
      initial begin
        $dumpfile("dump.vcd");
        $dumpvars(1,jk_latch_test);
      end 
    endmodule 