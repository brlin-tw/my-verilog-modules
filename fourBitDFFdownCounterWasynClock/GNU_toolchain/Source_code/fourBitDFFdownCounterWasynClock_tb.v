`timescale 1ns / 100ps
`include "Source_code/fourBitDFFdownCounterWasynClock/fourBitDFFdownCounterWasynClock.v"
module fourBitDFFcounterWasynClockTest;
  input [3:0]count;
  output reg Clk, ClrN;

    
fourBitDFFdownCounterWasynClock dffAsynClock(count, Clk, ClrN);  

initial /*stimulus*/
  begin
    $dumpfile("Simulation/fourBitDFFdownCounterWasynClock_tb.vcd");
    $dumpvars;
		$monitor($time, " Clk=%b, ClrN=%b -> count=%4b", Clk, ClrN, count);
    ClrN = 0;
    Clk = 0;
    
  end
  
initial
  begin
    #45; ClrN = 1;
      
    #1000 $finish;
  end
  
  
always
  begin

    #20 Clk = ~Clk;
    
  end
endmodule
