// Code your testbench here
// or browse Examples
module counter_test;
 reg clk,rst;
  wire [6:0]count;
 integer i;
 counter dut(clk,rst,count);
 initial begin 
   clk=0; rst=1;
   #6 rst=0;
   #1000 $finish;
 end 
   always 
     #5 clk=~clk;
  initial begin 
    $monitor ("time=%0t,count=%d",$time,count);
    $dumpfile("dump.vcd");
    $dumpvars(0,count);
  end
endmodule 