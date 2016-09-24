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
    // Your multiplexer code here
   wire   nA0;
   wire   nA1;
   wire   out0;
   wire   out1;
   wire   out2;
   wire   out3;
   
   `NOT A0inv(nA0, address0);
   `NOT A1inv(nA1, address1);

   `AND andgate0(out0, nA0, nA1, in0);
   `AND andgate1(out1, address0, nA1, in1);
   `AND andgate2(out2, nA0, address1, in2);
   `AND andgate3(out3, address0, address1, in3);

   `OR orgate(out, out0, out1, out2, out3);
   
endmodule

