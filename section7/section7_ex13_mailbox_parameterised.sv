//*****************************************************
// Project		: Understanding parameterised mailbox
// File			: section7_ex13_mailbox_parameterised
// Editor		: Wenmei Wang
// Date			: 12/10/2024
// Description	: Understanding parameterised mailbox
//*****************************************************

class transaction;

	bit [7:0] data;

endclass

class generator;

	int data = 12;

	transaction t;

	mailbox #(transaction) mbx;

	logic [7:0] temp = 3;

	function new(mailbox #(transaction) mbx);

		this.mbx = mbx;

	endfunction

	task run();

		t = new();
		t.data = 45;
		mbx.put(t);
		$display("[GEN] : DATA SENT : %0d", t.data);

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
		$display("[DRV] : DATA RCVD : %0d", dc.data);

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