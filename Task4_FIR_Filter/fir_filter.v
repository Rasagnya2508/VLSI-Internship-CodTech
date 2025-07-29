module fir_filter (
  input clk,
  input [7:0] x,
  output reg [15:0] y
);

reg [7:0] x1, x2;
parameter h0 = 1, h1 = 2, h2 = 3;

always @(posedge clk) begin
  y <= h0*x + h1*x1 + h2*x2;
  x2 <= x1;
  x1 <= x;
end

endmodule
