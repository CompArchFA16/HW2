// Multiplexer testbench
`timescale 1 ns / 1 ps
`include "multiplexer.v"

module testMultiplexer ();

	// Set up wires
	reg in0, in1, in2, in3;
	reg address0, address1;
	wire out;

	structuralMultiplexer multiplexer (out, address0, address1, in0, in1, in2, in3);

	initial begin
  
		// Set dump file
		$dumpfile("multiplexer_results.vcd");
		$dumpvars;

		// Address0 = 1, Address1 = 1
		$display("A0 A1 | In0 In1 In2 In3 | Out0 | Expected Output");
		address0=1; address1=1; in0=0; in1=0; in2=0; in3=0; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 0",address0, address1, in0, in1, in2, in3, out);
		address0=1; address1=1; in0=0; in1=0; in2=0; in3=1; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 1",address0, address1, in0, in1, in2, in3, out);
		address0=1; address1=1; in0=0; in1=0; in2=1; in3=1; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 1",address0, address1, in0, in1, in2, in3, out);
		address0=1; address1=1; in0=0; in1=1; in2=0; in3=1; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 1",address0, address1, in0, in1, in2, in3, out);
		address0=1; address1=1; in0=0; in1=1; in2=1; in3=1; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 1",address0, address1, in0, in1, in2, in3, out);
		address0=1; address1=1; in0=0; in1=0; in2=1; in3=0; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 0",address0, address1, in0, in1, in2, in3, out);
		address0=1; address1=1; in0=0; in1=1; in2=1; in3=0; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 0",address0, address1, in0, in1, in2, in3, out);
		address0=1; address1=1; in0=0; in1=1; in2=0; in3=0; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 0",address0, address1, in0, in1, in2, in3, out);
		address0=1; address1=1; in0=1; in1=0; in2=0; in3=0; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 0",address0, address1, in0, in1, in2, in3, out);
		address0=1; address1=1; in0=1; in1=0; in2=0; in3=1; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 1",address0, address1, in0, in1, in2, in3, out);
		address0=1; address1=1; in0=1; in1=0; in2=1; in3=1; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 1",address0, address1, in0, in1, in2, in3, out);
		address0=1; address1=1; in0=1; in1=1; in2=0; in3=1; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 1",address0, address1, in0, in1, in2, in3, out);
		address0=1; address1=1; in0=1; in1=1; in2=1; in3=1; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 1",address0, address1, in0, in1, in2, in3, out);
		address0=1; address1=1; in0=1; in1=0; in2=1; in3=0; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 0",address0, address1, in0, in1, in2, in3, out);
		address0=1; address1=1; in0=1; in1=1; in2=1; in3=0; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 0",address0, address1, in0, in1, in2, in3, out);
		address0=1; address1=1; in0=1; in1=1; in2=0; in3=0; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 0",address0, address1, in0, in1, in2, in3, out);

		// Address0 = 1, Address1 = 0
		$display("A0 A1 | In0 In1 In2 In3 | Out1 | Expected Output");
		address0=1; address1=0; in0=0; in1=0; in2=0; in3=0; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 0",address0, address1, in0, in1, in2, in3, out);
		address0=1; address1=0; in0=0; in1=0; in2=0; in3=1; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 0",address0, address1, in0, in1, in2, in3, out);
		address0=1; address1=0; in0=0; in1=0; in2=1; in3=1; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 0",address0, address1, in0, in1, in2, in3, out);
		address0=1; address1=0; in0=0; in1=1; in2=0; in3=1; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 1",address0, address1, in0, in1, in2, in3, out);
		address0=1; address1=0; in0=0; in1=1; in2=1; in3=1; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 1",address0, address1, in0, in1, in2, in3, out);
		address0=1; address1=0; in0=0; in1=0; in2=1; in3=0; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 0",address0, address1, in0, in1, in2, in3, out);
		address0=1; address1=0; in0=0; in1=1; in2=1; in3=0; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 1",address0, address1, in0, in1, in2, in3, out);
		address0=1; address1=0; in0=0; in1=1; in2=0; in3=0; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 1",address0, address1, in0, in1, in2, in3, out);
		address0=1; address1=0; in0=1; in1=0; in2=0; in3=0; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 0",address0, address1, in0, in1, in2, in3, out);
		address0=1; address1=0; in0=1; in1=0; in2=0; in3=1; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 0",address0, address1, in0, in1, in2, in3, out);
		address0=1; address1=0; in0=1; in1=0; in2=1; in3=1; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 0",address0, address1, in0, in1, in2, in3, out);
		address0=1; address1=0; in0=1; in1=1; in2=0; in3=1; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 1",address0, address1, in0, in1, in2, in3, out);
		address0=1; address1=0; in0=1; in1=1; in2=1; in3=1; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 1",address0, address1, in0, in1, in2, in3, out);
		address0=1; address1=0; in0=1; in1=0; in2=1; in3=0; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 0",address0, address1, in0, in1, in2, in3, out);
		address0=1; address1=0; in0=1; in1=1; in2=1; in3=0; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 1",address0, address1, in0, in1, in2, in3, out);
		address0=1; address1=0; in0=1; in1=1; in2=0; in3=0; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 1",address0, address1, in0, in1, in2, in3, out);


		// Address0 = 0, Address1 = 1
		$display("A0 A1 | In0 In1 In2 In3 | Out2 | Expected Output");
		address0=0; address1=1; in0=0; in1=0; in2=0; in3=0; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 0",address0, address1, in0, in1, in2, in3, out);
		address0=0; address1=1; in0=0; in1=0; in2=0; in3=1; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 0",address0, address1, in0, in1, in2, in3, out);
		address0=0; address1=1; in0=0; in1=0; in2=1; in3=1; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 1",address0, address1, in0, in1, in2, in3, out);
		address0=0; address1=1; in0=0; in1=1; in2=0; in3=1; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 0",address0, address1, in0, in1, in2, in3, out);
		address0=0; address1=1; in0=0; in1=1; in2=1; in3=1; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 1",address0, address1, in0, in1, in2, in3, out);
		address0=0; address1=1; in0=0; in1=0; in2=1; in3=0; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 1",address0, address1, in0, in1, in2, in3, out);
		address0=0; address1=1; in0=0; in1=1; in2=1; in3=0; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 1",address0, address1, in0, in1, in2, in3, out);
		address0=0; address1=1; in0=0; in1=1; in2=0; in3=0; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 0",address0, address1, in0, in1, in2, in3, out);
		address0=0; address1=1; in0=1; in1=0; in2=0; in3=0; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 0",address0, address1, in0, in1, in2, in3, out);
		address0=0; address1=1; in0=1; in1=0; in2=0; in3=1; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 0",address0, address1, in0, in1, in2, in3, out);
		address0=0; address1=1; in0=1; in1=0; in2=1; in3=1; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 1",address0, address1, in0, in1, in2, in3, out);
		address0=0; address1=1; in0=1; in1=1; in2=0; in3=1; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 0",address0, address1, in0, in1, in2, in3, out);
		address0=0; address1=1; in0=1; in1=1; in2=1; in3=1; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 1",address0, address1, in0, in1, in2, in3, out);
		address0=0; address1=1; in0=1; in1=0; in2=1; in3=0; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 1",address0, address1, in0, in1, in2, in3, out);
		address0=0; address1=1; in0=1; in1=1; in2=1; in3=0; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 1",address0, address1, in0, in1, in2, in3, out);
		address0=0; address1=1; in0=1; in1=1; in2=0; in3=0; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 0",address0, address1, in0, in1, in2, in3, out);


		// Address0 = 0, Address1 = 0
		$display("A0 A1 | In0 In1 In2 In3 | Out3 | Expected Output");
		address0=0; address1=0; in0=0; in1=0; in2=0; in3=0; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 0",address0, address1, in0, in1, in2, in3, out);
		address0=0; address1=0; in0=0; in1=0; in2=0; in3=1; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 0",address0, address1, in0, in1, in2, in3, out);
		address0=0; address1=0; in0=0; in1=0; in2=1; in3=1; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 0",address0, address1, in0, in1, in2, in3, out);
		address0=0; address1=0; in0=0; in1=1; in2=0; in3=1; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 0",address0, address1, in0, in1, in2, in3, out);
		address0=0; address1=0; in0=0; in1=1; in2=1; in3=1; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 0",address0, address1, in0, in1, in2, in3, out);
		address0=0; address1=0; in0=0; in1=0; in2=1; in3=0; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 0",address0, address1, in0, in1, in2, in3, out);
		address0=0; address1=0; in0=0; in1=1; in2=1; in3=0; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 0",address0, address1, in0, in1, in2, in3, out);
		address0=0; address1=0; in0=0; in1=1; in2=0; in3=0; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 0",address0, address1, in0, in1, in2, in3, out);
		address0=0; address1=0; in0=1; in1=0; in2=0; in3=0; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 1",address0, address1, in0, in1, in2, in3, out);
		address0=0; address1=0; in0=1; in1=0; in2=0; in3=1; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 1",address0, address1, in0, in1, in2, in3, out);
		address0=0; address1=0; in0=1; in1=0; in2=1; in3=1; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 1",address0, address1, in0, in1, in2, in3, out);
		address0=0; address1=0; in0=1; in1=1; in2=0; in3=1; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 1",address0, address1, in0, in1, in2, in3, out);
		address0=0; address1=0; in0=1; in1=1; in2=1; in3=1; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 1",address0, address1, in0, in1, in2, in3, out);
		address0=0; address1=0; in0=1; in1=0; in2=1; in3=0; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 1",address0, address1, in0, in1, in2, in3, out);
		address0=0; address1=0; in0=1; in1=1; in2=1; in3=0; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 1",address0, address1, in0, in1, in2, in3, out);
		address0=0; address1=0; in0=1; in1=1; in2=0; in3=0; #1000
		$display("%b  %b  | %b  %b  %b  %b  | %b | 1",address0, address1, in0, in1, in2, in3, out);

	end

endmodule
