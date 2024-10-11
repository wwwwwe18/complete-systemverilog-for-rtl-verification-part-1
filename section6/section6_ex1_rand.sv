//*****************************************************
// Project		: Generating random values with rand
// File			: section6_ex1_rand
// Editor		: Wenmei Wang
// Date			: 06/10/2024
// Description	: Generating random values with rand
//*****************************************************

// Transaction
// Generator

class generator;

	rand	bit	[3:0]	a, b;	// rand or randc
			bit	[3:0]	y;

endclass

module tb;

	generator g;
	int i = 0;
	
	initial begin
	
		g = new();
		
		for(i = 0; i < 10; i++) begin
		
			g.randomize();
			$display("Value of a : %0d and b : %0d", g.a, g.b);
			#10;
		
		end
	
	end

endmodule