`timescale 1ns/1ps

/* módulo de teste para o fator B */
module B_test;
	reg [7:0] X;
    reg [7:0] Y;
	wire [9:0] B;
	
    // instância da Unit Under Test
	B_factor uut (
		.X(X),
		.Y(Y),
        .B(B)
	);
	
    // testa o resultado de B para valores diversos de X e Y
	initial begin
        X = 8'b01100000;
        Y = 8'b00000000;
        $monitor ("X = %B; Y = %B; B = %B", X, Y, B);
        #100;

        X = 8'b11100101;
        Y = 8'b01000001;
        $monitor ("X = %B; Y = %B; B = %B", X, Y, B);
        #100;

        X = 8'b00100000;
        Y = 8'b01000000;
        $monitor ("X = %B; Y = %B; B = %B", X, Y, B);
        #100;
    end
	
endmodule
