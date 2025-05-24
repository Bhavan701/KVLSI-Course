// Code your testbench here
// or browse Examples
module compliment2_3bit_test;
  reg [2:0]a;
  wire [2:0]f;
  compliment2_3bit dut(f,a);
  initial begin
    {a}={3'd0};
    #5  {a}={3'd1};
    #5  {a}={3'd2};
    #5  {a}={3'd3};
    #5  {a}={3'd4};
    #5  {a}={3'd5};
    #5  {a}={3'd6};
    #5  {a}={3'd7};
  end 
  initial begin 
    $monitor("sim time=%0t,a=%b,f=%b",$time,a,f);
    $dumpfile("dump.vcd");
    $dumpvars(1,compliment2_3bit_test);
  end 
endmodule 