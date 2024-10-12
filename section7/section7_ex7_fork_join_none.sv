//*****************************************************
// Project		: Demonstration of FORK JOIN_NONE
// File			: section7_ex7_fork_join_none
// Editor		: Wenmei Wang
// Date			: 11/10/2024
// Description	: Demonstration of FORK JOIN_NONE
//*****************************************************

module tb;

	task first();

		$display("Task 1 started at %0t", $time);
		#20;
		$display("Task 1 completed at %0t", $time);

	endtask

	task second();

		$display("Task 2 started at %0t", $time);
		#30;
		$display("Task 2 completed at %0t", $time);

	endtask

	task third();

		$display("Reached next to join at %0t", $time);

	endtask

	initial begin

		fork

			first();
			second();

		join_none

		third();

	end

endmodule