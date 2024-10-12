//*****************************************************
// Project		: Assignment 20 - A72
// File			: section7_a72
// Editor		: Wenmei Wang
// Date			: 12/10/2024
// Description	: Assignment 20 - A72
//*****************************************************

class transaction;

	bit	[7:0]	addr = 7'h12;
	bit	[3:0]	data = 4'h4;
	bit			we = 1'b1;
	bit			rst = 1'b0;

endclass

class generator;

	transaction t;

	mailbox #(transaction) mbx;

	function new(mailbox #(transaction) mbx);

		this.mbx = mbx;

	endfunction

	task run();

		t = new();
		mbx.put(t);
		$display("[GEN] : DATA SENT : addr : %0d : data : %0d : we : %0d : rst : %0d", t.addr, t.data, t.we, t.rst);

	endtask

endclass

class driver;

	transaction dc;
	
	mailbox #(transaction) mbx;

	function new(mailbox #(transaction) mbx);

		this.mbx = mbx;

	endfunction

	task run();

		mbx.get(dc);
		$display("[DRV] : DATA RCVD : addr : %0d : data : %0d : we : %0d : rst : %0d", dc.addr, dc.data, dc.we, dc.rst);

	endtask

endclass

module tb;

	generator gen;
	driver drv;
	mailbox #(transaction) mbx;

	initial begin

		mbx = new();
		gen = new(mbx);
		drv = new(mbx);

		gen.run();
		drv.run();

	end

endmodule