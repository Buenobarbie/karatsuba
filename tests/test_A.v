`timescale 1ns/1ps

/* módulo de teste para o fator A */
module A_test;
	reg [7:0] X;
    reg [7:0] Y;
	wire [9:0] A;
	
    // instância da Unit Under Test
	A_factor uut (
		.X(X),
		.Y(Y),
        .A(A)
	);
	
    // testa o resultado de A para valores diversos de X e Y
	initial begin
        X = 8'b00000000;
        Y = 8'b00000000;
        $monitor ("X = %B; Y = %B; A = %B", X, Y, A);
        #100;

        X = 8'b01100101;
        Y = 8'b00000101;
        $monitor ("X = %B; Y = %B; A = %B", X, Y, A);
        #100;

        X = 8'b00000001;
        Y = 8'b00000101;
        $monitor ("X = %B; Y = %B; A = %B", X, Y, A);
        #100;
    end
	
endmodule
