//*****************************************************
// Project		: Demonstration of datatype 4
// File			: section3_ex4_datatype4
// Editor		: Wenmei Wang
// Date			: 18/09/2024
// Description	: Demonstration of datatype 4
//*****************************************************

module top(
	input	a,b,sel,	// If sel = 0, y = a; if sel = 1, y = b
	output	y
	);
	
	reg		temp;
	
	always @(*)
	begin
		if(sel == 1'b0)
			temp = a;
		else
			temp = b;
	end
	
	assign y = temp;
	
endmodule