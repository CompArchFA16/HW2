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
  input address0, address1,
  input in0, in1, in2, in3
);

  wire not_address0;
  `NOT not0(not_address0, address0);

  wire in0_and_addr;
  wire in1_and_addr;
  `AND and0(in0_and_addr, not_address0, in0);
  `AND and1(in1_and_addr, address0, in1);
  wire mux0_out;
  `OR or0(mux0_out, in0_and_addr, in1_and_addr);

  wire in2_and_addr;
  wire in3_and_addr;
  `AND and2(in2_and_addr, not_address0, in2);
  `AND and3(in3_and_addr, address0, in3);
  wire mux1_out;
  `OR or1(mux1_out, in2_and_addr, in3_and_addr);

  wire not_address1;
  `NOT not1(not_address1, address1);

  wire mux0_out_and_addr;
  wire mux1_out_and_addr;
  `AND and4(mux0_out_and_addr, not_address1, mux0_out);
  `AND and5(mux1_out_and_addr, address1, mux1_out);
  wire out;
  `OR or2(out, mux0_out_and_addr, mux1_out_and_addr);
endmodule

