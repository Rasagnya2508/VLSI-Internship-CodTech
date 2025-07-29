module alu_tb;
  reg [3:0] a, b;
  reg [2:0] sel;
  wire [3:0] y;

  alu uut(a, b, sel, y);

  initial begin
    a = 4'b0101; b = 4'b0011;

    sel = 3'b000; #10;
    sel = 3'b001; #10;
    sel = 3'b010; #10;
    sel = 3'b011; #10;
    sel = 3'b100; #10;

    $stop;
  end
endmodule
