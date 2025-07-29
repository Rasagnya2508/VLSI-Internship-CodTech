module ram_tb;
  reg clk, we;
  reg [3:0] addr;
  reg [7:0] data_in;
  wire [7:0] data_out;

  ram uut(clk, we, addr, data_in, data_out);

  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    we = 1; addr = 4'b0001; data_in = 8'hA5; #10;
    we = 0; addr = 4'b0001; #10;
    $stop;
  end
endmodule
