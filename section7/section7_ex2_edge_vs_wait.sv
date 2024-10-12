//*****************************************************
// Project		: @ vs. wait
// File			: section7_ex2_edge_vs_wait
// Editor		: Wenmei Wang
// Date			: 11/10/2024
// Description	: @ vs. wait
//*****************************************************

// Trigger : ->
// Edge sensitive_blocking @(), level sensitive_non-blocking wait()

module tb;

	event a1, a2;

	initial begin

		-> a1;
		//#10;
		-> a2;

	end

	initial begin

		//@(a1);
		wait(a1.triggered);
		$display("Event A1 triggers");
		//@(a2);
		wait(a2.triggered);
		$display("Event A2 triggers");

	end

endmodule