// Code your testbench here
// or browse Examples
module sipo_test;
  reg clk,rst,si;
  wire [3:0] po;
  sipo dut(clk,rst,si,po);
  initial begin
   clk=0;rst=1;
    #12 rst=0;si=1;
    #12 si=1;
    #12 si=1;
    #12 si=1;
    #12 si=1;
    #200 $finish;
  end
  always 
    #5 clk=~clk;
  initial begin
    $monitor("sim time=%0t,rst=%b,si=%b,po=%b",$time,rst,si,po);
    $dumpfile("dump.vcd");
    $dumpvars(0,clk,rst,si,po);
  end
endmodule