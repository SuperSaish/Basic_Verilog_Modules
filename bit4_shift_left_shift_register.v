module shift_register_4bit_left(
  input MSB_in,rst,clk,
  output reg out
);
  reg Q0,Q1,Q2;
  always@(posedge clk or posedge rst)begin
    if(rst)begin
      out=1'b0;
      Q2=1'b0;
      Q1=1'b0;
      Q0=1'b0;
    end
    else begin
      Q0 <= MSB_in;
      Q1 <= Q0;
      Q2 <= Q1;
      out <= Q2;
    end
  end
endmodule
    
      
    
