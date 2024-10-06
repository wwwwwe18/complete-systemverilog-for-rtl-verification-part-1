//*****************************************************
// Project		: Scope of data member
// File			: section5_ex15_data_member
// Editor		: Wenmei Wang
// Date			: 06/10/2024
// Description	: Scope of data member
//*****************************************************

class first;

	local int data = 34;
	
	task set(input int data);
	
		this.data = data;
	
	endtask
	
	function int get();
	
		return data;
	
	endfunction
	
	task display();
	
		$display("Value of data : %0d", data);
	
	endtask

endclass

class second;

	first f1;
	
	function new();
	
		f1 = new();
	
	endfunction

endclass

module tb;

	second s;
	
	initial begin
	
		s = new();
		
		s.f1.set(123);
		$display("Value of data : %0d", s.f1.get());
	
	end

endmodule