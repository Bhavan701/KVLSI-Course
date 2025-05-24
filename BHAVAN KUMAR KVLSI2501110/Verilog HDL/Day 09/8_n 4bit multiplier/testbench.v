// Code your testbench here
// or browse Examples
module bit4_8mulN_test;
  reg [3:0]n;
  wire [6:0]y;
  bit4_8mulN dut(n,y);
  initial begin 
    n=4'b0001;
    #5 n=4'b1010;
    #5 n=4'b0011;
  end 
  initial begin 
    $monitor("sim time+%0t,n=%b,y=%b",$time,n,y);
    $dumpfile("dump.vcd");
    $dumpvars(0,bit4_8mulN_test);
  end
endmodule 