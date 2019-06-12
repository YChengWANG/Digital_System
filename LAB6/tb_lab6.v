module tb_lab6;

reg clk0,clk1,clk2;
reg [1:0] key;
reg [9:0] switch;
wire [7:0] H0,H1,H2,H3,H4,H5;
wire [9:0] ledr;
fortest lab6(
	.ADC_CLK_10(clk0),
	.MAX10_CLK1_50(clk1),
	.MAX10_CLK2_50(clk2),
	.HEX0(H0),
	.HEX1(H1),
	.HEX2(H2),
	.HEX3(H3),
	.HEX4(H4),
	.HEX5(H5),
	.KEY(key),
	.LEDR(ledr),
	.SW(switch)
);
initial begin
  clk1 = 0;
   forever #50 clk1 = ~clk1;
end
initial begin
   key = 2'b10;
   #100
	key = 2'b01;
	#100
	key = 2'b11;
	 forever #100 $display("%b %b %b %b %b %b %b", ledr,H0,H1,H2,H3,H4,H5);
end
endmodule