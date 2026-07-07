`include "lg.v"
module tb_lg;
reg a_tb,b_tb;
wire c_tb,d_tb,e_tb,f_tb,g_tb,h_tb;
//connecting desing and testbench
lg dut(.a(a_tb), .b(b_tb), .c(c_tb), .d(d_tb), .e(e_tb), .f(f_tb), .g(g_tb), .h(h_tb));
initial
begin
$display("###############################");
repeat(10)begin
{a_tb,b_tb}=$random();
#5;
$display("a=%0d \tb=%0d \tc=%0d \td=%0d \te=%0d \tf=%0d \tg=%0d \th=%0d",a_tb,b_tb,c_tb,d_tb,e_tb,f_tb,g_tb,h_tb);
end
$display("###############################");
end
initial
begin
$fsdbDumpfile("lg.fsdb");
$fsdbDumpvars(0,tb_lg);
end
endmodule

