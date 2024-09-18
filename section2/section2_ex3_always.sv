//*****************************************************
// Project		: Useage of always
// File			: section2_ex3_always
// Editor		: Wenmei Wang
// Date			: 18/09/2024
// Description	: Generate clk by always (100, 50, 25MHz)
//*****************************************************

`timescale 1ns / 1ps

module tb();

	reg clk;
	reg rst;
	
	reg clk50;
	reg clk25;
	
	initial begin
		clk = 1'b0;
		rst = 1'b0;
		
		clk50 = 1'b0;
		clk25 = 1'b0;
	end
	
	always #5 clk = ~clk;		// 100MHz
	
	always #10 clk50 = ~clk50;	// 50MHz
	
	always #20 clk25 = ~clk25;	// 25MHz
	
	initial begin
		$dumpfile("dump.vcd");
		$dumpvars;
	end

	initial begin
		#200;
		$finish();
	end

endmodule