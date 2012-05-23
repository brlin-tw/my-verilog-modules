/* 模組名稱：ring_counter
   著作權宣告：copyright 2012 林博仁(pika1021@gmail.com)
   */
`timescale 1ns / 100ps

module ring_counter(state, Clk, Rst);
  output reg[6:1] state;
  input Clk, Rst;

  always @ (posedge Clk or posedge Rst)
  if(Rst) begin
    state <= 6'b000001;
    end
  else begin
    state <= {state[5:1], state[6]};
    end
endmodule
