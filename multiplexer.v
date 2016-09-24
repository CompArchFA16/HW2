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
    //logic gate wiring
    wire nA;
    wire nB;
    wire nAnB;
    wire nAB;
    wire AnB;
    wire AB;
    wire or_top;
    wire or_bottom;

    //logic gates
    `NOT Ainv(nA, address1);
    `NOT Binv(nB, address0);
    `AND And0(nAnB, nA, nB, in0);
    `AND And1(AnB, address0, nA, in1);
    `AND And2(nAB, address1, nB, in2);
    `AND And3(AB, address0, address1, in3);
    `OR ortop(or_top, nAnB, AnB);
    `OR orbottom(or_bottom, nAB, AB);
    `OR ortotal(out, or_top, or_bottom);

endmodule
