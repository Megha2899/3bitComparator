`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.11.2022 22:19:48
// Design Name: 
// Module Name: Three_bit_Comparator_TB
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


module Three_bit_Comparator_TB;

reg [2:0] A, B;
wire equal,greater,less;
Three_bit_Comparator dut (equal,greater,less, A, B);
initial begin
$monitor ("%t | A = %b| B = %b| equal = %d| greater = %d| less = %d", $time, A, B, equal,greater,less,);
    $dumpfile("dump.vcd");
    $dumpvars();
    A = 3'b111; B = 3'b111;
 #20 A = 3'b100; B = 3'b011;
 #20 A = 3'b001; B = 3'b101;
 #20 A = 3'b101; B = 3'b101;
end
endmodule
