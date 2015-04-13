`timescale 1ns / 1ps
`include "multiplexer2to1/multiplexer2to1.v"

module multiplexer2to1_tb;
	reg [1:0]input_signal;
  reg selection;
  wire output_signal;
  
	/*DUT instantiation*/
  multiplexer2to1 dut(output_signal, input_signal, selection);

  initial
  begin
    $monitor($time, " input_signal = %b%b selection = %b => output_signal = %b", input_signal[1], input_signal[0], selection, output_signal);
  end

  initial
  begin
	  /*初始化*/
    $dumpfile("Simulation/multiplexer2to1_tb.vcd");
    $dumpvars;
    selection = 0;
    input_signal[0] = 0;
    input_signal[1] = 0;

		/*模擬*/
    #10 input_signal[0] = 1;
    #10 selection = 1;
    #10 input_signal[1] = 1;
    #10 $finish;
  end
endmodule
