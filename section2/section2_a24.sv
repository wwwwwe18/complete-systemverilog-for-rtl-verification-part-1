//*****************************************************
// Project		: Code exercise A24
// File			: section2_a24
// Editor		: Wenmei Wang
// Date			: 18/09/2024
// Description	: Code exercise A24
//*****************************************************

`timescale 1ns / 1ps

module tb();
	
	// Initialise variable
	reg clk = 0;
	
	task calc(input real period, input real duty_cycle, output real ton, output real toff);
		ton = period * duty_cycle;
		toff = period - ton;
	endtask

	task clkgen(input real phase, input real ton, input real toff);
		#phase;
		while(1) begin
			clk = 1;
			#ton;
			clk = 0;
			#toff;
		end
	endtask
	
	real period;
	real ton;
	real toff;
	
	initial begin
		calc(40, 0.4, ton, toff);
		clkgen(0, ton, toff);
	end
	
	initial begin
		#200;
		$finish();
	end

endmodule