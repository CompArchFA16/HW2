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
    wire nadd0, nadd1;
    wire inter0, inter1, inter2, inter3;

    `NOT invAdd0(nadd0, address0);
    `NOT invAdd1(nadd1, address1);

    `AND andGate0(inter0, nadd0, nadd1, in0);
    `AND andGate1(inter1, address0, nadd1, in1);
    `AND andGate2(inter2, nadd0, address1, in2);
    `AND andGate3(inter3, address0, address1, in3);

    `OR orGate(out, inter3, inter2, inter1, inter0);

endmodule

