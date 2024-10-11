//*****************************************************
// Project		: IF ELSE operator
// File			: section6_ex16_ifelse
// Editor		: Wenmei Wang
// Date			: 11/10/2024
// Description	: IF ELSE operator
//*****************************************************

class generator;

	randc	bit	[3:0]	raddr, waddr;
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

	constraint	write_read	{

		if(wr == 1) {
	
			waddr	inside	{[11:15]};
			raddr = 0;
		
		}
		else {

			waddr = 0;
			raddr	inside	{[11:15]};

		}

	}

endclass

module tb;

	generator g;

	initial begin

		g = new();

		for(int i = 0; i < 10; i++) begin

			assert(g.randomize()) else $display("Randomization Failed");
			$display("Value of wr : %0d and oe : %0d", g.wr, g.oe);

		end

	end

endmodule