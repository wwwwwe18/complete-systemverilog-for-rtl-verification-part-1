//*****************************************************
// Project		: Polymorphism
// File			: section5_ex21_polymorphism
// Editor		: Wenmei Wang
// Date			: 06/10/2024
// Description	: Polymorphism
//*****************************************************

class first;				// Parent class	

	int data = 12;
	
	virtual function void display();
	
		$display("FIRST : Value of data : %0d", data);
	
	endfunction

endclass

class second extends first;	// Child class

	int temp = 34;
	
	function void add();
	
		$display("SECOND : Value after processing : %0d", temp+4);
	
	endfunction
	
	function void display();
	
		$display("SECOND : Value of data : %0d", data);
	
	endfunction

endclass

module tb;

	first f;
	second s;
	
	initial begin
	
		f = new();
		s = new();
		
		f = s;
		f.display();
		
	end

endmodule
