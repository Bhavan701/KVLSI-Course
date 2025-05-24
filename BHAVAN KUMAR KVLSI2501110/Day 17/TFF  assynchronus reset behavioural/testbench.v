// Code your testbench here
// or browse Examples
module t_ff_test;
  reg t,clk,rst;
  wire q;
  t_ff dut (t,clk,rst,q);
  always 
    #5 clk=~clk;
  initial begin  
    clk=0; rst=1;
    #10 rst=0;t=0;
    #15 t=1;
    #20 $finish;
  end
  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars(1,t_ff_test);
  end
endmodule 