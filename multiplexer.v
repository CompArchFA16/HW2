// Multiplexer circuit

// Set time delays
`define AND and #50
`define OR or #50
`define NOT not #50

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


module structuralMultiplexer
(
    output out,
    input address0, address1,
    input in0, in1, in2, in3
);
    
    wire na0;
    wire na1;

    wire out1;
    wire out2;
    wire out3;
    wire out4;

    // Negate addresses
    `NOT a0inv(na0, address0);
    `NOT a1inv(na1, address1);

    `AND andgate1(out1, na0, na1, in0);
    `AND andgate1(out2, na1, address0, in1);
    `AND andgate1(out3, na0, address1, in2);
    `AND andgate1(out4, address0, address1, in3);

    `OR orgate(out, out1, out2, out3, out4);

endmodule

