// Code your testbench here
// or browse Examples
module comparator_2_test;
  reg [1:0]a;
  reg  [1:0]b;
  wire [2:0]y;
  comparator_2 dut(a,b,y);
  initial begin
   {a,b}={2'b00,2'b00};
#5 {a,b}={2'b00,2'b01};
#5 {a,b}={2'b01,2'b00};
#5 {a,b}={2'b11,2'b11};
  end
  initial begin
    $monitor("sim time=%0t,a=%b,b=%b,y=%b",$time,a,b,y);
    $dumpfile("dump.vcd");
    $dumpvars(1,comparator_2_test);
  end 
endmodule
