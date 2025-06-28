module cnu#(parameter width=4*16,depth=4)(beta_in,alpha_out,product_sign,min_index,min1,min2);
input signed [width-1:0]beta_in;
output reg signed [width-1:0]alpha_out;
reg signed [(width/depth)-1:0]beta[0:depth-1];
reg signed [(width/depth)-1:0]alpha[0:depth-1];
reg sign_bit[0:depth-1];
output reg product_sign;
reg signed [(width/depth)-1:0]absolute_value[0:depth-1];
output reg [$clog2(depth)-1:0]min_index;
output reg [(width/depth)-1:0]min1;
output reg [(width/depth)-1:0]min2;
integer i;
always @(*)
begin
for(i=0;i<depth;i=i+1)
begin
beta[i]=beta_in[i*(width/depth)+:(width/depth)];
end 
product_sign=0;
for (i=0;i<depth;i=i+1)
begin
absolute_value[i]=(beta[i]<0)?-beta[i]:beta[i];
sign_bit[i]=(beta[i]<0)?1'b1:1'b0;
product_sign=sign_bit[i]^product_sign;
end 
min1={(width/depth){1'b1}};
min2=0;
min_index=0;
for(i=0;i<depth;i=i+1)
begin
if (absolute_value[i]<min1)
begin
min2=min1;
min1=absolute_value[i];
min_index=i;
end
else if (absolute_value[i]<min2)
min2=absolute_value[i];
end 
for (i=0;i<depth;i=i+1)
begin
if(min_index==i)
alpha[i]=(product_sign)?-min2:min2;
else 
alpha[i]=(product_sign)?-min1:min1;
end 
alpha_out=0;
for(i=0;i<depth;i=i+1)
begin
alpha_out[i*(width/depth)+:(width/depth)]=alpha[i];
end 
end 
endmodule 
