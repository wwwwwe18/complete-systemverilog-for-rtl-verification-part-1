//*****************************************************
// Project		: Dynamic array 1
// File			: section3_ex16_array_dynamic1
// Editor		: Wenmei Wang
// Date			: 01/10/2024
// Description	: Dynamic array 1
//*****************************************************

module tb;

	int arr[];
	
	initial begin
		arr = new[5];
		
		for(int i = 0; i < 5; i++) begin
			arr[i] = 5*i;
		end
		
		$display("arr : %0p", arr);
		
		arr.delete();
		
		// Error
		/*
		for(int i = 0; i < 5; i++) begin
			arr[i] = 5*i;
		end
		*/
	end

endmodule