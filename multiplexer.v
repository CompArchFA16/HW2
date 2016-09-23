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
    output na0, na1,
    output mid0,mid1,mid2,mid3,
    input address0, address1,
    input in0, in1, in2, in3
);
    wire na0;
    wire na1;
    wire mid0;
    wire mid1;
    wire mid2;
    wire mid3;
    `NOT adinv(na0,address0);
    `NOT adinv(na1,address1);
    `AND andgate(mid0,na0,na1,in0);
    `AND andgate(mid1,na1,address0,in1);
    `AND andgate(mid2,address1,na0,in2);
    `AND andgate(mid3,address0,address1,in3);
    `OR orgate(out,mid0,mid1,mid2,mid3);
endmodule

