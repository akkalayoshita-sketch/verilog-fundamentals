`include "comp.v"
module tb_comp;
reg a_tb,b_tb;
wire a_gt_b_tb,a_eq_b_tb,a_lt_b_tb;
//connecting desing and testbench
comp dut(.a(a_tb), .b(b_tb), .a_gt_b(a_gt_b_tb), .a_eq_b(a_eq_b_tb), .a_lt_b(a_lt_b_tb));
initial
begin
$display("###############################");
repeat(10)begin
{a_tb,b_tb}=$random();
#5;
$display("a=%0d \tb=%0d \ta_gt_b=%0d \ta_eq_b=%0d \ta_lt_b=%0d",a_tb,b_tb,a_gt_b_tb,a_eq_b_tb,a_lt_b_tb);
end
$display("###############################");
end
initial
begin
$fsdbDumpfile("comp.fsdb");
$fsdbDumpvars(0,tb_comp);
end
endmodule
