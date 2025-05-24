// Code your testbench here
// or browse Examples
module JK_fsm_test;
  reg clk,rst,j,k;
  wire y;
  JK_fsm dut(clk,rst,j,k,y);
  initial begin
    clk=0;rst=1;
    #15 rst=0;j=0;k=0;
    #10 j=0;k=1;
    #10 j=1;k=0;
    #10 j=1;k=1;
    #200 $finish;
  end
  always 
    #5 clk=~clk;
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,clk,rst,j,k,y);
  end
endmodule 
    