/* * Module: ALU Testbench
 * Author: Shashank
 * Date: June 2026
 * Description: Verification of 4-bit ALU operations
 */

module alu_tb;
    reg [3:0] a, b;
    reg [1:0] sel;
    wire [3:0] result;

    // Instantiate the ALU
    alu_4bit uut (
        .a(a), 
        .b(b), 
        .sel(sel), 
        .result(result)
    );

    initial begin
        $monitor("Time=%0t | sel=%b | a=%d, b=%d | result=%d", $time, sel, a, b, result);

        // Test Addition (00)
        a = 4'd5; b = 4'd3; sel = 2'b00; #10;
        
        // Test Subtraction (01)
        a = 4'd8; b = 4'd2; sel = 2'b01; #10;
        
        // Test AND (10)
        a = 4'b1010; b = 4'b1100; sel = 2'b10; #10;
        
        $finish;
    end
endmodule
