// 8-bit shift register with asynchronous reset (QB Q6a)
module shreg(CLK, rst, SI, Dout);
  input CLK, rst, SI;
  output reg [7:0] Dout;
  always @(posedge CLK or posedge rst)
    if (rst) Dout <= 8'b0;
    else     Dout <= {Dout[6:0], SI};
endmodule
