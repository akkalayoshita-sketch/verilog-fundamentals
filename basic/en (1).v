module en(a,b,c,d,x,y);
input a,b,c,d;
output x,y;
assign x=a|c;
assign y=b|d;
endmodule
