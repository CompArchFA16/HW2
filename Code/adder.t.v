// Adder testbench
`timescale 1 ns / 1 ps
`include "adder.v"

module testFullAdder();
    reg a, b, carryin;
    wire sum, carryout;

    structuralFullAdder adder (sum, carryout, a, b, carryin);

    initial begin
	$dumpfile("adder.vcd");
	$dumpvars();
	#200
        $display("A B C | Cout Sum | Expected Output");
	a=0; b=0; carryin=0; #1000
	$display("%b %b %b | %b%b | 00", a, b, carryin, carryout, sum);
	a=0; b=0; carryin=1; #1000
	$display("%b %b %b | %b%b | 01", a, b, carryin, carryout, sum);
	a=0; b=1; carryin=0; #1000
	$display("%b %b %b | %b%b | 01", a, b, carryin, carryout, sum);
	a=0; b=1; carryin=1; #1000
	$display("%b %b %b | %b%b | 10", a, b, carryin, carryout, sum);
	a=1; b=0; carryin=0; #1000
	$display("%b %b %b | %b%b | 01", a, b, carryin, carryout, sum);
	a=1; b=0; carryin=1; #1000
	$display("%b %b %b | %b%b | 10", a, b, carryin, carryout, sum);
	a=1; b=1; carryin=0; #1000
	$display("%b %b %b | %b%b | 10", a, b, carryin, carryout, sum);
	a=1; b=1; carryin=1; #1000
	$display("%b %b %b | %b%b | 11", a, b, carryin, carryout, sum);
    end
endmodule
