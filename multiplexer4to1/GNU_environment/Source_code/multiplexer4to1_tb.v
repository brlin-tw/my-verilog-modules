`include "Source_code/multiplexer4to1/multiplexer4to1.v"
module multiplexer4to1test;
  reg s1, s0, i0, i1, i2, i3;
  wire out;
  multiplexer4to1 
    mul41(.out(out), 
          .s1(s1), 
          .s0(s0), 
          .i3(i3), 
          .i2(i2), 
          .i1(i1), 
          .i0(i0));
  initial 
  begin
    //初始化
    $dumpfile("Simulation/multiplexer4to1_tb.vcd");
    $dumpvars;
    $monitor($time, " in = %b%b%b%b, select = %b%b -> out = %b", i3, i2, i1, i0, s1, s0, out);

    s1 = 0;
    s0 = 0;
    i0 = 0;
    i1 = 0;
    i2 = 0;
    i3 = 0;
    #10 i0 = 1;
    
    #10 s0 = 1;
    #10 i1 = 1;
    
    #10 s1 = 1; s0 = 0; 
    #10 i2 = 1;
    
    #10 s1 = 1; s0 = 1; 
    #10 i3 = 1;
    #10 $finish;
  end
endmodule