// Multiplexer testbench
`timescale 1 ns / 1 ps
`include "multiplexer.v"

module testMultiplexer ();
	reg in0, in1, in2, in3;
	reg address0, address1;
    wire out;

    //behavioralMultiplexer multiplexer (out, address0, address1, in0, in1, in2, in3);
    structuralMultiplexer multiplexer (out, address0, address1, in0, in1, in2, in3);

    initial begin
    // Your test code here

    $dumpfile("multiplexer.vcd");
    $dumpvars;

    $display("in0 in1 in2 in3 s0 s1 | out | Expected Output");

    // For select0 = 0 and select1 = 0
    in0=0;in1=0;in2=0;in3=0;address0=0;address1=0; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 0", in0, in1, in2, in3, address0, address1, out);
    in0=0;in1=0;in2=0;in3=1;address0=0;address1=0; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 0", in0, in1, in2, in3, address0, address1, out);
    in0=0;in1=0;in2=1;in3=0;address0=0;address1=0; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 0", in0, in1, in2, in3, address0, address1, out);
    in0=0;in1=0;in2=1;in3=1;address0=0;address1=0; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 0", in0, in1, in2, in3, address0, address1, out);
    in0=0;in1=1;in2=0;in3=0;address0=0;address1=0; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 0", in0, in1, in2, in3, address0, address1, out);
    in0=0;in1=1;in2=0;in3=1;address0=0;address1=0; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 0", in0, in1, in2, in3, address0, address1, out);
    in0=0;in1=1;in2=1;in3=0;address0=0;address1=0; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 0", in0, in1, in2, in3, address0, address1, out);
    in0=0;in1=1;in2=1;in3=1;address0=0;address1=0; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 0", in0, in1, in2, in3, address0, address1, out);
    in0=1;in1=0;in2=0;in3=0;address0=0;address1=0; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 1", in0, in1, in2, in3, address0, address1, out);
    in0=1;in1=0;in2=0;in3=1;address0=0;address1=0; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 1", in0, in1, in2, in3, address0, address1, out);
    in0=1;in1=0;in2=1;in3=0;address0=0;address1=0; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 1", in0, in1, in2, in3, address0, address1, out);
    in0=1;in1=0;in2=1;in3=1;address0=0;address1=0; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 1", in0, in1, in2, in3, address0, address1, out);
    in0=1;in1=1;in2=0;in3=0;address0=0;address1=0; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 1", in0, in1, in2, in3, address0, address1, out);
    in0=1;in1=1;in2=0;in3=1;address0=0;address1=0; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 1", in0, in1, in2, in3, address0, address1, out);
    in0=1;in1=1;in2=1;in3=0;address0=0;address1=0; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 1", in0, in1, in2, in3, address0, address1, out);
    in0=1;in1=1;in2=1;in3=1;address0=0;address1=0; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 1", in0, in1, in2, in3, address0, address1, out);

    // For select0 = 1 and select1 = 0
    $display("-----------------------------------");
    in0=0;in1=0;in2=0;in3=0;address0=1;address1=0; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 0", in0, in1, in2, in3, address0, address1, out);
    in0=0;in1=0;in2=0;in3=1;address0=1;address1=0; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 0", in0, in1, in2, in3, address0, address1, out);
    in0=0;in1=0;in2=1;in3=0;address0=1;address1=0; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 0", in0, in1, in2, in3, address0, address1, out);
    in0=0;in1=0;in2=1;in3=1;address0=1;address1=0; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 0", in0, in1, in2, in3, address0, address1, out);
    in0=0;in1=1;in2=0;in3=0;address0=1;address1=0; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 1", in0, in1, in2, in3, address0, address1, out);
    in0=0;in1=1;in2=0;in3=1;address0=1;address1=0; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 1", in0, in1, in2, in3, address0, address1, out);
    in0=0;in1=1;in2=1;in3=0;address0=1;address1=0; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 1", in0, in1, in2, in3, address0, address1, out);
    in0=0;in1=1;in2=1;in3=1;address0=1;address1=0; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 1", in0, in1, in2, in3, address0, address1, out);
    in0=1;in1=0;in2=0;in3=0;address0=1;address1=0; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 0", in0, in1, in2, in3, address0, address1, out);
    in0=1;in1=0;in2=0;in3=1;address0=1;address1=0; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 0", in0, in1, in2, in3, address0, address1, out);
    in0=1;in1=0;in2=1;in3=0;address0=1;address1=0; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 0", in0, in1, in2, in3, address0, address1, out);
    in0=1;in1=0;in2=1;in3=1;address0=1;address1=0; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 0", in0, in1, in2, in3, address0, address1, out);
    in0=1;in1=1;in2=0;in3=0;address0=1;address1=0; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 1", in0, in1, in2, in3, address0, address1, out);
    in0=1;in1=1;in2=0;in3=1;address0=1;address1=0; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 1", in0, in1, in2, in3, address0, address1, out);
    in0=1;in1=1;in2=1;in3=0;address0=1;address1=0; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 1", in0, in1, in2, in3, address0, address1, out);
    in0=1;in1=1;in2=1;in3=1;address0=1;address1=0; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 1", in0, in1, in2, in3, address0, address1, out);

    // For select0 = 0 and select1 = 1
    $display("-----------------------------------");
    in0=0;in1=0;in2=0;in3=0;address0=0;address1=1; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 0", in0, in1, in2, in3, address0, address1, out);
    in0=0;in1=0;in2=0;in3=1;address0=0;address1=1; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 0", in0, in1, in2, in3, address0, address1, out);
    in0=0;in1=0;in2=1;in3=0;address0=0;address1=1; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 1", in0, in1, in2, in3, address0, address1, out);
    in0=0;in1=0;in2=1;in3=1;address0=0;address1=1; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 1", in0, in1, in2, in3, address0, address1, out);
    in0=0;in1=1;in2=0;in3=0;address0=0;address1=1; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 0", in0, in1, in2, in3, address0, address1, out);
    in0=0;in1=1;in2=0;in3=1;address0=0;address1=1; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 0", in0, in1, in2, in3, address0, address1, out);
    in0=0;in1=1;in2=1;in3=0;address0=0;address1=1; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 1", in0, in1, in2, in3, address0, address1, out);
    in0=0;in1=1;in2=1;in3=1;address0=0;address1=1; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 1", in0, in1, in2, in3, address0, address1, out);
    in0=1;in1=0;in2=0;in3=0;address0=0;address1=1; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 0", in0, in1, in2, in3, address0, address1, out);
    in0=1;in1=0;in2=0;in3=1;address0=0;address1=1; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 0", in0, in1, in2, in3, address0, address1, out);
    in0=1;in1=0;in2=1;in3=0;address0=0;address1=1; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 1", in0, in1, in2, in3, address0, address1, out);
    in0=1;in1=0;in2=1;in3=1;address0=0;address1=1; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 1", in0, in1, in2, in3, address0, address1, out);
    in0=1;in1=1;in2=0;in3=0;address0=0;address1=1; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 0", in0, in1, in2, in3, address0, address1, out);
    in0=1;in1=1;in2=0;in3=1;address0=0;address1=1; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 0", in0, in1, in2, in3, address0, address1, out);
    in0=1;in1=1;in2=1;in3=0;address0=0;address1=1; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 1", in0, in1, in2, in3, address0, address1, out);
    in0=1;in1=1;in2=1;in3=1;address0=0;address1=1; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 1", in0, in1, in2, in3, address0, address1, out);

    // For select0 = 1 and select1 = 1
    $display("-----------------------------------");
    in0=0;in1=0;in2=0;in3=0;address0=1;address1=1; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 0", in0, in1, in2, in3, address0, address1, out);
    in0=0;in1=0;in2=0;in3=1;address0=1;address1=1; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 1", in0, in1, in2, in3, address0, address1, out);
    in0=0;in1=0;in2=1;in3=0;address0=1;address1=1; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 0", in0, in1, in2, in3, address0, address1, out);
    in0=0;in1=0;in2=1;in3=1;address0=1;address1=1; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 1", in0, in1, in2, in3, address0, address1, out);
    in0=0;in1=1;in2=0;in3=0;address0=1;address1=1; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 0", in0, in1, in2, in3, address0, address1, out);
    in0=0;in1=1;in2=0;in3=1;address0=1;address1=1; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 1", in0, in1, in2, in3, address0, address1, out);
    in0=0;in1=1;in2=1;in3=0;address0=1;address1=1; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 0", in0, in1, in2, in3, address0, address1, out);
    in0=0;in1=1;in2=1;in3=1;address0=1;address1=1; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 1", in0, in1, in2, in3, address0, address1, out);
    in0=1;in1=0;in2=0;in3=0;address0=1;address1=1; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 0", in0, in1, in2, in3, address0, address1, out);
    in0=1;in1=0;in2=0;in3=1;address0=1;address1=1; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 1", in0, in1, in2, in3, address0, address1, out);
    in0=1;in1=0;in2=1;in3=0;address0=1;address1=1; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 0", in0, in1, in2, in3, address0, address1, out);
    in0=1;in1=0;in2=1;in3=1;address0=1;address1=1; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 1", in0, in1, in2, in3, address0, address1, out);
    in0=1;in1=1;in2=0;in3=0;address0=1;address1=1; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 0", in0, in1, in2, in3, address0, address1, out);
    in0=1;in1=1;in2=0;in3=1;address0=1;address1=1; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 1", in0, in1, in2, in3, address0, address1, out);
    in0=1;in1=1;in2=1;in3=0;address0=1;address1=1; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 0", in0, in1, in2, in3, address0, address1, out);
    in0=1;in1=1;in2=1;in3=1;address0=1;address1=1; #250
    $display("%b   %b   %b   %b   %b   %b |  %b  | 1", in0, in1, in2, in3, address0, address1, out);



    end
endmodule
