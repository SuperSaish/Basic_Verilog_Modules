module BCD_gray_dataflow(A,out);
  input wire [3:0]A;
  output wire [3:0]out;
  
  
  assign out[3]=A[3];
  assign out[2]=A[3]^A[2];
  assign out[1]=A[2]^A[1];
  assign out[0]=A[1]^A[0];
  
endmodule
                     
