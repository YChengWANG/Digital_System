  //-----------------------------------------------------
  // Design Name : pri_encoder_using_if
  // File Name   : pri_encoder_using_if.v
  // Function    : Pri Encoder using If
  // Coder       : Deepak Kumar Tala
  //-----------------------------------------------------
  module pri_encoder(
  binary_out , //  4 bit binary output
  encoder_in   //  16-bit input 
  );
  output [3:0] binary_out ;
  //input  enable ; 
  input [14:0] encoder_in ; 
       
  reg [3:0] binary_out ;
        
  always @ (encoder_in)
  begin
    binary_out = 0;
    //if (enable) begin
     if (encoder_in[0] == 1) begin
      binary_out = 4'h0; 
     end else if (encoder_in[1] == 1) begin
      binary_out = 4'h1; 
     end else if (encoder_in[2] == 1) begin
      binary_out = 4'h2; 
     end else if (encoder_in[3] == 1) begin
      binary_out = 4'h3; 
     end else if (encoder_in[4] == 1) begin
      binary_out = 4'h4; 
     end else if (encoder_in[5] == 1) begin
      binary_out = 4'h5; 
     end else if (encoder_in[6] == 1) begin
      binary_out = 4'h6; 
     end else if (encoder_in[7] == 1) begin
      binary_out = 4'h7; 
     end else if (encoder_in[8] == 1) begin
      binary_out = 4'h8; 
     end else if (encoder_in[9] == 1) begin
      binary_out = 4'h9; 
     end else if (encoder_in[10] == 1) begin
      binary_out = 4'ha; 
     end else if (encoder_in[11] == 1) begin
      binary_out = 4'hb; 
     end else if (encoder_in[12] == 1) begin
      binary_out = 4'hc; 
     end else if (encoder_in[13] == 1) begin
      binary_out = 4'hd; 
     end else if (encoder_in[14] == 1) begin
      binary_out = 4'he;
     end
    //end
  end
  
  endmodule