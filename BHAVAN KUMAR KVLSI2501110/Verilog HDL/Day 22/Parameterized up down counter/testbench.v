// Code your testbench here
// or browse Examples
module counterup_down_test;
  reg clk,rst,cnt;
  wire [dut.n-1:0]count;
  counterup_down dut(clk,rst,cnt,count);
  initial begin
    clk=0;rst=1;
    #12 rst=0;cnt=1;
    #100 cnt=0;
    #200 $finish;
  end
  always #5 clk=~clk;
  initial begin
    $monitor ("sim time=%0t,clk=%b,rst=%b,cnt=%b,count=%b",$time,clk,rst,cnt
              ,count);
    $dumpfile("dump.vcd");
    $dumpvars(0,clk,rst,cnt,count);
  end
endmodule 
