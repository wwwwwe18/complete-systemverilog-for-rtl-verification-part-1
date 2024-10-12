//*****************************************************
// Project		: Multiple process with multiple initial block
// File			: section7_ex3_process_initial
// Editor		: Wenmei Wang
// Date			: 11/10/2024
// Description	: Multiple process with multiple initial block
//*****************************************************

module tb;

	int data1, data2;

	event done;

	int i = 0;

	// Generator
	initial begin

		for(i = 0; i < 10; i++) begin

			data1 = $urandom();	// Generate random value of data1
			$display("Data sent : %0d", data1);
			#10;

		end

		-> done;

	end

	// Driver
	initial begin

		forever begin

			#10;
			data2 = data1;
			$display("Data rcvd : %0d", data2);

		end

	end

	// Hold simulation
	initial begin

		wait(done.triggered);
		$finish();

	end

endmodule