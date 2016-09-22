// Multiplexer circuit

// define gates with delays
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
    wire address0, address1;
    wire naddress0, naddress1;
    wire in0, in1, in2, in3;
    wire sel0, sel1, sel2, sel3;

    `NOT address0inv(naddress0, address0);
    `NOT address1inv(naddress1, address1);

    `AND andgate0(sel0, naddress0, naddress1, in0);
    `AND andgate1(sel1, address0, naddress1, in1);
    `AND andgate2(sel2, naddress0, address1, in2);
    `AND andgate3(sel3, address0, address1, in3);

    `OR orgate(out, sel0, sel1, sel2, sel3);
endmodule

