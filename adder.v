// Adder circuit

// define gates with delays
`define AND and #50
`define OR or #50
`define XOR xor #50

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
    wire a, b, carryin;
    wire na, nb, ncarryin;
    wire axorb, aandb, carryinandaxorb;

    `XOR xorgate0(axorb, a, b);
    `XOR xorgate1(sum, axorb, carryin);

    `AND andgate0(aandb, a, b);
    `AND andgate1(carryinandaxorb, carryin, axorb);
    `OR orgate(carryout, aandb, carryinandaxorb);

endmodule
