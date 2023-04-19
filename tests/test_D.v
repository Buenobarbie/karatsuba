`timescale 1ns/1ps

/* módulo de teste para o fator D */
module D_test;
	reg [7:0] X;
	wire [4:0] D;
	
	// instância da Unit Under Test
	D_factor uut (
		.X(X),
        .D(D)
	);
	
	// testa o resultado de D para valores distintos de X
	initial begin
        X = 8'b01100101;
        $monitor ("X = %B; D = %B", X, D);
        #100;

		X = 8'b10000110;
        $monitor ("X = %B; D = %B", X, D);
        #100;

		X = 8'b11110000;
        $monitor ("X = %B; D = %B", X, D);
        #100;
    end
	
endmodule
