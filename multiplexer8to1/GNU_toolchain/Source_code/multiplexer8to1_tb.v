//testbench of multiplexer8to1
//作者 | Author
//	Ｖ字龍(pika1021@gmail.com)
`timescale 1ns / 100ps
`include "Source_code/multiplexer8to1/multiplexer8to1.v"
module _tb;
  reg [7:0] i;
  reg [2:0] s;
  wire out;

	//D.U.T. instantiation
	multiplexer8to1 mux81(
		.out(out), 
		.i(i), 
		.s(s)
	);

	//初始化
  initial
    begin
      $dumpfile ("Simulation/multiplexer8to1_tb.vcd");
      $dumpvars;
      $monitor($time, " i = %8b, s = %3b -> out = %b", i, s, out);
      i = 8'b00000000;
      s = 3'b000;
    end

	//模擬
  initial
    begin
    #10
    i = 8'b00000001;

    #10
    s = 3'b001;
    i = 8'b00000010;
    
    #10
    s = 3'b010;
    i = 8'b00000100;   	

    #10
    s = 3'b011;
    i = 8'b00001000;  

    #10
    s = 3'b100;
    i = 8'b00010000;  
    
    #10
    s = 3'b101;
    i = 8'b00100000;  
    
    #10
    s = 3'b110;
    i = 8'b01000000;  
    
    #10
    s = 3'b111;
    i = 8'b10000000;  
    
    #10
    $finish;
    end
endmodule
