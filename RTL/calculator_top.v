/* * Module: 4-bit Calculator Top-Level
 * Author: Shashank
 * Date: July 2026
 * Description: Top-level wrapper connecting ALU and logic components
 */

module calculator_top(
    input [3:0] a, b,
    input [1:0] sel,
    output [3:0] result
);

    // Instantiate the ALU module we created earlier
    alu_4bit my_alu (
        .a(a), 
        .b(b), 
        .sel(sel), 
        .result(result)
    );

endmodule
