// Decoder circuit

// Setting Delays
`define AND and #50 //delay of 50 units
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
    wire n_address0, n_address1;	// Inverted initial signal
    `NOT address0inv(n_address0,address0); // Relevant function for n_address#
    `NOT address1inv(n_address1,address1);

    `AND andgate_out0(out0, n_address0, n_address1, enable);	// intermediate and gate
    `AND andgate_out1(out1, address0, n_address1, enable);
    `AND andgate_out2(out2, n_address0, address1, enable);
    `AND andgate_out3(out3, address0, address1, enable);

endmodule
