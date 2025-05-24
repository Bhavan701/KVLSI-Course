// Code your testbench here
// or browse Examples
module even;
  integer n=1;
initial 
    begin
  if (n%2==0)
    $display("the number %0d is even",n);
  else 
    $display("the number %0d is odd",n);
    end 
endmodule 