module compare15(compare_input, in0, in1, in2,
 in3, in4, in5,in6, in7, in8, in9, ina, inb,
 inc, ind, ine, match,num_match_low);
 
  input  [7:0] compare_input;
  input  [7:0] in0, in1, in2, in3, in4, in5, in6, in7,
              in8, in9, ina, inb, inc, ind, ine; // 15 inputs
  output match; // 0=no match, 1=match
  output [3:0] num_match_low;
  reg [14:0] num_match_low0,num_match_low1,num_match_low2,num_match_low3,num_match_low4,
             num_match_low5,num_match_low6,num_match_low7,num_match_low8,num_match_low9,
             num_match_low10,num_match_low11,num_match_low12,num_match_low13,num_match_low14;
  reg [14:0] all;				 
  reg match;
  
  always@(*)begin
        num_match_low0 = 15'b000_0000_0000_0000;
		  num_match_low1 = 15'b000_0000_0000_0000;
		  num_match_low2 = 15'b000_0000_0000_0000;
		  num_match_low3 = 15'b000_0000_0000_0000;
		  num_match_low4 = 15'b000_0000_0000_0000;
		  num_match_low5 = 15'b000_0000_0000_0000;
		  num_match_low6 = 15'b000_0000_0000_0000;
		  num_match_low7 = 15'b000_0000_0000_0000;
		  num_match_low8 = 15'b000_0000_0000_0000;
		  num_match_low9 = 15'b000_0000_0000_0000;
		  num_match_low10 = 15'b000_0000_0000_0000;
		  num_match_low11 = 15'b000_0000_0000_0000;
		  num_match_low12 = 15'b000_0000_0000_0000;
		  num_match_low13 = 15'b000_0000_0000_0000;
		  num_match_low14 = 15'b000_0000_0000_0000;
		  match=0;
        all= 15'b000_0000_0000_0000;
		 //$display("%b",all); 
      if(((~(compare_input)^in0))==8'b1111_1111)begin
		  num_match_low0 = 15'b000_0000_0000_0001;
		  match = 1;
		  //$display("aa");
		end
		else if((~((compare_input)^in1))==8'b1111_1111)begin
		  num_match_low1 = 15'b000_0000_0000_0010;
		  match = 1; 
		end
		else if(~((compare_input)^in2)==8'b1111_1111)begin
		  num_match_low2 = 15'b000_0000_0000_0100;
		  match = 1; 
		end
		else if(~((compare_input)^in3)==8'b1111_1111)begin
		  num_match_low3 = 15'b000_0000_0000_1000;
		  match = 1; 
		end
		else if(~((compare_input)^in4)==8'b1111_1111)begin
		  num_match_low4 = 15'b000_0000_0001_0000;
		  match = 1; 
		end
		else if(~((compare_input)^in5)==8'b1111_1111)begin
		  num_match_low5 = 15'b000_0000_0010_0000;
		  match = 1; 
		end
		else if(~((compare_input)^in6)==8'b1111_1111)begin
		  num_match_low6 = 15'b000_0000_0100_0000;
		  match = 1; 
		end
		else if(~((compare_input)^in7)==8'b1111_1111)begin
		  num_match_low7 = 15'b000_0000_1000_0000;
		  match = 1; 
		end
		else if(~((compare_input)^in8)==8'b1111_1111)begin
		  num_match_low8 = 15'b000_0001_0000_0000;
		  match = 1; 
		end
		else if(~((compare_input)^in9)==8'b1111_1111)begin
		  num_match_low9 = 15'b000_0010_0000_0000;
		  match = 1; 
		end
		else if(~((compare_input)^ina)==8'b1111_1111)begin
		  num_match_low10 = 15'b000_0100_0000_0000;
		  match = 1; 
		end
		else if(~((compare_input)^inb)==8'b1111_1111)begin
		  num_match_low11 = 15'b000_1000_0000_0000;
		  match = 1; 
		end
		else if(~((compare_input)^inc)==8'b1111_1111)begin
		  num_match_low12 = 15'b001_0000_0000_0000;
		  match = 1; 
		end
		else if(~((compare_input)^ind)==8'b1111_1111)begin
		  num_match_low13 = 15'b010_0000_0000_0000;
		  match = 1; 
		end
		else if(~((compare_input)^ine)==8'b1111_1111)begin
		  num_match_low14 = 15'b100_0000_0000_0000;
		  match = 1; 
		end
		
		 all = {num_match_low0}+{num_match_low1}+{num_match_low2}+{num_match_low3}+{num_match_low4}+
             {num_match_low5}+{num_match_low6}+{num_match_low7}+{num_match_low8}+{num_match_low9}+
             {num_match_low10}+{num_match_low11}+{num_match_low12}+{num_match_low13}+{num_match_low14};
		//$display("%b",match);
		//$display("%b",all);	
  end
   /*always@(*)begin
	   all = (num_match_low0|num_match_low1|num_match_low2|num_match_low3|num_match_low4|
             num_match_low5|num_match_low6|num_match_low7|num_match_low8|num_match_low9|
             num_match_low10|num_match_low11|num_match_low12|num_match_low13|num_match_low14);
		$display("%b",match);
		$display("%b",all);	
	end*/
pri_encoder pri_encoder1(.binary_out(num_match_low), .encoder_in(all));
endmodule