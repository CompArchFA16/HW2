`define NOT not #50
`define AND and #50

// Decoder circuit

module behavioralDecoder
(
    output out0, out1, out2, out3,
    input addr0, addr1,
    input enable
);
    // Uses concatenation and shift operators
    assign {out3,out2,out1,out0}=enable<<{addr1,addr0};
endmodule


module structuralDecoder
(
    output out0, out1, out2, out3,
    input addr0, addr1,
    input enable
);
    wire nAddr0, nAddr1;
    wire nAandnB, nAandB, AandnB, AandB;

    `NOT notgate(nAddr0, addr0);
    `NOT notgate(nAddr1, addr1);

    `AND andgate(nAandnB, nAddr0, nAddr1);
    `AND andgate(nAandB, nAddr0, addr1);
    `AND andgate(AandnB, addr0, nAddr1);
    `AND andgate(AandB, addr0, addr1);

    `AND andgate(out0, enable, nAandnB);
    `AND andgate(out1, enable, AandnB);
    `AND andgate(out2, enable, nAandB);
    `AND andgate(out3, enable, AandB);
    
endmodule

