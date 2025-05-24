// Code your testbench here
// or browse Examples
 module up3counter_test;
  reg clk,rst;
  wire [2:0] count;
  up3counter dut(count,clk,rst);
  initial begin
    clk= 0;
    rst= 0;
    #13 rst= 1;
    #100 $finish;
  end
    always #5 clk=~clk;
  initial begin
    $monitor("sim time=%0t,clk=%b,rst=%b,count=%b",$time,clk,rst,count);
    $dumpfile("dump.vcd");
    $dumpvars(1,up3counter_test);
  end
endmodule