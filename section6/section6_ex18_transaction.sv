//*****************************************************
// Project		: Building transaction class
// File			: section6_ex18_transaction
// Editor		: Wenmei Wang
// Date			: 11/10/2024
// Description	: Building transaction class
//*****************************************************

class transcation;

	// Global signals
			bit	clk;
			bit	rst;

	// Data control signals
	rand	bit	wreq, rreq; // Active High

	// Actual data buses
	rand	bit	[7:0]	wdata;
			bit	[7:0]	rdata;

			bit			empty;
			bit			full;

	constraint	ctrl_wr	{

		wreq dist	{0 := 30, 1 := 70};
	
	}

	constraint	ctrl_rd	{

		rreq dist	{0 := 30, 1 := 70};
	
	}

	constraint	wr_rd	{

		wreq != rreq;
	
	}

endclass