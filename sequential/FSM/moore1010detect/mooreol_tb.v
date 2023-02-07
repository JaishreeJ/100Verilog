module morfsmolp_tb;
reg din,clk,reset;
wire y;
morfsmolp m1(din, reset, clk, y);
initial
begin
reset=0       ;clk=0;din=0;
$monitor($time, , ,"c=%b",clk,,"y=%b",y,,"r=%b",reset,,"d=%b",din);
#10 din=1;
#10 din=1;
#10 din=1;
#10 din=0;
#10 din=1;
#10 din=0;
#10 din=1;
#10 din=0;
#10 din=1;
end
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
    end
      always
#5 clk=~clk;
initial
#100 $finish ;
endmodule
