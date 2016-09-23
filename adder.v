// Adder circuit

`define AND and #50
`define OR or #50
`define NOT not #50
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
    wire AandB, AandC, BandC;

    `XOR xorGate(sum, a, b, carryin);

    `AND andGate0(AandB, a, b);
    `AND andGate1(AandC, a, carryin);
    `AND andGate2(BandC, b, carryin);

    `OR orGate(carryout, AandB, AandC, BandC);

endmodule
