// Code your testbench here
// or browse Examples
module parameterized_mux_test;
  parameter n =8;
  reg [n-1:0]i;
  reg [$clog2(n)-1:0]s;
  wire y;
  integer z;
  parameterized_mux dut (i,s,y);
  initial begin 
    for(integer z=0;z<2**(dut.n+$clog2(n));z=z++)
      begin
        {s,i}=z;
        #1;
      end 
  end 
  initial begin 
    $monitor("sim time=%0t,i=%b,s=%b,y=%b",$time,i,s,y);
    $dumpfile("dump.vcd");
    $dumpvars(1,i,s,y);
  end 
endmodule
  