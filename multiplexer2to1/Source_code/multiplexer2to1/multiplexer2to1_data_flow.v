//2對1多工器
//作者 | Author
//  林博仁(pika1021@gmail.com)
`ifndef MULTIPLEXER2TO1_V_INCLUDED
	`define MULTIPLEXER2TO1_V_INCLUDED
	`timescale 1ns / 100ps

	module multiplexer2to1(output_signal, input_signal, selection);
		output output_signal;
		input [1:0]input_signal;
		input selection;
		
		/* TODO: 缺少 output 跟 wire 關聯的知識 */
		wire output_signal;
		
		assign output_signal = (selection) ? input_signal[1] : input_signal[0];
	endmodule
`endif