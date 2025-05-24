// Code your testbench here
// or browse Examples
module siiso_test;
  reg clk,rst,sin;
  wire sout;
  siso dut(clk,rst,sin,sout);
  initial begin
    clk=0;rst=1;
    #6 rst=0; sin=1;
    #9 sin=0;
    #10 sin=1;
    #10 sin=0;
    #10 sin=1;
    #10 sin=1;
    #100 $finish;
  end
  always 
    #5 clk=~clk;
  initial begin 
    $monitor("sim time=%0t,rst=%b,sin=%b,sout=%b",$time,rst,sin,sout);
    $dumpfile("dump.vcd");
    $dumpvars(0,clk,rst,sin,sout);
  end
endmodule 