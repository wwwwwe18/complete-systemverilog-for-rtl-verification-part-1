//*****************************************************
// Project		: Loops for repetitive array 2
// File			: section3_ex12_loop2
// Editor		: Wenmei Wang
// Date			: 22/09/2024
// Description	: Loops for repetitive array 2
//*****************************************************

module tb;

	int arr[10];	// 0 - 9
	int i = 0;
	
	/*
	initial begin
		for(i = 0; i < 10; i++) begin
			arr[i] = i;
		end
		
		$display("arr : %0p", arr);
	end
	*/
	
	initial begin
		foreach(arr[j]) begin	// 0 - 9
			arr[j] = j;
			$display("%0d", arr[j]);
		end
	end

endmodule