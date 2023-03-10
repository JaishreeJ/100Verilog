module parity_tb;
  reg x,y,z;
  wire result;
  parity uut (.x(x),.y(y),.z(z),.result(result));
  initial begin
    x = 0;y = 0;z = 0;
#100;
x = 0;
y = 0;
z = 1;
#100;
x = 0;
y = 1;
z = 0;
#100;
x = 0;
y = 1;
z = 1;
#100;
x = 1;
y = 0;
z = 0;
#100;
x = 1;
y = 0;
z = 1;
#100;
x = 1;
y = 1;
z = 0;
#100;
x = 1;
y = 1;
z = 1;
#100;
end
  initial begin 
    $dumpfile("dump.vcd"); $dumpvars;
  end
endmodule
