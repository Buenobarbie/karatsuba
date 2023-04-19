`timescale 1ns/100ps

/* módulo de teste para a rom */
module test_karatsuba;
	reg [7:0] X;
    reg [7:0] Y;
	reg reset;
	wire [15:0] Z;
	
	// instância da Unit Under Test
	karatsuba uut(
		.X(X),
		.Y(Y),
		.reset(reset),
        .Z(Z)
	);
	
	// testa os produtos X*Y para diversos valores de X e Y
	initial begin
		X = 8'b00010000;
        Y = 8'b00010000;
		reset = 1'b0;
		$monitor ("X = %D; Y = %D; X*Y = %D", X, Y, Z);
		#100;
	end
endmodule
