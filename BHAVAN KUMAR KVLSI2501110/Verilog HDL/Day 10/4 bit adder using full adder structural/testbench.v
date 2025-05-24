// Code your testbench here
// or browse Examples
module bit_4adder_test;
  reg [3:0]a,b;
  reg cin;
  wire [3:0]s;
  wire cout;
  bit_4adder dut(a,b,cin,s,cout);
  initial begin 
    {a,b,cin}={4'b0,4'b0,1'b1};
#5  {a,b,cin}={4'b1,4'b1,1'b1};
#5  {a,b,cin}={4'b0010,4'b1010,1'b0};
#5  {a,b,cin}={4'b0011,4'b1100,1'b1};
#5  {a,b,cin}={4'd9,4'd8,1'b1};
#5  {a,b,cin}={4'ha,4'hb,1'b1};
  end 
  initial begin 
    $monitor("sim time=%0t,a=%b,b=%b,cin=%b,s=%b,cout=%b",$time,a,b,cin,s,cout);
    $dumpfile("dump.vcd");
    $dumpvars(1,bit_4adder_test);
  end 
endmodule