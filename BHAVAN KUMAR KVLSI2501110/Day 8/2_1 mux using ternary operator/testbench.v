// Code your testbench here
// or browse Examples
module mux2_1ternary_test;
  reg [1:0]i;
  reg s;
  wire y;
  mux2_1ternary dut(y,i,s);
  initial begin 
    {s,i}={1'b0,2'b00};
#5  {s,i}={1'b0,2'b01};
#5  {s,i}={1'b1,2'b01};
#5  {s,i}={1'b1,2'b11};
  end 
  initial begin 
    $monitor("sim time=%0t,s=%b,i=%b,y=%b",$time,s,i,y);
    $dumpfile("dump.vcd");
    $dumpvars(1,mux2_1ternary_test);
  end 
endmodule 