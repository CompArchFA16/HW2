// Decoder circuit

// define gates with delays
`define AND and #50
`define OR or #50
`define NOT not #50

module behavioralDecoder
(
  output out0, out1, out2, out3,
  input address0, address1,
  input enable
);
  // Uses concatenation and shift operators
  assign {out3,out2,out1,out0}=enable<<{address1,address0};
endmodule


module structuralDecoder
(
  output out0, out1, out2, out3,
  input address0, address1,
  input enable
);

  wire not_address1;
  `NOT not1(not_address1, address1);

  wire top;
  `AND and0(top, not_address1, enable);
  wire bottom;
  `AND and1(bottom, address1, enable);

  wire not_address0;
  `NOT not0(not_address0, address0);

  `AND and2(out0, not_address0, top);
  `AND and3(out1, address0, top);
  `AND and4(out2, not_address0, bottom);
  `AND and5(out3, address0, bottom);

endmodule

