// Code your testbench here
// or browse Examples
module hallf_subtractor;
  reg a,b;
  wire diff,borr;
  half_subtractor dut(a,b,diff,bor);
  initial begin
    a=1'b0;b=1'b0;
#5  a=1'b0;b=1'b1;
#5  a=1'b1;b=1'b0;
#5  a=1'b1;b=1'b1;
  end
  initial begin 
    $monitor("sim time=%0t,a=%b,b=%b,diff=%b,bor=%b",$time,a,b,diff,bor);
    $dumpfile("dump.vcd");
    $dumpvars(0,a,b,diff,bor);
  end
endmodule
