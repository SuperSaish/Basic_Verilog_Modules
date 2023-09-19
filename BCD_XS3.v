module BCD_XS3_dataflow(A,out);
  input [3:0]A;
  output [3:0]out;
  
  assign out=A+ 4'b0011;
  
endmodule
