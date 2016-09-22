// Adder testbench
`timescale 1 ns / 1 ps
`include "adder.v"

module testFullAdder();
    reg a, b, carryin;
    wire sum, carryout;

    behavioralFullAdder badder (bsum, bcarryout, a, b, carryin);
    structuralFullAdder adder (sum, carryout, a, b, carryin);

    initial begin

    	// Dump trace to a file. Open with gtkwave.
        $dumpfile("fulladder_trace.vcd");
        $dumpvars();

    	$display("Full Adder         Expected");
	    $display(" A B Cin | S Cout   S Cout");            
	    a=0; b=0; carryin=0; #1000                                 
	    $display(" %b %b  %b  | %b   %b    %b   %b", a, b, carryin, sum, carryout, bsum, bcarryout);
	    a=1; b=0; carryin=0; #1000                                 
	    $display(" %b %b  %b  | %b   %b    %b   %b", a, b, carryin, sum, carryout, bsum, bcarryout);
	    a=0; b=1; carryin=0; #1000                                 
	    $display(" %b %b  %b  | %b   %b    %b   %b", a, b, carryin, sum, carryout, bsum, bcarryout);
	    a=1; b=1; carryin=0; #1000                                 
	    $display(" %b %b  %b  | %b   %b    %b   %b", a, b, carryin, sum, carryout, bsum, bcarryout);
	    a=0; b=0; carryin=1; #1000                                 
	    $display(" %b %b  %b  | %b   %b    %b   %b", a, b, carryin, sum, carryout, bsum, bcarryout);
	    a=1; b=0; carryin=1; #1000                                 
	    $display(" %b %b  %b  | %b   %b    %b   %b", a, b, carryin, sum, carryout, bsum, bcarryout);
	    a=0; b=1; carryin=1; #1000                                 
	    $display(" %b %b  %b  | %b   %b    %b   %b", a, b, carryin, sum, carryout, bsum, bcarryout);
	    a=1; b=1; carryin=1; #1000                                 
	    $display(" %b %b  %b  | %b   %b    %b   %b", a, b, carryin, sum, carryout, bsum, bcarryout);
	    $display();
    end
endmodule
