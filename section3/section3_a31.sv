//*****************************************************
// Project		: Assignment 2 - A31
// File			: section3_a31
// Editor		: Wenmei Wang
// Date			: 21/09/2024
// Description	: Assignment 2 - A31
//*****************************************************

module tb();
	
	bit	[7:0]	a = 8'd12;
	bit	[7:0]	b = 8'd34;
	int			c = 67;
	int			d = 255;
	
	initial begin
		#12;
		$display("Value of a : %0d", a);
		$display("Value of b : %0d", b);
		$display("Value of c : %0d", c);
		$display("Value of d : %0d", d);
	end
	
endmodule