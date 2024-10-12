//*****************************************************
// Project		: Using blocking operator for interface variables
// File			: section8_ex2_interface_blocking_design
// Editor		: Wenmei Wang
// Date			: 12/10/2024
// Description	: Design
//*****************************************************

module add (

	input		[3:0]	a,b,
	output	reg	[4:0]	sum,
	input				clk

);

	always@(posedge clk) begin

		sum <= a + b;

	end

endmodule