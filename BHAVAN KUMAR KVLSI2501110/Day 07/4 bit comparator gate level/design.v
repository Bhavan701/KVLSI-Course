// Code your design here
module magnitude_comparator(gt,le,e,a,b);//gt=greater than,le=lessthan,e=eual,a=A,b=B
input [3:0]a;
input [3:0]b;
output gt,le,e;//gt=A_gt_B,le=A_lt_B,e=A_eq_B
  wire w[7:0],x[3:0],y[8:0];
  not n1(w[7],a[3]);//a3'
  not n2(w[6],a[2]);//a2'
  not n3(w[5],a[1]);//a1'
  not n4(w[4],a[0]);//a0'
  not n5(w[3],b[3]);//b3'
  not n6(w[2],b[2]);//b2'
  not n7(w[1],b[1]);//b1'
  not n8(w[0],b[0]);//b0'
  xnor X1(x[3],a[3],b[3]);
  xnor X2(x[2],a[2],b[2]);
  xnor X3(x[1],a[1],b[1]);
  xnor X4(x[0],a[0],b[0]);
  and A1(y[8],a[3],w[3]);
  and A2(y[7],a[2],w[2],x[3]);
  and A3(y[6],a[1],w[1],x[3],x[2]);
  and A4(y[5],a[0],w[0],x[3],x[2],x[1]);
  or O1(gt,y[8],y[7],y[6],y[5]);//greater than  
  and A5(y[4],w[7],b[3]);
  and A6(y[3],w[6],b[2],x[3]);
  and A7(y[2],w[5],b[1],x[3],x[2]);
  and A8(y[1],w[4],b[0],x[3],x[2],x[1]);
  or O2(le,y[4],y[3],y[2],y[1]);//less than 
and A9(e,x[3],x[2],x[1],x[0]);//equal
endmodule 