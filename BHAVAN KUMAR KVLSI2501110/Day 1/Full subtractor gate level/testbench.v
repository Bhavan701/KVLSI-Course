// Code your testbench here
// or browse Examples
module full_subtractor_test;
  reg a,b,c;
  wire diff,bor;
  full_subtractor dut(a,b,c,diff,bor);
  initial begin
    a=1'b0;b=1'b0;c=1'b0;
#5  a=1'b0;b=1'b0;c=1'b1;
#5  a=1'b0;b=1'b1;c=1'b0;
#5  a=1'b0;b=1'b1;c=1'b1;
#5  a=1'b1;b=1'b0;c=1'b0;
#5  a=1'b1;b=1'b0;c=1'b1;
#5  a=1'b1;b=1'b1;c=1'b0;
#5  a=1'b1;b=1'b1;c=1'b1;
  end
  initial begin
    $monitor("sim time=%0t,a=%b,b=%b,c=%b,diff=%b,bor=%b",$time,a,b,c,diff,bor);
    $dumpfile("dump.vcd");
    $dumpvars(0,a,b,c,diff,bor);
  end 
endmodule
