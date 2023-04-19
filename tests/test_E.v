`timescale 1ns/1ps

/* módulo de teste para o fator E */
module E_test;
	reg [7:0] Y;
	wire [4:0] E;
	
	// instância da Unit Under Test
	E_factor uut (
		.Y(Y),
        .E(E)
	);
	
	// testa o resultado de D para valores distintos de Y
	initial begin
        Y = 8'b01100101;
        $monitor ("Y = %B; D = %B", Y, E);
        #100;

		Y = 8'b11100000;
        $monitor ("Y = %B; D = %B", Y, E);
        #100;

		Y = 8'b10100111;
        $monitor ("Y = %B; D = %B", Y, E);
        #100;
    end
	
endmodule
