//*****************************************************
// Project		: Adding interface to simple RTL
// File			: section8_ex1_interface_design
// Editor		: Wenmei Wang
// Date			: 12/10/2024
// Description	: Design
//*****************************************************

module add (

	input	[3:0]	a,b,
	output	[4:0]	sum

);

	assign sum = a + b;

endmodule