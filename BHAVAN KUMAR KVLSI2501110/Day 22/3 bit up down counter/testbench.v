// Code your testbench here
// or browse Examples
module up_down_test;
  reg clk,rst,cnt;
  wire [2:0]count;
  up_down dut(count,clk,rst,cnt);
  initial begin 
    clk=0;rst=1;
    #6 rst=0;cnt=1;
    #75 cnt=0;
    #200 $finish;
  end
  always 
    #5 clk=~clk;
  initial begin
    $monitor("sim time=%0t,clk=%b,rst=%b,cnt=%b,count=%b",$time, clk,rst,cnt,count);
    $dumpfile("dump.vcd");
    $dumpvars(1,up_down_test);
  end
endmodule 
    