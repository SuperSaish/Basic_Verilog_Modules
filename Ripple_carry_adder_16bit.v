module full_adder_4bit( A, B, Cin, S, Cout);
  input wire [3:0]A, B; 
  input wire Cin;
  output reg [3:0]S;
  output reg Cout;
 always @(A or B or Cin)
  begin 
    {Cout,S} = A+B+Cin; 
  end
endmodule

module adder_16bit(A,B,S,Cout);
  input [15:0]A,B;
  output Cout;
  output [15:0]S;
 
  wire C1,C2,C3;
  full_adder_4bit M1(A[3:0],B[3:0],1'b0,S[3:0],C1);
  full_adder_4bit M2(A[7:4],B[7:4],C1,S[7:4],C2);
  full_adder_4bit M3(A[11:8],B[11:8],C2,S[11:8],C3);
  full_adder_4bit M4(A[15:12],B[15:12],C3,S[15:12],Cout);
  
endmodule
