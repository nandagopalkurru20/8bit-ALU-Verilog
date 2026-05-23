`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.05.2026 16:01:16
// Design Name: 
// Module Name: ALU_8bit
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


module ALU_8bit(
    input  [7:0] A,
    input  [7:0] B,
    input  [3:0] S,

    output reg [7:0] Result,
    output reg Carry_Borrow,
    output reg Zero,
    output reg Overflow
);

reg [8:0] temp;

always @(*) begin

    // Default values
    Carry_Borrow = 0;
    Overflow = 0;

    case(S)

        4'b0000: begin
            // ADDITION
            temp = A + B;
            Result = temp[7:0];
            Carry_Borrow = temp[8];

            Overflow = (A[7] == B[7]) &&
                       (Result[7] != A[7]);
        end

        4'b0001: begin
            // SUBTRACTION
            temp = A - B;
            Result = temp[7:0];
            Carry_Borrow = temp[8];

            Overflow = (A[7] != B[7]) &&
                       (Result[7] != A[7]);
        end

        4'b0010: begin
            // AND
            Result = A & B;
        end

        4'b0011: begin
            // OR
            Result = A | B;
        end

        4'b0100: begin
            // XOR
            Result = A ^ B;
        end

        4'b0101: begin
            // NAND
            Result = ~(A & B);
        end

        4'b0110: begin
            // NOR
            Result = ~(A | B);
        end

        4'b0111: begin
            // XNOR
            Result = ~(A ^ B);
        end

        4'b1000: begin
            // SHIFT LEFT
            Result = A << 1;
        end

        4'b1001: begin
            // SHIFT RIGHT
            Result = A >> 1;
        end

        4'b1010: begin
            // INCREMENT
            Result = A + 1;
        end

        4'b1011: begin
            // DECREMENT
            Result = A - 1;
        end

        default: begin
            Result = 8'b00000000;
        end

    endcase

    // ZERO FLAG
    if(Result == 8'b00000000)
        Zero = 1;
    else
        Zero = 0;

end

endmodule
