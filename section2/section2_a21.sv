//*****************************************************
// Project		: Code exercise A21
// File			: section2_a21
// Editor		: Wenmei Wang
// Date			: 18/09/2024
// Description	: Code exercise A21
//*****************************************************

`include "test.sv"


module tb;
  
  reg rst = 0;   //////rst represent DUT reset Signal

  /////// User Logic goes here
  
  initial begin
    rst = 0;
    #60;
    rst = 1;
  end
  
  /////// User code ends here
 
  
  test t1 = new();
  
  initial begin
    #59;
    t1.no_gen(rst);
    t1.display();
  end
  
  
endmodule