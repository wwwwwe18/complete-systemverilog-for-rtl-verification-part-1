//*****************************************************
// Project		: Custom method
// File			: section5_ex17_custom_method
// Editor		: Wenmei Wang
// Date			: 06/10/2024
// Description	: Custom method
//*****************************************************

class first;

	int			data = 34;
	bit	[7:0]	temp = 8'h11;
	
	function first copy();
	
		copy = new();
		copy.data = data;
		copy.temp = temp;
	
	endfunction

endclass

module tb;

	first f1;
	first f2;
	
	initial begin
	
		f1 = new();
		f2 = new();
		
		f2 = f1.copy;
		$display("Data = %0d and Temp = %0x", f2.data, f2.temp);
	
	end
	
	/*
	initial begin
	
		f1 = new();							// 1. Constructor
		f1.data = 45;						// 2. Processing
		
		f2 = new f1;						// 3. Copying data from f1 to f2
		f2.data = 56;
		
		$display("f1.data = %0d", f1.data);
		$display("f2.data = %0d", f2.data);	// 4. Processing
	
	end
	*/

endmodule