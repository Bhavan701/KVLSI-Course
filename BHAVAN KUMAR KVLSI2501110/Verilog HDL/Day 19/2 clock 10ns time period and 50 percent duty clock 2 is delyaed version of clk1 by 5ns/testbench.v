// Code your testbench here
// or browse Examples

module test;
  reg clk1,clk2;
  real tp=10;
  real duty=50;
  real ton;  
  initial begin 
    clk1=0;
    #5 clk2=0;
    ton=(tp*duty/100);
    #50 $finish;  
  end
 always 
   #5 clk1=(~clk1); 
  always 
     #(tp-ton) clk2=(~clk2);
     
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,clk1,clk2);
  end
endmodule