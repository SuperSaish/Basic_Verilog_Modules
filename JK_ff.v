module JK_ff(
  input J,K,clk,rst, 
  output reg Q,Qbar
);

  always @(posedge clk or posedge rst) begin
    if (rst) begin
      Q <= 1'b0;
      Qbar <= 1'b1;
    end 
    else begin
      case ({J, K})
        2'b00: begin 
          Q <= Q;
          Qbar <= Qbar;
        end
        2'b01: begin 
          Q <= 1'b0;
          Qbar <= 1'b1;
        end
        2'b10: begin 
          Q <= 1'b1;
          Qbar <= 1'b0;
        end
        2'b11: begin 
          Q <= ~Q;
          Qbar <= ~Qbar;
        end
      endcase
    end
  end

endmodule
