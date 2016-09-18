// Adder testbench
`timescale 1 ns / 1 ps
`include "adder.v"

`define SET(va,vb,vc) \
a=va; b=vb; carryin=vc; #200

`define DISP \
$display(" %b | %b |   %b  |   %b   |    %b    |   %b   |    %b   ",a,b,carryin,sum_1,carryout_1,sum_2,carryout_2);

module testFullAdder();
    reg a, b, carryin;
    wire sum_1, carryout_1;
    wire sum_2, carryout_2;

    behavioralFullAdder adder_1 (sum_1, carryout_1, a, b, carryin);
    structuralFullAdder adder_2 (sum_2, carryout_2, a, b, carryin);

    initial begin
        // Your test code here
		$display(" a | b | c_in | sum_1 | c_out_1 | sum_2 | c_out_2");
		`SET(0,0,0); `DISP
		`SET(0,0,1); `DISP
		`SET(0,1,0); `DISP
		`SET(0,1,1); `DISP
		`SET(1,0,0); `DISP
		`SET(1,0,1); `DISP
		`SET(1,1,1); `DISP
		`SET(1,1,1); `DISP
	end
endmodule
