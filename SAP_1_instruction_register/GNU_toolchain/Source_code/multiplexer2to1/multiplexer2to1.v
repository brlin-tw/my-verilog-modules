//2對1多工器
//作者 | Author
//  林博仁(pika1021@gmail.com)
`ifndef MULTIPLEXER2TO1_V_INCLUDED
	`define MULTIPLEXER2TO1_V_INCLUDED
	`timescale 1ns / 100ps

	module multiplexer2to1(out,i1,i0,s);
		input i0,i1,s;
		output out;
		wire net1, net2;

		not a1(sbar,s);
		and a2(net1,i0,sbar);
		and a3(net2,i1,s);
		or a4(out,net1,net2);
	endmodule
`endif