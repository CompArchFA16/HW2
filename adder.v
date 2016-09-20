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
  xor (aXorB, a, b);

  wire cAndAXorB;
  and (cAndAXorB, carryin, aXorB);

  wire aAndB;
  and (aAndB, a, b);

  // carryOut = ab + c(a xor b)
  or (carryout, aAndB, cAndAXorB);

  // SUM =======================================================================

  // sum = a xor b xor c
  xor (sum, aXorB, carryin);
endmodule
