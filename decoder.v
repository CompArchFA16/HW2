// Decoder circuit
`define AND and #50
`define OR or #50
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
	wire o0, o1, o2, o3;

	not addressInv0(naddress0, address0);
	not addressInv1(naddress1, address1);

	and andgate1(o0, naddress0, naddress1);
	and andgate2(o1, address0, naddress1);
	and andgate3(o2, naddress0, address1);
	and andgate4(o3, address0, address1);

	and andgate5(out0, o0, enable);
	and andgate6(out1, o1, enable);
	and andgate7(out2, o2, enable);
	and andgate8(out3, o3, enable);
endmodule

