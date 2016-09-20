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

`include "twoInputMultiplexer.v"

module structuralMultiplexer
(
  output out,
  input address0, address1,
  input in0, in1, in2, in3
);

  wire topOut, bottomOut;
  twoInputMultiplexer top(address0, in0, in1, topOut);
  twoInputMultiplexer bottom(address0, in2, in3, bottomOut);
  twoInputMultiplexer merge(address1, topOut, bottomOut, out);
endmodule
