// Multiplexer testbench
`timescale 1 ns / 1 ps
`include "multiplexer.v"

module testMultiplexer ();
	reg [2:0] adr; // more bits than necessary, allows comparison
	reg [4:0] in; // likewise

	wire b_out, s_out;

	behavioralMultiplexer b_mp(b_out,adr[0],adr[1],in[0],in[1],in[2],in[3]);

	structuralMultiplexer s_mp(s_out,adr[0],adr[1],in[0],in[1],in[2],in[3]);

	initial begin
		$display(" AD1 AD0 | IN3 IN2 IN1 IN0 | b_out s_out ");
		for(adr=0; adr < ( 1 << 2 ) ; adr = adr + 1) begin
			// loop through permutations of adr < 2^2
			for(in=0; in < (1 << 4 ); in = in + 1) begin
				// loop through permutations of in < 2^4
				#1000
				$display("  %b   %b  |  %b   %b   %b   %b  |   %b    %b", adr[1], adr[0], in[3], in[2], in[1], in[0], b_out, s_out);
			end
		end
	end
endmodule
