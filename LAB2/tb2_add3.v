module  tb2_add3;

reg [2:0] count;
// assign SW[2:0] = count;

reg [5:0] a;
reg[5:0] b;
reg[5:0] c;

always @(*)begin
 case(count) 
   3'b000:begin
	  a = 6'b000000;
	  b = 6'b000000;
     c = 6'b000000;
   end
   3'b001:begin 
	  a = 6'b000001;
	  b = 6'b000001;
     c = 6'b000001;
   end	  
   3'b010:begin 
	  a = 6'b000010;
	  b = 6'b000010;
     c = 6'b000010;
   end	  
   3'b011:begin 
	  a = 6'b111111;
	  b = 6'b111111;
     c = 6'b111111;
   end	  	
 endcase
end

wire cin;
wire co1,co2;
wire [7:0] summ;

add3 UUT (.a(a), .b(b), .c(c), .ci(cin), .sumall(summ), .cooo1(co1), .cooo2(co2) );
			 
initial begin
  count = 3'b000;
  repeat (4) begin
    #100
	 $display("SW = %b, in1 = %b, in2 = %b, in3 = %b, sum = %b", count,a,b,c,summ);
    count = count + 3'b001;
  end
end

endmodule  
  
  