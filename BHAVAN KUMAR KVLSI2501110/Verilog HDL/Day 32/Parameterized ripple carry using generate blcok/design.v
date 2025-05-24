// Code your design here
module fa(a,b,cin,sum,carry);
  input a,b,cin;
  output sum,carry;
  assign sum=a^b^cin;
  assign carry=(a&b)|(b&cin)|(cin&a);
endmodule 

module ripple_carry#(parameter n=4)(a,b,cin,sum,carry);
  input [n-1:0]a,b;
  input cin;
  output [n-1:0]sum;
  output carry;
  wire [n:0]c;
  assign c[0]=cin;
  assign carry=c[n];  
  genvar i;
  generate 
    for(i=0;i<n;i=i+1)
      begin:ripple
        fa f1(a[i],b[i],c[i],sum[i],c[i+1]);
      end
  endgenerate 
endmodule   