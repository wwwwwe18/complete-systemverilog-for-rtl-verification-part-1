//*****************************************************
// Project		: Implication operator
// File			: section6_ex14_implication
// Editor		: Wenmei Wang
// Date			: 11/10/2024
// Description	: Implication operator
//*****************************************************

class generator;

	randc	bit	[3:0]	a;
	rand	bit			ce;
	rand	bit			rst;

	constraint	control_rst	{

		rst	dist	{0 := 80, 1 := 20};

	}

	constraint	control_ce	{

		ce	dist	{1 := 80, 0 := 20};

	}

	constraint	control_rst_ce	{

		(rst == 0) -> (ce == 1);

	}

endclass

module tb;

	generator g;

	initial begin

		g = new();

		for(int i = 0; i < 10; i++) begin

			assert(g.randomize()) else $display("Randomization Failed");
			$display("Value of rst : %0d and ce : %0d", g.rst, g.ce);

		end

	end

endmodule