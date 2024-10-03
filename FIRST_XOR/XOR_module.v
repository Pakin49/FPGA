`timescale 1ns/100ps

module my_xor (output a_xor_b, input a, input b);
	wire x, y, notA, notB;
	not(notA,a);
	not(notB,b);
	and(x,a,notB);
	and(y,b,notA);
	or(a_xor_b,x,y);
endmodule