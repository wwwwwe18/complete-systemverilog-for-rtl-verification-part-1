//*****************************************************
// Project		: Using function
// File			: section5_ex4_func
// Editor		: Wenmei Wang
// Date			: 04/10/2024
// Description	: Using function
//*****************************************************

module tb;

	bit [4:0] res = 0;
	bit [3:0] ain = 4'b0100;
	bit [3:0] bin = 4'b0010;

	function bit [4:0] add();
		
		return ain + bin;
		
	endfunction
	
	function void display_ain_bin();

		$display("Value of ain : %0d and bin : %d", ain, bin);
	
	endfunction
	
	initial begin
	
		res = add();
		display_ain_bin();
	
	end

endmodule