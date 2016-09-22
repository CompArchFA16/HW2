`define NOT not #50
`define AND and #50
`define NAND nand #50
`define OR or #50
`define NOR nor #50
`define XOR xor #50

module twoInputMultiplexer
(
  input address0,
  input in0, in1,
  output out
);

  wire address0_n;
  `NOT (address0_n, address0);

  wire in0AndNotAddress0, in1AndAddress0;
  `AND (in0AndNotAddress0, in0, address0_n);
  `AND (in1AndAddress0, in1, address0);

  `OR (out, in0AndNotAddress0, in1AndAddress0);
endmodule
