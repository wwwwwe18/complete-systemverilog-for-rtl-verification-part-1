//*****************************************************
// Project		: Code exercise A23
// File			: section2_a23
// Editor		: Wenmei Wang
// Date			: 18/09/2024
// Description	: Code exercise A23
//*****************************************************

`include "test.sv"
`timescale 1ns/1ps

module tb;
  
  reg sclk = 0;   //////sclk represent SPI Clock Signal
  
  
  /////// User code for generating clock goes here
  ///// Generate 9 MHz Clock stimulus for signal sclk with 50% Duty cycle and upto 3-bit precision
  
  initial begin
    sclk = 1'b0;
  end
  
  always #55.556 sclk = ~sclk;
  
  /////// User code ends here
 
  
  
  
 
  /////Do not change any code after this ->
  
  sub_tb s (sclk);
  
 initial 
   begin
    $dumpfile("dump.vcd"); 
    $dumpvars;
    #800;
    $stop;
  end
  
  
endmodule