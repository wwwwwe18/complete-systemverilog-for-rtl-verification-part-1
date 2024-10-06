//*****************************************************
// Project		: Assignment 9 - A53
// File			: section5_a53
// Editor		: Wenmei Wang
// Date			: 05/10/2024
// Description	: Assignment 9 - A53
//*****************************************************

module tb;

	bit	[5:0]	addr;
	bit			wr;
	bit			en;
	
	bit			clk = 0;
	
	always #20 clk = ~clk;	// 25MHz
	
	task stim_clk();
	
		@(posedge clk);	// Wait
		addr = $urandom();
		wr = $urandom();
		en = $urandom();
		$display("addr : %0d, wr : %0d, en : %0d", addr, wr, en);
		
	endtask
	
	initial begin
		$dumpfile("dump.vcd");
		$dumpvars;
		#400;
		$finish();
	end
	
	initial begin
	
		for(int i = 0; i < 11; i++) begin
			stim_clk();
		end
		
	end

endmodule