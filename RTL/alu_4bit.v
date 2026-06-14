/* * Module: 4-bit ALU
 * Author: Shashank
 * Date: June 2026
 * Description: Arithmetic Logic Unit with Add, Sub, and AND functionality
 */

module alu_4bit(
    input [3:0] a, b,
    input [1:0] sel, // Control signal: 00=Add, 01=Sub, 10=AND
    output reg [3:0] result
);

    always @(*) begin
        case(sel)
            2'b00: result = a + b;           // Addition
            2'b01: result = a - b;           // Subtraction
            2'b10: result = a & b;           // Bitwise AND
            default: result = 4'b0000;       // Reset state
        endcase
    end
endmodule
