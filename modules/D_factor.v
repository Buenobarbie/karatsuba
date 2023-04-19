/* fator D do karatsuba
   recebe fator X em 8 bits
   retorna fator D em 5 bits
*/
module D_factor (X, D);
	input [7:0] X; // fator X da multiplicação (8 bits)
	output [4:0] D; // fator D (5 bits)

	// executa a soma Xhigh + Xlow 
    assign D = X[7:4] + X[3:0];

endmodule
