//For each device, first write a test bench that verifies the appropriate behavior of your device. We have already completed this for you for the 2 bit decoder as an //example, so you will only have to write the other two.

//The test bench should:

//Instantiate a copy of the device it is testing (Device Under Test = DUT)
//Show what the truth table should be
//Show what the truth table is

// Adder testbench
`timescale 1 ns / 1 ps
`include "adder.v"

module testFullAdder();
    reg a, b, carryin;
    wire sum, carryout;

    //behavioralFullAdder adder(sum, carryout, a, b, carryin);
    structuralFullAdder adder (sum, carryout, a, b, carryin);

    initial begin
    $dumpfile("adder.vcd"); //for gtkwave
    $dumpvars;

    $display("A B Cin | Cout Sum | Expected Output");
    a = 0 ; b=0; carryin=0; #1000
    $display("%b  %b  %b |  %b  %b  | Remainder 0 Sum 0", a, b, carryin, carryout, sum);
    a = 0 ; b=0; carryin=1; #1000
    $display("%b  %b  %b |  %b  %b  | Remainder 0 Sum 1", a, b, carryin, carryout, sum);
    a = 0 ; b=1; carryin=0; #1000
    $display("%b  %b  %b |  %b  %b  | Remainder 0 Sum 1", a, b, carryin, carryout, sum);
    a = 0 ; b=1; carryin=1; #1000
    $display("%b  %b  %b |  %b  %b  | Remainder 1 Sum 0", a, b, carryin, carryout, sum);
    a = 1 ; b=0; carryin=0; #1000
    $display("%b  %b  %b |  %b  %b  | Remainder 0 Sum 1", a, b, carryin, carryout, sum);
    a = 1 ; b=0; carryin=1; #1000
    $display("%b  %b  %b |  %b  %b  | Remainder 1 Sum 0", a, b, carryin, carryout, sum);
    a = 1 ; b=1; carryin=0; #1000
    $display("%b  %b  %b |  %b  %b  | Remainder 1 Sum 0", a, b, carryin, carryout, sum);
    a = 1 ; b=1; carryin=1; #1000
    $display("%b  %b  %b |  %b  %b  | Remainder 1 Sum 1", a, b, carryin, carryout, sum);
    end

endmodule
