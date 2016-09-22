// Decoder circuit

// define gates with delays
`define AND and #50 //has delay of 50 units
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
	
	wire naddress0, naddress1;
	`NOT not0(naddress0, address0);
	`NOT not1(naddress1, address1);
	`AND andgate0(out0, naddress0, naddress1, enable);
	`AND andgate1(out1, address0, naddress1, enable);
	`AND andgate2(out2, naddress0, address1, enable);
	`AND andgate3(out3, address0, address1, enable);

endmodule


