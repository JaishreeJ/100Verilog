module block_(din, clk, x, y, z);
input din;
input clk;
output reg x;
output reg y;
output reg z;
always @(posedge clk)
begin
      	x = din;
        y = x;
        z = y;
end
endmodule
