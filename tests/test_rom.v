`timescale 1ns/1ps

/* módulo de teste para a rom */
module test_rom;
	reg [9:0] factors;
	wire [9:0] product;
	
	// instância da Unit Under Test
	ROM uut(
		.addr(factors),
		.data(product)
	);
	
	// testa os produtos X*Y para diversos valores de X e Y
	initial begin
		factors = 10'b0000100001;
		$monitor ("X = %B; Y = %B; X*Y = %B", factors[4:0], factors[9:5], product);
		#100;

		factors = 10'b0001100011;
		$monitor ("X = %B; Y = %B; X*Y = %B", factors[4:0], factors[9:5], product);
		#100;

		factors = 10'b0100101001;
		$monitor ("X = %B; Y = %B; X*Y = %B", factors[4:0], factors[9:5], product);
		#100;
	end
endmodule
