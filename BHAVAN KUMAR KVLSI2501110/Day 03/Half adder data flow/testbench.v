// Code your testbench here
// or browse Examples

module half_adder_test;
  reg a,b;
  wire s,cout;
  half_adder dut(a,b,s,cout);
  initial begin
    a=1'b0;b=1'b0;
#5  a=1'b0;b=1'b1;
#5  a=1'b1;b=1'b0;
#5  a=1'b1;b=1'b1;
  end
  initial begin
    $monitor("sim time=%0t,a=%b,b=%b,s=%b,cout=%b",$time,a,b,s,cout);
    $dumpfile("dump.vcd");
    $dumpvars(0,a,b,s,cout);
  end 
endmodule