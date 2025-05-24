// Code your testbench here
// or browse Examples
module frequency_devider_test;
  reg clk,rst;
  wire clk_out;
  frequency_devider dut(clk,rst,clk_out);
  initial begin
    clk=0;rst=1;
    #5 rst=0;
    #100 $finish;
  end
  always 
    #5 clk=~clk;
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,clk,clk_out,rst);
  end
endmodule 