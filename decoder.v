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

// Set gate delays
`define AND and #50
`define OR or #50
`define NOT not #50

module structuralDecoder
(
    output out0, out1, out2, out3,
    input address0, address1,
    input enable
);

    wire n_address0, n_address1;
    `NOT invA0(n_address0, address0);
    `NOT invA1(n_address1, address1);

    // Temp result, ignoring enable bit
    wire temp0, temp1, temp2, temp3;
    `AND noEnable0(temp0, n_address0, n_address1);
    `AND noEnable1(temp1,   address0, n_address1);
    `AND noEnable2(temp2, n_address0,   address1);
    `AND noEnable3(temp3,   address0,   address1);

    // Final result
    `AND withEnable0(out0, temp0, enable);
    `AND withEnable1(out1, temp1, enable);
    `AND withEnable2(out2, temp2, enable);
    `AND withEnable3(out3, temp3, enable);
endmodule

