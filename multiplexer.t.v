// Multiplexer testbench
`timescale 1 ns / 1 ps
`include "multiplexer.v"

module testMultiplexer ();

    reg address0, address1;
    reg in0, in1, in2, in3;
    wire out;

    //behavioralMultiplexer multiplexer (out, address0, address1, in0, in1, in2, in3);
    structuralMultiplexer multiplexer (out, address0, address1, in0, in1, in2, in3);

    initial begin
    in0=1'bx; in1=1'bx; in2=1'bx; in3=1'bx; #1000

    $display("a0 a1 | in0 in1 in2 in3 | out | Expected Output");
    address0=0; address1=0; in0=1'b0; in1=1'bx; in2=1'bx; in3=1'bx; #1000
    $display("%b  %b  | %b   %b   %b   %b   | %b   | 0", address0, address1, in0, in1, in2, in3, out);
    address0=0; address1=0; in0=1'b1; in1=1'bx; in2=1'bx; in3=1'bx; #1000
    $display("%b  %b  | %b   %b   %b   %b   | %b   | 1", address0, address1, in0, in1, in2, in3, out);
    address0=1; address1=0; in0=1'bx; in1=1'b0; in2=1'bx; in3=1'bx; #1000
    $display("%b  %b  | %b   %b   %b   %b   | %b   | 0", address0, address1, in0, in1, in2, in3, out);
    address0=1; address1=0; in0=1'bx; in1=1'b1; in2=1'bx; in3=1'bx; #1000
    $display("%b  %b  | %b   %b   %b   %b   | %b   | 1", address0, address1, in0, in1, in2, in3, out);
    address0=0; address1=1; in0=1'bx; in1=1'bx; in2=1'b0; in3=1'bx; #1000
    $display("%b  %b  | %b   %b   %b   %b   | %b   | 0", address0, address1, in0, in1, in2, in3, out);
    address0=0; address1=1; in0=1'bx; in1=1'bx; in2=1'b1; in3=1'bx; #1000
    $display("%b  %b  | %b   %b   %b   %b   | %b   | 1", address0, address1, in0, in1, in2, in3, out);
    address0=1; address1=1; in0=1'bx; in1=1'bx; in2=1'bx; in3=1'b0; #1000
    $display("%b  %b  | %b   %b   %b   %b   | %b   | 0", address0, address1, in0, in1, in2, in3, out);
    address0=1; address1=1; in0=1'bx; in1=1'bx; in2=1'bx; in3=1'b1; #1000
    $display("%b  %b  | %b   %b   %b   %b   | %b   | 1", address0, address1, in0, in1, in2, in3, out);
    end

endmodule
