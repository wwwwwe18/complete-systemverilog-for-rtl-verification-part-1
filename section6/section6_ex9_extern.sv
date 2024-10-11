//*****************************************************
// Project		: External function and constraint
// File			: section6_ex9_extern
// Editor		: Wenmei Wang
// Date			: 07/10/2024
// Description	: External function and constraint
//*****************************************************

// Transaction
// Generator

class generator;

	randc	bit	[3:0]	a, b;	// rand or randc
			bit	[3:0]	y;

	extern	constraint	data;

	extern	function void display();

endclass

constraint	generator::data {

	a inside {[0:3]};
	b inside {[12:15]};

};

function void generator::display();

	$display("Value of a : %0d and b : %0d", a, b);

endfunction

module tb;

	generator g;
	int i = 0;
	
	initial begin
	
		for(i = 0; i < 10; i++) begin
			
			g = new();
			assert(g.randomize()) else  $display("Randomization failed at %0t", $time);
			g.display();
			#10;
		
		end
	
	end

endmodule