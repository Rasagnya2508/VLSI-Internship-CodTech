module pipeline_tb;
  reg clk;
  reg [7:0] instr;
  pipeline_processor uut(clk, instr);

  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    instr = 8'h11; #10;
    instr = 8'h22; #10;
    instr = 8'h33; #10;
    instr = 8'h44; #10;
    $stop;
  end
endmodule
