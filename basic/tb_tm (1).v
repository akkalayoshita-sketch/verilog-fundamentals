`include "tm.v"
module tb_tm;
reg a_tb,b_tb,s_tb;
wire y_tb;
//connecting desing and testbench
tm dut(.a(a_tb), .b(b_tb), .s(s_tb), .y(y_tb));
initial
begin
$display("###############################");
repeat(10)begin
{a_tb,b_tb,s_tb}=$random();
#5;
$display("a=%0d \t b=%0d \t s=%0d \t y=%0d",a_tb,b_tb,s_tb,y_tb);
end
$display("###############################");
end
initial
begin
$fsdbDumpfile("tm.fsdb");
$fsdbDumpvars(0,tb_tm);
end
endmodule
