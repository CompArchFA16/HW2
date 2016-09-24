// Multiplexer testbench
`timescale 1 ns / 1 ps
`include "multiplexer.v"

module testMultiplexer ();
	reg address0, address1, in0, in1, in2, in3;
	wire out;
	structuralMultiplexer multiplexer (out, address0, address1, in0, in1, in2, in3);

	initial begin
	    $dumpfile("multiplexer.vcd");
		$dumpvars(0, testMultiplexer);

	    $display("address0 | address1 | in0 | in1 | in2 | in3 | out | Expected Out |");            // Prints header for truth table
	    address0=0;address1=0;in0=0; #1000                               // Set A and B, wait for update (#1)
	    $display("    %b    |    %b     |  %b  |  %b  |  %b  |  %b  |  %b  |      0      |", address0, address1, in0, in1, in2, in3, out);
	    address0=0;address1=0;in0=1; #1000                                 // Set A and B, wait for update (#1)
	    $display("    %b    |    %b     |  %b  |  %b  |  %b  |  %b  |  %b  |      1      |", address0, address1, in0, in1, in2, in3, out);
	    address0=0;address1=1;in2=0; #1000                                // Set A and B, wait for update (#1)
	    $display("    %b    |    %b     |  %b  |  %b  |  %b  |  %b  |  %b  |      0      |", address0, address1, in0, in1, in2, in3, out);
	    address0=0;address1=1;in2=1; #1000                                 // Set A and B, wait for update (#1)
	    $display("    %b    |    %b     |  %b  |  %b  |  %b  |  %b  |  %b  |      1      |", address0, address1, in0, in1, in2, in3, out);
		address0=1;address1=0;in1=0; #1000                                // Set A and B, wait for update (#1)
	    $display("    %b    |    %b     |  %b  |  %b  |  %b  |  %b  |  %b  |      0      |", address0, address1, in0, in1, in2, in3, out);
	    address0=1;address1=0;in1=1; #1000                                // Set A and B, wait for update (#1)
	    $display("    %b    |    %b     |  %b  |  %b  |  %b  |  %b  |  %b  |      1      |", address0, address1, in0, in1, in2, in3, out);
	    address0=1;address1=1;in3=0; #1000                                 // Set A and B, wait for update (#1)
	    $display("    %b    |    %b     |  %b  |  %b  |  %b  |  %b  |  %b  |      0      |", address0, address1, in0, in1, in2, in3, out);
	    address0=1;address1=1;in3=1; #1000                                 // Set A and B, wait for update (#1)
	    $display("    %b    |    %b     |  %b  |  %b  |  %b  |  %b  |  %b  |      1      |", address0, address1, in0, in1, in2, in3, out);
	   
	end
endmodule
