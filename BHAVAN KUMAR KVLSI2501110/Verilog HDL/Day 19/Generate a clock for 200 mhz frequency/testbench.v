// Code your testbench here
// or browse Examples
module test ;
  reg clk;
  real freq=200;//100mz
  real tp;
  initial begin
    clk=0;
    tp=(1000/freq);
    #50 $finish;
  end
  always 
    #(tp/2) clk=~clk;
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1,clk);
  end
endmodule
  