//*****************************************************
// Project		: Assignment 4 - A33
// File			: section3_a33
// Editor		: Wenmei Wang
// Date			: 02/10/2024
// Description	: Assignment 4 - A33
//*****************************************************

module tb;

	int arr[];
	
	initial begin
		arr = new[15];
		
		for(int i = 0; i < 15; i++) begin
			arr[i] = $urandom();
		end
		$display("arr : %0p", arr);
	end

endmodule