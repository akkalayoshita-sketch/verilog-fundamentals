`include "fullhalf.v"
module tb_fullhalf;
reg a_tb,b_tb,c_tb;
wire sum_tb,carry_tb;
//connecting desing and testbench
fullhalf dut(.a(a_tb), .b(b_tb), .c(c_tb), .sum(sum_tb), .carry(carry_tb));
initial
begin
$display("###############################");
repeat(10)begin
{a_tb,b_tb,c_tb}=$random();
#5;
$display("a=%0d \tb=%0d \tc=%0d \tsum=%0d \tcarry=%0d",a_tb,b_tb,c_tb,sum_tb,carry_tb);
end
$display("###############################");
end
initial
begin
$fsdbDumpfile("fullhalf.fsdb");
$fsdbDumpvars(0,tb_fullhalf);
end
endmodule
