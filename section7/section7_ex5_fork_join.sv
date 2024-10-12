//*****************************************************
// Project		: Demonstration of FORK JOIN
// File			: section7_ex5_fork_join
// Editor		: Wenmei Wang
// Date			: 11/10/2024
// Description	: Demonstration of FORK JOIN
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

		join

		third();

	end

endmodule