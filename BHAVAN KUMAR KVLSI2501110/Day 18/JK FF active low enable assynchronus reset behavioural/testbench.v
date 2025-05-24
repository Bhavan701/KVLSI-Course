// Code your testbench here
// or browse Examples
// or browse Examples
module jk_ff_test;
  reg clk,rst,j,k;
  wire temp;
  jk_ff dut(j,k,clk,rst,q);
  initial begin
    clk=0;rst=1;
    #3 rst=0;
    #10 {j,k}=0;
    #4 {j,k}=1;
    #10 {j,k}=2;
    #10 {j,k}=3;
    #100 $finish;
  end 
  always 
    #5 clk=~clk;
  initial begin
    $dumpfile ("dump.vcd");
    $dumpvars (0,clk,rst,j,k,q);
  end
endmodule 