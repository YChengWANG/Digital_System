
module add3(a, b, c,ci, sumall, cooo1,cooo2);

input [5:0] a;
input [5:0] b;
input [5:0] c;
input ci;
output [7:0] sumall;
output cooo1;
output cooo2;


wire [7:0] sum1;
wire co1;
wire co2;
wire [7:0] sum2;

add2 add21(.a({2'b00, a}), .b({2'b00, b}), .ci(1'b0), .ss(sum1), .coo(co1));

add2 add22(.a({2'b00, c}), .b(sum1), .ci(1'b0), .ss(sum2), .coo(co2));

assign sumall = sum2;
assign cooo1=co1;
assign cooo2=co2;

endmodule