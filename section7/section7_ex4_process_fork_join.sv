//*****************************************************
// Project		: Multiple process with FORK JOIN
// File			: section7_ex4_process_fork_join
// Editor		: Wenmei Wang
// Date			: 11/10/2024
// Description	: Multiple process with FORK JOIN
//*****************************************************

module tb;

	int			i = 0;

	bit	[7:0]	data1, data2;

	event done;
	event next;

	// Generator
	task generator();

		for(i = 0; i < 10; i++) begin

			data1 = $urandom();	// Generate random value of data1
			$display("Data sent : %0d", data1);
			#10;
			wait(next.triggered);

		end

		-> done;

	endtask

	// Driver
	task receiver();

		forever begin

			#10;
			data2 = data1;
			$display("Data rcvd : %0d", data2);
			-> next;

		end

	endtask

	// Hold simulation
	task wait_event();

		wait(done.triggered);
		$display("Completed sending all stimulus");
		$finish();

	endtask

	initial begin

		fork

			generator();
			receiver();
			wait_event();

		join

	end

endmodule