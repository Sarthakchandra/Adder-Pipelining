`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.09.2020 11:57:46
// Design Name: 
// Module Name: fa
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


module fa(
    input A,
    input B,
    input C,
    output Sum,
    output Carry
    );
    assign Sum = A^B^C;             // Logic of Sum for the adder
    assign Carry = ((A^B)&C)| (A&B);// Logic of Carry for the adder 
endmodule
