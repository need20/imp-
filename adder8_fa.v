// 8-bit adder using 1-bit full adders (QB Q9a)
module FA2(sum, cout, cin, a, b);
  input a, b, cin;
  output sum, cout;
  assign sum = a ^ b ^ cin;
  assign cout = (a & b) | (b & cin) | (cin & a);
endmodule

module EightbitAdder(sum, cout, cin, a, b);
  input [7:0] a, b;
  input cin;
  output [7:0] sum;
  output cout;
  wire c1, c2, c3, c4, c5, c6, c7;
  FA2 g1(sum[0], c1,   cin, a[0], b[0]);
  FA2 g2(sum[1], c2,   c1,  a[1], b[1]);
  FA2 g3(sum[2], c3,   c2,  a[2], b[2]);
  FA2 g4(sum[3], c4,   c3,  a[3], b[3]);
  FA2 g5(sum[4], c5,   c4,  a[4], b[4]);
  FA2 g6(sum[5], c6,   c5,  a[5], b[5]);
  FA2 g7(sum[6], c7,   c6,  a[6], b[6]);
  FA2 g8(sum[7], cout, c7,  a[7], b[7]);
endmodule
