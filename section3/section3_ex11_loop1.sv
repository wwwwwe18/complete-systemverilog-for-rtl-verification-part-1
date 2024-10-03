//*****************************************************
// Project		: Loops for repetitive array 1
// File			: section3_ex11_loop1
// Editor		: Wenmei Wang
// Date			: 21/09/2024
// Description	: Loops for repetitive array 1
//*****************************************************

module tb;

	int arr[10];	// 0 - 9
	int i = 0;
	
	initial begin
		for(i = 0; i < 10; i++) begin
			arr[i] = i;
		end
		
		$display("arr : %0p", arr);
	end

endmodule