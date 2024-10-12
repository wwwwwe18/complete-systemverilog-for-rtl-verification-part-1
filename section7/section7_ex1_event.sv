//*****************************************************
// Project		: Events
// File			: section7_ex1_event
// Editor		: Wenmei Wang
// Date			: 11/10/2024
// Description	: Events
//*****************************************************

// Trigger : ->
// Edge sensitive_blocking @(), level sensitive_non-blocking wait()

module tb;

	event a;

	initial begin

		#10;
		-> a;	// Trigger event

	end

	initial begin

		//@(a);	// Edge sensitive event
		wait(a.triggered);	// Level of event
		$display("Received Event at %0t", $time);

	end

endmodule