module pipeline_processor (
  input clk,
  input [7:0] instr
);
  reg [7:0] IF, ID, EX, WB;

  always @(posedge clk) begin
    WB <= EX;
    EX <= ID;
    ID <= IF;
    IF <= instr;
  end

endmodule
