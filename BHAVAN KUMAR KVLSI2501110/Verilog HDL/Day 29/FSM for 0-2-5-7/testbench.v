// Code your testbench here
// or browse Examples
module fsm0257_test;
  reg clk,rst;
  wire [2:0]y;
   fsm0257 dut(clk,rst,y);
  initial begin
    clk=0;rst=1;
    #12 rst=0;
    #200 $finish;
  end
  always 
    #5 clk=~clk;
  initial begin
    $monitor ("sim time=%0t,clk=%b,rst=%b,y=%b",$time,clk,rst,y);
    $dumpfile("dump.vcd");
    $dumpvars(0,clk,rst,y);
  end
endmodule 