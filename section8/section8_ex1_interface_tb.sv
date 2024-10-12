//*****************************************************
// Project		: Adding interface to simple RTL
// File			: section8_ex1_interface_tb
// Editor		: Wenmei Wang
// Date			: 12/10/2024
// Description	: Testbench
//*****************************************************

interface add_if;

	logic	[3:0]	a;
	logic	[3:0]	b;
	logic	[4:0]	sum;

endinterface

// Interface with all reg type, we are not allowed to connect variable in interface to the output port of DUT
// Interface with all wire type, we are not allowed to apply stimulus using initial or always

module tb;

	add_if aif();

	//add dut (aif.a, aif.b, aif.sum);				// Positional map
	add dut (.b(aif.b), .a(aif.a), .sum(aif.sum));	// Mapping by name

	initial begin

		aif.a = 4;
		aif.b = 4;
		#10;
		aif.a = 3;
		#10;
		aif.b = 7;

	end

	initial begin

		$dumpfile("dump.vcd");
		$dumpvars;

	end

endmodule