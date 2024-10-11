//*****************************************************
// Project		: Working with multiple stimuli
// File			: section6_ex5_multi_stimuli
// Editor		: Wenmei Wang
// Date			: 07/10/2024
// Description	: Working with multiple stimuli
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
	
		for(i = 0; i < 10; i++) begin
			
			g = new();
			g.randomize();
			$display("Value of a : %0d and b : %0d", g.a, g.b);
			#10;
		
		end
	
	end

endmodule