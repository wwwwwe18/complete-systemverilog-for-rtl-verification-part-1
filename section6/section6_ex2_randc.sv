//*****************************************************
// Project		: rand vs. randc
// File			: section6_ex2_randc
// Editor		: Wenmei Wang
// Date			: 06/10/2024
// Description	: rand vs. randc
//*****************************************************

// Transaction
// Generator

class generator;

	randc	bit	[3:0]	a, b;	// rand or randc
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