`include"cnu_design.v"
module test;
parameter width=64;
parameter depth=4;
localparam p=$clog2(depth);
localparam width2=width/depth; 
reg signed [width-1:0]beta_in;
wire signed [width-1:0]alpha_out;
wire product_sign;
wire [p-1:0]min_index;
wire [width2-1:0]min1;
wire [width2-1:0]min2;
reg signed [width2-1:0]beta[0:depth-1];
reg signed [width2-1:0]alpha[0:depth-1];
integer i;
cnu dut(.beta_in(beta_in),.alpha_out(alpha_out),.product_sign(product_sign),.min_index(min_index),.min1(min1),.min2(min2));
initial begin
for(i=0;i<depth;i=i+1)
begin
beta[i]=$random;
beta_in[i*(width2)+:(width2)]=beta[i];
end 
#10
for(i=0;i<depth;i=i+1)
begin
alpha[i]=alpha_out[i*(width2)+:(width2)];
$display("beta[%0d]=%0d,alpha[%0d]=%0d",i,beta[i],i,alpha[i]);
end 
$display("product_sign=%0b,min_index=%0d,min1=%0d,min2=%0d",product_sign,min_index,min1,min2);
end 
endmodule 
