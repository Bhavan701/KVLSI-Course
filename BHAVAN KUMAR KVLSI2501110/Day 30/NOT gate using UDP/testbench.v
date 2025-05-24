// Code your testbench here
// or browse Examples
primitive not_gate (out, a);
  output out;
  input a;
  table
     0 : 1;
     1 : 0;
  endtable
endprimitive
module tb;
  reg a;
  wire y;
not_gate_w dut(y, a);
initial begin
      a = 0;  
  #10 a = 1; 
  #10 a = 1'bx;
  #20  $finish;
  end
  initial begin 
    $monitor("a = %b, y = %b", a, y);
  end
endmodule


