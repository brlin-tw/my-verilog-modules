`timescale 1ns / 100ps
`include "Source_code/flipflopDnegClknegRst/flipflopDnegClknegRst.v"
module flipflopDnegClknegRst_tb;
  reg D, Clk, ClrN;
  wire Q, Qbar;

	flipflopDnegClknegRst dffng(Q, Qbar, D, Clk, ClrN);

always
  begin
    #50 Clk = ~Clk;
  end

  always
  begin
    #70 D = ~D;
  end

initial /*stimulus*/
  begin
    $dumpfile("Simulation/flipflopDnegClknegRst_tb.vcd");
    $dumpvars;
		$monitor($time, " D=%b, Clk=%b, ClrN=%b -> Q=%b, Qbar=%b", D, Clk, ClrN, Q, Qbar);
		//$monitor($time, " D=%b, Clk=%b, ClrN=%b -> Q=%b", D, Clk, ClrN, Q);

    Clk = 0;ClrN = 0;D = 1;

    #75
    ClrN = 1;

    #500 $finish;
  end
endmodule
