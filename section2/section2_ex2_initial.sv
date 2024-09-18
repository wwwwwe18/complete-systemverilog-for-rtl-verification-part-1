//*****************************************************
// Project		: Useage of initial
// File			: section2_ex2_initial
// Editor		: Wenmei Wang
// Date			: 18/09/2024
// Description	: Useage of initial
//*****************************************************

`timescale 1ns / 1ps

module tb();

	// Global signal clk, rst
	reg clk;
	reg rst;
	
	reg [3:0] temp;

	// 1. Initialise global variable
	initial begin
		clk = 1'b0;
		rst = 1'b0;
	end
	
	// 2. Random signal for data/control
	initial begin
		rst = 1'b1;
		#30;
		rst = 1'b0;
	end
	
	initial begin
		temp = 4'b0100;
		#10;
		temp = 4'b1100;
		#10;
		temp = 4'b0011;
	end

	// 3. System task at the start of simulation
	initial begin
		$dumpfile("dump.vcd");
		$dumpvars;
	end
	
	// 4. Analysing values of variable on console
	initial begin
		$monitor("Temp : %0d at time : %0t", temp, $time);
	end
	
	// 5. Stop simulation by forcefully calling $finish
	initial begin
		#200;
		$finish();
	end

endmodule