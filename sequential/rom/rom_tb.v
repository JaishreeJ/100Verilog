module rom(clk,address,data_out,en);
input clk,en;
  input [2:0] address;
output reg [7:0] data_out;
reg [7:0] mem [0:7];
initial begin data_out = 8'b00000000; end
  always @ (address)
    case (address)
      3'b000 : mem[address] = 8'b00000001;
      3'b001 : mem[address] = 8'b00000010;
      3'b010 : mem[address] = 8'b00000011;
      3'b011 : mem[address] = 8'b00000100;
      3'b100 : mem[address] = 8'b00000101;
      3'b101 : mem[address] = 8'b00000110;
      3'b110 : mem[address] = 8'b00000111;
      3'b111 : mem[address] = 8'b00001000;
      default : mem[address] = 8'b0000000;
endcase
always@(posedge clk)
begin
if(en)begin
  data_out <= mem[address];
end else
data_out <= data_out;
end
endmodule
