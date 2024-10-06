//*****************************************************
// Project		: Fundamentals of class 2
// File			: section5_ex2_class2
// Editor		: Wenmei Wang
// Date			: 04/10/2024
// Description	: Fundamentals of class 2
//*****************************************************

class first;

	reg	[2:0]	data1;
	reg	[1:0]	data2;

endclass

module tb;

	first f;
	
	initial begin
		f = new();
		#1;
		$display("Value of data1 : %0d and data2 : %0d", f.data1, f.data2);
	end
	
endmodule