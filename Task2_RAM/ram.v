module ram (
  input clk,
  input we,
  input [3:0] addr,
  input [7:0] data_in,
  output reg [7:0] data_out
);

reg [7:0] mem [15:0];

always @(posedge clk) begin
  if (we)
    mem[addr] <= data_in;
  else
    data_out <= mem[addr];
end

endmodule
