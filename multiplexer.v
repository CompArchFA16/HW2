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
    input address0, address1,
    input in0, in1, in2, in3
);
    wire naddress0, naddress1;
    wire o0, o1, o2, o3;
    wire out0, out1, out2, out3;

    not addressInv0(naddress0, address0);
    not addressInv1(naddress1, address1);

    and andgate1(o3, naddress0, naddress1);
    and andgate2(o2, address0, naddress1);
    and andgate3(o1, naddress0, address1);
    and andgate4(o0, address0, address1);

    and andgate5(out0, o0, in3);
    and andgate6(out1, o1, in2);
    and andgate7(out2, o2, in1);
    and andgate8(out3, o3, in0);

    or orgate(out, out0, out1, out2, out3);

endmodule

