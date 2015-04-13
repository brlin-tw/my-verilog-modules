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
		
		wire net1, net2;
		
		not a1(selection_bar, selection);
		and a2(net1,input_signal[0], selection_bar);
		and a3(net2,input_signal[1], selection);
		or a4(output_signal,net1,net2);
	endmodule
`endif