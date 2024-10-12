//*****************************************************
// Project		: Usage of FORK JOIN in testbench
// File			: section7_ex8_fork_join_tb
// Editor		: Wenmei Wang
// Date			: 11/10/2024
// Description	: Usage of FORK JOIN in testbench
//*****************************************************

class tb;

	task pre_test();

		driv.reset();

	endtask

	task test();

		fork

			gen.main();		// Generator
			driv.main();	// Driver
			mon.main();		// Monitor
			sco.main();		// Scoreboard

		//join_any
		join

	endtask

	task post_test();

		wait(done.triggered);
		wait(gen.count == driv.trans);
		wait(gen.count == sco.trans);

	endtask

	// Run task
	task run;

		pre_test();
		test();
		post_test();
		$finish();

	endtask

endclass