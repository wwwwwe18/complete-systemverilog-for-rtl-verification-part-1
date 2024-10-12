//*****************************************************
// Project		: Using blocking operator for interface variables
// File			: section8_ex2_interface_blocking_tb
// Editor		: Wenmei Wang
// Date			: 12/10/2024
// Description	: Testbench
//*****************************************************

interface add_if;

	logic	[3:0]	a;
	logic	[3:0]	b;
	logic	[4:0]	sum;
	logic			clk;

endinterface

module tb;

	add_if aif();

	//add dut (aif.a, aif.b, aif.sum);	// Positional map
	add dut (.b(aif.b), .a(aif.a), .sum(aif.sum), .clk(aif.clk));	// Mapping by name

	initial begin

		aif.clk = 0;

	end

	always #10 aif.clk = ~aif.clk;

	initial begin

		aif.a = 1;	// Blocking operator
		aif.b = 5;
		#22;
		aif.a = 3;
		#20;
		aif.a = 4;
		#8;
		aif.a = 5;
		#20;
		aif.a = 6;

	end

	initial begin

		$dumpfile("dump.vcd");
		$dumpvars;
		#100;
		$finish();

	end

endmodule