// 8-bit right shift register (QB Q2a)
module rshift(CLK, rst, SI, Dout);
  input CLK, rst, SI;
  output reg [7:0] Dout;
  always @(posedge CLK or posedge rst)
    if (rst) Dout <= 8'b0;
    else     Dout <= {SI, Dout[7:1]};
endmodule
