// Code your testbench here
// or browse Examples
module ripple_carry_test;
  parameter n=4;
  reg [n-1:0]a,b;
  reg cin;
  wire [n-1:0]sum;
  wire carry;
  integer i;
  ripple_carry dut(a,b,cin,sum,carry);
  initial begin
    for (i=0;i<2**(dut.n+n+1);i=i+1)
      begin
        {a,b,cin}=i;
        #2;
      end
  end
  initial begin
    $monitor("sim time=%0t,a=%b,b=%b,cin=%b,sum=%b,carry=%b",$time,a,b,cin,sum,carry);
  end
endmodule 
