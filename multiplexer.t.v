// Multiplexer testbench
`timescale 1 ns / 1 ps
`include "multiplexer.v"
`define AND and #50
`define OR or #50
`define NOT not #50

module testMultiplexer ();
    reg address0, address1, in0, in1, in2, in3;
    wire out;

    structuralMultiplexer multiplexer (out, address0, address1, in0, in1, in2, in3);

    initial begin
    $display("A0 A1 | in0 in1 in2 in3 | Out | Expected Out");
    address0=0; address1=0; in0=0; in1=0; in2=0; in3=0; #1000
    $display("%b %b | %b %b %b %b | %b | 0", address0, address1, in0, in1, in2, in3, out);
    address0=0; address1=0; in0=0; in1=1; in2=1; in3=1; #1000
    $display("%b %b | %b %b %b %b | %b | 0", address0, address1, in0, in1, in2, in3, out);
    address0=0; address1=0; in0=1; in1=0; in2=0; in3=0; #1000
    $display("%b %b | %b %b %b %b | %b | 1", address0, address1, in0, in1, in2, in3, out);
    address0=1; address1=0; in0=0; in1=0; in2=0; in3=0; #1000
    $display("%b %b | %b %b %b %b | %b | 0", address0, address1, in0, in1, in2, in3, out);
    address0=1; address1=0; in0=0; in1=1; in2=0; in3=0; #1000
    $display("%b %b | %b %b %b %b | %b | 1", address0, address1, in0, in1, in2, in3, out);
    address0=0; address1=1; in0=0; in1=0; in2=0; in3=0; #1000
    $display("%b %b | %b %b %b %b | %b | 0", address0, address1, in0, in1, in2, in3, out);
    address0=0; address1=1; in0=0; in1=0; in2=1; in3=0; #1000
    $display("%b %b | %b %b %b %b | %b | 1", address0, address1, in0, in1, in2, in3, out);
    address0=1; address1=1; in0=0; in1=0; in2=0; in3=0; #1000
    $display("%b %b | %b %b %b %b | %b | 0", address0, address1, in0, in1, in2, in3, out);
    address0=1; address1=1; in0=0; in1=0; in2=0; in3=1; #1000
    $display("%b %b | %b %b %b %b | %b | 1", address0, address1, in0, in1, in2, in3, out);
    end
endmodule
