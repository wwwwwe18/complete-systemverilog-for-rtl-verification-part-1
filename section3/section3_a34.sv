//*****************************************************
// Project		: Assignment 5 - A34
// File			: section3_a34
// Editor		: Wenmei Wang
// Date			: 02/10/2024
// Description	: Assignment 5 - A34
//*****************************************************

`timescale 1ns / 1ps

module tb;

	int arr[];
	
	initial begin
		arr = new[7];
		
		for(int i = 0; i < 7; i++) begin
			arr[i] = 7*(i+1);
		end
		
		#20;
		arr = new[20](arr);	// Copy arr into new arr
		
		for(int i = 7; i < 20; i++) begin
			arr[i] = 5*(i-6);
		end
		
		$display("arr : %0p", arr);
	end

endmodule