module TestModule;

reg a;
reg b;


wire L;
wire E;
wire G;



b_comp1 uut (.a(a),.b(b),.L(L),.E(E),.G(G));

initial begin

a = 1;
b = 1;

#20

a = 1;
b = 0;
  
end
  
 initial begin	
    $dumpfile("dump.vcd");
    $dumpvars(1);
    end
endmodule
