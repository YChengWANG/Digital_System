module compare_top(in0, in1, in2, in3, in4, in5, in6, in7, in8, in9, ina, inb, inc, ind, ine,inf, match, num_match_low, num_match_2nd_low);
input  [7:0] in0, in1, in2, in3, in4, in5, in6, in7, in8, in9, ina, inb, inc, ind, ine,inf;
output match;
output  [3:0] num_match_low;
output  [3:0] num_match_2nd_low;

reg  [3:0] num_match_low;
reg  [3:0] num_match_2nd_low;

//wire [14:0] kkk;
wire match0,match1,match2,match3,match4,
     match5,match6,match7,match8,match9,
	  match10,match11,match12,match13,match14,match15;
wire [3:0] num_match_low0,num_match_low1,num_match_low2,num_match_low3,num_match_low4 ,
           num_match_low5,num_match_low6,num_match_low7,num_match_low8,num_match_low9,
			  num_match_low10,num_match_low11,num_match_low12,num_match_low13,num_match_low14,num_match_low15;
/*reg [7:0]array[15:0];

 always @(*)begin
    array[0] = in0;
	 array[1] = in1;
	 array[2] = in2;
	 array[3] = in3;
	 array[4] = in4;
	 array[5] = in5;
	 array[6] = in6;
	 array[7] = in7;
	 array[8] = in8;
	 array[9] = in9;
	 array[10] = ina;
	 array[11] = inb;
	 array[12] = inc;
	 array[13] = ind;
	 array[14] = ine;
	 array[15] = inf;
 end
 
 integer i;
 integer j;
 reg [7:0] temp;
 always@(*)begin
  begin:loop
   for(i=0;i<16;i=i+1)begin
     for(j=1;j<16;j=j+1)begin
	    if(array[j]==array[0])begin
	     disable loop;
	    end
		temp=array[0];
	   array[0]=array[i+1];
	   array[i+1]=temp;	
	  end 
    end
	end 
 end*/
// call compare15 15 times
compare15 comp0(.compare_input(in0), .in0(in1), .in1(in2), .in2(in3), 
               .in3(in4), .in4(in5), .in5(in6), .in6(in7), 
               .in7(in8), .in8(in9), .in9(ina), .ina(inb),
               .inb(inc), .inc(ind), .ind(ine), .ine(inf),  
					.match(match0), .num_match_low(num_match_low0));
compare15 comp1(.compare_input(in1), .in0(in0), .in1(in2), .in2(in3), 
               .in3(in4), .in4(in5), .in5(in6), .in6(in7), 
               .in7(in8), .in8(in9), .in9(ina), .ina(inb),
               .inb(inc), .inc(ind), .ind(ine), .ine(inf),  
					.match(match1), .num_match_low(num_match_low1));
compare15 comp2(.compare_input(in2), .in0(in0), .in1(in1), .in2(in3), 
               .in3(in4), .in4(in5), .in5(in6), .in6(in7), 
               .in7(in8), .in8(in9), .in9(ina), .ina(inb),
               .inb(inc), .inc(ind), .ind(ine), .ine(inf),  
					.match(match2), .num_match_low(num_match_low2));
compare15 comp3(.compare_input(in3), .in0(in0), .in1(in1), .in2(in2), 
               .in3(in4), .in4(in5), .in5(in6), .in6(in7), 
               .in7(in8), .in8(in9), .in9(ina), .ina(inb),
               .inb(inc), .inc(ind), .ind(ine), .ine(inf),  
					.match(match3), .num_match_low(num_match_low3));
compare15 comp4(.compare_input(in4), .in0(in0), .in1(in1), .in2(in2), 
               .in3(in3), .in4(in5), .in5(in6), .in6(in7), 
               .in7(in8), .in8(in9), .in9(ina), .ina(inb),
               .inb(inc), .inc(ind), .ind(ine), .ine(inf),  
					.match(match4), .num_match_low(num_match_low4));
compare15 comp5(.compare_input(in5), .in0(in0), .in1(in1), .in2(in2), 
               .in3(in3), .in4(in4), .in5(in6), .in6(in7), 
               .in7(in8), .in8(in9), .in9(ina), .ina(inb),
               .inb(inc), .inc(ind), .ind(ine), .ine(inf),  
					.match(match5), .num_match_low(num_match_low5));
compare15 comp6(.compare_input(in6), .in0(in0), .in1(in1), .in2(in2), 
               .in3(in3), .in4(in4), .in5(in5), .in6(in7), 
               .in7(in8), .in8(in9), .in9(ina), .ina(inb),
               .inb(inc), .inc(ind), .ind(ine), .ine(inf),  
					.match(match6), .num_match_low(num_match_low6));
compare15 comp7(.compare_input(in7), .in0(in0), .in1(in1), .in2(in2), 
               .in3(in3), .in4(in4), .in5(in5), .in6(in6), 
               .in7(in8), .in8(in9), .in9(ina), .ina(inb),
               .inb(inc), .inc(ind), .ind(ine), .ine(inf),  
					.match(match7), .num_match_low(num_match_low7));
compare15 comp8(.compare_input(in8), .in0(in0), .in1(in1), .in2(in2), 
               .in3(in3), .in4(in4), .in5(in5), .in6(in6), 
               .in7(in7), .in8(in9), .in9(ina), .ina(inb),
               .inb(inc), .inc(ind), .ind(ine), .ine(inf),  
					.match(match8), .num_match_low(num_match_low8));
