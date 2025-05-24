// Code your testbench here
// or browse Examples
module XOR_nand_2_test;
  reg a,b;
  wire y;
  XOR_nand_2 dut(y,a,b);
  initial begin
    a=1'b0;b=1'b0;
#5  a=1'b0;b=1'b1;
#5  a=1'b1;b=1'b0;
#5  a=1'b1;b=1'b1;       
  end
  initial begin
    $monitor("sim time=%0t,a=%b,b=%b,y=%b",$time,a,b,y);
    $dumpfile("dump.vcd");
    $dumpvars(0,a,b,y);
  end 
endmodule