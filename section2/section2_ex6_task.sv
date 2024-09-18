//*****************************************************
// Project		: Understanding parameters for generating clock
// File			: section2_ex6_clk
// Editor		: Wenmei Wang
// Date			: 18/09/2024
// Description	: Generate clk (100MHz)
//*****************************************************

`timescale 1ns / 1ps

module tb();
	
	// Initialise variable
	reg clk = 0;
	reg clk50 = 0;
	
	always #5 clk = ~clk;	// 100MHz
	
	/*
	real phase = 10;
	real ton = 5;
	real toff = 5;
	*/

	task clkgen(input real phase, input real ton, input real toff);
		#phase;
		while(1) begin
			clk50 = 1;
			#ton;
			clk50 = 0;
			#toff;
		end
	endtask
	
	initial begin
		clkgen(7, 5, 5);
	end
	
	initial begin
		$dumpfile("dump.vcd");
		$dumpvars;
	end

	initial begin
		#200;
		$finish();
	end

endmodule