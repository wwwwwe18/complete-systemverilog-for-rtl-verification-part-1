//*****************************************************
// Project		: Multiple arguments to constructor 1
// File			: section5_ex10_constructor1
// Editor		: Wenmei Wang
// Date			: 05/10/2024
// Description	: Multiple arguments to constructor 1
//*****************************************************

class first;

	int			data1
	bit	[7:0]	data2;
	shortint	data3;
	
	function new(input int data1 = 0, input bit [7:0] data2 = 8'h00, input shortint data3 = 0);
		
		this.data1 = data1;
		this.data2 = data2;
		this.data3 = data3;
	
	endfunction

endclass

module tb;

	first f1;
	
	initial begin
	
		f1 = new();
		$display("Data : %0d", f1.data);
	
	end

endmodule