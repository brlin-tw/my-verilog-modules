//decoder1to2 testbench
`timescale 1ns / 100ps
//`define CLOCK_FREQ 50
`include "decoder1to2/decoder1to2.v"
module decoder1to2_tb();
  reg i;
  wire o1, o0;

	//module instantiation
	decoder1to2 dec12(o1, o0, i);

  initial //初始化
    begin
      $dumpfile ("Simulation/decoder1to2_tb.vcd");
      $dumpvars;

			i = 0;
			$display("\t時間（奈秒）\t狀態");			
			$display($time, "  ", "i = %b ==> output = %b%b", i, o1, o0);
    end

  initial //模擬
    begin
    #10
    $display("當i為LOW時o0為HIGH");
    $display($time, "  ", "i = %b ==> output = %b%b", i, o1, o0);

		#10
		i = 1;
		$display("當i為HIGH時o0為LOWo1為HIGH");
    $display($time, "  ", "i = %b ==> output = %b%b", i, o1, o0);

    #10
    $display($time, "  ", "i = %b ==> output = %b%b", i, o1, o0);    
    $finish();
    end

endmodule
