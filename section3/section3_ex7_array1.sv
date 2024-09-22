//*****************************************************
// Project		: Using array 1
// File			: section3_ex7_array1
// Editor		: Wenmei Wang
// Date			: 19/09/2024
// Description	: Using array 1
//*****************************************************

module tb;

	bit arr1[8];
	bit arr2[] = {1,0,1,1};
	
	initial begin
		$display("Size of arr1 : %0d", $size(arr1));
		$display("Size of arr2 : %0d", $size(arr2));
	end

endmodule