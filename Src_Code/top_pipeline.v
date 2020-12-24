`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.09.2020 13:19:44
// Design Name: 
// Module Name: top_pipeline
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


module top_pipeline(
    input clk,
    input [7:0] A,
    input [7:0] B,
    output reg [8:0] Sum =0
    );
    
    reg [7:0] Q_A, Q_B;
    wire [8:0] S;
    wire [6:0] C;
    //reg [6:0] RegC;
    
    always@(posedge clk)
        begin
            Q_A <= A;
            Q_B <= B;
            Sum <= S;
      //      RegC <=C;
        end
        
        fa FA0(.A(Q_A[0]),.B(Q_B[0]),.C(1'b0),.Sum(S[0]),.Carry(C[0]));
        fa FA1(.A(Q_A[1]),.B(Q_B[1]),.C(C[0]),.Sum(S[1]),.Carry(C[1]));
        fa FA2(.A(Q_A[2]),.B(Q_B[2]),.C(C[1]),.Sum(S[2]),.Carry(C[2]));
        fa FA3(.A(Q_A[3]),.B(Q_B[3]),.C(C[2]),.Sum(S[3]),.Carry(C[3]));
        fa FA4(.A(Q_A[4]),.B(Q_B[4]),.C(C[3]),.Sum(S[4]),.Carry(C[4]));
        fa FA5(.A(Q_A[5]),.B(Q_B[5]),.C(C[4]),.Sum(S[5]),.Carry(C[5]));
        fa FA6(.A(Q_A[6]),.B(Q_B[6]),.C(C[5]),.Sum(S[6]),.Carry(C[6]));
        fa FA7(.A(Q_A[7]),.B(Q_B[7]),.C(C[6]),.Sum(S[7]),.Carry(S[8]));
endmodule
