// Multiplexer testbench
`timescale 1 ns / 1 ps
`include "multiplexer.v"

module testMultiplexer ();
  
	reg addr0, addr1;
	reg in0, in1, in2, in3;
	wire bout, sout;

	reg[6:0] v; 

	behavioralMultiplexer bmultiplexer (bout,addr0,addr1,in0,in1,in2,in3);
	structuralMultiplexer multiplexer (sout,addr0,addr1,in0,in1,in2,in3);

	initial begin

        // Dump trace to a file. Open with gtkwave.
        $dumpfile("multiplexer_trace.vcd");
        $dumpvars();
        $dumpall;

    	$display("i0 i1 i2 i3 |A0 A1|out expected_output");
    	for(v=6'b000000; v<=6'b111111; v=v+1) begin
    		in0 = v[0]; in1 = v[1]; in2 = v[2]; in3 = v[3];
    		addr0 = v[4]; addr1 = v[5]; 
        	#1000
        	$display(" %b  %b  %b  %b | %b  %b| %b         %b", in0, in1, in2, in3, addr0, addr1, sout, bout);
        end
    end

endmodule
