`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.11.2022 21:55:15
// Design Name: 
// Module Name: Three_bit_Comparator
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Three_bit_Comparator(output equal,greater,less , input [2:0] A,B);
wire t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13;
//A=B
assign t1 =~(A[2]^B[2]);
assign t2 =~(A[1]^B[1]);
assign t3 =~(A[0]^B[0]);
assign equal = t1 & t2 & t3;

//A>B
assign t4=A[2] & (~B[2]);
assign t5=A[2] | (~B[2]);
assign t6= t5 & A[1] & (~B[1]);
assign t7=A[1] | (~B[1]);
assign t8=t5 & t7 & A[0] & (~B[0]);
assign greater=t4|t6|t8;

//A<B
assign t9=(~A[2]) & B[2];
assign t10=(~A[2]) | B[2];
assign t11= t10 &(~A[1]) & B[1];
assign t12=(~A[1]) | B[1];
assign t13=t10 & t12 & (~A[0]) & B[0];
assign less=t9|t11|t13;
endmodule
