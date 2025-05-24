// Code your testbench here
// or browse Examples
module up_down3bit_test;
  reg clk,rst,cnt;
  wire [2:0] y;
  up_down3bit dut(clk,rst,cnt,y);
  initial begin
    clk=0;rst=0;
    #15 rst=1; cnt=1;
    #80 cnt=0;
    #200 $finish;
  end
  always 
    #5 clk=~clk;
  initial begin
    $monitor("sim time=%0t,clk=%b,rst=%b,cnt=%b,y=%b",$time,clk,rst,cnt,y);
    $dumpfile("dump.vcd");
    $dumpvars(0,clk,rst,cnt,y);
  end
endmodule 