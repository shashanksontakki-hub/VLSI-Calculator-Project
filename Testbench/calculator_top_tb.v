/* * Module: Top-Level Calculator Testbench
 * Author: Shashank
 * Date: June 2026
 * Description: Final verification of the top-level integration
 */

module calculator_top_tb;
    reg [3:0] a, b;
    reg [1:0] sel;
    wire [3:0] result;

    // Instantiate the Top-Level module
    calculator_top uut (
        .a(a), .b(b), .sel(sel), .result(result)
    );

    initial begin
        $monitor("Time=%0t | sel=%b | a=%d, b=%d | result=%d", $time, sel, a, b, result);

        // System Level Test: Verification of routing
        a = 4'd9; b = 4'd2; sel = 2'b00; #10; // Add
        a = 4'd9; b = 4'd2; sel = 2'b01; #10; // Sub
        
        $finish;
    end
endmodule
