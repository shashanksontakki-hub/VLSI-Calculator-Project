module tb;
    reg [3:0] a, b;
    reg cin;
    wire [3:0] sum;
    wire cout;
    rca_4bit uut (a, b, cin, sum, cout);
    initial begin
        $monitor("Time=%0t | A=%d, B=%d, Cin=%b | Sum=%d, Cout=%b", $time, a, b, cin, sum, cout);
        
        a=4'd2; b=4'd3; cin=0; #10; // 2 + 3 = 5
        a=4'd8; b=4'd8; cin=0; #10; // 8 + 8 = 16 (Result 0, Carry 1)
        a=4'd15; b=4'd1; cin=0; #10; // 15 + 1 = 16
    end
endmodule
