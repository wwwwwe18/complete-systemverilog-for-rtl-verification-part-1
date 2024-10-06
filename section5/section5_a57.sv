//*****************************************************
// Project		: Assignment 13 - A57
// File			: section5_a57
// Editor		: Wenmei Wang
// Date			: 06/10/2024
// Description	: Assignment 13 - A57
//*****************************************************

class generator;
  
	bit	[3:0]	a = 5, b = 7;
	bit			wr = 1;
	bit			en = 1;
	bit	[4:0]	s = 12;

	function void display();
		$display("a:%0d b:%0d wr:%0b en:%0b s:%0d", a, b, wr, en, s);
	endfunction
	
	function generator copy();
	
		copy = new();
		copy.a = a;
		copy.b = b;
		copy.wr = wr;
		copy.en = en;
		copy.s = s;
	
	endfunction
 
endclass

class second;

	bit	[3:0]	a = 5, b = 7;
	bit			wr = 1;
	bit			en = 1;
	bit	[4:0]	s = 12;
	
	generator f1;
	
	function new();
	
		f1 = new();
	
	endfunction
	
	function second copy();
	
		copy = new();
		copy.a = a;
		copy.b = b;
		copy.wr = wr;
		copy.en = en;
		copy.s = s;
		copy.f1 = f1.copy;
	
	endfunction

endclass

module tb;

	second s1, s2;
	
	initial begin
	
		s1 = new();
		s2 = new();
		
		$display("Copy from s1 to s2");
		s2 = s1.copy();
		$display("s1");
		s1.f1.display();
		$display("s2");
		s2.f1.display();
		
		$display("Change from s2");
		s2.f1.a = 10;
		s2.f1.b = 14;
		s2.f1.wr = 0;
		s2.f1.en = 0;
		s2.f1.s = 24;
		$display("s1");
		s1.f1.display();
		$display("s2");
		s2.f1.display();
	
	end

endmodule