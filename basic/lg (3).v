module lg(a,b,c,d,e,f,g,h);
input a,b;
output c,d,e,f,g,h;
assign c=a&b;
assign d=a|b;
assign e=~(a&b);
assign f=~(a|b);
assign g=a^b;
assign h=~(a^b);
endmodule 
