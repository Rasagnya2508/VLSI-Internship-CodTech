module fir_tb;
  reg clk;
  reg [7:0] x;
  wire [15:0] y;

  fir_filter uut(clk, x, y);

  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    x = 8'd10; #10;
    x = 8'd20; #10;
    x = 8'd30; #10;
    x = 8'd40; #10;
    $stop;
  end
endmodule
