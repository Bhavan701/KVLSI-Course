// Code your testbench here
// or browse Examples
module palindrome_3bit_test;
  reg [2:0]a;
  wire y;
  palindrome_3bit dut(a,y);
  initial begin 
   a=3'b010;
#5 a=3'bx0x;
#5 a=3'bx0z;
#5 a=3'bz0z;
#5 a=3'b101;
#5 a=3'b100;
  end 
  initial begin
    $monitor("sim time=%0t,a=%b,y=%b",$time,a,y);
    $dumpfile("dump.vcd");
    $dumpvars(1,palindrome_3bit_test);
  end 
endmodule
