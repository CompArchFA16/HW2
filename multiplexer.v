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
    wire [1:0] nA;
    wire [0:3] andAddress, andOut;
    `NOT ng0(nA[0], address0);
    `NOT ng1(nA[1], address1);
    `AND ag0(andAddress[0], nA[0], nA[1]);
    `AND ag1(andAddress[1], address0, nA[1]);
    `AND ag2(andAddress[2], nA[0], address1);
    `AND ag3(andAddress[3], address0, address1);
    `AND ag4(andOut[0], andAddress[0], in0);
    `AND ag5(andOut[1], andAddress[1], in1);
    `AND ag6(andOut[2], andAddress[2], in2);
    `AND ag7(andOut[3], andAddress[3], in3);
    `OR og(out, andOut[0], andOut[1], andOut[2], andOut[3]);

endmodule

