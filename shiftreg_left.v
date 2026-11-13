// 8-bit register: parallel load, async reset, shift left (QB Q1a)
module shiftReg(CLK, rst, ld, shift, SI, Din, Dout);
  input CLK, rst, ld, shift, SI;
  input [7:0] Din;
  output reg [7:0] Dout;
  always @(posedge CLK or posedge rst)
    if (rst)        Dout <= 8'b0;
    else if (ld)    Dout <= Din;
    else if (shift) Dout <= {Dout[6:0], SI};
endmodule
