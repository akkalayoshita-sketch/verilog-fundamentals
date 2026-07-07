`include "fmutm.v"
module tb_fmutm;
reg a_tb,b_tb,c_tb,d_tb,s0_tb,s1_tb;
wire y_tb;
//connecting desing and testbench
fmutm dut(.a(a_tb), .b(b_tb), .c(c_tb), .d(d_tb), .s0(s0_tb), .s1(s1_tb), .y(y_tb));
initial
begin
$display("###############################");
repeat(10)begin
{a_tb,b_tb,c_tb,d_tb,s0_tb,s1_tb}=$random();
#5;
$display("a=%0d \tb=%0d \tc=%0d \td=%0d \ts0=%0d \ts1=%0d \ty=%0d",a_tb,b_tb,c_tb,d_tb,s0_tb,s1_tb,y_tb);
end
$display("###############################");
end
initial
begin
$fsdbDumpfile("fmutm.fsdb");
$fsdbDumpvars(0,tb_fmutm);
end
endmodule
