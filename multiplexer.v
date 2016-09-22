// Multiplexer circuit

// Added Delay
`define AND and #50 //delay of 50 units
`define NOT not #50
`define XOR xor #50
`define OR or #50

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
    wire n_address0, n_address1; //inverted addresses used for addressing
    wire subout1, subout2, subout3, subout4; // Intermediate wires flagging if one of the signal is a 1

    `NOT not_1(n_address0, address0);
    `NOT not_2(n_address1, address1);

    `AND and_1(subout1, in0, n_address0, n_address1);
    `AND and_2(subout2, in1, address0, n_address1);
    `AND and_3(subout3, in2, n_address0, address1);
    `AND and_4(subout4, in3, address0, address1);

    `OR or_1(out, subout1, subout2, subout3, subout4);

endmodule

