// Code your testbench here
// or browse Examples
module full_adder_test;
  reg a,b,c;
  wire s,cout;
  full_adder dut(a,b,c,s,cout);
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
    $monitor("sim time=%0t,a=%b,b=%b,c=%b,s=%b,cout=%b",$time,a,b,c,s,cout);
    $dumpfile("dump.vcd");
    $dumpvars(0,a,b,c,s,cout);
  end 
endmodule