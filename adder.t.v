// Adder testbench
`timescale 1 ns / 1 ps
`include "adder.v"

module testFullAdder();
    reg a, b, carryin;
    wire sum, carryout;

    //behavioralFullAdder adder (sum, carryout, a, b, carryin);
    structuralFullAdder adder (sum, carryout, a, b, carryin);

    initial begin
    // Dump trace to a file. Open with gtkwave.
    $dumpfile("adder.vcd");
    $dumpvars;

        // Your test code here
    $display("A  B  C_in|  S  C_out");
    a=0;b=0;carryin=0; #1000 
    $display("%b  %b   %b  |  %b  %b", a, b, carryin, sum, carryout);
    a=1;b=0;carryin=0; #1000 
    $display("%b  %b   %b  |  %b  %b", a, b, carryin, sum, carryout);
    a=0;b=1;carryin=0; #1000 
    $display("%b  %b   %b  |  %b  %b", a, b, carryin, sum, carryout);
    a=0;b=0;carryin=1; #1000 
    $display("%b  %b   %b  |  %b  %b", a, b, carryin, sum, carryout);
    a=1;b=1;carryin=0; #1000 
    $display("%b  %b   %b  |  %b  %b", a, b, carryin, sum, carryout);
    a=1;b=0;carryin=1; #1000 
    $display("%b  %b   %b  |  %b  %b", a, b, carryin, sum, carryout);
    a=0;b=1;carryin=1; #1000 
    $display("%b  %b   %b  |  %b  %b", a, b, carryin, sum, carryout);
    a=1;b=1;carryin=1; #1000 
    $display("%b  %b   %b  |  %b  %b", a, b, carryin, sum, carryout);
    end
endmodule
