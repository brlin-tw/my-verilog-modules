//sevenSegmentDisplayDecoder testbench
`timescale 1ns / 100ps
`include "Source_code/sevenSegmentDisplayDecoder/sevenSegmentDisplayDecoder.v"

//時脈頻率
//`define CLOCK_FREQ 50

module sevenSegmentDisplayDecoder_tb;
  reg [3:0]i;
  wire [6:0]o;

	//D.U.T. instantiation
	sevenSegmentDisplayDecoder sevSegDec(o, i);
	
	//初始化
  initial
    begin
      $dumpfile ("Simulation/sevenSegmentDisplayDecoder_tb.vcd");
      $dumpvars;
      $monitor($time, " i=%4d -> o=%7b", i, o);
      
      i = 4'b0000;
      
 			#10
      i = 4'b0000;
    
      #10
      i = 4'b0001;

 			#10
      i = 4'b0010;
      
 			#10
      i = 4'b0011;
    
      #10
      i = 4'b0100;

 			#10
      i = 4'b0101;  
      
 			#10
      i = 4'b0110;
    
      #10
      i = 4'b0111;

 			#10
      i = 4'b1000;
      
 			#10
      i = 4'b1001; 
      
 			#10
      i = 4'b1010; 

 			#10
      i = 4'b1011;
    
      #10
      i = 4'b1100;

 			#10
      i = 4'b1101;  
      
			#10
      i = 4'b1110;
    
      #10
      i = 4'b1111;
    
      #10
      $finish;
    end
endmodule
