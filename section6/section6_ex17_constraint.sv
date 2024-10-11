//*****************************************************
// Project		: Turn ON/OFF constraint
// File			: section6_ex17_constraint
// Editor		: Wenmei Wang
// Date			: 11/10/2024
// Description	: Turn ON/OFF constraint
//*****************************************************

class generator;

	randc	bit	[3:0]	a;
	rand	bit			wr;	// Write to mem
	rand	bit			oe;	// Output enable

	constraint	wr_c	{

		wr	dist	{0 := 50, 1 := 50};

	}

	constraint	oe_c	{

		oe	dist	{1 := 50, 0 := 50};

	}

	constraint	wr_oe_c	{

		(wr == 1) <-> (oe == 0);

	}

endclass

module tb;

	generator g;

	initial begin

		g = new();

		g.wr_oe_c.constraint_mode(0);	// 1 -> constraint is ON; 0 -> constraint is OFF

		$display("Constraint status oe_c : %0d", g.oe_c.constraint_mode());
		$display("Constraint status wr_oe_c : %0d", g.wr_oe_c.constraint_mode());

		for(int i = 0; i < 15; i++) begin

			assert(g.randomize()) else $display("Randomization Failed");
			$display("Value of wr : %0d and oe : %0d", g.wr, g.oe);

		end

	end

endmodule