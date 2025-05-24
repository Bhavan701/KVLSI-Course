// Code your testbench here
// or browse Examples
module dlatch_test;
  reg d,clk;
  wire q;
  dlatch dut(d,clk,q);
  initial begin
        {clk,d}={1'b1,1'b0};
    #2  {clk,d}={1'b0,1'b0};
    #2  {clk,d}={1'b0,1'b1};
    #2  {clk,d}={1'b1,1'b0};
    #2  {clk,d}={1'b1,1'b1};
  end 
  initial begin
    $monitor("sim time=%0t,clk=%b,d=%b,q=%b",$time,clk,d,q);
    $dumpfile("dump.vcd");
    $dumpvars(1,dlatch_test);
  end 
endmodule 