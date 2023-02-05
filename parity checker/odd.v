module odd_parchecker(input a,b,c,P, output out);
  assign out=~((~(a^b))^(~(c^P)));
endmodule
