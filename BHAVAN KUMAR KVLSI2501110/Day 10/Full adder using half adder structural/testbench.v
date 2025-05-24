// Code your testbench here
// or browse Examples
module Full_adder_test;
  reg a,b,cin;
  wire sum,cout;
  Full_adder dut(a,b,cin,sum,cout);
  initial begin 
    a=1'b0;b=1'b0;cin=1'b0;
#5  a=1'b0;b=1'b0;cin=1'b1;
#5  a=1'b0;b=1'b1;cin=1'b0;
#5  a=1'b0;b=1'b1;cin=1'b1;
#5  a=1'b1;b=1'b0;cin=1'b0;
#5  a=1'b1;b=1'b0;cin=1'b1;
#5  a=1'b1;b=1'b1;cin=1'b0;
#5  a=1'b1;b=1'b1;cin=1'b1;
  end
  initial begin
    $monitor("sim time=%0t,a=%b,b=%b,cin=%b,sum=%b,cout=%b",$time,a,b,cin,sum,cout);
    $dumpfile("dump.vcd");
    $dumpvars(0,a,b,cin,sum,cout);
  end 
endmodule
