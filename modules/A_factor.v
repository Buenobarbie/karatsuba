/* fator A do karatsuba
   recebe os fatores de multiplicação X e Y em 8bits
   retorna o fator A em 10 bits
*/
module A_factor (X, Y, A);
	input [7:0] X; // fator X da multiplicação (8 bits)
	input [7:0] Y; // fator X da multiplicação (8 bits)
	output [9:0] A; // fator A do karatsuba, (10 bits)

	// acessa a memória rom para calcular Xlow*Ylow
	ROM rom1 ({1'b0, X[3:0], 1'b0, Y[3:0]}, A);

endmodule