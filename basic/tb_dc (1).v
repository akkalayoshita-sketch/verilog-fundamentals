`include "dc.v"
module tb_dc;
reg a_tb,b_tb;
wire c_tb,d_tb,e_tb,f_tb;
//connecting desing and testbench
dc dut(.a(a_tb), .b(b_tb), .c(c_tb), .d(d_tb), .e(e_tb), .f(f_tb));
initial
begin
$display("###############################");
repeat(10)begin
{a_tb,b_tb}=$random();
#5;
$display("a=%0d \tb=%0d \tc=%0d \td=%0d \te=%0d \tf=%0d",a_tb,b_tb,c_tb,d_tb,e_tb,f_tb);
end
$display("###############################");
end
initial
begin
$fsdbDumpfile("dc.fsdb");
$fsdbDumpvars(0,tb_dc);
end
endmodule
