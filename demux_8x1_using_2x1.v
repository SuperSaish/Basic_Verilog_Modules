module demux_2x1(
  input wire sel,
  input wire din,
  output wire dout_0,
  output wire dout_1
);
  assign dout_0 = (sel) ? 1'b0 : din;
  assign dout_1 = (sel) ? din : 1'b0;
endmodule

module demux_8x1(
  input wire [2:0] sel,
  input wire din,
  output wire [7:0]out
);
  wire w1,w2,w3,w4,w5,w6;
  
  demux_2x1 M1(sel[2],din,w1,w2);
  
  demux_2x1 M2(sel[1],w1,w3,w4);
  demux_2x1 M3(sel[1],w2,w5,w6);
  
  demux_2x1 M4(sel[0],w3,out[0],out[1]);
  demux_2x1 M5(sel[0],w4,out[2],out[3]);
  demux_2x1 M6(sel[0],w5,out[4],out[5]);
  demux_2x1 M7(sel[0],w6,out[6],out[7]);
  
endmodule
