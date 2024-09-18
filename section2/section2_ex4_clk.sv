//*****************************************************
// Project		: Aligning edges of clock
// File			: section2_ex4_clk
// Editor		: Wenmei Wang
// Date			: 18/09/2024
// Description	: Aligning edges of clock
//*****************************************************

`timescale 1ns / 1ps

module tb();

	reg clk;
	
	reg clk50;
	reg clk25;
	
	initial begin
		clk = 1'b0;
		
		clk50 = 1'b0;
		clk25 = 1'b0;
	end
	
	/*
	always #5 clk = ~clk;		// 100MHz
	
	always #10 clk50 = ~clk50;	// 50MHz
	
	always #20 clk25 = ~clk25;	// 25MHz
	*/
	
	always #5 clk = ~clk;		// 100MHz
	
	always begin
		#5;
		clk50 = 1'b1;
		#10;
		clk50 = 1'b0;
		#5;
	end
	
	always begin
		#5;
		clk25 = 1'b1;
		#20;
		clk25 = 1'b0;
		#15;
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