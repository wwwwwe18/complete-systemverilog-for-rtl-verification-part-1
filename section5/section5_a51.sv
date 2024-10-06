//*****************************************************
// Project		: Assignment 7 - A51
// File			: section5_a51
// Editor		: Wenmei Wang
// Date			: 04/10/2024
// Description	: Assignment 7 - A51
//*****************************************************

class first;
	
	int unsigned data1;
	int unsigned data2;
	int unsigned data3;
	
endclass

module tb;

	first f;

	initial begin
		f = new();
		f.data1 = 45;
		f.data2 = 78;
		f.data3 = 90;
		
		#1;
		$display("data1 : %0d, data2 : %0d; data3 : %0d", f.data1, f.data2, f.data3);
	end
	
endmodule