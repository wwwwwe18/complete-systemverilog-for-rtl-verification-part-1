//*****************************************************
// Project		: Assignment 19 - A71
// File			: section7_a71
// Editor		: Wenmei Wang
// Date			: 11/10/2024
// Description	: Assignment 19 - A71
//*****************************************************

module tb;

	int cnt1 = 0;
	int cnt2 = 0;

	task Task1();

		forever begin
			#20;
			$display("Task1 triggered at %0t", $time);
			cnt1 = cnt1 + 1;
		end

	endtask

	task Task2();

		forever begin
			#40;
			$display("Task2 triggered at %0t", $time);
			cnt2 = cnt2 + 1;
		end

	endtask

	task End();

		$display("Simulation finished at %0t", $time);
		$display("Task1 triggered %0d times", cnt1);
		$display("Task2 triggered %0d times", cnt2);
		$finish();

	endtask

	initial begin

		fork

			Task1();
			Task2();

		join_none

		#200;

		End();

	end

endmodule