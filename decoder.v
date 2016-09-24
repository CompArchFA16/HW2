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
    //logic gate wires
    wire nA;
    wire nB;
    wire outa;
    wire outb;
    wire outc;
    wire outd;

    //logic gates and connections
    `NOT Ainv(nA, address0);
    `NOT Binv(nB, address1);
    `AND andout0(outa, nA, nB);
    `AND andout1(outb, nB, address0);
    `AND andout2(outc, address1, nA);
    `AND andout3(outd, address0, address1);
    `AND andout0(out0, outa, enable);
    `AND andout0(out1, outb, enable);
    `AND andout0(out2, outc, enable);
    `AND andout0(out3, outd, enable);
endmodule
