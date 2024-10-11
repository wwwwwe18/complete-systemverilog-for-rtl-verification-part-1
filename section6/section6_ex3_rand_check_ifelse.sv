//*****************************************************
// Project		: Checking randomisation with IF ELSE
// File			: section6_ex3_rand_check_ifelse
// Editor		: Wenmei Wang
// Date			: 06/10/2024
// Description	: Checking randomisation with IF ELSE
//*****************************************************

// Transaction
// Generator

class generator;

	randc	bit	[3:0]	a, b;	// rand or randc
			bit	[3:0]	y;
			
	constraint	data {a > 15;}

endclass

module tb;

	generator g;
	int i = 0;
	
	initial begin
	
		g = new();
		
		for(i = 0; i < 10; i++) begin
		
			if(!g.randomize()) begin
			
				$display("Randomization failed at %0t", $time);
				$finish();
			
			end
			
			$display("Value of a : %0d and b : %0d", g.a, g.b);
			#10;
		
		end
	
	end

endmodule