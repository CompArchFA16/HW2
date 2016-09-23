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

    not addr0Inv(nAddr0, addr0);
    not addr1Inv(nAddr1, addr1);

    and andgate(nAandnB, nAddr0, nAddr1);
    and andgate(nAandB, nAddr0, addr1);
    and andgate(AandnB, addr0, nAddr1);
    and andgate(AandB, addr0, addr1);

    and andgate(out0, enable, nAandnB);
    and andgate(out1, enable, AandnB);
    and andgate(out2, enable, nAandB);
    and andgate(out3, enable, AandB);
endmodule

