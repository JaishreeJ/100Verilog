reg a;
reg b;
wire c,d,e,f;
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