compare15 comp9(.compare_input(in9), .in0(in0), .in1(in1), .in2(in2), 
               .in3(in3), .in4(in4), .in5(in5), .in6(in6), 
               .in7(in7), .in8(in8), .in9(ina), .ina(inb),
               .inb(inc), .inc(ind), .ind(ine), .ine(inf),  
					.match(match9), .num_match_low(num_match_low9));
compare15 comp10(.compare_input(ina), .in0(in0), .in1(in1), .in2(in2), 
               .in3(in3), .in4(in4), .in5(in5), .in6(in6), 
               .in7(in7), .in8(in8), .in9(in9), .ina(inb),
               .inb(inc), .inc(ind), .ind(ine), .ine(inf),  
					.match(match10), .num_match_low(num_match_low10));
compare15 comp11(.compare_input(inb), .in0(in0), .in1(in1), .in2(in2), 
               .in3(in3), .in4(in4), .in5(in5), .in6(in6), 
               .in7(in7), .in8(in8), .in9(in9), .ina(ina),
               .inb(inc), .inc(ind), .ind(ine), .ine(inf),  
					.match(match11), .num_match_low(num_match_low11));
compare15 comp12(.compare_input(inc), .in0(in0), .in1(in1), .in2(in2), 
               .in3(in3), .in4(in4), .in5(in5), .in6(in6), 
               .in7(in7), .in8(in8), .in9(in9), .ina(ina),
               .inb(inb), .inc(ind), .ind(ine), .ine(inf),  
					.match(match12), .num_match_low(num_match_low12));
compare15 comp13(.compare_input(ind), .in0(in0), .in1(in1), .in2(in2), 
               .in3(in3), .in4(in4), .in5(in5), .in6(in6), 
               .in7(in7), .in8(in8), .in9(in9), .ina(ina),
               .inb(inb), .inc(inc), .ind(ine), .ine(inf),  
					.match(match13), .num_match_low(num_match_low13));
compare15 comp14(.compare_input(ine), .in0(in0), .in1(in1), .in2(in2), 
               .in3(in3), .in4(in4), .in5(in5), .in6(in6), 
               .in7(in7), .in8(in8), .in9(in9), .ina(ina),
               .inb(inb), .inc(inc), .ind(ind), .ine(inf),  
					.match(match14), .num_match_low(num_match_low14));
compare15 comp15( .compare_input(inf), .in0(in0), .in1(in1), .in2(in2), 
               .in3(in3), .in4(in4), .in5(in5), .in6(in6), 
               .in7(in7), .in8(in8), .in9(in9), .ina(ina),
               .inb(inb), .inc(inc), .ind(ind), .ine(ine),  
					.match(match15), .num_match_low(num_match_low15));					
					
always@(*)begin
 begin:loop
 if(match0==1)begin
  num_match_low =4'h0;
  num_match_2nd_low = num_match_low0 + 4'h1;
  disable loop; 
 end
 else if(match1==1)begin
  num_match_low =4'h1;
  num_match_2nd_low = num_match_low1 + 4'h1;
  disable loop; 
 end
 else if(match2==1)begin
  num_match_low =4'h2;
  num_match_2nd_low = num_match_low2 + 4'h1;
  disable loop; 
 end
 else if(match3==1)begin
  num_match_low =4'h3;
  num_match_2nd_low = num_match_low3 + 4'h1;
  disable loop; 
 end
 else if(match4==1)begin
  num_match_low =4'h4;
  num_match_2nd_low = num_match_low4 + 4'h1;
  disable loop; 
 end
 else if(match5==1)begin
  num_match_low =4'h5;
  num_match_2nd_low = num_match_low5 + 4'h1;
  disable loop; 
 end
 else if(match6==1)begin
  num_match_low =4'h6;
  num_match_2nd_low = num_match_low6 + 4'h1;
  disable loop; 
 end
 else if(match7==1)begin
  num_match_low =4'h7;
  num_match_2nd_low = num_match_low7 + 4'h1;
  disable loop; 
 end
 else if(match8==1)begin
  num_match_low =4'h8;
  num_match_2nd_low = num_match_low8 + 4'h1;
  disable loop; 
 end
 else if(match9==1)begin
  num_match_low =4'h9;
  num_match_2nd_low = num_match_low9 + 4'h1;
  disable loop; 
 end
 else if(match10==1)begin
  num_match_low =4'ha;
  num_match_2nd_low = num_match_low10 + 4'h1;
  disable loop; 
 end
 else if(match11==1)begin
  num_match_low =4'hb;
  num_match_2nd_low = num_match_low11 + 4'h1;
  disable loop; 
 end
 else if(match12==1)begin
  num_match_low =4'hc;
  num_match_2nd_low = num_match_low12 + 4'h1;
  disable loop; 
 end
 else if(match13==1)begin
  num_match_low =4'hd;
  num_match_2nd_low = num_match_low13 + 4'h1;
  disable loop; 
 end
 else if(match14==1)begin
  num_match_low =4'he;
  num_match_2nd_low = num_match_low14 + 4'h1;
  disable loop; 
 end
 else if(match15==1)begin
  num_match_low =4'hf;
  num_match_2nd_low = num_match_low15 + 4'h1;
  disable loop; 
 end
 end 
end
assign match = match0|match1|match2|match3|match4|
               match5|match6|match7|match8|match9|
	            match10|match11|match12|match13|match14|match15;
endmodule