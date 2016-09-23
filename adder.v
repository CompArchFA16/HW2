`define AND and #50
`define XOR xor #50
`define OR or #50

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
    wire AxorB, AandB, CinandAxorB;

    `XOR xorgate(AxorB, a, b);
    `AND andgate(AandB, a, b);
    `AND andgate(CinandAxorB, carryin, AxorB);
    `OR orgate(carryout, CinandAxorB, AandB);

    `XOR xorgate(sum, AxorB, carryin);

endmodule
