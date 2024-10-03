//*****************************************************
// Project		: Dynamic array 3
// File			: section3_ex18_array_dynamic3
// Editor		: Wenmei Wang
// Date			: 01/10/2024
// Description	: Dynamic array 3
//*****************************************************

module tb;

	int arr[];
	int farr[30];
	
	initial begin
		arr = new[5];
		
		for(int i = 0; i < 5; i++) begin
			arr[i] = 5*i;
		end
		
		arr = new[30](arr);	// Copy arr into new arr
		$display("arr : %0p", arr);
		
		farr = arr;
		$display("farr : %0p", farr);
	end

endmodule