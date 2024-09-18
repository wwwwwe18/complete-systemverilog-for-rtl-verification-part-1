//*****************************************************
// Project		: Understanding `timescale
// File			: section2_ex5_timescale
// Editor		: Wenmei Wang
// Date			: 18/09/2024
// Description	: Generate clk (16, 8MHz)
//*****************************************************

`timescale 1ns / 1ps	// 10^3 -> 3

module tb();
	
	// Initialise variable
	reg clk16 = 0;
	reg clk8 = 0;
	
	always #31.25 clk16 = ~clk16;	// 16MHz
	always #62.5 clk8 = ~clk8;		// 8MHz
	
	initial begin
		$dumpfile("dump.vcd");
		$dumpvars;
	end

	initial begin
		#200;
		$finish();
	end

endmodule