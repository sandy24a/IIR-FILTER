module iirfilter_tb;
    reg clk, rst;
    reg [3:0] a, x;
    wire [3:0] y;

    // Instantiate the iirfilter module
    iirfilter iir1(.clk(clk), .a(a), .x(x), .y(y));

    // Clock generation: toggle clk every 5 time units
    initial begin
        clk = 0;
    end
    always
        #5 clk = !clk;

    // Apply reset and input signals, and dump waveform
    initial begin
        $dumpfile("hello_tb.vcd");  // Corrected file extension to .vcd for GTKWave compatibility
        $dumpvars(0, iirfilter_tb); // Added missing semicolon
        rst = 1;
        a = 4'd2;
        x = 4'd1;
        #10 rst = 0;                // Added space between #10 and rst
        a = 4'd2;
        x = 4'd1;
        #100 $finish;               // Added missing semicolon
    end
endmodule

// Declare the iirfilter module
module iirfilter (
    input clk,
    input [3:0] a, x,
    output reg [3:0] y
);
    // Define the behavior of the filter (left blank for now)
    always @(posedge clk) begin
        // Placeholder logic for the filter (can be replaced with actual filter logic)
        y <= x + a;  // Example logic, just for illustration
    end
endmodule
