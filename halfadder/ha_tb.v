module HF_TB();
reg  a, b;
  wire  sum, carry;
  HF uut(sum,carry,a,b);
 initial
    begin
  a = 0; b =0;
  #10; a = 0; b =1;
  #10; a = 1; b =0;
  #10; a = 1; b =1;
  #10;
    end
initial
  begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end 
endmodule
  
