//2對4解碼器的testbench
`timescale 1ns / 1ps
`include "decoder2to4/decoder2to4.v"
module decoder2to4Test;
  reg [1:0] i;
  wire [3:0] o;
  
  //D.U.T.實體化
  decoder2to4 dec24(o, i);  
  
  initial 
  begin
    $dumpfile("Simulation/decoder2to4_tb.vcd");
    $dumpvars;
		$monitor($time, " i=%2b -> o=%4b", i, o);
    i = 2'b00;
    
    #10 i = 2'b01;
    #10 i = 2'b10;
    #10 i = 2'b11;
    
    #10;
    end


endmodule
