// Code your design here
module half_adder (a,b,s,cout);
  input a,b;
  output reg s,cout;
  always @(a,b)
  begin
    {cout,s}=a+b;//s=a^b;
                 //cout=a&b;
  end
endmodule 