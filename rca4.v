// 4-bit ripple carry adder using 1-bit full adders (QB Q4a, Q12a, Q16a)
module ripplecarry(A, B, cin, sum, cout);
  input [3:0] A, B;
  input cin;
  output [3:0] sum;
  output cout;
  wire [2:0] c;
  fa FA1(A[0], B[0], cin,  sum[0], c[0]);
  fa FA2(A[1], B[1], c[0], sum[1], c[1]);
  fa FA3(A[2], B[2], c[1], sum[2], c[2]);
  fa FA4(A[3], B[3], c[2], sum[3], cout);
endmodule

module fa(A, B, cin, sum, cout);
  input A, B, cin;
  output sum, cout;
  assign sum = A ^ B ^ cin;
  assign cout = (A & B) | (B & cin) | (cin & A);
endmodule
