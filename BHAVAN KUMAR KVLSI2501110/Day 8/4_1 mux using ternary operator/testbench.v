// Code your testbench here
// or browse Examples
module mux4_1ternary_test;
  reg [3:0]i;
  reg [1:0]s;
  wire y;
  mux4_1ternary dut(y,i,s);
  initial begin
   {s,i}={2'b00,4'b0001};
#5 {s,i}={2'b01,4'b0010};
#5 {s,i}={2'b10,4'b0100};
#5 {s,i}={2'b11,4'b1000};
  end
  initial begin 
    $monitor("sim time=%0t,s=%b,i=%b,y=%b",$time,s,i,y);
    $dumpfile("dump.vcd");
    $dumpvars(1,mux4_1ternary_test);
  end 
endmodule 