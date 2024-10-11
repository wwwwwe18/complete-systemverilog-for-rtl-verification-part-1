//*****************************************************
// Project		: Assignment 18 - A65
// File			: section6_a65
// Editor		: Wenmei Wang
// Date			: 11/10/2024
// Description	: Assignment 18 - A65
//*****************************************************

class generator;

	rand	bit	[3:0]	addr;
	rand	bit			wr;

	constraint	wr_c	{

		wr	dist	{0 := 50, 1 := 50};

	}

	constraint	wr_addr_c	{

		if(wr == 1) {

			addr	inside	{[0:7]};

		}
		else {

			addr	inside	{[8:15]};

		}

	}

endclass

module tb;

	generator g;

	initial begin

		g = new();

		for(int i = 0; i < 20; i++) begin

			assert(g.randomize()) else $display("Randomization Failed");
			$display("Value of wr : %0d and addr : %0d", g.wr, g.addr);

		end

	end

endmodule