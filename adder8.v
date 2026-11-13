// 8-bit adder, behavioural (QB Q5a)
module adder8(a, b, cin, sum, cout);
  input [7:0] a, b;
  input cin;
  output [7:0] sum;
  output cout;
  assign {cout, sum} = a + b + cin;
endmodule
