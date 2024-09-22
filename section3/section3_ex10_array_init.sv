//*****************************************************
// Project		: Array initialisation
// File			: section3_ex10_array_init
// Editor		: Wenmei Wang
// Date			: 20/09/2024
// Description	: Array initialisation
//*****************************************************

module tb;

	int arr1[2] = '{1,2};		// Unique
	int arr2[2] = '{2{3}};		// Repetition operator
	int arr3[2] = '{default:2};	// Default
	int arr4[2];				// Uninitialised
	
	initial begin
		$display("arr1 : %0p", arr1);
		$display("arr2 : %0p", arr2);
		$display("arr3 : %0p", arr3);
		$display("arr4 : %0p", arr4);
	end

endmodule