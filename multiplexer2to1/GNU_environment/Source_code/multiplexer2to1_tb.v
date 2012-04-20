`timescale 1ns / 1ps

module multiplexer2to1_tb;
  reg i1, i0, select;
  wire out;
	/*DUT instantiation*/
  multiplexer2to1 mul(out, i1, i0, select);

  initial
  begin
    $monitor($time, " i = %b%b select = %b => out = %b", i1, i0, select, out);
  end

  initial
  begin
	  /*初始化*/
    $dumpfile("Simulation/multiplexer2to1_tb.vcd");
    $dumpvars;
    select = 0;
    i0 = 0;
    i1 = 0;

		/*模擬*/
    #10 i0 = 1;
    #10 select = 1;
    #10 i1 = 1;
    #10 $finish;
  end
endmodule
