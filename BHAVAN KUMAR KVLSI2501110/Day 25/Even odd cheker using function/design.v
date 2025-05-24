// Code your design here
module even(N, y);
  input [31:0] N;
  output y;
  assign y = eve(N);
  function eve (input [31:0]N);
    begin
      if (N%2== 0)
        eve = 1;
      else 
        eve = 0;
    end
  endfunction
endmodule
