`timescale 1ns/1ps

/* módulo de teste para o fator A */
module clock_gen_test;
	wire clk;
	
    // instância da Unit Under Test
	clock_gen uut (
		.clk(clk)
	);

    always @(posedge clk) begin
        $monitor ("clk = %B", clk);
    end
	
endmodule
