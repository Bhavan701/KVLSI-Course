// Code your testbench here
// or browse Examples
module counter_down_test;
  reg clk,rst;
  wire [dut.n-1:0]count;
  counter_down dut(clk,rst,count);
  initial begin
    clk=0;rst=1;
    #12 rst=0;
    #200 $finish;
  end
  always #5 clk=~clk;
  initial begin
    $monitor ("sim time=%0t,clk=%b,rst=%b,count=%b",$time,clk,rst,count);
    $dumpfile("dump.vcd");
    $dumpvars(0,clk,rst,count);
  end
endmodule 

