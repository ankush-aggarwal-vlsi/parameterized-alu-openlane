`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/02/2026 07:50:41 PM
// Design Name: 
// Module Name: parameterized_alu_32_bit_tb
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


module parameterized_alu_32_bit_tb ;
parameter WIDTH = 32 ;

reg [WIDTH-1:0] A ; 
reg [WIDTH-1:0] B ;
reg [3:0] opcode ;
wire [WIDTH-1:0] Result ; 
wire Zero ;
wire Carry ;
wire Overflow ;
wire Negative ;
parameterized_alu_32_bit #(.WIDTH(WIDTH)) uut(.A(A) , .B(B) , .opcode(opcode) , .Result(Result) , .Zero(Zero) , .Carry(Carry) , .Overflow(Overflow) , .Negative(Negative));
integer j ;
initial 
begin
$dumpfile("parameterized_alu_32_bit.vcd");
$dumpvars(0, parameterized_alu_32_bit_tb);

$monitor($time, 
                "A = %b , B = %b , opcode = %b , Result = %b , Zero = %b , Carry = %b , Overflow = %b , Negative = %b",
                A,B,opcode,Result,Zero,Carry,Overflow,Negative);

A = 32'd10;
B = 32'd20;
opcode = 4'b0000;
#10;  

A = 32'h7FFFFFFF;
B = 32'h00000001;
opcode = 4'b0000;
#10;

A = 32'd20;
B = 32'd5;
opcode = 4'b0001;
#10;  

A = 32'hF0F0F0F0;
B = 32'h0F0F0F0F;
opcode = 4'b0010;
#10;   

A = 32'hF0F0F0F0;
B = 32'h0F0F0F0F;
opcode = 4'b0011;
#10; 
 
A = 32'd10;
B = 32'd10;
opcode = 4'b0001; 
#10;

A = 32'd5;
B = 32'd10;
opcode = 4'b0001; 
#10;

A = 32'hFFFFFFFF;
B = 32'h00000001;
opcode = 4'b0000;
#10;

A = 32'hAAAA5555;
B = 32'h5555AAAA;
opcode = 4'b0100;
#10;

A = 32'h0000FFFF;
B = 32'd0;
opcode = 4'b0101;
#10;

A = 32'hFFFFFFFF;
B = 32'h00000000;
opcode = 4'b0110;
#10;

A = 32'h00000000;
B = 32'h00000000;
opcode = 4'b0111;
#10;

A = 32'hAAAAAAAA;
B = 32'hAAAAAAAA;
opcode = 4'b1000;
#10;

A = 32'd5;
B = 32'd10;
opcode = 4'b1001;
#10;

A = 32'd5;
B = 32'd2;
opcode = 4'b1010;
#10;

A = 32'd16;
B = 32'd2;
opcode = 4'b1011;
#10;

A = -32'd16;
B = 32'd2;
opcode = 4'b1100;
#10;

$finish ;

end

endmodule
