// Multiplexer testbench
`timescale 1 ns / 1 ps
`include "multiplexer.v"

module testMultiplexer ();
	reg addr0, addr1;
	reg in0, in1, in2, in3;
	wire out;

	//behavioralMultiplexer multiplexer (out, addr0, addr1, in0,in1,in2,in3);
	structuralMultiplexer multiplexer (out, addr0, addr1, in0,in1,in2,in3);

	initial begin

	$display("S1 S0 | A0 A1 A2 A3 | Out | Expected Out");

	// 00 - in0
		// 0 x x x
	addr0=0;addr1=0;in0=1'b0;in1=1'bX;in2=1'bX;in3=1'bX; #1000 
	$display("%b  %b |  %b  %b  %b  %b | %b | 0", addr1, addr0, in0, in1, in2, in3, out);
	
		// 1 x x x
	addr0=0;addr1=0;in0=1'b1;in1=1'bX;in2=1'bX;in3=1'bX; #1000 
	$display("%b  %b |  %b  %b  %b  %b | %b | 1", addr1, addr0, in0, in1, in2, in3, out);

	// 01
		// x x 0 x WRONG
	addr0=1;addr1=0;in0=1'bX;in1=1'b0;in2=1'bX;in3=1'bX; #1000 
	$display("%b  %b |  %b  %b  %b  %b | %b | 0", addr1, addr0, in0, in1, in2, in3, out);

		// x x 1 x WRONG
	addr0=1;addr1=0;in0=1'bX;in1=1'b1;in2=1'bX;in3=1'bX; #1000 
	$display("%b  %b |  %b  %b  %b  %b | %b | 1", addr1, addr0, in0, in1, in2, in3, out);

	// 10
		// x 0 x x WRONG
	addr0=0;addr1=1;in0=1'bX;in1=1'bX;in2=1'b0;in3=1'bX; #1000  
	$display("%b  %b |  %b  %b  %b  %b | %b | 0", addr1, addr0, in0, in1, in2, in3, out);

		// x 1 x x WRONG
	addr0=0;addr1=1;in0=1'bX;in1=1'bX;in2=1'b1;in3=1'bX; #1000 
	$display("%b  %b |  %b  %b  %b  %b | %b | 1", addr1, addr0, in0, in1, in2, in3, out);

	// 11
		// x x x 0
	addr0=1;addr1=1;in0=1'bX;in1=1'bX;in2=1'bX;in3=1'b0; #1000 
	$display("%b  %b |  %b  %b  %b  %b | %b | 0", addr1, addr0, in0, in1, in2, in3, out);

		// x x x 1
	addr0=1;addr1=1;in0=1'bX;in1=1'bX;in2=1'bX;in3=1'b1; #1000  
	$display("%b  %b |  %b  %b  %b  %b | %b | 1", addr1, addr0, in0, in1, in2, in3, out);

	end

endmodule