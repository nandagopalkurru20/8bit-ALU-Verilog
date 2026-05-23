`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.05.2026 12:44:14
// Design Name: 
// Module Name: ALU8_BIT_TB
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


module ALU8_BIT_TB;
reg [7:0] A;
reg [7:0] B;
reg [3:0] S;

wire [7:0] Result;
wire Carry_Borrow;
wire Zero;
wire Overflow;

ALU_8bit uut(
    .A(A),
    .B(B),
    .S(S),
    .Result(Result),
    .Carry_Borrow(Carry_Borrow),
    .Zero(Zero),
    .Overflow(Overflow)
);

initial begin

    A = 8'd15;
    B = 8'd10;

    // ADDITION
    S = 4'b0000;
    #10;

    // SUBTRACTION
    S = 4'b0001;
    #10;

    // AND
    S = 4'b0010;
    #10;

    // OR
    S = 4'b0011;
    #10;

    // XOR
    S = 4'b0100;
    #10;

    // NAND
    S = 4'b0101;
    #10;

    // NOR
    S = 4'b0110;
    #10;

    // XNOR
    S = 4'b0111;
    #10;

    // SHIFT LEFT
    S = 4'b1000;
    #10;

    // SHIFT RIGHT
    S = 4'b1001;
    #10;

    // INCREMENT
    S = 4'b1010;
    #10;

    // DECREMENT
    S = 4'b1011;
    #10;

    $finish;

end

endmodule
