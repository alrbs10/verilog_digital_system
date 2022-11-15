 
`timescale 10ns/1ps
 
module DATAPATH_TB;
reg CLK;
reg [12:0] CW;
reg [3:0] CONSTANT;
reg [3:0] DATA;
wire [3:0] reg0, reg1, reg2, reg3;
 
 
DATAPATH U1(CLK, CW, CONSTANT, DATA, reg0, reg1, reg2, reg3);
 
initial begin
CLK<=0;CW<=13'b0000000000000;CONSTANT<=4'b0000;DATA<=4'b0000;
 
#10 DATA<=4'b0100;CW<=13'b0000000000011;  // Register 0에 초기 값 셋팅
#10 DATA<=4'b0101;CW<=13'b0100000000011;  // Register 1에 초기 값 셋팅
#10 DATA<=4'b0110;CW<=13'b1000000000011;  // Register 2에 초기 값 셋팅
#10 DATA<=4'b0111;CW<=13'b1100000000011;  // Register 3에 초기 값 셋팅

#20 CW<=13'b1100010000101;CONSTANT<=4'b0000;DATA<=4'b0000; // R3 = R0+R1;
#10 CW<=13'b1011010101001;CONSTANT<=4'b0000;DATA<=4'b0011; // R2 = R3-R1;

end
 
always #5 
CLK = ~CLK;

 
endmodule