//<LAB04_ABS_4BIT TESTBENCH>
`timescale 10ns/1ps

module LAB04_ABS_4BIT_TB;

reg [3:0] A,B;
wire [3:0] Result;


LAB03_4BIT_ABS U1(A,B,Result);

initial begin
A<=4'b0000; B<=4'b0000;  //0000
#10 A <= 4'b0100; B<=4'b0000; //0100
#10 A <= 4'b0101; B<=4'b0000; //0101
#10 A <= 4'b1111; B<=4'b0000; //-1, 0001 
#10 A <= 4'b1110; B<=4'b0000; //-2, 0010
#10 A <= 4'b1000; B<=4'b0000; //1000
#10 A <= 4'b0111; B<=4'b0000; //0111
#10 A <= 4'b1010; B<=4'b0000; //-6, 0110
end

endmodule
