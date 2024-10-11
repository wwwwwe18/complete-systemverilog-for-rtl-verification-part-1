//*****************************************************
// Project		: Working with randc
// File			: section6_ex11_randc
// Editor		: Wenmei Wang
// Date			: 11/10/2024
// Description	: Working with randc
//*****************************************************

// pre-randomize
// post-randomize

class generator;

	randc	bit	[3:0]	a, b;
			bit	[3:0]	y;
	
			int			min;
			int			max;

	function void pre_randomize(input int min, input int max);

		this.min = min;
		this.max = max;

	endfunction

	constraint	data	{

		a inside {[min:max]};
		b inside {[min:max]};
	
	}

	function void post_randomize();

		$display("Value of a : %0d and b : %0d", a, b);

	endfunction

endclass

module tb;

	generator g;
	int i = 0;
	
	initial begin

		g = new();

		$display("SPACE 1");
		g.pre_randomize(3, 12);
	
		for(i = 0; i < 6; i++) begin
			
			g.randomize();
			#10;
		
		end

		$display("SPACE 2");
		g.pre_randomize(3, 12);

		for(i = 0; i < 6; i++) begin
			
			g.randomize();
			#10;
		
		end
	
	end

endmodule