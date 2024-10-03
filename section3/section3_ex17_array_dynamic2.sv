//*****************************************************
// Project		: Dynamic array 2
// File			: section3_ex17_array_dynamic2
// Editor		: Wenmei Wang
// Date			: 01/10/2024
// Description	: Dynamic array 2
//*****************************************************

module tb;

	int arr[];
	
	initial begin
		arr = new[5];
		
		for(int i = 0; i < 5; i++) begin
			arr[i] = 5*i;
		end
		
		arr = new[30](arr);	// Copy arr into new arr
		$display("arr : %0p", arr);
	end

endmodule