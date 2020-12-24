`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.09.2020 12:04:46
// Design Name: 
// Module Name: adder_tb
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


module adder_tb(

    );
    reg clk;
    reg [7:0] A,B; //Variable definition
    wire[8:0] Sum;
    top_pipeline tb1(.clk(clk),.A(A),.B(B),.Sum(Sum)); // Create an instance of the adder
    initial // initialize registers
        begin
        clk = 1'b0;
        A = 8'd0;
        B = 8'd0;
        end
     initial //Stimulus
        begin
        @(posedge clk) A = 8'd5;B =8'd4;
        @(posedge clk) A = 8'd5;B =8'd4;
        @(posedge clk) A = 8'd4;B =8'd4;
        @(posedge clk) A = 8'd4;B =8'd4;
        @(posedge clk) A = 8'd5;B =8'd5;
        @(posedge clk) A = 8'd5;B =8'd5;
        @(posedge clk) A = 8'd7;B =8'd7;
        end      
        always #5 clk = ~clk;
endmodule
