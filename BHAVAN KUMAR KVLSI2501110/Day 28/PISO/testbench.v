// Code your testbench here
// or browse Examples
module piso_test;
  reg clk,rst,cnt;
  reg [3:0]pi;
  wire so;
  piso dut(clk,rst,cnt,pi,so);
  initial begin
    clk=0;rst=1;
    #12 rst=0; cnt=1; pi=4'b1010;
    #10 cnt=0;
    #200 $finish;
  end
  always 
    #5 clk=~clk;
  initial begin
    $monitor ("sim time=%0t,rst=%b,cnt=%b,pi=%b,so=%b",$time,rst,cnt,pi,so);
    $dumpfile("dump.vcd");
    $dumpvars(0,clk,rst,cnt,pi,so);
  end
endmodule