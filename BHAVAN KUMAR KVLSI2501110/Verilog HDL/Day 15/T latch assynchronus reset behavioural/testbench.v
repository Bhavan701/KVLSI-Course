// Code your testbench here
// or browse Examples
module t_latch_test; 
  reg rst,clk,t;
  wire q;
  t_latch dut(t,clk,rst,q);
  initial begin
    clk=0;rst=1;
    #7 rst=0;t=0;
    #10 t=1;
    #20 $finish;
  end
  always
    #5 clk=~clk;
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1,t_latch_test);
  end 
endmodule 

