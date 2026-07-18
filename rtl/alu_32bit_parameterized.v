`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/02/2026 07:13:05 PM
// Design Name: 
// Module Name: parameterized_alu_32_bit
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


module parameterized_alu_32_bit #(
parameter WIDTH = 32)(
input [WIDTH-1:0] A,
input [WIDTH-1:0] B,
input [3:0] opcode,

output reg[WIDTH-1:0] Result,
output reg Zero,
output reg Carry,
output reg Overflow,
output reg Negative

    );

always @(*) 
begin
Result = 0;
Zero = 0 ;
Carry = 0;
Overflow = 0;
Negative = 0;

case (opcode)
    4'b0000 : begin
    {Carry , Result} = A + B ;
    
    Overflow = (A[WIDTH-1] == B[WIDTH-1]) &&
                   (Result[WIDTH-1] != A[WIDTH-1]);
    end
    
    4'b0001 : begin
    {Carry , Result} = A - B ;
    
    Overflow = (A[WIDTH-1] != B[WIDTH-1]) &&
                   (Result[WIDTH-1] != A[WIDTH-1]);
    end
    
    4'b0010 : begin
    Result = A & B ;
    end
    
    4'b0011 : begin
    Result = A | B ;
    end
    
    4'b0100 : begin
    Result = A ^ B ;
    end

    4'b0101 : begin
    Result = ~A;
    end

    4'b0110 : begin
    Result = ~(A & B);
    end

    4'b0111 : begin
    Result = ~(A | B);
    end
    
    4'b1000 : begin
    Result = ~(A ^ B);
    end
    
    4'b1001 : begin
    if ($signed(A) < $signed(B))
        Result = 1;
    else
        Result = 0;
    end
    
    4'b1010 : begin
        Result = A << B[4:0];
    end
    
    4'b1011 : begin
        Result = A >> B[4:0];
    end
    
    4'b1100 : begin
        Result = $signed(A) >>> B[4:0];
    end
    
    default : begin
    Result = 0;
    end
    
endcase
    Zero = (Result == 0);
    Negative = Result[WIDTH-1];
end
   
endmodule
