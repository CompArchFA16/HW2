//For each device, first write a test bench that verifies the appropriate behavior of your device. We have already completed this for you for the 2 bit decoder as an //example, so you will only have to write the other two.

//The test bench should:

//Instantiate a copy of the device it is testing (Device Under Test = DUT)
//Show what the truth table should be
//Show what the truth table is

// Multiplexer testbench
`timescale 1 ns / 1 ps
`include "multiplexer.v"

module testMultiplexer ();

    reg in0, in1, in2, in3, addr0, addr1;
    wire out, carryout;

    //behavioralMultiplexer multiplexer(out,addr0, addr1, in0, in1, in2, in3);
    structuralMultiplexer multiplexer(out,addr0, addr1, in0, in1, in2, in3);

    initial begin
    $dumpfile("moo.vcd"); //open later in gtkwave
    $dumpvars;

    $display("A1 A0 | 00 01 02 03 | Out | Expected outcome");
    addr0=0;addr1=0; in0=1;in1=0;in2=0;in3=0; #1000
    $display("%b  %b | %b  %b  %b  %b | %b | 1 ", addr1, addr0, in0, in1, in2, in3, out);
    addr0=0;addr1=0; in0=0;in1=0;in2=0;in3=0; #1000
    $display("%b  %b | %b  %b  %b  %b | %b | 0 ", addr1, addr0, in0, in1, in2, in3, out);
    addr0=0;addr1=0; in0=0;in1=1;in2=0;in3=0; #1000
    $display("%b  %b | %b  %b  %b  %b | %b | 0 ", addr1, addr0, in0, in1, in2, in3, out);
    addr0=0;addr1=0; in0=0;in1=0;in2=1;in3=0; #1000
    $display("%b  %b | %b  %b  %b  %b | %b | 0 ", addr1, addr0, in0, in1, in2, in3, out);
    addr0=0;addr1=0; in0=1;in1=0;in2=0;in3=1; #1000
    $display("%b  %b | %b  %b  %b  %b | %b | 1 ", addr1, addr0, in0, in1, in2, in3, out);

    addr0=1;addr1=0; in0=0;in1=1;in2=0;in3=0; #1000
    $display("%b  %b | %b  %b  %b  %b | %b | 1 ", addr1, addr0, in0, in1, in2, in3, out);
    addr0=1;addr1=0; in0=0;in1=0;in2=0;in3=0; #1000
    $display("%b  %b | %b  %b  %b  %b | %b | 0 ", addr1, addr0, in0, in1, in2, in3, out);
    addr0=1;addr1=0; in0=1;in1=0;in2=0;in3=0; #1000
    $display("%b  %b | %b  %b  %b  %b | %b | 0 ", addr1, addr0, in0, in1, in2, in3, out);
    addr0=1;addr1=0; in0=0;in1=0;in2=1;in3=0; #1000
    $display("%b  %b | %b  %b  %b  %b | %b | 0 ", addr1, addr0, in0, in1, in2, in3, out);
    addr0=1;addr1=0; in0=0;in1=1;in2=0;in3=1; #1000
    $display("%b  %b | %b  %b  %b  %b | %b | 1 ", addr1, addr0, in0, in1, in2, in3, out);

    addr0=0;addr1=1; in0=0;in1=0;in2=1;in3=0; #1000
    $display("%b  %b | %b  %b  %b  %b | %b | 1 ", addr1, addr0, in0, in1, in2, in3, out);
    addr0=0;addr1=1; in0=0;in1=0;in2=0;in3=0; #1000
    $display("%b  %b | %b  %b  %b  %b | %b | 0 ", addr1, addr0, in0, in1, in2, in3, out);
    addr0=0;addr1=1; in0=1;in1=0;in2=0;in3=0; #1000
    $display("%b  %b | %b  %b  %b  %b | %b | 0 ", addr1, addr0, in0, in1, in2, in3, out);
    addr0=0;addr1=1; in0=0;in1=1;in2=0;in3=0; #1000
    $display("%b  %b | %b  %b  %b  %b | %b | 0 ", addr1, addr0, in0, in1, in2, in3, out);
    addr0=0;addr1=1; in0=1;in1=0;in2=1;in3=1; #1000
    $display("%b  %b | %b  %b  %b  %b | %b | 1 ", addr1, addr0, in0, in1, in2, in3, out);

    addr0=1;addr1=1; in0=0;in1=0;in2=0;in3=1; #1000
    $display("%b  %b | %b  %b  %b  %b | %b | 1 ", addr1, addr0, in0, in1, in2, in3, out);
    addr0=1;addr1=1; in0=1;in1=0;in2=0;in3=0; #1000
    $display("%b  %b | %b  %b  %b  %b | %b | 0 ", addr1, addr0, in0, in1, in2, in3, out);
    addr0=1;addr1=1; in0=0;in1=1;in2=0;in3=0; #1000
    $display("%b  %b | %b  %b  %b  %b | %b | 0 ", addr1, addr0, in0, in1, in2, in3, out);
    addr0=1;addr1=1; in0=1;in1=0;in2=1;in3=1; #1000
    $display("%b  %b | %b  %b  %b  %b | %b | 1 ", addr1, addr0, in0, in1, in2, in3, out);

    end
endmodule
