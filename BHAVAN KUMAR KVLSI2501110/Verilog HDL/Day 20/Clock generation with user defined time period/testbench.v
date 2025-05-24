// Code your testbench here
// or browse Examples
module test;
  reg clk;
  real tp=4;
  initial begin
    clk=0;
    #20 $finish;
    end 
  always 
    #(tp/2) clk=~clk;
  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars(0,clk);
  end 
endmodule 