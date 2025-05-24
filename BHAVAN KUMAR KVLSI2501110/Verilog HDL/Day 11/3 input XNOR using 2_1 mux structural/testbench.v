// Code your testbench here
// or browse Examples
module xnor3_test;
  reg a,b,c;
  wire y;
  integer i;
  xnor3 dut(a,b,c,y);
  initial begin
    for(integer i=0; i<8;i++)
      begin 
        {a,b,c}=i;
      #2;
      end
  end
  initial begin
    $monitor("sim time=%0t,a=%b,b=%b,c=%b,y=%b",$time,a,b,c,y);
    $dumpfile("dump.vcd");
    $dumpvars(0,a,b,c,y);
  end
endmodule 
      