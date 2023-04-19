/* módulo karatsuba
   recebe inteiros X e Y (8 bits) e retorna o produto Z = X*Y (16 bits)
*/
module karatsuba(X, Y, reset, Z);
    input [7:0] X; // fator X da multiplicação (8 bits)
    input [7:0] Y; // fator X da multiplicação (8 bits)
	input reset;
    output reg [15:0] Z; // produto Z (16 bits)
    
	wire [9:0] A;
    wire [9:0] B; // fator B do karatsuba
    wire [4:0] D; // fator D do karatsuba
    wire [4:0] E; // fator E do karatsuba
	wire [9:0] DE;

	reg [9:0] A_fact; // fator A do karatsuba
	reg [9:0] B_fact; // fator A do karatsuba
	reg [4:0] E_fact; // fator A do karatsuba
	reg [4:0] D_fact; // fator A do karatsuba
	reg [9:0] DE_prod; // fator A do karatsuba

	wire [9:0] DxE = {D_fact, E_fact};


	A_factor A_factor (.X(X), .Y(Y), .A(A));
	B_factor B_factor (.X(X), .Y(Y), .B(B));
	E_factor E_factor (.Y(Y), .E(E));
	D_factor D_factor (.X(X), .D(D));
	ROM DE_calc (.addr(DxE), .data(DE));

    // parametros de estado
    parameter [2:0] s0 = 3'b000, s1 = 3'b001, s2 = 3'b010, s3 = 3'b011, s4 = 3'b100;
    reg[2:0] state, next_state; // variaveis de estado 

    wire clock; // clock
	clock_gen clk (clock);

	always @(posedge clock)
	begin
		if (reset) state <= s0;
		else state <= next_state;
	end

    always@(state) 
	begin
		state <= next_state; // mudanca de estados 
		// proximos estados
		case(state)
			s0: next_state = s1; 
			s1: next_state = s2;
			s2: next_state = s3; 
			s3: next_state = s4; 
			s4: next_state = s0; 
			default: next_state = s0;
		endcase
	end
    
    always@(state) begin
    	case(state)
            s0: $display("estado de IDLE");
    		s1: A_fact <= A;
    		s2: begin
				B_fact <= B;
				E_fact <= E;
				D_fact <= D;
			end
    		s3: DE_prod = DE;
 			s4: assign  Z = 2'b00;
			default: next_state <= s0;
	    endcase
    end
endmodule