// Decoder circuit

// Set time delays
`define AND and #50
`define NOT not #50

module behavioralDecoder
(
    output out0, out1, out2, out3,
    input address0, address1,
    input enable
);
    // Uses concatenation and shift operators
    assign {out3,out2,out1,out0}=enable<<{address1,address0};
endmodule


module structuralDecoder
(
    output out0, out1, out2, out3,
    input address0, address1,
    input enable
);
    
	wire na1;
	wire na2;

	// Invert inputs
	`NOT a1inv(na1, address0);
	`NOT a2inv(na2, address1);

	// Outputs
	`AND andgate1(out0, enable, na1, na2);
	`AND andgate2(out1, enable, address0, na2);
	`AND andgate3(out2, enable, address1, na1);
	`AND andgate4(out3, enable, address0, address1);

endmodule

