`define NOT not #50
`define AND and #50
`define NAND nand #50
`define OR or #50
`define NOR nor #50
`define XOR xor #50

// Decoder circuit

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

  // Your decoder code here
  wire nAddress0, nAddress1;
  `NOT (nAddress0, address0);
  `NOT (nAddress1, address1);

  wire nA_and_nB, nA_and_B, A_and_nB, A_and_B;
  `AND (nA_and_nB, nAddress0, nAddress1);
  `AND (nA_and_B, nAddress0, address1);
  `AND (A_and_nB, address0, nAddress1);
  `AND (A_and_B, address0, address1);

  // NOTE: This decode is big-endian.
  `AND (out0, enable, nA_and_nB);
  `AND (out1, enable, A_and_nB);
  `AND (out2, enable, nA_and_B);
  `AND (out3, enable, A_and_B);
endmodule
