module edge_detector_tb;

	reg data;
	reg clk;

	wire edge_detect;
	edge_detector uut (
		.data(data), 
		.clk(clk), 
		.edge_detect(edge_detect)
	);

	initial begin
		data = 0;
		clk = 0;
		#15 data = 1;
		#20 data= 0;
		#15 data = 1;
		#10 data = 0;
		#15 data = 1;
		#20 data= 0;
		#15 data = 1;
		#10 data = 0;
    end
	always #5 clk=~clk;
	
	initial begin
	$monitor("Data =%b, Edge_detect=%b ", data,edge_detect);
	#200 $finish;
	end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
      
endmodule
