// Multiplexer circuit
`define AND and #50
`define OR or #50
`define NOT not 

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
    // Your multiplexer code here
    wire out0;
    wire out1;
    wire out2;
    wire out3;

    wire nS0;
    wire nS1;

    `NOT S0inv(nS0, address0);
    `NOT S1inv(nS1, address1);

    `AND andgate0(out0, in0, nS0, nS1);
    `AND andgate1(out1, in1, address0, nS1);
    `AND andgate2(out2, in2, nS0, address1);
    `AND andgate3(out3, in3, address0, address1);

    `OR orgate(out, out0, out1, out2, out3);

endmodule

