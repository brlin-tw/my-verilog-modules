`include "Source_code/multiplexer4to1/multiplexer4to1.v"
module multiplexer4to1test;
  reg [1:0] s;
  reg [3:0] i;
  wire out;
  multiplexer4to1 
    mul41(.out(out), 
          .s(s), 
          .i(i));
  initial 
  begin
    //初始化
    $dumpfile("Simulation/multiplexer4to1_tb.vcd");
    $dumpvars;
    $monitor($time, " in = %b%b%b%b, select = %b%b -> out = %b", i[3], i[2], i[1], i[0], s[1], s[0], out);
		s = 2'b00;
		i = 4'b0000;
		
		//模擬
    #10 i = 4'b0001;
    //output should now 1
    
    #10 s = 2'b01;
    #10 i = 4'b0010;
    
    #10 s = 2'b10;
    #10 i = 4'b0100;
    
    #10 s = 2'b11;
    #10 i = 4'b1000;
    #10 $finish;
  end
endmodule