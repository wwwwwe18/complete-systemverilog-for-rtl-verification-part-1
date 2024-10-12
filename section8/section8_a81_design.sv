//*****************************************************
// Project		: Assignment 22 - A81
// File			: section8_a81_design
// Editor		: Wenmei Wang
// Date			: 12/10/2024
// Description	: Design
//*****************************************************

module top (

	input				clk,
	input		[3:0]	a, b,
	output	reg	[7:0]	mul

);

	always@(posedge clk) begin

		mul <= a * b;
	
	end

endmodule