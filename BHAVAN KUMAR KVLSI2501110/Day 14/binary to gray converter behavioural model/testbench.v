// Code your testbench here
// or browse Examples
module binary4_gray_test;
  reg [2:0]b;
  wire [2:0]g;
  integer i;
  binary4_gray dut(g,b);
  initial begin 
    for (integer i=0;i<15;i++)
      begin
        b=i;
      #2;
      end
  end 
  initial begin 
    $monitor("sim time+%0t,b=%b,g=%b",$time,b,g);
    $dumpfile("dump.vcd");
    $dumpvars(1,binary4_gray_test);
  end 
endmodule

