//*****************************************************
// Project		: Understanding MODPORT
// File			: section8_ex5_modport
// Editor		: Wenmei Wang
// Date			: 12/10/2024
// Description	: Understanding MODPORT
//*****************************************************

interface add_if;

	logic	[3:0]	a;
	logic	[3:0]	b;
	logic	[4:0]	sum;
	logic			clk;

	modport	DRV (output a, b, input sum, clk);
	//modport	MON ();

endinterface

class driver;

	virtual add_if.DRV aif;	// Access interface

	task run();

		forever begin

			@(posedge aif.clk);
			aif.a <= 2;
			aif.b <= 3;
			$display("[DRV] : Interface Trigger");

		end

	endtask

endclass

module tb;

	add_if aif();

	add dut (.b(aif.b), .a(aif.a), .sum(aif.sum), .clk(aif.clk));

	initial begin

		aif.clk <= 0;

	end

	always #10 aif.clk <= ~aif.clk;

	driver drv;

	initial begin

		drv = new();
		drv.aif = aif;	// Connect interface in class to interface in tb
		drv.run();

	end

	initial begin

		$dumpfile("dump.vcd");
		$dumpvars;
		#100;
		$finish();

	end

endmodule