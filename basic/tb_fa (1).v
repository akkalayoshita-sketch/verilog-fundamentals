`include "fa.v"

module tb_fa;
	reg a_tb,b_tb,c_tb;
	wire carry_tb,sum_tb;

	fa dutu(.a(a_tb), .b(b_tb), .c(c_tb), .carry(carry_tb), .sum(sum_tb)); 

	initial
		begin
		a_tb=1'b0; b_tb=1'b0; c_tb=1'b0;
		#5;
		$display("a=%0b\t b=%0b\t c=%0b\t carry=%0b\t sum=%0b",a_tb,b_tb,c_tb,carry_tb,sum_tb);
		a_tb=1'b0; b_tb=1'b0;c_tb=1'b1;
		#5;
		$display("a=%0b\t b=%0b\t c=%0b\t carry=%0b\t sum=%0b",a_tb,b_tb,c_tb,carry_tb,sum_tb);
		a_tb=1'b0; b_tb=1'b1;c_tb=1'b0;
		#5;
		$display("a=%0b\t b=%0b\t c=%0b\t carry=%b\t sum=%0b",a_tb,b_tb,c_tb,carry_tb,sum_tb);
		a_tb=1'b0; b_tb=1'b1;c_tb=1'b1;
		#5;
		$display("a=%0b\t b=%0b\t c=%0b\t carry=%b\t sum=%0b",a_tb,b_tb,c_tb,carry_tb,sum_tb);
		a_tb=1'b1; b_tb=1'b0; c_tb=1'b0;
		#5;
		$display("a=%0b\t b=%0b\t c=%0b\t carry=%0b\t sum=%0b",a_tb,b_tb,c_tb,carry_tb,sum_tb);
		a_tb=1'b1; b_tb=1'b0; c_tb=1'b1;
		#5;
		$display("a=%0b\t b=%0b\t c=%0b\t carry=%0b\t sum=%0b",a_tb,b_tb,c_tb,carry_tb,sum_tb);
		a_tb=1'b1; b_tb=1'b1; c_tb=1'b0;
		#5;
		$display("a=%0b\t b=%0b\t c=%0b\t carry=%0b\t sum=%0b",a_tb,b_tb,c_tb,carry_tb,sum_tb);
		a_tb=1'b1; b_tb=1'b1; c_tb=1'b1;
		#5;
		$display("a=%0b\t b=%0b\t c=%0b\t carry=%0b\t sum=%0b",a_tb,b_tb,c_tb,carry_tb,sum_tb);

		#100;
		$finish;
		end

		initial
		begin
		$fsdbDumpfile("fa.fsdb");
		$fsdbDumpvars(0,tb_fa);
		end


endmodule

