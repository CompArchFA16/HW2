`define NOT not #50
`define AND and #50
`define NAND nand #50
`define OR or #50
`define NOR nor #50
`define XOR xor #50

// Adder circuit

module behavioralFullAdder
(
    output sum,
    output carryout,
    input a,
    input b,
    input carryin
);
    // Uses concatenation operator and built-in '+'
    assign {carryout, sum}=a+b+carryin;
endmodule

module structuralFullAdder
(
  output sum,
  output carryout,
  input a,
  input b,
  input carryin
);

  // CARRY =====================================================================

  wire aXorB;
  `XOR (aXorB, a, b);

  wire cAndAXorB;
  `AND (cAndAXorB, carryin, aXorB);

  wire aAndB;
  `AND (aAndB, a, b);

  // carryOut = ab + c(a xor b)
  `OR (carryout, aAndB, cAndAXorB);

  // SUM =======================================================================

  // sum = a xor b xor c
  `XOR (sum, aXorB, carryin);
endmodule
