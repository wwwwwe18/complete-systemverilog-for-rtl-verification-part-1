//*****************************************************
// Project		: Assignment 8 - A52
// File			: section5_a52
// Editor		: Wenmei Wang
// Date			: 04/10/2024
// Description	: Assignment 8 - A52
//*****************************************************

module tb;

	int unsigned ain = 2;
	int unsigned bin = 4;
	int unsigned exp = 6;
	int unsigned res = 0;

	function int unsigned multi();
	
		return ain * bin;
	
	endfunction

	function void comp_display();
	
		if(res == exp)
			$display("Test Passed");
		else
			$display("Test Failed");
	
	endfunction
	
	initial begin
	
		res = multi();
		comp_display();
	
	end

endmodule