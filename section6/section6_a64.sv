//*****************************************************
// Project		: Assignment 17 - A64
// File			: section6_a64
// Editor		: Wenmei Wang
// Date			: 11/10/2024
// Description	: Assignment 17 - A64
//*****************************************************

class generator;

	rand	bit	rst;
	rand	bit	wr;

	constraint	cntrl	{

		rst	dist	{0 :/ 30, 1 :/ 70};
		wr	dist	{0 :/ 50, 1 :/ 50};

	}

endclass

module tb;

	generator g;
	
	initial begin

		g = new();

		for(int i = 0; i < 20; i++) begin

			g.randomize();
			$display("rst : %0d, wr : %0d", g.rst, g.wr);
			#10;
			
		end

	end

endmodule