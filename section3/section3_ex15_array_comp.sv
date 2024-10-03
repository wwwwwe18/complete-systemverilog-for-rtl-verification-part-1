//*****************************************************
// Project		: Compare array
// File			: section3_ex15_array_comp
// Editor		: Wenmei Wang
// Date			: 22/09/2024
// Description	: Compare array
//*****************************************************

module tb;

	int arr1[5] = '{1,2,3,4,5};
	int arr2[5] = '{1,2,7,4,5};
	
	int status;
	
	initial begin
		status = (arr1 == arr2);
		$display("Status : %0d", status);
	end
	
	/*
	initial begin
		for(int i = 0; i < 5; i++) begin
			arr1[i] = 5 * i;	// 0 5 10 15 20
		end
		
		arr2 = arr1;
		$display("arr2 : %0p", arr2);
	end
	*/

endmodule