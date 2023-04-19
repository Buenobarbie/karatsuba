/* fator E do karatsuba
   recebe fator Y em 8 bits
   retorna fator E em 5 bits
*/
module E_factor (Y, E);
	input [7:0] Y; // fator Y (8 bits)
	output [4:0] E; // fator E (5 bits)

    // executa a soma Yhigh + Ylow
    assign E = Y[7:4] + Y[3:0];

endmodule
