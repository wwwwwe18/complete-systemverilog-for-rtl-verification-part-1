//*****************************************************
// Project		: Usage of fixed size array and queue
// File			: section3_ex21_array_fixed_queue
// Editor		: Wenmei Wang
// Date			: 01/10/2024
// Description	: Usage of fixed size array and queue
//*****************************************************

class transaction;

	rand bit	[7:0]	wdata;
	bit			[7:0]	rdata;
	rand bit			wreq, rreq;

endclass

class generator;

	transaction trans;
	
	task run();
	
		repeat(count) begin
			trans = new();
			assert(trans.randomize()) else ("Randomization Failed");
		end
	
	endtask

endclass

class scoreboard;

	bit	[7:0]	rdata;
	bit	[7:0]	queue[$];
	
	task run;
	
		if(tr.wreq == 1) begin	// Write data
			queue.push_front(tr.wdata);
		end
		else if(tr.rreq) begin	// Read data
			if(tr.rdata != queue.pop_back())
				$display("Data mismatch at %0t", $time);
		end
	
	endtask

endclass