`include "en.v"
module tb_en;
reg a_tb,b_tb,c_tb,d_tb;
wire x_tb,y_tb;
//connecting desing and testbench
en dut(.a(a_tb), .b(b_tb), .c(c_tb), .d(d_tb), .x(x_tb), .y(y_tb));
initial
begin
$display("###############################");
repeat(10)begin
{a_tb,b_tb,c_tb,d_tb}=$random();
#5;
$display("a=%0d \tb=%0d \tc=%0d \td=%0d \tx=%0d \ty=%0d",a_tb,b_tb,c_tb,d_tb,x_tb,y_tb);
end
$display("###############################");
end
initial
begin
$fsdbDumpfile("en.fsdb");
$fsdbDumpvars(0,tb_en);
end
endmodule
