// Code your testbench here
// or browse Examples
module magnitude_comparator_test;
  reg [3:0]a;
  reg [3:0]b;
  wire gt,le,e;
  magnitude_comparator dut(gt,le,e,a,b);
  initial begin
   {a,b}={4'd0,4'd0};
#5 {a,b}={4'd0,4'd1};
#5 {a,b}={4'd1,4'd0};
#5 {a,b}={4'd1,4'd1};
#5 {a,b}={4'd1,4'd2};
#5 {a,b}={4'd2,4'd1};
#5 {a,b}={4'd2,4'd2};
    end
    initial begin 
      $monitor("sim time=%0t,\ta[3]=%b,\ta[2]=%b,\ta[1]=%b,\ta[0]=%b,\tb[3]=%b,\tb[2]=%b,\tb[1]=%b,\tb[0]=%b,\tgt=%b,\tle=%b,\te=%b",$time,a[3],a[2],a[1],a[0],b[3],b[2],b[1],b[0],gt,le,e);
      $dumpfile("dump.vcd");
      $dumpvars(1,magnitude_comparator_test);
    end 
endmodule 
    