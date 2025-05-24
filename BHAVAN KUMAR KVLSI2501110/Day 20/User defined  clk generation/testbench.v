// Code your testbench here
// or browse Examples
module test;
  reg clk;
  real freq= 200;
  real tp, ton;
  real duty= 20;
  initial begin 
    clk=0;
    tp=(1000/freq);
    ton=(tp*duty)/100;
    #50 $finish;
  end 
  always 
    begin
      #(tp-ton) clk=1;
      #ton clk=0;
    end
  initial begin 
    $dumpfile ("dump.vcd");
    $dumpvars(1,clk);
  end 
endmodule 