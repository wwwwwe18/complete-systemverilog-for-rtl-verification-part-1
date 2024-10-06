//*****************************************************
// Project		: Assignment 12 - A56
// File			: section5_a56
// Editor		: Wenmei Wang
// Date			: 05/10/2024
// Description	: Assignment 12 - A56
//*****************************************************

class first;

	bit	[3:0]	a, b, c;
	bit	[5:0]	res;
	
	function new(input bit [3:0] a = 4'h0, input bit [3:0] b = 4'h0, input bit [3:0] c = 4'h0);
		
		this.a = a;
		this.b = b;
		this.c = c;
	
	endfunction
	
	task display();
	
		res = a + b + c;
		$display("a : %0d, b : %0d, c : %0d, res: %0d", a, b, c, res);
	
	endtask

endclass

module tb;

	first f1;
	
	initial begin
	
		f1 = new(.a(1), .b(2), .c(4));
		f1.display();
	
	end

endmodule