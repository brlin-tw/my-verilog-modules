/* 模組名稱： 2 to 4 line decoder with enable
   著作權宣告：copyright 2012 林博仁(pika1021@gmail.com)
   */
module decoder2to4withEnable(enable, input0, input1, output0, output1, output2, output3);
  input enable, input0, input1;
  output output0, output1, output2, output3;

  wire input0_not, input1_not, wire0, wire1, wire2, wire3;
  not
    not0(input0_not, input0),
    not1(input1_not, input1);
  and
    and0(wire0, input1_not, input0_not),
    and1(wire1, input1_not, input0),
    and2(wire2, input1, input0_not),
    and3(wire3, input1, input0),
    enable0(output0, wire0, enable),
    enable1(output1, wire1, enable),
    enable2(output2, wire2, enable),
    enable3(output3, wire3, enable);
endmodule