`timescale 1ns / 100ps
`include "Source_code/threeBitDFFupCounterWasynClock/threeBitDFFupCounterWasynClock.v"
module threeBitDFFupCounterWasynClock_tb;
  input [2:0]count;
  output reg Clk, ClrN;

    
threeBitDFFupCounterWasynClock dffAsynClock(count, Clk, ClrN);  

initial /*stimulus*/
  begin
    $dumpfile("Simulation/threeBitDFFupCounterWasynClock_tb.vcd");
    $dumpvars;
		$monitor($time, " Clk=%b, ClrN=%b -> count=%3b", Clk, ClrN, count);
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
