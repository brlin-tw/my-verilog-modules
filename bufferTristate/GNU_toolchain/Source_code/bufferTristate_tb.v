//bufferTristate_tb
`timescale 1ns / 100ps

//include模組
`include "Source_code/bufferTristate/bufferTristate.v"
//時脈頻率
//`define CLOCK_FREQ 50

module bufferTristate_tb();
  reg in, enable;
  wire out;

	//D.U.T. instantiation
	bufferTristate
		dut(
			.in(in),
			.enable(enable),
			.out(out));

  /*時脈初始化
  always
	  begin
    #`CLOCK_FREQ Clk = !Clk;
	  end
  */

  initial
    begin
	    //初始化
      $dumpfile ("Simulation/bufferTristate_tb.vcd");
      $dumpvars;
      $monitor($time, " output = %b <= input = %b, enable = %b", out, in, enable);
			in = 0;
			enable = 0; //output=0

      //模擬
			#20
				enable = 1;//output=0
			#40
				in = 1;//out=1
			#60
				enable = 0;//output=0
      #100
				$finish;
    end
endmodule
