// » BCD Ripple Counter
//  - 4개의 JK Flip-Flop함수 사용(JK_FF에서 negative CLK입력이 들어갔으므로 BCD Ripple Counter에서 CLK설정생각해보세요)
//  - 입력(CLK), 출력(Q1, Q2, Q4, Q8)
//  - supply1 p; 사용

 module LAB05_BCD_RIPPLE_COUNTER(CLK, Q1, Q2, Q4, Q8);
 input CLK;
 output Q1,Q2,Q4,Q8;
 wire NQ1, NQ2,NQ4, NQ8;
 supply1 p;
 LAB05_JK_FF F1(.J(p),.K(p),.CLK(~CLK),.Q(Q1),.NQ(NQ1));
 LAB05_JK_FF F2(.J(NQ8),.K(p),.CLK(~Q1),.Q(Q2),.NQ(NQ2));
 LAB05_JK_FF F3(.J(p),.K(p),.CLK(~Q2),.Q(Q4),.NQ(NQ4));
 LAB05_JK_FF F4(.J(Q4&Q2),.K(p),.CLK(~Q1),.Q(Q8),.NQ(NQ8));
 
 
 endmodule
