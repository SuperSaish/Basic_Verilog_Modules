
module full_adder(
input a,b,c,
output reg sum,cout
    );
  always@(a or b or c) begin
    {cout,sum} = a + b+ cin;
  end
endmodule
