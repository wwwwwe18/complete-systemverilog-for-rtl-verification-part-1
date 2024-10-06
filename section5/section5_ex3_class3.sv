//*****************************************************
// Project		: Fundamentals of class 3
// File			: section5_ex3_class3
// Editor		: Wenmei Wang
// Date			: 04/10/2024
// Description	: Fundamentals of class 3
//*****************************************************

class first;

	reg	[2:0]	data1;
	reg	[1:0]	data2;

endclass

module tb;

	first f;
	
	initial begin
		f = new();
		f.data1 = 3'b010;
		f.data2 = 2'b10;
		f = null;
		#1;
		$display("Value of data1 : %0d and data2 : %0d", f.data1, f.data2);
	end
	
endmodule