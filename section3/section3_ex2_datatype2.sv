//*****************************************************
// Project		: Demonstration of datatype 2
// File			: section3_ex2_datatype2
// Editor		: Wenmei Wang
// Date			: 18/09/2024
// Description	: Demonstration of datatype 2
//*****************************************************

module tb();
	
	byte		var1 = -126;	// -128 to +127
	bit	[7:0]	var2 = 130;		// 0 to 255
	
	initial begin
		#10;
		$display("Value of VAR : %0d", var1);
		$display("Value of VAR : %0d", var2);
	end
	
	shortint	var3 = 0;
	
endmodule