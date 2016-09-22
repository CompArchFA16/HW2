// Multiplexer circuit

// define gates with delays
`define AND and #50 //has delay of 50 units
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
    wire out0, out1, out2, out3;
    wire naddress0, naddress1;

    `NOT notaddress0(naddress0, address0);
    `NOT notaddress1(naddress1, address1);

    `AND andgate3(out3, in3, address0, address1);
    `AND andgate1(out1, in1, address0, naddress1);
    `AND andgate2(out2, in2, naddress0, address1);
    `AND andgate0(out0, in0, naddress0, naddress1);

    `OR orgate(out, out0, out1, out2, out3);
endmodule

