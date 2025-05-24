module fibonacci_generator #(parameter N = 15);
  integer i;
  integer y;
  function  integer fib(input integer n);
    integer a, b, temp, j;
    begin
      a = 0;
      b = 1;
      if (n == 0)
        fib = 0;
      else if (n == 1)
        fib = 1;
      else 
        begin
          for (j = 2; j <= n; j = j + 1)
            begin
              temp=a+b;
              a=b;
              b=temp;
            end
          fib=b;
        end
    end
  endfunction
  initial begin
    for (i=0;i<N;i=i+1)
      begin
        y = fib(i);
        $display("Fibonacci[%0d]=%0d",i,y);
      end
  end
endmodule