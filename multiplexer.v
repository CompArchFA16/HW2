// Multiplexer circuit

module behavioralMultiplexer
(
    output out,
    input address0, address1,
    input in0, in1, in2, in3
);
    // Join single-bit inputs into a bus, use address as index
    wire[3:0] inputs = {in3, in2, in1, in0};
    wire[1:0] address = {address1, address0};
    assign out = inputs[address];
endmodule

// Sets gate delays
`define AND and #50
`define OR or #50
`define NOT not #50

module structuralMultiplexer
(
    output out,
    input address0, address1,
    input in0, in1, in2, in3
);

    wire n_address0, n_address1;
    `NOT invA0(n_address0, address0);
    `NOT invA1(n_address1, address1);

    // 4:2 mux (address0)
    wire muxIn00, muxIn01, muxOut0;
    `AND select00(muxIn00, n_address0, in0);
    `AND select01(muxIn01,   address0, in1);
    `OR out0(muxOut0, muxIn00, muxIn01);

    // 4:2 mux (address0)
    wire muxIn10, muxIn11, muxOut1;
    `AND select10(muxIn10, n_address0, in2);
    `AND select11(muxIn11,   address0, in3);
    `OR out1(muxOut1, muxIn10, muxIn11);

    // 2:1 mux (address1)
    wire muxIn20, muxIn21;
    `AND select20(muxIn20, n_address1, muxOut0);
    `AND select21(muxIn21,   address1, muxOut1);
    `OR out2(out, muxIn20, muxIn21);
endmodule
