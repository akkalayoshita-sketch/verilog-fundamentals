module fullhalf(a,b,c,sum,carry);
input a,b,c;
output sum,carry;
wire s1,c1,c2;
assign s1=a^b;
assign c1=a&b;
assign sum=s1^c;
assign c2=s1&c;
assign carry=c1|c2;
endmodule 
