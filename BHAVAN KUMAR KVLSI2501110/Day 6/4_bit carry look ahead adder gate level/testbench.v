// Code your testbench here
// or browse Examples
module carry_4_adder_test;
  reg [3:0]a;
  reg [3:0]b;
  reg cin;
  wire [3:0]sum;
  wire carry;
  carry_4_adder dut(sum,carry,a,b,cin);
  initial begin 
    {a,b,cin}={4'b0,4'b0,1'b1};
#5  {a,b,cin}={4'b1,4'b1,1'b1};
#5  {a,b,cin}={4'b0010,4'b1010,1'b0};
#5  {a,b,cin}={4'b0011,4'b1100,1'b1};
#5  {a,b,cin}={4'd9,4'd8,1'b1};
#5  {a,b,cin}={4'ha,4'hb,1'b1};
  end 
  initial begin 
    $monitor("sim time=%0t,a=%b,b=%b,cin=%b,sum=%b,carry=%b",$time,a,b,cin,sum,carry);
    $dumpfile("dump.vcd");
      $dumpvars(1,carry_4_adder_test);
  end 
endmodule
