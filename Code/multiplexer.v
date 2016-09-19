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
    wire nadd0, nadd1, d0, d1, d2, d3, s0, s1, s2, s3, t0, t1;
    not(nadd0, address0);
    not(nadd1, address1);
    and(d0, nadd0, nadd1);
    and(d1, address0, nadd1);
    and(d2, nadd0, address1);
    and(d3, address0, address1);
    and(s0, d0, in0);
    and(s1, d1, in1);
    and(s2, d2, in2);
    and(s3, d3, in3);
    or(t0, s0, s1);
    or(t1, s2, s3);
    or(out, t0, t1);

endmodule

