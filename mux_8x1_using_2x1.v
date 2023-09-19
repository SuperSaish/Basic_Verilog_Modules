module mux_2x1(sel,b,a,out);
  input sel;
  input a,b;
  output out;
  assign out = sel ? b : a;
endmodule

module mux_8x1(
  input [7:0]I,
  input [2:0]sel,
  output out
);
wire w1,w2,w3,w4,w5,w6;
  mux_2x1 M1(sel[0],I[1],I[0],w1);
  mux_2x1 M2(sel[0],I[3],I[2],w2);
  mux_2x1 M3(sel[0],I[5],I[4],w3);
  mux_2x1 M4(sel[0],I[7],I[6],w4);

  mux_2x1 M5(sel[1],w2,w1,w5);
  mux_2x1 M6(sel[1],w4,w3,w6);

  mux_2x1 M7(sel[2],w6,w5,out);
  endmodule
                        
