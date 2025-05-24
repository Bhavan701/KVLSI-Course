// Code your testbench here
// or browse Examples
module alu_test;
  reg [3:0] cntr;
  reg [3:0] a;
  reg [3:0]b;
  wire [7:0]y;
  integer i;
  alu dut(cntr,a,b,y);
    initial begin
        a = 8'd15; b = 8'd10;
      for (integer i=0; i<13;i++)
        begin 
         #5 cntr=i;
        end
    end
  initial begin 
    $monitor ("time=%0t,a=%b,b=%b,cntr=%b,y=%d",$time,a,b,cntr,y);
    $dumpfile("dump.vcd");
    $dumpvars(0,a,b,cntr,y);
  end
endmodule
