//*****************************************************
// Project		: Extending class properties by inheritance
// File			: section5_ex20_inheritance
// Editor		: Wenmei Wang
// Date			: 06/10/2024
// Description	: Extending class properties by inheritance
//*****************************************************

class first;				// Parent class	

	int data = 12;
	
	function void display();
	
		$display("Value of data : %0d", data);
	
	endfunction

endclass

class second extends first;	// Child class

	int temp = 34;
	
	function void add();
	
		$display("Value after processing : %0d", temp+4);
	
	endfunction

endclass

module tb;

	second s;
	
	initial begin
	
		s = new();
		$display("Value of data : %0d", s.data);
		s.display();
		$display("Value of temp : %0d", s.temp);
		s.add();
		
	end

endmodule
