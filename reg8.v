// 8-bit register with synchronous reset (QB Q3a, Q7a, Q8a, Q15a)
module reg8(RST, CLK, inP, outP);
  input RST, CLK;
  input [7:0] inP;
  output reg [7:0] outP;
  always @(posedge CLK)
    if (RST) outP <= 8'b0;
    else     outP <= inP;
endmodule
