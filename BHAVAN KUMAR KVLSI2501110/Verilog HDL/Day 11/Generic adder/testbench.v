// Code your testbench here
// or browse Examples
module generic_adder_test;
  reg [dut.N-1:0]a,b;
  wire [dut.N:0]s;
  integer i;
  generic_adder dut (a,b,s);
  initial begin 
    for(integer i=0;i<2**(2*dut.N);i=i++)
      begin
        {a,b}=i;
        #1;
      end 
  end 
  initial begin 
    $monitor("sim time=%ot,a=%b,b=%b,s=%b",$time,a,b,s);
    $dumpfile("dump.vcd");
    $dumpvars(1,a,b,s);
  end 
endmodule
  