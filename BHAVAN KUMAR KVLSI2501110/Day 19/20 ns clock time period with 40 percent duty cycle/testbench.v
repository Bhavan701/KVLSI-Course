// Code your testbench here
// or browse Examples
module test;
  reg clk;
  real tp=20;//20 ns
  real duty=40;//duty cycle 40% 
  real ton;
  initial begin 
    clk=0;
    ton=(tp*duty/100);
    #50 $finish;
  end
  always 
    begin
  #(tp-ton) clk=1;
  #ton clk=0;
      end
  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars(1,clk);
  end
endmodule 