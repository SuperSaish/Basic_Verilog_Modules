module T_ff(T,clk,rst,Q,Qbar);
  input clk,rst,T;
  output reg Q,Qbar;
  always@(posedge clk or posedge rst) begin
    if(rst) begin
      Q<=1'b0;
      Qbar<=1'b1;
    end
    else if(T==0) begin
      Q<=Q;
      Qbar<=Qbar;
    end
    else begin
      Qbar<= ~Qbar;
      Q<=~Q;
    end
  end
endmodule
    
