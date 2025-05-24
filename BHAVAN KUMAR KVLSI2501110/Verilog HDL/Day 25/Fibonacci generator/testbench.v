
module fibonacci_generator;
  integer i;
  reg [5:0]fib[10:0];
  initial begin
    fib[0] = 0;
    fib[1] = 1;
    for (i = 2; i < 11; i = i + 1)
      fib[i] = fib[i-1] + fib[i-2];
    for (i = 0; i < 11; i = i + 1)
      $display("fib[%0d] = %0d", i, fib[i]);
  end
endmodule