//*****************************************************
// Project		: User defined constructor
// File			: section5_ex9_constructor
// Editor		: Wenmei Wang
// Date			: 05/10/2024
// Description	: User defined constructor
//*****************************************************

class first;

	int data;
	
	function new(input int datain = 0);
	
		data = datain;
	
	endfunction

endclass

module tb;

	first f1;
	
	initial begin
	
		f1 = new();
		$display("Data : %0d", f1.data);
	
	end

endmodule