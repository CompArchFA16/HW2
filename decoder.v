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
    
    wire nA0;
    wire nA1;
    wire EandA0;
    wire EandnA0;

    `AND andgate1 (EandA0, address0, enable);
    `NOT notgate1 (nA0, address0);
    `AND andgate2 (EandnA0, nA0, enable);

    `NOT notegate2 (nA1, address1);
    `AND andgate3 (out1, nA1, EandA0);
    `AND andgate4 (out3, address1, EandA0);
    
    `AND andgate3 (out0, nA1, EandnA0);
    `AND andgate4 (out2, address1, EandnA0);

endmodule

