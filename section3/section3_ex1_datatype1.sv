//*****************************************************
// Project		: Demonstration of datatype 1
// File			: section3_ex1_datatype1
// Editor		: Wenmei Wang
// Date			: 18/09/2024
// Description	: Demonstration of datatype 1
//*****************************************************

module tb();
	
	bit			a = 0;
	
	// Variable: 2-state -> 0, 4-state -> X
	
	// Fixed
	// Signed
	byte		b = 0;	
	shortint	c = 0;
	int			d = 0;
	longint		e = 0;
	// Unsigned
	bit	[7:0]	f = 8'b0000_0000;
	bit	[15:0]	g = 16'h0000;
	
	// Floating
	real h = 0;
	
	initial begin
		a = 1'b0;
	end
	
endmodule