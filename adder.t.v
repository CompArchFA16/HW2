// Adder testbench
`timescale 1 ns / 1 ps
`include "adder.v"
`define AND and #50
`define OR or #50
`define NOT not #50

module testFullAdder();
    reg a, b, carryin;
    wire sum, carryout;

    behavioralFullAdder adder (sum, carryout, a, b, carryin);

    initial begin
        // Your test code here
    end
endmodule
