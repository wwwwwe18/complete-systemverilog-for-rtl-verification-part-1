//*****************************************************
// Project		: Specifying mailbox with custom constructor
// File			: section7_ex11_mailbox_constructor
// Editor		: Wenmei Wang
// Date			: 12/10/2024
// Description	: Specifying mailbox with custom constructor
//*****************************************************

class generator;

	int data = 12;

	mailbox mbx;	// gen2drv

	function new(mailbox mbx);

		this.mbx = mbx;

	endfunction

	task run();

		mbx.put(data);
		$display("[GEN] : SENT DATA : %0d", data);

	endtask

endclass

class driver;

	int datac = 0;

	mailbox mbx;

	function new(mailbox mbx);

		this.mbx = mbx;

	endfunction

	task run();

		mbx.get(datac);
		$display("[DRV] : RCVD DATA : %0d", datac);

	endtask

endclass

module tb;

	generator gen;
	driver drv;
	mailbox mbx;

	initial begin

		mbx = new();

		gen = new(mbx);
		drv = new(mbx);

		gen.run();
		drv.run();

	end

endmodule