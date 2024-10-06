//*****************************************************
// Project		: Understanding usage of super keyword
// File			: section5_ex22_super
// Editor		: Wenmei Wang
// Date			: 06/10/2024
// Description	: Understanding usage of super keyword
//*****************************************************

class first;				// Parent class

	int data;
	
	function new(input int data);
	
		this.data = data;
	
	endfunction

endclass

class second extends first;	// Child class

	int temp;
	
	function new(int data, int temp);
	
		super.new(data);
		this.temp = temp;
	
	endfunction

endclass

module tb;

	second s;
	
	initial begin
	
		s = new(67, 45);
		$display("Value of data : %0d and Temp : %0d", s.data, s.temp);
	
	end

endmodule