// Multiplexer circuit

`define AND and #50
`define OR or #50
`define NOT not #50

module behavioralMultiplexer
(
    output out,
    input address0, address1,
    input in0, in1, in2, in3
);
    // Join single-bit inputs into a bus, use address as index
    wire[3:0] inputs = {in3, in2, in1, in0};
    wire[1:0] address = {address1, address0};
    assign out = inputs[address];
endmodule


module structuralMultiplexer
(
    output out,
    input address0, address1,
    input in0, in1, in2, in3
);
	// Your mulotiplexer code here
	wire na1,na0;
	wire o0, o1, o2, o3;

	`NOT(na0,address0);
	`NOT(na1,address1);
	`AND(o0, in0, na1, na0);
	`AND(o1, in1, na1, address0);
	`AND(o2, in2, address1, na0);
	`AND(o3, in3, address1, address0);
	`OR(out, o0,o1,o2,o3);

endmodule

