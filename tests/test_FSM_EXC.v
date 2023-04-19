`timescale 1ns/1ps

/* módulo de teste para a rom */
module test_FSM_EXC;
    reg E0;
    reg E1;
    reg E2;
    wire NEW_E0;
    wire NEW_E1;
    wire NEW_E2;
	
	// instância da Unit Under Test
	FSM_EXC uut(
        .E0(E0),
        .E1(E1),
        .E2(E2),
        .NEW_E0(NEW_E0),
        .NEW_E1(NEW_E1),
        .NEW_E2(NEW_E2)
	);
	
	// testa os produtos X*Y para diversos valores de X e Y
	initial begin
        // estado S0
        E0 = 1'b0; E1 = 1'b0; E2 = 1'b0;
		$monitor ("S0 = %B%B%B, S_NEW = %B%B%B", E0, E1, E2, NEW_E0, NEW_E1, NEW_E2);
		#100;

        E0 = 1'b0; E1 = 1'b0; E2 = 1'b1;
		$monitor ("S1 = %B%B%B, S_NEW = %B%B%B", E0, E1, E2, NEW_E0, NEW_E1, NEW_E2);
		#100;

        E0 = 1'b0; E1 = 1'b1; E2 = 1'b0;
		$monitor ("S2 = %B%B%B, S_NEW = %B%B%B", E0, E1, E2, NEW_E0, NEW_E1, NEW_E2);
		#100;

        E0 = 1'b0; E1 = 1'b0; E2 = 1'b1;
		$monitor ("S3 = %B%B%B, S_NEW = %B%B%B", E0, E1, E2, NEW_E0, NEW_E1, NEW_E2);
		#100;

        E0 = 1'b1; E1 = 1'b0; E2 = 1'b0;
		$monitor ("S4 = %B%B%B, S_NEW = %B%B%B", E0, E1, E2, NEW_E0, NEW_E1, NEW_E2);
		#100;

        E0 = 1'b1; E1 = 1'b0; E2 = 1'b1;
		$monitor ("S5 = %B%B%B, S_NEW = %B%B%B", E0, E1, E2, NEW_E0, NEW_E1, NEW_E2);
		#100;
	end
endmodule
