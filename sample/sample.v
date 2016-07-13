module sample;

reg clk;
reg rst;
reg idt;

initial begin
  clk <= 1'b0;

  forever #(50) clk <= ~clk;

end

initial begin
  repeat(100) @(posedge clk);
  $finish;
end

initial begin
        rst <= 1'b0;
  #100; rst <= 1'b1;
end

initial begin
  idt = 1'b0;
end

endmodule;
