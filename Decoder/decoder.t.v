// Decoder testbench
`timescale 1 ns / 1 ps
`include "decoder.v"

`define SET(ve,va1,va0) \
enable=ve;addr0=va0;addr1=va1; #1000

`define STR(x) `"x`"

`define DISP(msg) \
$display({"%b  %b  %b |  %b  %b  %b  %b | ",msg}, enable, addr0, addr1, out0, out1, out2, out3);

module testDecoder (); 
    reg addr0, addr1;
    reg enable;
    wire out0,out1,out2,out3;

    //behavioralDecoder decoder (out0,out1,out2,out3,addr0,addr1,enable);
    structuralDecoder decoder (out0,out1,out2,out3,addr0,addr1,enable); // Swap after testing

    initial begin

		$display("En A0 A1| O0 O1 O2 O3 | Expected Output");
		`SET(0,0,0); `DISP("All false")
		`SET(0,0,1); `DISP("All false")
		`SET(0,1,0); `DISP("All false")
		`SET(0,1,1); `DISP("All false")

		`SET(1,0,0); `DISP("O0 Only")
		`SET(1,0,1); `DISP("O1 Only")
		`SET(1,1,0); `DISP("O2 Only")
		`SET(1,1,1); `DISP("O3 Only")

	end

endmodule
