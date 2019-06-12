module tb2_compare_top;

reg [3:0] test_in;
//reg [7:0] comp_in;
reg [127:0] test_data;
wire [127:0] test_data_t;
wire [3:0]num_match_low;
wire [3:0]num_match_2nd_low;
wire match;
wire [14:0] kkk;

testrom tr(.addr(test_in), .data(test_data_t));
always@(*)begin
 test_data = test_data_t;
end

compare_top cmptp(.in0(test_data[7:0]), .in1(test_data[15:8]), .in2(test_data[23:16]),
               .in3(test_data[31:24]), .in4(test_data[39:32]), .in5(test_data[47:40]), 
               .in6(test_data[55:48]), .in7(test_data[63:56]), .in8(test_data[71:64]), 
               .in9(test_data[79:72]), .ina(test_data[87:80]), .inb(test_data[95:88]), 
               .inc(test_data[103:96]), .ind(test_data[111:104]), .ine(test_data[119:112]), 
               .inf(test_data[127:120]), .match(match), .num_match_low(num_match_low), .num_match_2nd_low(num_match_2nd_low));

initial begin
 #100//; clk=1; #100; clk=0;
 //comp_in = 8'b00000000;
 test_in = 4'b0000;
 #500//;clk=1;
 if(match==1)begin $display("test %d : match. %h %h", test_in, num_match_low, num_match_2nd_low); end else begin $display("test %d :not match", test_in); end 
 #100//; #clk=0;
 
 //comp_in = 8'b01100001;
 test_in = 4'b0001;
 #500//;clk=1;
 //$display("test %d :", test_in);
 if(match==1)begin $display("test %d : match. %h %h", test_in, num_match_low, num_match_2nd_low); end else begin $display("test %d :not match", test_in); end 
 #100//; #clk=0;
 
 //comp_in = 8'b01001000;
 test_in = 4'b0010;
 #500//;clk=1;
 //$display("test %d :", test_in);
 if(match==1)begin $display("test %d : match. %h %h", test_in, num_match_low, num_match_2nd_low); end else begin $display("test %d :not match", test_in); end
 #100//; #clk=0;
 
 //comp_in = 8'b01000010;
 test_in = 4'b0011;
 #500//;clk=1;
 //$display("test %d :", test_in);
 if(match==1)begin $display("test %d : match. %h %h", test_in, num_match_low, num_match_2nd_low); end else begin $display("test %d :not match", test_in); end 
 #100//; #clk=0;  
 
 //comp_in = 8'b01111110;
 test_in = 4'b0100;
 #500//;clk=1;
 //$display("test %d :", test_in);
 if(match==1)begin $display("test %d : match. %h %h", test_in, num_match_low, num_match_2nd_low); end else begin $display("test %d :not match", test_in); end 
 #100//; #clk=0;
 
 //comp_in = 8'b10111100;
 test_in = 4'b0101;
 #500//;clk=1;
 //$display("test %d :", test_in);
 if(match==1)begin $display("test %d : match. %h %h", test_in, num_match_low, num_match_2nd_low); end else begin $display("test %d :not match", test_in); end 
 #100//; #clk=0;
 
 //comp_in = 8'b01110011;
 test_in = 4'b0110;
 #500//;clk=1;
 //$display("test %d :", test_in);
 if(match==1)begin $display("test %d : match. %h %h", test_in, num_match_low, num_match_2nd_low); end else begin $display("test %d :not match", test_in); end
 #100//; #clk=0;
 
 //comp_in = 8'b01110000;
 test_in = 4'b0111;
 #500//;clk=1;
 //$display("test %d :", test_in);
 if(match==1)begin $display("test %d : match. %h %h", test_in, num_match_low, num_match_2nd_low); end else begin $display("test %d :not match", test_in); end 
 #100//; #clk=0;
 
 //comp_in = 8'b01101110;
 test_in = 4'b1000;
 #500//;clk=1;
 //$display("test %d :", test_in);
 if(match==1)begin $display("test %d : match. %h %h", test_in, num_match_low, num_match_2nd_low); end else begin $display("test %d :not match", test_in); end 
 #100//; #clk=0;
 
 //comp_in = 8'b10011100;
 test_in = 4'b1001;
 #500//;clk=1;
 //$display("test %d :", test_in);
 if(match==1)begin $display("test %d : match. %h %h", test_in, num_match_low, num_match_2nd_low); end else begin $display("test %d :not match", test_in); end 
 #100//; #clk=0;
 
 //comp_in = 8'b01100101;
 test_in = 4'b1010;
 #500//;clk=1;
 //$display("test %d :", test_in);
 if(match==1)begin $display("test %d : match. %h %h", test_in, num_match_low, num_match_2nd_low); end else begin $display("test %d :not match", test_in); end 
 #100//; #clk=0;
 
 //comp_in = 8'b11101011;
 test_in = 4'b1011;
 #500//;clk=1;
 //$display("test %d :", test_in);
 if(match==1)begin $display("test %d : match. %h %h", test_in, num_match_low, num_match_2nd_low); end else begin $display("test %d :not match", test_in); end 
 #100//; #clk=0;
 
 //comp_in = 8'b11111000;
 test_in = 4'b1100;
 #500//;clk=1;
 //$display("test %d :", test_in);
 if(match==1)begin $display("test %d : match. %h %h", test_in, num_match_low, num_match_2nd_low); end else begin $display("test %d :not match", test_in); end 
 #100//; #clk=0;
 
 //comp_in = 8'b00101101;
 test_in = 4'b1101;
 #500//;clk=1;
 //$display("test %d :", test_in);
 if(match==1)begin $display("test %d : match. %h %h", test_in, num_match_low, num_match_2nd_low); end else begin $display("test %d :not match", test_in); end
 #100//; #clk=0;
 
 
 //comp_in = 8'b11110010;
 test_in = 4'b1110;
 #500//;clk=1;
 //$display("test %d :", test_in);
 if(match==1)begin $display("test %d : match. %h %h", test_in, num_match_low, num_match_2nd_low); end else begin $display("test %d :not match", test_in); end
 #100//; #clk=0;
 
 //comp_in = 8'b10111001;
 test_in = 4'b1111;
 #500//;clk=1;
 //$display("test %d :", test_in);
 if(match==1)begin $display("test %d : match. %h %h", test_in, num_match_low, num_match_2nd_low); end else begin $display("test %d :not match", test_in); end 
 #100//; #clk=0;
 
 $stop;
end
endmodule