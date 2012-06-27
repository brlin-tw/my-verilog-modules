//七段顯示器解碼器
//輸入port
//  binary coded decimal 0~15
//輸出port
//  七段顯示器a~h顯示訊號
//    0 = 00111111
//          3   F
//    1 = 00000110
//          0   6
//    2 = 01011011
//          5   B
//    3 = 01001111
//          4   F
//    4 = 01100110
//          6   6
//    5 = 01101101
//          6   D
//    6 = 01111101
//          7   D
//    7 = 00000111
//          0   7
//    8 = 01111111
//          7   F
//    9 = 01101111
//          6   F
//    A = 01110111
//          7   7
//    b = 01111100
//          7   C
//    C = 00111001
//          3   9
//    d = 01011110
//          5   E
//    E = 01111001
//          7   9
//    F = 01110001
//          7   1

`ifndef decoderDisplay7Segment
  `define decoderDisplay7Segment
  `timescale 1ns / 100ps

  module decoderDisplay7Segment(out, in);
    output [7:0]out;
    input [3:0] in;

    //h(currently not used)
    assign out[7] = 0;

    //g
    assign out[6] = ~in[3] & ~in[2] & in[1] |
                    ~in[3] & in[2] & ~in[1] |
                    in[3] & in[2] & in[0] |
                    in[1] & ~in[0] |
                    in[3] & ~in[2];
    //f
    assign out[5] = ~in[1] & ~in[0] |
                    ~in[3] & in[2] & ~in[1] |
                    in[3] & ~in[2] & ~in[1] |
                    in[1] & in[3] |
                    in[2] & in[1] & ~in[0];

    //e
    assign out[4] = in[1] & ~in[0] |
                    in[3] & ~in[1] & ~in[0] |
                    ~in[2] & ~in[1] & ~in[0] |
                    in[2] & in[3] |
                    in[3] & in[1] & in[0];
    //d
    assign out[3] = in[3] & ~in[1] |
                    ~in[2] & ~in[1] & ~in[0] |
                    in[2] & ~in[1] & in[0] |
                    in[0] & in[3] & ~in[2] |
                    ~in[3] & ~in[2] & in[1] |
                    in[2] & in[1] & ~in[0];

    //c
    assign out[2] = ~in[1] & ~in[3] |
                    in[0] & ~in[3] |
                    ~in[3] & in[2] & in[1] |
                    in[3] & ~in[1] & in[0] |
                    in[3] & ~in[2];

    //b
    assign out[1] = ~in[3] & ~in[2] |
                    ~in[3] & ~in[1] & ~in[0] |
                    ~in[3] & in[1] & in[0] |
                    in[3] & ~in[1] & in[0] |
                    in[3] & ~in[2] & ~in[0];

    //a
    assign out[0] = ~in[2] & ~in[1] & ~in[0] |
                    in[3] & ~in[1] & ~in[0] |
                    ~in[3] & in[1] & in[0] |
                    ~in[1] & in[3] & ~in[2] |
                    ~in[3] & in[2] & in[0] |
                    in[2] & in[1] & in[0] |
                    in[1] & ~in[0];
  endmodule
`endif
