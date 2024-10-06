//*****************************************************
// Project		: Pass by reference
// File			: section5_ex7_ref
// Editor		: Wenmei Wang
// Date			: 05/10/2024
// Description	: Pass by reference
//*****************************************************

module tb;

	task automatic swap(const ref bit [1:0] a, ref bit [1:0] b);	// Function automatic bit [1:0] add(arguments);
	
		bit [1:0] temp;
		
		temp = a;
		//a = b;
		b = temp;
		
		$display("Value of a : %0d and b : %0d", a, b);
	
	endtask
	
	bit [1:0] a;
	bit [1:0] b;
	
	initial begin
	
		a = 1;
		b = 2;
		
		swap(a, b);
		
		$display("Value of a : %0d and b : %0d", a, b);
		
	end

endmodule