// Code your testbench here
// or browse Examples

module sr_fsm_test;
  reg clk,rst,s,r;
  wire y;
  sr_fsm dut(clk,rst,s,r,y);
  initial begin
    clk=0;rst=1;
    #15 rst=0;s=0;r=0;
    #10 s=0;r=1;
    #10 s=1;r=0;
    #10 s=1;r=1;
    #200 $finish;
  end
  always 
    #5 clk=~clk;
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,clk,rst,s,r,y);
  end
endmodule 
  