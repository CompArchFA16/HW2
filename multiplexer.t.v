// Multiplexer testbench
`timescale 1 ns / 1 ps
`include "multiplexer.v"

module testMultiplexer ();
    reg address0, address1;
    reg in0, in1, in2, in3;
    wire out;

    //behavioralMultiplexer mult (out, address0, address1, in0, in1, in2, in3);
    structuralMultiplexer mult (out, address0, address1, in0, in1, in2, in3);

    initial begin
    in0=0;in1=0;in2=0;in3=0; #1000

    // in0
    $display("A0 A1 | in0 in1 in2 in3 | out");
    address0=0;address1=0;in0=1; #1000
    $display("%b  %b  | %b   %b   %b   %b   | %b", address0, address1, in0, in1, in2, in3, out);

    // in1
    address0=1;address1=0;in0=0;in1=1; #1000
    $display("%b  %b  | %b   %b   %b   %b   | %b", address0, address1, in0, in1, in2, in3, out);

    // in2
    address0=0;address1=1;in1=0;in2=1; #1000
    $display("%b  %b  | %b   %b   %b   %b   | %b", address0, address1, in0, in1, in2, in3, out);

    // in3
    address0=1;address1=1;in2=0;in3=1; #1000
    $display("%b  %b  | %b   %b   %b   %b   | %b", address0, address1, in0, in1, in2, in3, out);

    end

endmodule
