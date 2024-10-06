//*****************************************************
// Project		: Copying object
// File			: section5_ex16_copy_object
// Editor		: Wenmei Wang
// Date			: 06/10/2024
// Description	: Copying object
//*****************************************************

class first;

	int data;

endclass

module tb;

	first f1;
	first p1;
	
	initial begin
	
		f1 = new();		// 1. Constructor
		f1.data = 24;	// 2. Processing
		
		p1 = new f1;	// 3. Copying data from f1 to p1
		
		$display("Value of data member : %0d", p1.data);	// 4. Processing
	
		p1.data = 12;
		$display("Value of data member : %0d", f1.data);
	end

endmodule