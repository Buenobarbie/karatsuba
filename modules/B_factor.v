/* fator B do karatsuba
   recebe fatores X e Y em 8 bits
   retorna fator B em 10 bits
*/
module B_factor (X, Y, B);
	input [7:0] X; // fator X da multiplicação (8 bits)
	input [7:0] Y; // fator Y da multiplicação (8 bits)
	output [9:0] B; // fator B do karatsuba (10 bits)

	// acessa a memória rom para calcular Xhigh*Yhigh
	ROM rom2 ({1'b0, X[7:4], 1'b0, Y[7:4]}, B);

endmodule
