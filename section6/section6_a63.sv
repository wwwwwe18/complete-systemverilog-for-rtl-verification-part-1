//*****************************************************
// Project		: Assignment 16 - A63
// File			: section6_a63
// Editor		: Wenmei Wang
// Date			: 11/10/2024
// Description	: Assignment 16 - A63
//*****************************************************

class generator;

	rand	bit	[4:0]	a;
	rand	bit	[5:0]	b;

			int			min_a;
			int			max_a;
			int			min_b;
			int			max_b;

	function void pre_randomize(input int min_a, input int max_a, input int min_b, input int max_b);

		this.min_a = min_a;
		this.max_a = max_a;
		this.min_b = min_b;
		this.max_b = max_b;

	endfunction

	constraint	data	{
	
		a inside {[min_a:max_a]};
		b inside {[min_b:max_b]};
	
	}

	function void post_randomize();

		$display("a : %0d, b : %0d", a, b);

	endfunction

endclass

module tb;

	generator g;
	int i = 0;
	int cnt = 0;

	initial begin

		g = new();

		g.pre_randomize(0, 8, 0, 5);

		for(i = 0; i < 20; i++) begin

			if(!g.randomize()) begin

				cnt = cnt + 1;

			end

			#10;

		end

		$display("Randomization failed %0d times", cnt);

	end

endmodule