// Code your testbench here
// or browse Examples
module d_latch_test; 
  reg rst,clk,d;
  wire q;
  d_latch dut(rst,clk,d,q);
  initial begin
    clk=0;rst=1;
    #12 rst=0;d=0;
    #10 d=1;
    #20 $finish;
  end
  always 
    #5 clk=~clk;
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1,d_latch_test);
  end 
endmodule 
    
    
  