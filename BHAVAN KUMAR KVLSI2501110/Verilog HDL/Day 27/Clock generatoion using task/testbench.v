// Code your testbench here
// or browse Examples
module clock_generator_test;
  reg rst;
  wire clk;
  clock_generator dut(rst,clk);
  initial begin
    rst=1;
    #5 rst=0;
   #100 $finish;
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,rst,clk);
  end
endmodule 