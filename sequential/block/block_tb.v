module block_test;
reg din;
reg clk;
wire x;
wire y;
wire z;
block_ uut(.din(din),
        .clk(clk),
           .x(x),
           .y(y),
           .z(z));
initial
begin
  $dumpfile("dump.vcd");
        $dumpvars(0,block_assign_tes);
        din = 1'b1;
        clk = 1'b0;
end
always #2 clk = clk + 1'b1;
endmodule
