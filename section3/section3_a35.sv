//*****************************************************
// Project		: Assignment 6 - A35
// File			: section3_a35
// Editor		: Wenmei Wang
// Date			: 03/10/2024
// Description	: Assignment 6 - A35
//*****************************************************

module tb;

	int arr[];
	int que[$];
	
	initial begin
		arr = new[20];
		
		for(int i = 0; i < 20; i++) begin
			arr[i] = $urandom();
		end
		$display("arr : %0p", arr);
		
		for(int i = 0; i < 20; i++) begin
			que.push_front(arr[i]);
		end
		$display("que : %0p", que);
	end

endmodule