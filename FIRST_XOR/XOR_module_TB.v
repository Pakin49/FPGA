`timescale 1ns/100ps

module my_xor_TB();
	reg a,b;
	wire a_xor_b;
	my_xor XOR1(a_xor_b,a,b);

initial begin
	a = 0;
	b = 0;
	#10
	$display("a = %d, b = %d, xor = %d",a,b,a_xor_b);
	a = 0;
	b = 1;
	#10
	$display("a = %d, b = %d, xor = %d",a,b,a_xor_b);
	a = 1;
	b = 0;
	#10
	$display("a = %d, b = %d, xor = %d",a,b,a_xor_b);
	a = 1;
	b = 1;
	#10
	$display("a = %d, b = %d, xor = %d",a,b,a_xor_b);
	$finish;
	end
endmodule