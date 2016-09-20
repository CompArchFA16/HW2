// Adder circuit

// define gates with delays
`define AND and #50
`define OR or #50
`define NOT not #50

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
  wire na, nb, nc;
  `NOT not0(na, a);
  `NOT not1(nb, b);
  `NOT not2(nc, carryin);

  wire na_b_nc, na_nb_c, a_b_c, a_nb_nc;
  `AND and0(na_b_nc, na, b, nc);
  `AND and1(na_nb_c, na, nb, carryin);
  `AND and2(a_b_c, a, b, carryin);
  `AND and3(a_nb_nc, a, nb, nc);

  `OR or0(sum, na_b_nc, na_nb_c, a_b_c, a_nb_nc);

  wire a_b, b_c, a_c;
  `AND and4(a_b, a, b);
  `AND and5(b_c, b, carryin);
  `AND and6(a_c, a, carryin);

  `OR or1(carryout, a_b, b_c, a_c);
endmodule
