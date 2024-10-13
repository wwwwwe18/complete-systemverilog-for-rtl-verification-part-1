//*****************************************************
// Project		: Assignment 23 - A82
// File			: section8_a82
// Editor		: Wenmei Wang
// Date			: 13/10/2024
// Description	: Testbench
//*****************************************************

interface top_if;

	logic			clk;
	logic	[3:0]	a, b;
	logic	[7:0]	mul;

endinterface

class monitor;

	virtual top_if vif;
	
	task run();
	
		forever begin
		
			repeat(2) @(posedge vif.clk);
			$display("-------------------------------");
			$display("[MON] : DATA SENT TO SCOREBOARD");
			$display("a : %0d \t b : %0d \t mul : %0d", vif.a, vif.b, vif.mul);
		
		end
	
	endtask

endclass

class scoreboard;

	virtual top_if vif;
	
	task compare();
	
		if((vif.mul) == (vif.a * vif.b))
			$display("[SCO] : MUL RESULT MATCHED");
		else
			$error("[SCO] : MUL RESULT MISMATCHED");
	
	endtask
	
	task run();

		forever begin

			$display("[SCO] : DATA RCVD FROM MONITOR");
			$display("a : %0d \t b : %0d \t mul : %0d", vif.a, vif.b, vif.mul);
			compare();
			$display("-------------------------------");
			#40;

		end

	endtask

endclass

module tb;

	top_if vif();
	monitor mon;
	scoreboard sco;

	top dut (vif.clk, vif.a, vif.b, vif.mul);
  
	initial begin
	
		vif.clk <= 0;
		
	end
	
	always #5 vif.clk <= ~vif.clk;
	
	initial begin
	
		for(int i = 0; i < 20; i++) begin
		
			repeat(2) @(posedge vif.clk);
			vif.a <= $urandom_range(1,15);
			vif.b <= $urandom_range(1,15);
			
		end
		
	end
	
	initial begin

		mon = new();
		sco = new();
		mon.vif = vif;
		sco.vif = vif;

	end
	
	initial begin
	
		fork
		
			mon.run();
			sco.run();
		
		join
	
	end
	
	initial begin
	
		$dumpfile("dump.vcd");
		$dumpvars;
		#300;
		$finish();
		
	end
  
endmodule