//*****************************************************
// Project		: Understanding semaphore
// File			: section7_ex9_semaphore
// Editor		: Wenmei Wang
// Date			: 12/10/2024
// Description	: Understanding semaphore
//*****************************************************

class first;

	rand	int	data;

	constraint	data_c	{data < 10; data > 0;}

endclass

class second;

	rand	int	data;

	constraint	data_c	{data > 10; data < 20;}

endclass

class main;

	semaphore sem;

	first f;
	second s;

	int data;
	int i = 0;

	task send_first();

		sem.get(1);

		for(i = 0; i < 10; i++) begin
	
			f.randomize();
			data = f.data;
			$display("First access semaphore and data sent : %0d", f.data);
			#10;

		end

		sem.put(1);
		$display("Semaphore unoccupied");

	endtask

	task send_second();

		sem.get(1);

		for(i = 0; i < 10; i++) begin
	
			s.randomize();
			data = s.data;
			$display("Second access semaphore and data sent : %0d", s.data);
			#10;

		end

		sem.put(1);

	endtask

	task run();

		sem = new(1);
		f = new();
		s = new();

		fork

			send_first();
			send_second();

		join

	endtask

endclass

module tb;

	main m;

	initial begin

		m = new();
		m.run();

	end

	initial begin

		#250;
		$finish();

	end

endmodule