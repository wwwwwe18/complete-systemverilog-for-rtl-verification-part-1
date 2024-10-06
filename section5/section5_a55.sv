//*****************************************************
// Project		: Assignment 11 - A55
// File			: section5_a55
// Editor		: Wenmei Wang
// Date			: 05/10/2024
// Description	: Assignment 11 - A55
//*****************************************************

class first;
		
	bit	[7:0]	a, b, c;
	
	function new(input bit [7:0] a = 8'h00, input bit [7:0] b = 8'h00, input bit [7:0] c = 8'h00);
		
		this.a = a;
		this.b = b;
		this.c = c;
	
	endfunction

endclass

module tb;

	first f1;
	
	initial begin
	
		f1 = new(.a(2), .b(4), .c(56));
		$display("a : %0d, b : %0d, c : %0d", f1.a, f1.b, f1.c);
	
	end

endmodule