// Code your testbench here
// or browse Examples
primitive nor_gate (out, a, b);
  output out;
  input a, b;
  table
     1 ? : 0;
     ? 1 : 0;
     0 0 : 1;
  endtable
endprimitive
module tb;
  reg a, b;
  wire y;
  nor_gate_w dut(y, a, b);
initial begin
      a = 0; b = 1; 
  #10 a = 1; b =1'bx; 
  #10 a = 1'bx; b = 1; 
  #10 a = 1'bx; b = 0; 
 #10 a = 0; b = 0; 
  #20  $finish;
  end
  initial begin 
  $monitor("a = %b, b = %b, y = %b", a, b, y);
  end
endmodule
