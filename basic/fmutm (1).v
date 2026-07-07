module fmutm(a,b,c,d,s0,s1,y);
input a,b,c,d,s0,s1;
output y;
wire w1,w2;

assign w1=(~s0&a)|(s0&b);
assign w2=(~s0&c)|(s0&d);
assign y=(~s1&w1)|(s1&w2);
endmodule
