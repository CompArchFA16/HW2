// Multiplexer circuit
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

    wire na0, na1;
    wire a0anda1, na0anda1, a0andna1, na0andna1;
    wire out0, out1, out2, out3;
    wire out0orout1, out2orout3;

    `NOT notgate(na0, address0);
    `NOT notgate(na1, address1);

    `AND andgate(na0andna1, na0, na1);
    `AND andgate(a0andna1, address0, na1);
    `AND andgate(na0anda1, na0, address1);
    `AND andgate(a0anda1, address0, address1);

    `AND andgate(out0, na0andna1, in0);
    `AND andgate(out1, a0andna1, in1);
    `AND andgate(out2, na0anda1, in2);
    `AND andgate(out3, a0anda1, in3);

    `OR orgate(out0orout1, out0, out1);
    `OR orgate(out2orout3, out2, out3);

    `OR orgate(out, out0orout1, out2orout3);

endmodule

