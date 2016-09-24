// Adder testbench
`timescale 1 ns / 1 ps
`include "adder.v"

module testFullAdder();
    reg a, b, carryin;
    wire sum, carryout;

    structuralFullAdder adder (sum, carryout, a, b, carryin);

    initial begin

    	$dumpfile("adder.vcd");
		$dumpvars(0, testFullAdder);
        $display("a b | carryin | sum | carryout | Expected carryout/sum |");            // Prints header for truth table
    	a=0;b=0;carryin=1; #1000                                // Set A and B, wait for update (#1)
	    $display("%b %b |    %b    |  %b  |    %b     |      0/1       |", a, b, carryin, sum, carryout);
	    a=0;b=1;carryin=1; #1000                                // Set A and B, wait for new update
	    $display("%b %b |    %b    |  %b  |    %b     |      1/0       |", a, b, carryin, sum, carryout);
	    a=1;b=0;carryin=1; #1000 
	    $display("%b %b |    %b    |  %b  |    %b     |      1/0       |", a, b, carryin, sum, carryout);
	    a=1;b=1;carryin=1; #1000
	    $display("%b %b |    %b    |  %b  |    %b     |      1/1       |", a, b, carryin, sum, carryout);
	    a=0;b=0;carryin=0; #1000                               // Set A and B, wait for update (#1)
	    $display("%b %b |    %b    |  %b  |    %b     |      0/0       |", a, b, carryin, sum, carryout);
	    a=0;b=1;carryin=0; #1000                               // Set A and B, wait for new update
	    $display("%b %b |    %b    |  %b  |    %b     |      0/1       |", a, b, carryin, sum, carryout);
	    a=1;b=0;carryin=0; #1000
	    $display("%b %b |    %b    |  %b  |    %b     |      0/1       |", a, b, carryin, sum, carryout);
	    a=1;b=1;carryin=0; #1000
	    $display("%b %b |    %b    |  %b  |    %b     |      1/0       |", a, b, carryin, sum, carryout);
    end


endmodule
