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
    
    wire nA0;
    wire nA1;
    wire A0andA1;
    wire nA0andA1;
    wire A0andnA1;
    wire nA0andnA1;

    wire outN0;
    wire outN1;
    wire outN2;
    wire outN3;

    wire outN0orOutN1;
    wire outN2orOutN3;

    `NOT notegate0 (nA0, address0);
    `NOT notegate1 (nA1, address1);

    `AND andgate0 (A0andA1, address0, address1);
    `AND andgate1 (nA0andA1, nA0, address1);
    `AND andgate2 (A0andnA1, address0, nA1);
    `AND andgate3 (nA0andnA1, nA0, nA1);

    `AND andgate4 (outN0, nA0andnA1, in0);
    `AND andgate5 (outN1, A0andnA1, in1);
    `AND andgate6 (outN2, nA0andA1, in2);
    `AND andgate7 (outN3, A0andA1, in3);

    `OR orgate0 (outN0orOutN1, outN0, outN1);
    `OR orgate1 (outN2orOutN3, outN2, outN3);

    `OR orgate2 (out, outN0orOutN1, outN2orOutN3);

endmodule

