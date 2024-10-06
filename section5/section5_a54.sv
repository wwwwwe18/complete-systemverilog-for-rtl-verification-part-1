//*****************************************************
// Project		: Assignment 10 - A54
// File			: section5_a54
// Editor		: Wenmei Wang
// Date			: 05/10/2024
// Description	: Assignment 10 - A54
//*****************************************************

module tb;

	int res[32];

	function automatic void generate_value(ref int arr[32]);
	
		for(int i = 0; i < 32; i++) begin
		
			arr[i] = i * 8;
		
		end
	
	endfunction
	
	initial begin
	
		generate_value(res);
		
		for(int i = 0; i < 32; i++) begin
		
			$display("res[%0d] : %0d", i, res[i]);
		
		end
	
	end

endmodule