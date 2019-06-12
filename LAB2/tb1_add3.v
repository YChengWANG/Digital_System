module tb1_add3;
  reg [5:0] a;
  reg [5:0] b;
  reg [5:0] c;
  reg ci;
  wire [7:0] summ;
  wire coooo1,coooo2;
  reg ForceError;
  
  integer tempi;
  integer tempj;
  integer tempk;
  
  
  add3 UUT (.a(a), .b(b), .c(c), .ci(ci), .sumall(summ), .cooo1(coooo1),.cooo2(coooo2));
  

  initial begin
    ForceError = 1'b0;
    ci = 1'b0;
	 a = 6'b000000;
	 b = 6'b000000;
	 c = 6'b000000;
	 for(tempi=0; tempi<64; tempi=tempi+1)begin
	   for(tempj=0; tempj<64; tempj=tempj+1)begin
	     for(tempk=0; tempk<64; tempk=tempk+1)begin
		   #100
			 if(summ !== a + b + c) begin
			    ForceError = 1'b1;
				 $display("Error account is = %b", ForceError);
			 end	 
			$display("in1 = %b, in2 = %b, in3 = %b, sum = %b", a, b, c, summ);
			c = c + 6'b000001;
		 end
		b = b + 6'b000001;
	   end	
	  a = a +6'b000001;
	 end	 
  end
endmodule  
