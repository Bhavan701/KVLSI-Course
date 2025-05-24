// Code your design here
module carry_4_adder(sum,carry,a,b,cin);
  input [3:0]a;
  input [3:0]b;
  input cin;
  output [3:0]sum;
  output carry;
  wire [3:0]c;
  wire [3:0]p;
  wire [3:0]g;
  assign g=a&b;
  assign p=a^b;
  assign c[0]=g[0]|(p[0]&cin);
  assign c[1]=g[1]|(p[1]&c[0]);
  assign c[2]=g[2]|(p[2]&c[1]);
  assign c[3]=g[3]|(p[3]&c[2]);
  assign sum[0]=p[0]^cin;
  assign sum[1]=p[1]^c[0];
  assign sum[2]=p[2]^c[1];
  assign sum[3]=p[3]^c[2]; 
  assign carry=c[3];
endmodule 
