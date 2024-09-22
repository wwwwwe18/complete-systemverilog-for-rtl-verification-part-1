//*****************************************************
// Project		: Demonstration of datatype 5
// File			: section3_ex5_datatype5
// Editor		: Wenmei Wang
// Date			: 19/09/2024
// Description	: Design full adder
//*****************************************************

// Half adder
module ha(
	input	wire	a, b,
	output	wire	sout, cout
);

assign sout = a ^ b;
assign cout = a & b;

endmodule

// Full adder
module fa(
	input	a, b, cin,
	output	s, c
);

wire t1, t2, t3;

ha h1 (a, b, t1, t2);
ha h2 (t1, cin, s, t3);

assign c = t2 | t3;

endmodule