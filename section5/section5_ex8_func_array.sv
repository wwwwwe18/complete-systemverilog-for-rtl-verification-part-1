//*****************************************************
// Project		: Using array in function
// File			: section5_ex8_func_array
// Editor		: Wenmei Wang
// Date			: 05/10/2024
// Description	: Using array in function
//*****************************************************

module tb;

	bit [3:0] res[16];

	function automatic void init_arr(ref bit [3:0] a[16]);
	
		for(int i = 0; i <= 15; i++) begin
		
			a[i] = i;
		
		end
	
	endfunction
	
	initial begin
	
		init_arr(res);
		
		for(int i = 0; i <= 15; i++) begin
		
			$display("res[%0d] : %0d", i, res[i]);
		
		end
	
	end

endmodule