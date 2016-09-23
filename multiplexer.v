`define NOT not #50
`define AND and #50
`define OR or #50

// Multiplexer circuit

module behavioralMultiplexer
(
    output out,
    input addr0, addr1,
    input in0, in1, in2, in3
);
    // Join single-bit inputs into a bus, use address as index
    wire[3:0] inputs = {in3, in2, in1, in0};
    wire[1:0] address = {addr1, addr0};
    assign out = inputs[address];
endmodule


module structuralMultiplexer
(
    output out,
    input addr0, addr1,
    input in0, in1, in2, in3
);
    
    wire nAddr0, nAddr1;
    wire nAandnB, nAandB, AandnB, AandB;
    wire out0, out1, out2, out3;
    wire out0orout1, out2orout3;

    `NOT notgate(nAddr0, addr0);
    `NOT notgate(nAddr1, addr1);

    `AND andgate(nAandnB, nAddr0, nAddr1);
    `AND andgate(nAandB, nAddr0, addr1);
    `AND andgate(AandnB, addr0, nAddr1);
    `AND andgate(AandB, addr0, addr1);

    `AND andgate(out0, in0, nAandnB);
    `AND andgate(out1, in1, AandnB);
    `AND andgate(out2, in2, nAandB);
    `AND andgate(out3, in3, AandB);

    `OR orgate(out0orout1, out0, out1);
    `OR orgate(out2orout3, out2, out3);
    `OR orgate(out, out0orout1, out2orout3);

endmodule

