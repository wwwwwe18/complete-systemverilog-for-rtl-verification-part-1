//*****************************************************
// Project		: Demonstration of datatype 6
// File			: section3_ex6_datatype6
// Editor		: Wenmei Wang
// Date			: 19/09/2024
// Description	: Demonstration of datatype 6
//*****************************************************

/*
module top(
	input	a,b,sel,	// If sel = 0, y = a; if sel = 1, y = b
	output	y
	);
	
	logic	temp;
	
	always @(*)
	begin
		if(sel == 1'b0)
			temp = a;
		else
			temp = b;
	end
	
	assign y = temp;
	
endmodule
*/

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

logic t1, t2, t3;

ha h1 (a, b, t1, t2);
ha h2 (t1, cin, s, t3);

assign c = t2 | t3;

endmodule