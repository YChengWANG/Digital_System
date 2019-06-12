
module add2(a,b,ci,ss,coo);

input [7:0] a;
input [7:0] b;
input ci;
output [7:0] ss;
output coo;

wire [7:0] s;
wire [7:0] co;

fa fa0(.a(a[0]), .b(b[0]), .ci(1'b0), .s(s[0]), .co(co[0]));
fa fa1(.a(a[1]), .b(b[1]), .ci(co[0]), .s(s[1]), .co(co[1]));
fa fa2(.a(a[2]), .b(b[2]), .ci(co[1]), .s(s[2]), .co(co[2]));
fa fa3(.a(a[3]), .b(b[3]), .ci(co[2]), .s(s[3]), .co(co[3]));
fa fa4(.a(a[4]), .b(b[4]), .ci(co[3]), .s(s[4]), .co(co[4]));
fa fa5(.a(a[5]), .b(b[5]), .ci(co[4]), .s(s[5]), .co(co[5]));
fa fa6(.a(a[6]), .b(b[6]), .ci(co[5]), .s(s[6]), .co(co[6]));
fa fa7(.a(a[7]), .b(b[7]), .ci(co[6]), .s(s[7]), .co(co[7]));

assign ss=s;
assign coo={co[7]};
endmodule