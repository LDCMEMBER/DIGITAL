module sample;

reg clk;

initial begin
  clk <= 1'b0;

  forever #(50) clk <= ~clk;

end

initial begin
  repeat(100) @(posedge clk);
  $finish;
end

endmodule;
