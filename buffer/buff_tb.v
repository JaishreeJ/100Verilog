module bufftb;
	reg a;
	wire y;
	buffer_ buff(a,y);
	initial
	begin
		
    a = 0; # 100; 
		
    a = 1; # 100; 
		
	end
  initial begin 
    $dumpfile("dump.vcd"); $dumpvars;
  end
endmodule
