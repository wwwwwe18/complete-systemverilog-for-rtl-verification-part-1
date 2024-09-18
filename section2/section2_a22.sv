//*****************************************************
// Project		: Code exercise A22
// File			: section2_a22
// Editor		: Wenmei Wang
// Date			: 18/09/2024
// Description	: Code exercise A22
//*****************************************************

`include "test.sv"
`timescale 1ns/1ps

module tb;
  
  reg rst  = 0;   //////rst represent DUT reset Signal
  bit clk = 0;   //////clk represent DUT Clock Signal
  
  
  /////// User code for generating clock goes here
  ///// Generate 25 MHz Clock stimulus for signal clk with 50% Duty cycle
  
  initial begin
    rst = 1'b0;
    clk = 1'b0;
  end
  
  always #20 clk = ~clk;
  
  /////// User code ends here
 
  
  
  
 
  /////Do not change any code after this ->
  
  sub_tb s (clk);
  
 initial 
   begin
    $dumpfile("dump.vcd"); 
    $dumpvars;
    #400;
    $stop;
  end
  
  
endmodule