// define gates with delays
`define AND and #50
`define OR or #50
`define NOT not #50

// Decoder circuit

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
    output na0, na1,
    input address0, address1,
    input enable
);
    `NOT adinv(na0,address0);
    `NOT adinv(na1,address1);
    `AND andgate(out0,na0,na1,enable);
    `AND andgate(out1,na1,address0,enable);
    `AND andgate(out2,na0,address1,enable);
    `AND andgate(out3,address0,address1,enable);
endmodule

