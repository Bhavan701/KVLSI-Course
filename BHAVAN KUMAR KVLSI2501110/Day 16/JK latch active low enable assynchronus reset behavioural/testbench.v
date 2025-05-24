// Code your testbench here
// or browse Examples
module jk_latch_test;
  reg clk,rst,j,k;
  wire temp;
  jk_latch dut(j,k,clk,rst,q);
  initial begin
    clk=0;rst=0;
    #3 rst=1;
    #10 {j,k}=0;
    #2 {j,k}=1;
    #3 {j,k}=2;
    #7 {j,k}=3;
    #100 $finish;
  end 
  always 
    #5 clk=~clk;
  initial begin
    $dumpfile ("dump.vcd");
    $dumpvars (0,clk,rst,j,k,q);
  end
endmodule 