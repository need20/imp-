// 8-bit shift register: left and right shift, load, async reset (QB Q10a, Q14a)
// dir = 1 shifts left, dir = 0 shifts right
module lrshift(CLK, rst, ld, dir, SI, Din, Dout);
  input CLK, rst, ld, dir, SI;
  input [7:0] Din;
  output reg [7:0] Dout;
  always @(posedge CLK or posedge rst)
    if (rst)      Dout <= 8'b0;
    else if (ld)  Dout <= Din;
    else if (dir) Dout <= {Dout[6:0], SI};
    else          Dout <= {SI, Dout[7:1]};
endmodule
