// Add delays
`define AND and #50
`define OR or #50
`define NOT not #50
`define XOR xor #50

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


module structuralMultiplexer
(
output out,
input A0, A1,
input in0, in1, in2, in3
);

wire nA0, nA1, nA0andnA1andin0, A0andnA1andin1, nA0andA1andin2, A0andA1andin3;
`NOT A0inv(nA0, A0);
`NOT A1inv(nA1, A1);

`AND andgate0(nA0andnA1andin0, nA0, nA1, in0);
`AND andgate1(A0andnA1andin1, A0, nA1, in1);
`AND andgate2(nA0andA1andin2, nA0, A1, in2);
`AND andgate3(A0andA1andin3, A0, A1, in3);

`OR orgate(out, nA0andnA1andin0, A0andnA1andin1, nA0andA1andin2, A0andA1andin3);
endmodule
