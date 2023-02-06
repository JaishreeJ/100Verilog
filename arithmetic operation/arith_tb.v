module arithmetic_tb;
reg a;
reg b;
wire c;
  arithmetic arith(.a(a),.b(b),.c(c),.d(d),.e(e),.f(f));
initial begin
    
        a=5;
        b=10;
        
        
end
  initial begin
  $dumpfile("dump.vcd");
    $dumpvars;
  end
endmodule
