// Code your design here
module factorial(N,y);
  input [31:0]N;
  output [63:0]y;
  assign y=fact(N);
  function automatic [63:0]fact (input [31:0]n);
    begin
      if (n>=1)
        fact = n*fact(n-1);
      else 
        fact = 1;
    end 
  endfunction
endmodule 