// Decoder circuit

// define gates with delays
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
    
    wire na0;
    wire na1;
    wire eanda0;
    wire eandna0;

    `AND andgate(eanda0, address0, enable);
    `AND andgate(eandna0, na0, enable);
    `NOT notgate(na0, address0);
    `NOT notgate(na1, address1);

    // E.~A0.~A1
    `AND andgate(out0, na1, eandna0);
    // E.A0.~A1
    `AND andgate(out1, na1, eanda0);
    // E.~A0.A1
    `AND andgate(out2, address1, eandna0);
    // E.A0.A1
    `AND andgate(out3, address1, eanda0);

endmodule

