//*****************************************************
// Project		: Demonstration of datatype 3
// File			: section3_ex3_datatype3
// Editor		: Wenmei Wang
// Date			: 18/09/2024
// Description	: Demonstration of datatype 3
//*****************************************************

`timescale 1ns / 1ps

module tb();
	
	// Simulation
	time		fix_time = 0;	// Fixed point
	realtime	real_time = 0;	// Floating point
	
	// $time();
	// $realtime();
	
	initial begin
		/*
		#12;
		fix_time = $time();
		$display("Current simulation time : %0t", fix_time);
		*/
		
		#12.23;
		real_time = $realtime();
		$display("Current simulation time : %0t", real_time);
	end
	
endmodule