module ripple(input clk,rst,output[3:0]out);
  wire q0,q01,q11,q1,q2,q21,q31,q3;
  dff df1(.d(q01),.clk(clk),.rst(rst),.q(q0),.qo(q01));
  dff df2(.d(q11),.clk(q0),.rst(rst),.q(q1),.qo(q11));
  dff  df3(.d(q21),.clk(q1),.rst(rst),.q(q2),.qo(q21));
  dff df4(.d(q31),.clk(q2),.rst(rst),.q(q3),.qo(q31));
  assign out={q31,q21,q11,q01};
 endmodule
 module dff(input d,clk,rst,output reg q, output qo);
  always@(posedge clk or negedge rst)
    if(!rst==0)
      q<=0;
  else 
    q<=1;
  assign qo=~q;
endmodule
