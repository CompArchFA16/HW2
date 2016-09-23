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
    output nadd0, nadd1,
    input address0, address1,
    input enable
);
    `NOT invAdd0(nadd0, address0);
    `NOT invAdd1(nadd1, address1);

    `AND gate0(out0, nadd0, nadd1, enable);
    `AND gate1(out1, nadd1, address0, enable);
    `AND gate2(out2, address1, nadd0, enable);
    `AND gate3(out3, address0, address1, enable);

endmodule

