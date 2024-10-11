//*****************************************************
// Project		: Assignment 14 - A61
// File			: section6_a61
// Editor		: Wenmei Wang
// Date			: 07/10/2024
// Description	: Assignment 14 - A61
//*****************************************************

class generator;

	rand	bit	[7:0]	x, y, z;

endclass

module tb;

	generator g;
	int i;

	initial begin

		for(i = 0; i < 20; i++) begin

			g = new();
			g.randomize();
			$display("x : %0d, y : %0d, z : %0d at time : %0t", g.x, g.y, g.z, $time);
			#20;

		end

	end

endmodule