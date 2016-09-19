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
    input address0, address1,
    input enable
);
    wire nadd0, nadd1, d0, d1, d2, d3;
    not(nadd0, address0);
    not(nadd1, address1);
    and(d0, nadd0, nadd1);
    and(d1, address0, nadd1);
    and(d2, nadd0, address1);
    and(d3, address0, address1);
    and(out0, d0, enable);
    and(out1, d1, enable);
    and(out2, d2, enable);
    and(out3, d3, enable);
endmodule

