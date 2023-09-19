module full_adder_dataflow(
  input a,b,cin,
  output sum,cout
);
  wire w1;
  assign sum = a^b^cin;
  assign cout = (a & b ) | (b & c) | (a & c);

endmodule
  
